@interface SUSettingsUpdateOperation
+ (id)_generateStateTable;
- (BOOL)beginOperation:(unint64_t)a3 ofUnattendedInstall:(BOOL)a4 descriptor:(id)a5 options:(id)a6;
- (BOOL)deviceSupportsCellularCapability;
- (BOOL)isCancelableState:(id)a3;
- (SUSettingsUpdateOperation)initWithDescriptor:(id)a3 usingSUManagerClient:(id)a4 delegate:(id)a5;
- (id)baseDomain;
- (int64_t)actionUnknownAction:(id)a3 error:(id *)a4;
- (int64_t)action_AquireKeybag:(id)a3 error:(id *)a4;
- (int64_t)action_InitiateUpdateDownload:(id)a3 error:(id *)a4;
- (int64_t)action_InitiateUpdateInstallation:(id)a3 error:(id *)a4;
- (int64_t)action_PrepareUpdateProcess:(id)a3 error:(id *)a4;
- (int64_t)action_PresentDownloadConstraints:(id)a3 error:(id *)a4;
- (int64_t)action_PresentTermsConditions:(id)a3 error:(id *)a4;
- (int64_t)action_PurgeSpace:(id)a3 error:(id *)a4;
- (int64_t)action_ReportUpdateOperationOutcome:(id)a3 error:(id *)a4;
- (int64_t)action_ResolveUpdateOperation:(id)a3 error:(id *)a4;
- (int64_t)action_ScheduleUpdate:(id)a3 error:(id *)a4;
- (int64_t)performAction:(id)a3 onEvent:(id)a4 inState:(id)a5 withInfo:(id)a6 nextState:(id)a7 error:(id *)a8;
- (void)cancel:(id)a3;
- (void)downloadAndInstall:(id)a3 withOptions:(id)a4 completionHandler:(id)a5;
- (void)downloadAndScheduleUpdate:(id)a3 forInstallationTonightWithOptions:(id)a4 completionHandler:(id)a5;
- (void)downloadUpdate:(id)a3 withOptions:(id)a4 completionHandler:(id)a5;
- (void)installUpdate:(id)a3 withOptions:(id)a4 completionHandler:(id)a5;
- (void)invalidateMachine;
- (void)promoteDownloadToUserInitiated:(id)a3 completionHandler:(id)a4;
- (void)scheduleUpdate:(id)a3 forInstallationTonightWithOptions:(id)a4 completionHandler:(id)a5;
- (void)unscheduleAutomaticInstallation:(id)a3 completionHandler:(id)a4;
@end

@implementation SUSettingsUpdateOperation

+ (id)_generateStateTable
{
  v163[10] = *MEMORY[0x277D85DE8];
  v59[2] = a1;
  v59[1] = a2;
  v162[0] = @"Idle";
  v160[0] = @"BeginDownloadUpdate";
  v4 = MEMORY[0x277D644B8];
  v158 = *MEMORY[0x277D644B8];
  v159 = @"PrepareUpdateProcess";
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v159 forKeys:&v158 count:?];
  v161[0] = v56;
  v160[1] = @"PrepareUpdateProcessSuccess";
  v5 = MEMORY[0x277D64800];
  v156[0] = *MEMORY[0x277D64800];
  v157[0] = @"PurgingSpace";
  v156[1] = *v4;
  v157[1] = @"PurgeSpace";
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v157 forKeys:v156 count:?];
  v161[1] = v55;
  v160[2] = @"PrepareUpdateProcessFailed";
  v154 = *v4;
  v155 = @"ReportUpdateOperationOutcome";
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v155 forKeys:&v154 count:1];
  v161[2] = v54;
  v160[3] = @"CancelUpdate";
  v152[0] = *v5;
  v153[0] = @"Idle";
  v152[1] = *v4;
  v153[1] = @"ReportUpdateOperationOutcome";
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v153 forKeys:v152 count:2];
  v161[3] = v53;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v161 forKeys:v160 count:?];
  v163[0] = v52;
  v162[1] = @"PurgingSpace";
  v150[0] = @"PurgeSuccess";
  v148[0] = *v5;
  v149[0] = @"AquiringKeybag";
  v148[1] = *v4;
  v149[1] = @"AquireKeybag";
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v149 forKeys:v148 count:2];
  v151[0] = v51;
  v150[1] = @"NoPurgableDownloadAvailable";
  v146[0] = *v5;
  v147[0] = @"AquiringKeybag";
  v146[1] = *v4;
  v147[1] = @"AquireKeybag";
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v147 forKeys:v146 count:2];
  v151[1] = v50;
  v150[2] = @"PurgeUserReject";
  v144[0] = *v5;
  v145[0] = @"Idle";
  v144[1] = *v4;
  v145[1] = @"ReportUpdateOperationOutcome";
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v145 forKeys:v144 count:2];
  v151[2] = v49;
  v150[3] = @"PurgeFailed";
  v142[0] = *v5;
  v143[0] = @"Idle";
  v142[1] = *v4;
  v143[1] = @"ReportUpdateOperationOutcome";
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v143 forKeys:v142 count:2];
  v151[3] = v48;
  v150[4] = @"CancelUpdate";
  v140[0] = *v5;
  v141[0] = @"Idle";
  v140[1] = *v4;
  v141[1] = @"ReportUpdateOperationOutcome";
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v141 forKeys:v140 count:2];
  v151[4] = v47;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v151 forKeys:v150 count:?];
  v163[1] = v46;
  v162[2] = @"AquiringKeybag";
  v138[0] = @"KeybagNotRequired";
  v136[0] = *v5;
  v137[0] = @"PresentingTermsConditions";
  v136[1] = *v4;
  v137[1] = @"PresentTermsConditions";
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v137 forKeys:v136 count:2];
  v139[0] = v45;
  v138[1] = @"KeybagCreated";
  v134[0] = *v5;
  v135[0] = @"PresentingTermsConditions";
  v134[1] = *v4;
  v135[1] = @"PresentTermsConditions";
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v135 forKeys:v134 count:2];
  v139[1] = v44;
  v138[2] = @"KeybagCreationFailed";
  v132[0] = *v5;
  v133[0] = @"Idle";
  v132[1] = *v4;
  v133[1] = @"ReportUpdateOperationOutcome";
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v133 forKeys:v132 count:2];
  v139[2] = v43;
  v138[3] = @"KeybagUserReject";
  v130[0] = *v5;
  v131[0] = @"Idle";
  v130[1] = *v4;
  v131[1] = @"ReportUpdateOperationOutcome";
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v131 forKeys:v130 count:2];
  v139[3] = v42;
  v138[4] = @"CancelUpdate";
  v128[0] = *v5;
  v129[0] = @"Idle";
  v128[1] = *v4;
  v129[1] = @"ReportUpdateOperationOutcome";
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v129 forKeys:v128 count:2];
  v139[4] = v41;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v139 forKeys:v138 count:5];
  v163[2] = v40;
  v162[3] = @"PresentingTermsConditions";
  v126[0] = @"TermsConditionsAlreadyAgreed";
  v124[0] = *v5;
  v125[0] = @"ResolvingUpdateOperation";
  v124[1] = *v4;
  v125[1] = @"ResolveUpdateOperation";
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v125 forKeys:v124 count:2];
  v127[0] = v39;
  v126[1] = @"TermsConditionsNotRequired";
  v122[0] = *v5;
  v123[0] = @"ResolvingUpdateOperation";
  v122[1] = *v4;
  v123[1] = @"ResolveUpdateOperation";
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:2];
  v127[1] = v38;
  v126[2] = @"TermsConditionsBypassed";
  v120[0] = *v5;
  v121[0] = @"ResolvingUpdateOperation";
  v120[1] = *v4;
  v121[1] = @"ResolveUpdateOperation";
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:2];
  v127[2] = v37;
  v126[3] = @"TermsConditionsAgreed";
  v118[0] = *v5;
  v119[0] = @"ResolvingUpdateOperation";
  v118[1] = *v4;
  v119[1] = @"ResolveUpdateOperation";
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v119 forKeys:v118 count:2];
  v127[3] = v36;
  v126[4] = @"TermsConditionsRejected";
  v116[0] = *v5;
  v117[0] = @"Idle";
  v116[1] = *v4;
  v117[1] = @"ReportUpdateOperationOutcome";
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:2];
  v127[4] = v35;
  v126[5] = @"CancelUpdate";
  v114[0] = *v5;
  v115[0] = @"Idle";
  v114[1] = *v4;
  v115[1] = @"ReportUpdateOperationOutcome";
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v114 count:2];
  v127[5] = v34;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v127 forKeys:v126 count:?];
  v163[3] = v33;
  v162[4] = @"ResolvingUpdateOperation";
  v112[0] = @"UpdateOpDownloadAndInstall";
  v110[0] = *v5;
  v111[0] = @"PresentingDownloadConstraints";
  v110[1] = *v4;
  v111[1] = @"PresentDownloadConstraints";
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:2];
  v113[0] = v32;
  v112[1] = @"UpdateOpDownloadAndSchedule";
  v108[0] = *v5;
  v109[0] = @"PresentingDownloadConstraints";
  v108[1] = *v4;
  v109[1] = @"PresentDownloadConstraints";
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:2];
  v113[1] = v31;
  v112[2] = @"UpdateOpOnlyDownload";
  v106[0] = *v5;
  v107[0] = @"PresentingDownloadConstraints";
  v106[1] = *v4;
  v107[1] = @"PresentDownloadConstraints";
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:2];
  v113[2] = v30;
  v112[3] = @"UpdateOpOnlySchedule";
  v104[0] = *v5;
  v105[0] = @"SchedulingUpdate";
  v104[1] = *v4;
  v105[1] = @"ScheduleUpdate";
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:2];
  v113[3] = v29;
  v112[4] = @"UpdateOpOnlyInstall";
  v102[0] = *v5;
  v103[0] = @"InitiatingUpdateInstallation";
  v102[1] = *v4;
  v103[1] = @"InitiateUpdateInstallation";
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:2];
  v113[4] = v28;
  v112[5] = @"CancelUpdate";
  v100[0] = *v5;
  v101[0] = @"Idle";
  v100[1] = *v4;
  v101[1] = @"ReportUpdateOperationOutcome";
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:2];
  v113[5] = v27;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:6];
  v163[4] = v26;
  v162[5] = @"PresentingDownloadConstraints";
  v98[0] = @"DownloadConstraintsNotRequired";
  v96[0] = *v5;
  v97[0] = @"InitiatingUpdateDownload";
  v96[1] = *v4;
  v97[1] = @"InitiateUpdateDownload";
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:2];
  v99[0] = v25;
  v98[1] = @"DownloadConstraintsAgreed";
  v94[0] = *v5;
  v95[0] = @"InitiatingUpdateDownload";
  v94[1] = *v4;
  v95[1] = @"InitiateUpdateDownload";
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:2];
  v99[1] = v24;
  v98[2] = @"DownloadConstraintsRejected";
  v92[0] = *v5;
  v93[0] = @"Idle";
  v92[1] = *v4;
  v93[1] = @"ReportUpdateOperationOutcome";
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:2];
  v99[2] = v23;
  v98[3] = @"CancelUpdate";
  v90[0] = *v5;
  v91[0] = @"Idle";
  v90[1] = *v4;
  v91[1] = @"ReportUpdateOperationOutcome";
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:2];
  v99[3] = v22;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:4];
  v163[5] = v21;
  v162[6] = @"InitiatingUpdateDownload";
  v88[0] = @"UpdateDownloadStarted";
  v86[0] = *v5;
  v87[0] = @"Idle";
  v86[1] = *v4;
  v87[1] = @"ReportUpdateOperationOutcome";
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:2];
  v89[0] = v20;
  v88[1] = @"UpdateDownloadReadyToSchedule";
  v84[0] = *v5;
  v85[0] = @"SchedulingUpdate";
  v84[1] = *v4;
  v85[1] = @"ScheduleUpdate";
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:2];
  v89[1] = v19;
  v88[2] = @"UpdateDownloadInitFailed";
  v82[0] = *v5;
  v83[0] = @"Idle";
  v82[1] = *v4;
  v83[1] = @"ReportUpdateOperationOutcome";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:2];
  v89[2] = v18;
  v88[3] = @"CancelUpdate";
  v80[0] = *v5;
  v81[0] = @"Idle";
  v80[1] = *v4;
  v81[1] = @"ReportUpdateOperationOutcome";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:2];
  v89[3] = v17;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:4];
  v163[6] = v16;
  v162[7] = @"InitiatingUpdateInstallation";
  v78[0] = @"UpdateInstallationStarted";
  v76[0] = *v5;
  v77[0] = @"Idle";
  v76[1] = *v4;
  v77[1] = @"ReportUpdateOperationOutcome";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:2];
  v79[0] = v15;
  v78[1] = @"UpdateInstallationFailed";
  v74[0] = *v5;
  v75[0] = @"Idle";
  v74[1] = *v4;
  v75[1] = @"ReportUpdateOperationOutcome";
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:2];
  v79[1] = v14;
  v78[2] = @"CancelUpdate";
  v72[0] = *v5;
  v73[0] = @"Idle";
  v72[1] = *v4;
  v73[1] = @"ReportUpdateOperationOutcome";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:2];
  v79[2] = v13;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:?];
  v163[7] = v12;
  v162[8] = @"SchedulingUpdate";
  v70[0] = @"UpdateScheduleSuccess";
  v68[0] = *v5;
  v69[0] = @"Idle";
  v68[1] = *v4;
  v69[1] = @"ReportUpdateOperationOutcome";
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:2];
  v71[0] = v11;
  v70[1] = @"UpdateScheduleFailed";
  v66[0] = *v5;
  v67[0] = @"Idle";
  v66[1] = *v4;
  v67[1] = @"ReportUpdateOperationOutcome";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:2];
  v71[1] = v10;
  v70[2] = @"CancelUpdate";
  v64[0] = *v5;
  v65[0] = @"Idle";
  v64[1] = *v4;
  v65[1] = @"ReportUpdateOperationOutcome";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:2];
  v71[2] = v9;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:3];
  v163[8] = v8;
  v162[9] = *MEMORY[0x277D647E8];
  v62 = *MEMORY[0x277D647E0];
  v60 = *v5;
  v61 = *MEMORY[0x277D647F0];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  v63 = v7;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
  v163[9] = v6;
  v59[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v163 forKeys:v162 count:10];
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
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v58 = [v2 initWithDictionary:v59[0] copyItems:1];
  v57 = MEMORY[0x277D82BE0](v58);
  objc_storeStrong(&v58, 0);
  objc_storeStrong(v59, 0);
  *MEMORY[0x277D85DE8];

  return v57;
}

- (int64_t)performAction:(id)a3 onEvent:(id)a4 inState:(id)a5 withInfo:(id)a6 nextState:(id)a7 error:(id *)a8
{
  v35 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = 0;
  objc_storeStrong(&v33, a4);
  v32 = 0;
  objc_storeStrong(&v32, a5);
  v31 = 0;
  objc_storeStrong(&v31, a6);
  v30 = 0;
  objc_storeStrong(&v30, a7);
  v29 = a8;
  v19 = [(SUSettingsUpdateOperation *)v35 updateFSM];
  v18 = [(SUCoreFSM *)v19 extendedStateQueue];
  dispatch_assert_queue_V2(v18);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  v20 = MEMORY[0x277D82BE0](v35);
  objc_sync_enter(v20);
  if (v35->_canceled && ![(SUSettingsUpdateOperation *)v35 isCancelableState:v32])
  {
    v12 = [(SUSettingsUpdateOperation *)v35 updateFSM];
    v11 = [(SUCoreFSM *)v12 diag];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"It's too late to cancel the operation in the current state. State: %@", v32];
    [v11 trackAnomaly:@"[SUSettingsUpdateOperation]" forReason:? withResult:? withError:?];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    queue = v35->_completionQueue;
    v23 = MEMORY[0x277D85DD0];
    v24 = -1073741824;
    v25 = 0;
    v26 = __84__SUSettingsUpdateOperation_performAction_onEvent_inState_withInfo_nextState_error___block_invoke;
    v27 = &unk_279CB93E8;
    v28 = MEMORY[0x277D82BE0](v35);
    dispatch_async(queue, &v23);
    v35->_canceled = 0;
    objc_storeStrong(&v28, 0);
  }

  if (!v35->_canceled || ([location[0] isEqualToString:@"ReportUpdateOperationOutcome"] & 1) != 0)
  {
    v22 = 0;
  }

  else
  {
    v36 = 0;
    v22 = 1;
  }

  objc_sync_exit(v20);
  MEMORY[0x277D82BD8](v20);
  if (!v22)
  {
    if ([location[0] isEqualToString:*MEMORY[0x277D647D0]])
    {
      v21 = 0;
    }

    else if ([location[0] isEqualToString:@"PrepareUpdateProcess"])
    {
      v21 = [(SUSettingsUpdateOperation *)v35 action_PrepareUpdateProcess:v31 error:v29];
    }

    else if ([location[0] isEqualToString:@"PurgeSpace"])
    {
      v21 = [(SUSettingsUpdateOperation *)v35 action_PurgeSpace:v31 error:v29];
    }

    else if ([location[0] isEqualToString:@"AquireKeybag"])
    {
      v21 = [(SUSettingsUpdateOperation *)v35 action_AquireKeybag:v31 error:v29];
    }

    else if ([location[0] isEqualToString:@"PresentTermsConditions"])
    {
      v21 = [(SUSettingsUpdateOperation *)v35 action_PresentTermsConditions:v31 error:v29];
    }

    else if ([location[0] isEqualToString:@"ResolveUpdateOperation"])
    {
      v21 = [(SUSettingsUpdateOperation *)v35 action_ResolveUpdateOperation:v31 error:v29];
    }

    else if ([location[0] isEqualToString:@"PresentDownloadConstraints"])
    {
      v21 = [(SUSettingsUpdateOperation *)v35 action_PresentDownloadConstraints:v31 error:v29];
    }

    else if ([location[0] isEqualToString:@"InitiateUpdateDownload"])
    {
      v21 = [(SUSettingsUpdateOperation *)v35 action_InitiateUpdateDownload:v31 error:v29];
    }

    else if ([location[0] isEqualToString:@"InitiateUpdateInstallation"])
    {
      v21 = [(SUSettingsUpdateOperation *)v35 action_InitiateUpdateInstallation:v31 error:v29];
    }

    else if ([location[0] isEqualToString:@"ScheduleUpdate"])
    {
      v21 = [(SUSettingsUpdateOperation *)v35 action_ScheduleUpdate:v31 error:v29];
    }

    else if ([location[0] isEqualToString:@"ReportUpdateOperationOutcome"])
    {
      v21 = [(SUSettingsUpdateOperation *)v35 action_ReportUpdateOperationOutcome:v31 error:v29];
    }

    else
    {
      v21 = [(SUSettingsUpdateOperation *)v35 actionUnknownAction:location[0] error:v29];
    }

    v36 = v21;
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
  return v36;
}

