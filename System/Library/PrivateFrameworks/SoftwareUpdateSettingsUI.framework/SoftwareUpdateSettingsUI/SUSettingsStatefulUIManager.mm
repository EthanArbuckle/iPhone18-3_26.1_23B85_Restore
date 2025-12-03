@interface SUSettingsStatefulUIManager
+ (id)_generateStateTable;
- (BOOL)assignScanRelatedMembersFromScanResults:(id)results;
- (BOOL)doesTargetedUpdateMatchDescriptor:(id)descriptor;
- (BOOL)doesTargetedUpdateMatchDescriptorType:(unint64_t)type;
- (BOOL)isDelayingUpdate;
- (BOOL)isPerformingFullScan;
- (BOOL)isPerformingRefresh;
- (BOOL)isPerformingUpdate;
- (BOOL)isPreferredUpdatePromotedAsAlternate;
- (BOOL)isTargetedUpdateScheduledForAutoInstall;
- (SUSettingsStatefulUIManager)initWithManagerClient:(id)client;
- (SUSettingsStatefulUIManager)initWithManagerClient:(id)client betaManager:(id)manager preferences:(id)preferences options:(id)options;
- (SUSettingsStatefulUIManager)initWithManagerClient:(id)client options:(id)options;
- (SUSettingsStatefulUIManagerDelegate)delegate;
- (id)baseDomain;
- (id)createScanOperationOptions;
- (id)createUpdateOperationOptions;
- (id)latestUpdateStatefulDescriptor;
- (id)targetedUpdateForDownload:(id)download;
- (id)targetedUpdateMatchingDescriptor:(id)descriptor;
- (int64_t)actionUnknownAction:(id)action error:(id *)error;
- (int64_t)action_CheckForAvailableUpdate:(id)update error:(id *)error;
- (int64_t)action_RefreshScanResults:(id)results error:(id *)error;
- (int64_t)action_ReportNoUpdateFound:(id)found error:(id *)error;
- (int64_t)action_ReportRefreshScanResults:(id)results error:(id *)error;
- (int64_t)action_ReportRefreshScanResultsFailed:(id)failed error:(id *)error;
- (int64_t)action_ReportScanFailed:(id)failed error:(id *)error;
- (int64_t)action_ReportUpdatesAvailable:(id)available error:(id *)error;
- (int64_t)action_ThirdPartyScanDuringRefresh:(id)refresh error:(id *)error;
- (int64_t)convertFSMStateToUIState:(id)state;
- (int64_t)performAction:(id)action onEvent:(id)event inState:(id)state withInfo:(id)info nextState:(id)nextState error:(id *)error;
- (void)assignDescriptorOfType:(unint64_t)type fromSearchResults:(id)results;
- (void)assignRefreshScanResults:(id)results;
- (void)autoInstallOperationDidConsent:(id)consent;
- (void)autoInstallOperationIsReadyToInstall:(id)install withResponse:(id)response;
- (void)autoInstallOperationPasscodePolicyDidChange:(id)change passcodePolicyType:(unint64_t)type;
- (void)autoInstallOperationWasCancelled:(id)cancelled;
- (void)batteryLevelChanged:(id)changed;
- (void)batteryStateChanged:(id)changed;
- (void)beginUpdateOperationWithDescriptor:(id)descriptor operationDelegate:(id)delegate delegateCallbackQueue:(id)queue operationTypeBlock:(id)block;
- (void)checkForAvailableUpdates;
- (void)checkForAvailableUpdatesWithRetriesCount:(unsigned __int8)count;
- (void)checkForUpdatesInBackground;
- (void)clearPastScanResults;
- (void)client:(id)client clearingSpaceForDownload:(id)download clearingSpace:(BOOL)space;
- (void)client:(id)client downloadDidFail:(id)fail withError:(id)error;
- (void)client:(id)client downloadDidFinish:(id)finish withInstallPolicy:(id)policy;
- (void)client:(id)client downloadDidStart:(id)start;
- (void)client:(id)client downloadProgressDidChange:(id)change;
- (void)client:(id)client downloadWasInvalidatedForNewUpdatesAvailable:(id)available;
- (void)client:(id)client installDidFail:(id)fail withError:(id)error;
- (void)client:(id)client installDidStart:(id)start;
- (void)client:(id)client scanRequestDidFinishForOptions:(id)options results:(id)results error:(id)error;
- (void)client:(id)client scanRequestDidStartForOptions:(id)options;
- (void)dealloc;
- (void)didBecomeActive:(id)active;
- (void)doEnrollInBetaUpdatesProgram:(id)program completionHandler:(id)handler;
- (void)downloadAndInstall:(id)install completionHandler:(id)handler operationDelegate:(id)delegate delegateCallbackQueue:(id)queue;
- (void)downloadAndScheduleUpdate:(id)update completionHandler:(id)handler operationDelegate:(id)delegate delegateCallbackQueue:(id)queue;
- (void)downloadUpdate:(id)update completionHandler:(id)handler operationDelegate:(id)delegate delegateCallbackQueue:(id)queue;
- (void)enrollInBetaUpdatesProgram:(id)program withPurgeConfirmation:(id)confirmation completionHandler:(id)handler;
- (void)executeOperationOnDelegate:(SEL)delegate usingBlock:(id)block;
- (void)handleFailedFullScan:(id)scan;
- (void)handleFullScanResults:(id)results;
- (void)handleRefreshScanResults:(id)results;
- (void)handleScanFinishedRollbackApplied:(id)applied;
- (void)hideAlternateUpdate;
- (void)hideNonTargetedUpdateDescriptors;
- (void)hidePreferredUpdate;
- (void)installUpdate:(id)update completionHandler:(id)handler operationDelegate:(id)delegate delegateCallbackQueue:(id)queue;
- (void)networkChangedFromNetworkType:(int)type toNetworkType:(int)networkType;
- (void)performFullScan:(id)scan;
- (void)performFullScanWithScanResults:(id)results andScanError:(id)error;
- (void)performPostUpdateOperationRefresh:(BOOL)refresh withDownload:(id)download didScheduledUpdate:(BOOL)update autoInstallOperation:(id)operation error:(id)error completionHandler:(id)handler;
- (void)performRefreshScan:(id)scan;
- (void)promoteTargetedUpdateToUserInitiatedStatus;
- (void)refreshBetaUpdates:(id)updates;
- (void)refreshState:(BOOL)state;
- (void)revealHiddenAlteranteUpdate;
- (void)revealHiddenPreferredUpdate;
- (void)rvTriggerNeRDUpdate:(id)update;
- (void)scheduleUpdate:(id)update completionHandler:(id)handler operationDelegate:(id)delegate delegateCallbackQueue:(id)queue;
- (void)setCurrentDownload:(id)download;
- (void)setupBatteryMonitoring;
- (void)setupFSM;
- (void)setupNetworkMonitoring;
- (void)setupObservers;
- (void)unenrollFromBetaUpdatesWithCompletion:(id)completion;
- (void)unscheduleTargetedUpdateAutomaticInstallation;
- (void)updateDescriptorsUsingScanResults:(id)results andWithConcreteError:(id)error;
- (void)updateStatePostDownloadOperation:(BOOL)operation withDownload:(id)download error:(id)error completionHandler:(id)handler;
@end

@implementation SUSettingsStatefulUIManager

+ (id)_generateStateTable
{
  v152[7] = *MEMORY[0x277D85DE8];
  v56[2] = self;
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

- (int64_t)performAction:(id)action onEvent:(id)event inState:(id)state withInfo:(id)info nextState:(id)nextState error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, action);
  v30 = 0;
  objc_storeStrong(&v30, event);
  v29 = 0;
  objc_storeStrong(&v29, state);
  v28 = 0;
  objc_storeStrong(&v28, info);
  v27 = 0;
  objc_storeStrong(&v27, nextState);
  errorCopy = error;
  managerFSM = [(SUSettingsStatefulUIManager *)selfCopy managerFSM];
  extendedStateQueue = [(SUCoreFSM *)managerFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);
  MEMORY[0x277D82BD8](extendedStateQueue);
  MEMORY[0x277D82BD8](managerFSM);
  if (v27)
  {
    v25 = [(SUSettingsStatefulUIManager *)selfCopy convertFSMStateToUIState:v27];
    if (v25 != 0x7FFFFFFFFFFFFFFFLL && [(SUSettingsStatefulUIManager *)selfCopy currentState]!= v25)
    {
      currentState = [(SUSettingsStatefulUIManager *)selfCopy currentState];
      [(SUSettingsStatefulUIManager *)selfCopy setCurrentState:v25];
      v9 = selfCopy;
      v18 = MEMORY[0x277D85DD0];
      v19 = -1073741824;
      v20 = 0;
      v21 = __86__SUSettingsStatefulUIManager_performAction_onEvent_inState_withInfo_nextState_error___block_invoke;
      v22 = &unk_279CB93C0;
      v23[0] = MEMORY[0x277D82BE0](selfCopy);
      v23[1] = currentState;
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
    v17 = [(SUSettingsStatefulUIManager *)selfCopy action_CheckForAvailableUpdate:v28 error:errorCopy];
  }

  else if ([location[0] isEqualToString:@"ReportScanFailed"])
  {
    v17 = [(SUSettingsStatefulUIManager *)selfCopy action_ReportScanFailed:v28 error:errorCopy];
  }

  else if ([location[0] isEqualToString:@"ReportUpdatesAvailable"])
  {
    v17 = [(SUSettingsStatefulUIManager *)selfCopy action_ReportUpdatesAvailable:v28 error:errorCopy];
  }

  else if ([location[0] isEqualToString:@"ReportNoUpdateFound"])
  {
    v17 = [(SUSettingsStatefulUIManager *)selfCopy action_ReportNoUpdateFound:v28 error:errorCopy];
  }

  else if ([location[0] isEqualToString:@"RefreshScanResults"])
  {
    v17 = [(SUSettingsStatefulUIManager *)selfCopy action_RefreshScanResults:v28 error:errorCopy];
  }

  else if ([location[0] isEqualToString:@"ReportRefreshScanResults"])
  {
    v17 = [(SUSettingsStatefulUIManager *)selfCopy action_ReportRefreshScanResults:v28 error:errorCopy];
  }

  else if ([location[0] isEqualToString:@"ReportRefreshScanResultsFailed"])
  {
    v17 = [(SUSettingsStatefulUIManager *)selfCopy action_ReportRefreshScanResultsFailed:v28 error:errorCopy];
  }

  else if ([location[0] isEqualToString:@"ThirdPartyScanDuringRefresh"])
  {
    v17 = [(SUSettingsStatefulUIManager *)selfCopy action_ThirdPartyScanDuringRefresh:v28 error:errorCopy];
  }

  else
  {
    v17 = [(SUSettingsStatefulUIManager *)selfCopy actionUnknownAction:location[0] error:errorCopy];
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

- (int64_t)action_CheckForAvailableUpdate:(id)update error:(id *)error
{
  errorCopy = error;
  v160 = "[SUSettingsStatefulUIManager action_CheckForAvailableUpdate:error:]";
  v207 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  oslog[3] = errorCopy;
  extendedStateQueue = [(SUCoreFSM *)selfCopy->_managerFSM extendedStateQueue];
  v157 = extendedStateQueue;
  dispatch_assert_queue_V2(v157);
  MEMORY[0x277D82BD8](v157);
  obj = MEMORY[0x277D82BE0](selfCopy);
  objc_sync_enter(obj);
  currentRefreshScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
  v154 = currentRefreshScanOperation;
  MEMORY[0x277D82BD8](v154);
  if (v154)
  {
    v153 = [(SUSettingsStatefulUIManager *)selfCopy log];
    v151 = v153;
    oslog = [v151 oslog];
    oslog[0] = oslog;
    MEMORY[0x277D82BD8](v151);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      log = oslog[0];
      *v149 = type;
      currentState = [(SUSettingsStatefulUIManager *)selfCopy currentState];
      v147 = SUSettingsUIStateToString(currentState);
      v144 = v147;
      v145 = MEMORY[0x277D82BE0](v144);
      v199 = v145;
      currentState2 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
      v197 = 0;
      v195 = 0;
      delegate = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      v142 = delegate;
      if (v142)
      {
        delegate2 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
        v198 = delegate2;
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
      delegate3 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      v134 = delegate3;
      scanError = [(SUSettingsStatefulUIManager *)selfCopy scanError];
      v132 = scanError;
      preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
      v130 = preferredStatefulDescriptor;
      alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
      v128 = alternateStatefulDescriptor;
      v193 = 0;
      v191 = 0;
      v189 = 0;
      currentDownload = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v127 = currentDownload;
      if (v127)
      {
        currentDownload2 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        v194 = currentDownload2;
        v193 = 1;
        descriptor = [v194 descriptor];
        v192 = descriptor;
        v191 = 1;
        humanReadableUpdateName = [v192 humanReadableUpdateName];
        v190 = humanReadableUpdateName;
        v189 = 1;
        v123 = v190;
      }

      else
      {
        v123 = @"(null)";
      }

      v121 = v123;
      currentDownload3 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v119 = currentDownload3;
      performThirdPartyScan = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
      v4 = "YES";
      if (!performThirdPartyScan)
      {
        v4 = "NO";
      }

      v117 = v4;
      isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
      v5 = "YES";
      if (!isTargetedUpdateScheduledForAutoInstall)
      {
        v5 = "NO";
      }

      v115 = v5;
      hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
      v6 = "YES";
      if (!hidingPreferredDescriptor)
      {
        v6 = "NO";
      }

      v113 = v6;
      humanReadableUpdateName2 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v110 = humanReadableUpdateName2;
      v111 = MEMORY[0x277D82BE0](v110);
      v188 = v111;
      hidingAlternateDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
      v7 = "YES";
      if (!hidingAlternateDescriptor)
      {
        v7 = "NO";
      }

      v108 = v7;
      humanReadableUpdateName3 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v105 = humanReadableUpdateName3;
      v106 = MEMORY[0x277D82BE0](v105);
      v187 = v106;
      v185 = 0;
      enrolledBetaProgram = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v104 = enrolledBetaProgram;
      if (v104)
      {
        enrolledBetaProgram2 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
        v186 = enrolledBetaProgram2;
        v185 = 1;
        programID = [v186 programID];
        v101 = programID;
      }

      else
      {
        v101 = 0;
      }

      v99 = v101;
      betaPrograms = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
      v97 = betaPrograms;
      v98 = [v97 count];
      currentFullScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
      v94 = currentFullScanOperation;
      currentRefreshScanOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
      v92 = currentRefreshScanOperation2;
      currentUpdateOperation = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
      v90 = currentUpdateOperation;
      auxiliaryOperations = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
      v88 = auxiliaryOperations;
      v89 = [v88 count];
      v86 = v13;
      buf = v206;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v206, v160, v145, currentState2, v136, v134, v132, v130, v128, v121, v119, v117, v115, v113, v111, v108, v106, v101, v98, v94, v92, v90, v89);
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
    currentRefreshScanOperation = selfCopy->_currentRefreshScanOperation;
    v84 = &v179;
    v179 = MEMORY[0x277D85DD0];
    v180 = -1073741824;
    v181 = 0;
    v182 = __68__SUSettingsStatefulUIManager_action_CheckForAvailableUpdate_error___block_invoke;
    v183 = &unk_279CB93E8;
    v83 = &v184;
    v184 = MEMORY[0x277D82BE0](selfCopy);
    [(SUSettingsScanOperation *)currentRefreshScanOperation cancel:v84];
    objc_storeStrong(v83, 0);
  }

  currentFullScanOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
  v81 = currentFullScanOperation2;
  MEMORY[0x277D82BD8](v81);
  if (v81)
  {
    v80 = [(SUSettingsStatefulUIManager *)selfCopy log];
    v78 = v80;
    oslog2 = [v78 oslog];
    v178 = oslog2;
    MEMORY[0x277D82BD8](v78);
    v177 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
    {
      v75 = v178;
      *v76 = v177;
      currentState3 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
      v74 = SUSettingsUIStateToString(currentState3);
      v71 = v74;
      v72 = MEMORY[0x277D82BE0](v71);
      v176 = v72;
      currentState4 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
      v174 = 0;
      v172 = 0;
      delegate4 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      v69 = delegate4;
      if (v69)
      {
        delegate5 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
        v175 = delegate5;
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
      delegate6 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      v61 = delegate6;
      scanError2 = [(SUSettingsStatefulUIManager *)selfCopy scanError];
      v59 = scanError2;
      preferredStatefulDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
      v57 = preferredStatefulDescriptor2;
      alternateStatefulDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
      v55 = alternateStatefulDescriptor2;
      v170 = 0;
      v168 = 0;
      v166 = 0;
      currentDownload4 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v54 = currentDownload4;
      if (v54)
      {
        currentDownload5 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        v171 = currentDownload5;
        v170 = 1;
        descriptor2 = [v171 descriptor];
        v169 = descriptor2;
        v168 = 1;
        humanReadableUpdateName4 = [v169 humanReadableUpdateName];
        v167 = humanReadableUpdateName4;
        v166 = 1;
        v50 = v167;
      }

      else
      {
        v50 = @"(null)";
      }

      v48 = v50;
      currentDownload6 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v46 = currentDownload6;
      performThirdPartyScan2 = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
      v8 = "YES";
      if (!performThirdPartyScan2)
      {
        v8 = "NO";
      }

      v44 = v8;
      isTargetedUpdateScheduledForAutoInstall2 = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
      v9 = "YES";
      if (!isTargetedUpdateScheduledForAutoInstall2)
      {
        v9 = "NO";
      }

      v42 = v9;
      hidingPreferredDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
      v10 = "YES";
      if (!hidingPreferredDescriptor2)
      {
        v10 = "NO";
      }

      v40 = v10;
      humanReadableUpdateName5 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v37 = humanReadableUpdateName5;
      v38 = MEMORY[0x277D82BE0](v37);
      v165 = v38;
      hidingAlternateDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
      v11 = "YES";
      if (!hidingAlternateDescriptor2)
      {
        v11 = "NO";
      }

      v35 = v11;
      humanReadableUpdateName6 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v32 = humanReadableUpdateName6;
      v33 = MEMORY[0x277D82BE0](v32);
      v164 = v33;
      v162 = 0;
      enrolledBetaProgram3 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v31 = enrolledBetaProgram3;
      if (v31)
      {
        enrolledBetaProgram4 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
        v163 = enrolledBetaProgram4;
        v162 = 1;
        programID2 = [v163 programID];
        v28 = programID2;
      }

      else
      {
        v28 = 0;
      }

      v26 = v28;
      betaPrograms2 = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
      v24 = betaPrograms2;
      v25 = [v24 count];
      currentFullScanOperation3 = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
      v21 = currentFullScanOperation3;
      currentRefreshScanOperation3 = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
      v19 = currentRefreshScanOperation3;
      currentUpdateOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
      v17 = currentUpdateOperation2;
      auxiliaryOperations2 = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
      v15 = auxiliaryOperations2;
      v16 = [v15 count];
      v13[17] = v13;
      v14 = v205;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v205, v160, v72, currentState4, v63, v61, v59, v57, v55, v48, v46, v44, v42, v40, v38, v35, v33, v26, v25, v21, v19, v17, v16);
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
    [(SUSettingsStatefulUIManager *)selfCopy performFullScan:location[0]];
    v204 = 0;
    v161 = 1;
  }

  objc_storeStrong(location, 0);
  v13[16] = v204;
  *MEMORY[0x277D85DE8];
  return v204;
}

- (int64_t)action_ReportUpdatesAvailable:(id)available error:(id *)error
{
  errorCopy = error;
  v79 = "[SUSettingsStatefulUIManager action_ReportUpdatesAvailable:error:]";
  v110 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, available);
  oslog[1] = errorCopy;
  extendedStateQueue = [(SUCoreFSM *)selfCopy->_managerFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);
  MEMORY[0x277D82BD8](extendedStateQueue);
  v78 = [(SUSettingsStatefulUIManager *)selfCopy log];
  oslog[0] = [(SUCoreLog *)v78 oslog];
  MEMORY[0x277D82BD8](v78);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v73 = type;
    v74 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
    v75 = MEMORY[0x277D82BE0](v74);
    v104 = v75;
    currentState = [(SUSettingsStatefulUIManager *)selfCopy currentState];
    delegate = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    v102 = 0;
    v100 = 0;
    if (delegate)
    {
      delegate2 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
    delegate3 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    scanError = [(SUSettingsStatefulUIManager *)selfCopy scanError];
    preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
    alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
    currentDownload = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    v98 = 0;
    v96 = 0;
    v94 = 0;
    if (currentDownload)
    {
      currentDownload2 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v62 = 1;
      v98 = 1;
      descriptor = [(SUDownload *)currentDownload2 descriptor];
      v96 = 1;
      humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v94 = 1;
      v63 = humanReadableUpdateName;
    }

    else
    {
      v63 = @"(null)";
    }

    v49 = v63;
    currentDownload3 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    performThirdPartyScan = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
    v56 = "NO";
    v6 = "YES";
    v57 = "YES";
    if (!performThirdPartyScan)
    {
      v6 = "NO";
    }

    v51 = v6;
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
    v8 = v57;
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v8 = v56;
    }

    v52 = v8;
    hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
    v10 = v57;
    if (!hidingPreferredDescriptor)
    {
      v10 = v56;
    }

    v53 = v10;
    humanReadableUpdateName2 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v55 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
    v93 = v55;
    hidingAlternateDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
    v12 = v57;
    if (!hidingAlternateDescriptor)
    {
      v12 = v56;
    }

    v58 = v12;
    humanReadableUpdateName3 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v60 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
    v92 = v60;
    enrolledBetaProgram = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
    v90 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v90 = 1;
      programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v26 = programID;
    betaPrograms = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
    v27 = [(NSArray *)betaPrograms count];
    currentFullScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
    currentRefreshScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
    currentUpdateOperation = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
    auxiliaryOperations = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
    v28 = [(NSMutableSet *)auxiliaryOperations count];
    fullScanResults = [location[0] fullScanResults];
    preferredDescriptor = [fullScanResults preferredDescriptor];
    humanReadableUpdateName4 = [preferredDescriptor humanReadableUpdateName];
    v29 = MEMORY[0x277D82BE0](humanReadableUpdateName4);
    v89 = v29;
    fullScanResults2 = [location[0] fullScanResults];
    preferredDescriptor2 = [fullScanResults2 preferredDescriptor];
    fullScanResults3 = [location[0] fullScanResults];
    alternateDescriptor = [fullScanResults3 alternateDescriptor];
    humanReadableUpdateName5 = [alternateDescriptor humanReadableUpdateName];
    v30 = MEMORY[0x277D82BE0](humanReadableUpdateName5);
    v88 = v30;
    fullScanResults4 = [location[0] fullScanResults];
    alternateDescriptor2 = [fullScanResults4 alternateDescriptor];
    v31 = &v14;
    buf = v109;
    __os_log_helper_16_2_26_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_0_8_66_8_0(v109, v79, v75, currentState, v64, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v49, currentDownload3, v51, v52, v53, v55, v58, v60, programID, v27, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, v28, v29, preferredDescriptor2, v30, alternateDescriptor2);
    _os_log_impl(&dword_26AC94000, log, v73[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nReporting on available updates:\n\tPreferred update: %{public}@ (%p)\n\tAlternate update: %{public}@ (%p)", buf, 0x106u);
    MEMORY[0x277D82BD8](alternateDescriptor2);
    MEMORY[0x277D82BD8](fullScanResults4);
    MEMORY[0x277D82BD8](humanReadableUpdateName5);
    MEMORY[0x277D82BD8](alternateDescriptor);
    MEMORY[0x277D82BD8](fullScanResults3);
    MEMORY[0x277D82BD8](preferredDescriptor2);
    MEMORY[0x277D82BD8](fullScanResults2);
    MEMORY[0x277D82BD8](humanReadableUpdateName4);
    MEMORY[0x277D82BD8](preferredDescriptor);
    MEMORY[0x277D82BD8](fullScanResults);
    MEMORY[0x277D82BD8](auxiliaryOperations);
    MEMORY[0x277D82BD8](currentUpdateOperation);
    MEMORY[0x277D82BD8](currentRefreshScanOperation);
    MEMORY[0x277D82BD8](currentFullScanOperation);
    MEMORY[0x277D82BD8](betaPrograms);
    if (v90)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v94)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    if (v96)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v98)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v100)
    {
      MEMORY[0x277D82BD8](v101);
    }

    if (v102)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](v74);
    obj = 0;
    objc_storeStrong(&v88, 0);
    objc_storeStrong(&v89, obj);
    objc_storeStrong(&v92, obj);
    objc_storeStrong(&v93, obj);
    objc_storeStrong(&v104, obj);
  }

  objc_storeStrong(oslog, 0);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  MEMORY[0x277D82BD8](WeakRetained);
  if (WeakRetained)
  {
    v22 = objc_loadWeakRetained(&selfCopy->_delegate);
    v23 = objc_opt_respondsToSelector();
    MEMORY[0x277D82BD8](v22);
    if (v23)
    {
      mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
      queue = [mEMORY[0x277D643F8] selectDelegateCallbackQueue:selfCopy->_delegateCallbackQueue];
      block = &v82;
      v82 = MEMORY[0x277D85DD0];
      v83 = -1073741824;
      v84 = 0;
      v85 = __67__SUSettingsStatefulUIManager_action_ReportUpdatesAvailable_error___block_invoke;
      v86 = &unk_279CB9410;
      v20 = v87;
      v87[0] = MEMORY[0x277D82BE0](selfCopy);
      v19 = (block + 40);
      v87[1] = MEMORY[0x277D82BE0](location[0]);
      dispatch_async(queue, block);
      MEMORY[0x277D82BD8](queue);
      MEMORY[0x277D82BD8](mEMORY[0x277D643F8]);
      v21 = 0;
      objc_storeStrong(v19, 0);
      objc_storeStrong(v20, v21);
    }
  }

  v15 = 0;
  objc_storeStrong(&selfCopy->_currentFullScanOperation, 0);
  objc_storeStrong(&selfCopy->_currentRefreshScanOperation, v15);
  [(SUSettingsStatefulUIManager *)selfCopy setPerformThirdPartyScan:0];
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

- (int64_t)action_ReportNoUpdateFound:(id)found error:(id *)error
{
  errorCopy = error;
  v66 = "[SUSettingsStatefulUIManager action_ReportNoUpdateFound:error:]";
  v95 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, found);
  oslog[1] = errorCopy;
  extendedStateQueue = [(SUCoreFSM *)selfCopy->_managerFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);
  MEMORY[0x277D82BD8](extendedStateQueue);
  v65 = [(SUSettingsStatefulUIManager *)selfCopy log];
  oslog[0] = [(SUCoreLog *)v65 oslog];
  MEMORY[0x277D82BD8](v65);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v60 = type;
    v61 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
    v62 = MEMORY[0x277D82BE0](v61);
    v89 = v62;
    currentState = [(SUSettingsStatefulUIManager *)selfCopy currentState];
    delegate = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    v87 = 0;
    v85 = 0;
    if (delegate)
    {
      delegate2 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
    delegate3 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    scanError = [(SUSettingsStatefulUIManager *)selfCopy scanError];
    preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
    alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
    currentDownload = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    v83 = 0;
    v81 = 0;
    v79 = 0;
    if (currentDownload)
    {
      currentDownload2 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v49 = 1;
      v83 = 1;
      descriptor = [(SUDownload *)currentDownload2 descriptor];
      v81 = 1;
      humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v79 = 1;
      v50 = humanReadableUpdateName;
    }

    else
    {
      v50 = @"(null)";
    }

    v36 = v50;
    currentDownload3 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    performThirdPartyScan = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
    v43 = "NO";
    v6 = "YES";
    v44 = "YES";
    if (!performThirdPartyScan)
    {
      v6 = "NO";
    }

    v38 = v6;
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
    v8 = v44;
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v8 = v43;
    }

    v39 = v8;
    hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
    v10 = v44;
    if (!hidingPreferredDescriptor)
    {
      v10 = v43;
    }

    v40 = v10;
    humanReadableUpdateName2 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v42 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
    v78 = v42;
    hidingAlternateDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
    v12 = v44;
    if (!hidingAlternateDescriptor)
    {
      v12 = v43;
    }

    v45 = v12;
    humanReadableUpdateName3 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v47 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
    v77 = v47;
    enrolledBetaProgram = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
    v75 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v75 = 1;
      programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v26 = programID;
    betaPrograms = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
    v27 = [(NSArray *)betaPrograms count];
    currentFullScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
    currentRefreshScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
    currentUpdateOperation = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
    auxiliaryOperations = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
    v28 = &v14;
    buf = v94;
    __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v94, v66, v62, currentState, v51, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v36, currentDownload3, v38, v39, v40, v42, v45, v47, programID, v27, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, [(NSMutableSet *)auxiliaryOperations count]);
    _os_log_impl(&dword_26AC94000, log, v60[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\n", buf, 0xDEu);
    MEMORY[0x277D82BD8](auxiliaryOperations);
    MEMORY[0x277D82BD8](currentUpdateOperation);
    MEMORY[0x277D82BD8](currentRefreshScanOperation);
    MEMORY[0x277D82BD8](currentFullScanOperation);
    MEMORY[0x277D82BD8](betaPrograms);
    if (v75)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v79)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    if (v81)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v83)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v85)
    {
      MEMORY[0x277D82BD8](v86);
    }

    if (v87)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](v61);
    obj = 0;
    objc_storeStrong(&v77, 0);
    objc_storeStrong(&v78, obj);
    objc_storeStrong(&v89, obj);
  }

  objc_storeStrong(oslog, 0);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  MEMORY[0x277D82BD8](WeakRetained);
  if (WeakRetained)
  {
    v22 = objc_loadWeakRetained(&selfCopy->_delegate);
    v23 = objc_opt_respondsToSelector();
    MEMORY[0x277D82BD8](v22);
    if (v23)
    {
      mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
      queue = [mEMORY[0x277D643F8] selectDelegateCallbackQueue:selfCopy->_delegateCallbackQueue];
      block = &v69;
      v69 = MEMORY[0x277D85DD0];
      v70 = -1073741824;
      v71 = 0;
      v72 = __64__SUSettingsStatefulUIManager_action_ReportNoUpdateFound_error___block_invoke;
      v73 = &unk_279CB9410;
      v20 = v74;
      v74[0] = MEMORY[0x277D82BE0](selfCopy);
      v19 = (block + 40);
      v74[1] = MEMORY[0x277D82BE0](location[0]);
      dispatch_async(queue, block);
      MEMORY[0x277D82BD8](queue);
      MEMORY[0x277D82BD8](mEMORY[0x277D643F8]);
      v21 = 0;
      objc_storeStrong(v19, 0);
      objc_storeStrong(v20, v21);
    }
  }

  v15 = 0;
  objc_storeStrong(&selfCopy->_currentFullScanOperation, 0);
  objc_storeStrong(&selfCopy->_currentRefreshScanOperation, v15);
  [(SUSettingsStatefulUIManager *)selfCopy setPerformThirdPartyScan:0];
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

- (int64_t)action_ReportScanFailed:(id)failed error:(id *)error
{
  errorCopy = error;
  v66 = "[SUSettingsStatefulUIManager action_ReportScanFailed:error:]";
  v95 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, failed);
  oslog[1] = errorCopy;
  extendedStateQueue = [(SUCoreFSM *)selfCopy->_managerFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);
  MEMORY[0x277D82BD8](extendedStateQueue);
  v65 = [(SUSettingsStatefulUIManager *)selfCopy log];
  oslog[0] = [(SUCoreLog *)v65 oslog];
  MEMORY[0x277D82BD8](v65);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v60 = type;
    v61 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
    v62 = MEMORY[0x277D82BE0](v61);
    v89 = v62;
    currentState = [(SUSettingsStatefulUIManager *)selfCopy currentState];
    delegate = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    v87 = 0;
    v85 = 0;
    if (delegate)
    {
      delegate2 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
    delegate3 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    scanError = [(SUSettingsStatefulUIManager *)selfCopy scanError];
    preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
    alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
    currentDownload = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    v83 = 0;
    v81 = 0;
    v79 = 0;
    if (currentDownload)
    {
      currentDownload2 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v49 = 1;
      v83 = 1;
      descriptor = [(SUDownload *)currentDownload2 descriptor];
      v81 = 1;
      humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v79 = 1;
      v50 = humanReadableUpdateName;
    }

    else
    {
      v50 = @"(null)";
    }

    v36 = v50;
    currentDownload3 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    performThirdPartyScan = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
    v43 = "NO";
    v6 = "YES";
    v44 = "YES";
    if (!performThirdPartyScan)
    {
      v6 = "NO";
    }

    v38 = v6;
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
    v8 = v44;
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v8 = v43;
    }

    v39 = v8;
    hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
    v10 = v44;
    if (!hidingPreferredDescriptor)
    {
      v10 = v43;
    }

    v40 = v10;
    humanReadableUpdateName2 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v42 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
    v78 = v42;
    hidingAlternateDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
    v12 = v44;
    if (!hidingAlternateDescriptor)
    {
      v12 = v43;
    }

    v45 = v12;
    humanReadableUpdateName3 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v47 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
    v77 = v47;
    enrolledBetaProgram = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
    v75 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v75 = 1;
      programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v26 = programID;
    betaPrograms = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
    v27 = [(NSArray *)betaPrograms count];
    currentFullScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
    currentRefreshScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
    currentUpdateOperation = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
    auxiliaryOperations = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
    v28 = &v14;
    buf = v94;
    __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v94, v66, v62, currentState, v51, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v36, currentDownload3, v38, v39, v40, v42, v45, v47, programID, v27, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, [(NSMutableSet *)auxiliaryOperations count]);
    _os_log_impl(&dword_26AC94000, log, v60[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\n", buf, 0xDEu);
    MEMORY[0x277D82BD8](auxiliaryOperations);
    MEMORY[0x277D82BD8](currentUpdateOperation);
    MEMORY[0x277D82BD8](currentRefreshScanOperation);
    MEMORY[0x277D82BD8](currentFullScanOperation);
    MEMORY[0x277D82BD8](betaPrograms);
    if (v75)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v79)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    if (v81)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v83)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v85)
    {
      MEMORY[0x277D82BD8](v86);
    }

    if (v87)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](v61);
    obj = 0;
    objc_storeStrong(&v77, 0);
    objc_storeStrong(&v78, obj);
    objc_storeStrong(&v89, obj);
  }

  objc_storeStrong(oslog, 0);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  MEMORY[0x277D82BD8](WeakRetained);
  if (WeakRetained)
  {
    v22 = objc_loadWeakRetained(&selfCopy->_delegate);
    v23 = objc_opt_respondsToSelector();
    MEMORY[0x277D82BD8](v22);
    if (v23)
    {
      mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
      queue = [mEMORY[0x277D643F8] selectDelegateCallbackQueue:selfCopy->_delegateCallbackQueue];
      block = &v69;
      v69 = MEMORY[0x277D85DD0];
      v70 = -1073741824;
      v71 = 0;
      v72 = __61__SUSettingsStatefulUIManager_action_ReportScanFailed_error___block_invoke;
      v73 = &unk_279CB9410;
      v20 = v74;
      v74[0] = MEMORY[0x277D82BE0](selfCopy);
      v19 = (block + 40);
      v74[1] = MEMORY[0x277D82BE0](location[0]);
      dispatch_async(queue, block);
      MEMORY[0x277D82BD8](queue);
      MEMORY[0x277D82BD8](mEMORY[0x277D643F8]);
      v21 = 0;
      objc_storeStrong(v19, 0);
      objc_storeStrong(v20, v21);
    }
  }

  v15 = 0;
  objc_storeStrong(&selfCopy->_currentFullScanOperation, 0);
  objc_storeStrong(&selfCopy->_currentRefreshScanOperation, v15);
  [(SUSettingsStatefulUIManager *)selfCopy setPerformThirdPartyScan:0];
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

- (int64_t)action_RefreshScanResults:(id)results error:(id *)error
{
  v176 = &v196;
  errorCopy = error;
  v178 = "[SUSettingsStatefulUIManager action_RefreshScanResults:error:]";
  v212 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v207[1] = errorCopy;
  extendedStateQueue = [(SUCoreFSM *)selfCopy->_managerFSM extendedStateQueue];
  v174 = extendedStateQueue;
  dispatch_assert_queue_V2(v174);
  MEMORY[0x277D82BD8](v174);
  obj = MEMORY[0x277D82BE0](selfCopy);
  objc_sync_enter(obj);
  if (selfCopy->_currentRefreshScanOperation)
  {
    v172 = [*(v176 + 21) log];
    v170 = v172;
    oslog = [v170 oslog];
    v4 = oslog;
    v5 = v170;
    *(v176 + 17) = v4;
    MEMORY[0x277D82BD8](v5);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(*(v176 + 17), OS_LOG_TYPE_DEFAULT))
    {
      log = *(v176 + 17);
      *v168 = type;
      currentState = [*(v176 + 21) currentState];
      v166 = SUSettingsUIStateToString(currentState);
      v163 = v166;
      v6 = MEMORY[0x277D82BE0](v163);
      v7 = v176;
      v164 = v6;
      *(v176 + 14) = v6;
      currentState2 = [v7[21] currentState];
      v8 = *(v176 + 21);
      v204 = 0;
      v203 = 0;
      delegate = [v8 delegate];
      v161 = delegate;
      if (v161)
      {
        delegate2 = [*(v176 + 21) delegate];
        *(v176 + 13) = delegate2;
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
      delegate3 = [*(v176 + 21) delegate];
      v153 = delegate3;
      scanError = [*(v176 + 21) scanError];
      v151 = scanError;
      preferredStatefulDescriptor = [*(v176 + 21) preferredStatefulDescriptor];
      v149 = preferredStatefulDescriptor;
      alternateStatefulDescriptor = [*(v176 + 21) alternateStatefulDescriptor];
      v147 = alternateStatefulDescriptor;
      v10 = *(v176 + 21);
      v202 = 0;
      v201 = 0;
      v200 = 0;
      currentDownload = [v10 currentDownload];
      v146 = currentDownload;
      if (v146)
      {
        currentDownload2 = [*(v176 + 21) currentDownload];
        v11 = currentDownload2;
        *(v176 + 9) = v11;
        v202 = 1;
        descriptor = [v11 descriptor];
        v12 = descriptor;
        *(v176 + 7) = v12;
        v201 = 1;
        humanReadableUpdateName = [v12 humanReadableUpdateName];
        v13 = humanReadableUpdateName;
        *(v176 + 5) = v13;
        v200 = 1;
        v142 = v13;
      }

      else
      {
        v142 = @"(null)";
      }

      v140 = v142;
      currentDownload3 = [*(v176 + 21) currentDownload];
      v138 = currentDownload3;
      performThirdPartyScan = [*(v176 + 21) performThirdPartyScan];
      v14 = "YES";
      if ((performThirdPartyScan & 1) == 0)
      {
        v14 = "NO";
      }

      v136 = v14;
      isTargetedUpdateScheduledForAutoInstall = [*(v176 + 21) isTargetedUpdateScheduledForAutoInstall];
      v15 = "YES";
      if ((isTargetedUpdateScheduledForAutoInstall & 1) == 0)
      {
        v15 = "NO";
      }

      v134 = v15;
      hidingPreferredDescriptor = [*(v176 + 21) hidingPreferredDescriptor];
      v16 = "YES";
      if ((hidingPreferredDescriptor & 1) == 0)
      {
        v16 = "NO";
      }

      v132 = v16;
      humanReadableUpdateName2 = [*(*(v176 + 21) + 256) humanReadableUpdateName];
      v129 = humanReadableUpdateName2;
      v17 = MEMORY[0x277D82BE0](v129);
      v18 = v176;
      v130 = v17;
      *(v176 + 3) = v17;
      hidingAlternateDescriptor = [v18[21] hidingAlternateDescriptor];
      v19 = "YES";
      if ((hidingAlternateDescriptor & 1) == 0)
      {
        v19 = "NO";
      }

      v127 = v19;
      humanReadableUpdateName3 = [*(*(v176 + 21) + 264) humanReadableUpdateName];
      v124 = humanReadableUpdateName3;
      v20 = MEMORY[0x277D82BE0](v124);
      v21 = v176;
      v125 = v20;
      *(v176 + 2) = v20;
      v22 = *(v21 + 21);
      v197 = 0;
      enrolledBetaProgram = [v22 enrolledBetaProgram];
      v123 = enrolledBetaProgram;
      if (v123)
      {
        enrolledBetaProgram2 = [*(v176 + 21) enrolledBetaProgram];
        v23 = enrolledBetaProgram2;
        *(v176 + 1) = v23;
        v197 = 1;
        programID = [v23 programID];
        v120 = programID;
      }

      else
      {
        v120 = 0;
      }

      v118 = v120;
      betaPrograms = [*(v176 + 21) betaPrograms];
      v116 = betaPrograms;
      v117 = [v116 count];
      currentFullScanOperation = [*(v176 + 21) currentFullScanOperation];
      v113 = currentFullScanOperation;
      currentRefreshScanOperation = [*(v176 + 21) currentRefreshScanOperation];
      v111 = currentRefreshScanOperation;
      currentUpdateOperation = [*(v176 + 21) currentUpdateOperation];
      v109 = currentUpdateOperation;
      auxiliaryOperations = [*(v176 + 21) auxiliaryOperations];
      v107 = auxiliaryOperations;
      v108 = [v107 count];
      v105 = &v35;
      buf = v211;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v211, v178, v164, currentState2, v155, v153, v151, v149, v147, v140, v138, v136, v134, v132, v130, v127, v125, v120, v117, v113, v111, v109, v108);
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
    oslog2 = [v102 oslog];
    oslog = oslog2;
    MEMORY[0x277D82BD8](v102);
    v194 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v99 = oslog;
      *v100 = v194;
      currentState3 = [*(v176 + 21) currentState];
      v98 = SUSettingsUIStateToString(currentState3);
      v95 = v98;
      v96 = MEMORY[0x277D82BE0](v95);
      v193 = v96;
      currentState4 = [*(v176 + 21) currentState];
      v25 = *(v176 + 21);
      v191 = 0;
      v189 = 0;
      delegate4 = [v25 delegate];
      v93 = delegate4;
      if (v93)
      {
        delegate5 = [*(v176 + 21) delegate];
        v192 = delegate5;
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
      delegate6 = [*(v176 + 21) delegate];
      v85 = delegate6;
      scanError2 = [*(v176 + 21) scanError];
      v83 = scanError2;
      preferredStatefulDescriptor2 = [*(v176 + 21) preferredStatefulDescriptor];
      v81 = preferredStatefulDescriptor2;
      alternateStatefulDescriptor2 = [*(v176 + 21) alternateStatefulDescriptor];
      v79 = alternateStatefulDescriptor2;
      v26 = *(v176 + 21);
      v187 = 0;
      v185 = 0;
      v183 = 0;
      currentDownload4 = [v26 currentDownload];
      v78 = currentDownload4;
      if (v78)
      {
        currentDownload5 = [*(v176 + 21) currentDownload];
        v188 = currentDownload5;
        v187 = 1;
        descriptor2 = [v188 descriptor];
        v186 = descriptor2;
        v185 = 1;
        humanReadableUpdateName4 = [v186 humanReadableUpdateName];
        v184 = humanReadableUpdateName4;
        v183 = 1;
        v74 = v184;
      }

      else
      {
        v74 = @"(null)";
      }

      v72 = v74;
      currentDownload6 = [*(v176 + 21) currentDownload];
      v70 = currentDownload6;
      performThirdPartyScan2 = [*(v176 + 21) performThirdPartyScan];
      v27 = "YES";
      if ((performThirdPartyScan2 & 1) == 0)
      {
        v27 = "NO";
      }

      v68 = v27;
      isTargetedUpdateScheduledForAutoInstall2 = [*(v176 + 21) isTargetedUpdateScheduledForAutoInstall];
      v28 = "YES";
      if ((isTargetedUpdateScheduledForAutoInstall2 & 1) == 0)
      {
        v28 = "NO";
      }

      v66 = v28;
      hidingPreferredDescriptor2 = [*(v176 + 21) hidingPreferredDescriptor];
      v29 = "YES";
      if ((hidingPreferredDescriptor2 & 1) == 0)
      {
        v29 = "NO";
      }

      v64 = v29;
      humanReadableUpdateName5 = [*(*(v176 + 21) + 256) humanReadableUpdateName];
      v61 = humanReadableUpdateName5;
      v62 = MEMORY[0x277D82BE0](v61);
      v182 = v62;
      hidingAlternateDescriptor2 = [*(v176 + 21) hidingAlternateDescriptor];
      v30 = "YES";
      if ((hidingAlternateDescriptor2 & 1) == 0)
      {
        v30 = "NO";
      }

      v59 = v30;
      humanReadableUpdateName6 = [*(*(v176 + 21) + 264) humanReadableUpdateName];
      v56 = humanReadableUpdateName6;
      v57 = MEMORY[0x277D82BE0](v56);
      v181 = v57;
      v31 = *(v176 + 21);
      v179 = 0;
      enrolledBetaProgram3 = [v31 enrolledBetaProgram];
      v55 = enrolledBetaProgram3;
      if (v55)
      {
        enrolledBetaProgram4 = [*(v176 + 21) enrolledBetaProgram];
        v180 = enrolledBetaProgram4;
        v179 = 1;
        programID2 = [v180 programID];
        v52 = programID2;
      }

      else
      {
        v52 = 0;
      }

      v50 = v52;
      betaPrograms2 = [*(v176 + 21) betaPrograms];
      v48 = betaPrograms2;
      v49 = [v48 count];
      currentFullScanOperation2 = [*(v176 + 21) currentFullScanOperation];
      v45 = currentFullScanOperation2;
      currentRefreshScanOperation2 = [*(v176 + 21) currentRefreshScanOperation];
      v43 = currentRefreshScanOperation2;
      currentUpdateOperation2 = [*(v176 + 21) currentUpdateOperation];
      v41 = currentUpdateOperation2;
      auxiliaryOperations2 = [*(v176 + 21) auxiliaryOperations];
      v39 = auxiliaryOperations2;
      v40 = [v39 count];
      v37 = &v35;
      v38 = v210;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v210, v178, v96, currentState4, v87, v85, v83, v81, v79, v72, v70, v68, v66, v64, v62, v59, v57, v52, v49, v45, v43, v41, v40);
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

- (int64_t)action_ReportRefreshScanResults:(id)results error:(id *)error
{
  errorCopy = error;
  v112 = "[SUSettingsStatefulUIManager action_ReportRefreshScanResults:error:]";
  v166 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v160 = errorCopy;
  extendedStateQueue = [(SUCoreFSM *)selfCopy->_managerFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);
  MEMORY[0x277D82BD8](extendedStateQueue);
  currentState = [(SUSettingsStatefulUIManager *)selfCopy currentState];
  v158 = 0;
  v116 = 0;
  if (currentState == [location[0] refreshPreviousState])
  {
    v116 = 0;
    if (([location[0] refreshHasAnyChanges] & 1) == 0)
    {
      scanError = [(SUSettingsStatefulUIManager *)selfCopy scanError];
      v158 = 1;
      v116 = scanError == 0;
    }
  }

  v111 = v116;
  if (v158)
  {
    MEMORY[0x277D82BD8](scanError);
  }

  if (!v111)
  {
    goto LABEL_72;
  }

  if ([location[0] forceReload])
  {
    v69 = [(SUSettingsStatefulUIManager *)selfCopy log];
    oslog = [(SUCoreLog *)v69 oslog];
    MEMORY[0x277D82BD8](v69);
    v138 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v63 = oslog;
      *v64 = v138;
      v65 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
      v66 = MEMORY[0x277D82BE0](v65);
      v137 = v66;
      currentState2 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
      delegate = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      v135 = 0;
      v133 = 0;
      if (delegate)
      {
        delegate2 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
      delegate3 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      scanError2 = [(SUSettingsStatefulUIManager *)selfCopy scanError];
      preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
      alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
      currentDownload = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v131 = 0;
      v129 = 0;
      v127 = 0;
      if (currentDownload)
      {
        currentDownload2 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        v53 = 1;
        v131 = 1;
        descriptor = [(SUDownload *)currentDownload2 descriptor];
        v129 = 1;
        humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
        v127 = 1;
        v54 = humanReadableUpdateName;
      }

      else
      {
        v54 = @"(null)";
      }

      v40 = v54;
      currentDownload3 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      performThirdPartyScan = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
      v47 = "NO";
      v15 = "YES";
      v48 = "YES";
      if (!performThirdPartyScan)
      {
        v15 = "NO";
      }

      v42 = v15;
      isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
      v17 = v48;
      if (!isTargetedUpdateScheduledForAutoInstall)
      {
        v17 = v47;
      }

      v43 = v17;
      hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
      v19 = v48;
      if (!hidingPreferredDescriptor)
      {
        v19 = v47;
      }

      v44 = v19;
      humanReadableUpdateName2 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v46 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
      v126 = v46;
      hidingAlternateDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
      v21 = v48;
      if (!hidingAlternateDescriptor)
      {
        v21 = v47;
      }

      v49 = v21;
      humanReadableUpdateName3 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v51 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
      v125 = v51;
      enrolledBetaProgram = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v123 = 0;
      if (enrolledBetaProgram)
      {
        enrolledBetaProgram2 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
        v123 = 1;
        programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
      }

      else
      {
        programID = 0;
      }

      v30 = programID;
      betaPrograms = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
      v31 = [(NSArray *)betaPrograms count];
      currentFullScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
      currentRefreshScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
      currentUpdateOperation = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
      auxiliaryOperations = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
      v32 = v23;
      v33 = v164;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v164, v112, v66, currentState2, v55, delegate3, scanError2, preferredStatefulDescriptor, alternateStatefulDescriptor, v40, currentDownload3, v42, v43, v44, v46, v49, v51, programID, v31, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, [(NSMutableSet *)auxiliaryOperations count]);
      _os_log_impl(&dword_26AC94000, v63, v64[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nThe descriptors states and errors are identical to the previous values (refreshHasAnyChanges = YES). Force load was requested - proceeding to ask the delegate to reload the UI.", v33, 0xDEu);
      MEMORY[0x277D82BD8](auxiliaryOperations);
      MEMORY[0x277D82BD8](currentUpdateOperation);
      MEMORY[0x277D82BD8](currentRefreshScanOperation);
      MEMORY[0x277D82BD8](currentFullScanOperation);
      MEMORY[0x277D82BD8](betaPrograms);
      if (v123)
      {
        MEMORY[0x277D82BD8](enrolledBetaProgram2);
      }

      MEMORY[0x277D82BD8](enrolledBetaProgram);
      MEMORY[0x277D82BD8](humanReadableUpdateName3);
      MEMORY[0x277D82BD8](humanReadableUpdateName2);
      MEMORY[0x277D82BD8](currentDownload3);
      if (v127)
      {
        MEMORY[0x277D82BD8](humanReadableUpdateName);
      }

      if (v129)
      {
        MEMORY[0x277D82BD8](descriptor);
      }

      if (v131)
      {
        MEMORY[0x277D82BD8](currentDownload2);
      }

      MEMORY[0x277D82BD8](currentDownload);
      MEMORY[0x277D82BD8](alternateStatefulDescriptor);
      MEMORY[0x277D82BD8](preferredStatefulDescriptor);
      MEMORY[0x277D82BD8](scanError2);
      MEMORY[0x277D82BD8](delegate3);
      if (v133)
      {
        MEMORY[0x277D82BD8](v134);
      }

      if (v135)
      {
        MEMORY[0x277D82BD8](delegate2);
      }

      MEMORY[0x277D82BD8](delegate);
      MEMORY[0x277D82BD8](v65);
      v29 = 0;
      objc_storeStrong(&v125, 0);
      objc_storeStrong(&v126, v29);
      objc_storeStrong(&v137, v29);
    }

    objc_storeStrong(&oslog, 0);
LABEL_72:
    v26 = selfCopy;
    v24 = sel_statefulUIManagerDidRefreshState_;
    v25 = &v117;
    v117 = MEMORY[0x277D85DD0];
    v118 = -1073741824;
    v119 = 0;
    v120 = __69__SUSettingsStatefulUIManager_action_ReportRefreshScanResults_error___block_invoke;
    v121 = &unk_279CB93E8;
    v27 = &v122;
    v122 = MEMORY[0x277D82BE0](selfCopy);
    [(SUSettingsStatefulUIManager *)v26 executeOperationOnDelegate:v24 usingBlock:v25];
    v28 = 0;
    objc_storeStrong(&selfCopy->_currentRefreshScanOperation, 0);
    v163 = 0;
    v140 = 1;
    objc_storeStrong(v27, v28);
    goto LABEL_73;
  }

  v110 = [(SUSettingsStatefulUIManager *)selfCopy log];
  oslog = [(SUCoreLog *)v110 oslog];
  MEMORY[0x277D82BD8](v110);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v105 = type;
    v106 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
    v107 = MEMORY[0x277D82BE0](v106);
    v155 = v107;
    currentState3 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
    delegate4 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    v153 = 0;
    v151 = 0;
    if (delegate4)
    {
      delegate5 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
    delegate6 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    scanError3 = [(SUSettingsStatefulUIManager *)selfCopy scanError];
    preferredStatefulDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
    alternateStatefulDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
    currentDownload4 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    v149 = 0;
    v147 = 0;
    v145 = 0;
    if (currentDownload4)
    {
      currentDownload5 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v94 = 1;
      v149 = 1;
      descriptor2 = [(SUDownload *)currentDownload5 descriptor];
      v147 = 1;
      humanReadableUpdateName4 = [(SUDescriptor *)descriptor2 humanReadableUpdateName];
      v145 = 1;
      v95 = humanReadableUpdateName4;
    }

    else
    {
      v95 = @"(null)";
    }

    v81 = v95;
    currentDownload6 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    performThirdPartyScan2 = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
    v88 = "NO";
    v6 = "YES";
    v89 = "YES";
    if (!performThirdPartyScan2)
    {
      v6 = "NO";
    }

    v83 = v6;
    isTargetedUpdateScheduledForAutoInstall2 = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
    v8 = v89;
    if (!isTargetedUpdateScheduledForAutoInstall2)
    {
      v8 = v88;
    }

    v84 = v8;
    hidingPreferredDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
    v10 = v89;
    if (!hidingPreferredDescriptor2)
    {
      v10 = v88;
    }

    v85 = v10;
    humanReadableUpdateName5 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v87 = MEMORY[0x277D82BE0](humanReadableUpdateName5);
    v144 = v87;
    hidingAlternateDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
    v12 = v89;
    if (!hidingAlternateDescriptor2)
    {
      v12 = v88;
    }

    v90 = v12;
    humanReadableUpdateName6 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v92 = MEMORY[0x277D82BE0](humanReadableUpdateName6);
    v143 = v92;
    enrolledBetaProgram3 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
    v141 = 0;
    if (enrolledBetaProgram3)
    {
      enrolledBetaProgram4 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v141 = 1;
      programID2 = [(SDBetaProgram *)enrolledBetaProgram4 programID];
    }

    else
    {
      programID2 = 0;
    }

    v71 = programID2;
    betaPrograms2 = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
    v72 = [(NSArray *)betaPrograms2 count];
    currentFullScanOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
    currentRefreshScanOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
    currentUpdateOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
    auxiliaryOperations2 = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
    v73 = v23;
    buf = v165;
    __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v165, v112, v107, currentState3, v96, delegate6, scanError3, preferredStatefulDescriptor2, alternateStatefulDescriptor2, v81, currentDownload6, v83, v84, v85, v87, v90, v92, programID2, v72, currentFullScanOperation2, currentRefreshScanOperation2, currentUpdateOperation2, [(NSMutableSet *)auxiliaryOperations2 count]);
    _os_log_impl(&dword_26AC94000, log, v105[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nThe descriptors states and errors are identical to the previous values (refreshHasAnyChanges = YES). Dropping the refresh request.", buf, 0xDEu);
    MEMORY[0x277D82BD8](auxiliaryOperations2);
    MEMORY[0x277D82BD8](currentUpdateOperation2);
    MEMORY[0x277D82BD8](currentRefreshScanOperation2);
    MEMORY[0x277D82BD8](currentFullScanOperation2);
    MEMORY[0x277D82BD8](betaPrograms2);
    if (v141)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram4);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram3);
    MEMORY[0x277D82BD8](humanReadableUpdateName6);
    MEMORY[0x277D82BD8](humanReadableUpdateName5);
    MEMORY[0x277D82BD8](currentDownload6);
    if (v145)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName4);
    }

    if (v147)
    {
      MEMORY[0x277D82BD8](descriptor2);
    }

    if (v149)
    {
      MEMORY[0x277D82BD8](currentDownload5);
    }

    MEMORY[0x277D82BD8](currentDownload4);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor2);
    MEMORY[0x277D82BD8](scanError3);
    MEMORY[0x277D82BD8](delegate6);
    if (v151)
    {
      MEMORY[0x277D82BD8](v152);
    }

    if (v153)
    {
      MEMORY[0x277D82BD8](delegate5);
    }

    MEMORY[0x277D82BD8](delegate4);
    MEMORY[0x277D82BD8](v106);
    obj = 0;
    objc_storeStrong(&v143, 0);
    objc_storeStrong(&v144, obj);
    objc_storeStrong(&v155, obj);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&selfCopy->_currentRefreshScanOperation, 0);
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

- (int64_t)action_ReportRefreshScanResultsFailed:(id)failed error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, failed);
  v13[1] = error;
  extendedStateQueue = [(SUCoreFSM *)selfCopy->_managerFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);
  MEMORY[0x277D82BD8](extendedStateQueue);
  v7 = selfCopy;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __75__SUSettingsStatefulUIManager_action_ReportRefreshScanResultsFailed_error___block_invoke;
  v12 = &unk_279CB93E8;
  v13[0] = MEMORY[0x277D82BE0](selfCopy);
  [(SUSettingsStatefulUIManager *)v7 executeOperationOnDelegate:sel_statefulUIManagerDidRefreshState_ usingBlock:?];
  objc_storeStrong(&selfCopy->_currentRefreshScanOperation, 0);
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

- (int64_t)action_ThirdPartyScanDuringRefresh:(id)refresh error:(id *)error
{
  errorCopy = error;
  v63 = "[SUSettingsStatefulUIManager action_ThirdPartyScanDuringRefresh:error:]";
  v87 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, refresh);
  oslog[1] = errorCopy;
  extendedStateQueue = [(SUCoreFSM *)selfCopy->_managerFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);
  MEMORY[0x277D82BD8](extendedStateQueue);
  v62 = [(SUSettingsStatefulUIManager *)selfCopy log];
  oslog[0] = [(SUCoreLog *)v62 oslog];
  MEMORY[0x277D82BD8](v62);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v57 = type;
    v58 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
    v59 = MEMORY[0x277D82BE0](v58);
    v81 = v59;
    currentState = [(SUSettingsStatefulUIManager *)selfCopy currentState];
    delegate = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    v79 = 0;
    v77 = 0;
    if (delegate)
    {
      delegate2 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
    delegate3 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    scanError = [(SUSettingsStatefulUIManager *)selfCopy scanError];
    preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
    alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
    currentDownload = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    v75 = 0;
    v73 = 0;
    v71 = 0;
    if (currentDownload)
    {
      currentDownload2 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v46 = 1;
      v75 = 1;
      descriptor = [(SUDownload *)currentDownload2 descriptor];
      v73 = 1;
      humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v71 = 1;
      v47 = humanReadableUpdateName;
    }

    else
    {
      v47 = @"(null)";
    }

    v33 = v47;
    currentDownload3 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    performThirdPartyScan = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
    v40 = "NO";
    v6 = "YES";
    v41 = "YES";
    if (!performThirdPartyScan)
    {
      v6 = "NO";
    }

    v35 = v6;
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
    v8 = v41;
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v8 = v40;
    }

    v36 = v8;
    hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
    v10 = v41;
    if (!hidingPreferredDescriptor)
    {
      v10 = v40;
    }

    v37 = v10;
    humanReadableUpdateName2 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v39 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
    v70 = v39;
    hidingAlternateDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
    v12 = v41;
    if (!hidingAlternateDescriptor)
    {
      v12 = v40;
    }

    v42 = v12;
    humanReadableUpdateName3 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v44 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
    v69 = v44;
    enrolledBetaProgram = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
    v67 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v67 = 1;
      programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v18 = programID;
    betaPrograms = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
    v19 = [(NSArray *)betaPrograms count];
    currentFullScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
    currentRefreshScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
    currentUpdateOperation = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
    auxiliaryOperations = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
    v20 = [(NSMutableSet *)auxiliaryOperations count];
    currentRefreshScanOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
    scanUUID = [(SUSettingsScanOperation *)currentRefreshScanOperation2 scanUUID];
    v21 = MEMORY[0x277D82BE0](scanUUID);
    v66 = v21;
    currentRefreshScanOperation3 = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
    v22 = &v14;
    buf = v86;
    __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_2(v86, v63, v59, currentState, v48, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v33, currentDownload3, v35, v36, v37, v39, v42, v44, programID, v19, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, v20, v21, currentRefreshScanOperation3);
    _os_log_impl(&dword_26AC94000, log, v57[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCancelling a refresh request as a third-party scan has been initiated.\nRefresh scan UUID: %{public}@; Refresh Scan: %{public}p", buf, 0xF2u);
    MEMORY[0x277D82BD8](currentRefreshScanOperation3);
    MEMORY[0x277D82BD8](scanUUID);
    MEMORY[0x277D82BD8](currentRefreshScanOperation2);
    MEMORY[0x277D82BD8](auxiliaryOperations);
    MEMORY[0x277D82BD8](currentUpdateOperation);
    MEMORY[0x277D82BD8](currentRefreshScanOperation);
    MEMORY[0x277D82BD8](currentFullScanOperation);
    MEMORY[0x277D82BD8](betaPrograms);
    if (v67)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v71)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    if (v73)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v75)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v77)
    {
      MEMORY[0x277D82BD8](v78);
    }

    if (v79)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](v58);
    obj = 0;
    objc_storeStrong(&v66, 0);
    objc_storeStrong(&v69, obj);
    objc_storeStrong(&v70, obj);
    objc_storeStrong(&v81, obj);
  }

  objc_storeStrong(oslog, 0);
  currentRefreshScanOperation4 = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
  MEMORY[0x277D82BD8](currentRefreshScanOperation4);
  if (currentRefreshScanOperation4)
  {
    currentRefreshScanOperation5 = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
    [(SUSettingsScanOperation *)currentRefreshScanOperation5 cancel:0];
    MEMORY[0x277D82BD8](currentRefreshScanOperation5);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return 0;
}

- (int64_t)actionUnknownAction:(id)action error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, action);
  v16[1] = error;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v16[0] = [v4 initWithFormat:location[0]];
  managerFSM = [(SUSettingsStatefulUIManager *)selfCopy managerFSM];
  diag = [(SUCoreFSM *)managerFSM diag];
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = [v5 initWithFormat:@"unknown action(%@)", location[0]];
  [diag dumpTracked:? dumpingTo:? usingFilename:? clearingStatistics:? clearingHistory:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](diag);
  MEMORY[0x277D82BD8](managerFSM);
  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  v15 = [mEMORY[0x277D643F8] buildError:8116 underlying:0 description:v16[0]];
  MEMORY[0x277D82BD8](mEMORY[0x277D643F8]);
  managerFSM2 = [(SUSettingsStatefulUIManager *)selfCopy managerFSM];
  diag2 = [(SUCoreFSM *)managerFSM2 diag];
  code = [v15 code];
  [diag2 trackAnomaly:@"[SUSettingsStatefulUIManager]" forReason:@"Stateful UI FSM has reported an anomaly" withResult:code withError:v15];
  MEMORY[0x277D82BD8](diag2);
  MEMORY[0x277D82BD8](managerFSM2);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (SUSettingsStatefulUIManager)initWithManagerClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v5 = selfCopy;
  v4 = location[0];
  mEMORY[0x277D4D310] = [MEMORY[0x277D4D310] sharedManager];
  mEMORY[0x277D648D0] = [MEMORY[0x277D648D0] sharedInstance];
  selfCopy = 0;
  selfCopy = [SUSettingsStatefulUIManager initWithManagerClient:v5 betaManager:"initWithManagerClient:betaManager:preferences:options:" preferences:v4 options:mEMORY[0x277D4D310]];
  v8 = MEMORY[0x277D82BE0](selfCopy);
  MEMORY[0x277D82BD8](mEMORY[0x277D648D0]);
  MEMORY[0x277D82BD8](mEMORY[0x277D4D310]);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (SUSettingsStatefulUIManager)initWithManagerClient:(id)client options:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v11 = 0;
  objc_storeStrong(&v11, options);
  v7 = selfCopy;
  v6 = location[0];
  mEMORY[0x277D4D310] = [MEMORY[0x277D4D310] sharedManager];
  mEMORY[0x277D648D0] = [MEMORY[0x277D648D0] sharedInstance];
  selfCopy = 0;
  selfCopy = [SUSettingsStatefulUIManager initWithManagerClient:v7 betaManager:"initWithManagerClient:betaManager:preferences:options:" preferences:v6 options:mEMORY[0x277D4D310]];
  v10 = MEMORY[0x277D82BE0](selfCopy);
  MEMORY[0x277D82BD8](mEMORY[0x277D648D0]);
  MEMORY[0x277D82BD8](mEMORY[0x277D4D310]);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (SUSettingsStatefulUIManager)initWithManagerClient:(id)client betaManager:(id)manager preferences:(id)preferences options:(id)options
{
  v50 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v44 = 0;
  objc_storeStrong(&v44, manager);
  v43 = 0;
  objc_storeStrong(&v43, preferences);
  v42 = 0;
  objc_storeStrong(&v42, options);
  v6 = selfCopy;
  selfCopy = 0;
  v41.receiver = v6;
  v41.super_class = SUSettingsStatefulUIManager;
  v30 = [(SUSettingsStatefulUIManager *)&v41 init];
  selfCopy = v30;
  objc_storeStrong(&selfCopy, v30);
  if (!v30)
  {
    goto LABEL_25;
  }

  v7 = [objc_alloc(MEMORY[0x277D64460]) initWithCategory:@"SUSettingsStatefulUIManager"];
  v8 = *(selfCopy + 20);
  *(selfCopy + 20) = v7;
  MEMORY[0x277D82BD8](v8);
  if (!*(selfCopy + 20))
  {
    v26 = SUSettingsSharedLogger();
    oslog = [v26 oslog];
    MEMORY[0x277D82BD8](v26);
    v39 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_64(v49, "[SUSettingsStatefulUIManager initWithManagerClient:betaManager:preferences:options:]", @"SUSettingsStatefulUIManager");
      _os_log_impl(&dword_26AC94000, oslog, v39, "%s: Could not create a log category for %@", v49, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    v47 = 0;
    v38 = 1;
    goto LABEL_26;
  }

  v36 = 0;
  if (v42)
  {
    objc_storeStrong(selfCopy + 6, v42);
  }

  else
  {
    v37 = objc_alloc_init(SUSettingsStatefulUIOptions);
    v36 = 1;
    objc_storeStrong(selfCopy + 6, v37);
  }

  if (v36)
  {
    MEMORY[0x277D82BD8](v37);
  }

  v9 = [[SUSettingsStatefulErrorContextProvider alloc] initForManager:selfCopy];
  v10 = *(selfCopy + 7);
  *(selfCopy + 7) = v9;
  MEMORY[0x277D82BD8](v10);
  v21 = MEMORY[0x277CCACA8];
  baseDomain = [selfCopy baseDomain];
  v22 = [v21 stringWithFormat:@"%@.stateful-ui-manager.preferences", baseDomain];
  v11 = v22;
  v12 = dispatch_queue_create([v22 UTF8String], 0);
  v13 = *(selfCopy + 22);
  *(selfCopy + 22) = v12;
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](baseDomain);
  v24 = [SUSettingsSUPreferencesManager alloc];
  v25 = *(selfCopy + 22);
  v34 = 0;
  if (v43)
  {
    v20 = v43;
  }

  else
  {
    mEMORY[0x277D648D0] = [MEMORY[0x277D648D0] sharedInstance];
    v34 = 1;
    v20 = mEMORY[0x277D648D0];
  }

  v14 = [(SUSettingsSUPreferencesManager *)v24 initWithDispatchQueue:v25 forSUPreferencesInstance:v20];
  v15 = *(selfCopy + 8);
  *(selfCopy + 8) = v14;
  MEMORY[0x277D82BD8](v15);
  if (v34)
  {
    MEMORY[0x277D82BD8](mEMORY[0x277D648D0]);
  }

  objc_storeStrong(selfCopy + 28, location[0]);
  [*(selfCopy + 28) setDelegate:selfCopy];
  *(selfCopy + 9) = 0;
  v32 = 0;
  if (v44)
  {
    objc_storeStrong(selfCopy + 29, v44);
  }

  else
  {
    mEMORY[0x277D4D310] = [MEMORY[0x277D4D310] sharedManager];
    v32 = 1;
    objc_storeStrong(selfCopy + 29, mEMORY[0x277D4D310]);
  }

  if (v32)
  {
    MEMORY[0x277D82BD8](mEMORY[0x277D4D310]);
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v17 = *(selfCopy + 26);
  *(selfCopy + 26) = v16;
  MEMORY[0x277D82BD8](v17);
  [selfCopy setupFSM];
  [selfCopy setupNetworkMonitoring];
  [selfCopy setupBatteryMonitoring];
  [selfCopy setupObservers];
  if (*(selfCopy + 27))
  {
LABEL_25:
    v47 = MEMORY[0x277D82BE0](selfCopy);
    v38 = 1;
    goto LABEL_26;
  }

  v19 = [selfCopy log];
  oslog2 = [v19 oslog];
  MEMORY[0x277D82BD8](v19);
  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_32(v48, "[SUSettingsStatefulUIManager initWithManagerClient:betaManager:preferences:options:]");
    _os_log_error_impl(&dword_26AC94000, oslog2, OS_LOG_TYPE_ERROR, "%s: Failed creating the manager FSM", v48, 0xCu);
  }

  objc_storeStrong(&oslog2, 0);
  v47 = 0;
  v38 = 1;
LABEL_26:
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return v47;
}

- (void)dealloc
{
  selfCopy = self;
  v6 = a2;
  v2 = SBSSpringBoardServerPort();
  MEMORY[0x26D66A050](v2, selfCopy->_originalCellFlag, selfCopy->_originalWifiFlag);
  sharedInstance = [getSUNetworkMonitorClass() sharedInstance];
  [sharedInstance removeObserver:selfCopy];
  MEMORY[0x277D82BD8](sharedInstance);
  PSSetBatteryMonitoringEnabled();
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:selfCopy];
  MEMORY[0x277D82BD8](defaultCenter);
  v5.receiver = selfCopy;
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
    currentState = [v56[1] currentState];
    delegate = [v56[1] delegate];
    v70 = 0;
    v68 = 0;
    if (delegate)
    {
      delegate2 = [v56[1] delegate];
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
    delegate3 = [v56[1] delegate];
    scanError = [v56[1] scanError];
    preferredStatefulDescriptor = [v56[1] preferredStatefulDescriptor];
    alternateStatefulDescriptor = [v56[1] alternateStatefulDescriptor];
    currentDownload = [v56[1] currentDownload];
    v66 = 0;
    v64 = 0;
    v62 = 0;
    if (currentDownload)
    {
      currentDownload2 = [v56[1] currentDownload];
      v39 = 1;
      v66 = 1;
      descriptor = [currentDownload2 descriptor];
      v64 = 1;
      humanReadableUpdateName = [descriptor humanReadableUpdateName];
      v62 = 1;
      v40 = humanReadableUpdateName;
    }

    else
    {
      v40 = @"(null)";
    }

    v26 = v40;
    currentDownload3 = [v56[1] currentDownload];
    performThirdPartyScan = [v56[1] performThirdPartyScan];
    v33 = "NO";
    v4 = "YES";
    v34 = "YES";
    if ((performThirdPartyScan & 1) == 0)
    {
      v4 = "NO";
    }

    v28 = v4;
    isTargetedUpdateScheduledForAutoInstall = [v56[1] isTargetedUpdateScheduledForAutoInstall];
    v6 = v34;
    if ((isTargetedUpdateScheduledForAutoInstall & 1) == 0)
    {
      v6 = v33;
    }

    v29 = v6;
    hidingPreferredDescriptor = [v56[1] hidingPreferredDescriptor];
    v8 = v34;
    if ((hidingPreferredDescriptor & 1) == 0)
    {
      v8 = v33;
    }

    v30 = v8;
    humanReadableUpdateName2 = [*(v56[1] + 256) humanReadableUpdateName];
    v32 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
    v61 = v32;
    hidingAlternateDescriptor = [v56[1] hidingAlternateDescriptor];
    v10 = v34;
    if ((hidingAlternateDescriptor & 1) == 0)
    {
      v10 = v33;
    }

    v35 = v10;
    humanReadableUpdateName3 = [*(v56[1] + 264) humanReadableUpdateName];
    v37 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
    location = v37;
    enrolledBetaProgram = [v56[1] enrolledBetaProgram];
    v58 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [v56[1] enrolledBetaProgram];
      v58 = 1;
      programID = [enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v16 = programID;
    betaPrograms = [v56[1] betaPrograms];
    v17 = [betaPrograms count];
    currentFullScanOperation = [v56[1] currentFullScanOperation];
    currentRefreshScanOperation = [v56[1] currentRefreshScanOperation];
    currentUpdateOperation = [v56[1] currentUpdateOperation];
    auxiliaryOperations = [v56[1] auxiliaryOperations];
    v18 = &v11;
    buf = v76;
    __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v76, v57, v52, currentState, v41, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v26, currentDownload3, v28, v29, v30, v32, v35, v37, programID, v17, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, [auxiliaryOperations count]);
    _os_log_impl(&dword_26AC94000, log, v50[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\n", buf, 0xDEu);
    MEMORY[0x277D82BD8](auxiliaryOperations);
    MEMORY[0x277D82BD8](currentUpdateOperation);
    MEMORY[0x277D82BD8](currentRefreshScanOperation);
    MEMORY[0x277D82BD8](currentFullScanOperation);
    MEMORY[0x277D82BD8](betaPrograms);
    if (v58)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v62)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    if (v64)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v66)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v68)
    {
      MEMORY[0x277D82BD8](v69);
    }

    if (v70)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](v51);
    obj = 0;
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v61, obj);
    objc_storeStrong(&v72, obj);
  }

  objc_storeStrong(&oslog, 0);
  managerFSM = [v56[1] managerFSM];
  v12 = @"CheckForAvailableUpdate";
  v13 = objc_alloc_init(SUSettingsStatefulUIManagerFSMParam);
  [managerFSM postEvent:v12 withInfo:?];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](managerFSM);
  *MEMORY[0x277D85DE8];
}

- (void)refreshState:(BOOL)state
{
  v224 = "[SUSettingsStatefulUIManager refreshState:]";
  v285 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v280 = a2;
  stateCopy = state;
  obj = MEMORY[0x277D82BE0](self->_currentRefreshScanOperation);
  objc_sync_enter(obj);
  v223 = [(SUSettingsStatefulUIManager *)selfCopy log];
  v221 = v223;
  oslog = [v221 oslog];
  oslog = oslog;
  MEMORY[0x277D82BD8](v221);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v219 = type;
    currentState = [(SUSettingsStatefulUIManager *)selfCopy currentState];
    v217 = SUSettingsUIStateToString(currentState);
    v214 = v217;
    v215 = MEMORY[0x277D82BE0](v214);
    v276 = v215;
    currentState2 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
    v274 = 0;
    v272 = 0;
    delegate = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    v212 = delegate;
    if (v212)
    {
      delegate2 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      v275 = delegate2;
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
    delegate3 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    v204 = delegate3;
    scanError = [(SUSettingsStatefulUIManager *)selfCopy scanError];
    v202 = scanError;
    preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
    v200 = preferredStatefulDescriptor;
    alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
    v198 = alternateStatefulDescriptor;
    v270 = 0;
    v268 = 0;
    v266 = 0;
    currentDownload = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    v197 = currentDownload;
    if (v197)
    {
      currentDownload2 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v271 = currentDownload2;
      v270 = 1;
      descriptor = [v271 descriptor];
      v269 = descriptor;
      v268 = 1;
      humanReadableUpdateName = [v269 humanReadableUpdateName];
      v267 = humanReadableUpdateName;
      v266 = 1;
      v193 = v267;
    }

    else
    {
      v193 = @"(null)";
    }

    v191 = v193;
    currentDownload3 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    v189 = currentDownload3;
    performThirdPartyScan = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
    v3 = "YES";
    if (!performThirdPartyScan)
    {
      v3 = "NO";
    }

    v187 = v3;
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
    v4 = "YES";
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v4 = "NO";
    }

    v185 = v4;
    hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
    v5 = "YES";
    if (!hidingPreferredDescriptor)
    {
      v5 = "NO";
    }

    v183 = v5;
    humanReadableUpdateName2 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v180 = humanReadableUpdateName2;
    v181 = MEMORY[0x277D82BE0](v180);
    v265 = v181;
    hidingAlternateDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
    v6 = "YES";
    if (!hidingAlternateDescriptor)
    {
      v6 = "NO";
    }

    v178 = v6;
    humanReadableUpdateName3 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v175 = humanReadableUpdateName3;
    v176 = MEMORY[0x277D82BE0](v175);
    location = v176;
    v262 = 0;
    enrolledBetaProgram = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
    v174 = enrolledBetaProgram;
    if (v174)
    {
      enrolledBetaProgram2 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v263 = enrolledBetaProgram2;
      v262 = 1;
      programID = [v263 programID];
      v171 = programID;
    }

    else
    {
      v171 = 0;
    }

    v169 = v171;
    betaPrograms = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
    v167 = betaPrograms;
    v168 = [v167 count];
    currentFullScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
    v164 = currentFullScanOperation;
    currentRefreshScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
    v162 = currentRefreshScanOperation;
    currentUpdateOperation = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
    v160 = currentUpdateOperation;
    auxiliaryOperations = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
    v158 = auxiliaryOperations;
    v159 = [v158 count];
    v156 = &v15;
    buf = v284;
    __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v284, v224, v215, currentState2, v206, v204, v202, v200, v198, v191, v189, v187, v185, v183, v181, v178, v176, v171, v168, v164, v162, v160, v159);
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
  if (selfCopy->_currentRefreshScanOperation)
  {
    v155 = [(SUSettingsStatefulUIManager *)selfCopy log];
    v153 = v155;
    oslog2 = [v153 oslog];
    v261 = oslog2;
    MEMORY[0x277D82BD8](v153);
    v260 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v261, OS_LOG_TYPE_DEFAULT))
    {
      v150 = v261;
      *v151 = v260;
      currentState3 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
      v149 = SUSettingsUIStateToString(currentState3);
      v146 = v149;
      v147 = MEMORY[0x277D82BE0](v146);
      v259 = v147;
      currentState4 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
      v257 = 0;
      v255 = 0;
      delegate4 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      v144 = delegate4;
      if (v144)
      {
        delegate5 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
        v258 = delegate5;
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
      delegate6 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      v136 = delegate6;
      scanError2 = [(SUSettingsStatefulUIManager *)selfCopy scanError];
      v134 = scanError2;
      preferredStatefulDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
      v132 = preferredStatefulDescriptor2;
      alternateStatefulDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
      v130 = alternateStatefulDescriptor2;
      v253 = 0;
      v251 = 0;
      v249 = 0;
      currentDownload4 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v129 = currentDownload4;
      if (v129)
      {
        currentDownload5 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        v254 = currentDownload5;
        v253 = 1;
        descriptor2 = [v254 descriptor];
        v252 = descriptor2;
        v251 = 1;
        humanReadableUpdateName4 = [v252 humanReadableUpdateName];
        v250 = humanReadableUpdateName4;
        v249 = 1;
        v125 = v250;
      }

      else
      {
        v125 = @"(null)";
      }

      v123 = v125;
      currentDownload6 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v121 = currentDownload6;
      performThirdPartyScan2 = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
      v7 = "YES";
      if (!performThirdPartyScan2)
      {
        v7 = "NO";
      }

      v119 = v7;
      isTargetedUpdateScheduledForAutoInstall2 = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
      v8 = "YES";
      if (!isTargetedUpdateScheduledForAutoInstall2)
      {
        v8 = "NO";
      }

      v117 = v8;
      hidingPreferredDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
      v9 = "YES";
      if (!hidingPreferredDescriptor2)
      {
        v9 = "NO";
      }

      v115 = v9;
      humanReadableUpdateName5 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v112 = humanReadableUpdateName5;
      v113 = MEMORY[0x277D82BE0](v112);
      v248 = v113;
      hidingAlternateDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
      v10 = "YES";
      if (!hidingAlternateDescriptor2)
      {
        v10 = "NO";
      }

      v110 = v10;
      humanReadableUpdateName6 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v107 = humanReadableUpdateName6;
      v108 = MEMORY[0x277D82BE0](v107);
      v247 = v108;
      v245 = 0;
      enrolledBetaProgram3 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v106 = enrolledBetaProgram3;
      if (v106)
      {
        enrolledBetaProgram4 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
        v246 = enrolledBetaProgram4;
        v245 = 1;
        programID2 = [v246 programID];
        v103 = programID2;
      }

      else
      {
        v103 = 0;
      }

      v101 = v103;
      betaPrograms2 = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
      v99 = betaPrograms2;
      v100 = [v99 count];
      currentFullScanOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
      v96 = currentFullScanOperation2;
      currentRefreshScanOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
      v94 = currentRefreshScanOperation2;
      currentUpdateOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
      v92 = currentUpdateOperation2;
      auxiliaryOperations2 = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
      v90 = auxiliaryOperations2;
      v91 = [v90 count];
      v88 = &v15;
      v89 = v283;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v283, v224, v147, currentState4, v138, v136, v134, v132, v130, v123, v121, v119, v117, v115, v113, v110, v108, v101, v100, v96, v94, v92, v91);
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

  else if (selfCopy->_currentFullScanOperation)
  {
    v87 = [(SUSettingsStatefulUIManager *)selfCopy log];
    v85 = v87;
    oslog3 = [v85 oslog];
    v243 = oslog3;
    MEMORY[0x277D82BD8](v85);
    v242 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
    {
      v82 = v243;
      *v83 = v242;
      currentState5 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
      v81 = SUSettingsUIStateToString(currentState5);
      v78 = v81;
      v79 = MEMORY[0x277D82BE0](v78);
      v241 = v79;
      currentState6 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
      v239 = 0;
      v237 = 0;
      delegate7 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      v76 = delegate7;
      if (v76)
      {
        delegate8 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
        v240 = delegate8;
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
      delegate9 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      v68 = delegate9;
      scanError3 = [(SUSettingsStatefulUIManager *)selfCopy scanError];
      v66 = scanError3;
      preferredStatefulDescriptor3 = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
      v64 = preferredStatefulDescriptor3;
      alternateStatefulDescriptor3 = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
      v62 = alternateStatefulDescriptor3;
      v235 = 0;
      v233 = 0;
      v231 = 0;
      currentDownload7 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v61 = currentDownload7;
      if (v61)
      {
        currentDownload8 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        v236 = currentDownload8;
        v235 = 1;
        descriptor3 = [v236 descriptor];
        v234 = descriptor3;
        v233 = 1;
        humanReadableUpdateName7 = [v234 humanReadableUpdateName];
        v232 = humanReadableUpdateName7;
        v231 = 1;
        v57 = v232;
      }

      else
      {
        v57 = @"(null)";
      }

      v55 = v57;
      currentDownload9 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v53 = currentDownload9;
      performThirdPartyScan3 = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
      v11 = "YES";
      if (!performThirdPartyScan3)
      {
        v11 = "NO";
      }

      v51 = v11;
      isTargetedUpdateScheduledForAutoInstall3 = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
      v12 = "YES";
      if (!isTargetedUpdateScheduledForAutoInstall3)
      {
        v12 = "NO";
      }

      v49 = v12;
      hidingPreferredDescriptor3 = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
      v13 = "YES";
      if (!hidingPreferredDescriptor3)
      {
        v13 = "NO";
      }

      v47 = v13;
      humanReadableUpdateName8 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v44 = humanReadableUpdateName8;
      v45 = MEMORY[0x277D82BE0](v44);
      v230 = v45;
      hidingAlternateDescriptor3 = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
      v14 = "YES";
      if (!hidingAlternateDescriptor3)
      {
        v14 = "NO";
      }

      v42 = v14;
      humanReadableUpdateName9 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v39 = humanReadableUpdateName9;
      v40 = MEMORY[0x277D82BE0](v39);
      v229 = v40;
      v227 = 0;
      enrolledBetaProgram5 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v38 = enrolledBetaProgram5;
      if (v38)
      {
        enrolledBetaProgram6 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
        v228 = enrolledBetaProgram6;
        v227 = 1;
        programID3 = [v228 programID];
        v35 = programID3;
      }

      else
      {
        v35 = 0;
      }

      v33 = v35;
      betaPrograms3 = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
      v31 = betaPrograms3;
      v32 = [v31 count];
      currentFullScanOperation3 = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
      v28 = currentFullScanOperation3;
      currentRefreshScanOperation3 = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
      v26 = currentRefreshScanOperation3;
      currentUpdateOperation3 = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
      v24 = currentUpdateOperation3;
      auxiliaryOperations3 = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
      v22 = auxiliaryOperations3;
      v23 = [v22 count];
      v20 = &v15;
      v21 = v282;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v282, v224, v79, currentState6, v70, v68, v66, v64, v62, v55, v53, v51, v49, v47, v45, v42, v40, v33, v32, v28, v26, v24, v23);
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
    [(SUSettingsStatefulUIManagerFSMParam *)v19 setForceReload:stateCopy];
    [v226 setRefreshHasAnyChanges:0];
    currentState7 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
    [v226 setRefreshPreviousState:currentState7];
    managerFSM = [(SUSettingsStatefulUIManager *)selfCopy managerFSM];
    v16 = managerFSM;
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
    currentState = [v55[1] currentState];
    delegate = [v55[1] delegate];
    v69 = 0;
    v67 = 0;
    if (delegate)
    {
      delegate2 = [v55[1] delegate];
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
    delegate3 = [v55[1] delegate];
    scanError = [v55[1] scanError];
    preferredStatefulDescriptor = [v55[1] preferredStatefulDescriptor];
    alternateStatefulDescriptor = [v55[1] alternateStatefulDescriptor];
    currentDownload = [v55[1] currentDownload];
    v65 = 0;
    v63 = 0;
    v61 = 0;
    if (currentDownload)
    {
      currentDownload2 = [v55[1] currentDownload];
      v38 = 1;
      v65 = 1;
      descriptor = [currentDownload2 descriptor];
      v63 = 1;
      humanReadableUpdateName = [descriptor humanReadableUpdateName];
      v61 = 1;
      v39 = humanReadableUpdateName;
    }

    else
    {
      v39 = @"(null)";
    }

    v25 = v39;
    currentDownload3 = [v55[1] currentDownload];
    performThirdPartyScan = [v55[1] performThirdPartyScan];
    v32 = "NO";
    v4 = "YES";
    v33 = "YES";
    if ((performThirdPartyScan & 1) == 0)
    {
      v4 = "NO";
    }

    v27 = v4;
    isTargetedUpdateScheduledForAutoInstall = [v55[1] isTargetedUpdateScheduledForAutoInstall];
    v6 = v33;
    if ((isTargetedUpdateScheduledForAutoInstall & 1) == 0)
    {
      v6 = v32;
    }

    v28 = v6;
    hidingPreferredDescriptor = [v55[1] hidingPreferredDescriptor];
    v8 = v33;
    if ((hidingPreferredDescriptor & 1) == 0)
    {
      v8 = v32;
    }

    v29 = v8;
    humanReadableUpdateName2 = [*(v55[1] + 256) humanReadableUpdateName];
    v31 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
    v60 = v31;
    hidingAlternateDescriptor = [v55[1] hidingAlternateDescriptor];
    v10 = v33;
    if ((hidingAlternateDescriptor & 1) == 0)
    {
      v10 = v32;
    }

    v34 = v10;
    humanReadableUpdateName3 = [*(v55[1] + 264) humanReadableUpdateName];
    v36 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
    location = v36;
    enrolledBetaProgram = [v55[1] enrolledBetaProgram];
    v57 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [v55[1] enrolledBetaProgram];
      v57 = 1;
      programID = [enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v15 = programID;
    betaPrograms = [v55[1] betaPrograms];
    v16 = [betaPrograms count];
    currentFullScanOperation = [v55[1] currentFullScanOperation];
    currentRefreshScanOperation = [v55[1] currentRefreshScanOperation];
    currentUpdateOperation = [v55[1] currentUpdateOperation];
    auxiliaryOperations = [v55[1] auxiliaryOperations];
    v17 = &v11;
    buf = v75;
    __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v75, v56, v51, currentState, v40, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v25, currentDownload3, v27, v28, v29, v31, v34, v36, programID, v16, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, [auxiliaryOperations count]);
    _os_log_impl(&dword_26AC94000, log, v49[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\n", buf, 0xDEu);
    MEMORY[0x277D82BD8](auxiliaryOperations);
    MEMORY[0x277D82BD8](currentUpdateOperation);
    MEMORY[0x277D82BD8](currentRefreshScanOperation);
    MEMORY[0x277D82BD8](currentFullScanOperation);
    MEMORY[0x277D82BD8](betaPrograms);
    if (v57)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v61)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    if (v63)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v65)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v67)
    {
      MEMORY[0x277D82BD8](v68);
    }

    if (v69)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
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

- (BOOL)doesTargetedUpdateMatchDescriptorType:(unint64_t)type
{
  v21 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v17 = a2;
  typeCopy = type;
  if (!type || typeCopy == 1)
  {
    v11 = 0;
    v9 = 0;
    if (typeCopy)
    {
      alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
      v9 = 1;
      v4 = alternateStatefulDescriptor;
    }

    else
    {
      preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
      v11 = 1;
      v4 = preferredStatefulDescriptor;
    }

    v19 = [(SUSettingsStatefulUIManager *)selfCopy doesTargetedUpdateMatchDescriptor:v4];
    if (v9)
    {
      MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    }

    if (v11)
    {
      MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    }
  }

  else
  {
    v8 = [(SUSettingsStatefulUIManager *)selfCopy log];
    oslog = [(SUCoreLog *)v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v14 = 16;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      type = v14;
      v7 = SUSettingsDescriptorTypeToString(typeCopy);
      v13 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_3_8_32_8_64_8_0(v20, "[SUSettingsStatefulUIManager doesTargetedUpdateMatchDescriptorType:]", v13, typeCopy);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: The given descriptor type, %@ (%ld), is invalid.", v20, 0x20u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&oslog, 0);
    v19 = 0;
  }

  *MEMORY[0x277D85DE8];
  return v19 & 1;
}

- (BOOL)doesTargetedUpdateMatchDescriptor:(id)descriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  currentDownload = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
  v10 = 0;
  v8 = 0;
  v6 = 0;
  v5 = 0;
  if (currentDownload)
  {
    currentDownload2 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    v10 = 1;
    descriptor = [(SUDownload *)currentDownload2 descriptor];
    v8 = 1;
    descriptor2 = [location[0] descriptor];
    v6 = 1;
    v5 = [(SUDescriptor *)descriptor isEqual:?];
  }

  v14 = v5 & 1;
  if (v6)
  {
    MEMORY[0x277D82BD8](descriptor2);
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](descriptor);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](currentDownload2);
  }

  MEMORY[0x277D82BD8](currentDownload);
  objc_storeStrong(location, 0);
  return v14 & 1;
}

- (id)latestUpdateStatefulDescriptor
{
  preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)self preferredStatefulDescriptor];
  isLatestUpdate = [(SUSettingsStatefulDescriptor *)preferredStatefulDescriptor isLatestUpdate];
  MEMORY[0x277D82BD8](preferredStatefulDescriptor);
  if (isLatestUpdate)
  {
    preferredStatefulDescriptor2 = [(SUSettingsStatefulUIManager *)self preferredStatefulDescriptor];
  }

  else
  {
    alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)self alternateStatefulDescriptor];
    isLatestUpdate2 = [(SUSettingsStatefulDescriptor *)alternateStatefulDescriptor isLatestUpdate];
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    if (isLatestUpdate2)
    {
      preferredStatefulDescriptor2 = [(SUSettingsStatefulUIManager *)self alternateStatefulDescriptor];
    }

    else
    {
      preferredStatefulDescriptor2 = 0;
    }
  }

  return preferredStatefulDescriptor2;
}

- (void)downloadUpdate:(id)update completionHandler:(id)handler operationDelegate:(id)delegate delegateCallbackQueue:(id)queue
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  v20 = 0;
  objc_storeStrong(&v20, handler);
  v19 = 0;
  objc_storeStrong(&v19, delegate);
  v18 = 0;
  objc_storeStrong(&v18, queue);
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __104__SUSettingsStatefulUIManager_downloadUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke;
  v13 = &unk_279CB9528;
  v14 = MEMORY[0x277D82BE0](selfCopy);
  v15 = MEMORY[0x277D82BE0](location[0]);
  v16 = MEMORY[0x277D82BE0](v20);
  v17 = MEMORY[0x26D66A460]();
  [(SUSettingsStatefulUIManager *)selfCopy beginUpdateOperationWithDescriptor:location[0] operationDelegate:v19 delegateCallbackQueue:v18 operationTypeBlock:v17];
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

- (void)downloadAndInstall:(id)install completionHandler:(id)handler operationDelegate:(id)delegate delegateCallbackQueue:(id)queue
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, install);
  v20 = 0;
  objc_storeStrong(&v20, handler);
  v19 = 0;
  objc_storeStrong(&v19, delegate);
  v18 = 0;
  objc_storeStrong(&v18, queue);
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __108__SUSettingsStatefulUIManager_downloadAndInstall_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke;
  v13 = &unk_279CB9528;
  v14 = MEMORY[0x277D82BE0](selfCopy);
  v15 = MEMORY[0x277D82BE0](location[0]);
  v16 = MEMORY[0x277D82BE0](v20);
  v17 = MEMORY[0x26D66A460]();
  [(SUSettingsStatefulUIManager *)selfCopy beginUpdateOperationWithDescriptor:location[0] operationDelegate:v19 delegateCallbackQueue:v18 operationTypeBlock:v17];
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

- (void)downloadAndScheduleUpdate:(id)update completionHandler:(id)handler operationDelegate:(id)delegate delegateCallbackQueue:(id)queue
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  v20 = 0;
  objc_storeStrong(&v20, handler);
  v19 = 0;
  objc_storeStrong(&v19, delegate);
  v18 = 0;
  objc_storeStrong(&v18, queue);
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __115__SUSettingsStatefulUIManager_downloadAndScheduleUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke;
  v13 = &unk_279CB9528;
  v14 = MEMORY[0x277D82BE0](selfCopy);
  v15 = MEMORY[0x277D82BE0](location[0]);
  v16 = MEMORY[0x277D82BE0](v20);
  v17 = MEMORY[0x26D66A460]();
  [(SUSettingsStatefulUIManager *)selfCopy beginUpdateOperationWithDescriptor:location[0] operationDelegate:v19 delegateCallbackQueue:v18 operationTypeBlock:v17];
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

- (void)installUpdate:(id)update completionHandler:(id)handler operationDelegate:(id)delegate delegateCallbackQueue:(id)queue
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  v20 = 0;
  objc_storeStrong(&v20, handler);
  v19 = 0;
  objc_storeStrong(&v19, delegate);
  v18 = 0;
  objc_storeStrong(&v18, queue);
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __103__SUSettingsStatefulUIManager_installUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke;
  v13 = &unk_279CB9528;
  v14 = MEMORY[0x277D82BE0](selfCopy);
  v15 = MEMORY[0x277D82BE0](location[0]);
  v16 = MEMORY[0x277D82BE0](v20);
  v17 = MEMORY[0x26D66A460]();
  [(SUSettingsStatefulUIManager *)selfCopy beginUpdateOperationWithDescriptor:location[0] operationDelegate:v19 delegateCallbackQueue:v18 operationTypeBlock:v17];
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

- (void)scheduleUpdate:(id)update completionHandler:(id)handler operationDelegate:(id)delegate delegateCallbackQueue:(id)queue
{
  obj = handler;
  delegateCopy = delegate;
  queueCopy = queue;
  v184 = "[SUSettingsStatefulUIManager scheduleUpdate:completionHandler:operationDelegate:delegateCallbackQueue:]";
  v258 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  v252 = 0;
  objc_storeStrong(&v252, obj);
  v251 = 0;
  objc_storeStrong(&v251, delegateCopy);
  v250 = 0;
  objc_storeStrong(&v250, queueCopy);
  currentDownload = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
  MEMORY[0x277D82BD8](currentDownload);
  if (currentDownload)
  {
    v139 = location[0];
    currentDownload2 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    descriptor = [(SUDownload *)currentDownload2 descriptor];
    v142 = [v139 isEqualToDescriptor:?];
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload2);
    if (v142)
    {
      v91 = [(SUSettingsStatefulUIManager *)selfCopy log];
      oslog = [(SUCoreLog *)v91 oslog];
      MEMORY[0x277D82BD8](v91);
      v211 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v85 = oslog;
        *v86 = v211;
        v87 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
        v88 = MEMORY[0x277D82BE0](v87);
        v210 = v88;
        currentState = [(SUSettingsStatefulUIManager *)selfCopy currentState];
        delegate = [(SUSettingsStatefulUIManager *)selfCopy delegate];
        v208 = 0;
        v206 = 0;
        if (delegate)
        {
          delegate2 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
        delegate3 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
        scanError = [(SUSettingsStatefulUIManager *)selfCopy scanError];
        preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
        alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
        currentDownload3 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        v204 = 0;
        v202 = 0;
        v200 = 0;
        if (currentDownload3)
        {
          currentDownload4 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
          v75 = 1;
          v204 = 1;
          descriptor2 = [(SUDownload *)currentDownload4 descriptor];
          v202 = 1;
          humanReadableUpdateName = [(SUDescriptor *)descriptor2 humanReadableUpdateName];
          v200 = 1;
          v76 = humanReadableUpdateName;
        }

        else
        {
          v76 = @"(null)";
        }

        v62 = v76;
        currentDownload5 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        performThirdPartyScan = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
        v69 = "NO";
        v27 = "YES";
        v70 = "YES";
        if (!performThirdPartyScan)
        {
          v27 = "NO";
        }

        v64 = v27;
        isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
        v29 = v70;
        if (!isTargetedUpdateScheduledForAutoInstall)
        {
          v29 = v69;
        }

        v65 = v29;
        hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
        v31 = v70;
        if (!hidingPreferredDescriptor)
        {
          v31 = v69;
        }

        v66 = v31;
        humanReadableUpdateName2 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
        v68 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
        v199 = v68;
        hidingAlternateDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
        v33 = v70;
        if (!hidingAlternateDescriptor)
        {
          v33 = v69;
        }

        v71 = v33;
        humanReadableUpdateName3 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
        v73 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
        v198 = v73;
        enrolledBetaProgram = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
        v196 = 0;
        if (enrolledBetaProgram)
        {
          enrolledBetaProgram2 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
          v196 = 1;
          programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
        }

        else
        {
          programID = 0;
        }

        v52 = programID;
        betaPrograms = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
        v53 = [(NSArray *)betaPrograms count];
        currentFullScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
        currentRefreshScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
        currentUpdateOperation = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
        auxiliaryOperations = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
        v34 = [(NSMutableSet *)auxiliaryOperations count];
        v54 = &v37;
        v55 = v255;
        __os_log_helper_16_2_23_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66(v255, v184, v88, currentState, v77, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v62, currentDownload5, v64, v65, v66, v68, v71, v73, programID, v53, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, v34, location[0]);
        _os_log_impl(&dword_26AC94000, v85, v86[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nStarting to schedule (Install Tonight) the update: %{public}@", v55, 0xE8u);
        MEMORY[0x277D82BD8](auxiliaryOperations);
        MEMORY[0x277D82BD8](currentUpdateOperation);
        MEMORY[0x277D82BD8](currentRefreshScanOperation);
        MEMORY[0x277D82BD8](currentFullScanOperation);
        MEMORY[0x277D82BD8](betaPrograms);
        if (v196)
        {
          MEMORY[0x277D82BD8](enrolledBetaProgram2);
        }

        MEMORY[0x277D82BD8](enrolledBetaProgram);
        MEMORY[0x277D82BD8](humanReadableUpdateName3);
        MEMORY[0x277D82BD8](humanReadableUpdateName2);
        MEMORY[0x277D82BD8](currentDownload5);
        if (v200)
        {
          MEMORY[0x277D82BD8](humanReadableUpdateName);
        }

        if (v202)
        {
          MEMORY[0x277D82BD8](descriptor2);
        }

        if (v204)
        {
          MEMORY[0x277D82BD8](currentDownload4);
        }

        MEMORY[0x277D82BD8](currentDownload3);
        MEMORY[0x277D82BD8](alternateStatefulDescriptor);
        MEMORY[0x277D82BD8](preferredStatefulDescriptor);
        MEMORY[0x277D82BD8](scanError);
        MEMORY[0x277D82BD8](delegate3);
        if (v206)
        {
          MEMORY[0x277D82BD8](v207);
        }

        if (v208)
        {
          MEMORY[0x277D82BD8](delegate2);
        }

        MEMORY[0x277D82BD8](delegate);
        MEMORY[0x277D82BD8](v87);
        v51 = 0;
        objc_storeStrong(&v198, 0);
        objc_storeStrong(&v199, v51);
        objc_storeStrong(&v210, v51);
      }

      objc_storeStrong(&oslog, 0);
      v39 = [SUSettingsUpdateOperation alloc];
      targetedUpdateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy targetedUpdateStatefulDescriptor];
      descriptor3 = [targetedUpdateStatefulDescriptor descriptor];
      suClient = selfCopy->_suClient;
      v36 = [SUSettingsUpdateOperation initWithDescriptor:v39 usingSUManagerClient:"initWithDescriptor:usingSUManagerClient:delegate:" delegate:?];
      v49 = &v195;
      v195 = v36;
      MEMORY[0x277D82BD8](descriptor3);
      MEMORY[0x277D82BD8](targetedUpdateStatefulDescriptor);
      [(SUSettingsUpdateOperation *)v195 setDelegateCallbackQueue:v250];
      [(SUSettingsUpdateOperation *)v195 setCompletionQueue:selfCopy->_workQueue];
      [(NSMutableSet *)selfCopy->_auxiliaryOperations addObject:v195];
      v43 = v195;
      descriptor4 = [location[0] descriptor];
      createUpdateOperationOptions = [(SUSettingsStatefulUIManager *)selfCopy createUpdateOperationOptions];
      v42 = &v189;
      v189 = MEMORY[0x277D85DD0];
      v190 = -1073741824;
      v191 = 0;
      v192 = __104__SUSettingsStatefulUIManager_scheduleUpdate_completionHandler_operationDelegate_delegateCallbackQueue___block_invoke;
      v193 = &unk_279CB9640;
      v48 = v194;
      v194[0] = MEMORY[0x277D82BE0](selfCopy);
      v47 = (v42 + 6);
      v194[2] = MEMORY[0x277D82BE0](v252);
      v46 = (v42 + 5);
      v194[1] = MEMORY[0x277D82BE0](v195);
      [(SUSettingsUpdateOperation *)v43 scheduleUpdate:descriptor4 forInstallationTonightWithOptions:createUpdateOperationOptions completionHandler:v42];
      MEMORY[0x277D82BD8](createUpdateOperationOptions);
      MEMORY[0x277D82BD8](descriptor4);
      v50 = 0;
      objc_storeStrong(v46, 0);
      objc_storeStrong(v47, v50);
      objc_storeStrong(v48, v50);
      objc_storeStrong(v49, v50);
      v232 = 0;
    }

    else
    {
      v138 = [(SUSettingsStatefulUIManager *)selfCopy log];
      oslog2 = [(SUCoreLog *)v138 oslog];
      MEMORY[0x277D82BD8](v138);
      v230 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
      {
        v132 = oslog2;
        *v133 = v230;
        v134 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
        v135 = MEMORY[0x277D82BE0](v134);
        v229 = v135;
        currentState2 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
        delegate4 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
        v227 = 0;
        v225 = 0;
        if (delegate4)
        {
          delegate5 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
        delegate6 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
        scanError2 = [(SUSettingsStatefulUIManager *)selfCopy scanError];
        preferredStatefulDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
        alternateStatefulDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
        currentDownload6 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        v223 = 0;
        v221 = 0;
        v219 = 0;
        if (currentDownload6)
        {
          currentDownload7 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
          v122 = 1;
          v223 = 1;
          descriptor5 = [(SUDownload *)currentDownload7 descriptor];
          v221 = 1;
          humanReadableUpdateName4 = [(SUDescriptor *)descriptor5 humanReadableUpdateName];
          v219 = 1;
          v123 = humanReadableUpdateName4;
        }

        else
        {
          v123 = @"(null)";
        }

        v109 = v123;
        currentDownload8 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        performThirdPartyScan2 = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
        v116 = "NO";
        v18 = "YES";
        v117 = "YES";
        if (!performThirdPartyScan2)
        {
          v18 = "NO";
        }

        v111 = v18;
        isTargetedUpdateScheduledForAutoInstall2 = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
        v20 = v117;
        if (!isTargetedUpdateScheduledForAutoInstall2)
        {
          v20 = v116;
        }

        v112 = v20;
        hidingPreferredDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
        v22 = v117;
        if (!hidingPreferredDescriptor2)
        {
          v22 = v116;
        }

        v113 = v22;
        humanReadableUpdateName5 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
        v115 = MEMORY[0x277D82BE0](humanReadableUpdateName5);
        v218 = v115;
        hidingAlternateDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
        v24 = v117;
        if (!hidingAlternateDescriptor2)
        {
          v24 = v116;
        }

        v118 = v24;
        humanReadableUpdateName6 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
        v120 = MEMORY[0x277D82BE0](humanReadableUpdateName6);
        v217 = v120;
        enrolledBetaProgram3 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
        v215 = 0;
        if (enrolledBetaProgram3)
        {
          enrolledBetaProgram4 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
          v215 = 1;
          programID2 = [(SDBetaProgram *)enrolledBetaProgram4 programID];
        }

        else
        {
          programID2 = 0;
        }

        v93 = programID2;
        betaPrograms2 = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
        v94 = [(NSArray *)betaPrograms2 count];
        currentFullScanOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
        currentRefreshScanOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
        currentUpdateOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
        auxiliaryOperations2 = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
        v95 = [(NSMutableSet *)auxiliaryOperations2 count];
        currentDownload9 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        descriptor6 = [(SUDownload *)currentDownload9 descriptor];
        humanReadableUpdateName7 = [(SUDescriptor *)descriptor6 humanReadableUpdateName];
        v96 = MEMORY[0x277D82BE0](humanReadableUpdateName7);
        v214 = v96;
        humanReadableUpdateName8 = [location[0] humanReadableUpdateName];
        v213 = MEMORY[0x277D82BE0](humanReadableUpdateName8);
        v97 = &v37;
        v98 = v256;
        __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_66(v256, v184, v135, currentState2, v124, delegate6, scanError2, preferredStatefulDescriptor2, alternateStatefulDescriptor2, v109, currentDownload8, v111, v112, v113, v115, v118, v120, programID2, v94, currentFullScanOperation2, currentRefreshScanOperation2, currentUpdateOperation2, v95, v96, v213);
        _os_log_impl(&dword_26AC94000, v132, v133[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCan not schedule the update because the current download points to a different descriptor.\n\tCurrent Download: %{public}@\n\tUpdate: %{public}@", v98, 0xF2u);
        MEMORY[0x277D82BD8](humanReadableUpdateName8);
        MEMORY[0x277D82BD8](humanReadableUpdateName7);
        MEMORY[0x277D82BD8](descriptor6);
        MEMORY[0x277D82BD8](currentDownload9);
        MEMORY[0x277D82BD8](auxiliaryOperations2);
        MEMORY[0x277D82BD8](currentUpdateOperation2);
        MEMORY[0x277D82BD8](currentRefreshScanOperation2);
        MEMORY[0x277D82BD8](currentFullScanOperation2);
        MEMORY[0x277D82BD8](betaPrograms2);
        if (v215)
        {
          MEMORY[0x277D82BD8](enrolledBetaProgram4);
        }

        MEMORY[0x277D82BD8](enrolledBetaProgram3);
        MEMORY[0x277D82BD8](humanReadableUpdateName6);
        MEMORY[0x277D82BD8](humanReadableUpdateName5);
        MEMORY[0x277D82BD8](currentDownload8);
        if (v219)
        {
          MEMORY[0x277D82BD8](humanReadableUpdateName4);
        }

        if (v221)
        {
          MEMORY[0x277D82BD8](descriptor5);
        }

        if (v223)
        {
          MEMORY[0x277D82BD8](currentDownload7);
        }

        MEMORY[0x277D82BD8](currentDownload6);
        MEMORY[0x277D82BD8](alternateStatefulDescriptor2);
        MEMORY[0x277D82BD8](preferredStatefulDescriptor2);
        MEMORY[0x277D82BD8](scanError2);
        MEMORY[0x277D82BD8](delegate6);
        if (v225)
        {
          MEMORY[0x277D82BD8](v226);
        }

        if (v227)
        {
          MEMORY[0x277D82BD8](delegate5);
        }

        MEMORY[0x277D82BD8](delegate4);
        MEMORY[0x277D82BD8](v134);
        v92 = 0;
        objc_storeStrong(&v213, 0);
        objc_storeStrong(&v214, v92);
        objc_storeStrong(&v217, v92);
        objc_storeStrong(&v218, v92);
        objc_storeStrong(&v229, v92);
      }

      objc_storeStrong(&oslog2, 0);
      v232 = 1;
    }
  }

  else
  {
    v183 = [(SUSettingsStatefulUIManager *)selfCopy log];
    oslog = [(SUCoreLog *)v183 oslog];
    MEMORY[0x277D82BD8](v183);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      *v178 = type;
      v179 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
      v180 = MEMORY[0x277D82BE0](v179);
      v247 = v180;
      currentState3 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
      delegate7 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      v245 = 0;
      v243 = 0;
      if (delegate7)
      {
        delegate8 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
      delegate9 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      scanError3 = [(SUSettingsStatefulUIManager *)selfCopy scanError];
      preferredStatefulDescriptor3 = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
      alternateStatefulDescriptor3 = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
      currentDownload10 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v241 = 0;
      v239 = 0;
      v237 = 0;
      if (currentDownload10)
      {
        currentDownload11 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        v167 = 1;
        v241 = 1;
        descriptor7 = [(SUDownload *)currentDownload11 descriptor];
        v239 = 1;
        humanReadableUpdateName9 = [(SUDescriptor *)descriptor7 humanReadableUpdateName];
        v237 = 1;
        v168 = humanReadableUpdateName9;
      }

      else
      {
        v168 = @"(null)";
      }

      v154 = v168;
      currentDownload12 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      performThirdPartyScan3 = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
      v161 = "NO";
      v8 = "YES";
      v162 = "YES";
      if (!performThirdPartyScan3)
      {
        v8 = "NO";
      }

      v156 = v8;
      isTargetedUpdateScheduledForAutoInstall3 = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
      v10 = v162;
      if (!isTargetedUpdateScheduledForAutoInstall3)
      {
        v10 = v161;
      }

      v157 = v10;
      hidingPreferredDescriptor3 = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
      v12 = v162;
      if (!hidingPreferredDescriptor3)
      {
        v12 = v161;
      }

      v158 = v12;
      humanReadableUpdateName10 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v160 = MEMORY[0x277D82BE0](humanReadableUpdateName10);
      v236 = v160;
      hidingAlternateDescriptor3 = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
      v14 = v162;
      if (!hidingAlternateDescriptor3)
      {
        v14 = v161;
      }

      v163 = v14;
      humanReadableUpdateName11 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v165 = MEMORY[0x277D82BE0](humanReadableUpdateName11);
      v235 = v165;
      enrolledBetaProgram5 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v233 = 0;
      if (enrolledBetaProgram5)
      {
        enrolledBetaProgram6 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
        v233 = 1;
        programID3 = [(SDBetaProgram *)enrolledBetaProgram6 programID];
      }

      else
      {
        programID3 = 0;
      }

      v144 = programID3;
      betaPrograms3 = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
      v145 = [(NSArray *)betaPrograms3 count];
      currentFullScanOperation3 = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
      currentRefreshScanOperation3 = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
      currentUpdateOperation3 = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
      auxiliaryOperations3 = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
      v15 = [(NSMutableSet *)auxiliaryOperations3 count];
      v146 = &v37;
      buf = v257;
      __os_log_helper_16_2_23_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66(v257, v184, v180, currentState3, v169, delegate9, scanError3, preferredStatefulDescriptor3, alternateStatefulDescriptor3, v154, currentDownload12, v156, v157, v158, v160, v163, v165, programID3, v145, currentFullScanOperation3, currentRefreshScanOperation3, currentUpdateOperation3, v15, location[0]);
      _os_log_impl(&dword_26AC94000, log, v178[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCan't schedule update as the current download is nil (and thus no update has been downloaded). You should use downloadAndScheduleUpdate: to do both operations. Update: %{public}@", buf, 0xE8u);
      MEMORY[0x277D82BD8](auxiliaryOperations3);
      MEMORY[0x277D82BD8](currentUpdateOperation3);
      MEMORY[0x277D82BD8](currentRefreshScanOperation3);
      MEMORY[0x277D82BD8](currentFullScanOperation3);
      MEMORY[0x277D82BD8](betaPrograms3);
      if (v233)
      {
        MEMORY[0x277D82BD8](enrolledBetaProgram6);
      }

      MEMORY[0x277D82BD8](enrolledBetaProgram5);
      MEMORY[0x277D82BD8](humanReadableUpdateName11);
      MEMORY[0x277D82BD8](humanReadableUpdateName10);
      MEMORY[0x277D82BD8](currentDownload12);
      if (v237)
      {
        MEMORY[0x277D82BD8](humanReadableUpdateName9);
      }

      if (v239)
      {
        MEMORY[0x277D82BD8](descriptor7);
      }

      if (v241)
      {
        MEMORY[0x277D82BD8](currentDownload11);
      }

      MEMORY[0x277D82BD8](currentDownload10);
      MEMORY[0x277D82BD8](alternateStatefulDescriptor3);
      MEMORY[0x277D82BD8](preferredStatefulDescriptor3);
      MEMORY[0x277D82BD8](scanError3);
      MEMORY[0x277D82BD8](delegate9);
      if (v243)
      {
        MEMORY[0x277D82BD8](v244);
      }

      if (v245)
      {
        MEMORY[0x277D82BD8](delegate8);
      }

      MEMORY[0x277D82BD8](delegate7);
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
  selfCopy = self;
  oslog[1] = a2;
  currentDownload = [(SUSettingsStatefulUIManager *)self currentDownload];
  MEMORY[0x277D82BD8](currentDownload);
  if (currentDownload)
  {
    v13 = [SUSettingsUpdateOperation alloc];
    targetedUpdateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy targetedUpdateStatefulDescriptor];
    descriptor = [targetedUpdateStatefulDescriptor descriptor];
    suClient = selfCopy->_suClient;
    v22 = 0;
    v21 = &v73;
    v73 = [SUSettingsUpdateOperation initWithDescriptor:v13 usingSUManagerClient:"initWithDescriptor:usingSUManagerClient:delegate:" delegate:?];
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](targetedUpdateStatefulDescriptor);
    [(SUSettingsUpdateOperation *)v73 setDelegateCallbackQueue:selfCopy->_workQueue];
    [(SUSettingsUpdateOperation *)v73 setCompletionQueue:selfCopy->_workQueue];
    [(NSMutableSet *)selfCopy->_auxiliaryOperations addObject:v73];
    v17 = v73;
    currentDownload2 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    v16 = &v66;
    v66 = MEMORY[0x277D85DD0];
    v67 = -1073741824;
    v68 = 0;
    v69 = __73__SUSettingsStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus__block_invoke;
    v70 = &unk_279CB9668;
    v20 = &v71;
    v71 = MEMORY[0x277D82BE0](selfCopy);
    v19 = &v72;
    v72 = MEMORY[0x277D82BE0](v73);
    [(SUSettingsUpdateOperation *)v17 promoteDownloadToUserInitiated:currentDownload2 completionHandler:&v66];
    MEMORY[0x277D82BD8](currentDownload2);
    objc_storeStrong(&v72, 0);
    objc_storeStrong(&v71, 0);
    objc_storeStrong(&v73, 0);
  }

  else
  {
    v63 = [(SUSettingsStatefulUIManager *)selfCopy log];
    oslog[0] = [(SUCoreLog *)v63 oslog];
    MEMORY[0x277D82BD8](v63);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      log = oslog[0];
      *v58 = type;
      v59 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
      v60 = MEMORY[0x277D82BE0](v59);
      v88 = v60;
      currentState = [(SUSettingsStatefulUIManager *)selfCopy currentState];
      delegate = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      v86 = 0;
      v84 = 0;
      if (delegate)
      {
        delegate2 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
      delegate3 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      scanError = [(SUSettingsStatefulUIManager *)selfCopy scanError];
      preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
      alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
      currentDownload3 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v82 = 0;
      v80 = 0;
      v78 = 0;
      if (currentDownload3)
      {
        currentDownload4 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        v47 = 1;
        v82 = 1;
        descriptor2 = [(SUDownload *)currentDownload4 descriptor];
        v80 = 1;
        humanReadableUpdateName = [(SUDescriptor *)descriptor2 humanReadableUpdateName];
        v78 = 1;
        v48 = humanReadableUpdateName;
      }

      else
      {
        v48 = @"(null)";
      }

      v34 = v48;
      currentDownload5 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      performThirdPartyScan = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
      v41 = "NO";
      v4 = "YES";
      v42 = "YES";
      if (!performThirdPartyScan)
      {
        v4 = "NO";
      }

      v36 = v4;
      isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
      v6 = v42;
      if (!isTargetedUpdateScheduledForAutoInstall)
      {
        v6 = v41;
      }

      v37 = v6;
      hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
      v8 = v42;
      if (!hidingPreferredDescriptor)
      {
        v8 = v41;
      }

      v38 = v8;
      humanReadableUpdateName2 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v40 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
      v77 = v40;
      hidingAlternateDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
      v10 = v42;
      if (!hidingAlternateDescriptor)
      {
        v10 = v41;
      }

      v43 = v10;
      humanReadableUpdateName3 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v45 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
      location = v45;
      enrolledBetaProgram = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v74 = 0;
      if (enrolledBetaProgram)
      {
        enrolledBetaProgram2 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
        v74 = 1;
        programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
      }

      else
      {
        programID = 0;
      }

      v24 = programID;
      betaPrograms = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
      v25 = [(NSArray *)betaPrograms count];
      currentFullScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
      currentRefreshScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
      currentUpdateOperation = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
      auxiliaryOperations = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
      v26 = &v12;
      buf = v92;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v92, v64, v60, currentState, v49, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v34, currentDownload5, v36, v37, v38, v40, v43, v45, programID, v25, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, [(NSMutableSet *)auxiliaryOperations count]);
      _os_log_impl(&dword_26AC94000, log, v58[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCan not promote the initial status of a nil targeted update.", buf, 0xDEu);
      MEMORY[0x277D82BD8](auxiliaryOperations);
      MEMORY[0x277D82BD8](currentUpdateOperation);
      MEMORY[0x277D82BD8](currentRefreshScanOperation);
      MEMORY[0x277D82BD8](currentFullScanOperation);
      MEMORY[0x277D82BD8](betaPrograms);
      if (v74)
      {
        MEMORY[0x277D82BD8](enrolledBetaProgram2);
      }

      MEMORY[0x277D82BD8](enrolledBetaProgram);
      MEMORY[0x277D82BD8](humanReadableUpdateName3);
      MEMORY[0x277D82BD8](humanReadableUpdateName2);
      MEMORY[0x277D82BD8](currentDownload5);
      if (v78)
      {
        MEMORY[0x277D82BD8](humanReadableUpdateName);
      }

      if (v80)
      {
        MEMORY[0x277D82BD8](descriptor2);
      }

      if (v82)
      {
        MEMORY[0x277D82BD8](currentDownload4);
      }

      MEMORY[0x277D82BD8](currentDownload3);
      MEMORY[0x277D82BD8](alternateStatefulDescriptor);
      MEMORY[0x277D82BD8](preferredStatefulDescriptor);
      MEMORY[0x277D82BD8](scanError);
      MEMORY[0x277D82BD8](delegate3);
      if (v84)
      {
        MEMORY[0x277D82BD8](v85);
      }

      if (v86)
      {
        MEMORY[0x277D82BD8](delegate2);
      }

      MEMORY[0x277D82BD8](delegate);
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
  selfCopy = self;
  oslog[1] = a2;
  currentDownload = [(SUSettingsStatefulUIManager *)self currentDownload];
  MEMORY[0x277D82BD8](currentDownload);
  if (currentDownload)
  {
    currentAutoInstallOperation = [(SUSettingsStatefulUIManager *)selfCopy currentAutoInstallOperation];
    MEMORY[0x277D82BD8](currentAutoInstallOperation);
    if (currentAutoInstallOperation)
    {
      v22 = [SUSettingsUpdateOperation alloc];
      targetedUpdateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy targetedUpdateStatefulDescriptor];
      descriptor = [targetedUpdateStatefulDescriptor descriptor];
      suClient = selfCopy->_suClient;
      v31 = 0;
      v30 = &v124;
      v124 = [SUSettingsUpdateOperation initWithDescriptor:v22 usingSUManagerClient:"initWithDescriptor:usingSUManagerClient:delegate:" delegate:?];
      MEMORY[0x277D82BD8](descriptor);
      MEMORY[0x277D82BD8](targetedUpdateStatefulDescriptor);
      [(SUSettingsUpdateOperation *)v124 setDelegateCallbackQueue:selfCopy->_workQueue];
      [(SUSettingsUpdateOperation *)v124 setCompletionQueue:selfCopy->_workQueue];
      [(NSMutableSet *)selfCopy->_auxiliaryOperations addObject:v124];
      v26 = v124;
      currentAutoInstallOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentAutoInstallOperation];
      v25 = &v117;
      v117 = MEMORY[0x277D85DD0];
      v118 = -1073741824;
      v119 = 0;
      v120 = __76__SUSettingsStatefulUIManager_unscheduleTargetedUpdateAutomaticInstallation__block_invoke;
      v121 = &unk_279CB9690;
      v29 = &v122;
      v122 = MEMORY[0x277D82BE0](selfCopy);
      v28 = &v123;
      v123 = MEMORY[0x277D82BE0](v124);
      [(SUSettingsUpdateOperation *)v26 unscheduleAutomaticInstallation:currentAutoInstallOperation2 completionHandler:&v117];
      MEMORY[0x277D82BD8](currentAutoInstallOperation2);
      objc_storeStrong(&v123, 0);
      objc_storeStrong(&v122, 0);
      objc_storeStrong(&v124, 0);
    }

    else
    {
      v72 = [(SUSettingsStatefulUIManager *)selfCopy log];
      oslog = [(SUCoreLog *)v72 oslog];
      MEMORY[0x277D82BD8](v72);
      v140 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v66 = oslog;
        *v67 = v140;
        v68 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
        v69 = MEMORY[0x277D82BE0](v68);
        v139 = v69;
        currentState = [(SUSettingsStatefulUIManager *)selfCopy currentState];
        delegate = [(SUSettingsStatefulUIManager *)selfCopy delegate];
        v137 = 0;
        v135 = 0;
        if (delegate)
        {
          delegate2 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
        delegate3 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
        scanError = [(SUSettingsStatefulUIManager *)selfCopy scanError];
        preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
        alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
        currentDownload2 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        v133 = 0;
        v131 = 0;
        v129 = 0;
        if (currentDownload2)
        {
          currentDownload3 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
          v56 = 1;
          v133 = 1;
          descriptor2 = [(SUDownload *)currentDownload3 descriptor];
          v131 = 1;
          humanReadableUpdateName = [(SUDescriptor *)descriptor2 humanReadableUpdateName];
          v129 = 1;
          v57 = humanReadableUpdateName;
        }

        else
        {
          v57 = @"(null)";
        }

        v43 = v57;
        currentDownload4 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        performThirdPartyScan = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
        v50 = "NO";
        v13 = "YES";
        v51 = "YES";
        if (!performThirdPartyScan)
        {
          v13 = "NO";
        }

        v45 = v13;
        isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
        v15 = v51;
        if (!isTargetedUpdateScheduledForAutoInstall)
        {
          v15 = v50;
        }

        v46 = v15;
        hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
        v17 = v51;
        if (!hidingPreferredDescriptor)
        {
          v17 = v50;
        }

        v47 = v17;
        humanReadableUpdateName2 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
        v49 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
        v128 = v49;
        hidingAlternateDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
        v19 = v51;
        if (!hidingAlternateDescriptor)
        {
          v19 = v50;
        }

        v52 = v19;
        humanReadableUpdateName3 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
        v54 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
        v127 = v54;
        enrolledBetaProgram = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
        v125 = 0;
        if (enrolledBetaProgram)
        {
          enrolledBetaProgram2 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
          v125 = 1;
          programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
        }

        else
        {
          programID = 0;
        }

        v33 = programID;
        betaPrograms = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
        v34 = [(NSArray *)betaPrograms count];
        currentFullScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
        currentRefreshScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
        currentUpdateOperation = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
        auxiliaryOperations = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
        v35 = &v21;
        v36 = v160;
        __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v160, v115, v69, currentState, v58, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v43, currentDownload4, v45, v46, v47, v49, v52, v54, programID, v34, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, [(NSMutableSet *)auxiliaryOperations count]);
        _os_log_impl(&dword_26AC94000, v66, v67[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCan not unschedule an update when the auto-install operation is nil.", v36, 0xDEu);
        MEMORY[0x277D82BD8](auxiliaryOperations);
        MEMORY[0x277D82BD8](currentUpdateOperation);
        MEMORY[0x277D82BD8](currentRefreshScanOperation);
        MEMORY[0x277D82BD8](currentFullScanOperation);
        MEMORY[0x277D82BD8](betaPrograms);
        if (v125)
        {
          MEMORY[0x277D82BD8](enrolledBetaProgram2);
        }

        MEMORY[0x277D82BD8](enrolledBetaProgram);
        MEMORY[0x277D82BD8](humanReadableUpdateName3);
        MEMORY[0x277D82BD8](humanReadableUpdateName2);
        MEMORY[0x277D82BD8](currentDownload4);
        if (v129)
        {
          MEMORY[0x277D82BD8](humanReadableUpdateName);
        }

        if (v131)
        {
          MEMORY[0x277D82BD8](descriptor2);
        }

        if (v133)
        {
          MEMORY[0x277D82BD8](currentDownload3);
        }

        MEMORY[0x277D82BD8](currentDownload2);
        MEMORY[0x277D82BD8](alternateStatefulDescriptor);
        MEMORY[0x277D82BD8](preferredStatefulDescriptor);
        MEMORY[0x277D82BD8](scanError);
        MEMORY[0x277D82BD8](delegate3);
        if (v135)
        {
          MEMORY[0x277D82BD8](v136);
        }

        if (v137)
        {
          MEMORY[0x277D82BD8](delegate2);
        }

        MEMORY[0x277D82BD8](delegate);
        MEMORY[0x277D82BD8](v68);
        v32 = 0;
        objc_storeStrong(&v127, 0);
        objc_storeStrong(&v128, v32);
        objc_storeStrong(&v139, v32);
      }

      objc_storeStrong(&oslog, 0);
    }
  }

  else
  {
    v114 = [(SUSettingsStatefulUIManager *)selfCopy log];
    oslog[0] = [(SUCoreLog *)v114 oslog];
    MEMORY[0x277D82BD8](v114);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      log = oslog[0];
      *v109 = type;
      v110 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
      v111 = MEMORY[0x277D82BE0](v110);
      v156 = v111;
      currentState2 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
      delegate4 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      v154 = 0;
      v152 = 0;
      if (delegate4)
      {
        delegate5 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
      delegate6 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      scanError2 = [(SUSettingsStatefulUIManager *)selfCopy scanError];
      preferredStatefulDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
      alternateStatefulDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
      currentDownload5 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v150 = 0;
      v148 = 0;
      v146 = 0;
      if (currentDownload5)
      {
        currentDownload6 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        v98 = 1;
        v150 = 1;
        descriptor3 = [(SUDownload *)currentDownload6 descriptor];
        v148 = 1;
        humanReadableUpdateName4 = [(SUDescriptor *)descriptor3 humanReadableUpdateName];
        v146 = 1;
        v99 = humanReadableUpdateName4;
      }

      else
      {
        v99 = @"(null)";
      }

      v85 = v99;
      currentDownload7 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      performThirdPartyScan2 = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
      v92 = "NO";
      v4 = "YES";
      v93 = "YES";
      if (!performThirdPartyScan2)
      {
        v4 = "NO";
      }

      v87 = v4;
      isTargetedUpdateScheduledForAutoInstall2 = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
      v6 = v93;
      if (!isTargetedUpdateScheduledForAutoInstall2)
      {
        v6 = v92;
      }

      v88 = v6;
      hidingPreferredDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
      v8 = v93;
      if (!hidingPreferredDescriptor2)
      {
        v8 = v92;
      }

      v89 = v8;
      humanReadableUpdateName5 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v91 = MEMORY[0x277D82BE0](humanReadableUpdateName5);
      v145 = v91;
      hidingAlternateDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
      v10 = v93;
      if (!hidingAlternateDescriptor2)
      {
        v10 = v92;
      }

      v94 = v10;
      humanReadableUpdateName6 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v96 = MEMORY[0x277D82BE0](humanReadableUpdateName6);
      location = v96;
      enrolledBetaProgram3 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v142 = 0;
      if (enrolledBetaProgram3)
      {
        enrolledBetaProgram4 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
        v142 = 1;
        programID2 = [(SDBetaProgram *)enrolledBetaProgram4 programID];
      }

      else
      {
        programID2 = 0;
      }

      v75 = programID2;
      betaPrograms2 = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
      v76 = [(NSArray *)betaPrograms2 count];
      currentFullScanOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
      currentRefreshScanOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
      currentUpdateOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
      auxiliaryOperations2 = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
      v77 = &v21;
      buf = v161;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v161, v115, v111, currentState2, v100, delegate6, scanError2, preferredStatefulDescriptor2, alternateStatefulDescriptor2, v85, currentDownload7, v87, v88, v89, v91, v94, v96, programID2, v76, currentFullScanOperation2, currentRefreshScanOperation2, currentUpdateOperation2, [(NSMutableSet *)auxiliaryOperations2 count]);
      _os_log_impl(&dword_26AC94000, log, v109[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCan not unschedule an update without having the current download object.", buf, 0xDEu);
      MEMORY[0x277D82BD8](auxiliaryOperations2);
      MEMORY[0x277D82BD8](currentUpdateOperation2);
      MEMORY[0x277D82BD8](currentRefreshScanOperation2);
      MEMORY[0x277D82BD8](currentFullScanOperation2);
      MEMORY[0x277D82BD8](betaPrograms2);
      if (v142)
      {
        MEMORY[0x277D82BD8](enrolledBetaProgram4);
      }

      MEMORY[0x277D82BD8](enrolledBetaProgram3);
      MEMORY[0x277D82BD8](humanReadableUpdateName6);
      MEMORY[0x277D82BD8](humanReadableUpdateName5);
      MEMORY[0x277D82BD8](currentDownload7);
      if (v146)
      {
        MEMORY[0x277D82BD8](humanReadableUpdateName4);
      }

      if (v148)
      {
        MEMORY[0x277D82BD8](descriptor3);
      }

      if (v150)
      {
        MEMORY[0x277D82BD8](currentDownload6);
      }

      MEMORY[0x277D82BD8](currentDownload5);
      MEMORY[0x277D82BD8](alternateStatefulDescriptor2);
      MEMORY[0x277D82BD8](preferredStatefulDescriptor2);
      MEMORY[0x277D82BD8](scanError2);
      MEMORY[0x277D82BD8](delegate6);
      if (v152)
      {
        MEMORY[0x277D82BD8](v153);
      }

      if (v154)
      {
        MEMORY[0x277D82BD8](delegate5);
      }

      MEMORY[0x277D82BD8](delegate4);
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

- (void)enrollInBetaUpdatesProgram:(id)program withPurgeConfirmation:(id)confirmation completionHandler:(id)handler
{
  obj = confirmation;
  handlerCopy = handler;
  v331 = "[SUSettingsStatefulUIManager enrollInBetaUpdatesProgram:withPurgeConfirmation:completionHandler:]";
  v426[29] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, program);
  v420 = 0;
  objc_storeStrong(&v420, obj);
  v419 = 0;
  objc_storeStrong(&v419, handlerCopy);
  v328 = _os_feature_enabled_impl();
  if (v328)
  {
    currentState = [(SUSettingsStatefulUIManager *)selfCopy currentState];
    if (currentState > 1)
    {
      currentSeedingDevice = [(SUSettingsStatefulUIManager *)selfCopy currentSeedingDevice];
      v257 = currentSeedingDevice;
      MEMORY[0x277D82BD8](v257);
      if (v257)
      {
        betaPrograms = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
        v186 = betaPrograms;
        v382 = 0;
        v187 = 1;
        if (v186)
        {
          betaPrograms2 = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
          v383 = betaPrograms2;
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
          v182 = [(SUSettingsStatefulUIManager *)selfCopy log];
          v180 = v182;
          oslog = [v180 oslog];
          v381 = oslog;
          MEMORY[0x277D82BD8](v180);
          v380 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v381, OS_LOG_TYPE_DEFAULT))
          {
            v177 = v381;
            *v178 = v380;
            currentState2 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
            v176 = SUSettingsUIStateToString(currentState2);
            v173 = v176;
            v174 = MEMORY[0x277D82BE0](v173);
            v379 = v174;
            currentState3 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
            delegate = [(SUSettingsStatefulUIManager *)selfCopy delegate];
            v171 = delegate;
            v377 = 0;
            v375 = 0;
            if (v171)
            {
              delegate2 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
              v378 = delegate2;
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
            delegate3 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
            v163 = delegate3;
            scanError = [(SUSettingsStatefulUIManager *)selfCopy scanError];
            v161 = scanError;
            preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
            v159 = preferredStatefulDescriptor;
            alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
            v157 = alternateStatefulDescriptor;
            currentDownload = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
            v156 = currentDownload;
            v373 = 0;
            v371 = 0;
            v369 = 0;
            if (v156)
            {
              currentDownload2 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
              v374 = currentDownload2;
              v373 = 1;
              descriptor = [v374 descriptor];
              v372 = descriptor;
              v371 = 1;
              humanReadableUpdateName = [v372 humanReadableUpdateName];
              v370 = humanReadableUpdateName;
              v369 = 1;
              v152 = v370;
            }

            else
            {
              v152 = @"(null)";
            }

            v150 = v152;
            currentDownload3 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
            v148 = currentDownload3;
            performThirdPartyScan = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
            v13 = "YES";
            if (!performThirdPartyScan)
            {
              v13 = "NO";
            }

            v146 = v13;
            isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
            v14 = "YES";
            if (!isTargetedUpdateScheduledForAutoInstall)
            {
              v14 = "NO";
            }

            v144 = v14;
            hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
            v15 = "YES";
            if (!hidingPreferredDescriptor)
            {
              v15 = "NO";
            }

            v142 = v15;
            humanReadableUpdateName2 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
            v139 = humanReadableUpdateName2;
            v140 = MEMORY[0x277D82BE0](v139);
            v368 = v140;
            hidingAlternateDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
            v16 = "YES";
            if (!hidingAlternateDescriptor)
            {
              v16 = "NO";
            }

            v137 = v16;
            humanReadableUpdateName3 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
            v134 = humanReadableUpdateName3;
            v135 = MEMORY[0x277D82BE0](v134);
            v367 = v135;
            enrolledBetaProgram = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
            v133 = enrolledBetaProgram;
            v365 = 0;
            if (v133)
            {
              enrolledBetaProgram2 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
              v366 = enrolledBetaProgram2;
              v365 = 1;
              programID = [v366 programID];
              v130 = programID;
            }

            else
            {
              v130 = 0;
            }

            v128 = v130;
            betaPrograms3 = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
            v126 = betaPrograms3;
            v127 = [v126 count];
            currentFullScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
            v123 = currentFullScanOperation;
            currentRefreshScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
            v121 = currentRefreshScanOperation;
            currentUpdateOperation = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
            v119 = currentUpdateOperation;
            auxiliaryOperations = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
            v117 = auxiliaryOperations;
            v118 = [v117 count];
            programID2 = [location[0] programID];
            v114 = &v23;
            v115 = v424;
            __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v424, v331, v174, currentState3, v165, v163, v161, v159, v157, v150, v148, v146, v144, v142, v140, v137, v135, v130, v127, v123, v121, v119, v118, programID2, location[0]);
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
          [(SUSettingsStatefulUIManager *)selfCopy checkForAvailableUpdates];
          v418 = 1;
        }

        else
        {
          if (!location[0])
          {
            betaPrograms4 = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
            v111 = betaPrograms4;
            firstObject = [v111 firstObject];
            v17 = firstObject;
            v18 = location[0];
            location[0] = v17;
            MEMORY[0x277D82BD8](v18);
            MEMORY[0x277D82BD8](v111);
          }

          v110 = MEMORY[0x277D82BE0](selfCopy->_currentDownload);
          objc_sync_enter(v110);
          if (selfCopy->_currentDownload)
          {
            v101 = [(SUSettingsStatefulUIManager *)selfCopy log];
            v99 = v101;
            oslog2 = [v99 oslog];
            v356 = oslog2;
            MEMORY[0x277D82BD8](v99);
            v355 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v356, OS_LOG_TYPE_DEFAULT))
            {
              v96 = v356;
              *v97 = v355;
              currentState4 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
              v95 = SUSettingsUIStateToString(currentState4);
              v92 = v95;
              v93 = MEMORY[0x277D82BE0](v92);
              v354 = v93;
              currentState5 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
              v352 = 0;
              v350 = 0;
              delegate4 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
              v90 = delegate4;
              if (v90)
              {
                delegate5 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
                v353 = delegate5;
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
              delegate6 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
              v82 = delegate6;
              scanError2 = [(SUSettingsStatefulUIManager *)selfCopy scanError];
              v80 = scanError2;
              preferredStatefulDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
              v78 = preferredStatefulDescriptor2;
              alternateStatefulDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
              v76 = alternateStatefulDescriptor2;
              v348 = 0;
              v346 = 0;
              v344 = 0;
              currentDownload4 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
              v75 = currentDownload4;
              if (v75)
              {
                currentDownload5 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
                v349 = currentDownload5;
                v348 = 1;
                descriptor2 = [v349 descriptor];
                v347 = descriptor2;
                v346 = 1;
                humanReadableUpdateName4 = [v347 humanReadableUpdateName];
                v345 = humanReadableUpdateName4;
                v344 = 1;
                v71 = v345;
              }

              else
              {
                v71 = @"(null)";
              }

              v69 = v71;
              currentDownload6 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
              v67 = currentDownload6;
              performThirdPartyScan2 = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
              v19 = "YES";
              if (!performThirdPartyScan2)
              {
                v19 = "NO";
              }

              v65 = v19;
              isTargetedUpdateScheduledForAutoInstall2 = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
              v20 = "YES";
              if (!isTargetedUpdateScheduledForAutoInstall2)
              {
                v20 = "NO";
              }

              v63 = v20;
              hidingPreferredDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
              v21 = "YES";
              if (!hidingPreferredDescriptor2)
              {
                v21 = "NO";
              }

              v61 = v21;
              humanReadableUpdateName5 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
              v58 = humanReadableUpdateName5;
              v59 = MEMORY[0x277D82BE0](v58);
              v343 = v59;
              hidingAlternateDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
              v22 = "YES";
              if (!hidingAlternateDescriptor2)
              {
                v22 = "NO";
              }

              v56 = v22;
              humanReadableUpdateName6 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
              v53 = humanReadableUpdateName6;
              v54 = MEMORY[0x277D82BE0](v53);
              v342 = v54;
              v340 = 0;
              enrolledBetaProgram3 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
              v52 = enrolledBetaProgram3;
              if (v52)
              {
                enrolledBetaProgram4 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
                v341 = enrolledBetaProgram4;
                v340 = 1;
                programID3 = [v341 programID];
                v49 = programID3;
              }

              else
              {
                v49 = 0;
              }

              v47 = v49;
              betaPrograms5 = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
              v45 = betaPrograms5;
              v46 = [v45 count];
              currentFullScanOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
              v42 = currentFullScanOperation2;
              currentRefreshScanOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
              v40 = currentRefreshScanOperation2;
              currentUpdateOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
              v38 = currentUpdateOperation2;
              auxiliaryOperations2 = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
              v36 = auxiliaryOperations2;
              v37 = [v36 count];
              programID4 = [location[0] programID];
              v33 = &v23;
              v34 = v423;
              __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v423, v331, v93, currentState5, v84, v82, v80, v78, v76, v69, v67, v65, v63, v61, v59, v56, v54, v49, v46, v42, v40, v38, v37, programID4, location[0]);
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
            mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
            v30 = mEMORY[0x277D643F8];
            v31 = [v30 selectDelegateCallbackQueue:selfCopy->_delegateCallbackQueue];
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
            v337 = MEMORY[0x277D82BE0](selfCopy);
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
            mEMORY[0x277D643F8]2 = [MEMORY[0x277D643F8] sharedCore];
            v107 = mEMORY[0x277D643F8]2;
            v108 = [v107 selectDelegateCallbackQueue:selfCopy->_workQueue];
            queue = v108;
            block = &v357;
            v357 = MEMORY[0x277D85DD0];
            v358 = -1073741824;
            v359 = 0;
            v360 = __98__SUSettingsStatefulUIManager_enrollInBetaUpdatesProgram_withPurgeConfirmation_completionHandler___block_invoke;
            v361 = &unk_279CB96B8;
            v102 = &v362;
            v362 = MEMORY[0x277D82BE0](selfCopy);
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
        v256 = [(SUSettingsStatefulUIManager *)selfCopy log];
        v254 = v256;
        oslog3 = [v254 oslog];
        v400 = oslog3;
        MEMORY[0x277D82BD8](v254);
        v399 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v400, OS_LOG_TYPE_DEFAULT))
        {
          v251 = v400;
          *v252 = v399;
          currentState6 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
          v250 = SUSettingsUIStateToString(currentState6);
          v247 = v250;
          v248 = MEMORY[0x277D82BE0](v247);
          v398 = v248;
          currentState7 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
          delegate7 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
          v245 = delegate7;
          v396 = 0;
          v394 = 0;
          if (v245)
          {
            delegate8 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
            v397 = delegate8;
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
          delegate9 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
          v237 = delegate9;
          scanError3 = [(SUSettingsStatefulUIManager *)selfCopy scanError];
          v235 = scanError3;
          preferredStatefulDescriptor3 = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
          v233 = preferredStatefulDescriptor3;
          alternateStatefulDescriptor3 = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
          v231 = alternateStatefulDescriptor3;
          currentDownload7 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
          v230 = currentDownload7;
          v392 = 0;
          v390 = 0;
          v388 = 0;
          if (v230)
          {
            currentDownload8 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
            v393 = currentDownload8;
            v392 = 1;
            descriptor3 = [v393 descriptor];
            v391 = descriptor3;
            v390 = 1;
            humanReadableUpdateName7 = [v391 humanReadableUpdateName];
            v389 = humanReadableUpdateName7;
            v388 = 1;
            v226 = v389;
          }

          else
          {
            v226 = @"(null)";
          }

          v224 = v226;
          currentDownload9 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
          v222 = currentDownload9;
          performThirdPartyScan3 = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
          v9 = "YES";
          if (!performThirdPartyScan3)
          {
            v9 = "NO";
          }

          v220 = v9;
          isTargetedUpdateScheduledForAutoInstall3 = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
          v10 = "YES";
          if (!isTargetedUpdateScheduledForAutoInstall3)
          {
            v10 = "NO";
          }

          v218 = v10;
          hidingPreferredDescriptor3 = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
          v11 = "YES";
          if (!hidingPreferredDescriptor3)
          {
            v11 = "NO";
          }

          v216 = v11;
          humanReadableUpdateName8 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
          v213 = humanReadableUpdateName8;
          v214 = MEMORY[0x277D82BE0](v213);
          v387 = v214;
          hidingAlternateDescriptor3 = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
          v12 = "YES";
          if (!hidingAlternateDescriptor3)
          {
            v12 = "NO";
          }

          v211 = v12;
          humanReadableUpdateName9 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
          v208 = humanReadableUpdateName9;
          v209 = MEMORY[0x277D82BE0](v208);
          v386 = v209;
          enrolledBetaProgram5 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
          v207 = enrolledBetaProgram5;
          v384 = 0;
          if (v207)
          {
            enrolledBetaProgram6 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
            v385 = enrolledBetaProgram6;
            v384 = 1;
            programID5 = [v385 programID];
            v204 = programID5;
          }

          else
          {
            v204 = 0;
          }

          v202 = v204;
          betaPrograms6 = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
          v200 = betaPrograms6;
          v201 = [v200 count];
          currentFullScanOperation3 = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
          v197 = currentFullScanOperation3;
          currentRefreshScanOperation3 = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
          v195 = currentRefreshScanOperation3;
          currentUpdateOperation3 = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
          v193 = currentUpdateOperation3;
          auxiliaryOperations3 = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
          v191 = auxiliaryOperations3;
          v192 = [v191 count];
          v189 = &v23;
          v190 = v425;
          __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v425, v331, v248, currentState7, v239, v237, v235, v233, v231, v224, v222, v220, v218, v216, v214, v211, v209, v204, v201, v197, v195, v193, v192);
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
      v326 = [(SUSettingsStatefulUIManager *)selfCopy log];
      v324 = v326;
      oslog4 = [v324 oslog];
      oslog = oslog4;
      MEMORY[0x277D82BD8](v324);
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        log = oslog;
        *v322 = type;
        currentState8 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
        v320 = SUSettingsUIStateToString(currentState8);
        v317 = v320;
        v318 = MEMORY[0x277D82BE0](v317);
        v415 = v318;
        currentState9 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
        delegate10 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
        v315 = delegate10;
        v413 = 0;
        v411 = 0;
        if (v315)
        {
          delegate11 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
          v414 = delegate11;
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
        delegate12 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
        v307 = delegate12;
        scanError4 = [(SUSettingsStatefulUIManager *)selfCopy scanError];
        v305 = scanError4;
        preferredStatefulDescriptor4 = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
        v303 = preferredStatefulDescriptor4;
        alternateStatefulDescriptor4 = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
        v301 = alternateStatefulDescriptor4;
        currentDownload10 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        v300 = currentDownload10;
        v409 = 0;
        v407 = 0;
        v405 = 0;
        if (v300)
        {
          currentDownload11 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
          v410 = currentDownload11;
          v409 = 1;
          descriptor4 = [v410 descriptor];
          v408 = descriptor4;
          v407 = 1;
          humanReadableUpdateName10 = [v408 humanReadableUpdateName];
          v406 = humanReadableUpdateName10;
          v405 = 1;
          v296 = v406;
        }

        else
        {
          v296 = @"(null)";
        }

        v294 = v296;
        currentDownload12 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        v292 = currentDownload12;
        performThirdPartyScan4 = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
        v5 = "YES";
        if (!performThirdPartyScan4)
        {
          v5 = "NO";
        }

        v290 = v5;
        isTargetedUpdateScheduledForAutoInstall4 = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
        v6 = "YES";
        if (!isTargetedUpdateScheduledForAutoInstall4)
        {
          v6 = "NO";
        }

        v288 = v6;
        hidingPreferredDescriptor4 = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
        v7 = "YES";
        if (!hidingPreferredDescriptor4)
        {
          v7 = "NO";
        }

        v286 = v7;
        humanReadableUpdateName11 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
        v283 = humanReadableUpdateName11;
        v284 = MEMORY[0x277D82BE0](v283);
        v404 = v284;
        hidingAlternateDescriptor4 = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
        v8 = "YES";
        if (!hidingAlternateDescriptor4)
        {
          v8 = "NO";
        }

        v281 = v8;
        humanReadableUpdateName12 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
        v278 = humanReadableUpdateName12;
        v279 = MEMORY[0x277D82BE0](v278);
        v403 = v279;
        enrolledBetaProgram7 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
        v277 = enrolledBetaProgram7;
        v401 = 0;
        if (v277)
        {
          enrolledBetaProgram8 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
          v402 = enrolledBetaProgram8;
          v401 = 1;
          programID6 = [v402 programID];
          v274 = programID6;
        }

        else
        {
          v274 = 0;
        }

        v272 = v274;
        betaPrograms7 = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
        v270 = betaPrograms7;
        v271 = [v270 count];
        currentFullScanOperation4 = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
        v267 = currentFullScanOperation4;
        currentRefreshScanOperation4 = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
        v265 = currentRefreshScanOperation4;
        currentUpdateOperation4 = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
        v263 = currentUpdateOperation4;
        auxiliaryOperations4 = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
        v261 = auxiliaryOperations4;
        v262 = [v261 count];
        v259 = &v23;
        buf = v426;
        __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v426, v331, v318, currentState9, v309, v307, v305, v303, v301, v294, v292, v290, v288, v286, v284, v281, v279, v274, v271, v267, v265, v263, v262);
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

- (void)unenrollFromBetaUpdatesWithCompletion:(id)completion
{
  v110 = "[SUSettingsStatefulUIManager unenrollFromBetaUpdatesWithCompletion:]";
  v157 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  if (_os_feature_enabled_impl())
  {
    if ([(SUSettingsStatefulUIManager *)selfCopy currentState]> 1)
    {
      currentSeedingDevice = [(SUSettingsStatefulUIManager *)selfCopy currentSeedingDevice];
      MEMORY[0x277D82BD8](currentSeedingDevice);
      if (currentSeedingDevice)
      {
        mEMORY[0x277D4D310] = [MEMORY[0x277D4D310] sharedManager];
        currentSeedingDevice2 = [(SUSettingsStatefulUIManager *)selfCopy currentSeedingDevice];
        v21[15] = &v111;
        v111 = MEMORY[0x277D85DD0];
        v112 = -1073741824;
        v113 = 0;
        v114 = __69__SUSettingsStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke;
        v115 = &unk_279CB9780;
        v25 = &v116;
        v116 = MEMORY[0x277D82BE0](selfCopy);
        v24 = &v117;
        v117 = MEMORY[0x277D82BE0](location[0]);
        [mEMORY[0x277D4D310] unenrollDevice:currentSeedingDevice2 completion:&v111];
        MEMORY[0x277D82BD8](currentSeedingDevice2);
        MEMORY[0x277D82BD8](mEMORY[0x277D4D310]);
        v26 = 0;
        objc_storeStrong(&v117, 0);
        objc_storeStrong(&v116, 0);
        v152 = 0;
      }

      else
      {
        v67 = [(SUSettingsStatefulUIManager *)selfCopy log];
        oslog = [(SUCoreLog *)v67 oslog];
        MEMORY[0x277D82BD8](v67);
        v133 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v61 = oslog;
          *v62 = v133;
          v63 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
          v64 = MEMORY[0x277D82BE0](v63);
          v132 = v64;
          currentState = [(SUSettingsStatefulUIManager *)selfCopy currentState];
          delegate = [(SUSettingsStatefulUIManager *)selfCopy delegate];
          v130 = 0;
          v128 = 0;
          if (delegate)
          {
            delegate2 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
          delegate3 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
          scanError = [(SUSettingsStatefulUIManager *)selfCopy scanError];
          preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
          alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
          currentDownload = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
          v126 = 0;
          v124 = 0;
          v122 = 0;
          if (currentDownload)
          {
            currentDownload2 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
            v51 = 1;
            v126 = 1;
            descriptor = [(SUDownload *)currentDownload2 descriptor];
            v124 = 1;
            humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
            v122 = 1;
            v52 = humanReadableUpdateName;
          }

          else
          {
            v52 = @"(null)";
          }

          v38 = v52;
          currentDownload3 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
          performThirdPartyScan = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
          v45 = "NO";
          v14 = "YES";
          v46 = "YES";
          if (!performThirdPartyScan)
          {
            v14 = "NO";
          }

          v40 = v14;
          isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
          v16 = v46;
          if (!isTargetedUpdateScheduledForAutoInstall)
          {
            v16 = v45;
          }

          v41 = v16;
          hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
          v18 = v46;
          if (!hidingPreferredDescriptor)
          {
            v18 = v45;
          }

          v42 = v18;
          humanReadableUpdateName2 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
          v44 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
          v121 = v44;
          hidingAlternateDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
          v20 = v46;
          if (!hidingAlternateDescriptor)
          {
            v20 = v45;
          }

          v47 = v20;
          humanReadableUpdateName3 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
          v49 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
          v120 = v49;
          enrolledBetaProgram = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
          v118 = 0;
          if (enrolledBetaProgram)
          {
            enrolledBetaProgram2 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
            v118 = 1;
            programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
          }

          else
          {
            programID = 0;
          }

          v28 = programID;
          betaPrograms = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
          v29 = [(NSArray *)betaPrograms count];
          currentFullScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
          currentRefreshScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
          currentUpdateOperation = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
          auxiliaryOperations = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
          v30 = v21;
          v31 = v155;
          __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v155, v110, v64, currentState, v53, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v38, currentDownload3, v40, v41, v42, v44, v47, v49, programID, v29, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, [(NSMutableSet *)auxiliaryOperations count]);
          _os_log_impl(&dword_26AC94000, v61, v62[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCan not unenroll from beta updates as we have not discovered a seeding device.", v31, 0xDEu);
          MEMORY[0x277D82BD8](auxiliaryOperations);
          MEMORY[0x277D82BD8](currentUpdateOperation);
          MEMORY[0x277D82BD8](currentRefreshScanOperation);
          MEMORY[0x277D82BD8](currentFullScanOperation);
          MEMORY[0x277D82BD8](betaPrograms);
          if (v118)
          {
            MEMORY[0x277D82BD8](enrolledBetaProgram2);
          }

          MEMORY[0x277D82BD8](enrolledBetaProgram);
          MEMORY[0x277D82BD8](humanReadableUpdateName3);
          MEMORY[0x277D82BD8](humanReadableUpdateName2);
          MEMORY[0x277D82BD8](currentDownload3);
          if (v122)
          {
            MEMORY[0x277D82BD8](humanReadableUpdateName);
          }

          if (v124)
          {
            MEMORY[0x277D82BD8](descriptor);
          }

          if (v126)
          {
            MEMORY[0x277D82BD8](currentDownload2);
          }

          MEMORY[0x277D82BD8](currentDownload);
          MEMORY[0x277D82BD8](alternateStatefulDescriptor);
          MEMORY[0x277D82BD8](preferredStatefulDescriptor);
          MEMORY[0x277D82BD8](scanError);
          MEMORY[0x277D82BD8](delegate3);
          if (v128)
          {
            MEMORY[0x277D82BD8](v129);
          }

          if (v130)
          {
            MEMORY[0x277D82BD8](delegate2);
          }

          MEMORY[0x277D82BD8](delegate);
          MEMORY[0x277D82BD8](v63);
          v27 = 0;
          objc_storeStrong(&v120, 0);
          objc_storeStrong(&v121, v27);
          objc_storeStrong(&v132, v27);
        }

        objc_storeStrong(&oslog, 0);
        v152 = 1;
      }
    }

    else
    {
      v109 = [(SUSettingsStatefulUIManager *)selfCopy log];
      oslog = [(SUCoreLog *)v109 oslog];
      MEMORY[0x277D82BD8](v109);
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        log = oslog;
        *v104 = type;
        v105 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
        v106 = MEMORY[0x277D82BE0](v105);
        v149 = v106;
        currentState2 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
        delegate4 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
        v147 = 0;
        v145 = 0;
        if (delegate4)
        {
          delegate5 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
        delegate6 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
        scanError2 = [(SUSettingsStatefulUIManager *)selfCopy scanError];
        preferredStatefulDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
        alternateStatefulDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
        currentDownload4 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        v143 = 0;
        v141 = 0;
        v139 = 0;
        if (currentDownload4)
        {
          currentDownload5 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
          v93 = 1;
          v143 = 1;
          descriptor2 = [(SUDownload *)currentDownload5 descriptor];
          v141 = 1;
          humanReadableUpdateName4 = [(SUDescriptor *)descriptor2 humanReadableUpdateName];
          v139 = 1;
          v94 = humanReadableUpdateName4;
        }

        else
        {
          v94 = @"(null)";
        }

        v80 = v94;
        currentDownload6 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        performThirdPartyScan2 = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
        v87 = "NO";
        v5 = "YES";
        v88 = "YES";
        if (!performThirdPartyScan2)
        {
          v5 = "NO";
        }

        v82 = v5;
        isTargetedUpdateScheduledForAutoInstall2 = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
        v7 = v88;
        if (!isTargetedUpdateScheduledForAutoInstall2)
        {
          v7 = v87;
        }

        v83 = v7;
        hidingPreferredDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
        v9 = v88;
        if (!hidingPreferredDescriptor2)
        {
          v9 = v87;
        }

        v84 = v9;
        humanReadableUpdateName5 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
        v86 = MEMORY[0x277D82BE0](humanReadableUpdateName5);
        v138 = v86;
        hidingAlternateDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
        v11 = v88;
        if (!hidingAlternateDescriptor2)
        {
          v11 = v87;
        }

        v89 = v11;
        humanReadableUpdateName6 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
        v91 = MEMORY[0x277D82BE0](humanReadableUpdateName6);
        v137 = v91;
        enrolledBetaProgram3 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
        v135 = 0;
        if (enrolledBetaProgram3)
        {
          enrolledBetaProgram4 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
          v135 = 1;
          programID2 = [(SDBetaProgram *)enrolledBetaProgram4 programID];
        }

        else
        {
          programID2 = 0;
        }

        v70 = programID2;
        betaPrograms2 = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
        v71 = [(NSArray *)betaPrograms2 count];
        currentFullScanOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
        currentRefreshScanOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
        currentUpdateOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
        auxiliaryOperations2 = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
        v72 = v21;
        buf = v156;
        __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v156, v110, v106, currentState2, v95, delegate6, scanError2, preferredStatefulDescriptor2, alternateStatefulDescriptor2, v80, currentDownload6, v82, v83, v84, v86, v89, v91, programID2, v71, currentFullScanOperation2, currentRefreshScanOperation2, currentUpdateOperation2, [(NSMutableSet *)auxiliaryOperations2 count]);
        _os_log_impl(&dword_26AC94000, log, v104[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCan not unenroll from beta updates as we are currently checking for updates.", buf, 0xDEu);
        MEMORY[0x277D82BD8](auxiliaryOperations2);
        MEMORY[0x277D82BD8](currentUpdateOperation2);
        MEMORY[0x277D82BD8](currentRefreshScanOperation2);
        MEMORY[0x277D82BD8](currentFullScanOperation2);
        MEMORY[0x277D82BD8](betaPrograms2);
        if (v135)
        {
          MEMORY[0x277D82BD8](enrolledBetaProgram4);
        }

        MEMORY[0x277D82BD8](enrolledBetaProgram3);
        MEMORY[0x277D82BD8](humanReadableUpdateName6);
        MEMORY[0x277D82BD8](humanReadableUpdateName5);
        MEMORY[0x277D82BD8](currentDownload6);
        if (v139)
        {
          MEMORY[0x277D82BD8](humanReadableUpdateName4);
        }

        if (v141)
        {
          MEMORY[0x277D82BD8](descriptor2);
        }

        if (v143)
        {
          MEMORY[0x277D82BD8](currentDownload5);
        }

        MEMORY[0x277D82BD8](currentDownload4);
        MEMORY[0x277D82BD8](alternateStatefulDescriptor2);
        MEMORY[0x277D82BD8](preferredStatefulDescriptor2);
        MEMORY[0x277D82BD8](scanError2);
        MEMORY[0x277D82BD8](delegate6);
        if (v145)
        {
          MEMORY[0x277D82BD8](v146);
        }

        if (v147)
        {
          MEMORY[0x277D82BD8](delegate5);
        }

        MEMORY[0x277D82BD8](delegate4);
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

- (void)refreshBetaUpdates:(id)updates
{
  v68 = "[SUSettingsStatefulUIManager refreshBetaUpdates:]";
  v98 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, updates);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  MEMORY[0x277D82BD8](uUID);
  v67 = [(SUSettingsStatefulUIManager *)selfCopy log];
  oslog = [(SUCoreLog *)v67 oslog];
  MEMORY[0x277D82BD8](v67);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v62 = type;
    v63 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
    v64 = MEMORY[0x277D82BE0](v63);
    v91 = v64;
    currentState = [(SUSettingsStatefulUIManager *)selfCopy currentState];
    delegate = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    v89 = 0;
    v87 = 0;
    if (delegate)
    {
      delegate2 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
    delegate3 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    scanError = [(SUSettingsStatefulUIManager *)selfCopy scanError];
    preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
    alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
    currentDownload = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    v85 = 0;
    v83 = 0;
    v81 = 0;
    if (currentDownload)
    {
      currentDownload2 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v51 = 1;
      v85 = 1;
      descriptor = [(SUDownload *)currentDownload2 descriptor];
      v83 = 1;
      humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v81 = 1;
      v52 = humanReadableUpdateName;
    }

    else
    {
      v52 = @"(null)";
    }

    v38 = v52;
    currentDownload3 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    performThirdPartyScan = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
    v45 = "NO";
    v5 = "YES";
    v46 = "YES";
    if (!performThirdPartyScan)
    {
      v5 = "NO";
    }

    v40 = v5;
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
    v7 = v46;
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v7 = v45;
    }

    v41 = v7;
    hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
    v9 = v46;
    if (!hidingPreferredDescriptor)
    {
      v9 = v45;
    }

    v42 = v9;
    humanReadableUpdateName2 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v44 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
    v80 = v44;
    hidingAlternateDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
    v11 = v46;
    if (!hidingAlternateDescriptor)
    {
      v11 = v45;
    }

    v47 = v11;
    humanReadableUpdateName3 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v49 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
    v79 = v49;
    enrolledBetaProgram = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
    v77 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v77 = 1;
      programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v28 = programID;
    betaPrograms = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
    v29 = [(NSArray *)betaPrograms count];
    currentFullScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
    currentRefreshScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
    currentUpdateOperation = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
    auxiliaryOperations = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
    v12 = [(NSMutableSet *)auxiliaryOperations count];
    currentFullScanOperation = selfCopy->_currentFullScanOperation;
    currentRefreshScanOperation = selfCopy->_currentRefreshScanOperation;
    v30 = &v17;
    buf = v97;
    __os_log_helper_16_2_25_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_0_8_0(v97, v68, v64, currentState, v53, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v38, currentDownload3, v40, v41, v42, v44, v47, v49, programID, v29, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, v12, uUIDString, currentFullScanOperation, currentRefreshScanOperation);
    _os_log_impl(&dword_26AC94000, log, v62[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBeginning a beta updates scan operation with scan ID: %{public}@ (full scan FSM: %p, refresh scan FSM: %p)", buf, 0xFCu);
    MEMORY[0x277D82BD8](auxiliaryOperations);
    MEMORY[0x277D82BD8](currentUpdateOperation);
    MEMORY[0x277D82BD8](currentRefreshScanOperation);
    MEMORY[0x277D82BD8](currentFullScanOperation);
    MEMORY[0x277D82BD8](betaPrograms);
    if (v77)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v81)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    if (v83)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v85)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v87)
    {
      MEMORY[0x277D82BD8](v88);
    }

    if (v89)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](v63);
    obj = 0;
    objc_storeStrong(&v79, 0);
    objc_storeStrong(&v80, obj);
    objc_storeStrong(&v91, obj);
  }

  objc_storeStrong(&oslog, 0);
  v15 = [SUSettingsScanOperation alloc];
  v24 = &uUIDString;
  v16 = [(SUSettingsScanOperation *)v15 initWithUUID:uUIDString usingSUManagerClient:selfCopy->_suClient andBetaManager:selfCopy->_seedingBetaManager withCompletionQueue:selfCopy->_workQueue];
  v23 = &v76;
  v76 = v16;
  v19 = v16;
  createScanOperationOptions = [(SUSettingsStatefulUIManager *)selfCopy createScanOperationOptions];
  v18 = &v70;
  v70 = MEMORY[0x277D85DD0];
  v71 = -1073741824;
  v72 = 0;
  v73 = __50__SUSettingsStatefulUIManager_refreshBetaUpdates___block_invoke;
  v74 = &unk_279CB97D0;
  v22 = v75;
  v75[0] = MEMORY[0x277D82BE0](selfCopy);
  v21 = (v18 + 5);
  v25 = location;
  v75[1] = MEMORY[0x277D82BE0](location[0]);
  [(SUSettingsScanOperation *)v19 refreshBetaProgramsWithOptions:createScanOperationOptions completionHandler:v18];
  MEMORY[0x277D82BD8](createScanOperationOptions);
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
    scanError = [(SUSettingsStatefulUIManager *)self scanError];
    v11 = 1;
    v3 = 0;
    if (scanError)
    {
      scanError2 = [(SUSettingsStatefulUIManager *)self scanError];
      v9 = 1;
      domain = [(NSError *)scanError2 domain];
      v7 = 1;
      v3 = 0;
      if ([(NSString *)domain isEqualToString:*MEMORY[0x277D64910]])
      {
        scanError3 = [(SUSettingsStatefulUIManager *)self scanError];
        v5 = 1;
        v3 = [(NSError *)scanError3 code]== 55;
      }
    }

    v4 = v3;
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](scanError3);
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](domain);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](scanError2);
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](scanError);
  }

  return v4;
}

- (BOOL)isPreferredUpdatePromotedAsAlternate
{
  preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)self preferredStatefulDescriptor];
  v11 = 0;
  v9 = 0;
  v7 = 0;
  v6 = 0;
  if (preferredStatefulDescriptor)
  {
    alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)self alternateStatefulDescriptor];
    v11 = 1;
    v6 = 0;
    if (!alternateStatefulDescriptor)
    {
      preferredStatefulDescriptor2 = [(SUSettingsStatefulUIManager *)self preferredStatefulDescriptor];
      v9 = 1;
      descriptor = [(SUSettingsStatefulDescriptor *)preferredStatefulDescriptor2 descriptor];
      v7 = 1;
      v6 = 0;
      if ([(SUDescriptor *)descriptor audienceType]== 1)
      {
        v6 = !self->_hidingPreferredDescriptor;
      }
    }
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](descriptor);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](preferredStatefulDescriptor2);
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
  }

  MEMORY[0x277D82BD8](preferredStatefulDescriptor);
  if (!v6)
  {
    return 0;
  }

  preferredStatefulDescriptor3 = [(SUSettingsStatefulUIManager *)self preferredStatefulDescriptor];
  descriptor2 = [(SUSettingsStatefulDescriptor *)preferredStatefulDescriptor3 descriptor];
  v14 = [(SUDescriptor *)descriptor2 promoteAlternateUpdate]& 1;
  MEMORY[0x277D82BD8](descriptor2);
  MEMORY[0x277D82BD8](preferredStatefulDescriptor3);
  return v14;
}

- (void)rvTriggerNeRDUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  queue = selfCopy->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __51__SUSettingsStatefulUIManager_rvTriggerNeRDUpdate___block_invoke;
  v8 = &unk_279CB9410;
  v9 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)networkChangedFromNetworkType:(int)type toNetworkType:(int)networkType
{
  selfCopy = self;
  v15 = a2;
  typeCopy = type;
  networkTypeCopy = networkType;
  queue = self->_workQueue;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __75__SUSettingsStatefulUIManager_networkChangedFromNetworkType_toNetworkType___block_invoke;
  v9 = &unk_279CB97F8;
  v10 = MEMORY[0x277D82BE0](self);
  v11 = networkTypeCopy;
  v12 = typeCopy;
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

- (void)client:(id)client scanRequestDidStartForOptions:(id)options
{
  v131 = &v150;
  obj = options;
  v129 = "[SUSettingsStatefulUIManager client:scanRequestDidStartForOptions:]";
  v167 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v163 = 0;
  objc_storeStrong(&v163, obj);
  v162 = 0;
  v132 = 1;
  if (v163)
  {
    identifier = [*(v131 + 19) identifier];
    *(v131 + 18) = identifier;
    v162 = 1;
    v132 = identifier == 0;
  }

  v128 = v132;
  if (v162)
  {
    MEMORY[0x277D82BD8](*(v131 + 18));
  }

  if (v128)
  {
    v127 = [*(v131 + 22) log];
    oslog = [v127 oslog];
    v6 = v127;
    *(v131 + 16) = oslog;
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
      currentState = [v8[22] currentState];
      delegate = [*(v131 + 22) delegate];
      v158 = 0;
      v157 = 0;
      if (delegate)
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
      delegate2 = [*(v131 + 22) delegate];
      scanError = [*(v131 + 22) scanError];
      preferredStatefulDescriptor = [*(v131 + 22) preferredStatefulDescriptor];
      alternateStatefulDescriptor = [*(v131 + 22) alternateStatefulDescriptor];
      currentDownload = [*(v131 + 22) currentDownload];
      v156 = 0;
      v155 = 0;
      v154 = 0;
      if (currentDownload)
      {
        currentDownload2 = [*(v131 + 22) currentDownload];
        *(v131 + 9) = currentDownload2;
        v111 = 1;
        v156 = 1;
        descriptor = [currentDownload2 descriptor];
        *(v131 + 7) = descriptor;
        v155 = 1;
        humanReadableUpdateName = [descriptor humanReadableUpdateName];
        v14 = v111;
        *(v131 + 5) = humanReadableUpdateName;
        v154 = v14 & 1;
        v112 = humanReadableUpdateName;
      }

      else
      {
        v112 = @"(null)";
      }

      v98 = v112;
      currentDownload3 = [*(v131 + 22) currentDownload];
      performThirdPartyScan = [*(v131 + 22) performThirdPartyScan];
      v105 = "NO";
      v16 = "YES";
      v106 = "YES";
      if ((performThirdPartyScan & 1) == 0)
      {
        v16 = "NO";
      }

      v100 = v16;
      isTargetedUpdateScheduledForAutoInstall = [*(v131 + 22) isTargetedUpdateScheduledForAutoInstall];
      v18 = v106;
      if ((isTargetedUpdateScheduledForAutoInstall & 1) == 0)
      {
        v18 = v105;
      }

      v101 = v18;
      hidingPreferredDescriptor = [*(v131 + 22) hidingPreferredDescriptor];
      v20 = v106;
      if ((hidingPreferredDescriptor & 1) == 0)
      {
        v20 = v105;
      }

      v102 = v20;
      humanReadableUpdateName2 = [*(*(v131 + 22) + 256) humanReadableUpdateName];
      v21 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
      v22 = v131;
      v104 = v21;
      *(v131 + 3) = v21;
      hidingAlternateDescriptor = [v22[22] hidingAlternateDescriptor];
      v24 = v106;
      if ((hidingAlternateDescriptor & 1) == 0)
      {
        v24 = v105;
      }

      v107 = v24;
      humanReadableUpdateName3 = [*(*(v131 + 22) + 264) humanReadableUpdateName];
      v25 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
      v26 = v131;
      v109 = v25;
      *(v131 + 2) = v25;
      enrolledBetaProgram = [v26[22] enrolledBetaProgram];
      v151 = 0;
      if (enrolledBetaProgram)
      {
        enrolledBetaProgram2 = [*(v131 + 22) enrolledBetaProgram];
        *(v131 + 1) = enrolledBetaProgram2;
        v151 = 1;
        programID = [enrolledBetaProgram2 programID];
      }

      else
      {
        programID = 0;
      }

      v88 = programID;
      betaPrograms = [*(v131 + 22) betaPrograms];
      v89 = [betaPrograms count];
      currentFullScanOperation = [*(v131 + 22) currentFullScanOperation];
      currentRefreshScanOperation = [*(v131 + 22) currentRefreshScanOperation];
      currentUpdateOperation = [*(v131 + 22) currentUpdateOperation];
      auxiliaryOperations = [*(v131 + 22) auxiliaryOperations];
      v90 = &v37;
      buf = v166;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v166, v129, v124, currentState, v113, delegate2, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v98, currentDownload3, v100, v101, v102, v104, v107, v109, programID, v89, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, [auxiliaryOperations count]);
      _os_log_impl(&dword_26AC94000, log, v122[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nScan has finished, but we've been given a nil options. Skipping.", buf, 0xDEu);
      MEMORY[0x277D82BD8](auxiliaryOperations);
      MEMORY[0x277D82BD8](currentUpdateOperation);
      MEMORY[0x277D82BD8](currentRefreshScanOperation);
      MEMORY[0x277D82BD8](currentFullScanOperation);
      MEMORY[0x277D82BD8](betaPrograms);
      if (v151)
      {
        MEMORY[0x277D82BD8](*(v131 + 1));
      }

      MEMORY[0x277D82BD8](enrolledBetaProgram);
      MEMORY[0x277D82BD8](humanReadableUpdateName3);
      MEMORY[0x277D82BD8](humanReadableUpdateName2);
      MEMORY[0x277D82BD8](currentDownload3);
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

      MEMORY[0x277D82BD8](currentDownload);
      MEMORY[0x277D82BD8](alternateStatefulDescriptor);
      MEMORY[0x277D82BD8](preferredStatefulDescriptor);
      MEMORY[0x277D82BD8](scanError);
      MEMORY[0x277D82BD8](delegate2);
      if (v157)
      {
        MEMORY[0x277D82BD8](*(v131 + 11));
      }

      if (v158)
      {
        MEMORY[0x277D82BD8](*(v131 + 13));
      }

      MEMORY[0x277D82BD8](delegate);
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
      currentState2 = [*(v131 + 22) currentState];
      delegate3 = [*(v131 + 22) delegate];
      v145 = 0;
      v143 = 0;
      if (delegate3)
      {
        delegate4 = [*(v131 + 22) delegate];
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
      delegate5 = [*(v131 + 22) delegate];
      scanError2 = [*(v131 + 22) scanError];
      preferredStatefulDescriptor2 = [*(v131 + 22) preferredStatefulDescriptor];
      alternateStatefulDescriptor2 = [*(v131 + 22) alternateStatefulDescriptor];
      currentDownload4 = [*(v131 + 22) currentDownload];
      v141 = 0;
      v139 = 0;
      v137 = 0;
      if (currentDownload4)
      {
        currentDownload5 = [*(v131 + 22) currentDownload];
        v70 = 1;
        v141 = 1;
        descriptor2 = [currentDownload5 descriptor];
        v139 = 1;
        humanReadableUpdateName4 = [descriptor2 humanReadableUpdateName];
        v137 = 1;
        v71 = humanReadableUpdateName4;
      }

      else
      {
        v71 = @"(null)";
      }

      v57 = v71;
      currentDownload6 = [*(v131 + 22) currentDownload];
      performThirdPartyScan2 = [*(v131 + 22) performThirdPartyScan];
      v64 = "NO";
      v30 = "YES";
      v65 = "YES";
      if ((performThirdPartyScan2 & 1) == 0)
      {
        v30 = "NO";
      }

      v59 = v30;
      isTargetedUpdateScheduledForAutoInstall2 = [*(v131 + 22) isTargetedUpdateScheduledForAutoInstall];
      v32 = v65;
      if ((isTargetedUpdateScheduledForAutoInstall2 & 1) == 0)
      {
        v32 = v64;
      }

      v60 = v32;
      hidingPreferredDescriptor2 = [*(v131 + 22) hidingPreferredDescriptor];
      v34 = v65;
      if ((hidingPreferredDescriptor2 & 1) == 0)
      {
        v34 = v64;
      }

      v61 = v34;
      humanReadableUpdateName5 = [*(*(v131 + 22) + 256) humanReadableUpdateName];
      v63 = MEMORY[0x277D82BE0](humanReadableUpdateName5);
      v136 = v63;
      hidingAlternateDescriptor2 = [*(v131 + 22) hidingAlternateDescriptor];
      v36 = v65;
      if ((hidingAlternateDescriptor2 & 1) == 0)
      {
        v36 = v64;
      }

      v66 = v36;
      humanReadableUpdateName6 = [*(*(v131 + 22) + 264) humanReadableUpdateName];
      v68 = MEMORY[0x277D82BE0](humanReadableUpdateName6);
      v135 = v68;
      enrolledBetaProgram3 = [*(v131 + 22) enrolledBetaProgram];
      v133 = 0;
      if (enrolledBetaProgram3)
      {
        enrolledBetaProgram4 = [*(v131 + 22) enrolledBetaProgram];
        v133 = 1;
        programID2 = [enrolledBetaProgram4 programID];
      }

      else
      {
        programID2 = 0;
      }

      v45 = programID2;
      betaPrograms2 = [*(v131 + 22) betaPrograms];
      v46 = [betaPrograms2 count];
      currentFullScanOperation2 = [*(v131 + 22) currentFullScanOperation];
      currentRefreshScanOperation2 = [*(v131 + 22) currentRefreshScanOperation];
      currentUpdateOperation2 = [*(v131 + 22) currentUpdateOperation];
      auxiliaryOperations2 = [*(v131 + 22) auxiliaryOperations];
      v47 = [auxiliaryOperations2 count];
      identifier2 = [*(v131 + 19) identifier];
      v48 = &v37;
      v49 = v165;
      __os_log_helper_16_2_23_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66(v165, v129, v83, currentState2, v72, delegate5, scanError2, preferredStatefulDescriptor2, alternateStatefulDescriptor2, v57, currentDownload6, v59, v60, v61, v63, v66, v68, programID2, v46, currentFullScanOperation2, currentRefreshScanOperation2, currentUpdateOperation2, v47, identifier2);
      _os_log_impl(&dword_26AC94000, v80, v81[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nScan has started on behalf of: %{public}@", v49, 0xE8u);
      MEMORY[0x277D82BD8](identifier2);
      MEMORY[0x277D82BD8](auxiliaryOperations2);
      MEMORY[0x277D82BD8](currentUpdateOperation2);
      MEMORY[0x277D82BD8](currentRefreshScanOperation2);
      MEMORY[0x277D82BD8](currentFullScanOperation2);
      MEMORY[0x277D82BD8](betaPrograms2);
      if (v133)
      {
        MEMORY[0x277D82BD8](enrolledBetaProgram4);
      }

      MEMORY[0x277D82BD8](enrolledBetaProgram3);
      MEMORY[0x277D82BD8](humanReadableUpdateName6);
      MEMORY[0x277D82BD8](humanReadableUpdateName5);
      MEMORY[0x277D82BD8](currentDownload6);
      if (v137)
      {
        MEMORY[0x277D82BD8](humanReadableUpdateName4);
      }

      if (v139)
      {
        MEMORY[0x277D82BD8](descriptor2);
      }

      if (v141)
      {
        MEMORY[0x277D82BD8](currentDownload5);
      }

      MEMORY[0x277D82BD8](currentDownload4);
      MEMORY[0x277D82BD8](alternateStatefulDescriptor2);
      MEMORY[0x277D82BD8](preferredStatefulDescriptor2);
      MEMORY[0x277D82BD8](scanError2);
      MEMORY[0x277D82BD8](delegate5);
      if (v143)
      {
        MEMORY[0x277D82BD8](v144);
      }

      if (v145)
      {
        MEMORY[0x277D82BD8](delegate4);
      }

      MEMORY[0x277D82BD8](delegate3);
      MEMORY[0x277D82BD8](v82);
      v44 = 0;
      objc_storeStrong(&v135, 0);
      objc_storeStrong(&v136, v44);
      objc_storeStrong(&v147, v44);
    }

    objc_storeStrong(&oslog, 0);
    identifier3 = [*(v131 + 19) identifier];
    v43 = [identifier3 isEqualToString:@"com.apple.Preferences.software_update"];
    MEMORY[0x277D82BD8](identifier3);
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

- (void)client:(id)client scanRequestDidFinishForOptions:(id)options results:(id)results error:(id)error
{
  v186 = &v207;
  obj = options;
  resultsCopy = results;
  errorCopy = error;
  v190 = "[SUSettingsStatefulUIManager client:scanRequestDidFinishForOptions:results:error:]";
  v229 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v224 = 0;
  objc_storeStrong(&v224, obj);
  v223 = 0;
  objc_storeStrong(&v223, resultsCopy);
  v222 = 0;
  objc_storeStrong(&v222, errorCopy);
  v221 = 0;
  v185 = 1;
  if (v224)
  {
    identifier = [v186[24] identifier];
    v6 = identifier;
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
    oslog = [v180 oslog];
    v7 = oslog;
    v8 = v180;
    v186[19] = v7;
    MEMORY[0x277D82BD8](v8);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v186[19], OS_LOG_TYPE_DEFAULT))
    {
      log = v186[19];
      *v178 = type;
      currentState = [v186[27] currentState];
      v176 = SUSettingsUIStateToString(currentState);
      v173 = v176;
      v9 = MEMORY[0x277D82BE0](v173);
      v10 = v186;
      v174 = v9;
      v186[17] = v9;
      currentState2 = [v10[27] currentState];
      delegate = [v186[27] delegate];
      v171 = delegate;
      v217 = 0;
      v216 = 0;
      if (v171)
      {
        delegate2 = [v186[27] delegate];
        v186[16] = delegate2;
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
      delegate3 = [v186[27] delegate];
      v163 = delegate3;
      scanError = [v186[27] scanError];
      v161 = scanError;
      preferredStatefulDescriptor = [v186[27] preferredStatefulDescriptor];
      v159 = preferredStatefulDescriptor;
      alternateStatefulDescriptor = [v186[27] alternateStatefulDescriptor];
      v157 = alternateStatefulDescriptor;
      currentDownload = [v186[27] currentDownload];
      v156 = currentDownload;
      v215 = 0;
      v214 = 0;
      v213 = 0;
      if (v156)
      {
        currentDownload2 = [v186[27] currentDownload];
        v12 = currentDownload2;
        v186[12] = v12;
        v215 = 1;
        descriptor = [v12 descriptor];
        v13 = descriptor;
        v186[10] = v13;
        v214 = 1;
        humanReadableUpdateName = [v13 humanReadableUpdateName];
        v14 = humanReadableUpdateName;
        v186[8] = v14;
        v213 = 1;
        v152 = v14;
      }

      else
      {
        v152 = @"(null)";
      }

      v150 = v152;
      currentDownload3 = [v186[27] currentDownload];
      v148 = currentDownload3;
      performThirdPartyScan = [v186[27] performThirdPartyScan];
      v15 = "YES";
      if ((performThirdPartyScan & 1) == 0)
      {
        v15 = "NO";
      }

      v146 = v15;
      isTargetedUpdateScheduledForAutoInstall = [v186[27] isTargetedUpdateScheduledForAutoInstall];
      v16 = "YES";
      if ((isTargetedUpdateScheduledForAutoInstall & 1) == 0)
      {
        v16 = "NO";
      }

      v144 = v16;
      hidingPreferredDescriptor = [v186[27] hidingPreferredDescriptor];
      v17 = "YES";
      if ((hidingPreferredDescriptor & 1) == 0)
      {
        v17 = "NO";
      }

      v142 = v17;
      humanReadableUpdateName2 = [*(v186[27] + 32) humanReadableUpdateName];
      v139 = humanReadableUpdateName2;
      v18 = MEMORY[0x277D82BE0](v139);
      v19 = v186;
      v140 = v18;
      v186[6] = v18;
      hidingAlternateDescriptor = [v19[27] hidingAlternateDescriptor];
      v20 = "YES";
      if ((hidingAlternateDescriptor & 1) == 0)
      {
        v20 = "NO";
      }

      v137 = v20;
      humanReadableUpdateName3 = [*(v186[27] + 33) humanReadableUpdateName];
      v134 = humanReadableUpdateName3;
      v21 = MEMORY[0x277D82BE0](v134);
      v22 = v186;
      v135 = v21;
      v186[5] = v21;
      enrolledBetaProgram = [v22[27] enrolledBetaProgram];
      v133 = enrolledBetaProgram;
      v210 = 0;
      if (v133)
      {
        enrolledBetaProgram2 = [v186[27] enrolledBetaProgram];
        v23 = enrolledBetaProgram2;
        v186[4] = v23;
        v210 = 1;
        programID = [v23 programID];
        v130 = programID;
      }

      else
      {
        v130 = 0;
      }

      v128 = v130;
      betaPrograms = [v186[27] betaPrograms];
      v126 = betaPrograms;
      v127 = [v126 count];
      currentFullScanOperation = [v186[27] currentFullScanOperation];
      v123 = currentFullScanOperation;
      currentRefreshScanOperation = [v186[27] currentRefreshScanOperation];
      v121 = currentRefreshScanOperation;
      currentUpdateOperation = [v186[27] currentUpdateOperation];
      v119 = currentUpdateOperation;
      auxiliaryOperations = [v186[27] auxiliaryOperations];
      v117 = auxiliaryOperations;
      v118 = [v117 count];
      v115 = &v34;
      buf = v228;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v228, v190, v174, currentState2, v165, v163, v161, v159, v157, v150, v148, v146, v144, v142, v140, v137, v135, v130, v127, v123, v121, v119, v118);
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
    oslog2 = [v112 oslog];
    v24 = oslog2;
    v25 = v112;
    v186[2] = v24;
    MEMORY[0x277D82BD8](v25);
    v208 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v186[2], OS_LOG_TYPE_DEFAULT))
    {
      v109 = v186[2];
      *v110 = v208;
      currentState3 = [v186[27] currentState];
      v108 = SUSettingsUIStateToString(currentState3);
      v105 = v108;
      v26 = MEMORY[0x277D82BE0](v105);
      v27 = v186;
      v106 = v26;
      *v186 = v26;
      currentState4 = [v27[27] currentState];
      delegate4 = [v186[27] delegate];
      v103 = delegate4;
      v205 = 0;
      v203 = 0;
      if (v103)
      {
        delegate5 = [v186[27] delegate];
        v206 = delegate5;
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
      delegate6 = [v186[27] delegate];
      v95 = delegate6;
      scanError2 = [v186[27] scanError];
      v93 = scanError2;
      preferredStatefulDescriptor2 = [v186[27] preferredStatefulDescriptor];
      v91 = preferredStatefulDescriptor2;
      alternateStatefulDescriptor2 = [v186[27] alternateStatefulDescriptor];
      v89 = alternateStatefulDescriptor2;
      currentDownload4 = [v186[27] currentDownload];
      v88 = currentDownload4;
      v201 = 0;
      v199 = 0;
      v197 = 0;
      if (v88)
      {
        currentDownload5 = [v186[27] currentDownload];
        v202 = currentDownload5;
        v201 = 1;
        descriptor2 = [v202 descriptor];
        v200 = descriptor2;
        v199 = 1;
        humanReadableUpdateName4 = [v200 humanReadableUpdateName];
        v198 = humanReadableUpdateName4;
        v197 = 1;
        v84 = v198;
      }

      else
      {
        v84 = @"(null)";
      }

      v82 = v84;
      currentDownload6 = [v186[27] currentDownload];
      v80 = currentDownload6;
      performThirdPartyScan2 = [v186[27] performThirdPartyScan];
      v28 = "YES";
      if ((performThirdPartyScan2 & 1) == 0)
      {
        v28 = "NO";
      }

      v78 = v28;
      isTargetedUpdateScheduledForAutoInstall2 = [v186[27] isTargetedUpdateScheduledForAutoInstall];
      v29 = "YES";
      if ((isTargetedUpdateScheduledForAutoInstall2 & 1) == 0)
      {
        v29 = "NO";
      }

      v76 = v29;
      hidingPreferredDescriptor2 = [v186[27] hidingPreferredDescriptor];
      v30 = "YES";
      if ((hidingPreferredDescriptor2 & 1) == 0)
      {
        v30 = "NO";
      }

      v74 = v30;
      humanReadableUpdateName5 = [*(v186[27] + 32) humanReadableUpdateName];
      v71 = humanReadableUpdateName5;
      v72 = MEMORY[0x277D82BE0](v71);
      v196 = v72;
      hidingAlternateDescriptor2 = [v186[27] hidingAlternateDescriptor];
      v31 = "YES";
      if ((hidingAlternateDescriptor2 & 1) == 0)
      {
        v31 = "NO";
      }

      v69 = v31;
      humanReadableUpdateName6 = [*(v186[27] + 33) humanReadableUpdateName];
      v66 = humanReadableUpdateName6;
      v67 = MEMORY[0x277D82BE0](v66);
      v195 = v67;
      enrolledBetaProgram3 = [v186[27] enrolledBetaProgram];
      v65 = enrolledBetaProgram3;
      v193 = 0;
      if (v65)
      {
        enrolledBetaProgram4 = [v186[27] enrolledBetaProgram];
        v194 = enrolledBetaProgram4;
        v193 = 1;
        programID2 = [v194 programID];
        v62 = programID2;
      }

      else
      {
        v62 = 0;
      }

      v60 = v62;
      betaPrograms2 = [v186[27] betaPrograms];
      v58 = betaPrograms2;
      v59 = [v58 count];
      currentFullScanOperation2 = [v186[27] currentFullScanOperation];
      v55 = currentFullScanOperation2;
      currentRefreshScanOperation2 = [v186[27] currentRefreshScanOperation];
      v53 = currentRefreshScanOperation2;
      currentUpdateOperation2 = [v186[27] currentUpdateOperation];
      v51 = currentUpdateOperation2;
      auxiliaryOperations2 = [v186[27] auxiliaryOperations];
      v49 = auxiliaryOperations2;
      v50 = [v49 count];
      identifier2 = [v186[24] identifier];
      v47 = identifier2;
      v45 = &v34;
      v46 = v227;
      __os_log_helper_16_2_23_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66(v227, v190, v106, currentState4, v97, v95, v93, v91, v89, v82, v80, v78, v76, v74, v72, v69, v67, v62, v59, v55, v53, v51, v50, v47);
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
    identifier3 = [v186[24] identifier];
    v42 = identifier3;
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
        oslog3 = [v38 oslog];
        oslog = oslog3;
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

- (void)client:(id)client downloadDidStart:(id)start
{
  obj = start;
  v70 = "[SUSettingsStatefulUIManager client:downloadDidStart:]";
  v105 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v100 = 0;
  objc_storeStrong(&v100, obj);
  v69 = [(SUSettingsStatefulUIManager *)selfCopy log];
  oslog = [(SUCoreLog *)v69 oslog];
  MEMORY[0x277D82BD8](v69);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v64 = type;
    v65 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
    v66 = MEMORY[0x277D82BE0](v65);
    v97 = v66;
    currentState = [(SUSettingsStatefulUIManager *)selfCopy currentState];
    delegate = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    v95 = 0;
    v93 = 0;
    if (delegate)
    {
      delegate2 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
    delegate3 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    scanError = [(SUSettingsStatefulUIManager *)selfCopy scanError];
    preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
    alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
    currentDownload = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    v91 = 0;
    v89 = 0;
    v87 = 0;
    if (currentDownload)
    {
      currentDownload2 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v53 = 1;
      v91 = 1;
      descriptor = [(SUDownload *)currentDownload2 descriptor];
      v89 = 1;
      humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v87 = 1;
      v54 = humanReadableUpdateName;
    }

    else
    {
      v54 = @"(null)";
    }

    v40 = v54;
    currentDownload3 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    performThirdPartyScan = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
    v47 = "NO";
    v6 = "YES";
    v48 = "YES";
    if (!performThirdPartyScan)
    {
      v6 = "NO";
    }

    v42 = v6;
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
    v8 = v48;
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v8 = v47;
    }

    v43 = v8;
    hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
    v10 = v48;
    if (!hidingPreferredDescriptor)
    {
      v10 = v47;
    }

    v44 = v10;
    humanReadableUpdateName2 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v46 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
    v86 = v46;
    hidingAlternateDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
    v12 = v48;
    if (!hidingAlternateDescriptor)
    {
      v12 = v47;
    }

    v49 = v12;
    humanReadableUpdateName3 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v51 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
    v85 = v51;
    enrolledBetaProgram = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
    v83 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v83 = 1;
      programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v27 = programID;
    betaPrograms = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
    v28 = [(NSArray *)betaPrograms count];
    currentFullScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
    currentRefreshScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
    currentUpdateOperation = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
    auxiliaryOperations = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
    v29 = [(NSMutableSet *)auxiliaryOperations count];
    descriptor2 = [v100 descriptor];
    humanReadableUpdateName4 = [descriptor2 humanReadableUpdateName];
    v82 = MEMORY[0x277D82BE0](humanReadableUpdateName4);
    v30 = &v13;
    buf = v104;
    __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_0(v104, v70, v66, currentState, v55, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v40, currentDownload3, v42, v43, v44, v46, v49, v51, programID, v28, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, v29, v82, v100);
    _os_log_impl(&dword_26AC94000, log, v64[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nStarting to download an update targeting %{public}@ (%p)", buf, 0xF2u);
    MEMORY[0x277D82BD8](humanReadableUpdateName4);
    MEMORY[0x277D82BD8](descriptor2);
    MEMORY[0x277D82BD8](auxiliaryOperations);
    MEMORY[0x277D82BD8](currentUpdateOperation);
    MEMORY[0x277D82BD8](currentRefreshScanOperation);
    MEMORY[0x277D82BD8](currentFullScanOperation);
    MEMORY[0x277D82BD8](betaPrograms);
    if (v83)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v87)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    if (v89)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v91)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v93)
    {
      MEMORY[0x277D82BD8](v94);
    }

    if (v95)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](v65);
    v26 = 0;
    objc_storeStrong(&v82, 0);
    objc_storeStrong(&v85, v26);
    objc_storeStrong(&v86, v26);
    objc_storeStrong(&v97, v26);
  }

  objc_storeStrong(&oslog, 0);
  if (selfCopy->_currentUpdateOperation)
  {
    v81 = 1;
  }

  else
  {
    v80 = [(SUSettingsStatefulUIManager *)selfCopy targetedUpdateForDownload:v100];
    if (v80)
    {
      v17 = selfCopy;
      v15 = v100;
      v16 = &v72;
      v72 = MEMORY[0x277D85DD0];
      v73 = -1073741824;
      v74 = 0;
      v75 = __55__SUSettingsStatefulUIManager_client_downloadDidStart___block_invoke;
      v76 = &unk_279CB9820;
      v20 = v77;
      v77[0] = MEMORY[0x277D82BE0](selfCopy);
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
      v25 = [(SUSettingsStatefulUIManager *)selfCopy log];
      oslog = [(SUCoreLog *)v25 oslog];
      MEMORY[0x277D82BD8](v25);
      v78 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v22 = oslog;
        *v23 = v78;
        v24 = v103;
        __os_log_helper_16_2_1_8_32(v103, v70);
        _os_log_error_impl(&dword_26AC94000, v22, v23[0], "%s: Could not resolve the targeted update from the current download. Skipping on the downloadDidStart event and performing a new scan instead.", v24, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      [(SUSettingsStatefulUIManager *)selfCopy checkForUpdatesInBackground];
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

- (void)client:(id)client downloadProgressDidChange:(id)change
{
  v40 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v35 = 0;
  objc_storeStrong(&v35, change);
  if ([(SUSettingsStatefulUIManager *)selfCopy currentState]== 4)
  {
    progress = [v35 progress];
    [progress normalizedPercentComplete];
    v32 = v4;
    phase = [progress phase];
    v15 = [(SUSettingsStatefulUIManager *)selfCopy log];
    oslog = [(SUCoreLog *)v15 oslog];
    MEMORY[0x277D82BD8](v15);
    v29 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      type = v29;
      descriptor = [v35 descriptor];
      humanReadableUpdateName = [descriptor humanReadableUpdateName];
      v8 = MEMORY[0x277D82BE0](humanReadableUpdateName);
      v28 = v8;
      *&v9 = v32;
      v10 = phase;
      [progress timeRemaining];
      __os_log_helper_16_2_6_8_32_8_66_8_0_8_66_8_0_8_0(v39, "[SUSettingsStatefulUIManager client:downloadProgressDidChange:]", v8, v9, v10, v5, v35);
      _os_log_impl(&dword_26AC94000, log, type, "%s [->%{public}@]: progress: %.02f; phase: %{public}@; time remaining: %f, download: %p", v39, 0x3Eu);
      MEMORY[0x277D82BD8](humanReadableUpdateName);
      MEMORY[0x277D82BD8](descriptor);
      objc_storeStrong(&v28, 0);
    }

    objc_storeStrong(&oslog, 0);
    [(SUSettingsStatefulUIManager *)selfCopy setCurrentDownload:v35];
    v27 = [(SUSettingsStatefulUIManager *)selfCopy targetedUpdateForDownload:v35];
    if (v27)
    {
      [v27 updateStateFromProgressedDownload:v35];
      v6 = selfCopy;
      v17 = MEMORY[0x277D85DD0];
      v18 = -1073741824;
      v19 = 0;
      v20 = __64__SUSettingsStatefulUIManager_client_downloadProgressDidChange___block_invoke;
      v21 = &unk_279CB94B0;
      v22 = MEMORY[0x277D82BE0](selfCopy);
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
      v7 = [(SUSettingsStatefulUIManager *)selfCopy log];
      oslog2 = [(SUCoreLog *)v7 oslog];
      MEMORY[0x277D82BD8](v7);
      v25 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_32(v38, "[SUSettingsStatefulUIManager client:downloadProgressDidChange:]");
        _os_log_error_impl(&dword_26AC94000, oslog2, v25, "%s: Could not resolve the targeted update from the current download. Skipping on the downloadProgressDidChange event and performing a new scan instead.", v38, 0xCu);
      }

      objc_storeStrong(&oslog2, 0);
      [(SUSettingsStatefulUIManager *)selfCopy checkForAvailableUpdates];
      v34 = 1;
    }

    objc_storeStrong(&v27, 0);
    objc_storeStrong(&phase, 0);
    objc_storeStrong(&progress, 0);
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

- (void)client:(id)client downloadDidFinish:(id)finish withInstallPolicy:(id)policy
{
  obj = finish;
  policyCopy = policy;
  v71 = "[SUSettingsStatefulUIManager client:downloadDidFinish:withInstallPolicy:]";
  v108 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v103 = 0;
  objc_storeStrong(&v103, obj);
  v102 = 0;
  objc_storeStrong(&v102, policyCopy);
  v70 = [(SUSettingsStatefulUIManager *)selfCopy log];
  oslog = [(SUCoreLog *)v70 oslog];
  MEMORY[0x277D82BD8](v70);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v65 = type;
    v66 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
    v67 = MEMORY[0x277D82BE0](v66);
    v99 = v67;
    currentState = [(SUSettingsStatefulUIManager *)selfCopy currentState];
    delegate = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    v97 = 0;
    v95 = 0;
    if (delegate)
    {
      delegate2 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
    delegate3 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    scanError = [(SUSettingsStatefulUIManager *)selfCopy scanError];
    preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
    alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
    currentDownload = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    v93 = 0;
    v91 = 0;
    v89 = 0;
    if (currentDownload)
    {
      currentDownload2 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v54 = 1;
      v93 = 1;
      descriptor = [(SUDownload *)currentDownload2 descriptor];
      v91 = 1;
      humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v89 = 1;
      v55 = humanReadableUpdateName;
    }

    else
    {
      v55 = @"(null)";
    }

    v41 = v55;
    currentDownload3 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    performThirdPartyScan = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
    v48 = "NO";
    v7 = "YES";
    v49 = "YES";
    if (!performThirdPartyScan)
    {
      v7 = "NO";
    }

    v43 = v7;
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
    v9 = v49;
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v9 = v48;
    }

    v44 = v9;
    hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
    v11 = v49;
    if (!hidingPreferredDescriptor)
    {
      v11 = v48;
    }

    v45 = v11;
    humanReadableUpdateName2 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v47 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
    v88 = v47;
    hidingAlternateDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
    v13 = v49;
    if (!hidingAlternateDescriptor)
    {
      v13 = v48;
    }

    v50 = v13;
    humanReadableUpdateName3 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v52 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
    v87 = v52;
    enrolledBetaProgram = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
    v85 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v85 = 1;
      programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v28 = programID;
    betaPrograms = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
    v29 = [(NSArray *)betaPrograms count];
    currentFullScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
    currentRefreshScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
    currentUpdateOperation = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
    auxiliaryOperations = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
    v30 = [(NSMutableSet *)auxiliaryOperations count];
    descriptor2 = [v103 descriptor];
    humanReadableUpdateName4 = [descriptor2 humanReadableUpdateName];
    v84 = MEMORY[0x277D82BE0](humanReadableUpdateName4);
    v31 = &v14;
    buf = v107;
    __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_0(v107, v71, v67, currentState, v56, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v41, currentDownload3, v43, v44, v45, v47, v50, v52, programID, v29, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, v30, v84, v103);
    _os_log_impl(&dword_26AC94000, log, v65[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to download an update targeting %{public}@: (%p)", buf, 0xF2u);
    MEMORY[0x277D82BD8](humanReadableUpdateName4);
    MEMORY[0x277D82BD8](descriptor2);
    MEMORY[0x277D82BD8](auxiliaryOperations);
    MEMORY[0x277D82BD8](currentUpdateOperation);
    MEMORY[0x277D82BD8](currentRefreshScanOperation);
    MEMORY[0x277D82BD8](currentFullScanOperation);
    MEMORY[0x277D82BD8](betaPrograms);
    if (v85)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v89)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    if (v91)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v93)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v95)
    {
      MEMORY[0x277D82BD8](v96);
    }

    if (v97)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](v66);
    v27 = 0;
    objc_storeStrong(&v84, 0);
    objc_storeStrong(&v87, v27);
    objc_storeStrong(&v88, v27);
    objc_storeStrong(&v99, v27);
  }

  objc_storeStrong(&oslog, 0);
  if (selfCopy->_currentUpdateOperation)
  {
    v83 = 1;
  }

  else
  {
    v82 = [(SUSettingsStatefulUIManager *)selfCopy targetedUpdateForDownload:v103];
    if (v82)
    {
      v18 = selfCopy;
      v16 = v103;
      v17 = &v74;
      v74 = MEMORY[0x277D85DD0];
      v75 = -1073741824;
      v76 = 0;
      v77 = __74__SUSettingsStatefulUIManager_client_downloadDidFinish_withInstallPolicy___block_invoke;
      v78 = &unk_279CB9820;
      v21 = v79;
      v79[0] = MEMORY[0x277D82BE0](selfCopy);
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
      v26 = [(SUSettingsStatefulUIManager *)selfCopy log];
      oslog = [(SUCoreLog *)v26 oslog];
      MEMORY[0x277D82BD8](v26);
      v80 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v23 = oslog;
        *v24 = v80;
        v25 = v106;
        __os_log_helper_16_2_1_8_32(v106, v71);
        _os_log_error_impl(&dword_26AC94000, v23, v24[0], "%s: Could not resolve the targeted update from the current download. Skipping on the downloadDidStart event and performing a new scan instead.", v25, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      [(SUSettingsStatefulUIManager *)selfCopy checkForAvailableUpdates];
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

- (void)client:(id)client downloadWasInvalidatedForNewUpdatesAvailable:(id)available
{
  v62 = &v81;
  obj = available;
  v61 = "[SUSettingsStatefulUIManager client:downloadWasInvalidatedForNewUpdatesAvailable:]";
  v85 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v81 = 0;
  objc_storeStrong(&v81, obj);
  v60 = [(SUSettingsStatefulUIManager *)selfCopy log];
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
    currentState = [v62[3] currentState];
    delegate = [v62[3] delegate];
    v76 = 0;
    v74 = 0;
    if (delegate)
    {
      delegate2 = [v62[3] delegate];
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
    delegate3 = [v62[3] delegate];
    scanError = [v62[3] scanError];
    preferredStatefulDescriptor = [v62[3] preferredStatefulDescriptor];
    alternateStatefulDescriptor = [v62[3] alternateStatefulDescriptor];
    currentDownload = [v62[3] currentDownload];
    v72 = 0;
    v70 = 0;
    v68 = 0;
    if (currentDownload)
    {
      currentDownload2 = [v62[3] currentDownload];
      v44 = 1;
      v72 = 1;
      descriptor = [currentDownload2 descriptor];
      v70 = 1;
      humanReadableUpdateName = [descriptor humanReadableUpdateName];
      v68 = 1;
      v45 = humanReadableUpdateName;
    }

    else
    {
      v45 = @"(null)";
    }

    v31 = v45;
    currentDownload3 = [v62[3] currentDownload];
    performThirdPartyScan = [v62[3] performThirdPartyScan];
    v38 = "NO";
    v6 = "YES";
    v39 = "YES";
    if ((performThirdPartyScan & 1) == 0)
    {
      v6 = "NO";
    }

    v33 = v6;
    isTargetedUpdateScheduledForAutoInstall = [v62[3] isTargetedUpdateScheduledForAutoInstall];
    v8 = v39;
    if ((isTargetedUpdateScheduledForAutoInstall & 1) == 0)
    {
      v8 = v38;
    }

    v34 = v8;
    hidingPreferredDescriptor = [v62[3] hidingPreferredDescriptor];
    v10 = v39;
    if ((hidingPreferredDescriptor & 1) == 0)
    {
      v10 = v38;
    }

    v35 = v10;
    humanReadableUpdateName2 = [*(v62[3] + 32) humanReadableUpdateName];
    v37 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
    v67 = v37;
    hidingAlternateDescriptor = [v62[3] hidingAlternateDescriptor];
    v12 = v39;
    if ((hidingAlternateDescriptor & 1) == 0)
    {
      v12 = v38;
    }

    v40 = v12;
    humanReadableUpdateName3 = [*(v62[3] + 33) humanReadableUpdateName];
    v42 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
    v66 = v42;
    enrolledBetaProgram = [v62[3] enrolledBetaProgram];
    v64 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [v62[3] enrolledBetaProgram];
      v64 = 1;
      programID = [enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v21 = programID;
    betaPrograms = [v62[3] betaPrograms];
    v22 = [betaPrograms count];
    currentFullScanOperation = [v62[3] currentFullScanOperation];
    currentRefreshScanOperation = [v62[3] currentRefreshScanOperation];
    currentUpdateOperation = [v62[3] currentUpdateOperation];
    auxiliaryOperations = [v62[3] auxiliaryOperations];
    v13 = [auxiliaryOperations count];
    v14 = *v62;
    v23 = &v17;
    buf = v84;
    __os_log_helper_16_2_23_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66(v84, v61, v57, currentState, v46, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v31, currentDownload3, v33, v34, v35, v37, v40, v42, programID, v22, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, v13, v14);
    _os_log_impl(&dword_26AC94000, log, v55[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nDownload was invalidated for new updates available: %{public}@", buf, 0xE8u);
    MEMORY[0x277D82BD8](auxiliaryOperations);
    MEMORY[0x277D82BD8](currentUpdateOperation);
    MEMORY[0x277D82BD8](currentRefreshScanOperation);
    MEMORY[0x277D82BD8](currentFullScanOperation);
    MEMORY[0x277D82BD8](betaPrograms);
    if (v64)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v68)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    if (v70)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v72)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v74)
    {
      MEMORY[0x277D82BD8](v75);
    }

    if (v76)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
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

- (void)client:(id)client downloadDidFail:(id)fail withError:(id)error
{
  obj = fail;
  errorCopy = error;
  v75 = "[SUSettingsStatefulUIManager client:downloadDidFail:withError:]";
  v113 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v109 = 0;
  objc_storeStrong(&v109, obj);
  v108 = 0;
  objc_storeStrong(&v108, errorCopy);
  v74 = [(SUSettingsStatefulUIManager *)selfCopy log];
  oslog = [(SUCoreLog *)v74 oslog];
  MEMORY[0x277D82BD8](v74);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v69 = type;
    v70 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
    v71 = MEMORY[0x277D82BE0](v70);
    v105 = v71;
    currentState = [(SUSettingsStatefulUIManager *)selfCopy currentState];
    delegate = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    v103 = 0;
    v101 = 0;
    if (delegate)
    {
      delegate2 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
    delegate3 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    scanError = [(SUSettingsStatefulUIManager *)selfCopy scanError];
    preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
    alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
    currentDownload = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    v99 = 0;
    v97 = 0;
    v95 = 0;
    if (currentDownload)
    {
      currentDownload2 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v58 = 1;
      v99 = 1;
      descriptor = [(SUDownload *)currentDownload2 descriptor];
      v97 = 1;
      humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v95 = 1;
      v59 = humanReadableUpdateName;
    }

    else
    {
      v59 = @"(null)";
    }

    v45 = v59;
    currentDownload3 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    performThirdPartyScan = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
    v52 = "NO";
    v7 = "YES";
    v53 = "YES";
    if (!performThirdPartyScan)
    {
      v7 = "NO";
    }

    v47 = v7;
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
    v9 = v53;
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v9 = v52;
    }

    v48 = v9;
    hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
    v11 = v53;
    if (!hidingPreferredDescriptor)
    {
      v11 = v52;
    }

    v49 = v11;
    humanReadableUpdateName2 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v51 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
    v94 = v51;
    hidingAlternateDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
    v13 = v53;
    if (!hidingAlternateDescriptor)
    {
      v13 = v52;
    }

    v54 = v13;
    humanReadableUpdateName3 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v56 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
    v93 = v56;
    enrolledBetaProgram = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
    v91 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v91 = 1;
      programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v32 = programID;
    betaPrograms = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
    v33 = [(NSArray *)betaPrograms count];
    currentFullScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
    currentRefreshScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
    currentUpdateOperation = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
    auxiliaryOperations = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
    v34 = [(NSMutableSet *)auxiliaryOperations count];
    descriptor2 = [v109 descriptor];
    humanReadableUpdateName4 = [descriptor2 humanReadableUpdateName];
    v90 = MEMORY[0x277D82BE0](humanReadableUpdateName4);
    v35 = &v16;
    buf = v112;
    __os_log_helper_16_2_25_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_0_8_66(v112, v75, v71, currentState, v60, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v45, currentDownload3, v47, v48, v49, v51, v54, v56, programID, v33, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, v34, v90, v109, v108);
    _os_log_impl(&dword_26AC94000, log, v69[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nDownload of update %{public}@ (%p) failed: %{public}@", buf, 0xFCu);
    MEMORY[0x277D82BD8](humanReadableUpdateName4);
    MEMORY[0x277D82BD8](descriptor2);
    MEMORY[0x277D82BD8](auxiliaryOperations);
    MEMORY[0x277D82BD8](currentUpdateOperation);
    MEMORY[0x277D82BD8](currentRefreshScanOperation);
    MEMORY[0x277D82BD8](currentFullScanOperation);
    MEMORY[0x277D82BD8](betaPrograms);
    if (v91)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v95)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    if (v97)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v99)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v101)
    {
      MEMORY[0x277D82BD8](v102);
    }

    if (v103)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](v70);
    v31 = 0;
    objc_storeStrong(&v90, 0);
    objc_storeStrong(&v93, v31);
    objc_storeStrong(&v94, v31);
    objc_storeStrong(&v105, v31);
  }

  objc_storeStrong(&oslog, 0);
  v89 = [(SUSettingsStatefulUIManager *)selfCopy targetedUpdateForDownload:v109];
  domain = [v108 domain];
  v29 = getSUErrorDomain();
  v14 = [domain isEqualToString:?];
  v87 = 0;
  v85 = 0;
  bOOLValue = 0;
  if (v14)
  {
    code = [v108 code];
    bOOLValue = 0;
    if (code == 16)
    {
      userInfo = [v108 userInfo];
      v27 = 1;
      v87 = 1;
      v86 = [userInfo objectForKey:*MEMORY[0x277D64A90]];
      v85 = v27 & 1;
      bOOLValue = [v86 BOOLValue];
    }
  }

  v26 = bOOLValue;
  if (v85)
  {
    MEMORY[0x277D82BD8](v86);
  }

  if (v87)
  {
    MEMORY[0x277D82BD8](userInfo);
  }

  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](domain);
  if ((v26 & 1) != 0 && v89)
  {
    [v89 updateStateFromProgressedDownload:0];
    v84 = 1;
  }

  else
  {
    [(SUManagerClient *)selfCopy->_suClient destroyInstallationKeybag];
    [(SUSettingsStatefulUIManager *)selfCopy checkForUpdatesInBackground];
    v20 = selfCopy;
    v18 = sel_statefulUIManager_didFailToDownloadUpdateForDescriptor_withError_download_;
    v19 = &v78;
    v78 = MEMORY[0x277D85DD0];
    v79 = -1073741824;
    v80 = 0;
    v81 = __64__SUSettingsStatefulUIManager_client_downloadDidFail_withError___block_invoke;
    v82 = &unk_279CB9848;
    v24 = v83;
    v83[0] = MEMORY[0x277D82BE0](selfCopy);
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

- (void)client:(id)client clearingSpaceForDownload:(id)download clearingSpace:(BOOL)space
{
  obj = download;
  spaceCopy = space;
  v66 = "[SUSettingsStatefulUIManager client:clearingSpaceForDownload:clearingSpace:]";
  v98 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v94 = 0;
  objc_storeStrong(&v94, obj);
  v93 = spaceCopy;
  v65 = [(SUSettingsStatefulUIManager *)selfCopy log];
  oslog = [(SUCoreLog *)v65 oslog];
  MEMORY[0x277D82BD8](v65);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v60 = type;
    v61 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
    v62 = MEMORY[0x277D82BE0](v61);
    v90 = v62;
    currentState = [(SUSettingsStatefulUIManager *)selfCopy currentState];
    delegate = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    v88 = 0;
    v86 = 0;
    if (delegate)
    {
      delegate2 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
    delegate3 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    scanError = [(SUSettingsStatefulUIManager *)selfCopy scanError];
    preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
    alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
    currentDownload = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    v84 = 0;
    v82 = 0;
    v80 = 0;
    if (currentDownload)
    {
      currentDownload2 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v49 = 1;
      v84 = 1;
      descriptor = [(SUDownload *)currentDownload2 descriptor];
      v82 = 1;
      humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v80 = 1;
      v50 = humanReadableUpdateName;
    }

    else
    {
      v50 = @"(null)";
    }

    v36 = v50;
    currentDownload3 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    performThirdPartyScan = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
    v43 = "NO";
    v7 = "YES";
    v44 = "YES";
    if (!performThirdPartyScan)
    {
      v7 = "NO";
    }

    v38 = v7;
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
    v9 = v44;
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v9 = v43;
    }

    v39 = v9;
    hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
    v11 = v44;
    if (!hidingPreferredDescriptor)
    {
      v11 = v43;
    }

    v40 = v11;
    humanReadableUpdateName2 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v42 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
    v79 = v42;
    hidingAlternateDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
    v13 = v44;
    if (!hidingAlternateDescriptor)
    {
      v13 = v43;
    }

    v45 = v13;
    humanReadableUpdateName3 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v47 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
    v78 = v47;
    enrolledBetaProgram = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
    v76 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v76 = 1;
      programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v23 = programID;
    betaPrograms = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
    v24 = [(NSArray *)betaPrograms count];
    currentFullScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
    currentRefreshScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
    currentUpdateOperation = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
    auxiliaryOperations = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
    v25 = [(NSMutableSet *)auxiliaryOperations count];
    descriptor2 = [v94 descriptor];
    humanReadableUpdateName4 = [descriptor2 humanReadableUpdateName];
    v14 = MEMORY[0x277D82BE0](humanReadableUpdateName4);
    v75 = v14;
    v15 = "YES";
    if (!v93)
    {
      v15 = "NO";
    }

    v26 = &v16;
    buf = v97;
    __os_log_helper_16_2_25_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_0_8_32(v97, v66, v62, currentState, v51, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v36, currentDownload3, v38, v39, v40, v42, v45, v47, v23, v24, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, v25, v14, v94, v15);
    _os_log_impl(&dword_26AC94000, log, v60[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nClearing space for update %{public}@ (%p): %s", buf, 0xFCu);
    MEMORY[0x277D82BD8](humanReadableUpdateName4);
    MEMORY[0x277D82BD8](descriptor2);
    MEMORY[0x277D82BD8](auxiliaryOperations);
    MEMORY[0x277D82BD8](currentUpdateOperation);
    MEMORY[0x277D82BD8](currentRefreshScanOperation);
    MEMORY[0x277D82BD8](currentFullScanOperation);
    MEMORY[0x277D82BD8](betaPrograms);
    if (v76)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v80)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    if (v82)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v84)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v86)
    {
      MEMORY[0x277D82BD8](v87);
    }

    if (v88)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](v61);
    v22 = 0;
    objc_storeStrong(&v75, 0);
    objc_storeStrong(&v78, v22);
    objc_storeStrong(&v79, v22);
    objc_storeStrong(&v90, v22);
  }

  objc_storeStrong(&oslog, 0);
  [(SUSettingsStatefulUIManager *)selfCopy setClearingSpaceForDownload:1];
  v19 = selfCopy;
  v17 = sel_statefulUIManagerDidRefreshState_;
  v18 = &v69;
  v69 = MEMORY[0x277D85DD0];
  v70 = -1073741824;
  v71 = 0;
  v72 = __77__SUSettingsStatefulUIManager_client_clearingSpaceForDownload_clearingSpace___block_invoke;
  v73 = &unk_279CB93E8;
  v20 = &v74;
  v74 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)client:(id)client installDidStart:(id)start
{
  obj = start;
  v64 = "[SUSettingsStatefulUIManager client:installDidStart:]";
  v96 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v92 = 0;
  objc_storeStrong(&v92, obj);
  v63 = [(SUSettingsStatefulUIManager *)selfCopy log];
  oslog = [(SUCoreLog *)v63 oslog];
  MEMORY[0x277D82BD8](v63);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v58 = type;
    v59 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
    v60 = MEMORY[0x277D82BE0](v59);
    v89 = v60;
    currentState = [(SUSettingsStatefulUIManager *)selfCopy currentState];
    delegate = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    v87 = 0;
    v85 = 0;
    if (delegate)
    {
      delegate2 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
    delegate3 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    scanError = [(SUSettingsStatefulUIManager *)selfCopy scanError];
    preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
    alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
    currentDownload = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    v83 = 0;
    v81 = 0;
    v79 = 0;
    if (currentDownload)
    {
      currentDownload2 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v47 = 1;
      v83 = 1;
      descriptor = [(SUDownload *)currentDownload2 descriptor];
      v81 = 1;
      humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v79 = 1;
      v48 = humanReadableUpdateName;
    }

    else
    {
      v48 = @"(null)";
    }

    v34 = v48;
    currentDownload3 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    performThirdPartyScan = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
    v41 = "NO";
    v6 = "YES";
    v42 = "YES";
    if (!performThirdPartyScan)
    {
      v6 = "NO";
    }

    v36 = v6;
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
    v8 = v42;
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v8 = v41;
    }

    v37 = v8;
    hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
    v10 = v42;
    if (!hidingPreferredDescriptor)
    {
      v10 = v41;
    }

    v38 = v10;
    humanReadableUpdateName2 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v40 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
    v78 = v40;
    hidingAlternateDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
    v12 = v42;
    if (!hidingAlternateDescriptor)
    {
      v12 = v41;
    }

    v43 = v12;
    humanReadableUpdateName3 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v45 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
    v77 = v45;
    enrolledBetaProgram = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
    v75 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v75 = 1;
      programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v22 = programID;
    betaPrograms = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
    v23 = [(NSArray *)betaPrograms count];
    currentFullScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
    currentRefreshScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
    currentUpdateOperation = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
    auxiliaryOperations = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
    v24 = [(NSMutableSet *)auxiliaryOperations count];
    humanReadableUpdateName4 = [v92 humanReadableUpdateName];
    v74 = MEMORY[0x277D82BE0](humanReadableUpdateName4);
    v25 = &v13;
    buf = v95;
    __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_0(v95, v64, v60, currentState, v49, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v34, currentDownload3, v36, v37, v38, v40, v43, v45, programID, v23, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, v24, v74, v92);
    _os_log_impl(&dword_26AC94000, log, v58[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nStarting to install an update targeting %{public}@ (%p)", buf, 0xF2u);
    MEMORY[0x277D82BD8](humanReadableUpdateName4);
    MEMORY[0x277D82BD8](auxiliaryOperations);
    MEMORY[0x277D82BD8](currentUpdateOperation);
    MEMORY[0x277D82BD8](currentRefreshScanOperation);
    MEMORY[0x277D82BD8](currentFullScanOperation);
    MEMORY[0x277D82BD8](betaPrograms);
    if (v75)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v79)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    if (v81)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v83)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v85)
    {
      MEMORY[0x277D82BD8](v86);
    }

    if (v87)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](v59);
    v21 = 0;
    objc_storeStrong(&v74, 0);
    objc_storeStrong(&v77, v21);
    objc_storeStrong(&v78, v21);
    objc_storeStrong(&v89, v21);
  }

  objc_storeStrong(&oslog, 0);
  if (selfCopy->_currentUpdateOperation)
  {
    v73 = 1;
  }

  else
  {
    v72 = [(SUSettingsStatefulUIManager *)selfCopy targetedUpdateMatchingDescriptor:v92];
    if (v72)
    {
      v17 = selfCopy;
      v15 = sel_statefulUIManager_didStartInstallingUpdateWithDescriptor_;
      v16 = &v66;
      v66 = MEMORY[0x277D85DD0];
      v67 = -1073741824;
      v68 = 0;
      v69 = __54__SUSettingsStatefulUIManager_client_installDidStart___block_invoke;
      v70 = &unk_279CB9410;
      v19 = v71;
      v71[0] = MEMORY[0x277D82BE0](selfCopy);
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
      [(SUSettingsStatefulUIManager *)selfCopy checkForAvailableUpdates];
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

- (void)client:(id)client installDidFail:(id)fail withError:(id)error
{
  v62 = &v81;
  obj = fail;
  errorCopy = error;
  v60 = "[SUSettingsStatefulUIManager client:installDidFail:withError:]";
  v86 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v82 = 0;
  objc_storeStrong(&v82, obj);
  v81 = 0;
  objc_storeStrong(&v81, errorCopy);
  v59 = [(SUSettingsStatefulUIManager *)selfCopy log];
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
    currentState = [v62[4] currentState];
    delegate = [v62[4] delegate];
    v76 = 0;
    v74 = 0;
    if (delegate)
    {
      delegate2 = [v62[4] delegate];
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
    delegate3 = [v62[4] delegate];
    scanError = [v62[4] scanError];
    preferredStatefulDescriptor = [v62[4] preferredStatefulDescriptor];
    alternateStatefulDescriptor = [v62[4] alternateStatefulDescriptor];
    currentDownload = [v62[4] currentDownload];
    v72 = 0;
    v70 = 0;
    v68 = 0;
    if (currentDownload)
    {
      currentDownload2 = [v62[4] currentDownload];
      v43 = 1;
      v72 = 1;
      descriptor = [currentDownload2 descriptor];
      v70 = 1;
      humanReadableUpdateName = [descriptor humanReadableUpdateName];
      v68 = 1;
      v44 = humanReadableUpdateName;
    }

    else
    {
      v44 = @"(null)";
    }

    v30 = v44;
    currentDownload3 = [v62[4] currentDownload];
    performThirdPartyScan = [v62[4] performThirdPartyScan];
    v37 = "NO";
    v7 = "YES";
    v38 = "YES";
    if ((performThirdPartyScan & 1) == 0)
    {
      v7 = "NO";
    }

    v32 = v7;
    isTargetedUpdateScheduledForAutoInstall = [v62[4] isTargetedUpdateScheduledForAutoInstall];
    v9 = v38;
    if ((isTargetedUpdateScheduledForAutoInstall & 1) == 0)
    {
      v9 = v37;
    }

    v33 = v9;
    hidingPreferredDescriptor = [v62[4] hidingPreferredDescriptor];
    v11 = v38;
    if ((hidingPreferredDescriptor & 1) == 0)
    {
      v11 = v37;
    }

    v34 = v11;
    humanReadableUpdateName2 = [*(v62[4] + 32) humanReadableUpdateName];
    v36 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
    v67 = v36;
    hidingAlternateDescriptor = [v62[4] hidingAlternateDescriptor];
    v13 = v38;
    if ((hidingAlternateDescriptor & 1) == 0)
    {
      v13 = v37;
    }

    v39 = v13;
    humanReadableUpdateName3 = [*(v62[4] + 33) humanReadableUpdateName];
    v41 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
    v66 = v41;
    enrolledBetaProgram = [v62[4] enrolledBetaProgram];
    v64 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [v62[4] enrolledBetaProgram];
      v64 = 1;
      programID = [enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v20 = programID;
    betaPrograms = [v62[4] betaPrograms];
    v21 = [betaPrograms count];
    currentFullScanOperation = [v62[4] currentFullScanOperation];
    currentRefreshScanOperation = [v62[4] currentRefreshScanOperation];
    currentUpdateOperation = [v62[4] currentUpdateOperation];
    auxiliaryOperations = [v62[4] auxiliaryOperations];
    v14 = [auxiliaryOperations count];
    v15 = v62[1];
    v16 = *v62;
    v22 = &v17;
    buf = v85;
    __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_66(v85, v60, v56, currentState, v45, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v30, currentDownload3, v32, v33, v34, v36, v39, v41, programID, v21, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, v14, v15, v16);
    _os_log_impl(&dword_26AC94000, log, v54[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFailed to install an update. Error: %{public}@; Descriptor: %{public}@", buf, 0xF2u);
    MEMORY[0x277D82BD8](auxiliaryOperations);
    MEMORY[0x277D82BD8](currentUpdateOperation);
    MEMORY[0x277D82BD8](currentRefreshScanOperation);
    MEMORY[0x277D82BD8](currentFullScanOperation);
    MEMORY[0x277D82BD8](betaPrograms);
    if (v64)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v68)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    if (v70)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v72)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v74)
    {
      MEMORY[0x277D82BD8](v75);
    }

    if (v76)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
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

- (void)autoInstallOperationWasCancelled:(id)cancelled
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cancelled);
  [(SUSettingsStatefulUIManager *)selfCopy setIsAutoUpdateScheduled:0];
  [(SUSettingsStatefulUIManager *)selfCopy setCurrentAutoInstallOperation:0];
  v3 = selfCopy;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __64__SUSettingsStatefulUIManager_autoInstallOperationWasCancelled___block_invoke;
  v8 = &unk_279CB93E8;
  v9 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)autoInstallOperationDidConsent:(id)consent
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, consent);
  objc_storeStrong(location, 0);
}

- (void)autoInstallOperationIsReadyToInstall:(id)install withResponse:(id)response
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, install);
  v5 = 0;
  objc_storeStrong(&v5, response);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)autoInstallOperationPasscodePolicyDidChange:(id)change passcodePolicyType:(unint64_t)type
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  objc_storeStrong(location, 0);
}

- (void)batteryStateChanged:(id)changed
{
  v60 = &v80;
  v57 = "[SUSettingsStatefulUIManager batteryStateChanged:]";
  v83 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changed);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  batteryState = [currentDevice batteryState];
  MEMORY[0x277D82BD8](currentDevice);
  v80 = batteryState;
  v61 = 1;
  if (batteryState != 2)
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
    currentState = [v60[3] currentState];
    delegate = [v60[3] delegate];
    v74 = 0;
    v72 = 0;
    if (delegate)
    {
      delegate2 = [v60[3] delegate];
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
    delegate3 = [v60[3] delegate];
    scanError = [v60[3] scanError];
    preferredStatefulDescriptor = [v60[3] preferredStatefulDescriptor];
    alternateStatefulDescriptor = [v60[3] alternateStatefulDescriptor];
    currentDownload = [v60[3] currentDownload];
    v70 = 0;
    v68 = 0;
    v66 = 0;
    if (currentDownload)
    {
      currentDownload2 = [v60[3] currentDownload];
      v40 = 1;
      v70 = 1;
      descriptor = [currentDownload2 descriptor];
      v68 = 1;
      humanReadableUpdateName = [descriptor humanReadableUpdateName];
      v66 = 1;
      v41 = humanReadableUpdateName;
    }

    else
    {
      v41 = @"(null)";
    }

    v27 = v41;
    currentDownload3 = [v60[3] currentDownload];
    performThirdPartyScan = [v60[3] performThirdPartyScan];
    v34 = "NO";
    v5 = "YES";
    v35 = "YES";
    if ((performThirdPartyScan & 1) == 0)
    {
      v5 = "NO";
    }

    v29 = v5;
    isTargetedUpdateScheduledForAutoInstall = [v60[3] isTargetedUpdateScheduledForAutoInstall];
    v7 = v35;
    if ((isTargetedUpdateScheduledForAutoInstall & 1) == 0)
    {
      v7 = v34;
    }

    v30 = v7;
    hidingPreferredDescriptor = [v60[3] hidingPreferredDescriptor];
    v9 = v35;
    if ((hidingPreferredDescriptor & 1) == 0)
    {
      v9 = v34;
    }

    v31 = v9;
    humanReadableUpdateName2 = [*(v60[3] + 256) humanReadableUpdateName];
    v33 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
    v65 = v33;
    hidingAlternateDescriptor = [v60[3] hidingAlternateDescriptor];
    v11 = v35;
    if ((hidingAlternateDescriptor & 1) == 0)
    {
      v11 = v34;
    }

    v36 = v11;
    humanReadableUpdateName3 = [*(v60[3] + 264) humanReadableUpdateName];
    v38 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
    v64 = v38;
    enrolledBetaProgram = [v60[3] enrolledBetaProgram];
    v62 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [v60[3] enrolledBetaProgram];
      v62 = 1;
      programID = [enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v17 = programID;
    betaPrograms = [v60[3] betaPrograms];
    v18 = [betaPrograms count];
    currentFullScanOperation = [v60[3] currentFullScanOperation];
    currentRefreshScanOperation = [v60[3] currentRefreshScanOperation];
    currentUpdateOperation = [v60[3] currentUpdateOperation];
    auxiliaryOperations = [v60[3] auxiliaryOperations];
    v12 = [auxiliaryOperations count];
    v13 = *(v60[3] + 13) & 1;
    v19 = &v15;
    buf = v82;
    __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_4_0_4_0(v82, v57, v53, currentState, v42, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v27, currentDownload3, v29, v30, v31, v33, v36, v38, programID, v18, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, v12, v13, v79);
    _os_log_impl(&dword_26AC94000, log, v51[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBattery state changed: %d -> %d", buf, 0xEAu);
    MEMORY[0x277D82BD8](auxiliaryOperations);
    MEMORY[0x277D82BD8](currentUpdateOperation);
    MEMORY[0x277D82BD8](currentRefreshScanOperation);
    MEMORY[0x277D82BD8](currentFullScanOperation);
    MEMORY[0x277D82BD8](betaPrograms);
    if (v62)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v66)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    if (v68)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v70)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v72)
    {
      MEMORY[0x277D82BD8](v73);
    }

    if (v74)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
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

- (void)batteryLevelChanged:(id)changed
{
  v62 = v81;
  v60 = "[SUSettingsStatefulUIManager batteryLevelChanged:]";
  v85 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changed);
  v63 = 0.2;
  v81[2] = 1045220557;
  v81[1] = 0.5;
  v81[0] = LODWORD(selfCopy->_batteryLevel);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  [currentDevice batteryLevel];
  v3 = currentDevice;
  selfCopy->_batteryLevel = v4;
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
      currentState = [*(v62 + 7) currentState];
      delegate = [*(v62 + 7) delegate];
      v76 = 0;
      v74 = 0;
      if (delegate)
      {
        delegate2 = [*(v62 + 7) delegate];
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
      delegate3 = [*(v62 + 7) delegate];
      scanError = [*(v62 + 7) scanError];
      preferredStatefulDescriptor = [*(v62 + 7) preferredStatefulDescriptor];
      alternateStatefulDescriptor = [*(v62 + 7) alternateStatefulDescriptor];
      currentDownload = [*(v62 + 7) currentDownload];
      v72 = 0;
      v70 = 0;
      v68 = 0;
      if (currentDownload)
      {
        currentDownload2 = [*(v62 + 7) currentDownload];
        v43 = 1;
        v72 = 1;
        descriptor = [currentDownload2 descriptor];
        v70 = 1;
        humanReadableUpdateName = [descriptor humanReadableUpdateName];
        v68 = 1;
        v44 = humanReadableUpdateName;
      }

      else
      {
        v44 = @"(null)";
      }

      v30 = v44;
      currentDownload3 = [*(v62 + 7) currentDownload];
      performThirdPartyScan = [*(v62 + 7) performThirdPartyScan];
      v37 = "NO";
      v8 = "YES";
      v38 = "YES";
      if ((performThirdPartyScan & 1) == 0)
      {
        v8 = "NO";
      }

      v32 = v8;
      isTargetedUpdateScheduledForAutoInstall = [*(v62 + 7) isTargetedUpdateScheduledForAutoInstall];
      v10 = v38;
      if ((isTargetedUpdateScheduledForAutoInstall & 1) == 0)
      {
        v10 = v37;
      }

      v33 = v10;
      hidingPreferredDescriptor = [*(v62 + 7) hidingPreferredDescriptor];
      v12 = v38;
      if ((hidingPreferredDescriptor & 1) == 0)
      {
        v12 = v37;
      }

      v34 = v12;
      humanReadableUpdateName2 = [*(*(v62 + 7) + 256) humanReadableUpdateName];
      v36 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
      v67 = v36;
      hidingAlternateDescriptor = [*(v62 + 7) hidingAlternateDescriptor];
      v14 = v38;
      if ((hidingAlternateDescriptor & 1) == 0)
      {
        v14 = v37;
      }

      v39 = v14;
      humanReadableUpdateName3 = [*(*(v62 + 7) + 264) humanReadableUpdateName];
      v41 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
      v66 = v41;
      enrolledBetaProgram = [*(v62 + 7) enrolledBetaProgram];
      v64 = 0;
      if (enrolledBetaProgram)
      {
        enrolledBetaProgram2 = [*(v62 + 7) enrolledBetaProgram];
        v64 = 1;
        programID = [enrolledBetaProgram2 programID];
      }

      else
      {
        programID = 0;
      }

      v20 = programID;
      betaPrograms = [*(v62 + 7) betaPrograms];
      v21 = [betaPrograms count];
      currentFullScanOperation = [*(v62 + 7) currentFullScanOperation];
      currentRefreshScanOperation = [*(v62 + 7) currentRefreshScanOperation];
      currentUpdateOperation = [*(v62 + 7) currentUpdateOperation];
      auxiliaryOperations = [*(v62 + 7) auxiliaryOperations];
      v15 = [auxiliaryOperations count];
      *&v16 = *v62;
      *&v17 = *(*(v62 + 7) + 24);
      v22 = &v18;
      buf = v84;
      __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v84, v60, v56, currentState, v45, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v30, currentDownload3, v32, v33, v34, v36, v39, v41, programID, v21, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, v15, v16, v17);
      _os_log_impl(&dword_26AC94000, log, v54[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBattery level changed: %f -> %f", buf, 0xF2u);
      MEMORY[0x277D82BD8](auxiliaryOperations);
      MEMORY[0x277D82BD8](currentUpdateOperation);
      MEMORY[0x277D82BD8](currentRefreshScanOperation);
      MEMORY[0x277D82BD8](currentFullScanOperation);
      MEMORY[0x277D82BD8](betaPrograms);
      if (v64)
      {
        MEMORY[0x277D82BD8](enrolledBetaProgram2);
      }

      MEMORY[0x277D82BD8](enrolledBetaProgram);
      MEMORY[0x277D82BD8](humanReadableUpdateName3);
      MEMORY[0x277D82BD8](humanReadableUpdateName2);
      MEMORY[0x277D82BD8](currentDownload3);
      if (v68)
      {
        MEMORY[0x277D82BD8](humanReadableUpdateName);
      }

      if (v70)
      {
        MEMORY[0x277D82BD8](descriptor);
      }

      if (v72)
      {
        MEMORY[0x277D82BD8](currentDownload2);
      }

      MEMORY[0x277D82BD8](currentDownload);
      MEMORY[0x277D82BD8](alternateStatefulDescriptor);
      MEMORY[0x277D82BD8](preferredStatefulDescriptor);
      MEMORY[0x277D82BD8](scanError);
      MEMORY[0x277D82BD8](delegate3);
      if (v74)
      {
        MEMORY[0x277D82BD8](v75);
      }

      if (v76)
      {
        MEMORY[0x277D82BD8](delegate2);
      }

      MEMORY[0x277D82BD8](delegate);
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

- (void)didBecomeActive:(id)active
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, active);
  if ([(SUSettingsStatefulUIManager *)selfCopy currentState]!= 1)
  {
    [(SUSettingsStatefulUIManager *)selfCopy refreshState];
  }

  objc_storeStrong(location, 0);
}

- (void)setupFSM
{
  selfCopy = self;
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
  _generateStateTable = [objc_opt_class() _generateStateTable];
  stateTable = selfCopy->_stateTable;
  selfCopy->_stateTable = _generateStateTable;
  MEMORY[0x277D82BD8](stateTable);
  v15 = MEMORY[0x277CCACA8];
  baseDomain = [(SUSettingsStatefulUIManager *)selfCopy baseDomain];
  v16 = [v15 stringWithFormat:@"%@.stateful-ui-manager", baseDomain];
  v7 = v16;
  v8 = dispatch_queue_create([v16 UTF8String], 0);
  workQueue = selfCopy->_workQueue;
  selfCopy->_workQueue = v8;
  MEMORY[0x277D82BD8](workQueue);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](baseDomain);
  v18 = objc_alloc(MEMORY[0x277D64458]);
  v10 = [v18 initMachine:v19 withTable:selfCopy->_stateTable startingIn:@"Idle" usingDelegate:selfCopy registeringAllInfoClass:objc_opt_class()];
  managerFSM = selfCopy->_managerFSM;
  selfCopy->_managerFSM = v10;
  MEMORY[0x277D82BD8](managerFSM);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(v21, 0);
}

- (void)setupNetworkMonitoring
{
  selfCopy = self;
  v5[1] = a2;
  v5[0] = [getSUNetworkMonitorClass() sharedInstance];
  currentNetworkType = [v5[0] currentNetworkType];
  [(SUSettingsStatefulUIManager *)selfCopy setNetworkType:currentNetworkType];
  [v5[0] addObserver:selfCopy];
  v3 = SBSSpringBoardServerPort();
  MEMORY[0x26D66A030](v3, &selfCopy->_originalCellFlag, &selfCopy->_originalWifiFlag);
  v4 = SBSSpringBoardServerPort();
  MEMORY[0x26D66A050](v4, 1);
  objc_storeStrong(v5, 0);
}

- (void)setupBatteryMonitoring
{
  PSSetBatteryMonitoringEnabled();
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  batteryState = [currentDevice batteryState];
  MEMORY[0x277D82BD8](currentDevice);
  v8 = 1;
  if (batteryState != 2)
  {
    v8 = batteryState == 3;
  }

  self->_connectedToPowerSource = v8;
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  [currentDevice2 batteryLevel];
  self->_batteryLevel = v2;
  MEMORY[0x277D82BD8](currentDevice2);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_batteryStateChanged_ name:*MEMORY[0x277D76870] object:?];
  MEMORY[0x277D82BD8](defaultCenter);
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_batteryLevelChanged_ name:*MEMORY[0x277D76868] object:0];
  MEMORY[0x277D82BD8](defaultCenter2);
}

- (void)setupObservers
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_didBecomeActive_ name:*MEMORY[0x277D76648] object:0];
  MEMORY[0x277D82BD8](defaultCenter);
}

- (void)checkForAvailableUpdatesWithRetriesCount:(unsigned __int8)count
{
  v58 = v78;
  v59 = "[SUSettingsStatefulUIManager checkForAvailableUpdatesWithRetriesCount:]";
  v80 = *MEMORY[0x277D85DE8];
  v78[1] = self;
  v78[0] = a2;
  countCopy = count;
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
    currentState = [v58[1] currentState];
    delegate = [v58[1] delegate];
    v72 = 0;
    v70 = 0;
    if (delegate)
    {
      delegate2 = [v58[1] delegate];
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
    delegate3 = [v58[1] delegate];
    scanError = [v58[1] scanError];
    preferredStatefulDescriptor = [v58[1] preferredStatefulDescriptor];
    alternateStatefulDescriptor = [v58[1] alternateStatefulDescriptor];
    currentDownload = [v58[1] currentDownload];
    v68 = 0;
    v66 = 0;
    v64 = 0;
    if (currentDownload)
    {
      currentDownload2 = [v58[1] currentDownload];
      v41 = 1;
      v68 = 1;
      descriptor = [currentDownload2 descriptor];
      v66 = 1;
      humanReadableUpdateName = [descriptor humanReadableUpdateName];
      v64 = 1;
      v42 = humanReadableUpdateName;
    }

    else
    {
      v42 = @"(null)";
    }

    v28 = v42;
    currentDownload3 = [v58[1] currentDownload];
    performThirdPartyScan = [v58[1] performThirdPartyScan];
    v35 = "NO";
    v5 = "YES";
    v36 = "YES";
    if ((performThirdPartyScan & 1) == 0)
    {
      v5 = "NO";
    }

    v30 = v5;
    isTargetedUpdateScheduledForAutoInstall = [v58[1] isTargetedUpdateScheduledForAutoInstall];
    v7 = v36;
    if ((isTargetedUpdateScheduledForAutoInstall & 1) == 0)
    {
      v7 = v35;
    }

    v31 = v7;
    hidingPreferredDescriptor = [v58[1] hidingPreferredDescriptor];
    v9 = v36;
    if ((hidingPreferredDescriptor & 1) == 0)
    {
      v9 = v35;
    }

    v32 = v9;
    humanReadableUpdateName2 = [*(v58[1] + 256) humanReadableUpdateName];
    v34 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
    v63 = v34;
    hidingAlternateDescriptor = [v58[1] hidingAlternateDescriptor];
    v11 = v36;
    if ((hidingAlternateDescriptor & 1) == 0)
    {
      v11 = v35;
    }

    v37 = v11;
    humanReadableUpdateName3 = [*(v58[1] + 264) humanReadableUpdateName];
    v39 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
    location = v39;
    enrolledBetaProgram = [v58[1] enrolledBetaProgram];
    v60 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [v58[1] enrolledBetaProgram];
      v60 = 1;
      programID = [enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v18 = programID;
    betaPrograms = [v58[1] betaPrograms];
    v19 = [betaPrograms count];
    currentFullScanOperation = [v58[1] currentFullScanOperation];
    currentRefreshScanOperation = [v58[1] currentRefreshScanOperation];
    currentUpdateOperation = [v58[1] currentUpdateOperation];
    auxiliaryOperations = [v58[1] auxiliaryOperations];
    v20 = &v13;
    buf = v79;
    __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v79, v59, v54, currentState, v43, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v28, currentDownload3, v30, v31, v32, v34, v37, v39, programID, v19, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, [auxiliaryOperations count]);
    _os_log_impl(&dword_26AC94000, log, v52[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\n", buf, 0xDEu);
    MEMORY[0x277D82BD8](auxiliaryOperations);
    MEMORY[0x277D82BD8](currentUpdateOperation);
    MEMORY[0x277D82BD8](currentRefreshScanOperation);
    MEMORY[0x277D82BD8](currentFullScanOperation);
    MEMORY[0x277D82BD8](betaPrograms);
    if (v60)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v64)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    if (v66)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v68)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v70)
    {
      MEMORY[0x277D82BD8](v71);
    }

    if (v72)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](v53);
    obj = 0;
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v63, obj);
    objc_storeStrong(&v74, obj);
  }

  objc_storeStrong(&oslog, 0);
  managerFSM = [v58[1] managerFSM];
  v14 = @"CheckForAvailableUpdate";
  v12 = [SUSettingsStatefulUIManagerFSMParam alloc];
  v15 = [(SUSettingsStatefulUIManagerFSMParam *)v12 initWithRetriesCount:countCopy];
  [managerFSM postEvent:v14 withInfo:?];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](managerFSM);
  *MEMORY[0x277D85DE8];
}

- (void)performFullScan:(id)scan
{
  v242 = "[SUSettingsStatefulUIManager performFullScan:]";
  v313 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scan);
  obj = MEMORY[0x277D82BE0](selfCopy);
  objc_sync_enter(obj);
  currentRefreshScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
  v239 = currentRefreshScanOperation;
  MEMORY[0x277D82BD8](v239);
  if (v239)
  {
    v238 = [(SUSettingsStatefulUIManager *)selfCopy log];
    v236 = v238;
    oslog = [v236 oslog];
    oslog = oslog;
    MEMORY[0x277D82BD8](v236);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      *v234 = type;
      currentState = [(SUSettingsStatefulUIManager *)selfCopy currentState];
      v232 = SUSettingsUIStateToString(currentState);
      v229 = v232;
      v230 = MEMORY[0x277D82BE0](v229);
      v305 = v230;
      currentState2 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
      v303 = 0;
      v301 = 0;
      delegate = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      v227 = delegate;
      if (v227)
      {
        delegate2 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
        v304 = delegate2;
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
      delegate3 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      v219 = delegate3;
      scanError = [(SUSettingsStatefulUIManager *)selfCopy scanError];
      v217 = scanError;
      preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
      v215 = preferredStatefulDescriptor;
      alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
      v213 = alternateStatefulDescriptor;
      v299 = 0;
      v297 = 0;
      v295 = 0;
      currentDownload = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v212 = currentDownload;
      if (v212)
      {
        currentDownload2 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        v300 = currentDownload2;
        v299 = 1;
        descriptor = [v300 descriptor];
        v298 = descriptor;
        v297 = 1;
        humanReadableUpdateName = [v298 humanReadableUpdateName];
        v296 = humanReadableUpdateName;
        v295 = 1;
        v208 = v296;
      }

      else
      {
        v208 = @"(null)";
      }

      v206 = v208;
      currentDownload3 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v204 = currentDownload3;
      performThirdPartyScan = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
      v3 = "YES";
      if (!performThirdPartyScan)
      {
        v3 = "NO";
      }

      v202 = v3;
      isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
      v4 = "YES";
      if (!isTargetedUpdateScheduledForAutoInstall)
      {
        v4 = "NO";
      }

      v200 = v4;
      hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
      v5 = "YES";
      if (!hidingPreferredDescriptor)
      {
        v5 = "NO";
      }

      v198 = v5;
      humanReadableUpdateName2 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v195 = humanReadableUpdateName2;
      v196 = MEMORY[0x277D82BE0](v195);
      v294 = v196;
      hidingAlternateDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
      v6 = "YES";
      if (!hidingAlternateDescriptor)
      {
        v6 = "NO";
      }

      v193 = v6;
      humanReadableUpdateName3 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v190 = humanReadableUpdateName3;
      v191 = MEMORY[0x277D82BE0](v190);
      v293 = v191;
      v291 = 0;
      enrolledBetaProgram = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v189 = enrolledBetaProgram;
      if (v189)
      {
        enrolledBetaProgram2 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
        v292 = enrolledBetaProgram2;
        v291 = 1;
        programID = [v292 programID];
        v186 = programID;
      }

      else
      {
        v186 = 0;
      }

      v184 = v186;
      betaPrograms = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
      v182 = betaPrograms;
      v183 = [v182 count];
      currentFullScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
      v179 = currentFullScanOperation;
      currentRefreshScanOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
      v177 = currentRefreshScanOperation2;
      currentUpdateOperation = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
      v175 = currentUpdateOperation;
      auxiliaryOperations = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
      v173 = auxiliaryOperations;
      v174 = [v173 count];
      v171 = &v18;
      buf = v312;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v312, v242, v230, currentState2, v221, v219, v217, v215, v213, v206, v204, v202, v200, v198, v196, v193, v191, v186, v183, v179, v177, v175, v174);
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
    currentRefreshScanOperation = selfCopy->_currentRefreshScanOperation;
    v169 = &v285;
    v285 = MEMORY[0x277D85DD0];
    v286 = -1073741824;
    v287 = 0;
    v288 = __47__SUSettingsStatefulUIManager_performFullScan___block_invoke;
    v289 = &unk_279CB93E8;
    v168 = &v290;
    v290 = MEMORY[0x277D82BE0](selfCopy);
    [(SUSettingsScanOperation *)currentRefreshScanOperation cancel:v169];
    objc_storeStrong(v168, 0);
  }

  currentFullScanOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
  v166 = currentFullScanOperation2;
  MEMORY[0x277D82BD8](v166);
  if (v166)
  {
    v165 = [(SUSettingsStatefulUIManager *)selfCopy log];
    v163 = v165;
    oslog2 = [v163 oslog];
    v284 = oslog2;
    MEMORY[0x277D82BD8](v163);
    v283 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v284, OS_LOG_TYPE_DEFAULT))
    {
      v160 = v284;
      *v161 = v283;
      currentState3 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
      v159 = SUSettingsUIStateToString(currentState3);
      v156 = v159;
      v157 = MEMORY[0x277D82BE0](v156);
      v282 = v157;
      currentState4 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
      v280 = 0;
      v278 = 0;
      delegate4 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      v154 = delegate4;
      if (v154)
      {
        delegate5 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
        v281 = delegate5;
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
      delegate6 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      v146 = delegate6;
      scanError2 = [(SUSettingsStatefulUIManager *)selfCopy scanError];
      v144 = scanError2;
      preferredStatefulDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
      v142 = preferredStatefulDescriptor2;
      alternateStatefulDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
      v140 = alternateStatefulDescriptor2;
      v276 = 0;
      v274 = 0;
      v272 = 0;
      currentDownload4 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v139 = currentDownload4;
      if (v139)
      {
        currentDownload5 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        v277 = currentDownload5;
        v276 = 1;
        descriptor2 = [v277 descriptor];
        v275 = descriptor2;
        v274 = 1;
        humanReadableUpdateName4 = [v275 humanReadableUpdateName];
        v273 = humanReadableUpdateName4;
        v272 = 1;
        v135 = v273;
      }

      else
      {
        v135 = @"(null)";
      }

      v133 = v135;
      currentDownload6 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v131 = currentDownload6;
      performThirdPartyScan2 = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
      v7 = "YES";
      if (!performThirdPartyScan2)
      {
        v7 = "NO";
      }

      v129 = v7;
      isTargetedUpdateScheduledForAutoInstall2 = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
      v8 = "YES";
      if (!isTargetedUpdateScheduledForAutoInstall2)
      {
        v8 = "NO";
      }

      v127 = v8;
      hidingPreferredDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
      v9 = "YES";
      if (!hidingPreferredDescriptor2)
      {
        v9 = "NO";
      }

      v125 = v9;
      humanReadableUpdateName5 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v122 = humanReadableUpdateName5;
      v123 = MEMORY[0x277D82BE0](v122);
      v271 = v123;
      hidingAlternateDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
      v10 = "YES";
      if (!hidingAlternateDescriptor2)
      {
        v10 = "NO";
      }

      v120 = v10;
      humanReadableUpdateName6 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v117 = humanReadableUpdateName6;
      v118 = MEMORY[0x277D82BE0](v117);
      v270 = v118;
      v268 = 0;
      enrolledBetaProgram3 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v116 = enrolledBetaProgram3;
      if (v116)
      {
        enrolledBetaProgram4 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
        v269 = enrolledBetaProgram4;
        v268 = 1;
        programID2 = [v269 programID];
        v113 = programID2;
      }

      else
      {
        v113 = 0;
      }

      v111 = v113;
      betaPrograms2 = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
      v109 = betaPrograms2;
      v110 = [v109 count];
      currentFullScanOperation3 = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
      v106 = currentFullScanOperation3;
      currentRefreshScanOperation3 = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
      v104 = currentRefreshScanOperation3;
      currentUpdateOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
      v102 = currentUpdateOperation2;
      auxiliaryOperations2 = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
      v100 = auxiliaryOperations2;
      v101 = [v100 count];
      v98 = &v18;
      v99 = v311;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v311, v242, v157, currentState4, v148, v146, v144, v142, v140, v133, v131, v129, v127, v125, v123, v120, v118, v111, v110, v106, v104, v102, v101);
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
    uUID = [MEMORY[0x277CCAD78] UUID];
    v95 = uUID;
    uUIDString = [v95 UUIDString];
    v266 = uUIDString;
    MEMORY[0x277D82BD8](v95);
    v94 = [(SUSettingsStatefulUIManager *)selfCopy log];
    v92 = v94;
    oslog3 = [v92 oslog];
    v265 = oslog3;
    MEMORY[0x277D82BD8](v92);
    v264 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v265, OS_LOG_TYPE_DEFAULT))
    {
      v89 = v265;
      *v90 = v264;
      currentState5 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
      v88 = SUSettingsUIStateToString(currentState5);
      v85 = v88;
      v86 = MEMORY[0x277D82BE0](v85);
      v263 = v86;
      currentState6 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
      delegate7 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      v83 = delegate7;
      v261 = 0;
      v259 = 0;
      if (v83)
      {
        delegate8 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
        v262 = delegate8;
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
      delegate9 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      v75 = delegate9;
      scanError3 = [(SUSettingsStatefulUIManager *)selfCopy scanError];
      v73 = scanError3;
      preferredStatefulDescriptor3 = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
      v71 = preferredStatefulDescriptor3;
      alternateStatefulDescriptor3 = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
      v69 = alternateStatefulDescriptor3;
      currentDownload7 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v68 = currentDownload7;
      v257 = 0;
      v255 = 0;
      v253 = 0;
      if (v68)
      {
        currentDownload8 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        v258 = currentDownload8;
        v257 = 1;
        descriptor3 = [v258 descriptor];
        v256 = descriptor3;
        v255 = 1;
        humanReadableUpdateName7 = [v256 humanReadableUpdateName];
        v254 = humanReadableUpdateName7;
        v253 = 1;
        v64 = v254;
      }

      else
      {
        v64 = @"(null)";
      }

      v62 = v64;
      currentDownload9 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v60 = currentDownload9;
      performThirdPartyScan3 = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
      v11 = "YES";
      if (!performThirdPartyScan3)
      {
        v11 = "NO";
      }

      v58 = v11;
      isTargetedUpdateScheduledForAutoInstall3 = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
      v12 = "YES";
      if (!isTargetedUpdateScheduledForAutoInstall3)
      {
        v12 = "NO";
      }

      v56 = v12;
      hidingPreferredDescriptor3 = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
      v13 = "YES";
      if (!hidingPreferredDescriptor3)
      {
        v13 = "NO";
      }

      v54 = v13;
      humanReadableUpdateName8 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v51 = humanReadableUpdateName8;
      v52 = MEMORY[0x277D82BE0](v51);
      v252 = v52;
      hidingAlternateDescriptor3 = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
      v14 = "YES";
      if (!hidingAlternateDescriptor3)
      {
        v14 = "NO";
      }

      v49 = v14;
      humanReadableUpdateName9 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v46 = humanReadableUpdateName9;
      v47 = MEMORY[0x277D82BE0](v46);
      v251 = v47;
      enrolledBetaProgram5 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v45 = enrolledBetaProgram5;
      v249 = 0;
      if (v45)
      {
        enrolledBetaProgram6 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
        v250 = enrolledBetaProgram6;
        v249 = 1;
        programID3 = [v250 programID];
        v42 = programID3;
      }

      else
      {
        v42 = 0;
      }

      v40 = v42;
      betaPrograms3 = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
      v38 = betaPrograms3;
      v39 = [v38 count];
      currentFullScanOperation4 = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
      v35 = currentFullScanOperation4;
      currentRefreshScanOperation4 = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
      v33 = currentRefreshScanOperation4;
      currentUpdateOperation3 = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
      v31 = currentUpdateOperation3;
      auxiliaryOperations3 = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
      v29 = auxiliaryOperations3;
      v30 = [v29 count];
      currentFullScanOperation = selfCopy->_currentFullScanOperation;
      v16 = selfCopy->_currentRefreshScanOperation;
      v27 = &v18;
      v28 = v310;
      __os_log_helper_16_2_25_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_0_8_0(v310, v242, v86, currentState6, v77, v75, v73, v71, v69, v62, v60, v58, v56, v54, v52, v49, v47, v40, v39, v35, v33, v31, v30, v266, currentFullScanOperation, v16);
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
    selfCopy->_performThirdPartyScan = 0;
    v26 = [SUSettingsScanOperation alloc];
    v25 = [(SUSettingsScanOperation *)v26 initWithUUID:v266 usingSUManagerClient:selfCopy->_suClient andBetaManager:selfCopy->_seedingBetaManager withCompletionQueue:selfCopy->_workQueue];
    v17 = selfCopy->_currentFullScanOperation;
    selfCopy->_currentFullScanOperation = v25;
    MEMORY[0x277D82BD8](v17);
    v23 = selfCopy->_currentFullScanOperation;
    createScanOperationOptions = [(SUSettingsStatefulUIManager *)selfCopy createScanOperationOptions];
    v21 = createScanOperationOptions;
    v22 = &v243;
    v243 = MEMORY[0x277D85DD0];
    v244 = -1073741824;
    v245 = 0;
    v246 = __47__SUSettingsStatefulUIManager_performFullScan___block_invoke_429;
    v247 = &unk_279CB9870;
    v19 = v248;
    v248[0] = MEMORY[0x277D82BE0](selfCopy);
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

- (void)performFullScanWithScanResults:(id)results andScanError:(id)error
{
  obj = error;
  v243 = "[SUSettingsStatefulUIManager performFullScanWithScanResults:andScanError:]";
  v315 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v309 = 0;
  objc_storeStrong(&v309, obj);
  v240 = MEMORY[0x277D82BE0](selfCopy);
  objc_sync_enter(v240);
  currentRefreshScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
  v239 = currentRefreshScanOperation;
  MEMORY[0x277D82BD8](v239);
  if (v239)
  {
    v238 = [(SUSettingsStatefulUIManager *)selfCopy log];
    v236 = v238;
    oslog = [v236 oslog];
    oslog = oslog;
    MEMORY[0x277D82BD8](v236);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      *v234 = type;
      currentState = [(SUSettingsStatefulUIManager *)selfCopy currentState];
      v232 = SUSettingsUIStateToString(currentState);
      v229 = v232;
      v230 = MEMORY[0x277D82BE0](v229);
      v306 = v230;
      currentState2 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
      v304 = 0;
      v302 = 0;
      delegate = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      v227 = delegate;
      if (v227)
      {
        delegate2 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
        v305 = delegate2;
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
      delegate3 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      v219 = delegate3;
      scanError = [(SUSettingsStatefulUIManager *)selfCopy scanError];
      v217 = scanError;
      preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
      v215 = preferredStatefulDescriptor;
      alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
      v213 = alternateStatefulDescriptor;
      v300 = 0;
      v298 = 0;
      v296 = 0;
      currentDownload = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v212 = currentDownload;
      if (v212)
      {
        currentDownload2 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        v301 = currentDownload2;
        v300 = 1;
        descriptor = [v301 descriptor];
        v299 = descriptor;
        v298 = 1;
        humanReadableUpdateName = [v299 humanReadableUpdateName];
        v297 = humanReadableUpdateName;
        v296 = 1;
        v208 = v297;
      }

      else
      {
        v208 = @"(null)";
      }

      v206 = v208;
      currentDownload3 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v204 = currentDownload3;
      performThirdPartyScan = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
      v4 = "YES";
      if (!performThirdPartyScan)
      {
        v4 = "NO";
      }

      v202 = v4;
      isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
      v5 = "YES";
      if (!isTargetedUpdateScheduledForAutoInstall)
      {
        v5 = "NO";
      }

      v200 = v5;
      hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
      v6 = "YES";
      if (!hidingPreferredDescriptor)
      {
        v6 = "NO";
      }

      v198 = v6;
      humanReadableUpdateName2 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v195 = humanReadableUpdateName2;
      v196 = MEMORY[0x277D82BE0](v195);
      v295 = v196;
      hidingAlternateDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
      v7 = "YES";
      if (!hidingAlternateDescriptor)
      {
        v7 = "NO";
      }

      v193 = v7;
      humanReadableUpdateName3 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v190 = humanReadableUpdateName3;
      v191 = MEMORY[0x277D82BE0](v190);
      v294 = v191;
      v292 = 0;
      enrolledBetaProgram = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v189 = enrolledBetaProgram;
      if (v189)
      {
        enrolledBetaProgram2 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
        v293 = enrolledBetaProgram2;
        v292 = 1;
        programID = [v293 programID];
        v186 = programID;
      }

      else
      {
        v186 = 0;
      }

      v184 = v186;
      betaPrograms = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
      v182 = betaPrograms;
      v183 = [v182 count];
      currentFullScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
      v179 = currentFullScanOperation;
      currentRefreshScanOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
      v177 = currentRefreshScanOperation2;
      currentUpdateOperation = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
      v175 = currentUpdateOperation;
      auxiliaryOperations = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
      v173 = auxiliaryOperations;
      v174 = [v173 count];
      v171 = &v19;
      buf = v314;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v314, v243, v230, currentState2, v221, v219, v217, v215, v213, v206, v204, v202, v200, v198, v196, v193, v191, v186, v183, v179, v177, v175, v174);
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
    currentRefreshScanOperation = selfCopy->_currentRefreshScanOperation;
    v169 = &v286;
    v286 = MEMORY[0x277D85DD0];
    v287 = -1073741824;
    v288 = 0;
    v289 = __75__SUSettingsStatefulUIManager_performFullScanWithScanResults_andScanError___block_invoke;
    v290 = &unk_279CB93E8;
    v168 = &v291;
    v291 = MEMORY[0x277D82BE0](selfCopy);
    [(SUSettingsScanOperation *)currentRefreshScanOperation cancel:v169];
    objc_storeStrong(v168, 0);
  }

  currentFullScanOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
  v166 = currentFullScanOperation2;
  MEMORY[0x277D82BD8](v166);
  if (v166)
  {
    v165 = [(SUSettingsStatefulUIManager *)selfCopy log];
    v163 = v165;
    oslog2 = [v163 oslog];
    v285 = oslog2;
    MEMORY[0x277D82BD8](v163);
    v284 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v285, OS_LOG_TYPE_DEFAULT))
    {
      v160 = v285;
      *v161 = v284;
      currentState3 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
      v159 = SUSettingsUIStateToString(currentState3);
      v156 = v159;
      v157 = MEMORY[0x277D82BE0](v156);
      v283 = v157;
      currentState4 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
      v281 = 0;
      v279 = 0;
      delegate4 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      v154 = delegate4;
      if (v154)
      {
        delegate5 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
        v282 = delegate5;
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
      delegate6 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      v146 = delegate6;
      scanError2 = [(SUSettingsStatefulUIManager *)selfCopy scanError];
      v144 = scanError2;
      preferredStatefulDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
      v142 = preferredStatefulDescriptor2;
      alternateStatefulDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
      v140 = alternateStatefulDescriptor2;
      v277 = 0;
      v275 = 0;
      v273 = 0;
      currentDownload4 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v139 = currentDownload4;
      if (v139)
      {
        currentDownload5 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        v278 = currentDownload5;
        v277 = 1;
        descriptor2 = [v278 descriptor];
        v276 = descriptor2;
        v275 = 1;
        humanReadableUpdateName4 = [v276 humanReadableUpdateName];
        v274 = humanReadableUpdateName4;
        v273 = 1;
        v135 = v274;
      }

      else
      {
        v135 = @"(null)";
      }

      v133 = v135;
      currentDownload6 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v131 = currentDownload6;
      performThirdPartyScan2 = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
      v8 = "YES";
      if (!performThirdPartyScan2)
      {
        v8 = "NO";
      }

      v129 = v8;
      isTargetedUpdateScheduledForAutoInstall2 = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
      v9 = "YES";
      if (!isTargetedUpdateScheduledForAutoInstall2)
      {
        v9 = "NO";
      }

      v127 = v9;
      hidingPreferredDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
      v10 = "YES";
      if (!hidingPreferredDescriptor2)
      {
        v10 = "NO";
      }

      v125 = v10;
      humanReadableUpdateName5 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v122 = humanReadableUpdateName5;
      v123 = MEMORY[0x277D82BE0](v122);
      v272 = v123;
      hidingAlternateDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
      v11 = "YES";
      if (!hidingAlternateDescriptor2)
      {
        v11 = "NO";
      }

      v120 = v11;
      humanReadableUpdateName6 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v117 = humanReadableUpdateName6;
      v118 = MEMORY[0x277D82BE0](v117);
      v271 = v118;
      v269 = 0;
      enrolledBetaProgram3 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v116 = enrolledBetaProgram3;
      if (v116)
      {
        enrolledBetaProgram4 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
        v270 = enrolledBetaProgram4;
        v269 = 1;
        programID2 = [v270 programID];
        v113 = programID2;
      }

      else
      {
        v113 = 0;
      }

      v111 = v113;
      betaPrograms2 = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
      v109 = betaPrograms2;
      v110 = [v109 count];
      currentFullScanOperation3 = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
      v106 = currentFullScanOperation3;
      currentRefreshScanOperation3 = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
      v104 = currentRefreshScanOperation3;
      currentUpdateOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
      v102 = currentUpdateOperation2;
      auxiliaryOperations2 = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
      v100 = auxiliaryOperations2;
      v101 = [v100 count];
      v98 = &v19;
      v99 = v313;
      __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v313, v243, v157, currentState4, v148, v146, v144, v142, v140, v133, v131, v129, v127, v125, v123, v120, v118, v111, v110, v106, v104, v102, v101);
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
    uUID = [MEMORY[0x277CCAD78] UUID];
    v95 = uUID;
    uUIDString = [v95 UUIDString];
    v267 = uUIDString;
    MEMORY[0x277D82BD8](v95);
    v94 = [(SUSettingsStatefulUIManager *)selfCopy log];
    v92 = v94;
    oslog3 = [v92 oslog];
    v266 = oslog3;
    MEMORY[0x277D82BD8](v92);
    v265 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v266, OS_LOG_TYPE_DEFAULT))
    {
      v89 = v266;
      *v90 = v265;
      currentState5 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
      v88 = SUSettingsUIStateToString(currentState5);
      v85 = v88;
      v86 = MEMORY[0x277D82BE0](v85);
      v264 = v86;
      currentState6 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
      delegate7 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      v83 = delegate7;
      v262 = 0;
      v260 = 0;
      if (v83)
      {
        delegate8 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
        v263 = delegate8;
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
      delegate9 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
      v75 = delegate9;
      scanError3 = [(SUSettingsStatefulUIManager *)selfCopy scanError];
      v73 = scanError3;
      preferredStatefulDescriptor3 = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
      v71 = preferredStatefulDescriptor3;
      alternateStatefulDescriptor3 = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
      v69 = alternateStatefulDescriptor3;
      currentDownload7 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v68 = currentDownload7;
      v258 = 0;
      v256 = 0;
      v254 = 0;
      if (v68)
      {
        currentDownload8 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        v259 = currentDownload8;
        v258 = 1;
        descriptor3 = [v259 descriptor];
        v257 = descriptor3;
        v256 = 1;
        humanReadableUpdateName7 = [v257 humanReadableUpdateName];
        v255 = humanReadableUpdateName7;
        v254 = 1;
        v64 = v255;
      }

      else
      {
        v64 = @"(null)";
      }

      v62 = v64;
      currentDownload9 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v60 = currentDownload9;
      performThirdPartyScan3 = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
      v12 = "YES";
      if (!performThirdPartyScan3)
      {
        v12 = "NO";
      }

      v58 = v12;
      isTargetedUpdateScheduledForAutoInstall3 = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
      v13 = "YES";
      if (!isTargetedUpdateScheduledForAutoInstall3)
      {
        v13 = "NO";
      }

      v56 = v13;
      hidingPreferredDescriptor3 = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
      v14 = "YES";
      if (!hidingPreferredDescriptor3)
      {
        v14 = "NO";
      }

      v54 = v14;
      humanReadableUpdateName8 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v51 = humanReadableUpdateName8;
      v52 = MEMORY[0x277D82BE0](v51);
      v253 = v52;
      hidingAlternateDescriptor3 = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
      v15 = "YES";
      if (!hidingAlternateDescriptor3)
      {
        v15 = "NO";
      }

      v49 = v15;
      humanReadableUpdateName9 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v46 = humanReadableUpdateName9;
      v47 = MEMORY[0x277D82BE0](v46);
      v252 = v47;
      enrolledBetaProgram5 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v45 = enrolledBetaProgram5;
      v250 = 0;
      if (v45)
      {
        enrolledBetaProgram6 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
        v251 = enrolledBetaProgram6;
        v250 = 1;
        programID3 = [v251 programID];
        v42 = programID3;
      }

      else
      {
        v42 = 0;
      }

      v40 = v42;
      betaPrograms3 = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
      v38 = betaPrograms3;
      v39 = [v38 count];
      currentFullScanOperation4 = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
      v35 = currentFullScanOperation4;
      currentRefreshScanOperation4 = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
      v33 = currentRefreshScanOperation4;
      currentUpdateOperation3 = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
      v31 = currentUpdateOperation3;
      auxiliaryOperations3 = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
      v29 = auxiliaryOperations3;
      v30 = [v29 count];
      currentFullScanOperation = selfCopy->_currentFullScanOperation;
      v17 = selfCopy->_currentRefreshScanOperation;
      v27 = &v19;
      v28 = v312;
      __os_log_helper_16_2_27_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_66_8_0_8_0(v312, v243, v86, currentState6, v77, v75, v73, v71, v69, v62, v60, v58, v56, v54, v52, v49, v47, v40, v39, v35, v33, v31, v30, location[0], v309, v267, currentFullScanOperation, v17);
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
    selfCopy->_performThirdPartyScan = 0;
    v26 = [SUSettingsScanOperation alloc];
    v25 = [(SUSettingsScanOperation *)v26 initWithUUID:v267 usingSUManagerClient:selfCopy->_suClient andBetaManager:selfCopy->_seedingBetaManager withCompletionQueue:selfCopy->_workQueue];
    v18 = selfCopy->_currentFullScanOperation;
    selfCopy->_currentFullScanOperation = v25;
    MEMORY[0x277D82BD8](v18);
    v23 = selfCopy->_currentFullScanOperation;
    createScanOperationOptions = [(SUSettingsStatefulUIManager *)selfCopy createScanOperationOptions];
    v21 = createScanOperationOptions;
    v22 = &v244;
    v244 = MEMORY[0x277D85DD0];
    v245 = -1073741824;
    v246 = 0;
    v247 = __75__SUSettingsStatefulUIManager_performFullScanWithScanResults_andScanError___block_invoke_431;
    v248 = &unk_279CB9898;
    v20 = &v249;
    v249 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)performRefreshScan:(id)scan
{
  v74 = "[SUSettingsStatefulUIManager performRefreshScan:]";
  v103 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scan);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  MEMORY[0x277D82BD8](uUID);
  v73 = [(SUSettingsStatefulUIManager *)selfCopy log];
  oslog = [(SUCoreLog *)v73 oslog];
  MEMORY[0x277D82BD8](v73);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v68 = type;
    v69 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
    v70 = MEMORY[0x277D82BE0](v69);
    v96 = v70;
    currentState = [(SUSettingsStatefulUIManager *)selfCopy currentState];
    delegate = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    v94 = 0;
    v92 = 0;
    if (delegate)
    {
      delegate2 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
    delegate3 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    scanError = [(SUSettingsStatefulUIManager *)selfCopy scanError];
    preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
    alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
    currentDownload = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    v90 = 0;
    v88 = 0;
    v86 = 0;
    if (currentDownload)
    {
      currentDownload2 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v57 = 1;
      v90 = 1;
      descriptor = [(SUDownload *)currentDownload2 descriptor];
      v88 = 1;
      humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v86 = 1;
      v58 = humanReadableUpdateName;
    }

    else
    {
      v58 = @"(null)";
    }

    v44 = v58;
    currentDownload3 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    performThirdPartyScan = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
    v51 = "NO";
    v5 = "YES";
    v52 = "YES";
    if (!performThirdPartyScan)
    {
      v5 = "NO";
    }

    v46 = v5;
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
    v7 = v52;
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v7 = v51;
    }

    v47 = v7;
    hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
    v9 = v52;
    if (!hidingPreferredDescriptor)
    {
      v9 = v51;
    }

    v48 = v9;
    humanReadableUpdateName2 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v50 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
    v85 = v50;
    hidingAlternateDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
    v11 = v52;
    if (!hidingAlternateDescriptor)
    {
      v11 = v51;
    }

    v53 = v11;
    humanReadableUpdateName3 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v55 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
    v84 = v55;
    enrolledBetaProgram = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
    v82 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v82 = 1;
      programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v34 = programID;
    betaPrograms = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
    v35 = [(NSArray *)betaPrograms count];
    currentFullScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
    currentRefreshScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
    currentUpdateOperation = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
    auxiliaryOperations = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
    v12 = [(NSMutableSet *)auxiliaryOperations count];
    currentFullScanOperation = selfCopy->_currentFullScanOperation;
    currentRefreshScanOperation = selfCopy->_currentRefreshScanOperation;
    v36 = &v18;
    buf = v102;
    __os_log_helper_16_2_25_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_0_8_0(v102, v74, v70, currentState, v59, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v44, currentDownload3, v46, v47, v48, v50, v53, v55, programID, v35, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, v12, uUIDString, currentFullScanOperation, currentRefreshScanOperation);
    _os_log_impl(&dword_26AC94000, log, v68[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBeginning to refresh the current scan results with scan ID: %{public}@ (full scan FSM: %p, refresh scan FSM: %p)", buf, 0xFCu);
    MEMORY[0x277D82BD8](auxiliaryOperations);
    MEMORY[0x277D82BD8](currentUpdateOperation);
    MEMORY[0x277D82BD8](currentRefreshScanOperation);
    MEMORY[0x277D82BD8](currentFullScanOperation);
    MEMORY[0x277D82BD8](betaPrograms);
    if (v82)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v86)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    if (v88)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v90)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v92)
    {
      MEMORY[0x277D82BD8](v93);
    }

    if (v94)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](v69);
    obj = 0;
    objc_storeStrong(&v84, 0);
    objc_storeStrong(&v85, obj);
    objc_storeStrong(&v96, obj);
  }

  objc_storeStrong(&oslog, 0);
  v15 = [SUSettingsScanOperation alloc];
  v30 = &uUIDString;
  v16 = [(SUSettingsScanOperation *)v15 initWithUUID:uUIDString usingSUManagerClient:selfCopy->_suClient andBetaManager:selfCopy->_seedingBetaManager withCompletionQueue:selfCopy->_workQueue];
  v17 = selfCopy->_currentRefreshScanOperation;
  selfCopy->_currentRefreshScanOperation = v16;
  MEMORY[0x277D82BD8](v17);
  selfCopy->_performThirdPartyScan = 0;
  v20 = selfCopy->_currentRefreshScanOperation;
  preferredStatefulDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
  descriptor2 = [(SUSettingsStatefulDescriptor *)preferredStatefulDescriptor2 descriptor];
  alternateStatefulDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
  descriptor3 = [(SUSettingsStatefulDescriptor *)alternateStatefulDescriptor2 descriptor];
  latestUpdateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy latestUpdateStatefulDescriptor];
  descriptor4 = [latestUpdateStatefulDescriptor descriptor];
  createScanOperationOptions = [(SUSettingsStatefulUIManager *)selfCopy createScanOperationOptions];
  v19 = &v76;
  v76 = MEMORY[0x277D85DD0];
  v77 = -1073741824;
  v78 = 0;
  v79 = __50__SUSettingsStatefulUIManager_performRefreshScan___block_invoke;
  v80 = &unk_279CB98C0;
  v29 = v81;
  v81[0] = MEMORY[0x277D82BE0](selfCopy);
  v28 = (v19 + 5);
  v31 = location;
  v81[1] = MEMORY[0x277D82BE0](location[0]);
  [(SUSettingsScanOperation *)v20 refreshScanResultsWithPreferredUpdate:descriptor2 alternateUpdate:descriptor3 latestUpdate:descriptor4 options:createScanOperationOptions completionHandler:v19];
  MEMORY[0x277D82BD8](createScanOperationOptions);
  MEMORY[0x277D82BD8](descriptor4);
  MEMORY[0x277D82BD8](latestUpdateStatefulDescriptor);
  MEMORY[0x277D82BD8](descriptor3);
  MEMORY[0x277D82BD8](alternateStatefulDescriptor2);
  MEMORY[0x277D82BD8](descriptor2);
  MEMORY[0x277D82BD8](preferredStatefulDescriptor2);
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

- (void)handleFullScanResults:(id)results
{
  v225 = "[SUSettingsStatefulUIManager handleFullScanResults:]";
  v309 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  fullScanResults = [location[0] fullScanResults];
  v224 = [(SUSettingsStatefulUIManager *)selfCopy log];
  oslog = [(SUCoreLog *)v224 oslog];
  MEMORY[0x277D82BD8](v224);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v219 = type;
    v220 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
    v221 = MEMORY[0x277D82BE0](v220);
    v299 = v221;
    currentState = [(SUSettingsStatefulUIManager *)selfCopy currentState];
    delegate = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    v297 = 0;
    v295 = 0;
    if (delegate)
    {
      delegate2 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
    delegate3 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    scanError = [(SUSettingsStatefulUIManager *)selfCopy scanError];
    preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
    alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
    currentDownload = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    v293 = 0;
    v291 = 0;
    v289 = 0;
    if (currentDownload)
    {
      currentDownload2 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v208 = 1;
      v293 = 1;
      descriptor = [(SUDownload *)currentDownload2 descriptor];
      v291 = 1;
      humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v289 = 1;
      v209 = humanReadableUpdateName;
    }

    else
    {
      v209 = @"(null)";
    }

    v195 = v209;
    currentDownload3 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    performThirdPartyScan = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
    v202 = "NO";
    v5 = "YES";
    v203 = "YES";
    if (!performThirdPartyScan)
    {
      v5 = "NO";
    }

    v197 = v5;
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
    v7 = v203;
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v7 = v202;
    }

    v198 = v7;
    hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
    v9 = v203;
    if (!hidingPreferredDescriptor)
    {
      v9 = v202;
    }

    v199 = v9;
    humanReadableUpdateName2 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v201 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
    v288 = v201;
    hidingAlternateDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
    v11 = v203;
    if (!hidingAlternateDescriptor)
    {
      v11 = v202;
    }

    v204 = v11;
    humanReadableUpdateName3 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v206 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
    v287 = v206;
    enrolledBetaProgram = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
    v285 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v285 = 1;
      programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v183 = programID;
    betaPrograms = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
    v184 = [(NSArray *)betaPrograms count];
    currentFullScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
    currentRefreshScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
    currentUpdateOperation = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
    auxiliaryOperations = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
    v185 = [(NSMutableSet *)auxiliaryOperations count];
    scanUUID = [fullScanResults scanUUID];
    v186 = &v64;
    buf = v308;
    __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_66(v308, v225, v221, currentState, v210, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v195, currentDownload3, v197, v198, v199, v201, v204, v206, programID, v184, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, v185, scanUUID, fullScanResults);
    _os_log_impl(&dword_26AC94000, log, v219[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to perform a full-scan with ID: %{public}@.\nResults: %{public}@", buf, 0xF2u);
    MEMORY[0x277D82BD8](scanUUID);
    MEMORY[0x277D82BD8](auxiliaryOperations);
    MEMORY[0x277D82BD8](currentUpdateOperation);
    MEMORY[0x277D82BD8](currentRefreshScanOperation);
    MEMORY[0x277D82BD8](currentFullScanOperation);
    MEMORY[0x277D82BD8](betaPrograms);
    if (v285)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v289)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    if (v291)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v293)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v295)
    {
      MEMORY[0x277D82BD8](v296);
    }

    if (v297)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](v220);
    obj = 0;
    objc_storeStrong(&v287, 0);
    objc_storeStrong(&v288, obj);
    objc_storeStrong(&v299, obj);
  }

  objc_storeStrong(&oslog, 0);
  if (selfCopy->_currentUpdateOperation)
  {
    emptyScanResults = [fullScanResults emptyScanResults];
    v283 = 0;
    v181 = 0;
    if (emptyScanResults)
    {
      currentDownload4 = [fullScanResults currentDownload];
      v283 = 1;
      v181 = currentDownload4 == 0;
    }

    v180 = v181;
    if (v283)
    {
      MEMORY[0x277D82BD8](currentDownload4);
    }

    if (v180)
    {
      v179 = [(SUSettingsStatefulUIManager *)selfCopy log];
      oslog = [(SUCoreLog *)v179 oslog];
      MEMORY[0x277D82BD8](v179);
      v281 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v173 = oslog;
        *v174 = v281;
        v175 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
        v176 = MEMORY[0x277D82BE0](v175);
        v280 = v176;
        currentState2 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
        delegate4 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
        v278 = 0;
        v276 = 0;
        if (delegate4)
        {
          delegate5 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
        delegate6 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
        scanError2 = [(SUSettingsStatefulUIManager *)selfCopy scanError];
        preferredStatefulDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
        alternateStatefulDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
        currentDownload5 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        v274 = 0;
        v272 = 0;
        v270 = 0;
        if (currentDownload5)
        {
          currentDownload6 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
          v163 = 1;
          v274 = 1;
          descriptor2 = [(SUDownload *)currentDownload6 descriptor];
          v272 = v163 & 1;
          humanReadableUpdateName4 = [(SUDescriptor *)descriptor2 humanReadableUpdateName];
          v270 = v163 & 1;
          v164 = humanReadableUpdateName4;
        }

        else
        {
          v164 = @"(null)";
        }

        v150 = v164;
        currentDownload7 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
        performThirdPartyScan2 = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
        v157 = "NO";
        v15 = "YES";
        v158 = "YES";
        if (!performThirdPartyScan2)
        {
          v15 = "NO";
        }

        v152 = v15;
        isTargetedUpdateScheduledForAutoInstall2 = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
        v17 = v158;
        if (!isTargetedUpdateScheduledForAutoInstall2)
        {
          v17 = v157;
        }

        v153 = v17;
        hidingPreferredDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
        v19 = v158;
        if (!hidingPreferredDescriptor2)
        {
          v19 = v157;
        }

        v154 = v19;
        humanReadableUpdateName5 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
        v156 = MEMORY[0x277D82BE0](humanReadableUpdateName5);
        v269 = v156;
        hidingAlternateDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
        v21 = v158;
        if (!hidingAlternateDescriptor2)
        {
          v21 = v157;
        }

        v159 = v21;
        humanReadableUpdateName6 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
        v161 = MEMORY[0x277D82BE0](humanReadableUpdateName6);
        v268 = v161;
        enrolledBetaProgram3 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
        v266 = 0;
        if (enrolledBetaProgram3)
        {
          enrolledBetaProgram4 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
          v266 = 1;
          programID2 = [(SDBetaProgram *)enrolledBetaProgram4 programID];
        }

        else
        {
          programID2 = 0;
        }

        v22 = v153;
        v23 = v152;
        v24 = currentDownload7;
        v25 = v150;
        v26 = alternateStatefulDescriptor2;
        v140 = programID2;
        betaPrograms2 = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
        v141 = [(NSArray *)betaPrograms2 count];
        currentFullScanOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
        currentRefreshScanOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
        currentUpdateOperation2 = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
        auxiliaryOperations2 = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
        v27 = [(NSMutableSet *)auxiliaryOperations2 count];
        v142 = &v64;
        v143 = v307;
        __os_log_helper_16_2_22_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v307, v225, v176, currentState2, v165, delegate6, scanError2, preferredStatefulDescriptor2, v26, v25, v24, v23, v22, v154, v156, v159, v161, v140, v141, currentFullScanOperation2, currentRefreshScanOperation2, currentUpdateOperation2, v27);
        _os_log_impl(&dword_26AC94000, v173, v174[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nThe full scan yielded empty scan results - cancelling the currently active update operation", v143, 0xDEu);
        MEMORY[0x277D82BD8](auxiliaryOperations2);
        MEMORY[0x277D82BD8](currentUpdateOperation2);
        MEMORY[0x277D82BD8](currentRefreshScanOperation2);
        MEMORY[0x277D82BD8](currentFullScanOperation2);
        MEMORY[0x277D82BD8](betaPrograms2);
        if (v266)
        {
          MEMORY[0x277D82BD8](enrolledBetaProgram4);
        }

        MEMORY[0x277D82BD8](enrolledBetaProgram3);
        MEMORY[0x277D82BD8](humanReadableUpdateName6);
        MEMORY[0x277D82BD8](humanReadableUpdateName5);
        MEMORY[0x277D82BD8](currentDownload7);
        if (v270)
        {
          MEMORY[0x277D82BD8](humanReadableUpdateName4);
        }

        if (v272)
        {
          MEMORY[0x277D82BD8](descriptor2);
        }

        if (v274)
        {
          MEMORY[0x277D82BD8](currentDownload6);
        }

        MEMORY[0x277D82BD8](currentDownload5);
        MEMORY[0x277D82BD8](alternateStatefulDescriptor2);
        MEMORY[0x277D82BD8](preferredStatefulDescriptor2);
        MEMORY[0x277D82BD8](scanError2);
        MEMORY[0x277D82BD8](delegate6);
        if (v276)
        {
          MEMORY[0x277D82BD8](v277);
        }

        if (v278)
        {
          MEMORY[0x277D82BD8](delegate5);
        }

        MEMORY[0x277D82BD8](delegate4);
        MEMORY[0x277D82BD8](v175);
        v139 = 0;
        objc_storeStrong(&v268, 0);
        objc_storeStrong(&v269, v139);
        objc_storeStrong(&v280, v139);
      }

      objc_storeStrong(&oslog, 0);
      currentUpdateOperation = selfCopy->_currentUpdateOperation;
      v136 = &v260;
      v260 = MEMORY[0x277D85DD0];
      v261 = -1073741824;
      v262 = 0;
      v263 = __53__SUSettingsStatefulUIManager_handleFullScanResults___block_invoke;
      v264 = &unk_279CB98E8;
      v138 = &v265;
      v265 = MEMORY[0x277D82BE0](selfCopy);
      [(SUSettingsUpdateOperation *)currentUpdateOperation cancel:v136];
      objc_storeStrong(v138, 0);
    }

    else
    {
      preferredStatefulDescriptor = selfCopy->_preferredStatefulDescriptor;
      preferredDescriptor = [fullScanResults preferredDescriptor];
      v28 = [(SUSettingsStatefulDescriptor *)preferredStatefulDescriptor isEqualToDescriptor:?];
      v258 = 0;
      v256 = 0;
      v254 = 0;
      if (v28 || (v132 = selfCopy->_preferredStatefulDescriptor, v259 = [fullScanResults alternateDescriptor], v258 = 1, v29 = -[SUSettingsStatefulDescriptor isEqualToDescriptor:](v132, "isEqualToDescriptor:"), v133 = 1, v29))
      {
        alternateStatefulDescriptor = selfCopy->_alternateStatefulDescriptor;
        preferredDescriptor2 = [fullScanResults preferredDescriptor];
        v256 = 1;
        v30 = [(SUSettingsStatefulDescriptor *)alternateStatefulDescriptor isEqualToDescriptor:?];
        v131 = 0;
        if (!v30)
        {
          v128 = selfCopy->_alternateStatefulDescriptor;
          alternateDescriptor = [fullScanResults alternateDescriptor];
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
        MEMORY[0x277D82BD8](alternateDescriptor);
      }

      if (v256)
      {
        MEMORY[0x277D82BD8](preferredDescriptor2);
      }

      if (v258)
      {
        MEMORY[0x277D82BD8](v259);
      }

      MEMORY[0x277D82BD8](preferredDescriptor);
      if (v127)
      {
        v126 = [(SUSettingsStatefulUIManager *)selfCopy log];
        oslog2 = [(SUCoreLog *)v126 oslog];
        MEMORY[0x277D82BD8](v126);
        v252 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
        {
          v120 = oslog2;
          *v121 = v252;
          v122 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
          v123 = MEMORY[0x277D82BE0](v122);
          v251 = v123;
          currentState3 = [(SUSettingsStatefulUIManager *)selfCopy currentState];
          delegate7 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
          v249 = 0;
          v247 = 0;
          if (delegate7)
          {
            delegate8 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
          delegate9 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
          scanError3 = [(SUSettingsStatefulUIManager *)selfCopy scanError];
          preferredStatefulDescriptor3 = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
          alternateStatefulDescriptor3 = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
          currentDownload8 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
          v245 = 0;
          v243 = 0;
          v241 = 0;
          if (currentDownload8)
          {
            currentDownload9 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
            v110 = 1;
            v245 = 1;
            descriptor3 = [(SUDownload *)currentDownload9 descriptor];
            v243 = v110 & 1;
            humanReadableUpdateName7 = [(SUDescriptor *)descriptor3 humanReadableUpdateName];
            v241 = v110 & 1;
            v111 = humanReadableUpdateName7;
          }

          else
          {
            v111 = @"(null)";
          }

          v97 = v111;
          currentDownload10 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
          performThirdPartyScan3 = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
          v104 = "NO";
          v34 = "YES";
          v105 = "YES";
          if (!performThirdPartyScan3)
          {
            v34 = "NO";
          }

          v99 = v34;
          isTargetedUpdateScheduledForAutoInstall3 = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
          v36 = v105;
          if (!isTargetedUpdateScheduledForAutoInstall3)
          {
            v36 = v104;
          }

          v100 = v36;
          hidingPreferredDescriptor3 = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
          v38 = v105;
          if (!hidingPreferredDescriptor3)
          {
            v38 = v104;
          }

          v101 = v38;
          humanReadableUpdateName8 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
          v103 = MEMORY[0x277D82BE0](humanReadableUpdateName8);
          v240 = v103;
          hidingAlternateDescriptor3 = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
          v40 = v105;
          if (!hidingAlternateDescriptor3)
          {
            v40 = v104;
          }

          v106 = v40;
          humanReadableUpdateName9 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
          v108 = MEMORY[0x277D82BE0](humanReadableUpdateName9);
          v239 = v108;
          enrolledBetaProgram5 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
          v237 = 0;
          if (enrolledBetaProgram5)
          {
            enrolledBetaProgram6 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
            v237 = 1;
            programID3 = [(SDBetaProgram *)enrolledBetaProgram6 programID];
          }

          else
          {
            programID3 = 0;
          }

          v41 = v103;
          v42 = v101;
          v43 = v100;
          v44 = v99;
          v45 = currentDownload10;
          v46 = v97;
          v47 = alternateStatefulDescriptor3;
          v81 = programID3;
          betaPrograms3 = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
          v82 = [(NSArray *)betaPrograms3 count];
          currentFullScanOperation3 = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
          currentRefreshScanOperation3 = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
          currentUpdateOperation3 = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
          auxiliaryOperations3 = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
          v83 = [(NSMutableSet *)auxiliaryOperations3 count];
          preferredDescriptor3 = [fullScanResults preferredDescriptor];
          humanReadableUpdateName10 = [preferredDescriptor3 humanReadableUpdateName];
          v84 = MEMORY[0x277D82BE0](humanReadableUpdateName10);
          v236 = v84;
          alternateDescriptor2 = [fullScanResults alternateDescriptor];
          humanReadableUpdateName11 = [alternateDescriptor2 humanReadableUpdateName];
          v235 = MEMORY[0x277D82BE0](humanReadableUpdateName11);
          v85 = &v64;
          v86 = v306;
          __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_66(v306, v225, v123, currentState3, v112, delegate9, scanError3, preferredStatefulDescriptor3, v47, v46, v45, v44, v43, v42, v41, v106, v108, v81, v82, currentFullScanOperation3, currentRefreshScanOperation3, currentUpdateOperation3, v83, v84, v235);
          _os_log_impl(&dword_26AC94000, v120, v121[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nThe full scan yielded results that are different than the previously discovered results - cancelling the currently active update operation.\n\tresults.preferredDescriptor: %{public}@\n\tresults.alternateDescriptor: %{public}@", v86, 0xF2u);
          MEMORY[0x277D82BD8](humanReadableUpdateName11);
          MEMORY[0x277D82BD8](alternateDescriptor2);
          MEMORY[0x277D82BD8](humanReadableUpdateName10);
          MEMORY[0x277D82BD8](preferredDescriptor3);
          MEMORY[0x277D82BD8](auxiliaryOperations3);
          MEMORY[0x277D82BD8](currentUpdateOperation3);
          MEMORY[0x277D82BD8](currentRefreshScanOperation3);
          MEMORY[0x277D82BD8](currentFullScanOperation3);
          MEMORY[0x277D82BD8](betaPrograms3);
          if (v237)
          {
            MEMORY[0x277D82BD8](enrolledBetaProgram6);
          }

          MEMORY[0x277D82BD8](enrolledBetaProgram5);
          MEMORY[0x277D82BD8](humanReadableUpdateName9);
          MEMORY[0x277D82BD8](humanReadableUpdateName8);
          MEMORY[0x277D82BD8](currentDownload10);
          if (v241)
          {
            MEMORY[0x277D82BD8](humanReadableUpdateName7);
          }

          if (v243)
          {
            MEMORY[0x277D82BD8](descriptor3);
          }

          if (v245)
          {
            MEMORY[0x277D82BD8](currentDownload9);
          }

          MEMORY[0x277D82BD8](currentDownload8);
          MEMORY[0x277D82BD8](alternateStatefulDescriptor3);
          MEMORY[0x277D82BD8](preferredStatefulDescriptor3);
          MEMORY[0x277D82BD8](scanError3);
          MEMORY[0x277D82BD8](delegate9);
          if (v247)
          {
            MEMORY[0x277D82BD8](v248);
          }

          if (v249)
          {
            MEMORY[0x277D82BD8](delegate8);
          }

          MEMORY[0x277D82BD8](delegate7);
          MEMORY[0x277D82BD8](v122);
          v80 = 0;
          objc_storeStrong(&v235, 0);
          objc_storeStrong(&v236, v80);
          objc_storeStrong(&v239, v80);
          objc_storeStrong(&v240, v80);
          objc_storeStrong(&v251, v80);
        }

        objc_storeStrong(&oslog2, 0);
        v78 = selfCopy->_currentUpdateOperation;
        v77 = &v229;
        v229 = MEMORY[0x277D85DD0];
        v230 = -1073741824;
        v231 = 0;
        v232 = __53__SUSettingsStatefulUIManager_handleFullScanResults___block_invoke_433;
        v233 = &unk_279CB98E8;
        v79 = &v234;
        v234 = MEMORY[0x277D82BE0](selfCopy);
        [(SUSettingsUpdateOperation *)v78 cancel:v77];
        objc_storeStrong(v79, 0);
      }
    }
  }

  [(SUSettingsStatefulUIManager *)selfCopy assignScanRelatedMembersFromScanResults:fullScanResults];
  scanError4 = [fullScanResults scanError];
  scanError = selfCopy->_scanError;
  selfCopy->_scanError = scanError4;
  MEMORY[0x277D82BD8](scanError);
  mdmPathRestrictions = [fullScanResults mdmPathRestrictions];
  selfCopy->_mdmPathRestrictions = mdmPathRestrictions;
  isDelayingUpdate = [fullScanResults isDelayingUpdate];
  selfCopy->_delayingUpdate = isDelayingUpdate;
  isRollingBack = [fullScanResults isRollingBack];
  selfCopy->_rollingBack = isRollingBack;
  rollbackDescriptor = [fullScanResults rollbackDescriptor];
  rollbackDescriptor = selfCopy->_rollbackDescriptor;
  selfCopy->_rollbackDescriptor = rollbackDescriptor;
  MEMORY[0x277D82BD8](rollbackDescriptor);
  currentSeedingDevice = [fullScanResults currentSeedingDevice];
  currentSeedingDevice = selfCopy->_currentSeedingDevice;
  selfCopy->_currentSeedingDevice = currentSeedingDevice;
  MEMORY[0x277D82BD8](currentSeedingDevice);
  betaPrograms4 = [fullScanResults betaPrograms];
  betaPrograms = selfCopy->_betaPrograms;
  selfCopy->_betaPrograms = betaPrograms4;
  MEMORY[0x277D82BD8](betaPrograms);
  enrolledBetaProgram7 = [fullScanResults enrolledBetaProgram];
  enrolledBetaProgram = selfCopy->_enrolledBetaProgram;
  selfCopy->_enrolledBetaProgram = enrolledBetaProgram7;
  MEMORY[0x277D82BD8](enrolledBetaProgram);
  ddmDeclaration = [fullScanResults ddmDeclaration];
  ddmDeclaration = selfCopy->_ddmDeclaration;
  selfCopy->_ddmDeclaration = ddmDeclaration;
  MEMORY[0x277D82BD8](ddmDeclaration);
  mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
  hasSemiSplatActive = [mEMORY[0x277D64418] hasSemiSplatActive];
  MEMORY[0x277D82BD8](mEMORY[0x277D64418]);
  if (hasSemiSplatActive)
  {
    v74 = [(SUSettingsStatefulUIManager *)selfCopy log];
    oslog3 = [(SUCoreLog *)v74 oslog];
    MEMORY[0x277D82BD8](v74);
    v227 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
    {
      v71 = oslog3;
      *v72 = v227;
      v73 = v305;
      __os_log_helper_16_2_1_8_32(v305, v225);
      _os_log_impl(&dword_26AC94000, v71, v72[0], "%s: Rollback already applied, show the user an alert to reboot, and show no available updates.", v73, 0xCu);
    }

    objc_storeStrong(&oslog3, 0);
    [(SUSettingsStatefulUIManager *)selfCopy clearPastScanResults];
    [(SUSettingsStatefulUIManager *)selfCopy handleScanFinishedRollbackApplied:location[0]];
    [(SUCoreFSM *)selfCopy->_managerFSM postEvent:@"NoUpdateAvailable" withInfo:location[0]];
    v226 = 1;
  }

  else if (selfCopy->_scanError)
  {
    domain = [(NSError *)selfCopy->_scanError domain];
    v63 = [(NSString *)domain isEqualToString:*MEMORY[0x277D64910]];
    v70 = 0;
    if (v63)
    {
      v70 = [(NSError *)selfCopy->_scanError code]== 3;
    }

    v68 = v70;
    MEMORY[0x277D82BD8](domain);
    if (v68)
    {
      [(SUSettingsStatefulUIManager *)selfCopy clearPastScanResults];
    }

    [(SUCoreFSM *)selfCopy->_managerFSM postEvent:@"NoUpdateAvailable" withInfo:location[0]];
    v226 = 1;
  }

  else if ([fullScanResults emptyScanResults])
  {
    if (selfCopy->_currentDownload && (selfCopy->_preferredStatefulDescriptor || selfCopy->_alternateStatefulDescriptor))
    {
      [(SUSettingsStatefulUIManager *)selfCopy updateDescriptorsUsingScanResults:fullScanResults andWithConcreteError:0];
      [(SUCoreFSM *)selfCopy->_managerFSM postEvent:@"UpdatesAvailable" withInfo:location[0]];
      v226 = 1;
    }

    else
    {
      [(SUSettingsStatefulUIManager *)selfCopy clearPastScanResults];
      [(SUCoreFSM *)selfCopy->_managerFSM postEvent:@"NoUpdateAvailable" withInfo:location[0]];
      v226 = 0;
    }
  }

  else
  {
    [(SUSettingsStatefulUIManager *)selfCopy assignDescriptorOfType:0 fromSearchResults:fullScanResults];
    [(SUSettingsStatefulUIManager *)selfCopy assignDescriptorOfType:1 fromSearchResults:fullScanResults];
    v66 = 0;
    objc_storeStrong(&selfCopy->_hiddenPreferredStatefulDescriptor, 0);
    objc_storeStrong(&selfCopy->_hiddenAlternateStatefulDescriptor, v66);
    selfCopy->_hidingPreferredDescriptor = 0;
    selfCopy->_hidingAlternateDescriptor = 0;
    currentDownload11 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    MEMORY[0x277D82BD8](currentDownload11);
    if (currentDownload11)
    {
      [(SUSettingsStatefulUIManager *)selfCopy hideNonTargetedUpdateDescriptors];
    }

    [(SUCoreFSM *)selfCopy->_managerFSM postEvent:@"UpdatesAvailable" withInfo:location[0]];
    v226 = 1;
  }

  v65 = 0;
  objc_storeStrong(&fullScanResults, 0);
  objc_storeStrong(location, v65);
  *MEMORY[0x277D85DE8];
}

- (void)handleFailedFullScan:(id)scan
{
  v81 = &v103;
  v82 = "[SUSettingsStatefulUIManager handleFailedFullScan:]";
  v114 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scan);
  v80 = [(SUSettingsStatefulUIManager *)selfCopy log];
  oslog = [(SUCoreLog *)v80 oslog];
  MEMORY[0x277D82BD8](v80);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = *(v81 + 7);
    *v75 = type;
    v76 = SUSettingsUIStateToString([*(v81 + 10) currentState]);
    v3 = MEMORY[0x277D82BE0](v76);
    v4 = v81;
    v77 = v3;
    *(v81 + 5) = v3;
    currentState = [v4[10] currentState];
    delegate = [*(v81 + 10) delegate];
    v105 = 0;
    v104 = 0;
    if (delegate)
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
    delegate2 = [*(v81 + 10) delegate];
    scanError = [*(v81 + 10) scanError];
    preferredStatefulDescriptor = [*(v81 + 10) preferredStatefulDescriptor];
    alternateStatefulDescriptor = [*(v81 + 10) alternateStatefulDescriptor];
    currentDownload = [*(v81 + 10) currentDownload];
    v102 = 0;
    v100 = 0;
    v98 = 0;
    if (currentDownload)
    {
      currentDownload2 = [*(v81 + 10) currentDownload];
      *v81 = currentDownload2;
      v64 = 1;
      v102 = 1;
      descriptor = [currentDownload2 descriptor];
      v100 = 1;
      humanReadableUpdateName = [descriptor humanReadableUpdateName];
      v98 = 1;
      v65 = humanReadableUpdateName;
    }

    else
    {
      v65 = @"(null)";
    }

    v51 = v65;
    currentDownload3 = [*(v81 + 10) currentDownload];
    performThirdPartyScan = [*(v81 + 10) performThirdPartyScan];
    v58 = "NO";
    v9 = "YES";
    v59 = "YES";
    if ((performThirdPartyScan & 1) == 0)
    {
      v9 = "NO";
    }

    v53 = v9;
    isTargetedUpdateScheduledForAutoInstall = [*(v81 + 10) isTargetedUpdateScheduledForAutoInstall];
    v11 = v59;
    if ((isTargetedUpdateScheduledForAutoInstall & 1) == 0)
    {
      v11 = v58;
    }

    v54 = v11;
    hidingPreferredDescriptor = [*(v81 + 10) hidingPreferredDescriptor];
    v13 = v59;
    if ((hidingPreferredDescriptor & 1) == 0)
    {
      v13 = v58;
    }

    v55 = v13;
    humanReadableUpdateName2 = [*(*(v81 + 10) + 256) humanReadableUpdateName];
    v57 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
    v97 = v57;
    hidingAlternateDescriptor = [*(v81 + 10) hidingAlternateDescriptor];
    v15 = v59;
    if ((hidingAlternateDescriptor & 1) == 0)
    {
      v15 = v58;
    }

    v60 = v15;
    humanReadableUpdateName3 = [*(*(v81 + 10) + 264) humanReadableUpdateName];
    v62 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
    v96 = v62;
    enrolledBetaProgram = [*(v81 + 10) enrolledBetaProgram];
    v94 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [*(v81 + 10) enrolledBetaProgram];
      v94 = 1;
      programID = [enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v39 = programID;
    betaPrograms = [*(v81 + 10) betaPrograms];
    v40 = [betaPrograms count];
    currentFullScanOperation = [*(v81 + 10) currentFullScanOperation];
    currentRefreshScanOperation = [*(v81 + 10) currentRefreshScanOperation];
    currentUpdateOperation = [*(v81 + 10) currentUpdateOperation];
    auxiliaryOperations = [*(v81 + 10) auxiliaryOperations];
    v41 = [auxiliaryOperations count];
    error = [*(v81 + 8) error];
    v42 = &v23;
    buf = v113;
    __os_log_helper_16_2_23_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66(v113, v82, v77, currentState, v66, delegate2, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v51, currentDownload3, v53, v54, v55, v57, v60, v62, programID, v40, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, v41, error);
    _os_log_impl(&dword_26AC94000, log, v75[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to perform a full-scan with error: %{public}@", buf, 0xE8u);
    MEMORY[0x277D82BD8](error);
    MEMORY[0x277D82BD8](auxiliaryOperations);
    MEMORY[0x277D82BD8](currentUpdateOperation);
    MEMORY[0x277D82BD8](currentRefreshScanOperation);
    MEMORY[0x277D82BD8](currentFullScanOperation);
    MEMORY[0x277D82BD8](betaPrograms);
    if (v94)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v98)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    if (v100)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v102)
    {
      MEMORY[0x277D82BD8](*v81);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate2);
    if (v104)
    {
      MEMORY[0x277D82BD8](*(v81 + 2));
    }

    if (v105)
    {
      MEMORY[0x277D82BD8](*(v81 + 4));
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](v76);
    obj = 0;
    objc_storeStrong(&v96, 0);
    objc_storeStrong(&v97, obj);
    objc_storeStrong(&v106, obj);
  }

  objc_storeStrong(&oslog, 0);
  error2 = [*(v81 + 8) error];
  v17 = *(v81 + 10);
  v18 = *(v17 + 96);
  *(v17 + 96) = error2;
  MEMORY[0x277D82BD8](v18);
  domain = [*(*(v81 + 10) + 96) domain];
  v19 = [domain isEqualToString:*MEMORY[0x277D64910]];
  v37 = 0;
  if (v19)
  {
    v37 = [*(*(v81 + 10) + 96) code] == 26;
  }

  v35 = v37;
  MEMORY[0x277D82BD8](domain);
  if (!v35)
  {
    goto LABEL_45;
  }

  v93 = 0;
  retries = [*(v81 + 8) retries];
  v21 = __OFSUB__(retries, 1);
  v93 = retries - 1;
  v111 = v21 || retries - 1 != (retries - 1);
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
      retries2 = [*(v81 + 8) retries];
      v32 = v112;
      __os_log_helper_16_2_2_8_32_4_0(v112, v82, retries2 + 1);
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

- (void)handleRefreshScanResults:(id)results
{
  v62 = "[SUSettingsStatefulUIManager handleRefreshScanResults:]";
  v90 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  refreshScanResults = [location[0] refreshScanResults];
  v61 = [(SUSettingsStatefulUIManager *)selfCopy log];
  oslog = [(SUCoreLog *)v61 oslog];
  MEMORY[0x277D82BD8](v61);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v56 = type;
    v57 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
    v58 = MEMORY[0x277D82BE0](v57);
    v83 = v58;
    currentState = [(SUSettingsStatefulUIManager *)selfCopy currentState];
    delegate = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    v81 = 0;
    v79 = 0;
    if (delegate)
    {
      delegate2 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
    delegate3 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    scanError = [(SUSettingsStatefulUIManager *)selfCopy scanError];
    preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
    alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
    currentDownload = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    v77 = 0;
    v75 = 0;
    v73 = 0;
    if (currentDownload)
    {
      currentDownload2 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v45 = 1;
      v77 = 1;
      descriptor = [(SUDownload *)currentDownload2 descriptor];
      v75 = 1;
      humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v73 = 1;
      v46 = humanReadableUpdateName;
    }

    else
    {
      v46 = @"(null)";
    }

    v32 = v46;
    currentDownload3 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    performThirdPartyScan = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
    v39 = "NO";
    v5 = "YES";
    v40 = "YES";
    if (!performThirdPartyScan)
    {
      v5 = "NO";
    }

    v34 = v5;
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
    v7 = v40;
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v7 = v39;
    }

    v35 = v7;
    hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
    v9 = v40;
    if (!hidingPreferredDescriptor)
    {
      v9 = v39;
    }

    v36 = v9;
    humanReadableUpdateName2 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v38 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
    v72 = v38;
    hidingAlternateDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
    v11 = v40;
    if (!hidingAlternateDescriptor)
    {
      v11 = v39;
    }

    v41 = v11;
    humanReadableUpdateName3 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v43 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
    v71 = v43;
    enrolledBetaProgram = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
    v69 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v69 = 1;
      programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v20 = programID;
    betaPrograms = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
    v21 = [(NSArray *)betaPrograms count];
    currentFullScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
    currentRefreshScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
    currentUpdateOperation = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
    auxiliaryOperations = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
    v22 = [(NSMutableSet *)auxiliaryOperations count];
    scanUUID = [refreshScanResults scanUUID];
    v23 = &v12;
    buf = v89;
    __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66_8_66(v89, v62, v58, currentState, v47, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v32, currentDownload3, v34, v35, v36, v38, v41, v43, programID, v21, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, v22, scanUUID, refreshScanResults);
    _os_log_impl(&dword_26AC94000, log, v56[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to refresh the current scan results with ID: %{public}@.\nResults: %{public}@", buf, 0xF2u);
    MEMORY[0x277D82BD8](scanUUID);
    MEMORY[0x277D82BD8](auxiliaryOperations);
    MEMORY[0x277D82BD8](currentUpdateOperation);
    MEMORY[0x277D82BD8](currentRefreshScanOperation);
    MEMORY[0x277D82BD8](currentFullScanOperation);
    MEMORY[0x277D82BD8](betaPrograms);
    if (v69)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v73)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    if (v75)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v77)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v79)
    {
      MEMORY[0x277D82BD8](v80);
    }

    if (v81)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](v57);
    obj = 0;
    objc_storeStrong(&v71, 0);
    objc_storeStrong(&v72, obj);
    objc_storeStrong(&v83, obj);
  }

  objc_storeStrong(&oslog, 0);
  suClient = selfCopy->_suClient;
  v13 = &v63;
  v63 = MEMORY[0x277D85DD0];
  v64 = -1073741824;
  v65 = 0;
  v66 = __56__SUSettingsStatefulUIManager_handleRefreshScanResults___block_invoke;
  v67 = &unk_279CB9690;
  v16 = v68;
  v68[0] = MEMORY[0x277D82BE0](selfCopy);
  v15 = (v13 + 5);
  v17 = location;
  v68[1] = MEMORY[0x277D82BE0](location[0]);
  [(SUManagerClient *)suClient isScanning:v13];
  v18 = 0;
  objc_storeStrong(v15, 0);
  objc_storeStrong(v16, v18);
  objc_storeStrong(&refreshScanResults, v18);
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

- (void)assignRefreshScanResults:(id)results
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  refreshScanResults = [location[0] refreshScanResults];
  v13 = [(SUSettingsStatefulUIManager *)selfCopy assignScanRelatedMembersFromScanResults:refreshScanResults];
  preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
  alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
  if (*&selfCopy->_preferredStatefulDescriptor == 0)
  {
    if (!selfCopy->_currentDownload)
    {
      objc_storeStrong(&selfCopy->_preferredStatefulDescriptor, 0);
      objc_storeStrong(&selfCopy->_alternateStatefulDescriptor, 0);
    }
  }

  else
  {
    [(SUSettingsStatefulUIManager *)selfCopy updateDescriptorsUsingScanResults:refreshScanResults andWithConcreteError:0];
  }

  if (selfCopy->_preferredStatefulDescriptor == preferredStatefulDescriptor || (v8 = 1, selfCopy->_preferredStatefulDescriptor) && (v8 = 1, [(SUSettingsStatefulDescriptor *)selfCopy->_preferredStatefulDescriptor isEqual:preferredStatefulDescriptor]))
  {
    v7 = 0;
    if (selfCopy->_alternateStatefulDescriptor != alternateStatefulDescriptor)
    {
      LOBYTE(v6) = 1;
      if (selfCopy->_alternateStatefulDescriptor)
      {
        v6 = ![(SUSettingsStatefulDescriptor *)selfCopy->_alternateStatefulDescriptor isEqual:alternateStatefulDescriptor];
      }

      v7 = v6;
    }

    v8 = v7;
  }

  v10 = v8 & 1;
  v5 = [(SUSettingsStatefulUIManager *)selfCopy log];
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
  objc_storeStrong(&alternateStatefulDescriptor, 0);
  objc_storeStrong(&preferredStatefulDescriptor, 0);
  objc_storeStrong(&refreshScanResults, 0);
  objc_storeStrong(v3, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)assignScanRelatedMembersFromScanResults:(id)results
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v33 = 0;
  v25 = MEMORY[0x277D82BE0](selfCopy);
  objc_sync_enter(v25);
  agreementManager = selfCopy->_agreementManager;
  v31 = 0;
  agreementManager = [location[0] agreementManager];
  v24 = 0;
  if (agreementManager != agreementManager)
  {
    LOBYTE(v22) = 1;
    if (selfCopy->_agreementManager)
    {
      agreementManager2 = [location[0] agreementManager];
      v31 = 1;
      v22 = [agreementManager2 isEqual:selfCopy->_agreementManager] ^ 1;
    }

    v24 = v22;
  }

  if (v31)
  {
    MEMORY[0x277D82BD8](agreementManager2);
  }

  MEMORY[0x277D82BD8](agreementManager);
  if (v24)
  {
    agreementManager3 = [location[0] agreementManager];
    v4 = selfCopy->_agreementManager;
    selfCopy->_agreementManager = agreementManager3;
    MEMORY[0x277D82BD8](v4);
    v33 = 1;
  }

  clearingSpaceForDownload = selfCopy->_clearingSpaceForDownload;
  if (clearingSpaceForDownload != [location[0] isClearingSpaceForDownload])
  {
    isClearingSpaceForDownload = [location[0] isClearingSpaceForDownload];
    selfCopy->_clearingSpaceForDownload = isClearingSpaceForDownload;
    v33 = 1;
  }

  currentDownload = selfCopy->_currentDownload;
  v29 = 0;
  currentDownload = [location[0] currentDownload];
  v18 = 0;
  if (currentDownload != currentDownload)
  {
    LOBYTE(v16) = 1;
    if (selfCopy->_currentDownload)
    {
      currentDownload2 = [location[0] currentDownload];
      v29 = 1;
      v16 = [currentDownload2 isEqual:selfCopy->_currentDownload] ^ 1;
    }

    v18 = v16;
  }

  if (v29)
  {
    MEMORY[0x277D82BD8](currentDownload2);
  }

  MEMORY[0x277D82BD8](currentDownload);
  if (v18)
  {
    currentDownload3 = [location[0] currentDownload];
    v6 = selfCopy->_currentDownload;
    selfCopy->_currentDownload = currentDownload3;
    MEMORY[0x277D82BD8](v6);
    v33 = 1;
  }

  isAutoUpdateScheduled = selfCopy->_isAutoUpdateScheduled;
  if (isAutoUpdateScheduled != [location[0] isAutoUpdateScheduled])
  {
    isAutoUpdateScheduled = [location[0] isAutoUpdateScheduled];
    selfCopy->_isAutoUpdateScheduled = isAutoUpdateScheduled;
    v33 = 1;
  }

  currentAutoInstallOperation = selfCopy->_currentAutoInstallOperation;
  v27 = 0;
  currentAutoInstallOperation = [location[0] currentAutoInstallOperation];
  v12 = 0;
  if (currentAutoInstallOperation != currentAutoInstallOperation)
  {
    LOBYTE(v10) = 1;
    if (selfCopy->_currentAutoInstallOperation)
    {
      currentAutoInstallOperation2 = [location[0] currentAutoInstallOperation];
      v27 = 1;
      v10 = [currentAutoInstallOperation2 isEqual:selfCopy->_currentAutoInstallOperation] ^ 1;
    }

    v12 = v10;
  }

  if (v27)
  {
    MEMORY[0x277D82BD8](currentAutoInstallOperation2);
  }

  MEMORY[0x277D82BD8](currentAutoInstallOperation);
  if (v12)
  {
    if (selfCopy->_currentAutoInstallOperation)
    {
      [(SUAutoInstallOperation *)selfCopy->_currentAutoInstallOperation setDelegate:0];
    }

    currentAutoInstallOperation3 = [location[0] currentAutoInstallOperation];
    v8 = selfCopy->_currentAutoInstallOperation;
    selfCopy->_currentAutoInstallOperation = currentAutoInstallOperation3;
    MEMORY[0x277D82BD8](v8);
    v33 = 1;
    if (selfCopy->_currentAutoInstallOperation)
    {
      [(SUAutoInstallOperation *)selfCopy->_currentAutoInstallOperation setDelegate:selfCopy];
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
  selfCopy = self;
  v9[1] = a2;
  v9[0] = [[SUSettingsScanOptions alloc] initWithScanOptions:?];
  options = [(SUSettingsStatefulUIManager *)selfCopy options];
  allowUnrestrictedCellularDownload = [(SUSettingsStatefulUIOptions *)options allowUnrestrictedCellularDownload];
  [v9[0] setAllowUnrestrictedCellularDownload:allowUnrestrictedCellularDownload];
  MEMORY[0x277D82BD8](options);
  currentSeedingDevice = [(SUSettingsStatefulUIManager *)selfCopy currentSeedingDevice];
  [v9[0] setCurrentSeedingDevice:?];
  MEMORY[0x277D82BD8](currentSeedingDevice);
  options2 = [(SUSettingsStatefulUIManager *)selfCopy options];
  clientIsBuddy = [(SUSettingsStatefulUIOptions *)options2 clientIsBuddy];
  [v9[0] setClientIsBuddy:clientIsBuddy];
  MEMORY[0x277D82BD8](options2);
  v8 = MEMORY[0x277D82BE0](v9[0]);
  objc_storeStrong(v9, 0);

  return v8;
}

- (id)targetedUpdateForDownload:(id)download
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  preferredStatefulDescriptor = selfCopy->_preferredStatefulDescriptor;
  descriptor = [location[0] descriptor];
  v10 = [(SUSettingsStatefulDescriptor *)preferredStatefulDescriptor isEqualToDescriptor:?];
  MEMORY[0x277D82BD8](descriptor);
  if (v10)
  {
    v13 = MEMORY[0x277D82BE0](selfCopy->_preferredStatefulDescriptor);
  }

  else
  {
    alternateStatefulDescriptor = selfCopy->_alternateStatefulDescriptor;
    descriptor2 = [location[0] descriptor];
    v7 = [(SUSettingsStatefulDescriptor *)alternateStatefulDescriptor isEqualToDescriptor:?];
    MEMORY[0x277D82BD8](descriptor2);
    if (v7)
    {
      v13 = MEMORY[0x277D82BE0](selfCopy->_alternateStatefulDescriptor);
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

- (id)targetedUpdateMatchingDescriptor:(id)descriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  if ([(SUSettingsStatefulDescriptor *)selfCopy->_preferredStatefulDescriptor isEqualToDescriptor:location[0]])
  {
    v7 = MEMORY[0x277D82BE0](selfCopy->_preferredStatefulDescriptor);
  }

  else if ([(SUSettingsStatefulDescriptor *)selfCopy->_alternateStatefulDescriptor isEqualToDescriptor:location[0]])
  {
    v7 = MEMORY[0x277D82BE0](selfCopy->_alternateStatefulDescriptor);
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v7;

  return v3;
}

- (void)beginUpdateOperationWithDescriptor:(id)descriptor operationDelegate:(id)delegate delegateCallbackQueue:(id)queue operationTypeBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v22 = 0;
  objc_storeStrong(&v22, delegate);
  v21 = 0;
  objc_storeStrong(&v21, queue);
  v20 = 0;
  objc_storeStrong(&v20, block);
  queue = selfCopy->_workQueue;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __125__SUSettingsStatefulUIManager_beginUpdateOperationWithDescriptor_operationDelegate_delegateCallbackQueue_operationTypeBlock___block_invoke;
  v14 = &unk_279CB9910;
  v15 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)updateStatePostDownloadOperation:(BOOL)operation withDownload:(id)download error:(id)error completionHandler:(id)handler
{
  selfCopy = self;
  v12 = a2;
  operationCopy = operation;
  location = 0;
  objc_storeStrong(&location, download);
  v9 = 0;
  objc_storeStrong(&v9, error);
  v8 = 0;
  objc_storeStrong(&v8, handler);
  [(SUSettingsStatefulUIManager *)selfCopy performPostUpdateOperationRefresh:operationCopy withDownload:location didScheduledUpdate:0 autoInstallOperation:0 error:v9 completionHandler:v8];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&location, 0);
}

- (void)performPostUpdateOperationRefresh:(BOOL)refresh withDownload:(id)download didScheduledUpdate:(BOOL)update autoInstallOperation:(id)operation error:(id)error completionHandler:(id)handler
{
  updateCopy = update;
  obj = operation;
  errorCopy = error;
  handlerCopy = handler;
  v81 = "[SUSettingsStatefulUIManager performPostUpdateOperationRefresh:withDownload:didScheduledUpdate:autoInstallOperation:error:completionHandler:]";
  v122 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v119 = a2;
  refreshCopy = refresh;
  location = 0;
  objc_storeStrong(&location, download);
  v116 = updateCopy;
  v115 = 0;
  objc_storeStrong(&v115, obj);
  v114 = 0;
  objc_storeStrong(&v114, errorCopy);
  v113 = 0;
  objc_storeStrong(&v113, handlerCopy);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  MEMORY[0x277D82BD8](uUID);
  v80 = [(SUSettingsStatefulUIManager *)selfCopy log];
  oslog = [(SUCoreLog *)v80 oslog];
  MEMORY[0x277D82BD8](v80);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v75 = type;
    v76 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
    v77 = MEMORY[0x277D82BE0](v76);
    v109 = v77;
    currentState = [(SUSettingsStatefulUIManager *)selfCopy currentState];
    delegate = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    v107 = 0;
    v105 = 0;
    if (delegate)
    {
      delegate2 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
    delegate3 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    scanError = [(SUSettingsStatefulUIManager *)selfCopy scanError];
    preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
    alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
    currentDownload = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    v103 = 0;
    v101 = 0;
    v99 = 0;
    if (currentDownload)
    {
      currentDownload2 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v64 = 1;
      v103 = 1;
      descriptor = [(SUDownload *)currentDownload2 descriptor];
      v101 = 1;
      humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v99 = 1;
      v65 = humanReadableUpdateName;
    }

    else
    {
      v65 = @"(null)";
    }

    v51 = v65;
    currentDownload3 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    performThirdPartyScan = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
    v58 = "NO";
    v10 = "YES";
    v59 = "YES";
    if (!performThirdPartyScan)
    {
      v10 = "NO";
    }

    v53 = v10;
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
    v12 = v59;
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v12 = v58;
    }

    v54 = v12;
    hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
    v14 = v59;
    if (!hidingPreferredDescriptor)
    {
      v14 = v58;
    }

    v55 = v14;
    humanReadableUpdateName2 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v57 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
    v98 = v57;
    hidingAlternateDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
    v16 = v59;
    if (!hidingAlternateDescriptor)
    {
      v16 = v58;
    }

    v60 = v16;
    humanReadableUpdateName3 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v62 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
    v97 = v62;
    enrolledBetaProgram = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
    v95 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v95 = 1;
      programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v41 = programID;
    betaPrograms = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
    v42 = [(NSArray *)betaPrograms count];
    currentFullScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
    currentRefreshScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
    currentUpdateOperation = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
    auxiliaryOperations = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
    v43 = &v20;
    buf = v121;
    __os_log_helper_16_2_23_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66(v121, v81, v77, currentState, v66, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v51, currentDownload3, v53, v54, v55, v57, v60, v62, programID, v42, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, [(NSMutableSet *)auxiliaryOperations count], uUIDString);
    _os_log_impl(&dword_26AC94000, log, v75[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBeginning a post download refresh operation with scan ID: %{public}@", buf, 0xE8u);
    MEMORY[0x277D82BD8](auxiliaryOperations);
    MEMORY[0x277D82BD8](currentUpdateOperation);
    MEMORY[0x277D82BD8](currentRefreshScanOperation);
    MEMORY[0x277D82BD8](currentFullScanOperation);
    MEMORY[0x277D82BD8](betaPrograms);
    if (v95)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v99)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    if (v101)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v103)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v105)
    {
      MEMORY[0x277D82BD8](v106);
    }

    if (v107)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](v76);
    v40 = 0;
    objc_storeStrong(&v97, 0);
    objc_storeStrong(&v98, v40);
    objc_storeStrong(&v109, v40);
  }

  objc_storeStrong(&oslog, 0);
  v17 = [SUSettingsScanOperation alloc];
  v34 = &uUIDString;
  v18 = [(SUSettingsScanOperation *)v17 initWithUUID:uUIDString usingSUManagerClient:selfCopy->_suClient andBetaManager:selfCopy->_seedingBetaManager withCompletionQueue:selfCopy->_workQueue];
  v33 = &v94;
  v94 = v18;
  [(NSMutableSet *)selfCopy->_auxiliaryOperations addObject:v18];
  v21 = &v87;
  v87 = MEMORY[0x277D85DD0];
  v88 = -1073741824;
  v89 = 0;
  v90 = __142__SUSettingsStatefulUIManager_performPostUpdateOperationRefresh_withDownload_didScheduledUpdate_autoInstallOperation_error_completionHandler___block_invoke;
  v91 = &unk_279CB9938;
  v32 = v92;
  v92[0] = MEMORY[0x277D82BE0](selfCopy);
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
  descriptor2 = [(SUSettingsStatefulDescriptor *)selfCopy->_preferredStatefulDescriptor descriptor];
  descriptor3 = [(SUSettingsStatefulDescriptor *)selfCopy->_alternateStatefulDescriptor descriptor];
  latestUpdateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy latestUpdateStatefulDescriptor];
  descriptor4 = [latestUpdateStatefulDescriptor descriptor];
  createScanOperationOptions = [(SUSettingsStatefulUIManager *)selfCopy createScanOperationOptions];
  p_location = &location;
  v37 = &v115;
  [v22 refreshScanResultsWithPreferredUpdate:descriptor2 alternateUpdate:descriptor3 latestUpdate:descriptor4 options:v114 previouslyDiscoveredDownload:v93 previouslyDiscoveredAutoInstallOperation:? encounteredError:? completionHandler:?];
  MEMORY[0x277D82BD8](createScanOperationOptions);
  MEMORY[0x277D82BD8](descriptor4);
  MEMORY[0x277D82BD8](latestUpdateStatefulDescriptor);
  MEMORY[0x277D82BD8](descriptor3);
  MEMORY[0x277D82BD8](descriptor2);
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
  selfCopy = self;
  v7[1] = a2;
  v7[0] = objc_alloc_init(SUSettingsUpdateOptions);
  allowUnrestrictedCellularDownload = [(SUSettingsStatefulUIOptions *)selfCopy->_options allowUnrestrictedCellularDownload];
  [v7[0] setAllowUnrestrictedCellularDownload:allowUnrestrictedCellularDownload];
  clientIsBuddy = [(SUSettingsStatefulUIOptions *)selfCopy->_options clientIsBuddy];
  [v7[0] setClientIsBuddy:clientIsBuddy];
  bypassTermsAndConditions = [(SUSettingsStatefulUIOptions *)selfCopy->_options bypassTermsAndConditions];
  [v7[0] setBypassTermsAndConditions:bypassTermsAndConditions];
  [v7[0] setAgreementManager:selfCopy->_agreementManager];
  v6 = MEMORY[0x277D82BE0](v7[0]);
  objc_storeStrong(v7, 0);

  return v6;
}

- (void)hidePreferredUpdate
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[3] = a2;
  obj = MEMORY[0x277D82BE0](self);
  objc_sync_enter(obj);
  if ([(SUSettingsStatefulUIOptions *)selfCopy->_options shouldHideNonTargetedUpdatesPostUserSelection])
  {
    v3 = [(SUSettingsStatefulUIManager *)selfCopy log];
    oslog = [(SUCoreLog *)v3 oslog];
    MEMORY[0x277D82BD8](v3);
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      humanReadableUpdateName = [(SUSettingsStatefulDescriptor *)selfCopy->_preferredStatefulDescriptor humanReadableUpdateName];
      v6 = MEMORY[0x277D82BE0](humanReadableUpdateName);
      __os_log_helper_16_2_2_8_32_8_66(v13, "[SUSettingsStatefulUIManager hidePreferredUpdate]", v6);
      _os_log_impl(&dword_26AC94000, oslog, v7, "%s: Hiding preferred update: %{public}@", v13, 0x16u);
      MEMORY[0x277D82BD8](humanReadableUpdateName);
      objc_storeStrong(&v6, 0);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong(&selfCopy->_hiddenPreferredStatefulDescriptor, selfCopy->_preferredStatefulDescriptor);
    objc_storeStrong(&selfCopy->_preferredStatefulDescriptor, selfCopy->_alternateStatefulDescriptor);
    objc_storeStrong(&selfCopy->_alternateStatefulDescriptor, 0);
    selfCopy->_hidingPreferredDescriptor = 1;
    selfCopy->_hidingAlternateDescriptor = 0;
    v9 = 0;
  }

  else
  {
    v4 = [(SUSettingsStatefulUIManager *)selfCopy log];
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
  selfCopy = self;
  location[3] = a2;
  obj = MEMORY[0x277D82BE0](self);
  objc_sync_enter(obj);
  if ([(SUSettingsStatefulUIOptions *)selfCopy->_options shouldHideNonTargetedUpdatesPostUserSelection])
  {
    v3 = [(SUSettingsStatefulUIManager *)selfCopy log];
    oslog = [(SUCoreLog *)v3 oslog];
    MEMORY[0x277D82BD8](v3);
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      humanReadableUpdateName = [(SUSettingsStatefulDescriptor *)selfCopy->_alternateStatefulDescriptor humanReadableUpdateName];
      v6 = MEMORY[0x277D82BE0](humanReadableUpdateName);
      __os_log_helper_16_2_2_8_32_8_66(v13, "[SUSettingsStatefulUIManager hideAlternateUpdate]", v6);
      _os_log_impl(&dword_26AC94000, oslog, v7, "%s: Hiding alternate update: %{public}@", v13, 0x16u);
      MEMORY[0x277D82BD8](humanReadableUpdateName);
      objc_storeStrong(&v6, 0);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong(&selfCopy->_hiddenAlternateStatefulDescriptor, selfCopy->_alternateStatefulDescriptor);
    objc_storeStrong(&selfCopy->_alternateStatefulDescriptor, 0);
    selfCopy->_hidingPreferredDescriptor = 0;
    selfCopy->_hidingAlternateDescriptor = 1;
    v9 = 0;
  }

  else
  {
    v4 = [(SUSettingsStatefulUIManager *)selfCopy log];
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
  selfCopy = self;
  location[3] = a2;
  obj = MEMORY[0x277D82BE0](self);
  objc_sync_enter(obj);
  if ([(SUSettingsStatefulUIOptions *)selfCopy->_options shouldHideNonTargetedUpdatesPostUserSelection])
  {
    v3 = [(SUSettingsStatefulUIManager *)selfCopy log];
    oslog = [(SUCoreLog *)v3 oslog];
    MEMORY[0x277D82BD8](v3);
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      humanReadableUpdateName = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
      v6 = MEMORY[0x277D82BE0](humanReadableUpdateName);
      __os_log_helper_16_2_2_8_32_8_66(v13, "[SUSettingsStatefulUIManager revealHiddenPreferredUpdate]", v6);
      _os_log_impl(&dword_26AC94000, oslog, v7, "%s: Revealing the previously hidden preferred update: %{public}@", v13, 0x16u);
      MEMORY[0x277D82BD8](humanReadableUpdateName);
      objc_storeStrong(&v6, 0);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong(&selfCopy->_alternateStatefulDescriptor, selfCopy->_preferredStatefulDescriptor);
    objc_storeStrong(&selfCopy->_preferredStatefulDescriptor, selfCopy->_hiddenPreferredStatefulDescriptor);
    objc_storeStrong(&selfCopy->_hiddenPreferredStatefulDescriptor, 0);
    selfCopy->_hidingPreferredDescriptor = 0;
    v9 = 0;
  }

  else
  {
    v4 = [(SUSettingsStatefulUIManager *)selfCopy log];
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
  selfCopy = self;
  location[3] = a2;
  obj = MEMORY[0x277D82BE0](self);
  objc_sync_enter(obj);
  if ([(SUSettingsStatefulUIOptions *)selfCopy->_options shouldHideNonTargetedUpdatesPostUserSelection])
  {
    v3 = [(SUSettingsStatefulUIManager *)selfCopy log];
    oslog = [(SUCoreLog *)v3 oslog];
    MEMORY[0x277D82BD8](v3);
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      humanReadableUpdateName = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
      v6 = MEMORY[0x277D82BE0](humanReadableUpdateName);
      __os_log_helper_16_2_2_8_32_8_66(v13, "[SUSettingsStatefulUIManager revealHiddenAlteranteUpdate]", v6);
      _os_log_impl(&dword_26AC94000, oslog, v7, "%s: Reveal the previously hidden alternate update: %{public}@", v13, 0x16u);
      MEMORY[0x277D82BD8](humanReadableUpdateName);
      objc_storeStrong(&v6, 0);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong(&selfCopy->_alternateStatefulDescriptor, selfCopy->_hiddenAlternateStatefulDescriptor);
    objc_storeStrong(&selfCopy->_hiddenAlternateStatefulDescriptor, 0);
    selfCopy->_hidingAlternateDescriptor = 0;
    v9 = 0;
  }

  else
  {
    v4 = [(SUSettingsStatefulUIManager *)selfCopy log];
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

- (void)doEnrollInBetaUpdatesProgram:(id)program completionHandler:(id)handler
{
  obj = handler;
  v67 = "[SUSettingsStatefulUIManager doEnrollInBetaUpdatesProgram:completionHandler:]";
  v96 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, program);
  v92 = 0;
  objc_storeStrong(&v92, obj);
  v66 = [(SUSettingsStatefulUIManager *)selfCopy log];
  oslog = [(SUCoreLog *)v66 oslog];
  MEMORY[0x277D82BD8](v66);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v61 = type;
    v62 = SUSettingsUIStateToString([(SUSettingsStatefulUIManager *)selfCopy currentState]);
    v63 = MEMORY[0x277D82BE0](v62);
    v89 = v63;
    currentState = [(SUSettingsStatefulUIManager *)selfCopy currentState];
    delegate = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    v87 = 0;
    v85 = 0;
    if (delegate)
    {
      delegate2 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
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
    delegate3 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    scanError = [(SUSettingsStatefulUIManager *)selfCopy scanError];
    preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
    alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
    currentDownload = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    v83 = 0;
    v81 = 0;
    v79 = 0;
    if (currentDownload)
    {
      currentDownload2 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
      v50 = 1;
      v83 = 1;
      descriptor = [(SUDownload *)currentDownload2 descriptor];
      v81 = 1;
      humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v79 = 1;
      v51 = humanReadableUpdateName;
    }

    else
    {
      v51 = @"(null)";
    }

    v37 = v51;
    currentDownload3 = [(SUSettingsStatefulUIManager *)selfCopy currentDownload];
    performThirdPartyScan = [(SUSettingsStatefulUIManager *)selfCopy performThirdPartyScan];
    v44 = "NO";
    v6 = "YES";
    v45 = "YES";
    if (!performThirdPartyScan)
    {
      v6 = "NO";
    }

    v39 = v6;
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
    v8 = v45;
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v8 = v44;
    }

    v40 = v8;
    hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
    v10 = v45;
    if (!hidingPreferredDescriptor)
    {
      v10 = v44;
    }

    v41 = v10;
    humanReadableUpdateName2 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenPreferredStatefulDescriptor humanReadableUpdateName];
    v43 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
    v78 = v43;
    hidingAlternateDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor];
    v12 = v45;
    if (!hidingAlternateDescriptor)
    {
      v12 = v44;
    }

    v46 = v12;
    humanReadableUpdateName3 = [(SUSettingsStatefulDescriptor *)selfCopy->_hiddenAlternateStatefulDescriptor humanReadableUpdateName];
    v48 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
    v77 = v48;
    enrolledBetaProgram = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
    v75 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [(SUSettingsStatefulUIManager *)selfCopy enrolledBetaProgram];
      v75 = 1;
      programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v26 = programID;
    betaPrograms = [(SUSettingsStatefulUIManager *)selfCopy betaPrograms];
    v27 = [(NSArray *)betaPrograms count];
    currentFullScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentFullScanOperation];
    currentRefreshScanOperation = [(SUSettingsStatefulUIManager *)selfCopy currentRefreshScanOperation];
    currentUpdateOperation = [(SUSettingsStatefulUIManager *)selfCopy currentUpdateOperation];
    auxiliaryOperations = [(SUSettingsStatefulUIManager *)selfCopy auxiliaryOperations];
    v28 = [(NSMutableSet *)auxiliaryOperations count];
    programID2 = [location[0] programID];
    v29 = &v14;
    buf = v95;
    __os_log_helper_16_2_24_8_32_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_34_8_34_8_34_8_66_8_34_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v95, v67, v63, currentState, v52, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v37, currentDownload3, v39, v40, v41, v43, v46, v48, programID, v27, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, v28, programID2, location[0]);
    _os_log_impl(&dword_26AC94000, log, v61[0], "%s: Stateful UI Manager Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tthirdPartyScan: %{public}s\n\tscheduledForAutoInstall: %{public}s\n\thiddenUpdatesPostSelection: preferred[%{public}s, %{public}@]; alternate[%{public}s, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nAttempts to enroll in beta program: %ld (%p)", buf, 0xF2u);
    MEMORY[0x277D82BD8](auxiliaryOperations);
    MEMORY[0x277D82BD8](currentUpdateOperation);
    MEMORY[0x277D82BD8](currentRefreshScanOperation);
    MEMORY[0x277D82BD8](currentFullScanOperation);
    MEMORY[0x277D82BD8](betaPrograms);
    if (v75)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v79)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    if (v81)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v83)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v85)
    {
      MEMORY[0x277D82BD8](v86);
    }

    if (v87)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](v62);
    v25 = 0;
    objc_storeStrong(&v77, 0);
    objc_storeStrong(&v78, v25);
    objc_storeStrong(&v89, v25);
  }

  objc_storeStrong(&oslog, 0);
  seedingBetaManager = [(SUSettingsStatefulUIManager *)selfCopy seedingBetaManager];
  currentSeedingDevice = [(SUSettingsStatefulUIManager *)selfCopy currentSeedingDevice];
  v23 = location;
  v15 = location[0];
  v16 = &v69;
  v69 = MEMORY[0x277D85DD0];
  v70 = -1073741824;
  v71 = 0;
  v72 = __78__SUSettingsStatefulUIManager_doEnrollInBetaUpdatesProgram_completionHandler___block_invoke;
  v73 = &unk_279CB9960;
  v21 = v74;
  v74[0] = MEMORY[0x277D82BE0](selfCopy);
  v20 = (v16 + 5);
  v74[1] = MEMORY[0x277D82BE0](location[0]);
  v19 = (v16 + 6);
  v22 = &v92;
  v74[2] = MEMORY[0x277D82BE0](v92);
  [(SDBetaManager *)seedingBetaManager enrollDevice:currentSeedingDevice inBetaProgram:v15 completion:v16];
  MEMORY[0x277D82BD8](currentSeedingDevice);
  MEMORY[0x277D82BD8](seedingBetaManager);
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

- (void)handleScanFinishedRollbackApplied:(id)applied
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, applied);
  v4 = [(SUSettingsStatefulUIManager *)selfCopy log];
  oslog = [(SUCoreLog *)v4 oslog];
  MEMORY[0x277D82BD8](v4);
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_32(v16, "[SUSettingsStatefulUIManager handleScanFinishedRollbackApplied:]");
    _os_log_impl(&dword_26AC94000, oslog, v12, "%s: Rollback applied. Attempts to ask to reboot the device.", v16, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  queue = selfCopy->_delegateCallbackQueue;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __65__SUSettingsStatefulUIManager_handleScanFinishedRollbackApplied___block_invoke;
  v9 = &unk_279CB9410;
  v10 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)updateDescriptorsUsingScanResults:(id)results andWithConcreteError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v5 = 0;
  objc_storeStrong(&v5, error);
  [(SUSettingsStatefulUIManager *)selfCopy hideNonTargetedUpdateDescriptors];
  [(SUSettingsStatefulDescriptor *)selfCopy->_preferredStatefulDescriptor updateStateWithScanResults:location[0] andWithConcreteError:v5];
  [(SUSettingsStatefulDescriptor *)selfCopy->_alternateStatefulDescriptor updateStateWithScanResults:location[0] andWithConcreteError:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)hideNonTargetedUpdateDescriptors
{
  if (self->_currentDownload)
  {
    downloadOptions = [(SUDownload *)self->_currentDownload downloadOptions];
    v9 = 0;
    if (([(SUDownloadOptions *)downloadOptions isAutoDownload]& 1) == 0)
    {
      v9 = 0;
      if (!self->_hidingPreferredDescriptor)
      {
        v9 = !self->_hidingAlternateDescriptor;
      }
    }

    MEMORY[0x277D82BD8](downloadOptions);
    if (v9)
    {
      descriptor = [(SUDownload *)self->_currentDownload descriptor];
      descriptor2 = [(SUSettingsStatefulDescriptor *)self->_preferredStatefulDescriptor descriptor];
      v7 = [(SUDescriptor *)descriptor isEqual:?];
      MEMORY[0x277D82BD8](descriptor2);
      MEMORY[0x277D82BD8](descriptor);
      if (v7)
      {
        [(SUSettingsStatefulUIManager *)self hideAlternateUpdate];
      }

      else
      {
        descriptor3 = [(SUDownload *)self->_currentDownload descriptor];
        descriptor4 = [(SUSettingsStatefulDescriptor *)self->_alternateStatefulDescriptor descriptor];
        v4 = [(SUDescriptor *)descriptor3 isEqual:?];
        MEMORY[0x277D82BD8](descriptor4);
        MEMORY[0x277D82BD8](descriptor3);
        if (v4)
        {
          [(SUSettingsStatefulUIManager *)self hidePreferredUpdate];
        }
      }
    }
  }
}

- (void)executeOperationOnDelegate:(SEL)delegate usingBlock:(id)block
{
  selfCopy = self;
  location[2] = a2;
  location[1] = delegate;
  location[0] = 0;
  objc_storeStrong(location, block);
  delegate = [(SUSettingsStatefulUIManager *)selfCopy delegate];
  v14 = 0;
  v7 = 0;
  if (delegate)
  {
    delegate2 = [(SUSettingsStatefulUIManager *)selfCopy delegate];
    v14 = 1;
    v7 = objc_opt_respondsToSelector();
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](delegate2);
  }

  MEMORY[0x277D82BD8](delegate);
  if (v7)
  {
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    queue = [mEMORY[0x277D643F8] selectDelegateCallbackQueue:selfCopy->_delegateCallbackQueue];
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __69__SUSettingsStatefulUIManager_executeOperationOnDelegate_usingBlock___block_invoke;
    v12 = &unk_279CB9438;
    v13 = MEMORY[0x277D82BE0](location[0]);
    dispatch_async(queue, &v8);
    MEMORY[0x277D82BD8](queue);
    MEMORY[0x277D82BD8](mEMORY[0x277D643F8]);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)setCurrentDownload:(id)download
{
  v30 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  obj = MEMORY[0x277D82BE0](selfCopy);
  objc_sync_enter(obj);
  if (location[0] != selfCopy->_currentDownload || (v12 = selfCopy->_currentDownload, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = SUSettingsSharedLogger();
    oslog = [v11 oslog];
    MEMORY[0x277D82BD8](v11);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 0;
      v22 = 0;
      v20 = 0;
      if (selfCopy->_currentDownload && (v25 = [(SUDownload *)selfCopy->_currentDownload descriptor], v24 = 1, v25))
      {
        descriptor = [(SUDownload *)selfCopy->_currentDownload descriptor];
        v22 = 1;
        humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
        v20 = 1;
        v10 = humanReadableUpdateName;
      }

      else
      {
        v10 = @"N/A";
      }

      currentDownload = selfCopy->_currentDownload;
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
        descriptor2 = [location[0] descriptor];
        v16 = 1;
        humanReadableUpdateName2 = [descriptor2 humanReadableUpdateName];
        v14 = 1;
        v6 = humanReadableUpdateName2;
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
      _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%s: Replacing the current download object with a new one.\n\tCurrent: %{public}@ (%p, is SUSUIUninitializedDownload? %{public}@)\n\tNew: %{public}@ (%p, is SUSUIUninitializedDownload? %{public}@)\n", v29, 0x48u);
      if (v14)
      {
        MEMORY[0x277D82BD8](humanReadableUpdateName2);
      }

      if (v16)
      {
        MEMORY[0x277D82BD8](descriptor2);
      }

      if (v18)
      {
        MEMORY[0x277D82BD8](v19);
      }

      if (v20)
      {
        MEMORY[0x277D82BD8](humanReadableUpdateName);
      }

      if (v22)
      {
        MEMORY[0x277D82BD8](descriptor);
      }

      if (v24)
      {
        MEMORY[0x277D82BD8](v25);
      }
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong(&selfCopy->_currentDownload, location[0]);
  }

  objc_sync_exit(obj);
  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)convertFSMStateToUIState:(id)state
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, state);
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

- (void)assignDescriptorOfType:(unint64_t)type fromSearchResults:(id)results
{
  v71 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v66 = a2;
  typeCopy = type;
  location = 0;
  objc_storeStrong(&location, results);
  if (typeCopy < 2)
  {
    v57 = 0;
    v55 = 0;
    if (typeCopy)
    {
      alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy alternateStatefulDescriptor];
      v55 = 1;
      v4 = MEMORY[0x277D82BE0](alternateStatefulDescriptor);
    }

    else
    {
      preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)selfCopy preferredStatefulDescriptor];
      v57 = 1;
      v4 = MEMORY[0x277D82BE0](preferredStatefulDescriptor);
    }

    v59 = v4;
    if (v55)
    {
      MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    }

    if (v57)
    {
      MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    }

    v52 = 0;
    v50 = 0;
    if (typeCopy)
    {
      alternateDescriptor = [location alternateDescriptor];
      v50 = 1;
      v5 = MEMORY[0x277D82BE0](alternateDescriptor);
    }

    else
    {
      preferredDescriptor = [location preferredDescriptor];
      v52 = 1;
      v5 = MEMORY[0x277D82BE0](preferredDescriptor);
    }

    v54 = v5;
    if (v50)
    {
      MEMORY[0x277D82BD8](alternateDescriptor);
    }

    if (v52)
    {
      MEMORY[0x277D82BD8](preferredDescriptor);
    }

    if (v59 || v54)
    {
      if ([v59 isEqualToDescriptor:v54])
      {
        v35 = [(SUSettingsStatefulUIManager *)selfCopy log];
        oslog = [(SUCoreLog *)v35 oslog];
        MEMORY[0x277D82BD8](v35);
        v48 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v30 = oslog;
          v31 = v48;
          v34 = SUSettingsDescriptorTypeToString(typeCopy);
          v26 = MEMORY[0x277D82BE0](v34);
          v47 = v26;
          humanReadableUpdateName = [v59 humanReadableUpdateName];
          v27 = MEMORY[0x277D82BE0](humanReadableUpdateName);
          v46 = v27;
          humanReadableUpdateName2 = [v54 humanReadableUpdateName];
          v28 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
          v45 = v28;
          hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
          v7 = "YES";
          if (!hidingPreferredDescriptor)
          {
            v7 = "NO";
          }

          v29 = v7;
          if ([(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor])
          {
            v8 = "YES";
          }

          else
          {
            v8 = "NO";
          }

          __os_log_helper_16_2_7_8_66_8_66_8_0_8_66_8_0_8_32_8_32(v69, v26, v27, v59, v28, v54, v29, v8);
          _os_log_impl(&dword_26AC94000, v30, v31, "%{public}@ descriptor assignment: the given descriptor is equal to the current stateful descriptor. Updating internal state instead of creation of an entirely new one.\n\tCurrent: %{public}@ (%p)\n\tNew: %{public}@ (%p)\n\tHiding: Preferred - %s; Alternate: %s", v69, 0x48u);
          MEMORY[0x277D82BD8](humanReadableUpdateName2);
          MEMORY[0x277D82BD8](humanReadableUpdateName);
          MEMORY[0x277D82BD8](v34);
          objc_storeStrong(&v45, 0);
          objc_storeStrong(&v46, 0);
          objc_storeStrong(&v47, 0);
        }

        objc_storeStrong(&oslog, 0);
        [(SUSettingsStatefulUIManager *)selfCopy hideNonTargetedUpdateDescriptors];
        [v59 updateStateWithScanResults:location andWithConcreteError:0];
        v60 = 1;
      }

      else
      {
        v25 = [(SUSettingsStatefulUIManager *)selfCopy log];
        oslog = [(SUCoreLog *)v25 oslog];
        MEMORY[0x277D82BD8](v25);
        v43 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v20 = oslog;
          v21 = v43;
          v24 = SUSettingsDescriptorTypeToString(typeCopy);
          v16 = MEMORY[0x277D82BE0](v24);
          v42 = v16;
          humanReadableUpdateName3 = [v59 humanReadableUpdateName];
          v17 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
          v41 = v17;
          humanReadableUpdateName4 = [v54 humanReadableUpdateName];
          v18 = MEMORY[0x277D82BE0](humanReadableUpdateName4);
          v40 = v18;
          hidingPreferredDescriptor2 = [(SUSettingsStatefulUIManager *)selfCopy hidingPreferredDescriptor];
          v10 = "YES";
          if (!hidingPreferredDescriptor2)
          {
            v10 = "NO";
          }

          v19 = v10;
          if ([(SUSettingsStatefulUIManager *)selfCopy hidingAlternateDescriptor])
          {
            v11 = "YES";
          }

          else
          {
            v11 = "NO";
          }

          __os_log_helper_16_2_7_8_66_8_66_8_0_8_66_8_0_8_32_8_32(v68, v16, v17, v59, v18, v54, v19, v11);
          _os_log_impl(&dword_26AC94000, v20, v21, "%{public}@ descriptor assignment: Replacing the current descriptor with a new descriptor.\n\tCurrent: %{public}@ (%p)\n\tNew: %{public}@ (%p)\n\tHiding: Preferred - %s; Alternate: %s", v68, 0x48u);
          MEMORY[0x277D82BD8](humanReadableUpdateName4);
          MEMORY[0x277D82BD8](humanReadableUpdateName3);
          MEMORY[0x277D82BD8](v24);
          objc_storeStrong(&v40, 0);
          objc_storeStrong(&v41, 0);
          objc_storeStrong(&v42, 0);
        }

        objc_storeStrong(&oslog, 0);
        if (typeCopy)
        {
          if (v54)
          {
            v13 = [SUSettingsStatefulDescriptor alloc];
            v14 = [(SUSettingsStatefulDescriptor *)v13 initForDescriptor:typeCopy fromScanResults:location managedBy:selfCopy];
            [(SUSettingsStatefulUIManager *)selfCopy setAlternateStatefulDescriptor:?];
            MEMORY[0x277D82BD8](v14);
          }

          else
          {
            [(SUSettingsStatefulUIManager *)selfCopy setAlternateStatefulDescriptor:0];
          }
        }

        else if (v54)
        {
          v12 = [SUSettingsStatefulDescriptor alloc];
          v15 = [(SUSettingsStatefulDescriptor *)v12 initForDescriptor:typeCopy fromScanResults:location managedBy:selfCopy];
          [(SUSettingsStatefulUIManager *)selfCopy setPreferredStatefulDescriptor:?];
          MEMORY[0x277D82BD8](v15);
        }

        else
        {
          [(SUSettingsStatefulUIManager *)selfCopy setPreferredStatefulDescriptor:0];
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
    v39 = [(SUSettingsStatefulUIManager *)selfCopy log];
    oslog2 = [(SUCoreLog *)v39 oslog];
    MEMORY[0x277D82BD8](v39);
    v62 = 16;
    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
    {
      log = oslog2;
      type = v62;
      v38 = SUSettingsDescriptorTypeToString(typeCopy);
      v61 = MEMORY[0x277D82BE0](v38);
      __os_log_helper_16_2_2_8_32_8_66(v70, "[SUSettingsStatefulUIManager assignDescriptorOfType:fromSearchResults:]", v61);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Invalid descriptor type: %{public}@", v70, 0x16u);
      MEMORY[0x277D82BD8](v38);
      objc_storeStrong(&v61, 0);
    }

    objc_storeStrong(&oslog2, 0);
    v60 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)baseDomain
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  commonDomain = [mEMORY[0x277D643F8] commonDomain];
  v6 = [v3 initWithFormat:@"%@.susettings.fsm.manager", commonDomain];
  MEMORY[0x277D82BD8](commonDomain);
  MEMORY[0x277D82BD8](mEMORY[0x277D643F8]);

  return v6;
}

- (SUSettingsStatefulUIManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end