uint64_t __84__SUSettingsUpdateOperation_performAction_onEvent_inState_withInfo_nextState_error___block_invoke(uint64_t a1)
{
  (*(*(*(a1 + 32) + 72) + 16))();
  v1 = *(a1 + 32);
  v2 = *(v1 + 72);
  *(v1 + 72) = 0;
  return MEMORY[0x277D82BD8](v2);
}

- (int64_t)action_PrepareUpdateProcess:(id)a3 error:(id *)a4
{
  v18 = self;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v15[1] = a4;
  objc_initWeak(v15, v18);
  suClient = v18->_suClient;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __63__SUSettingsUpdateOperation_action_PrepareUpdateProcess_error___block_invoke;
  v11 = &unk_279CBC538;
  objc_copyWeak(v14, v15);
  v14[1] = v17;
  v12 = MEMORY[0x277D82BE0](location);
  v13 = MEMORY[0x277D82BE0](v18);
  [(SUManagerClient *)suClient download:&v7];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_destroyWeak(v14);
  objc_destroyWeak(v15);
  objc_storeStrong(&location, 0);
  return 0;
}

void __63__SUSettingsUpdateOperation_action_PrepareUpdateProcess_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v35 = 0;
  objc_storeStrong(&v35, a3);
  v34[1] = a1;
  v34[0] = objc_loadWeakRetained((a1 + 48));
  v15 = 0;
  if (!v34[0])
  {
    v14 = SUSettingsSharedLogger();
    v33 = [v14 oslog];
    MEMORY[0x277D82BD8](v14);
    v32 = 16;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      log = v33;
      type = v32;
      v13 = NSStringFromSelector(*(a1 + 56));
      v31 = MEMORY[0x277D82BE0](v13);
      __os_log_helper_16_2_2_8_32_8_66(v38, "[SUSettingsUpdateOperation action_PrepareUpdateProcess:error:]_block_invoke", v31);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v38, 0x16u);
      MEMORY[0x277D82BD8](v13);
      objc_storeStrong(&v31, 0);
    }

    objc_storeStrong(&v33, 0);
    v30 = 1;
    v15 = 1;
  }

  if (v15)
  {
    v29 = 1;
  }

  else
  {
    v10 = [v34[0] log];
    v28 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) descriptor];
      v7 = [v6 humanReadableUpdateName];
      v8 = MEMORY[0x277D82BE0](v7);
      v26 = v8;
      v9 = v35;
      v24 = 0;
      v22 = 0;
      v20 = 0;
      if (location[0] && (v25 = [location[0] descriptor], v24 = 1, v25))
      {
        v23 = [location[0] descriptor];
        v22 = 1;
        v21 = [v23 humanReadableUpdateName];
        v20 = 1;
        v5 = v21;
      }

      else
      {
        v5 = @"N/A";
      }

      v4 = location[0];
      v18 = 0;
      if (location[0])
      {
        v19 = [location[0] progress];
        v18 = 1;
        v3 = v19;
      }

      else
      {
        v3 = @"N/A";
      }

      __os_log_helper_16_2_6_8_32_8_66_8_66_8_66_8_0_8_66(v37, "[SUSettingsUpdateOperation action_PrepareUpdateProcess:error:]_block_invoke", v8, v9, v5, v4, v3);
      _os_log_impl(&dword_26AC94000, v28, v27, "%s [->%{public}@]: error: %{public}@; download: %{public}@ (%p); progress: %{public}@", v37, 0x3Eu);
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

      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v26, 0);
    }

    objc_storeStrong(&v28, 0);
    if (v35)
    {
      [*(a1 + 32) setOperationError:v35];
      [*(*(a1 + 40) + 112) postEvent:@"PrepareUpdateProcessFailed" withInfo:*(a1 + 32)];
      v29 = 1;
    }

    else
    {
      [*(a1 + 32) setCurrentDownload:location[0]];
      [*(*(a1 + 40) + 112) postEvent:@"PrepareUpdateProcessSuccess" withInfo:*(a1 + 32)];
      v29 = 0;
    }
  }

  objc_storeStrong(v34, 0);
  if (!v29)
  {
    v29 = 0;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)action_PurgeSpace:(id)a3 error:(id *)a4
{
  v75 = *MEMORY[0x277D85DE8];
  v69 = self;
  v68 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v66 = a4;
  v29 = [(SUSettingsUpdateOperation *)v69 updateFSM];
  v28 = [(SUCoreFSM *)v29 extendedStateQueue];
  dispatch_assert_queue_V2(v28);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  if (location)
  {
    v64 = [location currentDownload];
    v26 = [v64 descriptor];
    v24 = [location descriptor];
    v25 = [v26 isEqual:?];
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v26);
    if (v25)
    {
      v23 = [(SUSettingsUpdateOperation *)v69 log];
      v63 = [(SUCoreLog *)v23 oslog];
      MEMORY[0x277D82BD8](v23);
      v62 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [location descriptor];
        v21 = [v22 humanReadableUpdateName];
        v61 = MEMORY[0x277D82BE0](v21);
        __os_log_helper_16_2_2_8_32_8_66(v74, "[SUSettingsUpdateOperation action_PurgeSpace:error:]", v61);
        _os_log_impl(&dword_26AC94000, v63, v62, "%s [->%{public}@]: Currently downloading descriptor is the same as requested descriptor, do not purge", v74, 0x16u);
        MEMORY[0x277D82BD8](v21);
        MEMORY[0x277D82BD8](v22);
        objc_storeStrong(&v61, 0);
      }

      objc_storeStrong(&v63, 0);
      [(SUCoreFSM *)v69->_updateFSM postEvent:@"NoPurgableDownloadAvailable" withInfo:location];
      v70 = 0;
      v65 = 1;
    }

    else if (v64)
    {
      v16 = [location options];
      v17 = [v16 clientIsBuddy];
      MEMORY[0x277D82BD8](v16);
      if (v17)
      {
        v15 = [(SUSettingsUpdateOperation *)v69 log];
        v57 = [(SUCoreLog *)v15 oslog];
        MEMORY[0x277D82BD8](v15);
        v56 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [location descriptor];
          v13 = [v14 humanReadableUpdateName];
          v55 = MEMORY[0x277D82BE0](v13);
          __os_log_helper_16_2_2_8_32_8_66(v72, "[SUSettingsUpdateOperation action_PurgeSpace:error:]", v55);
          _os_log_impl(&dword_26AC94000, v57, v56, "%s [->%{public}@]: Client is buddy: Attempting to purge w/o user confirmation", v72, 0x16u);
          MEMORY[0x277D82BD8](v13);
          MEMORY[0x277D82BD8](v14);
          objc_storeStrong(&v55, 0);
        }

        objc_storeStrong(&v57, 0);
        v54 = objc_alloc_init(MEMORY[0x277D648D8]);
        [v54 setNotifyUser:0];
        [v54 setUserRequested:0];
        objc_initWeak(&from, v69);
        suClient = v69->_suClient;
        v12 = v54;
        v45 = MEMORY[0x277D85DD0];
        v46 = -1073741824;
        v47 = 0;
        v48 = __53__SUSettingsUpdateOperation_action_PurgeSpace_error___block_invoke;
        v49 = &unk_279CBC560;
        objc_copyWeak(v52, &from);
        v52[1] = v68;
        v50 = MEMORY[0x277D82BE0](location);
        v51 = MEMORY[0x277D82BE0](v69);
        [(SUManagerClient *)suClient purgeDownloadWithOptions:v12 withResult:&v45];
        v70 = 0;
        v65 = 1;
        objc_storeStrong(&v51, 0);
        objc_storeStrong(&v50, 0);
        objc_destroyWeak(v52);
        objc_destroyWeak(&from);
        objc_storeStrong(&v54, 0);
      }

      else
      {
        v10 = [(SUSettingsUpdateOperation *)v69 log];
        oslog = [(SUCoreLog *)v10 oslog];
        MEMORY[0x277D82BD8](v10);
        v43 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [location descriptor];
          v8 = [v9 humanReadableUpdateName];
          v42 = MEMORY[0x277D82BE0](v8);
          v7 = [v64 descriptor];
          v6 = [v7 humanReadableUpdateName];
          v41 = MEMORY[0x277D82BE0](v6);
          __os_log_helper_16_2_3_8_32_8_66_8_66(v71, "[SUSettingsUpdateOperation action_PurgeSpace:error:]", v42, v41);
          _os_log_impl(&dword_26AC94000, oslog, v43, "%s [->%{public}@]: Attempting to get the user consent to purge the download: %{public}@", v71, 0x20u);
          MEMORY[0x277D82BD8](v6);
          MEMORY[0x277D82BD8](v7);
          MEMORY[0x277D82BD8](v8);
          MEMORY[0x277D82BD8](v9);
          objc_storeStrong(&v41, 0);
          objc_storeStrong(&v42, 0);
        }

        objc_storeStrong(&oslog, 0);
        objc_initWeak(&v40, v69);
        queue = v69->_delegateCallbackQueue;
        v31 = MEMORY[0x277D85DD0];
        v32 = -1073741824;
        v33 = 0;
        v34 = __53__SUSettingsUpdateOperation_action_PurgeSpace_error___block_invoke_324;
        v35 = &unk_279CBC5D8;
        objc_copyWeak(v39, &v40);
        v39[1] = v68;
        v36 = MEMORY[0x277D82BE0](v69);
        v37 = MEMORY[0x277D82BE0](v64);
        v38 = MEMORY[0x277D82BE0](location);
        dispatch_async(queue, &v31);
        v70 = 0;
        v65 = 1;
        objc_storeStrong(&v38, 0);
        objc_storeStrong(&v37, 0);
        objc_storeStrong(&v36, 0);
        objc_destroyWeak(v39);
        objc_destroyWeak(&v40);
      }
    }

    else
    {
      v20 = [(SUSettingsUpdateOperation *)v69 log];
      v60 = [(SUCoreLog *)v20 oslog];
      MEMORY[0x277D82BD8](v20);
      v59 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [location descriptor];
        v18 = [v19 humanReadableUpdateName];
        v58 = MEMORY[0x277D82BE0](v18);
        __os_log_helper_16_2_2_8_32_8_66(v73, "[SUSettingsUpdateOperation action_PurgeSpace:error:]", v58);
        _os_log_impl(&dword_26AC94000, v60, v59, "%s [->%{public}@]: There's no purgable download available.", v73, 0x16u);
        MEMORY[0x277D82BD8](v18);
        MEMORY[0x277D82BD8](v19);
        objc_storeStrong(&v58, 0);
      }

      objc_storeStrong(&v60, 0);
      [(SUCoreFSM *)v69->_updateFSM postEvent:@"NoPurgableDownloadAvailable" withInfo:location];
      v70 = 0;
      v65 = 1;
    }

    objc_storeStrong(&v64, 0);
  }

  else
  {
    v27 = [(SUCoreFSM *)v69->_updateFSM diag];
    [v27 trackAnomaly:@"[SUSettingsUpdateOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v27);
    v70 = 8102;
    v65 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v70;
}

void __53__SUSettingsUpdateOperation_action_PurgeSpace_error___block_invoke(uint64_t a1, char a2, id obj)
{
  v28 = *MEMORY[0x277D85DE8];
  v25 = a1;
  v24 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v22[1] = a1;
  v22[0] = objc_loadWeakRetained((a1 + 48));
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
      v10 = NSStringFromSelector(*(a1 + 56));
      v19 = MEMORY[0x277D82BE0](v10);
      __os_log_helper_16_2_2_8_32_8_66(v27, "[SUSettingsUpdateOperation action_PurgeSpace:error:]_block_invoke", v19);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v27, 0x16u);
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
      v3 = oslog;
      v4 = v15;
      v6 = [*(a1 + 32) descriptor];
      v5 = [v6 humanReadableUpdateName];
      v14 = MEMORY[0x277D82BE0](v5);
      __os_log_helper_16_2_4_8_32_8_66_4_0_8_66(v26, "[SUSettingsUpdateOperation action_PurgeSpace:error:]_block_invoke", v14, v24 & 1, location);
      _os_log_impl(&dword_26AC94000, v3, v4, "%s [->%{public}@]: Purge result: %d; error: %{public}@", v26, 0x26u);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v14, 0);
    }

    objc_storeStrong(&oslog, 0);
    if (location)
    {
      [*(a1 + 32) setOperationError:location];
      [*(*(a1 + 40) + 112) postEvent:@"PurgeFailed" withInfo:*(a1 + 32)];
      v17 = 1;
    }

    else
    {
      [*(*(a1 + 40) + 112) postEvent:@"PurgeSuccess" withInfo:*(a1 + 32)];
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

void __53__SUSettingsUpdateOperation_action_PurgeSpace_error___block_invoke_324(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v22[2] = a1;
  v22[1] = a1;
  v22[0] = objc_loadWeakRetained((a1 + 56));
  v6 = 0;
  if (!v22[0])
  {
    v5 = SUSettingsSharedLogger();
    v21 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v20 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v4 = NSStringFromSelector(*(a1 + 64));
      location = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v23, "[SUSettingsUpdateOperation action_PurgeSpace:error:]_block_invoke", location);
      _os_log_error_impl(&dword_26AC94000, v21, v20, "%s: Self is nil in %{public}@. Stopping.", v23, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v21, 0);
    v18 = 1;
    v6 = 1;
  }

  if (v6)
  {
    v17 = 1;
  }

  else
  {
    v1 = *(*(a1 + 32) + 16);
    v2 = v22[0];
    v3 = *(a1 + 40);
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __53__SUSettingsUpdateOperation_action_PurgeSpace_error___block_invoke_325;
    v12 = &unk_279CBC5B0;
    objc_copyWeak(v16, (a1 + 56));
    v16[1] = *(a1 + 64);
    v13 = MEMORY[0x277D82BE0](*(a1 + 32));
    v14 = MEMORY[0x277D82BE0](*(a1 + 48));
    v15 = MEMORY[0x277D82BE0](*(a1 + 40));
    [v1 operation:v2 requestPurgeConfirmationForDownload:v3 replyHandler:&v8];
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    objc_destroyWeak(v16);
    v17 = 0;
  }

  objc_storeStrong(v22, 0);
  *MEMORY[0x277D85DE8];
}

void __53__SUSettingsUpdateOperation_action_PurgeSpace_error___block_invoke_325(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v25 = a1;
  v24 = a2;
  v23[1] = a1;
  v23[0] = objc_loadWeakRetained((a1 + 56));
  v7 = 0;
  if (!v23[0])
  {
    v6 = SUSettingsSharedLogger();
    v22 = [v6 oslog];
    MEMORY[0x277D82BD8](v6);
    v21 = 16;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      log = v22;
      type = v21;
      v5 = NSStringFromSelector(*(a1 + 64));
      v20 = MEMORY[0x277D82BE0](v5);
      __os_log_helper_16_2_2_8_32_8_66(v26, "[SUSettingsUpdateOperation action_PurgeSpace:error:]_block_invoke", v20);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v26, 0x16u);
      MEMORY[0x277D82BD8](v5);
      objc_storeStrong(&v20, 0);
    }

    objc_storeStrong(&v22, 0);
    v19 = 1;
    v7 = 1;
  }

  if (v7)
  {
    v18 = 1;
  }

  else
  {
    queue = *(*(a1 + 32) + 96);
    v9 = MEMORY[0x277D85DD0];
    v10 = -1073741824;
    v11 = 0;
    v12 = __53__SUSettingsUpdateOperation_action_PurgeSpace_error___block_invoke_326;
    v13 = &unk_279CBC588;
    objc_copyWeak(v17, (a1 + 56));
    v17[1] = *(a1 + 64);
    v14 = MEMORY[0x277D82BE0](*(a1 + 40));
    v15 = MEMORY[0x277D82BE0](*(a1 + 48));
    v17[2] = v24;
    v16 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v9);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    objc_destroyWeak(v17);
    v18 = 0;
  }

  objc_storeStrong(v23, 0);
  *MEMORY[0x277D85DE8];
}

void __53__SUSettingsUpdateOperation_action_PurgeSpace_error___block_invoke_326(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v34[2] = a1;
  v34[1] = a1;
  v34[0] = objc_loadWeakRetained((a1 + 56));
  v13 = 0;
  if (!v34[0])
  {
    v12 = SUSettingsSharedLogger();
    v33 = [v12 oslog];
    MEMORY[0x277D82BD8](v12);
    v32 = 16;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      log = v33;
      type = v32;
      v9 = NSStringFromSelector(*(a1 + 64));
      location = MEMORY[0x277D82BE0](v9);
      __os_log_helper_16_2_2_8_32_8_66(v36, "[SUSettingsUpdateOperation action_PurgeSpace:error:]_block_invoke", location);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v36, 0x16u);
      MEMORY[0x277D82BD8](v9);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v33, 0);
    v30 = 1;
    v13 = 1;
  }

  if (v13)
  {
    v29 = 1;
  }

  else
  {
    v8 = [v34[0] log];
    v28 = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) descriptor];
      v6 = [v7 humanReadableUpdateName];
      v26 = MEMORY[0x277D82BE0](v6);
      v5 = [*(a1 + 40) descriptor];
      v4 = [v5 humanReadableUpdateName];
      v25 = MEMORY[0x277D82BE0](v4);
      v3 = SUSettingsUserInteractionResponseTypeToString(*(a1 + 72));
      v24 = MEMORY[0x277D82BE0](v3);
      __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v35, "[SUSettingsUpdateOperation action_PurgeSpace:error:]_block_invoke", v26, v25, v24);
      _os_log_impl(&dword_26AC94000, v28, v27, "%s [->%{public}@]: User responded to the purge request of %{public}@: %{public}@", v35, 0x2Au);
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v26, 0);
    }

    objc_storeStrong(&v28, 0);
    if (*(a1 + 72))
    {
      [*(*(a1 + 48) + 112) postEvent:@"PurgeUserReject" withInfo:*(a1 + 32)];
      v29 = 1;
    }

    else
    {
      v23 = objc_alloc_init(MEMORY[0x277D648D8]);
      [v23 setNotifyUser:0];
      [v23 setUserRequested:1];
      v1 = *(*(a1 + 48) + 120);
      v2 = v23;
      v15 = MEMORY[0x277D85DD0];
      v16 = -1073741824;
      v17 = 0;
      v18 = __53__SUSettingsUpdateOperation_action_PurgeSpace_error___block_invoke_327;
      v19 = &unk_279CBC560;
      objc_copyWeak(v22, (a1 + 56));
      v22[1] = *(a1 + 64);
      v20 = MEMORY[0x277D82BE0](*(a1 + 32));
      v21 = MEMORY[0x277D82BE0](*(a1 + 48));
      [v1 purgeDownloadWithOptions:v2 withResult:&v15];
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v20, 0);
      objc_destroyWeak(v22);
      objc_storeStrong(&v23, 0);
      v29 = 0;
    }
  }

  objc_storeStrong(v34, 0);
  *MEMORY[0x277D85DE8];
}

void __53__SUSettingsUpdateOperation_action_PurgeSpace_error___block_invoke_327(uint64_t a1, char a2, id obj)
{
  v28 = *MEMORY[0x277D85DE8];
  v25 = a1;
  v24 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v22[1] = a1;
  v22[0] = objc_loadWeakRetained((a1 + 48));
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
      v10 = NSStringFromSelector(*(a1 + 56));
      v19 = MEMORY[0x277D82BE0](v10);
      __os_log_helper_16_2_2_8_32_8_66(v27, "[SUSettingsUpdateOperation action_PurgeSpace:error:]_block_invoke", v19);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v27, 0x16u);
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
      v3 = oslog;
      v4 = v15;
      v6 = [*(a1 + 32) descriptor];
      v5 = [v6 humanReadableUpdateName];
      v14 = MEMORY[0x277D82BE0](v5);
      __os_log_helper_16_2_4_8_32_8_66_4_0_8_66(v26, "[SUSettingsUpdateOperation action_PurgeSpace:error:]_block_invoke", v14, v24 & 1, location);
      _os_log_impl(&dword_26AC94000, v3, v4, "%s [->%{public}@]: Purge result: %d; error: %{public}@", v26, 0x26u);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v14, 0);
    }

    objc_storeStrong(&oslog, 0);
    if (location)
    {
      [*(a1 + 32) setOperationError:location];
      [*(*(a1 + 40) + 112) postEvent:@"PurgeFailed" withInfo:*(a1 + 32)];
      v17 = 1;
    }

    else
    {
      [*(*(a1 + 40) + 112) postEvent:@"PurgeSuccess" withInfo:*(a1 + 32)];
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

- (int64_t)action_AquireKeybag:(id)a3 error:(id *)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v50 = self;
  v49 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v47 = a4;
  v23 = [(SUSettingsUpdateOperation *)v50 updateFSM];
  v22 = [(SUCoreFSM *)v23 extendedStateQueue];
  dispatch_assert_queue_V2(v22);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  if (location)
  {
    suClient = v50->_suClient;
    v17 = [location descriptor];
    v18 = [(SUManagerClient *)suClient isInstallationKeybagRequiredForDescriptor:?];
    MEMORY[0x277D82BD8](v17);
    v45 = v18;
    v44 = v18;
    v42 = 0;
    v40 = 0;
    v19 = 0;
    if (!v18)
    {
      v43 = [location descriptor];
      v42 = 1;
      v19 = 0;
      if ([v43 isSplatOnly])
      {
        v41 = [MEMORY[0x277D648A8] sharedInstance];
        v40 = 1;
        v19 = [v41 hasPasscodeSet];
      }
    }

    if (v40)
    {
      MEMORY[0x277D82BD8](v41);
    }

    if (v42)
    {
      MEMORY[0x277D82BD8](v43);
    }

    if (v19)
    {
      v15 = [(SUSettingsUpdateOperation *)v50 log];
      v39 = [(SUCoreLog *)v15 oslog];
      MEMORY[0x277D82BD8](v15);
      v38 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        log = v39;
        type = v38;
        v14 = [location descriptor];
        v13 = [v14 humanReadableUpdateName];
        v37 = MEMORY[0x277D82BE0](v13);
        __os_log_helper_16_2_2_8_32_8_66(v53, "[SUSettingsUpdateOperation action_AquireKeybag:error:]", v37);
        _os_log_impl(&dword_26AC94000, log, type, "%s [->%{public}@]: Prompting for passcode for splat-only update, but not generating an installation keybag", v53, 0x16u);
        MEMORY[0x277D82BD8](v13);
        MEMORY[0x277D82BD8](v14);
        objc_storeStrong(&v37, 0);
      }

      objc_storeStrong(&v39, 0);
      v44 = 1;
    }

    if (v44)
    {
      v10 = [(SUSettingsUpdateOperation *)v50 log];
      v36 = [(SUCoreLog *)v10 oslog];
      MEMORY[0x277D82BD8](v10);
      v35 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v36;
        v7 = v35;
        v9 = [location descriptor];
        v8 = [v9 humanReadableUpdateName];
        v34 = MEMORY[0x277D82BE0](v8);
        __os_log_helper_16_2_4_8_32_8_66_4_0_4_0(v52, "[SUSettingsUpdateOperation action_AquireKeybag:error:]", v34, v45, v44 & 1);
        _os_log_impl(&dword_26AC94000, v6, v7, "%s [->%{public}@]: Attempts to create a Keybag by asking the user for the device passcode. isKeybagRequired: %d, askForPasscode: %d", v52, 0x22u);
        MEMORY[0x277D82BD8](v8);
        MEMORY[0x277D82BD8](v9);
        objc_storeStrong(&v34, 0);
      }

      objc_storeStrong(&v36, 0);
      objc_initWeak(&v33, v50);
      queue = v50->_delegateCallbackQueue;
      v24 = MEMORY[0x277D85DD0];
      v25 = -1073741824;
      v26 = 0;
      v27 = __55__SUSettingsUpdateOperation_action_AquireKeybag_error___block_invoke;
      v28 = &unk_279CBC650;
      objc_copyWeak(v31, &v33);
      v31[1] = v49;
      v29 = MEMORY[0x277D82BE0](v50);
      v30 = MEMORY[0x277D82BE0](location);
      v32 = v45;
      dispatch_async(queue, &v24);
      v51 = 0;
      v46 = 1;
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v29, 0);
      objc_destroyWeak(v31);
      objc_destroyWeak(&v33);
    }

    else
    {
      [(SUCoreFSM *)v50->_updateFSM postEvent:@"KeybagNotRequired" withInfo:location];
      v51 = 0;
      v46 = 1;
    }
  }

  else
  {
    v20 = [(SUCoreFSM *)v50->_updateFSM diag];
    [v20 trackAnomaly:@"[SUSettingsUpdateOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:? withError:?];
    MEMORY[0x277D82BD8](v20);
    v51 = 8102;
    v46 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v51;
}

void __55__SUSettingsUpdateOperation_action_AquireKeybag_error___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v22[2] = a1;
  v22[1] = a1;
  v22[0] = objc_loadWeakRetained((a1 + 48));
  v6 = 0;
  if (!v22[0])
  {
    v5 = SUSettingsSharedLogger();
    v21 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v20 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v4 = NSStringFromSelector(*(a1 + 56));
      location = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v23, "[SUSettingsUpdateOperation action_AquireKeybag:error:]_block_invoke", location);
      _os_log_error_impl(&dword_26AC94000, v21, v20, "%s: Self is nil in %{public}@. Stopping.", v23, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v21, 0);
    v18 = 1;
    v6 = 1;
  }

  if (v6)
  {
    v17 = 1;
  }

  else
  {
    v2 = *(*(a1 + 32) + 16);
    v3 = v22[0];
    v1 = [*(a1 + 40) descriptor];
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __55__SUSettingsUpdateOperation_action_AquireKeybag_error___block_invoke_330;
    v12 = &unk_279CBC628;
    objc_copyWeak(v15, (a1 + 48));
    v15[1] = *(a1 + 56);
    v13 = MEMORY[0x277D82BE0](*(a1 + 32));
    v14 = MEMORY[0x277D82BE0](*(a1 + 40));
    v16 = *(a1 + 64) & 1;
    [v2 operation:v3 requestDevicePasscodeForDescriptor:v1 replyHandler:&v8];
    MEMORY[0x277D82BD8](v1);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    objc_destroyWeak(v15);
    v17 = 0;
  }

  objc_storeStrong(v22, 0);
  *MEMORY[0x277D85DE8];
}

void __55__SUSettingsUpdateOperation_action_AquireKeybag_error___block_invoke_330(uint64_t a1, void *a2, id obj)
{
  v30 = *MEMORY[0x277D85DE8];
  v28 = a1;
  v27 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v25[1] = a1;
  v25[0] = objc_loadWeakRetained((a1 + 48));
  v8 = 0;
  if (!v25[0])
  {
    v7 = SUSettingsSharedLogger();
    v24 = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v23 = 16;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      log = v24;
      type = v23;
      v6 = NSStringFromSelector(*(a1 + 56));
      v22 = MEMORY[0x277D82BE0](v6);
      __os_log_helper_16_2_2_8_32_8_66(v29, "[SUSettingsUpdateOperation action_AquireKeybag:error:]_block_invoke", v22);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v29, 0x16u);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v22, 0);
    }

    objc_storeStrong(&v24, 0);
    v21 = 1;
    v8 = 1;
  }

  if (v8)
  {
    v20 = 1;
  }

  else
  {
    queue = *(*(a1 + 32) + 96);
    v10 = MEMORY[0x277D85DD0];
    v11 = -1073741824;
    v12 = 0;
    v13 = __55__SUSettingsUpdateOperation_action_AquireKeybag_error___block_invoke_331;
    v14 = &unk_279CBC600;
    objc_copyWeak(v18, (a1 + 48));
    v18[1] = *(a1 + 56);
    v15 = MEMORY[0x277D82BE0](*(a1 + 40));
    v18[2] = v27;
    v16 = MEMORY[0x277D82BE0](location);
    v17 = MEMORY[0x277D82BE0](*(a1 + 32));
    v19 = *(a1 + 64) & 1;
    dispatch_async(queue, &v10);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    objc_destroyWeak(v18);
    v20 = 0;
  }

  objc_storeStrong(v25, 0);
  if (!v20)
  {
    v20 = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __55__SUSettingsUpdateOperation_action_AquireKeybag_error___block_invoke_331(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v48[2] = a1;
  v48[1] = a1;
  v48[0] = objc_loadWeakRetained((a1 + 56));
  v28 = 0;
  if (!v48[0])
  {
    v27 = SUSettingsSharedLogger();
    v47 = [v27 oslog];
    MEMORY[0x277D82BD8](v27);
    v46 = 16;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      log = v47;
      type = v46;
      v26 = NSStringFromSelector(*(a1 + 64));
      v45 = MEMORY[0x277D82BE0](v26);
      __os_log_helper_16_2_2_8_32_8_66(v52, "[SUSettingsUpdateOperation action_AquireKeybag:error:]_block_invoke", v45);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v52, 0x16u);
      MEMORY[0x277D82BD8](v26);
      objc_storeStrong(&v45, 0);
    }

    objc_storeStrong(&v47, 0);
    v44 = 1;
    v28 = 1;
  }

  if (v28)
  {
    v43 = 1;
  }

  else
  {
    v23 = [v48[0] log];
    v42 = [v23 oslog];
    MEMORY[0x277D82BD8](v23);
    v41 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v42;
      v19 = v41;
      v22 = [*(a1 + 32) descriptor];
      v21 = [v22 humanReadableUpdateName];
      v17 = MEMORY[0x277D82BE0](v21);
      v40 = v17;
      v20 = SUSettingsUserInteractionResponseTypeToString(*(a1 + 72));
      v39 = MEMORY[0x277D82BE0](v20);
      __os_log_helper_16_2_5_8_32_8_66_8_66_4_0_4_0(v51, "-[SUSettingsUpdateOperation action_AquireKeybag:error:]_block_invoke", v17, v39, *(a1 + 40) != 0, [*(a1 + 32) isUnattendedInstall]);
      _os_log_impl(&dword_26AC94000, v18, v19, "%s [->%{public}@]: Passcode request result: %{public}@; passcode present: %d; for unattended install? %d", v51, 0x2Cu);
      MEMORY[0x277D82BD8](v20);
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](v22);
      objc_storeStrong(&v39, 0);
      objc_storeStrong(&v40, 0);
    }

    objc_storeStrong(&v42, 0);
    if (!*(a1 + 72) && *(a1 + 40))
    {
      if (*(a1 + 80))
      {
        v38 = objc_alloc_init(MEMORY[0x277CD4790]);
        v14 = [*(a1 + 40) dataUsingEncoding:4];
        v15 = [v38 setCredential:? type:?];
        MEMORY[0x277D82BD8](v14);
        if (v15)
        {
          v34 = objc_alloc_init(MEMORY[0x277D648B0]);
          [v34 setLaContext:v38];
          v7 = [*(a1 + 32) descriptor];
          [v34 setDescriptor:?];
          MEMORY[0x277D82BD8](v7);
          [v34 setKeybagType:{(objc_msgSend(*(a1 + 32), "isUnattendedInstall") & 1) != 0}];
          v33 = [*(*(a1 + 48) + 120) createInstallationKeybagWithOptions:v34];
          [*(a1 + 32) setCreatedKeybag:v33 & 1];
          v6 = [v48[0] log];
          v32 = [v6 oslog];
          MEMORY[0x277D82BD8](v6);
          v31 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v2 = v32;
            v3 = v31;
            v5 = [*(a1 + 32) descriptor];
            v4 = [v5 humanReadableUpdateName];
            v30 = MEMORY[0x277D82BE0](v4);
            __os_log_helper_16_2_3_8_32_8_66_4_0(v49, "[SUSettingsUpdateOperation action_AquireKeybag:error:]_block_invoke", v30, v33 & 1);
            _os_log_impl(&dword_26AC94000, v2, v3, "%s [->%{public}@]: Keybag creation result: %d", v49, 0x1Cu);
            MEMORY[0x277D82BD8](v4);
            MEMORY[0x277D82BD8](v5);
            objc_storeStrong(&v30, 0);
          }

          objc_storeStrong(&v32, 0);
          if (v33)
          {
            [*(*(a1 + 48) + 112) postEvent:@"KeybagCreated" withInfo:*(a1 + 32)];
          }

          else
          {
            v1 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64AE8] code:6 userInfo:0];
            [*(a1 + 32) setOperationError:?];
            MEMORY[0x277D82BD8](v1);
            [*(*(a1 + 48) + 112) postEvent:@"KeybagCreationFailed" withInfo:*(a1 + 32)];
          }

          objc_storeStrong(&v34, 0);
          v43 = 0;
        }

        else
        {
          v13 = [v48[0] log];
          oslog = [v13 oslog];
          MEMORY[0x277D82BD8](v13);
          v36 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            v9 = oslog;
            v10 = v36;
            v12 = [*(a1 + 32) descriptor];
            v11 = [v12 humanReadableUpdateName];
            v35 = MEMORY[0x277D82BE0](v11);
            __os_log_helper_16_2_2_8_32_8_66(v50, "[SUSettingsUpdateOperation action_AquireKeybag:error:]_block_invoke", v35);
            _os_log_impl(&dword_26AC94000, v9, v10, "%s [->%{public}@]: Failed to create a LAContext with the given passcode", v50, 0x16u);
            MEMORY[0x277D82BD8](v11);
            MEMORY[0x277D82BD8](v12);
            objc_storeStrong(&v35, 0);
          }

          objc_storeStrong(&oslog, 0);
          v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64AE8] code:6 userInfo:0];
          [*(a1 + 32) setOperationError:?];
          MEMORY[0x277D82BD8](v8);
          [*(*(a1 + 48) + 112) postEvent:@"KeybagCreationFailed" withInfo:*(a1 + 32)];
          v43 = 1;
        }

        objc_storeStrong(&v38, 0);
      }

      else
      {
        [*(*(a1 + 48) + 112) postEvent:@"KeybagNotRequired" withInfo:*(a1 + 32)];
        v43 = 1;
      }
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64AE8] code:6 userInfo:0];
      [*(a1 + 32) setOperationError:?];
      MEMORY[0x277D82BD8](v16);
      [*(*(a1 + 48) + 112) postEvent:@"KeybagUserReject" withInfo:*(a1 + 32)];
      v43 = 1;
    }
  }

  objc_storeStrong(v48, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)action_PresentTermsConditions:(id)a3 error:(id *)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v60 = self;
  v59 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v57 = a4;
  v38 = [(SUSettingsUpdateOperation *)v60 updateFSM];
  v37 = [(SUCoreFSM *)v38 extendedStateQueue];
  dispatch_assert_queue_V2(v37);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  if (location)
  {
    v34 = [location currentDownload];
    MEMORY[0x277D82BD8](v34);
    if (!v34)
    {
      goto LABEL_8;
    }

    v32 = [location currentDownload];
    v31 = [v32 downloadOptions];
    v33 = [v31 termsAndConditionsAgreementStatus];
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    v55 = v33;
    v30 = [(SUSettingsUpdateOperation *)v60 log];
    v54 = [(SUCoreLog *)v30 oslog];
    MEMORY[0x277D82BD8](v30);
    v53 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      log = v54;
      type = v53;
      v29 = [location descriptor];
      v28 = [v29 humanReadableUpdateName];
      v24 = MEMORY[0x277D82BE0](v28);
      v52 = v24;
      v27 = SUStringFromAgreementStatus();
      v51 = MEMORY[0x277D82BE0](v27);
      __os_log_helper_16_2_4_8_32_8_66_8_66_4_0(v63, "[SUSettingsUpdateOperation action_PresentTermsConditions:error:]", v24, v51, v55);
      _os_log_impl(&dword_26AC94000, log, type, "%s [->%{public}@]: A download object is available. SU T&C  agreement status: %{public}@ (%d)", v63, 0x26u);
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](v29);
      objc_storeStrong(&v51, 0);
      objc_storeStrong(&v52, 0);
    }

    objc_storeStrong(&v54, 0);
    if (v55 == 1)
    {
      v23 = [location options];
      v22 = [v23 agreementManager];
      v21 = [location descriptor];
      [v22 setTermsAgreementStatus:? forUpdate:?];
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](v23);
      [(SUCoreFSM *)v60->_updateFSM postEvent:@"TermsConditionsAlreadyAgreed" withInfo:location];
      v61 = 0;
      v56 = 1;
    }

    else
    {
LABEL_8:
      v19 = [location descriptor];
      v20 = [v19 isSplatOnly];
      MEMORY[0x277D82BD8](v19);
      if (v20)
      {
        v18 = [location options];
        v17 = [v18 agreementManager];
        v16 = [location descriptor];
        [v17 setTermsAgreementStatus:? forUpdate:?];
        MEMORY[0x277D82BD8](v16);
        MEMORY[0x277D82BD8](v17);
        MEMORY[0x277D82BD8](v18);
        [(SUCoreFSM *)v60->_updateFSM postEvent:@"TermsConditionsNotRequired" withInfo:location];
        v61 = 0;
        v56 = 1;
      }

      else
      {
        v14 = [location options];
        v15 = [v14 bypassTermsAndConditions];
        MEMORY[0x277D82BD8](v14);
        if (v15)
        {
          v13 = [location options];
          v12 = [v13 agreementManager];
          v11 = [location descriptor];
          [v12 setTermsAgreementStatus:? forUpdate:?];
          MEMORY[0x277D82BD8](v11);
          MEMORY[0x277D82BD8](v12);
          MEMORY[0x277D82BD8](v13);
          [(SUCoreFSM *)v60->_updateFSM postEvent:@"TermsConditionsBypassed" withInfo:location];
          v61 = 0;
          v56 = 1;
        }

        else
        {
          v10 = [(SUSettingsUpdateOperation *)v60 log];
          v50 = [(SUCoreLog *)v10 oslog];
          MEMORY[0x277D82BD8](v10);
          v49 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v6 = v50;
            v7 = v49;
            v9 = [location descriptor];
            v8 = [v9 humanReadableUpdateName];
            v48 = MEMORY[0x277D82BE0](v8);
            __os_log_helper_16_2_2_8_32_8_66(v62, "[SUSettingsUpdateOperation action_PresentTermsConditions:error:]", v48);
            _os_log_impl(&dword_26AC94000, v6, v7, "%s [->%{public}@]: Attempting to present the T&C sheet", v62, 0x16u);
            MEMORY[0x277D82BD8](v8);
            MEMORY[0x277D82BD8](v9);
            objc_storeStrong(&v48, 0);
          }

          objc_storeStrong(&v50, 0);
          objc_initWeak(&v47, v60);
          queue = v60->_delegateCallbackQueue;
          v39 = MEMORY[0x277D85DD0];
          v40 = -1073741824;
          v41 = 0;
          v42 = __65__SUSettingsUpdateOperation_action_PresentTermsConditions_error___block_invoke;
          v43 = &unk_279CBC6F0;
          objc_copyWeak(v46, &v47);
          v46[1] = v59;
          v44 = MEMORY[0x277D82BE0](v60);
          v45 = MEMORY[0x277D82BE0](location);
          dispatch_async(queue, &v39);
          v61 = 0;
          v56 = 1;
          objc_storeStrong(&v45, 0);
          objc_storeStrong(&v44, 0);
          objc_destroyWeak(v46);
          objc_destroyWeak(&v47);
        }
      }
    }
  }

  else
  {
    v35 = [(SUCoreFSM *)v60->_updateFSM diag];
    [v35 trackAnomaly:@"[SUSettingsUpdateOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:? withError:?];
    MEMORY[0x277D82BD8](v35);
    v61 = 8102;
    v56 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v61;
}

void __65__SUSettingsUpdateOperation_action_PresentTermsConditions_error___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v21[2] = a1;
  v21[1] = a1;
  v21[0] = objc_loadWeakRetained((a1 + 48));
  v6 = 0;
  if (!v21[0])
  {
    v5 = SUSettingsSharedLogger();
    v20 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v19 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v4 = NSStringFromSelector(*(a1 + 56));
      location = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v22, "[SUSettingsUpdateOperation action_PresentTermsConditions:error:]_block_invoke", location);
      _os_log_error_impl(&dword_26AC94000, v20, v19, "%s: Self is nil in %{public}@. Stopping.", v22, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v20, 0);
    v17 = 1;
    v6 = 1;
  }

  if (v6)
  {
    v16 = 1;
  }

  else
  {
    v2 = *(*(a1 + 32) + 16);
    v3 = v21[0];
    v1 = [*(a1 + 40) descriptor];
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __65__SUSettingsUpdateOperation_action_PresentTermsConditions_error___block_invoke_336;
    v12 = &unk_279CBC6C8;
    objc_copyWeak(v15, (a1 + 48));
    v15[1] = *(a1 + 56);
    v13 = MEMORY[0x277D82BE0](*(a1 + 32));
    v14 = MEMORY[0x277D82BE0](*(a1 + 40));
    [v2 operation:v3 requestAgreementToTermsAndConditionsForUpdate:v1 replyHandler:&v8];
    MEMORY[0x277D82BD8](v1);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    objc_destroyWeak(v15);
    v16 = 0;
  }

  objc_storeStrong(v21, 0);
  *MEMORY[0x277D85DE8];
}

void __65__SUSettingsUpdateOperation_action_PresentTermsConditions_error___block_invoke_336(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = a1;
  v23 = a2;
  v22[1] = a1;
  v22[0] = objc_loadWeakRetained((a1 + 48));
  v7 = 0;
  if (!v22[0])
  {
    v6 = SUSettingsSharedLogger();
    v21 = [v6 oslog];
    MEMORY[0x277D82BD8](v6);
    v20 = 16;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      log = v21;
      type = v20;
      v5 = NSStringFromSelector(*(a1 + 56));
      v19 = MEMORY[0x277D82BE0](v5);
      __os_log_helper_16_2_2_8_32_8_66(v25, "[SUSettingsUpdateOperation action_PresentTermsConditions:error:]_block_invoke", v19);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v25, 0x16u);
      MEMORY[0x277D82BD8](v5);
      objc_storeStrong(&v19, 0);
    }

    objc_storeStrong(&v21, 0);
    v18 = 1;
    v7 = 1;
  }

  if (v7)
  {
    v17 = 1;
  }

  else
  {
    queue = *(*(a1 + 32) + 96);
    v9 = MEMORY[0x277D85DD0];
    v10 = -1073741824;
    v11 = 0;
    v12 = __65__SUSettingsUpdateOperation_action_PresentTermsConditions_error___block_invoke_337;
    v13 = &unk_279CBC6A0;
    objc_copyWeak(v16, (a1 + 48));
    v16[1] = *(a1 + 56);
    v14 = MEMORY[0x277D82BE0](*(a1 + 40));
    v16[2] = v23;
    v15 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v9);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    objc_destroyWeak(v16);
    v17 = 0;
  }

  objc_storeStrong(v22, 0);
  *MEMORY[0x277D85DE8];
}

void __65__SUSettingsUpdateOperation_action_PresentTermsConditions_error___block_invoke_337(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v44[2] = a1;
  v44[1] = a1;
  v44[0] = objc_loadWeakRetained((a1 + 48));
  v22 = 0;
  if (!v44[0])
  {
    v21 = SUSettingsSharedLogger();
    v43 = [v21 oslog];
    MEMORY[0x277D82BD8](v21);
    v42 = 16;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      log = v43;
      type = v42;
      v20 = NSStringFromSelector(*(a1 + 56));
      v41 = MEMORY[0x277D82BE0](v20);
      __os_log_helper_16_2_2_8_32_8_66(v46, "[SUSettingsUpdateOperation action_PresentTermsConditions:error:]_block_invoke", v41);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v46, 0x16u);
      MEMORY[0x277D82BD8](v20);
      objc_storeStrong(&v41, 0);
    }

    objc_storeStrong(&v43, 0);
    v40 = 1;
    v22 = 1;
  }

  if (v22)
  {
    v39 = 1;
  }

  else
  {
    v17 = [v44[0] log];
    v38 = [v17 oslog];
    MEMORY[0x277D82BD8](v17);
    v37 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v38;
      v13 = v37;
      v16 = [*(a1 + 32) descriptor];
      v15 = [v16 humanReadableUpdateName];
      v11 = MEMORY[0x277D82BE0](v15);
      v36 = v11;
      v14 = SUSettingsUserInteractionResponseTypeToString(*(a1 + 64));
      v35 = MEMORY[0x277D82BE0](v14);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v45, "[SUSettingsUpdateOperation action_PresentTermsConditions:error:]_block_invoke", v11, v35);
      _os_log_impl(&dword_26AC94000, v12, v13, "%s [->%{public}@]: T&C request result: %{public}@", v45, 0x20u);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      objc_storeStrong(&v35, 0);
      objc_storeStrong(&v36, 0);
    }

    objc_storeStrong(&v38, 0);
    v34 = 0;
    v33 = 0;
    if (*(a1 + 64))
    {
      v33 = 2;
      objc_storeStrong(&v34, @"TermsConditionsRejected");
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64AE8] code:3 userInfo:0];
      [*(a1 + 32) setOperationError:?];
      MEMORY[0x277D82BD8](v10);
    }

    else
    {
      v33 = 1;
      objc_storeStrong(&v34, @"TermsConditionsAgreed");
    }

    v8 = [*(a1 + 32) options];
    v7 = [v8 agreementManager];
    v6 = [*(a1 + 32) descriptor];
    [v7 setTermsAgreementStatus:v33 forUpdate:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    v9 = [*(a1 + 32) currentDownload];
    MEMORY[0x277D82BD8](v9);
    if (v9)
    {
      v2 = [*(a1 + 32) currentDownload];
      v1 = [v2 downloadOptions];
      [v1 setTermsAndConditionsAgreementStatus:v33];
      MEMORY[0x277D82BD8](v1);
      MEMORY[0x277D82BD8](v2);
      v3 = *(*(a1 + 40) + 120);
      v5 = [*(a1 + 32) currentDownload];
      v4 = [v5 downloadOptions];
      v24 = MEMORY[0x277D85DD0];
      v25 = -1073741824;
      v26 = 0;
      v27 = __65__SUSettingsUpdateOperation_action_PresentTermsConditions_error___block_invoke_338;
      v28 = &unk_279CBC678;
      v29 = MEMORY[0x277D82BE0](v44[0]);
      v30 = MEMORY[0x277D82BE0](*(a1 + 32));
      v31 = MEMORY[0x277D82BE0](*(a1 + 40));
      v32 = MEMORY[0x277D82BE0](v34);
      [v3 updateDownloadOptions:v4 withResult:&v24];
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v29, 0);
    }

    else
    {
      [*(*(a1 + 40) + 112) postEvent:v34 withInfo:*(a1 + 32)];
    }

    objc_storeStrong(&v34, 0);
    v39 = 0;
  }

  objc_storeStrong(v44, 0);
  *MEMORY[0x277D85DE8];
}

void __65__SUSettingsUpdateOperation_action_PresentTermsConditions_error___block_invoke_338(uint64_t a1, char a2, id obj)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = a1;
  v13 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v11[1] = a1;
  v7 = [*(a1 + 32) log];
  v11[0] = [v7 oslog];
  MEMORY[0x277D82BD8](v7);
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v11[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v11[0];
    type = v10;
    v6 = [*(a1 + 40) descriptor];
    v5 = [v6 humanReadableUpdateName];
    v9 = MEMORY[0x277D82BE0](v5);
    __os_log_helper_16_2_4_8_32_8_66_4_0_8_66(v15, "[SUSettingsUpdateOperation action_PresentTermsConditions:error:]_block_invoke", v9, v13 & 1, location);
    _os_log_impl(&dword_26AC94000, log, type, "%s [->%{public}@]: Download options updated: %d, error = %{public}@", v15, 0x26u);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(v11, 0);
  [*(*(a1 + 48) + 112) postEvent:*(a1 + 56) withInfo:*(a1 + 40)];
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)action_ResolveUpdateOperation:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = a4;
  v17 = [(SUSettingsUpdateOperation *)v25 updateFSM];
  v16 = [(SUCoreFSM *)v17 extendedStateQueue];
  dispatch_assert_queue_V2(v16);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  if (location[0])
  {
    operationType = v25->_operationType;
    switch(operationType)
    {
      case 1uLL:
        [(SUCoreFSM *)v25->_updateFSM postEvent:@"UpdateOpOnlyDownload" withInfo:location[0]];
        break;
      case 2uLL:
        [(SUCoreFSM *)v25->_updateFSM postEvent:@"UpdateOpDownloadAndInstall" withInfo:location[0]];
        break;
      case 3uLL:
        [(SUCoreFSM *)v25->_updateFSM postEvent:@"UpdateOpDownloadAndSchedule" withInfo:location[0]];
        break;
      case 4uLL:
        [(SUCoreFSM *)v25->_updateFSM postEvent:@"UpdateOpOnlySchedule" withInfo:location[0]];
        break;
      case 5uLL:
        [(SUCoreFSM *)v25->_updateFSM postEvent:@"UpdateOpOnlyInstall" withInfo:location[0]];
        break;
      default:
        v12 = [(SUSettingsUpdateOperation *)v25 log];
        v21 = [(SUCoreLog *)v12 oslog];
        MEMORY[0x277D82BD8](v12);
        v20 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          log = v21;
          type = v20;
          v11 = [location[0] descriptor];
          v10 = [v11 humanReadableUpdateName];
          v6 = MEMORY[0x277D82BE0](v10);
          v19 = v6;
          v9 = SUSettingsUpdateOperationTypeToString(v25->_operationType);
          v18 = MEMORY[0x277D82BE0](v9);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_2(v27, "[SUSettingsUpdateOperation action_ResolveUpdateOperation:error:]", v6, v18, v25->_operationType);
          _os_log_impl(&dword_26AC94000, log, type, "%s [->%{public}@]: Can not resovle unknown operation type: %{public}@ (%{public}ld)", v27, 0x2Au);
          MEMORY[0x277D82BD8](v9);
          MEMORY[0x277D82BD8](v10);
          MEMORY[0x277D82BD8](v11);
          objc_storeStrong(&v18, 0);
          objc_storeStrong(&v19, 0);
        }

        objc_storeStrong(&v21, 0);
        v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64AE8] code:2 userInfo:0];
        [location[0] setOperationError:?];
        MEMORY[0x277D82BD8](v5);
        [(SUCoreFSM *)v25->_updateFSM postEvent:@"CancelUpdate" withInfo:location[0]];
        break;
    }

    v26 = 0;
    v22 = 1;
  }

  else
  {
    v14 = [(SUCoreFSM *)v25->_updateFSM diag];
    [v14 trackAnomaly:@"[SUSettingsUpdateOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:? withError:?];
    MEMORY[0x277D82BD8](v14);
    v26 = 8102;
    v22 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v26;
}

- (int64_t)action_PresentDownloadConstraints:(id)a3 error:(id *)a4
{
  v118 = *MEMORY[0x277D85DE8];
  v109 = self;
  v108 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v106 = a4;
  v70 = [(SUSettingsUpdateOperation *)v109 updateFSM];
  v69 = [(SUCoreFSM *)v70 extendedStateQueue];
  dispatch_assert_queue_V2(v69);
  MEMORY[0x277D82BD8](v69);
  MEMORY[0x277D82BD8](v70);
  if (location)
  {
    SUDownloadPolicyFactoryClass = getSUDownloadPolicyFactoryClass();
    v66 = [location descriptor];
    v65 = [location currentDownload];
    v64 = [v65 downloadOptions];
    v63 = [v64 activeDownloadPolicy];
    v62 = [location options];
    v104 = [SUDownloadPolicyFactoryClass userDownloadPolicyForDescriptor:v66 existingPolicy:v63 allowCellularOverride:{objc_msgSend(v62, "allowUnrestrictedCellularDownload")}];
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v66);
    if ([(SUSettingsUpdateOperation *)v109 deviceSupportsCellularCapability])
    {
      v100 = [MEMORY[0x277D648C0] sharedInstance];
      v51 = [location options];
      v52 = [v51 clientIsBuddy];
      MEMORY[0x277D82BD8](v51);
      if ((v52 & 1) != 0 && ([v100 isBootstrap] & 1) != 0 && (objc_msgSend(v100, "isPathSatisfied") & 1) == 0)
      {
        v50 = [(SUSettingsUpdateOperation *)v109 log];
        v99 = [(SUCoreLog *)v50 oslog];
        MEMORY[0x277D82BD8](v50);
        v98 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
        {
          v46 = v99;
          v47 = v98;
          v49 = [location descriptor];
          v48 = [v49 humanReadableUpdateName];
          v97 = MEMORY[0x277D82BE0](v48);
          __os_log_helper_16_2_2_8_32_8_66(v116, "[SUSettingsUpdateOperation action_PresentDownloadConstraints:error:]", v97);
          _os_log_impl(&dword_26AC94000, v46, v47, "%s [->%{public}@]: Can't download update in bootstrap network. Not prompting for cellular download acceptance", v116, 0x16u);
          MEMORY[0x277D82BD8](v48);
          MEMORY[0x277D82BD8](v49);
          objc_storeStrong(&v97, 0);
        }

        objc_storeStrong(&v99, 0);
        v45 = [location options];
        v44 = [v45 agreementManager];
        v43 = [location descriptor];
        [v44 setCellularFeeAgreementStatus:? forUpdate:?];
        MEMORY[0x277D82BD8](v43);
        MEMORY[0x277D82BD8](v44);
        MEMORY[0x277D82BD8](v45);
        [location setCellularAgreementStatus:0];
        [(SUCoreFSM *)v109->_updateFSM postEvent:@"DownloadConstraintsNotRequired" withInfo:location];
        v110 = 0;
        v105 = 1;
      }

      else
      {
        v96 = MGGetBoolAnswer();
        if (v96)
        {
          if ([v104 isDownloadAllowableForCellular])
          {
            if ([v100 currentNetworkType] == 1)
            {
              v26 = [(SUSettingsUpdateOperation *)v109 log];
              v89 = [(SUCoreLog *)v26 oslog];
              MEMORY[0x277D82BD8](v26);
              v88 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
              {
                v22 = v89;
                v23 = v88;
                v25 = [location descriptor];
                v24 = [v25 humanReadableUpdateName];
                v87 = MEMORY[0x277D82BE0](v24);
                __os_log_helper_16_2_2_8_32_8_66(v113, "[SUSettingsUpdateOperation action_PresentDownloadConstraints:error:]", v87);
                _os_log_impl(&dword_26AC94000, v22, v23, "%s [->%{public}@]: Device is currently using Wi-Fi. Skipping on the download constraints acceptance step.", v113, 0x16u);
                MEMORY[0x277D82BD8](v24);
                MEMORY[0x277D82BD8](v25);
                objc_storeStrong(&v87, 0);
              }

              objc_storeStrong(&v89, 0);
              v21 = [location options];
              v20 = [v21 agreementManager];
              v19 = [location descriptor];
              [v20 setCellularFeeAgreementStatus:? forUpdate:?];
              MEMORY[0x277D82BD8](v19);
              MEMORY[0x277D82BD8](v20);
              MEMORY[0x277D82BD8](v21);
              [location setCellularAgreementStatus:0];
              [(SUCoreFSM *)v109->_updateFSM postEvent:@"DownloadConstraintsNotRequired" withInfo:location];
              v110 = 0;
              v105 = 1;
            }

            else if ([v104 is5GDownloadAllowed])
            {
              v18 = [(SUSettingsUpdateOperation *)v109 log];
              v86 = [(SUCoreLog *)v18 oslog];
              MEMORY[0x277D82BD8](v18);
              v85 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
              {
                v14 = v86;
                v15 = v85;
                v17 = [location descriptor];
                v16 = [v17 humanReadableUpdateName];
                v84 = MEMORY[0x277D82BE0](v16);
                __os_log_helper_16_2_2_8_32_8_66(v112, "[SUSettingsUpdateOperation action_PresentDownloadConstraints:error:]", v84);
                _os_log_impl(&dword_26AC94000, v14, v15, "%s [->%{public}@]: Device is using inexpensive HDM. Skipping on the download constraints acceptance step.", v112, 0x16u);
                MEMORY[0x277D82BD8](v16);
                MEMORY[0x277D82BD8](v17);
                objc_storeStrong(&v84, 0);
              }

              objc_storeStrong(&v86, 0);
              v13 = [location options];
              v12 = [v13 agreementManager];
              v11 = [location descriptor];
              [v12 setCellularFeeAgreementStatus:? forUpdate:?];
              MEMORY[0x277D82BD8](v11);
              MEMORY[0x277D82BD8](v12);
              MEMORY[0x277D82BD8](v13);
              [location setCellularAgreementStatus:0];
              [(SUCoreFSM *)v109->_updateFSM postEvent:@"DownloadConstraintsNotRequired" withInfo:location];
              v110 = 0;
              v105 = 1;
            }

            else
            {
              v10 = [(SUSettingsUpdateOperation *)v109 log];
              v83 = [(SUCoreLog *)v10 oslog];
              MEMORY[0x277D82BD8](v10);
              v82 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
              {
                v6 = v83;
                v7 = v82;
                v9 = [location descriptor];
                v8 = [v9 humanReadableUpdateName];
                v81 = MEMORY[0x277D82BE0](v8);
                __os_log_helper_16_2_3_8_32_8_66_8_66(v111, "[SUSettingsUpdateOperation action_PresentDownloadConstraints:error:]", v81, v104);
                _os_log_impl(&dword_26AC94000, v6, v7, "%s [->%{public}@]: Attempting to ask for download constraints approval for download policy: %{public}@", v111, 0x20u);
                MEMORY[0x277D82BD8](v8);
                MEMORY[0x277D82BD8](v9);
                objc_storeStrong(&v81, 0);
              }

              objc_storeStrong(&v83, 0);
              objc_initWeak(&v80, v109);
              queue = v109->_delegateCallbackQueue;
              v71 = MEMORY[0x277D85DD0];
              v72 = -1073741824;
              v73 = 0;
              v74 = __69__SUSettingsUpdateOperation_action_PresentDownloadConstraints_error___block_invoke;
              v75 = &unk_279CBC5D8;
              objc_copyWeak(v79, &v80);
              v79[1] = v108;
              v76 = MEMORY[0x277D82BE0](v109);
              v77 = MEMORY[0x277D82BE0](location);
              v78 = MEMORY[0x277D82BE0](v104);
              dispatch_async(queue, &v71);
              v110 = 0;
              v105 = 1;
              objc_storeStrong(&v78, 0);
              objc_storeStrong(&v77, 0);
              objc_storeStrong(&v76, 0);
              objc_destroyWeak(v79);
              objc_destroyWeak(&v80);
            }
          }

          else
          {
            v34 = [(SUSettingsUpdateOperation *)v109 log];
            v92 = [(SUCoreLog *)v34 oslog];
            MEMORY[0x277D82BD8](v34);
            v91 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
            {
              v30 = v92;
              v31 = v91;
              v33 = [location descriptor];
              v32 = [v33 humanReadableUpdateName];
              v90 = MEMORY[0x277D82BE0](v32);
              __os_log_helper_16_2_2_8_32_8_66(v114, "[SUSettingsUpdateOperation action_PresentDownloadConstraints:error:]", v90);
              _os_log_impl(&dword_26AC94000, v30, v31, "%s [->%{public}@]: The download policy does not support cellular capability. Skipping on the download constraints acceptance step.", v114, 0x16u);
              MEMORY[0x277D82BD8](v32);
              MEMORY[0x277D82BD8](v33);
              objc_storeStrong(&v90, 0);
            }

            objc_storeStrong(&v92, 0);
            v29 = [location options];
            v28 = [v29 agreementManager];
            v27 = [location descriptor];
            [v28 setCellularFeeAgreementStatus:? forUpdate:?];
            MEMORY[0x277D82BD8](v27);
            MEMORY[0x277D82BD8](v28);
            MEMORY[0x277D82BD8](v29);
            [location setCellularAgreementStatus:0];
            [(SUCoreFSM *)v109->_updateFSM postEvent:@"DownloadConstraintsNotRequired" withInfo:location];
            v110 = 0;
            v105 = 1;
          }
        }

        else
        {
          v42 = [(SUSettingsUpdateOperation *)v109 log];
          v95 = [(SUCoreLog *)v42 oslog];
          MEMORY[0x277D82BD8](v42);
          v94 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
          {
            v38 = v95;
            v39 = v94;
            v41 = [location descriptor];
            v40 = [v41 humanReadableUpdateName];
            v93 = MEMORY[0x277D82BE0](v40);
            __os_log_helper_16_2_2_8_32_8_66(v115, "[SUSettingsUpdateOperation action_PresentDownloadConstraints:error:]", v93);
            _os_log_impl(&dword_26AC94000, v38, v39, "%s [->%{public}@]: MobileGestalt: The device does not support cellular capability. Skipping on the download constraints acceptance step.", v115, 0x16u);
            MEMORY[0x277D82BD8](v40);
            MEMORY[0x277D82BD8](v41);
            objc_storeStrong(&v93, 0);
          }

          objc_storeStrong(&v95, 0);
          v37 = [location options];
          v36 = [v37 agreementManager];
          v35 = [location descriptor];
          [v36 setCellularFeeAgreementStatus:? forUpdate:?];
          MEMORY[0x277D82BD8](v35);
          MEMORY[0x277D82BD8](v36);
          MEMORY[0x277D82BD8](v37);
          [location setCellularAgreementStatus:0];
          [(SUCoreFSM *)v109->_updateFSM postEvent:@"DownloadConstraintsNotRequired" withInfo:location];
          v110 = 0;
          v105 = 1;
        }
      }

      objc_storeStrong(&v100, 0);
    }

    else
    {
      v60 = [(SUSettingsUpdateOperation *)v109 log];
      oslog = [(SUCoreLog *)v60 oslog];
      MEMORY[0x277D82BD8](v60);
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        log = oslog;
        v57 = type;
        v59 = [location descriptor];
        v58 = [v59 humanReadableUpdateName];
        v101 = MEMORY[0x277D82BE0](v58);
        __os_log_helper_16_2_2_8_32_8_66(v117, "[SUSettingsUpdateOperation action_PresentDownloadConstraints:error:]", v101);
        _os_log_impl(&dword_26AC94000, log, v57, "%s [->%{public}@]: CoreTelephony: The device does not support cellular capability. Skipping on the download constraints acceptance step.", v117, 0x16u);
        MEMORY[0x277D82BD8](v58);
        MEMORY[0x277D82BD8](v59);
        objc_storeStrong(&v101, 0);
      }

      objc_storeStrong(&oslog, 0);
      v55 = [location options];
      v54 = [v55 agreementManager];
      v53 = [location descriptor];
      [v54 setCellularFeeAgreementStatus:? forUpdate:?];
      MEMORY[0x277D82BD8](v53);
      MEMORY[0x277D82BD8](v54);
      MEMORY[0x277D82BD8](v55);
      [location setCellularAgreementStatus:0];
      [(SUCoreFSM *)v109->_updateFSM postEvent:@"DownloadConstraintsNotRequired" withInfo:location];
      v110 = 0;
      v105 = 1;
    }

    objc_storeStrong(&v104, 0);
  }

  else
  {
    v67 = [(SUCoreFSM *)v109->_updateFSM diag];
    [v67 trackAnomaly:@"[SUSettingsUpdateOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:? withError:?];
    MEMORY[0x277D82BD8](v67);
    v110 = 8102;
    v105 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v110;
}

void __69__SUSettingsUpdateOperation_action_PresentDownloadConstraints_error___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v22[2] = a1;
  v22[1] = a1;
  v22[0] = objc_loadWeakRetained((a1 + 56));
  v7 = 0;
  if (!v22[0])
  {
    v6 = SUSettingsSharedLogger();
    v21 = [v6 oslog];
    MEMORY[0x277D82BD8](v6);
    v20 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(*(a1 + 64));
      location = MEMORY[0x277D82BE0](v5);
      __os_log_helper_16_2_2_8_32_8_66(v23, "[SUSettingsUpdateOperation action_PresentDownloadConstraints:error:]_block_invoke", location);
      _os_log_error_impl(&dword_26AC94000, v21, v20, "%s: Self is nil in %{public}@. Stopping.", v23, 0x16u);
      MEMORY[0x277D82BD8](v5);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v21, 0);
    v18 = 1;
    v7 = 1;
  }

  if (v7)
  {
    v17 = 1;
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);
    v4 = v22[0];
    v1 = [*(a1 + 40) descriptor];
    v2 = *(a1 + 48);
    v9 = MEMORY[0x277D85DD0];
    v10 = -1073741824;
    v11 = 0;
    v12 = __69__SUSettingsUpdateOperation_action_PresentDownloadConstraints_error___block_invoke_343;
    v13 = &unk_279CBC6C8;
    objc_copyWeak(v16, (a1 + 56));
    v16[1] = *(a1 + 64);
    v14 = MEMORY[0x277D82BE0](*(a1 + 32));
    v15 = MEMORY[0x277D82BE0](*(a1 + 40));
    [v3 operation:v4 requestApprovalForDownloadConstraints:v1 downloadPolicy:v2 replyHandler:&v9];
    MEMORY[0x277D82BD8](v1);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    objc_destroyWeak(v16);
    v17 = 0;
  }

  objc_storeStrong(v22, 0);
  *MEMORY[0x277D85DE8];
}

void __69__SUSettingsUpdateOperation_action_PresentDownloadConstraints_error___block_invoke_343(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = a1;
  v23 = a2;
  v22[1] = a1;
  v22[0] = objc_loadWeakRetained((a1 + 48));
  v7 = 0;
  if (!v22[0])
  {
    v6 = SUSettingsSharedLogger();
    v21 = [v6 oslog];
    MEMORY[0x277D82BD8](v6);
    v20 = 16;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      log = v21;
      type = v20;
      v5 = NSStringFromSelector(*(a1 + 56));
      v19 = MEMORY[0x277D82BE0](v5);
      __os_log_helper_16_2_2_8_32_8_66(v25, "[SUSettingsUpdateOperation action_PresentDownloadConstraints:error:]_block_invoke", v19);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v25, 0x16u);
      MEMORY[0x277D82BD8](v5);
      objc_storeStrong(&v19, 0);
    }

    objc_storeStrong(&v21, 0);
    v18 = 1;
    v7 = 1;
  }

  if (v7)
  {
    v17 = 1;
  }

  else
  {
    queue = *(*(a1 + 32) + 96);
    v9 = MEMORY[0x277D85DD0];
    v10 = -1073741824;
    v11 = 0;
    v12 = __69__SUSettingsUpdateOperation_action_PresentDownloadConstraints_error___block_invoke_344;
    v13 = &unk_279CBC6A0;
    objc_copyWeak(v16, (a1 + 48));
    v16[1] = *(a1 + 56);
    v14 = MEMORY[0x277D82BE0](*(a1 + 40));
    v16[2] = v23;
    v15 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v9);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    objc_destroyWeak(v16);
    v17 = 0;
  }

  objc_storeStrong(v22, 0);
  *MEMORY[0x277D85DE8];
}

void __69__SUSettingsUpdateOperation_action_PresentDownloadConstraints_error___block_invoke_344(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v30[2] = a1;
  v30[1] = a1;
  v30[0] = objc_loadWeakRetained((a1 + 48));
  v19 = 0;
  if (!v30[0])
  {
    v18 = SUSettingsSharedLogger();
    v29 = [v18 oslog];
    MEMORY[0x277D82BD8](v18);
    v28 = 16;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      log = v29;
      type = v28;
      v17 = NSStringFromSelector(*(a1 + 56));
      v27 = MEMORY[0x277D82BE0](v17);
      __os_log_helper_16_2_2_8_32_8_66(v32, "[SUSettingsUpdateOperation action_PresentDownloadConstraints:error:]_block_invoke", v27);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v32, 0x16u);
      MEMORY[0x277D82BD8](v17);
      objc_storeStrong(&v27, 0);
    }

    objc_storeStrong(&v29, 0);
    v26 = 1;
    v19 = 1;
  }

  if (v19)
  {
    v25 = 1;
  }

  else
  {
    v14 = [v30[0] log];
    v24 = [v14 oslog];
    MEMORY[0x277D82BD8](v14);
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v24;
      v10 = v23;
      v13 = [*(a1 + 32) descriptor];
      v12 = [v13 humanReadableUpdateName];
      v8 = MEMORY[0x277D82BE0](v12);
      v22 = v8;
      v11 = SUSettingsUserInteractionResponseTypeToString(*(a1 + 64));
      v21 = MEMORY[0x277D82BE0](v11);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v31, "[SUSettingsUpdateOperation action_PresentDownloadConstraints:error:]_block_invoke", v8, v21);
      _os_log_impl(&dword_26AC94000, v9, v10, "%s [->%{public}@]: Download constraints approval request result: %{public}@", v31, 0x20u);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v22, 0);
    }

    objc_storeStrong(&v24, 0);
    if (*(a1 + 64))
    {
      v6 = [*(a1 + 32) options];
      v5 = [v6 agreementManager];
      v4 = [*(a1 + 32) descriptor];
      [v5 setCellularFeeAgreementStatus:? forUpdate:?];
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      [*(a1 + 32) setCellularAgreementStatus:2];
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64AE8] code:4 userInfo:0];
      [*(a1 + 32) setOperationError:?];
      MEMORY[0x277D82BD8](v7);
      [*(*(a1 + 40) + 112) postEvent:@"DownloadConstraintsRejected" withInfo:*(a1 + 32)];
      v25 = 1;
    }

    else
    {
      v3 = [*(a1 + 32) options];
      v2 = [v3 agreementManager];
      v1 = [*(a1 + 32) descriptor];
      [v2 setCellularFeeAgreementStatus:? forUpdate:?];
      MEMORY[0x277D82BD8](v1);
      MEMORY[0x277D82BD8](v2);
      MEMORY[0x277D82BD8](v3);
      [*(a1 + 32) setCellularAgreementStatus:1];
      [*(*(a1 + 40) + 112) postEvent:@"DownloadConstraintsAgreed" withInfo:*(a1 + 32)];
      v25 = 0;
    }
  }

  objc_storeStrong(v30, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)action_InitiateUpdateDownload:(id)a3 error:(id *)a4
{
  v32 = self;
  v31 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v29 = a4;
  v16 = [(SUSettingsUpdateOperation *)v32 updateFSM];
  v15 = [(SUCoreFSM *)v16 extendedStateQueue];
  dispatch_assert_queue_V2(v15);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  if (location)
  {
    v7 = objc_alloc(MEMORY[0x277D64890]);
    v8 = [location descriptor];
    v27 = [v7 initWithDescriptor:?];
    MEMORY[0x277D82BD8](v8);
    SUDownloadPolicyFactoryClass = getSUDownloadPolicyFactoryClass();
    v11 = [location descriptor];
    v10 = [location options];
    v26 = [SUDownloadPolicyFactoryClass userDownloadPolicyForDescriptor:v11 existingPolicy:0 allowCellularOverride:{objc_msgSend(v10, "allowUnrestrictedCellularDownload")}];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    v12 = [(SUSettingsUpdateOperation *)v32 operationType];
    if (v12 != 1)
    {
      if (v12 != 3)
      {
LABEL_7:
        [v27 setActiveDownloadPolicy:v26];
        [v27 setDownloadFeeAgreementStatus:{objc_msgSend(location, "cellularAgreementStatus")}];
        [v27 setTermsAndConditionsAgreementStatus:1];
        objc_initWeak(&v25, v32);
        suClient = v32->_suClient;
        v5 = v27;
        v17 = MEMORY[0x277D85DD0];
        v18 = -1073741824;
        v19 = 0;
        v20 = __65__SUSettingsUpdateOperation_action_InitiateUpdateDownload_error___block_invoke;
        v21 = &unk_279CBC560;
        objc_copyWeak(v24, &v25);
        v24[1] = v31;
        v22 = MEMORY[0x277D82BE0](location);
        v23 = MEMORY[0x277D82BE0](v32);
        [(SUManagerClient *)suClient startDownloadWithOptions:v5 withResult:&v17];
        v33 = 0;
        v28 = 1;
        objc_storeStrong(&v23, 0);
        objc_storeStrong(&v22, 0);
        objc_destroyWeak(v24);
        objc_destroyWeak(&v25);
        objc_storeStrong(&v26, 0);
        objc_storeStrong(&v27, 0);
        goto LABEL_8;
      }

      [v27 setUserUpdateTonight:1];
    }

    [v27 setDownloadOnly:1];
    goto LABEL_7;
  }

  v13 = [(SUCoreFSM *)v32->_updateFSM diag];
  [v13 trackAnomaly:@"[SUSettingsUpdateOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:? withError:?];
  MEMORY[0x277D82BD8](v13);
  v33 = 8102;
  v28 = 1;
LABEL_8:
  objc_storeStrong(&location, 0);
  return v33;
}

void __65__SUSettingsUpdateOperation_action_InitiateUpdateDownload_error___block_invoke(uint64_t a1, char a2, id obj)
{
  v48 = *MEMORY[0x277D85DE8];
  v44 = a1;
  v43 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v41[1] = a1;
  v41[0] = objc_loadWeakRetained((a1 + 48));
  v19 = 0;
  if (!v41[0])
  {
    v18 = SUSettingsSharedLogger();
    v40 = [v18 oslog];
    MEMORY[0x277D82BD8](v18);
    v39 = 16;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      log = v40;
      type = v39;
      v15 = NSStringFromSelector(*(a1 + 56));
      v38 = MEMORY[0x277D82BE0](v15);
      __os_log_helper_16_2_2_8_32_8_66(v47, "[SUSettingsUpdateOperation action_InitiateUpdateDownload:error:]_block_invoke", v38);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v47, 0x16u);
      MEMORY[0x277D82BD8](v15);
      objc_storeStrong(&v38, 0);
    }

    objc_storeStrong(&v40, 0);
    v37 = 1;
    v19 = 1;
  }

  if (v19)
  {
    v36 = 1;
  }

  else
  {
    v14 = [v41[0] log];
    v35 = [v14 oslog];
    MEMORY[0x277D82BD8](v14);
    v34 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) descriptor];
      v12 = [v13 humanReadableUpdateName];
      v33 = MEMORY[0x277D82BE0](v12);
      __os_log_helper_16_2_4_8_32_8_66_4_0_8_66(v46, "[SUSettingsUpdateOperation action_InitiateUpdateDownload:error:]_block_invoke", v33, v43 & 1, location);
      _os_log_impl(&dword_26AC94000, v35, v34, "%s [->%{public}@]: Initiated the update download. Successfully started: %d; error: %{public}@", v46, 0x26u);
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      objc_storeStrong(&v33, 0);
    }

    objc_storeStrong(&v35, 0);
    v11 = [location domain];
    v9 = getSUErrorDomain_2();
    v10 = [v11 isEqualToString:?];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v11);
    if (v10)
    {
      v32 = [location code];
      if (v32 == 11 || v32 == 41)
      {
        v43 = 1;
      }
    }

    [*(a1 + 32) setDownloadStartedSuccessfully:v43 & 1];
    [*(a1 + 32) setOperationError:location];
    if (v43)
    {
      v3 = *(*(a1 + 40) + 120);
      v21 = MEMORY[0x277D85DD0];
      v22 = -1073741824;
      v23 = 0;
      v24 = __65__SUSettingsUpdateOperation_action_InitiateUpdateDownload_error___block_invoke_346;
      v25 = &unk_279CBC538;
      objc_copyWeak(v28, (a1 + 48));
      v28[1] = *(a1 + 56);
      v26 = MEMORY[0x277D82BE0](*(a1 + 32));
      v27 = MEMORY[0x277D82BE0](*(a1 + 40));
      [v3 download:&v21];
      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v26, 0);
      objc_destroyWeak(v28);
      v36 = 0;
    }

    else
    {
      v8 = [*(a1 + 32) operationError];
      MEMORY[0x277D82BD8](v8);
      if (!v8)
      {
        v7 = [v41[0] log];
        v31 = [v7 oslog];
        MEMORY[0x277D82BD8](v7);
        v30 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v6 = [*(a1 + 32) descriptor];
          v5 = [v6 humanReadableUpdateName];
          v29 = MEMORY[0x277D82BE0](v5);
          __os_log_helper_16_2_4_8_32_8_66_4_0_8_66(v45, "[SUSettingsUpdateOperation action_InitiateUpdateDownload:error:]_block_invoke", v29, v43 & 1, location);
          _os_log_impl(&dword_26AC94000, v31, v30, "%s [->%{public}@]: The download attempt has failed but there's no error assigned to it. result: %d; startDownloadError: %{public}@", v45, 0x26u);
          MEMORY[0x277D82BD8](v5);
          MEMORY[0x277D82BD8](v6);
          objc_storeStrong(&v29, 0);
        }

        objc_storeStrong(&v31, 0);
        v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64AE8] code:-1 userInfo:0];
        [*(a1 + 32) setOperationError:?];
        MEMORY[0x277D82BD8](v4);
      }

      [*(*(a1 + 40) + 112) postEvent:@"UpdateDownloadInitFailed" withInfo:*(a1 + 32)];
      v36 = 1;
    }
  }

  objc_storeStrong(v41, 0);
  if (!v36)
  {
    v36 = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __65__SUSettingsUpdateOperation_action_InitiateUpdateDownload_error___block_invoke_346(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v41 = 0;
  objc_storeStrong(&v41, a3);
  v40[1] = a1;
  v40[0] = objc_loadWeakRetained((a1 + 48));
  v22 = 0;
  if (!v40[0])
  {
    v21 = SUSettingsSharedLogger();
    v39 = [v21 oslog];
    MEMORY[0x277D82BD8](v21);
    v38 = 16;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      log = v39;
      type = v38;
      v20 = NSStringFromSelector(*(a1 + 56));
      v37 = MEMORY[0x277D82BE0](v20);
      __os_log_helper_16_2_2_8_32_8_66(v45, "[SUSettingsUpdateOperation action_InitiateUpdateDownload:error:]_block_invoke", v37);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v45, 0x16u);
      MEMORY[0x277D82BD8](v20);
      objc_storeStrong(&v37, 0);
    }

    objc_storeStrong(&v39, 0);
    v36 = 1;
    v22 = 1;
  }

  if (v22)
  {
    v35 = 1;
  }

  else
  {
    v17 = [v40[0] log];
    v34 = [v17 oslog];
    MEMORY[0x277D82BD8](v17);
    v33 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v34;
      v14 = v33;
      v16 = [*(a1 + 32) descriptor];
      v15 = [v16 humanReadableUpdateName];
      v32 = MEMORY[0x277D82BE0](v15);
      __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v44, "[SUSettingsUpdateOperation action_InitiateUpdateDownload:error:]_block_invoke", v32, location[0], v41);
      _os_log_impl(&dword_26AC94000, v13, v14, "%s [->%{public}@]: Received the newly created download object: %{public}@; error: %{public}@", v44, 0x2Au);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      objc_storeStrong(&v32, 0);
    }

    objc_storeStrong(&v34, 0);
    v30 = 0;
    v28 = 0;
    v12 = 0;
    if (!location[0])
    {
      v31 = [v41 domain];
      v30 = 1;
      v29 = getSUErrorDomain_2();
      v28 = 1;
      v12 = 0;
      if ([v31 isEqualToString:?])
      {
        v12 = [v41 code] == 11;
      }
    }

    if (v28)
    {
      MEMORY[0x277D82BD8](v29);
    }

    if (v30)
    {
      MEMORY[0x277D82BD8](v31);
    }

    if (v12)
    {
      v10 = [SUSUIUninitializedDownload alloc];
      v11 = [*(a1 + 32) descriptor];
      v3 = [(SUSUIUninitializedDownload *)v10 initWithDescriptor:?];
      v4 = location[0];
      location[0] = v3;
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v11);
      v9 = [v40[0] log];
      oslog = [v9 oslog];
      MEMORY[0x277D82BD8](v9);
      v26 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v5 = oslog;
        v6 = v26;
        v8 = [*(a1 + 32) descriptor];
        v7 = [v8 humanReadableUpdateName];
        v25 = MEMORY[0x277D82BE0](v7);
        __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v43, "[SUSettingsUpdateOperation action_InitiateUpdateDownload:error:]_block_invoke", v25, v41, location[0]);
        _os_log_impl(&dword_26AC94000, v5, v6, "%s [->%{public}@]: Received a nil download and SUErrorCodeDownloadInProgress error (%{public}@) - assigned SUDownloadUninitialized to the download object: %{public}@", v43, 0x2Au);
        MEMORY[0x277D82BD8](v7);
        MEMORY[0x277D82BD8](v8);
        objc_storeStrong(&v25, 0);
      }

      objc_storeStrong(&oslog, 0);
    }

    [*(a1 + 32) setCurrentDownload:location[0]];
    if (*(*(a1 + 40) + 104) == 3)
    {
      [*(*(a1 + 40) + 112) postEvent:@"UpdateDownloadReadyToSchedule" withInfo:*(a1 + 32)];
      v35 = 1;
    }

    else
    {
      [*(*(a1 + 40) + 112) postEvent:@"UpdateDownloadStarted" withInfo:*(a1 + 32)];
      v35 = 0;
    }
  }

  objc_storeStrong(v40, 0);
  if (!v35)
  {
    v35 = 0;
  }

  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)action_InitiateUpdateInstallation:(id)a3 error:(id *)a4
{
  v25 = self;
  v24 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v22 = a4;
  v10 = [(SUSettingsUpdateOperation *)v25 updateFSM];
  v9 = [(SUCoreFSM *)v10 extendedStateQueue];
  dispatch_assert_queue_V2(v9);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  if (location)
  {
    v20 = objc_alloc_init(MEMORY[0x277D648A0]);
    [v20 setIgnorableConstraints:{+[SUSettingsScanOperation installationIgnorableConstraints](SUSettingsScanOperation, "installationIgnorableConstraints")}];
    objc_initWeak(&v19, v25);
    suClient = v25->_suClient;
    v5 = v20;
    v11 = MEMORY[0x277D85DD0];
    v12 = -1073741824;
    v13 = 0;
    v14 = __69__SUSettingsUpdateOperation_action_InitiateUpdateInstallation_error___block_invoke;
    v15 = &unk_279CBC560;
    objc_copyWeak(v18, &v19);
    v18[1] = v24;
    v16 = MEMORY[0x277D82BE0](location);
    v17 = MEMORY[0x277D82BE0](v25);
    [(SUManagerClient *)suClient installUpdateWithInstallOptions:v5 withResult:&v11];
    v26 = 0;
    v21 = 1;
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
    objc_destroyWeak(v18);
    objc_destroyWeak(&v19);
    objc_storeStrong(&v20, 0);
  }

  else
  {
    v7 = [(SUCoreFSM *)v25->_updateFSM diag];
    [v7 trackAnomaly:@"[SUSettingsUpdateOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:? withError:?];
    MEMORY[0x277D82BD8](v7);
    v26 = 8102;
    v21 = 1;
  }

  objc_storeStrong(&location, 0);
  return v26;
}

void __69__SUSettingsUpdateOperation_action_InitiateUpdateInstallation_error___block_invoke(uint64_t a1, char a2, id obj)
{
  v33 = *MEMORY[0x277D85DE8];
  v30 = a1;
  v29 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v27[1] = a1;
  v27[0] = objc_loadWeakRetained((a1 + 48));
  v15 = 0;
  if (!v27[0])
  {
    v14 = SUSettingsSharedLogger();
    v26 = [v14 oslog];
    MEMORY[0x277D82BD8](v14);
    v25 = 16;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      log = v26;
      type = v25;
      v13 = NSStringFromSelector(*(a1 + 56));
      v24 = MEMORY[0x277D82BE0](v13);
      __os_log_helper_16_2_2_8_32_8_66(v32, "[SUSettingsUpdateOperation action_InitiateUpdateInstallation:error:]_block_invoke", v24);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v32, 0x16u);
      MEMORY[0x277D82BD8](v13);
      objc_storeStrong(&v24, 0);
    }

    objc_storeStrong(&v26, 0);
    v23 = 1;
    v15 = 1;
  }

  if (v15)
  {
    v22 = 1;
  }

  else
  {
    [*(a1 + 32) setInstallInitiatedSuccessfully:v29 & 1];
    [*(a1 + 32) setOperationError:location];
    v20 = 0;
    v10 = 0;
    if ((v29 & 1) == 0)
    {
      v21 = [*(a1 + 32) operationError];
      v20 = 1;
      v10 = v21 == 0;
    }

    if (v20)
    {
      MEMORY[0x277D82BD8](v21);
    }

    if (v10)
    {
      v9 = [v27[0] log];
      oslog = [v9 oslog];
      MEMORY[0x277D82BD8](v9);
      v18 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v5 = oslog;
        v6 = v18;
        v8 = [*(a1 + 32) descriptor];
        v7 = [v8 humanReadableUpdateName];
        v17 = MEMORY[0x277D82BE0](v7);
        __os_log_helper_16_2_4_8_32_8_66_4_0_8_66(v31, "[SUSettingsUpdateOperation action_InitiateUpdateInstallation:error:]_block_invoke", v17, v29 & 1, location);
        _os_log_impl(&dword_26AC94000, v5, v6, "%s [->%{public}@]: The installation attempt has failed but there's no error assigned to it. result: %d; installationError: %{public}@", v31, 0x26u);
        MEMORY[0x277D82BD8](v7);
        MEMORY[0x277D82BD8](v8);
        objc_storeStrong(&v17, 0);
      }

      objc_storeStrong(&oslog, 0);
      v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64AE8] code:-1 userInfo:0];
      [*(a1 + 32) setOperationError:?];
      MEMORY[0x277D82BD8](v4);
    }

    v3 = *(*(a1 + 40) + 112);
    if (v29)
    {
      [v3 postEvent:@"UpdateInstallationStarted" withInfo:*(a1 + 32)];
    }

    else
    {
      [v3 postEvent:@"UpdateInstallationFailed" withInfo:*(a1 + 32)];
    }

    v22 = 0;
  }

  objc_storeStrong(v27, 0);
  if (!v22)
  {
    v22 = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)action_ScheduleUpdate:(id)a3 error:(id *)a4
{
  v23 = self;
  v22 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v20 = a4;
  v9 = [(SUSettingsUpdateOperation *)v23 updateFSM];
  v8 = [(SUCoreFSM *)v9 extendedStateQueue];
  dispatch_assert_queue_V2(v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  if (location)
  {
    objc_initWeak(&v18, v23);
    suClient = v23->_suClient;
    v10 = MEMORY[0x277D85DD0];
    v11 = -1073741824;
    v12 = 0;
    v13 = __57__SUSettingsUpdateOperation_action_ScheduleUpdate_error___block_invoke;
    v14 = &unk_279CBC740;
    objc_copyWeak(v17, &v18);
    v17[1] = v22;
    v15 = MEMORY[0x277D82BE0](location);
    v16 = MEMORY[0x277D82BE0](v23);
    [(SUManagerClient *)suClient currentAutoInstallOperation:1 withResult:&v10];
    v24 = 0;
    v19 = 1;
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    objc_destroyWeak(v17);
    objc_destroyWeak(&v18);
  }

  else
  {
    v6 = [(SUCoreFSM *)v23->_updateFSM diag];
    [v6 trackAnomaly:@"[SUSettingsUpdateOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:? withError:?];
    MEMORY[0x277D82BD8](v6);
    v24 = 8102;
    v19 = 1;
  }

  objc_storeStrong(&location, 0);
  return v24;
}

void __57__SUSettingsUpdateOperation_action_ScheduleUpdate_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v33 = 0;
  objc_storeStrong(&v33, a3);
  v32[1] = a1;
  v32[0] = objc_loadWeakRetained((a1 + 48));
  v11 = 0;
  if (!v32[0])
  {
    v10 = SUSettingsSharedLogger();
    v31 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v30 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      log = v31;
      v8 = NSStringFromSelector(*(a1 + 56));
      v29 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_2_8_32_8_66(v36, "[SUSettingsUpdateOperation action_ScheduleUpdate:error:]_block_invoke", v29);
      _os_log_error_impl(&dword_26AC94000, log, v30, "%s: Self is nil in %{public}@. Stopping.", v36, 0x16u);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v29, 0);
    }

    objc_storeStrong(&v31, 0);
    v28 = 1;
    v11 = 1;
  }

  if (v11)
  {
    v27 = 1;
  }

  else
  {
    v7 = [v32[0] log];
    v26 = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v25 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) descriptor];
      v5 = [v6 humanReadableUpdateName];
      v24 = MEMORY[0x277D82BE0](v5);
      __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v35, "[SUSettingsUpdateOperation action_ScheduleUpdate:error:]_block_invoke", v24, location[0], v33);
      _os_log_impl(&dword_26AC94000, v26, v25, "%s [->%{public}@]: Operation aquired from currentAutoInstallOperation: %{public}@; error: %{public}@", v35, 0x2Au);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v24, 0);
    }

    objc_storeStrong(&v26, 0);
    if (location[0] && !v33)
    {
      v3 = *(*(a1 + 40) + 120);
      v4 = location[0];
      v14 = MEMORY[0x277D85DD0];
      v15 = -1073741824;
      v16 = 0;
      v17 = __57__SUSettingsUpdateOperation_action_ScheduleUpdate_error___block_invoke_350;
      v18 = &unk_279CBC718;
      objc_copyWeak(v23, (a1 + 48));
      v23[1] = *(a1 + 56);
      v19 = MEMORY[0x277D82BE0](*(a1 + 32));
      v20 = MEMORY[0x277D82BE0](location[0]);
      v21 = MEMORY[0x277D82BE0](v33);
      v22 = MEMORY[0x277D82BE0](*(a1 + 40));
      [v3 _consentAutoInstallOperation:v4 withResult:&v14];
      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v19, 0);
      objc_destroyWeak(v23);
      v27 = 0;
    }

    else
    {
      [*(a1 + 32) setUpdateScheduledSuccessfully:0];
      [*(a1 + 32) setScheduleError:v33];
      [*(*(a1 + 40) + 112) postEvent:@"UpdateScheduleFailed" withInfo:*(a1 + 32)];
      v27 = 1;
    }
  }

  objc_storeStrong(v32, 0);
  if (!v27)
  {
    v27 = 0;
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __57__SUSettingsUpdateOperation_action_ScheduleUpdate_error___block_invoke_350(uint64_t a1, char a2, id obj)
{
  v31 = *MEMORY[0x277D85DE8];
  v28 = a1;
  v27 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v25[1] = a1;
  v25[0] = objc_loadWeakRetained((a1 + 64));
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
      v13 = NSStringFromSelector(*(a1 + 72));
      v22 = MEMORY[0x277D82BE0](v13);
      __os_log_helper_16_2_2_8_32_8_66(v30, "[SUSettingsUpdateOperation action_ScheduleUpdate:error:]_block_invoke", v22);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v30, 0x16u);
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
    oslog = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = oslog;
      v7 = v18;
      v9 = [*(a1 + 32) descriptor];
      v8 = [v9 humanReadableUpdateName];
      v17 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_4_8_32_8_66_4_0_8_66(v29, "[SUSettingsUpdateOperation action_ScheduleUpdate:error:]_block_invoke", v17, v27 & 1, location);
      _os_log_impl(&dword_26AC94000, v6, v7, "%s [->%{public}@]: Consent aquired: %d; error: %{public}@", v29, 0x26u);
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      objc_storeStrong(&v17, 0);
    }

    objc_storeStrong(&oslog, 0);
    v5 = 0;
    if (v27)
    {
      v5 = *(a1 + 40) != 0;
    }

    [*(a1 + 32) setUpdateScheduledSuccessfully:v5];
    v4 = [*(a1 + 32) scheduleError];
    if (v4)
    {
      [*(a1 + 32) setScheduleError:{v4, v4}];
    }

    else
    {
      [*(a1 + 32) setScheduleError:{*(a1 + 48), *(a1 + 48)}];
    }

    MEMORY[0x277D82BD8](v4);
    if (*(a1 + 40))
    {
      if (v27)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }

      [*(a1 + 40) setAgreementStatus:v3];
      [*(a1 + 32) setAutoInstallOperation:*(a1 + 40)];
      [*(*(a1 + 56) + 112) postEvent:@"UpdateScheduleSuccess" withInfo:*(a1 + 32)];
    }

    else
    {
      [*(*(a1 + 56) + 112) postEvent:@"UpdateScheduleFailed" withInfo:*(a1 + 32)];
    }

    v20 = 0;
  }

  objc_storeStrong(v25, 0);
  if (!v20)
  {
    v20 = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)action_ReportUpdateOperationOutcome:(id)a3 error:(id *)a4
{
  v86 = *MEMORY[0x277D85DE8];
  v82 = self;
  v81 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v79 = a4;
  v27 = [(SUSettingsUpdateOperation *)v82 updateFSM];
  v26 = [(SUCoreFSM *)v27 extendedStateQueue];
  dispatch_assert_queue_V2(v26);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  if (location)
  {
    v76 = 0;
    v24 = 0;
    if ([location createdKeybag])
    {
      v23 = 1;
      if (!v82->_canceled)
      {
        v77 = [location operationError];
        v76 = 1;
        v23 = v77 != 0;
      }

      v24 = v23;
    }

    if (v76)
    {
      MEMORY[0x277D82BD8](v77);
    }

    if (v24)
    {
      v22 = [(SUSettingsUpdateOperation *)v82 log];
      v75 = [(SUCoreLog *)v22 oslog];
      MEMORY[0x277D82BD8](v22);
      v74 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [location descriptor];
        v18 = [v21 humanReadableUpdateName];
        v19 = MEMORY[0x277D82BE0](v18);
        v73 = v19;
        v4 = "YES";
        if (!v82->_canceled)
        {
          v4 = "NO";
        }

        v20 = v4;
        v17 = [location operationError];
        __os_log_helper_16_2_4_8_32_8_66_8_32_8_66(v85, "[SUSettingsUpdateOperation action_ReportUpdateOperationOutcome:error:]", v19, v20, v17);
        _os_log_impl(&dword_26AC94000, v75, v74, "%s [->%{public}@]: A keybag was created during the update attempt, but the update operation did not finish with success result. Destroying the keybag.\ncanceled? %s; operationError: %{public}@", v85, 0x2Au);
        MEMORY[0x277D82BD8](v17);
        MEMORY[0x277D82BD8](v18);
        MEMORY[0x277D82BD8](v21);
        objc_storeStrong(&v73, 0);
      }

      objc_storeStrong(&v75, 0);
      [(SUManagerClient *)v82->_suClient destroyInstallationKeybag];
    }

    objc_initWeak(&from, v82);
    if (v82->_canceled)
    {
      [location setDownloadStartedSuccessfully:0];
      [location setInstallInitiatedSuccessfully:0];
      [location setUpdateScheduledSuccessfully:0];
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:16 userInfo:0];
      [location setOperationError:?];
      MEMORY[0x277D82BD8](v16);
      queue = v82->_completionQueue;
      v65 = MEMORY[0x277D85DD0];
      v66 = -1073741824;
      v67 = 0;
      v68 = __71__SUSettingsUpdateOperation_action_ReportUpdateOperationOutcome_error___block_invoke;
      v69 = &unk_279CBC768;
      objc_copyWeak(v71, &from);
      v71[1] = v81;
      v70 = MEMORY[0x277D82BE0](v82);
      dispatch_async(queue, &v65);
      objc_storeStrong(&v70, 0);
      objc_destroyWeak(v71);
    }

    operationType = v82->_operationType;
    if (operationType - 1 <= 1)
    {
      completionQueue = v82->_completionQueue;
      v57 = MEMORY[0x277D85DD0];
      v58 = -1073741824;
      v59 = 0;
      v60 = __71__SUSettingsUpdateOperation_action_ReportUpdateOperationOutcome_error___block_invoke_354;
      v61 = &unk_279CBC6F0;
      objc_copyWeak(v64, &from);
      v64[1] = v81;
      v62 = MEMORY[0x277D82BE0](v82);
      v63 = MEMORY[0x277D82BE0](location);
      dispatch_async(completionQueue, &v57);
      objc_storeStrong(&v63, 0);
      objc_storeStrong(&v62, 0);
      objc_destroyWeak(v64);
    }

    else
    {
      switch(operationType)
      {
        case 3uLL:
          v12 = v82->_completionQueue;
          v49 = MEMORY[0x277D85DD0];
          v50 = -1073741824;
          v51 = 0;
          v52 = __71__SUSettingsUpdateOperation_action_ReportUpdateOperationOutcome_error___block_invoke_355;
          v53 = &unk_279CBC6F0;
          objc_copyWeak(v56, &from);
          v56[1] = v81;
          v54 = MEMORY[0x277D82BE0](v82);
          v55 = MEMORY[0x277D82BE0](location);
          dispatch_async(v12, &v49);
          objc_storeStrong(&v55, 0);
          objc_storeStrong(&v54, 0);
          objc_destroyWeak(v56);
          break;
        case 4uLL:
          v11 = v82->_completionQueue;
          v41 = MEMORY[0x277D85DD0];
          v42 = -1073741824;
          v43 = 0;
          v44 = __71__SUSettingsUpdateOperation_action_ReportUpdateOperationOutcome_error___block_invoke_356;
          v45 = &unk_279CBC6F0;
          objc_copyWeak(v48, &from);
          v48[1] = v81;
          v46 = MEMORY[0x277D82BE0](v82);
          v47 = MEMORY[0x277D82BE0](location);
          dispatch_async(v11, &v41);
          objc_storeStrong(&v47, 0);
          objc_storeStrong(&v46, 0);
          objc_destroyWeak(v48);
          break;
        case 5uLL:
          v10 = v82->_completionQueue;
          v33 = MEMORY[0x277D85DD0];
          v34 = -1073741824;
          v35 = 0;
          v36 = __71__SUSettingsUpdateOperation_action_ReportUpdateOperationOutcome_error___block_invoke_357;
          v37 = &unk_279CBC6F0;
          objc_copyWeak(v40, &from);
          v40[1] = v81;
          v38 = MEMORY[0x277D82BE0](v82);
          v39 = MEMORY[0x277D82BE0](location);
          dispatch_async(v10, &v33);
          objc_storeStrong(&v39, 0);
          objc_storeStrong(&v38, 0);
          objc_destroyWeak(v40);
          break;
        default:
          v9 = [(SUSettingsUpdateOperation *)v82 log];
          oslog = [(SUCoreLog *)v9 oslog];
          MEMORY[0x277D82BD8](v9);
          v31 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            v8 = [location descriptor];
            v7 = [v8 humanReadableUpdateName];
            v30 = MEMORY[0x277D82BE0](v7);
            v6 = SUSettingsUpdateOperationTypeToString(v82->_operationType);
            v29 = MEMORY[0x277D82BE0](v6);
            __os_log_helper_16_2_4_8_32_8_66_8_66_8_2(v84, "[SUSettingsUpdateOperation action_ReportUpdateOperationOutcome:error:]", v30, v29, v82->_operationType);
            _os_log_impl(&dword_26AC94000, oslog, v31, "%s [->%{public}@]: Unknown operation type: %{public}@ (%{public}ld)", v84, 0x2Au);
            MEMORY[0x277D82BD8](v6);
            MEMORY[0x277D82BD8](v7);
            MEMORY[0x277D82BD8](v8);
            objc_storeStrong(&v29, 0);
            objc_storeStrong(&v30, 0);
          }

          objc_storeStrong(&oslog, 0);
          break;
      }
    }

    v83 = 0;
    v78 = 1;
    objc_destroyWeak(&from);
  }

  else
  {
    v25 = [(SUCoreFSM *)v82->_updateFSM diag];
    [v25 trackAnomaly:@"[SUSettingsUpdateOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v25);
    v83 = 8102;
    v78 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v83;
}

void __71__SUSettingsUpdateOperation_action_ReportUpdateOperationOutcome_error___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v10[2] = a1;
  v10[1] = a1;
  v10[0] = objc_loadWeakRetained((a1 + 40));
  v5 = 0;
  if (!v10[0])
  {
    v4 = SUSettingsSharedLogger();
    v9 = [v4 oslog];
    MEMORY[0x277D82BD8](v4);
    v8 = 16;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      log = v9;
      type = v8;
      v3 = NSStringFromSelector(*(a1 + 48));
      v7 = MEMORY[0x277D82BE0](v3);
      __os_log_helper_16_2_2_8_32_8_66(v11, "[SUSettingsUpdateOperation action_ReportUpdateOperationOutcome:error:]_block_invoke", v7);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v11, 0x16u);
      MEMORY[0x277D82BD8](v3);
      objc_storeStrong(&v7, 0);
    }

    objc_storeStrong(&v9, 0);
    v5 = 1;
  }

  if ((v5 & 1) == 0)
  {
    if (*(*(a1 + 32) + 72))
    {
      (*(*(*(a1 + 32) + 72) + 16))();
    }

    [v10[0] invalidateMachine];
  }

  objc_storeStrong(v10, 0);
  *MEMORY[0x277D85DE8];
}

void __71__SUSettingsUpdateOperation_action_ReportUpdateOperationOutcome_error___block_invoke_354(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v14[2] = a1;
  v14[1] = a1;
  v14[0] = objc_loadWeakRetained((a1 + 48));
  v9 = 0;
  if (!v14[0])
  {
    v8 = SUSettingsSharedLogger();
    v13 = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v12 = 16;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      log = v13;
      type = v12;
      v7 = NSStringFromSelector(*(a1 + 56));
      v11 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v15, "[SUSettingsUpdateOperation action_ReportUpdateOperationOutcome:error:]_block_invoke", v11);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v15, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v11, 0);
    }

    objc_storeStrong(&v13, 0);
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    if (*(*(a1 + 32) + 48))
    {
      v2 = *(*(a1 + 32) + 48);
      v1 = [*(a1 + 40) downloadStartedSuccessfully];
      v4 = [*(a1 + 40) currentDownload];
      v3 = [*(a1 + 40) operationError];
      (*(v2 + 16))(v2, v1, v4);
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](v4);
    }

    [v14[0] invalidateMachine];
  }

  objc_storeStrong(v14, 0);
  *MEMORY[0x277D85DE8];
}

void __71__SUSettingsUpdateOperation_action_ReportUpdateOperationOutcome_error___block_invoke_355(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v18[2] = a1;
  v18[1] = a1;
  v18[0] = objc_loadWeakRetained((a1 + 48));
  v11 = 0;
  if (!v18[0])
  {
    v10 = SUSettingsSharedLogger();
    v17 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v16 = 16;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      log = v17;
      type = v16;
      v9 = NSStringFromSelector(*(a1 + 56));
      v15 = MEMORY[0x277D82BE0](v9);
      __os_log_helper_16_2_2_8_32_8_66(v19, "[SUSettingsUpdateOperation action_ReportUpdateOperationOutcome:error:]_block_invoke", v15);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v19, 0x16u);
      MEMORY[0x277D82BD8](v9);
      objc_storeStrong(&v15, 0);
    }

    objc_storeStrong(&v17, 0);
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    if (*(*(a1 + 32) + 56))
    {
      v1 = *(*(a1 + 32) + 56);
      v2 = [*(a1 + 40) downloadStartedSuccessfully];
      v3 = [*(a1 + 40) currentDownload];
      v4 = [*(a1 + 40) updateScheduledSuccessfully];
      v5 = [*(a1 + 40) autoInstallOperation];
      v6 = [*(a1 + 40) operationError];
      v13 = 0;
      if (v6)
      {
        (*(v1 + 16))(v1, v2, v3, v4, v5, v6);
      }

      else
      {
        v14 = [*(a1 + 40) scheduleError];
        v13 = 1;
        (*(v1 + 16))(v1, v2, v3, v4, v5, v14);
      }

      if (v13)
      {
        MEMORY[0x277D82BD8](v14);
      }

      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v3);
    }

    [v18[0] invalidateMachine];
  }

  objc_storeStrong(v18, 0);
  *MEMORY[0x277D85DE8];
}

void __71__SUSettingsUpdateOperation_action_ReportUpdateOperationOutcome_error___block_invoke_356(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v14[2] = a1;
  v14[1] = a1;
  v14[0] = objc_loadWeakRetained((a1 + 48));
  v9 = 0;
  if (!v14[0])
  {
    v8 = SUSettingsSharedLogger();
    v13 = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v12 = 16;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      log = v13;
      type = v12;
      v7 = NSStringFromSelector(*(a1 + 56));
      v11 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v15, "[SUSettingsUpdateOperation action_ReportUpdateOperationOutcome:error:]_block_invoke", v11);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v15, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v11, 0);
    }

    objc_storeStrong(&v13, 0);
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    if (*(*(a1 + 32) + 64))
    {
      v2 = *(*(a1 + 32) + 64);
      v1 = [*(a1 + 40) updateScheduledSuccessfully];
      v4 = [*(a1 + 40) autoInstallOperation];
      v3 = [*(a1 + 40) operationError];
      (*(v2 + 16))(v2, v1, v4);
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](v4);
    }

    [v14[0] invalidateMachine];
  }

  objc_storeStrong(v14, 0);
  *MEMORY[0x277D85DE8];
}

void __71__SUSettingsUpdateOperation_action_ReportUpdateOperationOutcome_error___block_invoke_357(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v13[2] = a1;
  v13[1] = a1;
  v13[0] = objc_loadWeakRetained((a1 + 48));
  v8 = 0;
  if (!v13[0])
  {
    v7 = SUSettingsSharedLogger();
    v12 = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v11 = 16;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      log = v12;
      type = v11;
      v6 = NSStringFromSelector(*(a1 + 56));
      v10 = MEMORY[0x277D82BE0](v6);
      __os_log_helper_16_2_2_8_32_8_66(v14, "[SUSettingsUpdateOperation action_ReportUpdateOperationOutcome:error:]_block_invoke", v10);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v14, 0x16u);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    if (*(*(a1 + 32) + 80))
    {
      v2 = *(*(a1 + 32) + 80);
      v1 = [*(a1 + 40) installInitiatedSuccessfully];
      v3 = [*(a1 + 40) operationError];
      (*(v2 + 16))(v2, v1);
      MEMORY[0x277D82BD8](v3);
    }

    [v13[0] invalidateMachine];
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
  v11 = [(SUSettingsUpdateOperation *)v18 updateFSM];
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
  v14 = [(SUSettingsUpdateOperation *)v18 updateFSM];
  v13 = [(SUCoreFSM *)v14 diag];
  v6 = [v15 code];
  [v13 trackAnomaly:@"[SUSettingsUpdateOperation]" forReason:@"Scan FSM has reported an anomaly" withResult:v6 withError:v15];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (SUSettingsUpdateOperation)initWithDescriptor:(id)a3 usingSUManagerClient:(id)a4 delegate:(id)a5
{
  v57 = *MEMORY[0x277D85DE8];
  v51 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v49 = 0;
  objc_storeStrong(&v49, a4);
  v48 = 0;
  objc_storeStrong(&v48, a5);
  v5 = v51;
  v51 = 0;
  v47.receiver = v5;
  v47.super_class = SUSettingsUpdateOperation;
  v39 = [(SUSettingsUpdateOperation *)&v47 init];
  v51 = v39;
  objc_storeStrong(&v51, v39);
  if (!v39)
  {
    goto LABEL_12;
  }

  v6 = [objc_alloc(MEMORY[0x277D64460]) initWithCategory:@"SUSettingsScanOperation"];
  v7 = *(v51 + 5);
  *(v51 + 5) = v6;
  MEMORY[0x277D82BD8](v7);
  if (!*(v51 + 5))
  {
    v36 = SUSettingsSharedLogger();
    v46 = [v36 oslog];
    MEMORY[0x277D82BD8](v36);
    v45 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_64(v56, "[SUSettingsUpdateOperation initWithDescriptor:usingSUManagerClient:delegate:]", @"SUSettingsScanOperation");
      _os_log_impl(&dword_26AC94000, v46, v45, "%s: Could not create a log category for %@", v56, 0x16u);
    }

    objc_storeStrong(&v46, 0);
    v52 = 0;
    v44 = 1;
    goto LABEL_13;
  }

  v54 = MGCopyAnswer();
  v29 = v54;
  v8 = v54;
  v43 = v29;
  v53 = MGCopyAnswer();
  v30 = v53;
  v9 = v53;
  v42 = v30;
  v31 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = objc_opt_class();
  v34 = NSStringFromClass(v10);
  v33 = [location[0] productVersion];
  v32 = [location[0] productBuildVersion];
  v41 = [v31 initWithFormat:@"%@:[(%@, %@)->(%@, %@)]", v34, v43, v42, v33, v32];
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  objc_storeStrong(v51 + 15, v49);
  objc_storeStrong(v51 + 2, v48);
  v11 = [objc_opt_class() _generateStateTable];
  v12 = *(v51 + 16);
  *(v51 + 16) = v11;
  MEMORY[0x277D82BD8](v12);
  *(v51 + 13) = 0;
  v35 = objc_alloc(MEMORY[0x277D64458]);
  v13 = [v35 initMachine:v41 withTable:*(v51 + 16) startingIn:@"Idle" usingDelegate:v51 registeringAllInfoClass:objc_opt_class()];
  v14 = *(v51 + 14);
  *(v51 + 14) = v13;
  MEMORY[0x277D82BD8](v14);
  if (*(v51 + 14))
  {
    v22 = MEMORY[0x277CCACA8];
    v24 = [v51 baseDomain];
    v23 = [v22 stringWithFormat:@"%@.requests-queue", v24];
    v15 = v23;
    v16 = dispatch_queue_create([v23 UTF8String], 0);
    v17 = *(v51 + 11);
    *(v51 + 11) = v16;
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    v25 = MEMORY[0x277CCACA8];
    v27 = [v51 baseDomain];
    v26 = [v25 stringWithFormat:@"%@.work-queue", v27];
    v18 = v26;
    v19 = dispatch_queue_create([v26 UTF8String], 0);
    v20 = *(v51 + 12);
    *(v51 + 12) = v19;
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    v44 = 0;
  }

  else
  {
    v28 = SUSettingsSharedLogger();
    v40 = [v28 oslog];
    MEMORY[0x277D82BD8](v28);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v55, "[SUSettingsUpdateOperation initWithDescriptor:usingSUManagerClient:delegate:]");
      _os_log_impl(&dword_26AC94000, v40, OS_LOG_TYPE_DEFAULT, "%s: Failed creating the update FSM", v55, 0xCu);
    }

    objc_storeStrong(&v40, 0);
    v52 = 0;
    v44 = 1;
  }

  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  if (!v44)
  {
LABEL_12:
    v52 = MEMORY[0x277D82BE0](v51);
    v44 = 1;
  }

LABEL_13:
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v51, 0);
  *MEMORY[0x277D85DE8];
  return v52;
}

- (void)downloadUpdate:(id)a3 withOptions:(id)a4 completionHandler:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = 0;
  objc_storeStrong(&v16, a5);
  v10 = [(SUSettingsUpdateOperation *)v19 log];
  v15 = [(SUCoreLog *)v10 oslog];
  MEMORY[0x277D82BD8](v10);
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [location[0] humanReadableUpdateName];
    v13 = MEMORY[0x277D82BE0](v9);
    __os_log_helper_16_2_2_8_32_8_66(v20, "[SUSettingsUpdateOperation downloadUpdate:withOptions:completionHandler:]", v13);
    _os_log_impl(&dword_26AC94000, v15, v14, "%s: Initiating an update operation (Download Only) to target: %{public}@", v20, 0x16u);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v15, 0);
  v8 = MEMORY[0x277D82BE0](v19);
  objc_sync_enter(v8);
  if ([(SUSettingsUpdateOperation *)v19 isActive])
  {
    v7 = [(SUCoreFSM *)v19->_updateFSM diag];
    [v7 trackAnomaly:@"[SUSettingsUpdateOperation]" forReason:@"This update machine is currently process another scan request. Queuing requests is not currently supported." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v7);
  }

  else
  {
    v6 = MEMORY[0x26D66A460](v16);
    downloadUpdateCompletion = v19->_downloadUpdateCompletion;
    v19->_downloadUpdateCompletion = v6;
    MEMORY[0x277D82BD8](downloadUpdateCompletion);
    if (![(SUSettingsUpdateOperation *)v19 beginOperation:1 ofUnattendedInstall:0 descriptor:location[0] options:v17])
    {
      (*(v16 + 2))(v16, 0, 0);
    }
  }

  objc_sync_exit(v8);
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)downloadAndInstall:(id)a3 withOptions:(id)a4 completionHandler:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = 0;
  objc_storeStrong(&v16, a5);
  v10 = [(SUSettingsUpdateOperation *)v19 log];
  v15 = [(SUCoreLog *)v10 oslog];
  MEMORY[0x277D82BD8](v10);
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [location[0] humanReadableUpdateName];
    v13 = MEMORY[0x277D82BE0](v9);
    __os_log_helper_16_2_2_8_32_8_66(v20, "[SUSettingsUpdateOperation downloadAndInstall:withOptions:completionHandler:]", v13);
    _os_log_impl(&dword_26AC94000, v15, v14, "%s: Initiating an update operation (Download and Install) to target: %{public}@", v20, 0x16u);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v15, 0);
  v8 = MEMORY[0x277D82BE0](v19);
  objc_sync_enter(v8);
  if ([(SUSettingsUpdateOperation *)v19 isActive])
  {
    v7 = [(SUCoreFSM *)v19->_updateFSM diag];
    [v7 trackAnomaly:@"[SUSettingsUpdateOperation]" forReason:@"This update machine is currently process another scan request. Queuing requests is not currently supported." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v7);
  }

  else
  {
    v6 = MEMORY[0x26D66A460](v16);
    downloadUpdateCompletion = v19->_downloadUpdateCompletion;
    v19->_downloadUpdateCompletion = v6;
    MEMORY[0x277D82BD8](downloadUpdateCompletion);
    if (![(SUSettingsUpdateOperation *)v19 beginOperation:2 ofUnattendedInstall:1 descriptor:location[0] options:v17])
    {
      (*(v16 + 2))(v16, 0, 0);
    }
  }

  objc_sync_exit(v8);
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)downloadAndScheduleUpdate:(id)a3 forInstallationTonightWithOptions:(id)a4 completionHandler:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = 0;
  objc_storeStrong(&v16, a5);
  v10 = [(SUSettingsUpdateOperation *)v19 log];
  v15 = [(SUCoreLog *)v10 oslog];
  MEMORY[0x277D82BD8](v10);
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [location[0] humanReadableUpdateName];
    v13 = MEMORY[0x277D82BE0](v9);
    __os_log_helper_16_2_2_8_32_8_66(v20, "[SUSettingsUpdateOperation downloadAndScheduleUpdate:forInstallationTonightWithOptions:completionHandler:]", v13);
    _os_log_impl(&dword_26AC94000, v15, v14, "%s: Initiating an update operation (Update Tonight) to target: %{public}@", v20, 0x16u);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v15, 0);
  v8 = MEMORY[0x277D82BE0](v19);
  objc_sync_enter(v8);
  if ([(SUSettingsUpdateOperation *)v19 isActive])
  {
    v7 = [(SUCoreFSM *)v19->_updateFSM diag];
    [v7 trackAnomaly:@"[SUSettingsUpdateOperation]" forReason:@"This update machine is currently process another scan request. Queuing requests is not currently supported." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v7);
  }

  else
  {
    v6 = MEMORY[0x26D66A460](v16);
    downloadAndScheduleCompletion = v19->_downloadAndScheduleCompletion;
    v19->_downloadAndScheduleCompletion = v6;
    MEMORY[0x277D82BD8](downloadAndScheduleCompletion);
    if (![(SUSettingsUpdateOperation *)v19 beginOperation:3 ofUnattendedInstall:1 descriptor:location[0] options:v17])
    {
      (*(v16 + 2))(v16, 0, 0, 0, 0);
    }
  }

  objc_sync_exit(v8);
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)installUpdate:(id)a3 withOptions:(id)a4 completionHandler:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v12 = [(SUSettingsUpdateOperation *)v21 log];
  v17 = [(SUCoreLog *)v12 oslog];
  MEMORY[0x277D82BD8](v12);
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [location[0] humanReadableUpdateName];
    v15 = MEMORY[0x277D82BE0](v11);
    __os_log_helper_16_2_2_8_32_8_66(v22, "[SUSettingsUpdateOperation installUpdate:withOptions:completionHandler:]", v15);
    _os_log_impl(&dword_26AC94000, v17, v16, "%s: Initiating an install operation (Install Now) to target: %{public}@", v22, 0x16u);
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(&v17, 0);
  v10 = MEMORY[0x277D82BE0](v21);
  objc_sync_enter(v10);
  if ([(SUSettingsUpdateOperation *)v21 isActive])
  {
    v9 = [(SUCoreFSM *)v21->_updateFSM diag];
    [v9 trackAnomaly:@"[SUSettingsUpdateOperation]" forReason:@"This update machine is currently process another scan request. Queuing requests is not currently supported." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v9);
  }

  else
  {
    v8 = MEMORY[0x26D66A460](v18);
    installCompletion = v21->_installCompletion;
    v21->_installCompletion = v8;
    MEMORY[0x277D82BD8](installCompletion);
    if (![(SUSettingsUpdateOperation *)v21 beginOperation:5 ofUnattendedInstall:1 descriptor:location[0] options:v19])
    {
      v7 = v18;
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:8102 userInfo:0];
      v7[2](v7, 0);
      MEMORY[0x277D82BD8](v6);
    }
  }

  objc_sync_exit(v10);
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)promoteDownloadToUserInitiated:(id)a3 completionHandler:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v30 = self;
  v29 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v27 = 0;
  objc_storeStrong(&v27, a4);
  if (location)
  {
    v9 = [(SUSettingsUpdateOperation *)v30 log];
    v23 = [(SUCoreLog *)v9 oslog];
    MEMORY[0x277D82BD8](v9);
    v22 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [location descriptor];
      v7 = [v8 humanReadableUpdateName];
      v21 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v31, "[SUSettingsUpdateOperation promoteDownloadToUserInitiated:completionHandler:]", v21);
      _os_log_impl(&dword_26AC94000, v23, v22, "%s: Initiating an update operation (Install once Downloaded) to target: %{public}@", v31, 0x16u);
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v21, 0);
    }

    objc_storeStrong(&v23, 0);
    v6 = [location downloadOptions];
    [v6 setAutoDownload:0];
    MEMORY[0x277D82BD8](v6);
    objc_initWeak(&from, v30);
    suClient = v30->_suClient;
    v4 = [location downloadOptions];
    v12 = MEMORY[0x277D85DD0];
    v13 = -1073741824;
    v14 = 0;
    v15 = __78__SUSettingsUpdateOperation_promoteDownloadToUserInitiated_completionHandler___block_invoke;
    v16 = &unk_279CBC790;
    objc_copyWeak(v19, &from);
    v19[1] = v29;
    v18 = MEMORY[0x277D82BE0](v27);
    v17 = MEMORY[0x277D82BE0](location);
    [(SUManagerClient *)suClient updateDownloadOptions:v4 withResult:&v12];
    MEMORY[0x277D82BD8](v4);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
    objc_destroyWeak(v19);
    objc_destroyWeak(&from);
    v24 = 0;
  }

  else
  {
    v10 = [(SUSettingsUpdateOperation *)v30 log];
    v26 = [(SUCoreLog *)v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v25 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v32, "[SUSettingsUpdateOperation promoteDownloadToUserInitiated:completionHandler:]");
      _os_log_error_impl(&dword_26AC94000, v26, v25, "%s: Can not promote the initial status of a nil targeted update.", v32, 0xCu);
    }

    objc_storeStrong(&v26, 0);
    v24 = 1;
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __78__SUSettingsUpdateOperation_promoteDownloadToUserInitiated_completionHandler___block_invoke(uint64_t a1, char a2, id obj)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = a1;
  v15 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v13[1] = a1;
  v13[0] = objc_loadWeakRetained((a1 + 48));
  v8 = 0;
  if (!v13[0])
  {
    v7 = SUSettingsSharedLogger();
    v12 = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v11 = 16;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      log = v12;
      type = v11;
      v6 = NSStringFromSelector(*(a1 + 56));
      v10 = MEMORY[0x277D82BE0](v6);
      __os_log_helper_16_2_2_8_32_8_66(v17, "[SUSettingsUpdateOperation promoteDownloadToUserInitiated:completionHandler:]_block_invoke", v10);
      _os_log_error_impl(&dword_26AC94000, log, type, "%s: Self is nil in %{public}@. Stopping.", v17, 0x16u);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    v3 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(v13, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)scheduleUpdate:(id)a3 forInstallationTonightWithOptions:(id)a4 completionHandler:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = 0;
  objc_storeStrong(&v16, a5);
  v10 = [(SUSettingsUpdateOperation *)v19 log];
  v15 = [(SUCoreLog *)v10 oslog];
  MEMORY[0x277D82BD8](v10);
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [location[0] humanReadableUpdateName];
    v13 = MEMORY[0x277D82BE0](v9);
    __os_log_helper_16_2_2_8_32_8_66(v20, "[SUSettingsUpdateOperation scheduleUpdate:forInstallationTonightWithOptions:completionHandler:]", v13);
    _os_log_impl(&dword_26AC94000, v15, v14, "%s: Initiating a schedule operation (Install Tonight) of target: %{public}@", v20, 0x16u);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v15, 0);
  v8 = MEMORY[0x277D82BE0](v19);
  objc_sync_enter(v8);
  if ([(SUSettingsUpdateOperation *)v19 isActive])
  {
    v7 = [(SUCoreFSM *)v19->_updateFSM diag];
    [v7 trackAnomaly:@"[SUSettingsUpdateOperation]" forReason:@"This update machine is currently process another scan request. Queuing requests is not currently supported." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v7);
  }

  else
  {
    v6 = MEMORY[0x26D66A460](v16);
    scheduleCompletion = v19->_scheduleCompletion;
    v19->_scheduleCompletion = v6;
    MEMORY[0x277D82BD8](scheduleCompletion);
    if (![(SUSettingsUpdateOperation *)v19 beginOperation:4 ofUnattendedInstall:1 descriptor:location[0] options:v17])
    {
      (*(v16 + 2))(v16, 0, 0);
    }
  }

  objc_sync_exit(v8);
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)unscheduleAutomaticInstallation:(id)a3 completionHandler:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v4 = [(SUSettingsUpdateOperation *)v9 log];
  v6 = [(SUCoreLog *)v4 oslog];
  MEMORY[0x277D82BD8](v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_32_8_66(v10, "[SUSettingsUpdateOperation unscheduleAutomaticInstallation:completionHandler:]", location[0]);
    _os_log_impl(&dword_26AC94000, v6, OS_LOG_TYPE_DEFAULT, "%s: Initiating an update operation (Cancel Install Tonight) to operation: %{public}@", v10, 0x16u);
  }

  objc_storeStrong(&v6, 0);
  [location[0] cancel];
  (*(v7 + 2))(v7, 1);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)cancel:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [(SUSettingsUpdateOperation *)v10 log];
  v8 = [(SUCoreLog *)v7 oslog];
  MEMORY[0x277D82BD8](v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_32(v11, "[SUSettingsUpdateOperation cancel:]");
    _os_log_impl(&dword_26AC94000, v8, OS_LOG_TYPE_DEFAULT, "%s: Requesting to cancel the current update operation", v11, 0xCu);
  }

  objc_storeStrong(&v8, 0);
  obj = MEMORY[0x277D82BE0](v10);
  objc_sync_enter(obj);
  if ([(SUSettingsUpdateOperation *)v10 isActive])
  {
    if (![(SUSettingsUpdateOperation *)v10 canceled])
    {
      [(SUSettingsUpdateOperation *)v10 setCanceled:1];
      [(SUSettingsUpdateOperation *)v10 setCancelHandler:location[0]];
      updateFSM = v10->_updateFSM;
      v4 = objc_alloc_init(SUSettingsUpdateParam);
      [(SUCoreFSM *)updateFSM postEvent:@"CancelUpdate" withInfo:v4];
      MEMORY[0x277D82BD8](v4);
    }
  }

  else
  {
    v5 = [(SUCoreFSM *)v10->_updateFSM diag];
    [v5 trackAnomaly:@"[SUSettingsUpdateOperation]" forReason:@"There is no active search to cancel" withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v5);
  }

  objc_sync_exit(obj);
  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)invalidateMachine
{
  self->_operationType = 0;
  scheduleCompletion = self->_scheduleCompletion;
  self->_scheduleCompletion = 0;
  MEMORY[0x277D82BD8](scheduleCompletion);
  downloadUpdateCompletion = self->_downloadUpdateCompletion;
  self->_downloadUpdateCompletion = 0;
  MEMORY[0x277D82BD8](downloadUpdateCompletion);
  downloadAndScheduleCompletion = self->_downloadAndScheduleCompletion;
  self->_downloadAndScheduleCompletion = 0;
  MEMORY[0x277D82BD8](downloadAndScheduleCompletion);
  installCompletion = self->_installCompletion;
  self->_installCompletion = 0;
  MEMORY[0x277D82BD8](installCompletion);
  cancelHandler = self->_cancelHandler;
  self->_cancelHandler = 0;
  MEMORY[0x277D82BD8](cancelHandler);
  self->_canceled = 0;
}

- (BOOL)beginOperation:(unint64_t)a3 ofUnattendedInstall:(BOOL)a4 descriptor:(id)a5 options:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v24 = self;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  v19 = 0;
  objc_storeStrong(&v19, a6);
  if (v24->_delegate)
  {
    v24->_operationType = v22;
    v12 = [MEMORY[0x277D643F8] sharedCore];
    v6 = [v12 selectDelegateCallbackQueue:v24->_delegateCallbackQueue];
    delegateCallbackQueue = v24->_delegateCallbackQueue;
    v24->_delegateCallbackQueue = v6;
    MEMORY[0x277D82BD8](delegateCallbackQueue);
    MEMORY[0x277D82BD8](v12);
    v13 = [MEMORY[0x277D643F8] sharedCore];
    v8 = [v13 selectCompletionQueue:v24->_completionQueue];
    completionQueue = v24->_completionQueue;
    v24->_completionQueue = v8;
    MEMORY[0x277D82BD8](completionQueue);
    MEMORY[0x277D82BD8](v13);
    [(SUCoreFSM *)v24->_updateFSM activateMachine];
    updateFSM = v24->_updateFSM;
    v10 = [SUSettingsUpdateParam alloc];
    v15 = [(SUSettingsUpdateParam *)v10 initWithDescriptor:location andUpdateOptions:v19 forUnattendedInstall:v21];
    [(SUCoreFSM *)updateFSM postEvent:@"BeginDownloadUpdate" withInfo:?];
    MEMORY[0x277D82BD8](v15);
    v25 = 1;
  }

  else
  {
    v16 = [(SUSettingsUpdateOperation *)v24 log];
    v18 = [(SUCoreLog *)v16 oslog];
    MEMORY[0x277D82BD8](v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_0(v26, "[SUSettingsUpdateOperation beginOperation:ofUnattendedInstall:descriptor:options:]", v22);
      _os_log_error_impl(&dword_26AC94000, v18, OS_LOG_TYPE_ERROR, "%s: Can not perform operation %ld: The class delegate must not be nil.", v26, 0x16u);
    }

    objc_storeStrong(&v18, 0);
    v25 = 0;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v25 & 1;
}

- (BOOL)deviceSupportsCellularCapability
{
  v5[2] = self;
  v5[1] = a2;
  v5[0] = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:0];
  if (v5[0])
  {
    location = [v5[0] getInternetDataStatusSync:0];
    v3 = 0;
    if (location)
    {
      v3 = [location cellularDataPossible];
    }

    v6 = v3 & 1;
    objc_storeStrong(&location, 0);
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(v5, 0);
  return v6 & 1;
}

- (id)baseDomain
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = [MEMORY[0x277D643F8] sharedCore];
  v4 = [v5 commonDomain];
  v6 = [v3 initWithFormat:@"%@.susettings.fsm.update", v4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (BOOL)isCancelableState:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] isEqualToString:@"Idle"])
  {
    v5 = 1;
  }

  else if ([location[0] isEqualToString:@"PurgingSpace"])
  {
    v5 = 1;
  }

  else
  {
    v5 = ([location[0] isEqualToString:@"AquiringKeybag"] & 1) != 0 || (objc_msgSend(location[0], "isEqualToString:", @"PresentingTermsConditions") & 1) != 0 || (objc_msgSend(location[0], "isEqualToString:", @"ResolvingUpdateOperation") & 1) != 0;
  }

  objc_storeStrong(location, 0);
  return v5;
}

@end