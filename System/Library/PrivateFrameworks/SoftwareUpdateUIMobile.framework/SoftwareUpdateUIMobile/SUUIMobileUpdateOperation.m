@interface SUUIMobileUpdateOperation
+ (id)_generateStateTable;
- (BOOL)beginOperation:(int64_t)a3 ofUnattendedPurge:(BOOL)a4 andUnattendedInstall:(BOOL)a5 descriptor:(id)a6 agreementStatusRegistry:(id)a7;
- (BOOL)deviceSupportsCellularCapability;
- (BOOL)hasAcceptedTermsAndConditionsOfDescriptorSync:(id)a3;
- (BOOL)isActive;
- (BOOL)isCancelableState:(id)a3;
- (BOOL)shouldConsiderErrorAsSuccessfulCase:(id)a3;
- (NSString)identifier;
- (OS_dispatch_queue)completionQueue;
- (OS_dispatch_queue)delegateCallbackQueue;
- (SUUIMobileUpdateOperation)initWithIdentifier:(id)a3 options:(id)a4 usingSUManagerClient:(id)a5 delegateCallbackQueue:(id)a6 withCompletionQueue:(id)a7;
- (SUUIUpdateOperationDelegate)delegate;
- (id)baseDomain;
- (int64_t)actionUnknownAction:(id)a3 error:(id *)a4;
- (int64_t)fsmAction_AquireKeybag:(id)a3 error:(id *)a4;
- (int64_t)fsmAction_InitiateUpdateDownload:(id)a3 error:(id *)a4;
- (int64_t)fsmAction_InitiateUpdateInstallation:(id)a3 error:(id *)a4;
- (int64_t)fsmAction_PrepareUpdateProcess:(id)a3 error:(id *)a4;
- (int64_t)fsmAction_PresentDownloadConstraints:(id)a3 error:(id *)a4;
- (int64_t)fsmAction_PresentTermsConditions:(id)a3 error:(id *)a4;
- (int64_t)fsmAction_PurgeSpace:(id)a3 error:(id *)a4;
- (int64_t)fsmAction_ReportUpdateOperationOutcome:(id)a3 error:(id *)a4;
- (int64_t)fsmAction_ResolveUpdateOperation:(id)a3 error:(id *)a4;
- (int64_t)fsmAction_ScheduleUpdate:(id)a3 error:(id *)a4;
- (int64_t)performAction:(id)a3 onEvent:(id)a4 inState:(id)a5 withInfo:(id)a6 nextState:(id)a7 error:(id *)a8;
- (void)cancel:(id)a3;
- (void)downloadAndInstallUpdate:(id)a3 withContext:(id)a4 delegate:(id)a5 completionHandler:(id)a6;
- (void)downloadAndScheduleUpdate:(id)a3 forInstallationTonightWithContext:(id)a4 delegate:(id)a5 completionHandler:(id)a6;
- (void)downloadUpdate:(id)a3 withContext:(id)a4 delegate:(id)a5 completionHandler:(id)a6;
- (void)hasAcceptedTermsAndConditionsOfDescriptor:(id)a3 completionHandler:(id)a4;
- (void)installUpdate:(id)a3 withContext:(id)a4 delegate:(id)a5 completionHandler:(id)a6;
- (void)invalidateMachine;
- (void)promoteDownloadToUserInitiated:(id)a3 withContext:(id)a4 delegate:(id)a5 completionHandler:(id)a6;
- (void)purgeDownload:(id)a3 withContext:(id)a4 delegate:(id)a5 completionHandler:(id)a6;
- (void)respondToTermsAndConditionsOfDescriptor:(id)a3 withResponse:(int64_t)a4 completionHandler:(id)a5;
- (void)respondToTermsAndConditionsOfDescriptorSync:(id)a3 withResponse:(int64_t)a4;
- (void)scheduleUpdate:(id)a3 forInstallationTonightWithContext:(id)a4 delegate:(id)a5 completionHandler:(id)a6;
- (void)setCompletionQueue:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDelegateCallbackQueue:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)unscheduleUpdate:(id)a3 forInstallationTonightWithContext:(id)a4 delegate:(id)a5 completionHandler:(id)a6;
@end

@implementation SUUIMobileUpdateOperation

+ (id)_generateStateTable
{
  v180[10] = *MEMORY[0x277D85DE8];
  v76[2] = a1;
  v76[1] = a2;
  v19 = MEMORY[0x277D64E88];
  v179[0] = *MEMORY[0x277D64E88];
  v177[0] = *MEMORY[0x277D64D00];
  v20 = MEMORY[0x277D644B8];
  v175 = *MEMORY[0x277D644B8];
  v176 = *MEMORY[0x277D64C98];
  v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v176 forKeys:&v175 count:?];
  v178[0] = v73;
  v177[1] = *MEMORY[0x277D64D98];
  v22 = MEMORY[0x277D64800];
  v173[0] = *MEMORY[0x277D64800];
  v4 = MEMORY[0x277D64EB8];
  v174[0] = *MEMORY[0x277D64EB8];
  v173[1] = *v20;
  v174[1] = *MEMORY[0x277D64CB0];
  v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v174 forKeys:v173 count:?];
  v178[1] = v72;
  v177[2] = *MEMORY[0x277D64D90];
  v171 = *v20;
  v21 = MEMORY[0x277D64CE0];
  v172 = *MEMORY[0x277D64CE0];
  v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v172 forKeys:&v171 count:1];
  v178[2] = v71;
  v18 = MEMORY[0x277D64D10];
  v177[3] = *MEMORY[0x277D64D10];
  v169[0] = *v22;
  v170[0] = *v19;
  v169[1] = *v20;
  v170[1] = *v21;
  v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v170 forKeys:v169 count:2];
  v178[3] = v70;
  v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v178 forKeys:v177 count:?];
  v180[0] = v69;
  v179[1] = *v4;
  v167[0] = *MEMORY[0x277D64DA8];
  v165[0] = *v22;
  v6 = MEMORY[0x277D64E78];
  v166[0] = *MEMORY[0x277D64E78];
  v165[1] = *v20;
  v5 = MEMORY[0x277D64C70];
  v166[1] = *MEMORY[0x277D64C70];
  v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v166 forKeys:v165 count:2];
  v168[0] = v68;
  v167[1] = *MEMORY[0x277D64D78];
  v163[0] = *v22;
  v164[0] = *v6;
  v163[1] = *v20;
  v164[1] = *v5;
  v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v164 forKeys:v163 count:2];
  v168[1] = v67;
  v167[2] = *MEMORY[0x277D64DB0];
  v161[0] = *v22;
  v162[0] = *v19;
  v161[1] = *v20;
  v162[1] = *v21;
  v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v162 forKeys:v161 count:2];
  v168[2] = v66;
  v167[3] = *MEMORY[0x277D64DA0];
  v159[0] = *v22;
  v160[0] = *v19;
  v159[1] = *v20;
  v160[1] = *v21;
  v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v160 forKeys:v159 count:2];
  v168[3] = v65;
  v167[4] = *v18;
  v157[0] = *v22;
  v158[0] = *v19;
  v157[1] = *v20;
  v158[1] = *v21;
  v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v158 forKeys:v157 count:2];
  v168[4] = v64;
  v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v168 forKeys:v167 count:?];
  v180[1] = v63;
  v179[2] = *v6;
  v155[0] = *MEMORY[0x277D64D68];
  v153[0] = *v22;
  v8 = MEMORY[0x277D64EB0];
  v154[0] = *MEMORY[0x277D64EB0];
  v153[1] = *v20;
  v7 = MEMORY[0x277D64CA8];
  v154[1] = *MEMORY[0x277D64CA8];
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v154 forKeys:v153 count:2];
  v156[0] = v62;
  v155[1] = *MEMORY[0x277D64D58];
  v151[0] = *v22;
  v152[0] = *v8;
  v151[1] = *v20;
  v152[1] = *v7;
  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v152 forKeys:v151 count:2];
  v156[1] = v61;
  v155[2] = *MEMORY[0x277D64D60];
  v149[0] = *v22;
  v150[0] = *v19;
  v149[1] = *v20;
  v150[1] = *v21;
  v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v150 forKeys:v149 count:2];
  v156[2] = v60;
  v155[3] = *MEMORY[0x277D64D70];
  v147[0] = *v22;
  v148[0] = *v19;
  v147[1] = *v20;
  v148[1] = *v21;
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v148 forKeys:v147 count:2];
  v156[3] = v59;
  v155[4] = *v18;
  v145[0] = *v22;
  v146[0] = *v19;
  v145[1] = *v20;
  v146[1] = *v21;
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v146 forKeys:v145 count:2];
  v156[4] = v58;
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v156 forKeys:v155 count:5];
  v180[2] = v57;
  v179[3] = *v8;
  v143[0] = *MEMORY[0x277D64DF0];
  v141[0] = *v22;
  v10 = MEMORY[0x277D64ED0];
  v142[0] = *MEMORY[0x277D64ED0];
  v141[1] = *v20;
  v9 = MEMORY[0x277D64CE8];
  v142[1] = *MEMORY[0x277D64CE8];
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v142 forKeys:v141 count:2];
  v144[0] = v56;
  v143[1] = *MEMORY[0x277D64E00];
  v139[0] = *v22;
  v140[0] = *v10;
  v139[1] = *v20;
  v140[1] = *v9;
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v140 forKeys:v139 count:2];
  v144[1] = v55;
  v143[2] = *MEMORY[0x277D64DF8];
  v137[0] = *v22;
  v138[0] = *v10;
  v137[1] = *v20;
  v138[1] = *v9;
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v138 forKeys:v137 count:2];
  v144[2] = v54;
  v143[3] = *MEMORY[0x277D64DE8];
  v135[0] = *v22;
  v136[0] = *v10;
  v135[1] = *v20;
  v136[1] = *v9;
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v136 forKeys:v135 count:2];
  v144[3] = v53;
  v143[4] = *MEMORY[0x277D64E08];
  v133[0] = *v22;
  v134[0] = *v19;
  v133[1] = *v20;
  v134[1] = *v21;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v134 forKeys:v133 count:2];
  v144[4] = v52;
  v143[5] = *v18;
  v131[0] = *v22;
  v132[0] = *v19;
  v131[1] = *v20;
  v132[1] = *v21;
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v132 forKeys:v131 count:2];
  v144[5] = v51;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v144 forKeys:v143 count:?];
  v180[3] = v50;
  v179[4] = *v10;
  v129[0] = *MEMORY[0x277D64E38];
  v127[0] = *v22;
  v12 = MEMORY[0x277D64EA8];
  v128[0] = *MEMORY[0x277D64EA8];
  v127[1] = *v20;
  v11 = MEMORY[0x277D64CA0];
  v128[1] = *MEMORY[0x277D64CA0];
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v128 forKeys:v127 count:2];
  v130[0] = v49;
  v129[1] = *MEMORY[0x277D64E40];
  v125[0] = *v22;
  v126[0] = *v12;
  v125[1] = *v20;
  v126[1] = *v11;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v126 forKeys:v125 count:2];
  v130[1] = v48;
  v129[2] = *MEMORY[0x277D64E48];
  v123[0] = *v22;
  v124[0] = *v12;
  v123[1] = *v20;
  v124[1] = *v11;
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:v123 count:2];
  v130[2] = v47;
  v129[3] = *MEMORY[0x277D64E58];
  v121[0] = *v22;
  v17 = MEMORY[0x277D64ED8];
  v122[0] = *MEMORY[0x277D64ED8];
  v121[1] = *v20;
  v15 = MEMORY[0x277D64CF0];
  v122[1] = *MEMORY[0x277D64CF0];
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v122 forKeys:v121 count:2];
  v130[3] = v46;
  v129[4] = *MEMORY[0x277D64E50];
  v119[0] = *v22;
  v16 = MEMORY[0x277D64E98];
  v120[0] = *MEMORY[0x277D64E98];
  v119[1] = *v20;
  v120[1] = *MEMORY[0x277D64C88];
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:2];
  v130[4] = v45;
  v129[5] = *v18;
  v117[0] = *v22;
  v118[0] = *v19;
  v117[1] = *v20;
  v118[1] = *v21;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v117 count:2];
  v130[5] = v44;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v130 forKeys:v129 count:6];
  v180[4] = v43;
  v179[5] = *v12;
  v115[0] = *MEMORY[0x277D64D38];
  v113[0] = *v22;
  v14 = MEMORY[0x277D64E90];
  v114[0] = *MEMORY[0x277D64E90];
  v113[1] = *v20;
  v13 = MEMORY[0x277D64C80];
  v114[1] = *MEMORY[0x277D64C80];
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:v113 count:2];
  v116[0] = v42;
  v115[1] = *MEMORY[0x277D64D30];
  v111[0] = *v22;
  v112[0] = *v14;
  v111[1] = *v20;
  v112[1] = *v13;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:2];
  v116[1] = v41;
  v115[2] = *MEMORY[0x277D64D40];
  v109[0] = *v22;
  v110[0] = *v19;
  v109[1] = *v20;
  v110[1] = *v21;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v109 count:2];
  v116[2] = v40;
  v115[3] = *v18;
  v107[0] = *v22;
  v108[0] = *v19;
  v107[1] = *v20;
  v108[1] = *v21;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:2];
  v116[3] = v39;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:4];
  v180[5] = v38;
  v179[6] = *v14;
  v105[0] = *MEMORY[0x277D64E20];
  v103[0] = *v22;
  v104[0] = *v19;
  v103[1] = *v20;
  v104[1] = *v21;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:2];
  v106[0] = v37;
  v105[1] = *MEMORY[0x277D64E18];
  v101[0] = *v22;
  v102[0] = *v17;
  v101[1] = *v20;
  v102[1] = *v15;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:2];
  v106[1] = v36;
  v105[2] = *MEMORY[0x277D64E10];
  v99[0] = *v22;
  v100[0] = *v19;
  v99[1] = *v20;
  v100[1] = *v21;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:2];
  v106[2] = v35;
  v105[3] = *v18;
  v97[0] = *v22;
  v98[0] = *v19;
  v97[1] = *v20;
  v98[1] = *v21;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:2];
  v106[3] = v34;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:4];
  v180[6] = v33;
  v179[7] = *v16;
  v95[0] = *MEMORY[0x277D64E30];
  v93[0] = *v22;
  v94[0] = *v19;
  v93[1] = *v20;
  v94[1] = *v21;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:2];
  v96[0] = v32;
  v95[1] = *MEMORY[0x277D64E28];
  v91[0] = *v22;
  v92[0] = *v19;
  v91[1] = *v20;
  v92[1] = *v21;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:2];
  v96[1] = v31;
  v95[2] = *v18;
  v89[0] = *v22;
  v90[0] = *v19;
  v89[1] = *v20;
  v90[1] = *v21;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:2];
  v96[2] = v30;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:?];
  v180[7] = v29;
  v179[8] = *v17;
  v87[0] = *MEMORY[0x277D64E68];
  v85[0] = *v22;
  v86[0] = *v19;
  v85[1] = *v20;
  v86[1] = *v21;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:2];
  v88[0] = v28;
  v87[1] = *MEMORY[0x277D64E60];
  v83[0] = *v22;
  v84[0] = *v19;
  v83[1] = *v20;
  v84[1] = *v21;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:2];
  v88[1] = v27;
  v87[2] = *v18;
  v81[0] = *v22;
  v82[0] = *v19;
  v81[1] = *v20;
  v82[1] = *v21;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
  v88[2] = v26;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:3];
  v180[8] = v25;
  v179[9] = *MEMORY[0x277D647E8];
  v79 = *MEMORY[0x277D647E0];
  v77 = *v22;
  v78 = *MEMORY[0x277D647F0];
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
  v80 = v24;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
  v180[9] = v23;
  v76[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v180 forKeys:v179 count:10];
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
  MEMORY[0x277D82BD8](v61);
  MEMORY[0x277D82BD8](v62);
  MEMORY[0x277D82BD8](v63);
  MEMORY[0x277D82BD8](v64);
  MEMORY[0x277D82BD8](v65);
  MEMORY[0x277D82BD8](v66);
  MEMORY[0x277D82BD8](v67);
  MEMORY[0x277D82BD8](v68);
  MEMORY[0x277D82BD8](v69);
  MEMORY[0x277D82BD8](v70);
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](v72);
  MEMORY[0x277D82BD8](v73);
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v75 = [v2 initWithDictionary:v76[0] copyItems:1];
  v74 = MEMORY[0x277D82BE0](v75);
  objc_storeStrong(&v75, 0);
  objc_storeStrong(v76, 0);
  *MEMORY[0x277D85DE8];

  return v74;
}

- (NSString)identifier
{
  v5 = self;
  v4[2] = a2;
  v4[0] = 3;
  p_lock = &self->_lock;
  v7 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v4[1] = p_lock;
  v6 = MEMORY[0x277D82BE0](v5->_identifier);
  v9 = v4;
  os_unfair_recursive_lock_unlock();
  v2 = v6;

  return v2;
}

- (void)setIdentifier:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3[0] = 3;
  p_lock = &v5->_lock;
  v6 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v3[1] = p_lock;
  objc_storeStrong(&v5->_identifier, location[0]);
  v8 = v3;
  os_unfair_recursive_lock_unlock();
  objc_storeStrong(location, 0);
}

- (SUUIUpdateOperationDelegate)delegate
{
  v5 = self;
  v4[2] = a2;
  v4[0] = 3;
  p_lock = &self->_lock;
  v7 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v4[1] = p_lock;
  v6 = MEMORY[0x277D82BE0](v5->_delegate);
  v9 = v4;
  os_unfair_recursive_lock_unlock();
  v2 = v6;

  return v2;
}

- (void)setDelegate:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3[0] = 3;
  p_lock = &v5->_lock;
  v6 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v3[1] = p_lock;
  objc_storeStrong(&v5->_delegate, location[0]);
  v8 = v3;
  os_unfair_recursive_lock_unlock();
  objc_storeStrong(location, 0);
}

- (OS_dispatch_queue)completionQueue
{
  v5 = self;
  v4[2] = a2;
  v4[0] = 3;
  p_lock = &self->_lock;
  v7 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v4[1] = p_lock;
  v6 = MEMORY[0x277D82BE0](v5->_completionQueue);
  v9 = v4;
  os_unfair_recursive_lock_unlock();
  v2 = v6;

  return v2;
}

- (void)setCompletionQueue:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3[0] = 3;
  p_lock = &v5->_lock;
  v6 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v3[1] = p_lock;
  objc_storeStrong(&v5->_completionQueue, location[0]);
  v8 = v3;
  os_unfair_recursive_lock_unlock();
  objc_storeStrong(location, 0);
}

- (OS_dispatch_queue)delegateCallbackQueue
{
  v5 = self;
  v4[2] = a2;
  v4[0] = 3;
  p_lock = &self->_lock;
  v7 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v4[1] = p_lock;
  v6 = MEMORY[0x277D82BE0](v5->_delegateCallbackQueue);
  v9 = v4;
  os_unfair_recursive_lock_unlock();
  v2 = v6;

  return v2;
}

- (void)setDelegateCallbackQueue:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3[0] = 3;
  p_lock = &v5->_lock;
  v6 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v3[1] = p_lock;
  objc_storeStrong(&v5->_delegateCallbackQueue, location[0]);
  v8 = v3;
  os_unfair_recursive_lock_unlock();
  objc_storeStrong(location, 0);
}

- (int64_t)performAction:(id)a3 onEvent:(id)a4 inState:(id)a5 withInfo:(id)a6 nextState:(id)a7 error:(id *)a8
{
  v38 = self;
  v37 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v35 = 0;
  objc_storeStrong(&v35, a4);
  v34 = 0;
  objc_storeStrong(&v34, a5);
  v33 = 0;
  objc_storeStrong(&v33, a6);
  v32 = 0;
  objc_storeStrong(&v32, a7);
  v31 = a8;
  v20 = [(SUUIMobileUpdateOperation *)v38 updateFSM];
  v19 = [(SUCoreFSM *)v20 extendedStateQueue];
  dispatch_assert_queue_V2(v19);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  v30[0] = 3;
  p_lock = &v38->_lock;
  v40 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v30[1] = p_lock;
  if ([(SUUIMobileUpdateOperation *)v38 canceled]&& ![(SUUIMobileUpdateOperation *)v38 isCancelableState:v34])
  {
    v13 = [(SUUIMobileUpdateOperation *)v38 updateFSM];
    v12 = [(SUCoreFSM *)v13 diag];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"It's too late to cancel the operation in the current state. State: %@", v34];
    [v12 trackAnomaly:@"[SUUIMobileUpdateOperation]" forReason:? withResult:? withError:?];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    objc_initWeak(&from, v38);
    queue = [(SUUIMobileUpdateOperation *)v38 completionQueue];
    v22 = MEMORY[0x277D85DD0];
    v23 = -1073741824;
    v24 = 0;
    v25 = __84__SUUIMobileUpdateOperation_performAction_onEvent_inState_withInfo_nextState_error___block_invoke;
    v26 = &unk_279CCC6E8;
    objc_copyWeak(v27, &from);
    v27[1] = v37;
    dispatch_async(queue, &v22);
    MEMORY[0x277D82BD8](queue);
    [(SUUIMobileUpdateOperation *)v38 setCanceled:0];
    objc_destroyWeak(v27);
    objc_destroyWeak(&from);
  }

  if (!-[SUUIMobileUpdateOperation canceled](v38, "canceled") || ([location isEqualToString:*MEMORY[0x277D64CE0]] & 1) != 0)
  {
    v29 = 2;
  }

  else
  {
    v39 = 0;
    v29 = 1;
  }

  v42 = v30;
  switch(v30[0])
  {
    case 1:
      [v42[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v42[1]);
      break;
    case 3:
      v8 = v42[1];
      os_unfair_recursive_lock_unlock();
      break;
  }

  if (v29 == 2)
  {
    if ([location isEqualToString:*MEMORY[0x277D647D0]])
    {
      v21 = 0;
    }

    else if ([location isEqualToString:*MEMORY[0x277D64C98]])
    {
      v21 = [(SUUIMobileUpdateOperation *)v38 fsmAction_PrepareUpdateProcess:v33 error:v31];
    }

    else if ([location isEqualToString:*MEMORY[0x277D64CB0]])
    {
      v21 = [(SUUIMobileUpdateOperation *)v38 fsmAction_PurgeSpace:v33 error:v31];
    }

    else if ([location isEqualToString:*MEMORY[0x277D64C70]])
    {
      v21 = [(SUUIMobileUpdateOperation *)v38 fsmAction_AquireKeybag:v33 error:v31];
    }

    else if ([location isEqualToString:*MEMORY[0x277D64CA8]])
    {
      v21 = [(SUUIMobileUpdateOperation *)v38 fsmAction_PresentTermsConditions:v33 error:v31];
    }

    else if ([location isEqualToString:*MEMORY[0x277D64CE8]])
    {
      v21 = [(SUUIMobileUpdateOperation *)v38 fsmAction_ResolveUpdateOperation:v33 error:v31];
    }

    else if ([location isEqualToString:*MEMORY[0x277D64CA0]])
    {
      v21 = [(SUUIMobileUpdateOperation *)v38 fsmAction_PresentDownloadConstraints:v33 error:v31];
    }

    else if ([location isEqualToString:*MEMORY[0x277D64C80]])
    {
      v21 = [(SUUIMobileUpdateOperation *)v38 fsmAction_InitiateUpdateDownload:v33 error:v31];
    }

    else if ([location isEqualToString:*MEMORY[0x277D64C88]])
    {
      v21 = [(SUUIMobileUpdateOperation *)v38 fsmAction_InitiateUpdateInstallation:v33 error:v31];
    }

    else if ([location isEqualToString:*MEMORY[0x277D64CF0]])
    {
      v21 = [(SUUIMobileUpdateOperation *)v38 fsmAction_ScheduleUpdate:v33 error:v31];
    }

    else if ([location isEqualToString:*MEMORY[0x277D64CE0]])
    {
      v21 = [(SUUIMobileUpdateOperation *)v38 fsmAction_ReportUpdateOperationOutcome:v33 error:v31];
    }

    else
    {
      v21 = [(SUUIMobileUpdateOperation *)v38 actionUnknownAction:location error:v31];
    }

    v39 = v21;
    v29 = 1;
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&location, 0);
  return v39;
}

void __84__SUUIMobileUpdateOperation_performAction_onEvent_inState_withInfo_nextState_error___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v14[2] = a1;
  v14[1] = a1;
  v14[0] = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  if (!v14[0])
  {
    v5 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v13 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v12 = 16;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      log = v13;
      type = v12;
      v4 = NSStringFromSelector(*(a1 + 40));
      v11 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v15, "[SUUIMobileUpdateOperation performAction:onEvent:inState:withInfo:nextState:error:]_block_invoke", v11);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v15, 0x16u);
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
    v8 = MEMORY[0x26D66ED00](*(v14[0] + 14));
    if (v8)
    {
      (*(v8 + 2))(v8, 0);
    }

    objc_storeStrong(&v8, 0);
    v1 = *(v14[0] + 14);
    *(v14[0] + 14) = 0;
    MEMORY[0x277D82BD8](v1);
    v9 = 0;
  }

  objc_storeStrong(v14, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)fsmAction_PrepareUpdateProcess:(id)a3 error:(id *)a4
{
  v17 = self;
  v16 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  from[1] = a4;
  objc_initWeak(from, v17);
  v5 = [(SUUIMobileUpdateOperation *)v17 suClient];
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __66__SUUIMobileUpdateOperation_fsmAction_PrepareUpdateProcess_error___block_invoke;
  v11 = &unk_279CCC710;
  objc_copyWeak(v13, from);
  v13[1] = v16;
  v12 = MEMORY[0x277D82BE0](location);
  [(SUManagerClient *)v5 download:&v7];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v12, 0);
  objc_destroyWeak(v13);
  objc_destroyWeak(from);
  objc_storeStrong(&location, 0);
  return 0;
}

void __66__SUUIMobileUpdateOperation_fsmAction_PrepareUpdateProcess_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v38 = 0;
  objc_storeStrong(&v38, a3);
  v37[1] = a1;
  v37[0] = objc_loadWeakRetained((a1 + 40));
  v15 = 0;
  if (!v37[0])
  {
    v14 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v36 = [v14 oslog];
    MEMORY[0x277D82BD8](v14);
    v35 = 16;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      log = v36;
      type = v35;
      v13 = NSStringFromSelector(*(a1 + 48));
      v34 = MEMORY[0x277D82BE0](v13);
      __os_log_helper_16_2_2_8_32_8_66(v41, "[SUUIMobileUpdateOperation fsmAction_PrepareUpdateProcess:error:]_block_invoke", v34);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v41, 0x16u);
      MEMORY[0x277D82BD8](v13);
      objc_storeStrong(&v34, 0);
    }

    objc_storeStrong(&v36, 0);
    v33 = 1;
    v15 = 1;
  }

  if (v15)
  {
    v32 = 1;
  }

  else
  {
    v10 = [MEMORY[0x277D64B58] updateOperationLogger];
    v31 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v30 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) descriptor];
      v7 = [v6 updateName];
      v8 = MEMORY[0x277D82BE0](v7);
      v29 = v8;
      v9 = v38;
      v27 = 0;
      v25 = 0;
      v23 = 0;
      if (location[0] && (v28 = [location[0] descriptor], v27 = 1, v28))
      {
        v26 = [location[0] descriptor];
        v25 = 1;
        v24 = [v26 humanReadableUpdateName];
        v23 = 1;
        v5 = v24;
      }

      else
      {
        v5 = @"N/A";
      }

      v4 = location[0];
      v21 = 0;
      if (location[0])
      {
        v22 = [location[0] progress];
        v21 = 1;
        v3 = v22;
      }

      else
      {
        v3 = @"N/A";
      }

      __os_log_helper_16_2_6_8_32_8_66_8_66_8_66_8_0_8_66(v40, "[SUUIMobileUpdateOperation fsmAction_PrepareUpdateProcess:error:]_block_invoke", v8, v9, v5, v4, v3);
      _os_log_impl(&dword_26B0B9000, v31, v30, "%s [->%{public}@]: error: %{public}@; download: %{public}@ (%p); progress: %{public}@", v40, 0x3Eu);
      if (v21)
      {
        MEMORY[0x277D82BD8](v22);
      }

      if (v23)
      {
        MEMORY[0x277D82BD8](v24);
      }

      if (v25)
      {
        MEMORY[0x277D82BD8](v26);
      }

      if (v27)
      {
        MEMORY[0x277D82BD8](v28);
      }

      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v29, 0);
    }

    objc_storeStrong(&v31, 0);
    if (v38)
    {
      v20 = [(SUUIStatefulError *)[SUUIMobileStatefulError alloc] initFromError:v38];
      [*(a1 + 32) setOperationError:v20];
      MEMORY[0x277D82BD8](v20);
      [*(v37[0] + 9) postEvent:*MEMORY[0x277D64D90] withInfo:*(a1 + 32)];
      v32 = 1;
    }

    else
    {
      v18 = 0;
      if (location[0])
      {
        v19 = [[SUUIMobileDownload alloc] initWithDownload:location[0]];
        v18 = 1;
        [*(a1 + 32) setCurrentDownload:v19];
      }

      else
      {
        [*(a1 + 32) setCurrentDownload:0];
      }

      if (v18)
      {
        MEMORY[0x277D82BD8](v19);
      }

      [*(v37[0] + 9) postEvent:*MEMORY[0x277D64D98] withInfo:*(a1 + 32)];
      v32 = 0;
    }
  }

  objc_storeStrong(v37, 0);
  if (!v32)
  {
    v32 = 0;
  }

  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)fsmAction_PurgeSpace:(id)a3 error:(id *)a4
{
  v75 = *MEMORY[0x277D85DE8];
  v69 = self;
  v68 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v66 = a4;
  v31 = [(SUUIMobileUpdateOperation *)v69 updateFSM];
  v30 = [(SUCoreFSM *)v31 extendedStateQueue];
  dispatch_assert_queue_V2(v30);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  if (location)
  {
    v28 = [location currentDownload];
    v64 = [v28 underlyingDownload];
    MEMORY[0x277D82BD8](v28);
    v27 = [v64 descriptor];
    v26 = [location descriptor];
    v24 = [v26 underlyingDescriptor];
    v25 = [v27 isEqual:?];
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    if (v25)
    {
      v23 = [MEMORY[0x277D64B58] updateOperationLogger];
      v63 = [v23 oslog];
      MEMORY[0x277D82BD8](v23);
      v62 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [location descriptor];
        v21 = [v22 updateName];
        v61 = MEMORY[0x277D82BE0](v21);
        __os_log_helper_16_2_2_8_32_8_66(v74, "[SUUIMobileUpdateOperation fsmAction_PurgeSpace:error:]", v61);
        _os_log_impl(&dword_26B0B9000, v63, v62, "%s [->%{public}@]: Currently downloading descriptor is the same as requested descriptor, do not purge", v74, 0x16u);
        MEMORY[0x277D82BD8](v21);
        MEMORY[0x277D82BD8](v22);
        objc_storeStrong(&v61, 0);
      }

      objc_storeStrong(&v63, 0);
      v20 = [(SUUIMobileUpdateOperation *)v69 updateFSM];
      [(SUCoreFSM *)v20 postEvent:*MEMORY[0x277D64D78] withInfo:location];
      MEMORY[0x277D82BD8](v20);
      v70 = 0;
      v65 = 1;
    }

    else if (v64)
    {
      if ([location isUnattendedPurge])
      {
        v15 = [MEMORY[0x277D64B58] updateOperationLogger];
        v57 = [v15 oslog];
        MEMORY[0x277D82BD8](v15);
        v56 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [location descriptor];
          v13 = [v14 updateName];
          v55 = MEMORY[0x277D82BE0](v13);
          __os_log_helper_16_2_2_8_32_8_66(v72, "[SUUIMobileUpdateOperation fsmAction_PurgeSpace:error:]", v55);
          _os_log_impl(&dword_26B0B9000, v57, v56, "%s [->%{public}@]: Unattended Purge: Attempting to purge w/o user confirmation", v72, 0x16u);
          MEMORY[0x277D82BD8](v13);
          MEMORY[0x277D82BD8](v14);
          objc_storeStrong(&v55, 0);
        }

        objc_storeStrong(&v57, 0);
        v54 = objc_alloc_init(MEMORY[0x277D648D8]);
        [v54 setNotifyUser:0];
        [v54 setUserRequested:0];
        objc_initWeak(&from, v69);
        v11 = [(SUUIMobileUpdateOperation *)v69 suClient];
        v12 = v54;
        v46 = MEMORY[0x277D85DD0];
        v47 = -1073741824;
        v48 = 0;
        v49 = __56__SUUIMobileUpdateOperation_fsmAction_PurgeSpace_error___block_invoke;
        v50 = &unk_279CCC738;
        objc_copyWeak(v52, &from);
        v52[1] = v68;
        v51 = MEMORY[0x277D82BE0](location);
        [(SUManagerClient *)v11 purgeDownloadWithOptions:v12 withResult:&v46];
        MEMORY[0x277D82BD8](v11);
        v70 = 0;
        v65 = 1;
        objc_storeStrong(&v51, 0);
        objc_destroyWeak(v52);
        objc_destroyWeak(&from);
        objc_storeStrong(&v54, 0);
      }

      else
      {
        v10 = [MEMORY[0x277D64B58] updateOperationLogger];
        oslog = [v10 oslog];
        MEMORY[0x277D82BD8](v10);
        v44 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [location descriptor];
          v8 = [v9 updateName];
          v43 = MEMORY[0x277D82BE0](v8);
          v7 = [v64 descriptor];
          v6 = [v7 humanReadableUpdateName];
          v42 = MEMORY[0x277D82BE0](v6);
          __os_log_helper_16_2_3_8_32_8_66_8_66(v71, "[SUUIMobileUpdateOperation fsmAction_PurgeSpace:error:]", v43, v42);
          _os_log_impl(&dword_26B0B9000, oslog, v44, "%s [->%{public}@]: Attempting to get the user consent to purge the download: %{public}@", v71, 0x20u);
          MEMORY[0x277D82BD8](v6);
          MEMORY[0x277D82BD8](v7);
          MEMORY[0x277D82BD8](v8);
          MEMORY[0x277D82BD8](v9);
          objc_storeStrong(&v42, 0);
          objc_storeStrong(&v43, 0);
        }

        objc_storeStrong(&oslog, 0);
        objc_initWeak(&v41, v69);
        queue = [(SUUIMobileUpdateOperation *)v69 delegateCallbackQueue];
        v33 = MEMORY[0x277D85DD0];
        v34 = -1073741824;
        v35 = 0;
        v36 = __56__SUUIMobileUpdateOperation_fsmAction_PurgeSpace_error___block_invoke_306;
        v37 = &unk_279CCC7B0;
        objc_copyWeak(v40, &v41);
        v40[1] = v68;
        v38 = MEMORY[0x277D82BE0](location);
        v39 = MEMORY[0x277D82BE0](v64);
        dispatch_async(queue, &v33);
        MEMORY[0x277D82BD8](queue);
        v70 = 0;
        v65 = 1;
        objc_storeStrong(&v39, 0);
        objc_storeStrong(&v38, 0);
        objc_destroyWeak(v40);
        objc_destroyWeak(&v41);
      }
    }

    else
    {
      v19 = [MEMORY[0x277D64B58] updateOperationLogger];
      v60 = [v19 oslog];
      MEMORY[0x277D82BD8](v19);
      v59 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [location descriptor];
        v17 = [v18 updateName];
        v58 = MEMORY[0x277D82BE0](v17);
        __os_log_helper_16_2_2_8_32_8_66(v73, "[SUUIMobileUpdateOperation fsmAction_PurgeSpace:error:]", v58);
        _os_log_impl(&dword_26B0B9000, v60, v59, "%s [->%{public}@]: There's no purgable download available.", v73, 0x16u);
        MEMORY[0x277D82BD8](v17);
        MEMORY[0x277D82BD8](v18);
        objc_storeStrong(&v58, 0);
      }

      objc_storeStrong(&v60, 0);
      v16 = [(SUUIMobileUpdateOperation *)v69 updateFSM];
      [(SUCoreFSM *)v16 postEvent:*MEMORY[0x277D64D78] withInfo:location];
      MEMORY[0x277D82BD8](v16);
      v70 = 0;
      v65 = 1;
    }

    objc_storeStrong(&v64, 0);
  }

  else
  {
    v29 = [(SUCoreFSM *)v69->_updateFSM diag];
    [v29 trackAnomaly:@"[SUUIMobileUpdateOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v29);
    v70 = 8102;
    v65 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v70;
}

void __56__SUUIMobileUpdateOperation_fsmAction_PurgeSpace_error___block_invoke(uint64_t a1, char a2, id obj)
{
  v30 = *MEMORY[0x277D85DE8];
  v27 = a1;
  v26 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v24[1] = a1;
  v24[0] = objc_loadWeakRetained((a1 + 40));
  v13 = 0;
  if (!v24[0])
  {
    v12 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v23 = [v12 oslog];
    MEMORY[0x277D82BD8](v12);
    v22 = 16;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      log = v23;
      type = v22;
      v11 = NSStringFromSelector(*(a1 + 48));
      v21 = MEMORY[0x277D82BE0](v11);
      __os_log_helper_16_2_2_8_32_8_66(v29, "[SUUIMobileUpdateOperation fsmAction_PurgeSpace:error:]_block_invoke", v21);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v29, 0x16u);
      MEMORY[0x277D82BD8](v11);
      objc_storeStrong(&v21, 0);
    }

    objc_storeStrong(&v23, 0);
    v20 = 1;
    v13 = 1;
  }

  if (v13)
  {
    v19 = 1;
  }

  else
  {
    v8 = [MEMORY[0x277D64B58] updateOperationLogger];
    oslog = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog;
      v5 = v17;
      v7 = [*(a1 + 32) descriptor];
      v6 = [v7 updateName];
      v16 = MEMORY[0x277D82BE0](v6);
      __os_log_helper_16_2_4_8_32_8_66_4_0_8_66(v28, "[SUUIMobileUpdateOperation fsmAction_PurgeSpace:error:]_block_invoke", v16, v26 & 1, location);
      _os_log_impl(&dword_26B0B9000, v4, v5, "%s [->%{public}@]: Purge result: %d; error: %{public}@", v28, 0x26u);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v16, 0);
    }

    objc_storeStrong(&oslog, 0);
    if (location)
    {
      v3 = [SUUIMobileStatefulError alloc];
      v15 = [(SUUIStatefulError *)v3 initFromError:location];
      [*(a1 + 32) setOperationError:{v15, v15}];
      MEMORY[0x277D82BD8](v15);
      [*(v24[0] + 9) postEvent:*MEMORY[0x277D64DA0] withInfo:*(a1 + 32)];
      v19 = 1;
    }

    else
    {
      [*(v24[0] + 9) postEvent:*MEMORY[0x277D64DA8] withInfo:*(a1 + 32)];
      v19 = 0;
    }
  }

  objc_storeStrong(v24, 0);
  if (!v19)
  {
    v19 = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __56__SUUIMobileUpdateOperation_fsmAction_PurgeSpace_error___block_invoke_306(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v21[2] = a1;
  v21[1] = a1;
  v21[0] = objc_loadWeakRetained((a1 + 48));
  v6 = 0;
  if (!v21[0])
  {
    v5 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v20 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v19 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v4 = NSStringFromSelector(*(a1 + 56));
      location = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v22, "[SUUIMobileUpdateOperation fsmAction_PurgeSpace:error:]_block_invoke", location);
      _os_log_error_impl(&dword_26B0B9000, v20, v19, "%s: Self is nil in %{public}@. Stopping.", v22, 0x16u);
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
    v2 = *(v21[0] + 4);
    v3 = v21[0];
    v1 = [*(a1 + 32) currentDownload];
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __56__SUUIMobileUpdateOperation_fsmAction_PurgeSpace_error___block_invoke_307;
    v12 = &unk_279CCC788;
    objc_copyWeak(v15, (a1 + 48));
    v15[1] = *(a1 + 56);
    v13 = MEMORY[0x277D82BE0](*(a1 + 32));
    v14 = MEMORY[0x277D82BE0](*(a1 + 40));
    [v2 operation:v3 requestPurgeConfirmationForDownload:v1 replyHandler:&v8];
    MEMORY[0x277D82BD8](v1);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    objc_destroyWeak(v15);
    v16 = 0;
  }

  objc_storeStrong(v21, 0);
  *MEMORY[0x277D85DE8];
}

void __56__SUUIMobileUpdateOperation_fsmAction_PurgeSpace_error___block_invoke_307(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = a1;
  v23 = a2;
  v22[1] = a1;
  v22[0] = objc_loadWeakRetained((a1 + 48));
  v7 = 0;
  if (!v22[0])
  {
    v6 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v21 = [v6 oslog];
    MEMORY[0x277D82BD8](v6);
    v20 = 16;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      log = v21;
      type = v20;
      v5 = NSStringFromSelector(*(a1 + 56));
      v19 = MEMORY[0x277D82BE0](v5);
      __os_log_helper_16_2_2_8_32_8_66(v25, "[SUUIMobileUpdateOperation fsmAction_PurgeSpace:error:]_block_invoke", v19);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v25, 0x16u);
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
    queue = *(v22[0] + 17);
    v9 = MEMORY[0x277D85DD0];
    v10 = -1073741824;
    v11 = 0;
    v12 = __56__SUUIMobileUpdateOperation_fsmAction_PurgeSpace_error___block_invoke_308;
    v13 = &unk_279CCC760;
    objc_copyWeak(v16, (a1 + 48));
    v16[1] = *(a1 + 56);
    v14 = MEMORY[0x277D82BE0](*(a1 + 32));
    v15 = MEMORY[0x277D82BE0](*(a1 + 40));
    v16[2] = v23;
    dispatch_async(queue, &v9);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    objc_destroyWeak(v16);
    v17 = 0;
  }

  objc_storeStrong(v22, 0);
  *MEMORY[0x277D85DE8];
}

void __56__SUUIMobileUpdateOperation_fsmAction_PurgeSpace_error___block_invoke_308(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v33[2] = a1;
  v33[1] = a1;
  v33[0] = objc_loadWeakRetained((a1 + 48));
  v13 = 0;
  if (!v33[0])
  {
    v12 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v32 = [v12 oslog];
    MEMORY[0x277D82BD8](v12);
    v31 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      log = v32;
      v10 = NSStringFromSelector(*(a1 + 56));
      location = MEMORY[0x277D82BE0](v10);
      __os_log_helper_16_2_2_8_32_8_66(v35, "[SUUIMobileUpdateOperation fsmAction_PurgeSpace:error:]_block_invoke", location);
      _os_log_error_impl(&dword_26B0B9000, log, v31, "%s: Self is nil in %{public}@. Stopping.", v35, 0x16u);
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v32, 0);
    v29 = 1;
    v13 = 1;
  }

  if (v13)
  {
    v28 = 1;
  }

  else
  {
    v9 = [MEMORY[0x277D64B58] updateOperationLogger];
    v27 = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    v26 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) descriptor];
      v7 = [v8 updateName];
      v25 = MEMORY[0x277D82BE0](v7);
      v6 = [*(a1 + 40) descriptor];
      v5 = [v6 humanReadableUpdateName];
      v24 = MEMORY[0x277D82BE0](v5);
      v1 = *(a1 + 64);
      v4 = SUUIUserInteractionResponseToString();
      v23 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v34, "[SUUIMobileUpdateOperation fsmAction_PurgeSpace:error:]_block_invoke", v25, v24, v23);
      _os_log_impl(&dword_26B0B9000, v27, v26, "%s [->%{public}@]: User responded to the purge request of %{public}@: %{public}@", v34, 0x2Au);
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v25, 0);
    }

    objc_storeStrong(&v27, 0);
    if (*(a1 + 64))
    {
      [*(v33[0] + 9) postEvent:*MEMORY[0x277D64DB0] withInfo:*(a1 + 32)];
      v28 = 1;
    }

    else
    {
      v22 = objc_alloc_init(MEMORY[0x277D648D8]);
      [v22 setNotifyUser:0];
      [v22 setUserRequested:1];
      v2 = *(v33[0] + 10);
      v3 = v22;
      v15 = MEMORY[0x277D85DD0];
      v16 = -1073741824;
      v17 = 0;
      v18 = __56__SUUIMobileUpdateOperation_fsmAction_PurgeSpace_error___block_invoke_309;
      v19 = &unk_279CCC738;
      objc_copyWeak(v21, (a1 + 48));
      v21[1] = *(a1 + 56);
      v20 = MEMORY[0x277D82BE0](*(a1 + 32));
      [v2 purgeDownloadWithOptions:v3 withResult:&v15];
      objc_storeStrong(&v20, 0);
      objc_destroyWeak(v21);
      objc_storeStrong(&v22, 0);
      v28 = 0;
    }
  }

  objc_storeStrong(v33, 0);
  *MEMORY[0x277D85DE8];
}

void __56__SUUIMobileUpdateOperation_fsmAction_PurgeSpace_error___block_invoke_309(uint64_t a1, char a2, id obj)
{
  v30 = *MEMORY[0x277D85DE8];
  v27 = a1;
  v26 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v24[1] = a1;
  v24[0] = objc_loadWeakRetained((a1 + 40));
  v13 = 0;
  if (!v24[0])
  {
    v12 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v23 = [v12 oslog];
    MEMORY[0x277D82BD8](v12);
    v22 = 16;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      log = v23;
      type = v22;
      v11 = NSStringFromSelector(*(a1 + 48));
      v21 = MEMORY[0x277D82BE0](v11);
      __os_log_helper_16_2_2_8_32_8_66(v29, "[SUUIMobileUpdateOperation fsmAction_PurgeSpace:error:]_block_invoke", v21);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v29, 0x16u);
      MEMORY[0x277D82BD8](v11);
      objc_storeStrong(&v21, 0);
    }

    objc_storeStrong(&v23, 0);
    v20 = 1;
    v13 = 1;
  }

  if (v13)
  {
    v19 = 1;
  }

  else
  {
    v8 = [MEMORY[0x277D64B58] updateOperationLogger];
    oslog = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog;
      v5 = v17;
      v7 = [*(a1 + 32) descriptor];
      v6 = [v7 updateName];
      v16 = MEMORY[0x277D82BE0](v6);
      __os_log_helper_16_2_4_8_32_8_66_4_0_8_66(v28, "[SUUIMobileUpdateOperation fsmAction_PurgeSpace:error:]_block_invoke", v16, v26 & 1, location);
      _os_log_impl(&dword_26B0B9000, v4, v5, "%s [->%{public}@]: Purge result: %d; error: %{public}@", v28, 0x26u);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v16, 0);
    }

    objc_storeStrong(&oslog, 0);
    if (location)
    {
      v3 = [SUUIMobileStatefulError alloc];
      v15 = [(SUUIStatefulError *)v3 initFromError:location];
      [*(a1 + 32) setOperationError:{v15, v15}];
      MEMORY[0x277D82BD8](v15);
      [*(v24[0] + 9) postEvent:*MEMORY[0x277D64DA0] withInfo:*(a1 + 32)];
      v19 = 1;
    }

    else
    {
      [*(v24[0] + 9) postEvent:*MEMORY[0x277D64DA8] withInfo:*(a1 + 32)];
      v19 = 0;
    }
  }

  objc_storeStrong(v24, 0);
  if (!v19)
  {
    v19 = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)fsmAction_AquireKeybag:(id)a3 error:(id *)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v47 = self;
  v46 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v44 = a4;
  v20 = [(SUUIMobileUpdateOperation *)v47 updateFSM];
  v19 = [(SUCoreFSM *)v20 extendedStateQueue];
  dispatch_assert_queue_V2(v19);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  if (location)
  {
    v17 = [(SUUIMobileUpdateOperation *)v47 suClient];
    v16 = [location descriptor];
    v14 = [v16 underlyingDescriptor];
    v15 = [(SUManagerClient *)v17 isInstallationKeybagRequiredForDescriptor:?];
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    v42 = v15;
    v41 = v15 & 1;
    v39 = 0;
    v37 = 0;
    v13 = 0;
    if ((v15 & 1) == 0)
    {
      v40 = [location descriptor];
      v39 = 1;
      v13 = 0;
      if ([v40 isSplatUpdate])
      {
        v38 = [MEMORY[0x277D648A8] sharedInstance];
        v37 = 1;
        v13 = [v38 hasPasscodeSet];
      }
    }

    if (v37)
    {
      MEMORY[0x277D82BD8](v38);
    }

    if (v39)
    {
      MEMORY[0x277D82BD8](v40);
    }

    if (v13)
    {
      v12 = [MEMORY[0x277D64B58] updateOperationLogger];
      v36 = [v12 oslog];
      MEMORY[0x277D82BD8](v12);
      v35 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [location descriptor];
        v10 = [v11 updateName];
        v34 = MEMORY[0x277D82BE0](v10);
        __os_log_helper_16_2_2_8_32_8_66(v50, "[SUUIMobileUpdateOperation fsmAction_AquireKeybag:error:]", v34);
        _os_log_impl(&dword_26B0B9000, v36, v35, "%s [->%{public}@]: Prompting for passcode for splat-only update, but not generating an installation keybag", v50, 0x16u);
        MEMORY[0x277D82BD8](v10);
        MEMORY[0x277D82BD8](v11);
        objc_storeStrong(&v34, 0);
      }

      objc_storeStrong(&v36, 0);
      v41 = 1;
    }

    if (v41)
    {
      v8 = [MEMORY[0x277D64B58] updateOperationLogger];
      v33 = [v8 oslog];
      MEMORY[0x277D82BD8](v8);
      v32 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [location descriptor];
        v6 = [v7 updateName];
        v31 = MEMORY[0x277D82BE0](v6);
        __os_log_helper_16_2_4_8_32_8_66_4_0_4_0(v49, "[SUUIMobileUpdateOperation fsmAction_AquireKeybag:error:]", v31, v42 & 1, v41 & 1);
        _os_log_impl(&dword_26B0B9000, v33, v32, "%s [->%{public}@]: Attempts to create a Keybag by asking the user for the device passcode. isKeybagRequired: %d, askForPasscode: %d", v49, 0x22u);
        MEMORY[0x277D82BD8](v6);
        MEMORY[0x277D82BD8](v7);
        objc_storeStrong(&v31, 0);
      }

      objc_storeStrong(&v33, 0);
      objc_initWeak(&from, v47);
      queue = [(SUUIMobileUpdateOperation *)v47 delegateCallbackQueue];
      v22 = MEMORY[0x277D85DD0];
      v23 = -1073741824;
      v24 = 0;
      v25 = __58__SUUIMobileUpdateOperation_fsmAction_AquireKeybag_error___block_invoke;
      v26 = &unk_279CCC828;
      objc_copyWeak(v28, &from);
      v28[1] = v46;
      v27 = MEMORY[0x277D82BE0](location);
      v29 = v42 & 1;
      dispatch_async(queue, &v22);
      MEMORY[0x277D82BD8](queue);
      v48 = 0;
      v43 = 1;
      objc_storeStrong(&v27, 0);
      objc_destroyWeak(v28);
      objc_destroyWeak(&from);
    }

    else
    {
      v9 = [(SUUIMobileUpdateOperation *)v47 updateFSM];
      [(SUCoreFSM *)v9 postEvent:*MEMORY[0x277D64D68] withInfo:location];
      MEMORY[0x277D82BD8](v9);
      v48 = 0;
      v43 = 1;
    }
  }

  else
  {
    v18 = [(SUCoreFSM *)v47->_updateFSM diag];
    [v18 trackAnomaly:@"[SUUIMobileUpdateOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v18);
    v48 = 8102;
    v43 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v48;
}

void __58__SUUIMobileUpdateOperation_fsmAction_AquireKeybag_error___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v21[2] = a1;
  v21[1] = a1;
  v21[0] = objc_loadWeakRetained((a1 + 40));
  v6 = 0;
  if (!v21[0])
  {
    v5 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v20 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v19 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v4 = NSStringFromSelector(*(a1 + 48));
      location = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v22, "[SUUIMobileUpdateOperation fsmAction_AquireKeybag:error:]_block_invoke", location);
      _os_log_error_impl(&dword_26B0B9000, v20, v19, "%s: Self is nil in %{public}@. Stopping.", v22, 0x16u);
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
    v2 = *(v21[0] + 4);
    v3 = v21[0];
    v1 = [*(a1 + 32) descriptor];
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __58__SUUIMobileUpdateOperation_fsmAction_AquireKeybag_error___block_invoke_312;
    v12 = &unk_279CCC800;
    objc_copyWeak(v14, (a1 + 40));
    v14[1] = *(a1 + 48);
    v13 = MEMORY[0x277D82BE0](*(a1 + 32));
    v15 = *(a1 + 56) & 1;
    [v2 operation:v3 requestDevicePasscodeForDescriptor:v1 replyHandler:&v8];
    MEMORY[0x277D82BD8](v1);
    objc_storeStrong(&v13, 0);
    objc_destroyWeak(v14);
    v16 = 0;
  }

  objc_storeStrong(v21, 0);
  *MEMORY[0x277D85DE8];
}

void __58__SUUIMobileUpdateOperation_fsmAction_AquireKeybag_error___block_invoke_312(uint64_t a1, void *a2, id obj)
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = a1;
  v26 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v24[1] = a1;
  v24[0] = objc_loadWeakRetained((a1 + 40));
  v8 = 0;
  if (!v24[0])
  {
    v7 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v23 = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v22 = 16;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      log = v23;
      type = v22;
      v6 = NSStringFromSelector(*(a1 + 48));
      v21 = MEMORY[0x277D82BE0](v6);
      __os_log_helper_16_2_2_8_32_8_66(v28, "[SUUIMobileUpdateOperation fsmAction_AquireKeybag:error:]_block_invoke", v21);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v28, 0x16u);
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
    queue = *(v24[0] + 17);
    v10 = MEMORY[0x277D85DD0];
    v11 = -1073741824;
    v12 = 0;
    v13 = __58__SUUIMobileUpdateOperation_fsmAction_AquireKeybag_error___block_invoke_313;
    v14 = &unk_279CCC7D8;
    objc_copyWeak(v17, (a1 + 40));
    v17[1] = *(a1 + 48);
    v15 = MEMORY[0x277D82BE0](*(a1 + 32));
    v17[2] = v26;
    v16 = MEMORY[0x277D82BE0](location);
    v18 = *(a1 + 56) & 1;
    dispatch_async(queue, &v10);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    objc_destroyWeak(v17);
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

void __58__SUUIMobileUpdateOperation_fsmAction_AquireKeybag_error___block_invoke_313(uint64_t a1)
{
  v70 = *MEMORY[0x277D85DE8];
  v65[2] = a1;
  v65[1] = a1;
  v65[0] = objc_loadWeakRetained((a1 + 48));
  v33 = 0;
  if (!v65[0])
  {
    v32 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v64 = [v32 oslog];
    MEMORY[0x277D82BD8](v32);
    v63 = 16;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      log = v64;
      type = v63;
      v31 = NSStringFromSelector(*(a1 + 56));
      v62 = MEMORY[0x277D82BE0](v31);
      __os_log_helper_16_2_2_8_32_8_66(v69, "[SUUIMobileUpdateOperation fsmAction_AquireKeybag:error:]_block_invoke", v62);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v69, 0x16u);
      MEMORY[0x277D82BD8](v31);
      objc_storeStrong(&v62, 0);
    }

    objc_storeStrong(&v64, 0);
    v61 = 1;
    v33 = 1;
  }

  if (v33)
  {
    v60 = 1;
  }

  else
  {
    v28 = [MEMORY[0x277D64B58] updateOperationLogger];
    v59 = [v28 oslog];
    MEMORY[0x277D82BD8](v28);
    v58 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v59;
      v24 = v58;
      v27 = [*(a1 + 32) descriptor];
      v26 = [v27 updateName];
      v22 = MEMORY[0x277D82BE0](v26);
      v57 = v22;
      v1 = *(a1 + 64);
      v25 = SUUIUserInteractionResponseToString();
      v56 = MEMORY[0x277D82BE0](v25);
      __os_log_helper_16_2_5_8_32_8_66_8_66_4_0_4_0(v68, "-[SUUIMobileUpdateOperation fsmAction_AquireKeybag:error:]_block_invoke", v22, v56, *(a1 + 40) != 0, [*(a1 + 32) isUnattendedInstall]);
      _os_log_impl(&dword_26B0B9000, v23, v24, "%s [->%{public}@]: Passcode request result: %{public}@; passcode present: %d; for unattended install? %d", v68, 0x2Cu);
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](v27);
      objc_storeStrong(&v56, 0);
      objc_storeStrong(&v57, 0);
    }

    objc_storeStrong(&v59, 0);
    if (!*(a1 + 64) && *(a1 + 40))
    {
      if (*(a1 + 72))
      {
        v51 = objc_alloc_init(MEMORY[0x277CD4790]);
        v18 = [*(a1 + 40) dataUsingEncoding:4];
        v19 = [v51 setCredential:? type:?];
        MEMORY[0x277D82BD8](v18);
        if (v19)
        {
          v43 = objc_alloc_init(MEMORY[0x277D648B0]);
          [v43 setLaContext:v51];
          v10 = [*(a1 + 32) descriptor];
          v9 = [v10 underlyingDescriptor];
          [v43 setDescriptor:?];
          MEMORY[0x277D82BD8](v9);
          MEMORY[0x277D82BD8](v10);
          [v43 setKeybagType:{(objc_msgSend(*(a1 + 32), "isUnattendedInstall") & 1) != 0}];
          v42 = [*(v65[0] + 10) createInstallationKeybagWithOptions:v43];
          [*(a1 + 32) setCreatedKeybag:v42 & 1];
          v8 = [MEMORY[0x277D64B58] updateOperationLogger];
          v41 = [v8 oslog];
          MEMORY[0x277D82BD8](v8);
          v40 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v4 = v41;
            v5 = v40;
            v7 = [*(a1 + 32) descriptor];
            v6 = [v7 updateName];
            v39 = MEMORY[0x277D82BE0](v6);
            __os_log_helper_16_2_3_8_32_8_66_4_0(v66, "[SUUIMobileUpdateOperation fsmAction_AquireKeybag:error:]_block_invoke", v39, v42 & 1);
            _os_log_impl(&dword_26B0B9000, v4, v5, "%s [->%{public}@]: Keybag creation result: %d", v66, 0x1Cu);
            MEMORY[0x277D82BD8](v6);
            MEMORY[0x277D82BD8](v7);
            objc_storeStrong(&v39, 0);
          }

          objc_storeStrong(&v41, 0);
          if (v42)
          {
            [*(v65[0] + 9) postEvent:*MEMORY[0x277D64D58] withInfo:*(a1 + 32)];
          }

          else
          {
            v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:7 userInfo:0];
            v37 = 0;
            v35 = 0;
            if (v3)
            {
              v2 = [SUUIMobileStatefulError alloc];
              v38 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:7 userInfo:0];
              v37 = 1;
              v36 = [(SUUIStatefulError *)v2 initFromError:?];
              v35 = 1;
              [*(a1 + 32) setOperationError:v36];
            }

            else
            {
              [*(a1 + 32) setOperationError:0];
            }

            if (v35)
            {
              MEMORY[0x277D82BD8](v36);
            }

            if (v37)
            {
              MEMORY[0x277D82BD8](v38);
            }

            MEMORY[0x277D82BD8](v3);
            [*(v65[0] + 9) postEvent:*MEMORY[0x277D64D60] withInfo:*(a1 + 32)];
          }

          objc_storeStrong(&v43, 0);
          v60 = 0;
        }

        else
        {
          v17 = [MEMORY[0x277D64B58] updateOperationLogger];
          oslog = [v17 oslog];
          MEMORY[0x277D82BD8](v17);
          v49 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            v13 = oslog;
            v14 = v49;
            v16 = [*(a1 + 32) descriptor];
            v15 = [v16 updateName];
            v48 = MEMORY[0x277D82BE0](v15);
            __os_log_helper_16_2_2_8_32_8_66(v67, "[SUUIMobileUpdateOperation fsmAction_AquireKeybag:error:]_block_invoke", v48);
            _os_log_impl(&dword_26B0B9000, v13, v14, "%s [->%{public}@]: Failed to create a LAContext with the given passcode", v67, 0x16u);
            MEMORY[0x277D82BD8](v15);
            MEMORY[0x277D82BD8](v16);
            objc_storeStrong(&v48, 0);
          }

          objc_storeStrong(&oslog, 0);
          v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:7 userInfo:0];
          v46 = 0;
          v44 = 0;
          if (v12)
          {
            v11 = [SUUIMobileStatefulError alloc];
            v47 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:7 userInfo:0];
            v46 = 1;
            v45 = [(SUUIStatefulError *)v11 initFromError:?];
            v44 = 1;
            [*(a1 + 32) setOperationError:v45];
          }

          else
          {
            [*(a1 + 32) setOperationError:0];
          }

          if (v44)
          {
            MEMORY[0x277D82BD8](v45);
          }

          if (v46)
          {
            MEMORY[0x277D82BD8](v47);
          }

          MEMORY[0x277D82BD8](v12);
          [*(v65[0] + 9) postEvent:*MEMORY[0x277D64D60] withInfo:*(a1 + 32)];
          v60 = 1;
        }

        objc_storeStrong(&v51, 0);
      }

      else
      {
        [*(v65[0] + 9) postEvent:*MEMORY[0x277D64D68] withInfo:*(a1 + 32)];
        v60 = 1;
      }
    }

    else
    {
      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:6 userInfo:0];
      v54 = 0;
      v52 = 0;
      if (v21)
      {
        v20 = [SUUIMobileStatefulError alloc];
        v55 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:6 userInfo:0];
        v54 = 1;
        v53 = [(SUUIStatefulError *)v20 initFromError:?];
        v52 = 1;
        [*(a1 + 32) setOperationError:v53];
      }

      else
      {
        [*(a1 + 32) setOperationError:0];
      }

      if (v52)
      {
        MEMORY[0x277D82BD8](v53);
      }

      if (v54)
      {
        MEMORY[0x277D82BD8](v55);
      }

      MEMORY[0x277D82BD8](v21);
      [*(v65[0] + 9) postEvent:*MEMORY[0x277D64D70] withInfo:*(a1 + 32)];
      v60 = 1;
    }
  }

  objc_storeStrong(v65, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)fsmAction_PresentTermsConditions:(id)a3 error:(id *)a4
{
  v67 = *MEMORY[0x277D85DE8];
  v63 = self;
  v62 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v60 = a4;
  v41 = [(SUUIMobileUpdateOperation *)v63 updateFSM];
  v40 = [(SUCoreFSM *)v41 extendedStateQueue];
  dispatch_assert_queue_V2(v40);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  if (location)
  {
    v38 = [location currentDownload];
    MEMORY[0x277D82BD8](v38);
    if (!v38)
    {
      goto LABEL_8;
    }

    v37 = [location currentDownload];
    v36 = [v37 underlyingDownload];
    v34 = [v36 downloadOptions];
    v35 = [v34 termsAndConditionsAgreementStatus];
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v37);
    v58 = v35;
    v33 = [MEMORY[0x277D64B58] updateOperationLogger];
    v57 = [v33 oslog];
    MEMORY[0x277D82BD8](v33);
    v56 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [location descriptor];
      v31 = [v32 updateName];
      v55 = MEMORY[0x277D82BE0](v31);
      v30 = SUStringFromAgreementStatus();
      v54 = MEMORY[0x277D82BE0](v30);
      __os_log_helper_16_2_4_8_32_8_66_8_66_4_0(v66, "[SUUIMobileUpdateOperation fsmAction_PresentTermsConditions:error:]", v55, v54, v58);
      _os_log_impl(&dword_26B0B9000, v57, v56, "%s [->%{public}@]: A download object is available. SU T&C  agreement status: %{public}@ (%d)", v66, 0x26u);
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v32);
      objc_storeStrong(&v54, 0);
      objc_storeStrong(&v55, 0);
    }

    objc_storeStrong(&v57, 0);
    if (v58 == 1)
    {
      v29 = [location agreementStatusRegistry];
      v28 = [location currentDownload];
      v27 = [v28 underlyingDownload];
      v26 = [v27 descriptor];
      [v29 setAgreementStatus:1 type:2 forDescriptor:?];
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](v29);
      [(SUCoreFSM *)v63->_updateFSM postEvent:*MEMORY[0x277D64DF0] withInfo:location];
      v64 = 0;
      v59 = 1;
    }

    else
    {
LABEL_8:
      v25 = v63;
      v23 = [location descriptor];
      v24 = [(SUUIMobileUpdateOperation *)v25 hasAcceptedTermsAndConditionsOfDescriptorSync:?];
      MEMORY[0x277D82BD8](v23);
      if (v24)
      {
        v22 = [location agreementStatusRegistry];
        v21 = [location currentDownload];
        v20 = [v21 underlyingDownload];
        v19 = [v20 descriptor];
        [v22 setAgreementStatus:1 type:2 forDescriptor:?];
        MEMORY[0x277D82BD8](v19);
        MEMORY[0x277D82BD8](v20);
        MEMORY[0x277D82BD8](v21);
        MEMORY[0x277D82BD8](v22);
        [(SUCoreFSM *)v63->_updateFSM postEvent:*MEMORY[0x277D64DF0] withInfo:location];
        v64 = 0;
        v59 = 1;
      }

      else
      {
        v17 = [location descriptor];
        v18 = [v17 isSplatUpdate];
        MEMORY[0x277D82BD8](v17);
        if (v18)
        {
          v16 = [location agreementStatusRegistry];
          v15 = [location descriptor];
          v14 = [v15 underlyingDescriptor];
          [v16 setAgreementStatus:1 type:2 forDescriptor:?];
          MEMORY[0x277D82BD8](v14);
          MEMORY[0x277D82BD8](v15);
          MEMORY[0x277D82BD8](v16);
          v13 = [(SUUIMobileUpdateOperation *)v63 updateFSM];
          [(SUCoreFSM *)v13 postEvent:*MEMORY[0x277D64E00] withInfo:location];
          MEMORY[0x277D82BD8](v13);
          v64 = 0;
          v59 = 1;
        }

        else if ([(SUUIMobileUpdateOperationOptions *)v63->_options bypassTermsAndConditions])
        {
          v12 = [location agreementStatusRegistry];
          v11 = [location descriptor];
          v10 = [v11 underlyingDescriptor];
          [v12 setAgreementStatus:1 type:2 forDescriptor:?];
          MEMORY[0x277D82BD8](v10);
          MEMORY[0x277D82BD8](v11);
          MEMORY[0x277D82BD8](v12);
          v9 = [(SUUIMobileUpdateOperation *)v63 updateFSM];
          [(SUCoreFSM *)v9 postEvent:*MEMORY[0x277D64DF8] withInfo:location];
          MEMORY[0x277D82BD8](v9);
          v64 = 0;
          v59 = 1;
        }

        else
        {
          v8 = [MEMORY[0x277D64B58] updateOperationLogger];
          v53 = [v8 oslog];
          MEMORY[0x277D82BD8](v8);
          v52 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            v7 = [location descriptor];
            v6 = [v7 updateName];
            v51 = MEMORY[0x277D82BE0](v6);
            __os_log_helper_16_2_2_8_32_8_66(v65, "[SUUIMobileUpdateOperation fsmAction_PresentTermsConditions:error:]", v51);
            _os_log_impl(&dword_26B0B9000, v53, v52, "%s [->%{public}@]: Attempting to present the T&C sheet", v65, 0x16u);
            MEMORY[0x277D82BD8](v6);
            MEMORY[0x277D82BD8](v7);
            objc_storeStrong(&v51, 0);
          }

          objc_storeStrong(&v53, 0);
          objc_initWeak(&from, v63);
          queue = [(SUUIMobileUpdateOperation *)v63 delegateCallbackQueue];
          v43 = MEMORY[0x277D85DD0];
          v44 = -1073741824;
          v45 = 0;
          v46 = __68__SUUIMobileUpdateOperation_fsmAction_PresentTermsConditions_error___block_invoke;
          v47 = &unk_279CCBD58;
          objc_copyWeak(v49, &from);
          v49[1] = v62;
          v48 = MEMORY[0x277D82BE0](location);
          dispatch_async(queue, &v43);
          MEMORY[0x277D82BD8](queue);
          v64 = 0;
          v59 = 1;
          objc_storeStrong(&v48, 0);
          objc_destroyWeak(v49);
          objc_destroyWeak(&from);
        }
      }
    }
  }

  else
  {
    v39 = [(SUCoreFSM *)v63->_updateFSM diag];
    [v39 trackAnomaly:@"[SUUIMobileUpdateOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v39);
    v64 = 8102;
    v59 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v64;
}

void __68__SUUIMobileUpdateOperation_fsmAction_PresentTermsConditions_error___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v20[2] = a1;
  v20[1] = a1;
  v20[0] = objc_loadWeakRetained((a1 + 40));
  v6 = 0;
  if (!v20[0])
  {
    v5 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v19 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v18 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v4 = NSStringFromSelector(*(a1 + 48));
      location = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v21, "[SUUIMobileUpdateOperation fsmAction_PresentTermsConditions:error:]_block_invoke", location);
      _os_log_error_impl(&dword_26B0B9000, v19, v18, "%s: Self is nil in %{public}@. Stopping.", v21, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v19, 0);
    v16 = 1;
    v6 = 1;
  }

  if (v6)
  {
    v15 = 1;
  }

  else
  {
    v2 = *(v20[0] + 4);
    v3 = v20[0];
    v1 = [*(a1 + 32) descriptor];
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __68__SUUIMobileUpdateOperation_fsmAction_PresentTermsConditions_error___block_invoke_318;
    v12 = &unk_279CCC8A0;
    objc_copyWeak(v14, (a1 + 40));
    v14[1] = *(a1 + 48);
    v13 = MEMORY[0x277D82BE0](*(a1 + 32));
    [v2 operation:v3 requestAgreementToTermsAndConditionsForUpdate:v1 replyHandler:&v8];
    MEMORY[0x277D82BD8](v1);
    objc_storeStrong(&v13, 0);
    objc_destroyWeak(v14);
    v15 = 0;
  }

  objc_storeStrong(v20, 0);
  *MEMORY[0x277D85DE8];
}

void __68__SUUIMobileUpdateOperation_fsmAction_PresentTermsConditions_error___block_invoke_318(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = a1;
  v22 = a2;
  v21[1] = a1;
  v21[0] = objc_loadWeakRetained((a1 + 40));
  v7 = 0;
  if (!v21[0])
  {
    v6 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v20 = [v6 oslog];
    MEMORY[0x277D82BD8](v6);
    v19 = 16;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      log = v20;
      type = v19;
      v5 = NSStringFromSelector(*(a1 + 48));
      v18 = MEMORY[0x277D82BE0](v5);
      __os_log_helper_16_2_2_8_32_8_66(v24, "[SUUIMobileUpdateOperation fsmAction_PresentTermsConditions:error:]_block_invoke", v18);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v24, 0x16u);
      MEMORY[0x277D82BD8](v5);
      objc_storeStrong(&v18, 0);
    }

    objc_storeStrong(&v20, 0);
    v17 = 1;
    v7 = 1;
  }

  if (v7)
  {
    v16 = 1;
  }

  else
  {
    queue = *(v21[0] + 17);
    v9 = MEMORY[0x277D85DD0];
    v10 = -1073741824;
    v11 = 0;
    v12 = __68__SUUIMobileUpdateOperation_fsmAction_PresentTermsConditions_error___block_invoke_319;
    v13 = &unk_279CCC878;
    objc_copyWeak(v15, (a1 + 40));
    v15[1] = *(a1 + 48);
    v14 = MEMORY[0x277D82BE0](*(a1 + 32));
    v15[2] = v22;
    dispatch_async(queue, &v9);
    objc_storeStrong(&v14, 0);
    objc_destroyWeak(v15);
    v16 = 0;
  }

  objc_storeStrong(v21, 0);
  *MEMORY[0x277D85DE8];
}

void __68__SUUIMobileUpdateOperation_fsmAction_PresentTermsConditions_error___block_invoke_319(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v54[2] = a1;
  v54[1] = a1;
  v54[0] = objc_loadWeakRetained((a1 + 40));
  v29 = 0;
  if (!v54[0])
  {
    v28 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v53 = [v28 oslog];
    MEMORY[0x277D82BD8](v28);
    v52 = 16;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      log = v53;
      type = v52;
      v25 = NSStringFromSelector(*(a1 + 48));
      location = MEMORY[0x277D82BE0](v25);
      __os_log_helper_16_2_2_8_32_8_66(v56, "[SUUIMobileUpdateOperation fsmAction_PresentTermsConditions:error:]_block_invoke", location);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v56, 0x16u);
      MEMORY[0x277D82BD8](v25);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v53, 0);
    v50 = 1;
    v29 = 1;
  }

  if (v29)
  {
    v49 = 1;
  }

  else
  {
    v24 = [MEMORY[0x277D64B58] updateOperationLogger];
    v48 = [v24 oslog];
    MEMORY[0x277D82BD8](v24);
    v47 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v48;
      v23 = v47;
      v21 = [*(a1 + 32) descriptor];
      v19 = [v21 updateName];
      v20 = MEMORY[0x277D82BE0](v19);
      v46 = v20;
      v1 = *(a1 + 56);
      v18 = SUUIUserInteractionResponseToString();
      v45 = MEMORY[0x277D82BE0](v18);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v55, "[SUUIMobileUpdateOperation fsmAction_PresentTermsConditions:error:]_block_invoke", v20, v45);
      _os_log_impl(&dword_26B0B9000, v22, v23, "%s [->%{public}@]: T&C request result: %{public}@", v55, 0x20u);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v21);
      objc_storeStrong(&v45, 0);
      objc_storeStrong(&v46, 0);
    }

    objc_storeStrong(&v48, 0);
    v17 = v54[0];
    v16 = [*(a1 + 32) descriptor];
    v2 = *(a1 + 56);
    [v17 respondToTermsAndConditionsOfDescriptorSync:? withResponse:?];
    MEMORY[0x277D82BD8](v16);
    v44 = 0;
    v43 = 0;
    if (*(a1 + 56))
    {
      v43 = 2;
      objc_storeStrong(&v44, *MEMORY[0x277D64E08]);
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:8 userInfo:0];
      v41 = 0;
      v39 = 0;
      if (v15)
      {
        v14 = [SUUIMobileStatefulError alloc];
        v42 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:8 userInfo:0];
        v41 = 1;
        v40 = [(SUUIStatefulError *)v14 initFromError:?];
        v39 = 1;
        [*(a1 + 32) setOperationError:v40];
      }

      else
      {
        [*(a1 + 32) setOperationError:0];
      }

      if (v39)
      {
        MEMORY[0x277D82BD8](v40);
      }

      if (v41)
      {
        MEMORY[0x277D82BD8](v42);
      }

      MEMORY[0x277D82BD8](v15);
    }

    else
    {
      v43 = 1;
      objc_storeStrong(&v44, *MEMORY[0x277D64DE8]);
    }

    v13 = [*(a1 + 32) agreementStatusRegistry];
    v12 = [*(a1 + 32) descriptor];
    v11 = [v12 underlyingDescriptor];
    [v13 setAgreementStatus:v43 type:2 forDescriptor:?];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    v10 = [*(a1 + 32) currentDownload];
    MEMORY[0x277D82BD8](v10);
    if (v10)
    {
      v9 = [*(a1 + 32) currentDownload];
      v8 = [v9 underlyingDownload];
      v7 = [v8 downloadOptions];
      [v7 setTermsAndConditionsAgreementStatus:v43];
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      v6 = *(v54[0] + 10);
      v5 = [*(a1 + 32) currentDownload];
      v4 = [v5 underlyingDownload];
      v3 = [v4 downloadOptions];
      v31 = MEMORY[0x277D85DD0];
      v32 = -1073741824;
      v33 = 0;
      v34 = __68__SUUIMobileUpdateOperation_fsmAction_PresentTermsConditions_error___block_invoke_320;
      v35 = &unk_279CCC850;
      objc_copyWeak(v38, (a1 + 40));
      v38[1] = *(a1 + 48);
      v36 = MEMORY[0x277D82BE0](*(a1 + 32));
      v37 = MEMORY[0x277D82BE0](v44);
      [v6 updateDownloadOptions:v3 withResult:&v31];
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      objc_storeStrong(&v37, 0);
      objc_storeStrong(&v36, 0);
      objc_destroyWeak(v38);
    }

    else
    {
      [*(v54[0] + 9) postEvent:v44 withInfo:*(a1 + 32)];
    }

    objc_storeStrong(&v44, 0);
    v49 = 0;
  }

  objc_storeStrong(v54, 0);
  *MEMORY[0x277D85DE8];
}

void __68__SUUIMobileUpdateOperation_fsmAction_PresentTermsConditions_error___block_invoke_320(uint64_t a1, char a2, id obj)
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
    v11 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v21 = [v11 oslog];
    MEMORY[0x277D82BD8](v11);
    v20 = 16;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      log = v21;
      type = v20;
      v10 = NSStringFromSelector(*(a1 + 56));
      v19 = MEMORY[0x277D82BE0](v10);
      __os_log_helper_16_2_2_8_32_8_66(v27, "[SUUIMobileUpdateOperation fsmAction_PresentTermsConditions:error:]_block_invoke", v19);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v27, 0x16u);
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
    v7 = [MEMORY[0x277D64B58] updateOperationLogger];
    oslog = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v15;
      v6 = [*(a1 + 32) descriptor];
      v5 = [v6 updateName];
      v14 = MEMORY[0x277D82BE0](v5);
      __os_log_helper_16_2_4_8_32_8_66_4_0_8_66(v26, "[SUUIMobileUpdateOperation fsmAction_PresentTermsConditions:error:]_block_invoke", v14, v24 & 1, location);
      _os_log_impl(&dword_26B0B9000, v3, v4, "%s [->%{public}@]: Download options updated: %d, error = %{public}@", v26, 0x26u);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v14, 0);
    }

    objc_storeStrong(&oslog, 0);
    [*(v22[0] + 9) postEvent:*(a1 + 40) withInfo:*(a1 + 32)];
    v17 = 0;
  }

  objc_storeStrong(v22, 0);
  if (!v17)
  {
    v17 = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)fsmAction_ResolveUpdateOperation:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = a4;
  v25 = [(SUUIMobileUpdateOperation *)v33 updateFSM];
  v24 = [(SUCoreFSM *)v25 extendedStateQueue];
  dispatch_assert_queue_V2(v24);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  if (location[0])
  {
    v21 = [(SUUIMobileUpdateOperation *)v33 operationType];
    if (v21)
    {
      switch(v21)
      {
        case 1:
          v20 = [(SUUIMobileUpdateOperation *)v33 updateFSM];
          [(SUCoreFSM *)v20 postEvent:*MEMORY[0x277D64E48] withInfo:location[0]];
          MEMORY[0x277D82BD8](v20);
          break;
        case 2:
          v19 = [(SUUIMobileUpdateOperation *)v33 updateFSM];
          [(SUCoreFSM *)v19 postEvent:*MEMORY[0x277D64E38] withInfo:location[0]];
          MEMORY[0x277D82BD8](v19);
          break;
        case 3:
          v18 = [(SUUIMobileUpdateOperation *)v33 updateFSM];
          [(SUCoreFSM *)v18 postEvent:*MEMORY[0x277D64E40] withInfo:location[0]];
          MEMORY[0x277D82BD8](v18);
          break;
        case 4:
          v17 = [(SUUIMobileUpdateOperation *)v33 updateFSM];
          [(SUCoreFSM *)v17 postEvent:*MEMORY[0x277D64E58] withInfo:location[0]];
          MEMORY[0x277D82BD8](v17);
          break;
        case 5:
          v16 = [(SUUIMobileUpdateOperation *)v33 updateFSM];
          [(SUCoreFSM *)v16 postEvent:*MEMORY[0x277D64E50] withInfo:location[0]];
          MEMORY[0x277D82BD8](v16);
          break;
        default:
          goto LABEL_15;
      }

LABEL_18:
      v34 = 0;
      v30 = 1;
      goto LABEL_19;
    }

LABEL_15:
    v15 = [MEMORY[0x277D64B58] updateOperationLogger];
    v29 = [v15 oslog];
    MEMORY[0x277D82BD8](v15);
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      log = v29;
      type = v28;
      v14 = [location[0] descriptor];
      v13 = [v14 updateName];
      v9 = MEMORY[0x277D82BE0](v13);
      v27 = v9;
      [(SUUIMobileUpdateOperation *)v33 operationType];
      v12 = SUUIUpdateContinuousOperationTypeToString();
      v26 = MEMORY[0x277D82BE0](v12);
      __os_log_helper_16_2_4_8_32_8_66_8_66_8_2(v35, "[SUUIMobileUpdateOperation fsmAction_ResolveUpdateOperation:error:]", v9, v26, [(SUUIMobileUpdateOperation *)v33 operationType]);
      _os_log_impl(&dword_26B0B9000, log, type, "%s [->%{public}@]: Can not resovle unknown operation type: %{public}@ (%{public}ld)", v35, 0x2Au);
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v27, 0);
    }

    objc_storeStrong(&v29, 0);
    v5 = [SUUIMobileStatefulError alloc];
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:10 userInfo:0];
    v6 = [(SUUIStatefulError *)v5 initFromError:?];
    [location[0] setOperationError:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    v8 = [(SUUIMobileUpdateOperation *)v33 updateFSM];
    [(SUCoreFSM *)v8 postEvent:*MEMORY[0x277D64D10] withInfo:location[0]];
    MEMORY[0x277D82BD8](v8);
    goto LABEL_18;
  }

  v22 = [(SUCoreFSM *)v33->_updateFSM diag];
  [v22 trackAnomaly:@"[SUUIMobileUpdateOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:? withError:?];
  MEMORY[0x277D82BD8](v22);
  v34 = 8102;
  v30 = 1;
LABEL_19:
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v34;
}

- (int64_t)fsmAction_PresentDownloadConstraints:(id)a3 error:(id *)a4
{
  v108 = *MEMORY[0x277D85DE8];
  v99 = self;
  v98 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v96 = a4;
  v58 = [(SUUIMobileUpdateOperation *)v99 updateFSM];
  v57 = [(SUCoreFSM *)v58 extendedStateQueue];
  dispatch_assert_queue_V2(v57);
  MEMORY[0x277D82BD8](v57);
  MEMORY[0x277D82BD8](v58);
  if (location)
  {
    v55 = [location descriptor];
    v94 = [v55 underlyingDescriptor];
    MEMORY[0x277D82BD8](v55);
    v54 = [location currentDownload];
    v93 = [v54 underlyingDownload];
    MEMORY[0x277D82BD8](v54);
    v53 = MEMORY[0x277D64898];
    v52 = [v93 downloadOptions];
    v51 = [v52 activeDownloadPolicy];
    v92 = [v53 userDownloadPolicyForDescriptor:v94 existingPolicy:v51 allowCellularOverride:{-[SUUIMobileUpdateOperationOptions doesAllowUnrestrictedCellularDownload](v99->_options, "doesAllowUnrestrictedCellularDownload")}];
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v52);
    if ([(SUUIMobileUpdateOperation *)v99 deviceSupportsCellularCapability])
    {
      v88 = [MEMORY[0x277D648C0] sharedInstance];
      if (-[SUUIMobileUpdateOperationOptions clientIsBuddy](v99->_options, "clientIsBuddy") && ([v88 isBootstrap] & 1) != 0 && (objc_msgSend(v88, "isPathSatisfied") & 1) == 0)
      {
        v43 = [MEMORY[0x277D64B58] updateOperationLogger];
        v87 = [v43 oslog];
        MEMORY[0x277D82BD8](v43);
        v86 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
        {
          v42 = [location descriptor];
          v41 = [v42 updateName];
          v85 = MEMORY[0x277D82BE0](v41);
          __os_log_helper_16_2_2_8_32_8_66(v106, "[SUUIMobileUpdateOperation fsmAction_PresentDownloadConstraints:error:]", v85);
          _os_log_impl(&dword_26B0B9000, v87, v86, "%s [->%{public}@]: Can't download update in bootstrap network. Not prompting for cellular download acceptance", v106, 0x16u);
          MEMORY[0x277D82BD8](v41);
          MEMORY[0x277D82BD8](v42);
          objc_storeStrong(&v85, 0);
        }

        objc_storeStrong(&v87, 0);
        v40 = [location agreementStatusRegistry];
        v39 = [location descriptor];
        v38 = [v39 underlyingDescriptor];
        [v40 setAgreementStatus:0 type:1 forDescriptor:?];
        MEMORY[0x277D82BD8](v38);
        MEMORY[0x277D82BD8](v39);
        MEMORY[0x277D82BD8](v40);
        [location setCellularAgreementStatus:0];
        v37 = [(SUUIMobileUpdateOperation *)v99 updateFSM];
        [(SUCoreFSM *)v37 postEvent:*MEMORY[0x277D64D38] withInfo:location];
        MEMORY[0x277D82BD8](v37);
        v100 = 0;
        v95 = 1;
      }

      else
      {
        v84 = MGGetBoolAnswer();
        if (v84)
        {
          if ([v92 isDownloadAllowableForCellular])
          {
            if ([v88 currentNetworkType] == 1)
            {
              v22 = [MEMORY[0x277D64B58] updateOperationLogger];
              v77 = [v22 oslog];
              MEMORY[0x277D82BD8](v22);
              v76 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                v21 = [location descriptor];
                v20 = [v21 updateName];
                v75 = MEMORY[0x277D82BE0](v20);
                __os_log_helper_16_2_2_8_32_8_66(v103, "[SUUIMobileUpdateOperation fsmAction_PresentDownloadConstraints:error:]", v75);
                _os_log_impl(&dword_26B0B9000, v77, v76, "%s [->%{public}@]: Device is currently using Wi-Fi. Skipping on the download constraints acceptance step.", v103, 0x16u);
                MEMORY[0x277D82BD8](v20);
                MEMORY[0x277D82BD8](v21);
                objc_storeStrong(&v75, 0);
              }

              objc_storeStrong(&v77, 0);
              v19 = [location agreementStatusRegistry];
              v18 = [location descriptor];
              v17 = [v18 underlyingDescriptor];
              [v19 setAgreementStatus:0 type:1 forDescriptor:?];
              MEMORY[0x277D82BD8](v17);
              MEMORY[0x277D82BD8](v18);
              MEMORY[0x277D82BD8](v19);
              [location setCellularAgreementStatus:0];
              v16 = [(SUUIMobileUpdateOperation *)v99 updateFSM];
              [(SUCoreFSM *)v16 postEvent:*MEMORY[0x277D64D38] withInfo:location];
              MEMORY[0x277D82BD8](v16);
              v100 = 0;
              v95 = 1;
            }

            else if ([v92 is5GDownloadAllowed])
            {
              v15 = [MEMORY[0x277D64B58] updateOperationLogger];
              v74 = [v15 oslog];
              MEMORY[0x277D82BD8](v15);
              v73 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
              {
                v14 = [location descriptor];
                v13 = [v14 updateName];
                v72 = MEMORY[0x277D82BE0](v13);
                __os_log_helper_16_2_2_8_32_8_66(v102, "[SUUIMobileUpdateOperation fsmAction_PresentDownloadConstraints:error:]", v72);
                _os_log_impl(&dword_26B0B9000, v74, v73, "%s [->%{public}@]: Device is using inexpensive HDM. Skipping on the download constraints acceptance step.", v102, 0x16u);
                MEMORY[0x277D82BD8](v13);
                MEMORY[0x277D82BD8](v14);
                objc_storeStrong(&v72, 0);
              }

              objc_storeStrong(&v74, 0);
              v12 = [location agreementStatusRegistry];
              v11 = [location descriptor];
              v10 = [v11 underlyingDescriptor];
              [v12 setAgreementStatus:0 type:1 forDescriptor:?];
              MEMORY[0x277D82BD8](v10);
              MEMORY[0x277D82BD8](v11);
              MEMORY[0x277D82BD8](v12);
              [location setCellularAgreementStatus:0];
              v9 = [(SUUIMobileUpdateOperation *)v99 updateFSM];
              [(SUCoreFSM *)v9 postEvent:*MEMORY[0x277D64D38] withInfo:location];
              MEMORY[0x277D82BD8](v9);
              v100 = 0;
              v95 = 1;
            }

            else
            {
              v8 = [MEMORY[0x277D64B58] updateOperationLogger];
              v71 = [v8 oslog];
              MEMORY[0x277D82BD8](v8);
              v70 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
              {
                v7 = [location descriptor];
                v6 = [v7 updateName];
                v69 = MEMORY[0x277D82BE0](v6);
                __os_log_helper_16_2_3_8_32_8_66_8_66(v101, "[SUUIMobileUpdateOperation fsmAction_PresentDownloadConstraints:error:]", v69, v92);
                _os_log_impl(&dword_26B0B9000, v71, v70, "%s [->%{public}@]: Attempting to ask for download constraints approval for download policy: %{public}@", v101, 0x20u);
                MEMORY[0x277D82BD8](v6);
                MEMORY[0x277D82BD8](v7);
                objc_storeStrong(&v69, 0);
              }

              objc_storeStrong(&v71, 0);
              objc_initWeak(&from, v99);
              queue = [(SUUIMobileUpdateOperation *)v99 delegateCallbackQueue];
              v60 = MEMORY[0x277D85DD0];
              v61 = -1073741824;
              v62 = 0;
              v63 = __72__SUUIMobileUpdateOperation_fsmAction_PresentDownloadConstraints_error___block_invoke;
              v64 = &unk_279CCC7B0;
              objc_copyWeak(v67, &from);
              v67[1] = v98;
              v65 = MEMORY[0x277D82BE0](location);
              v66 = MEMORY[0x277D82BE0](v92);
              dispatch_async(queue, &v60);
              MEMORY[0x277D82BD8](queue);
              v100 = 0;
              v95 = 1;
              objc_storeStrong(&v66, 0);
              objc_storeStrong(&v65, 0);
              objc_destroyWeak(v67);
              objc_destroyWeak(&from);
            }
          }

          else
          {
            v29 = [MEMORY[0x277D64B58] updateOperationLogger];
            v80 = [v29 oslog];
            MEMORY[0x277D82BD8](v29);
            v79 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              v28 = [location descriptor];
              v27 = [v28 updateName];
              v78 = MEMORY[0x277D82BE0](v27);
              __os_log_helper_16_2_2_8_32_8_66(v104, "[SUUIMobileUpdateOperation fsmAction_PresentDownloadConstraints:error:]", v78);
              _os_log_impl(&dword_26B0B9000, v80, v79, "%s [->%{public}@]: The download policy does not support cellular capability. Skipping on the download constraints acceptance step.", v104, 0x16u);
              MEMORY[0x277D82BD8](v27);
              MEMORY[0x277D82BD8](v28);
              objc_storeStrong(&v78, 0);
            }

            objc_storeStrong(&v80, 0);
            v26 = [location agreementStatusRegistry];
            v25 = [location descriptor];
            v24 = [v25 underlyingDescriptor];
            [v26 setAgreementStatus:0 type:1 forDescriptor:?];
            MEMORY[0x277D82BD8](v24);
            MEMORY[0x277D82BD8](v25);
            MEMORY[0x277D82BD8](v26);
            [location setCellularAgreementStatus:0];
            v23 = [(SUUIMobileUpdateOperation *)v99 updateFSM];
            [(SUCoreFSM *)v23 postEvent:*MEMORY[0x277D64D38] withInfo:location];
            MEMORY[0x277D82BD8](v23);
            v100 = 0;
            v95 = 1;
          }
        }

        else
        {
          v36 = [MEMORY[0x277D64B58] updateOperationLogger];
          v83 = [v36 oslog];
          MEMORY[0x277D82BD8](v36);
          v82 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            v35 = [location descriptor];
            v34 = [v35 updateName];
            v81 = MEMORY[0x277D82BE0](v34);
            __os_log_helper_16_2_2_8_32_8_66(v105, "[SUUIMobileUpdateOperation fsmAction_PresentDownloadConstraints:error:]", v81);
            _os_log_impl(&dword_26B0B9000, v83, v82, "%s [->%{public}@]: MobileGestalt: The device does not support cellular capability. Skipping on the download constraints acceptance step.", v105, 0x16u);
            MEMORY[0x277D82BD8](v34);
            MEMORY[0x277D82BD8](v35);
            objc_storeStrong(&v81, 0);
          }

          objc_storeStrong(&v83, 0);
          v33 = [location agreementStatusRegistry];
          v32 = [location descriptor];
          v31 = [v32 underlyingDescriptor];
          [v33 setAgreementStatus:0 type:1 forDescriptor:?];
          MEMORY[0x277D82BD8](v31);
          MEMORY[0x277D82BD8](v32);
          MEMORY[0x277D82BD8](v33);
          [location setCellularAgreementStatus:0];
          v30 = [(SUUIMobileUpdateOperation *)v99 updateFSM];
          [(SUCoreFSM *)v30 postEvent:*MEMORY[0x277D64D38] withInfo:location];
          MEMORY[0x277D82BD8](v30);
          v100 = 0;
          v95 = 1;
        }
      }

      objc_storeStrong(&v88, 0);
    }

    else
    {
      v50 = [MEMORY[0x277D64B58] updateOperationLogger];
      oslog = [v50 oslog];
      MEMORY[0x277D82BD8](v50);
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v49 = [location descriptor];
        v48 = [v49 updateName];
        v89 = MEMORY[0x277D82BE0](v48);
        __os_log_helper_16_2_2_8_32_8_66(v107, "[SUUIMobileUpdateOperation fsmAction_PresentDownloadConstraints:error:]", v89);
        _os_log_impl(&dword_26B0B9000, oslog, type, "%s [->%{public}@]: CoreTelephony: The device does not support cellular capability. Skipping on the download constraints acceptance step.", v107, 0x16u);
        MEMORY[0x277D82BD8](v48);
        MEMORY[0x277D82BD8](v49);
        objc_storeStrong(&v89, 0);
      }

      objc_storeStrong(&oslog, 0);
      v47 = [location agreementStatusRegistry];
      v46 = [location descriptor];
      v45 = [v46 underlyingDescriptor];
      [v47 setAgreementStatus:0 type:1 forDescriptor:?];
      MEMORY[0x277D82BD8](v45);
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v47);
      [location setCellularAgreementStatus:0];
      v44 = [(SUUIMobileUpdateOperation *)v99 updateFSM];
      [(SUCoreFSM *)v44 postEvent:*MEMORY[0x277D64D38] withInfo:location];
      MEMORY[0x277D82BD8](v44);
      v100 = 0;
      v95 = 1;
    }

    objc_storeStrong(&v92, 0);
    objc_storeStrong(&v93, 0);
    objc_storeStrong(&v94, 0);
  }

  else
  {
    v56 = [(SUCoreFSM *)v99->_updateFSM diag];
    [v56 trackAnomaly:@"[SUUIMobileUpdateOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v56);
    v100 = 8102;
    v95 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v100;
}

void __72__SUUIMobileUpdateOperation_fsmAction_PresentDownloadConstraints_error___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v24[2] = a1;
  v24[1] = a1;
  v24[0] = objc_loadWeakRetained((a1 + 48));
  v8 = 0;
  if (!v24[0])
  {
    v7 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v23 = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v22 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(*(a1 + 56));
      location = MEMORY[0x277D82BE0](v6);
      __os_log_helper_16_2_2_8_32_8_66(v25, "[SUUIMobileUpdateOperation fsmAction_PresentDownloadConstraints:error:]_block_invoke", location);
      _os_log_error_impl(&dword_26B0B9000, v23, v22, "%s: Self is nil in %{public}@. Stopping.", v25, 0x16u);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&location, 0);
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
    v4 = *(v24[0] + 4);
    v5 = v24[0];
    v3 = [*(a1 + 32) descriptor];
    v1 = *(a1 + 40);
    v17 = 0;
    if (v1)
    {
      v18 = [[SUUIMobileDownloadPolicy alloc] initWithPolicy:*(a1 + 40)];
      v17 = 1;
      v2 = v18;
    }

    else
    {
      v2 = 0;
    }

    v10 = MEMORY[0x277D85DD0];
    v11 = -1073741824;
    v12 = 0;
    v13 = __72__SUUIMobileUpdateOperation_fsmAction_PresentDownloadConstraints_error___block_invoke_327;
    v14 = &unk_279CCC8A0;
    objc_copyWeak(v16, (a1 + 48));
    v16[1] = *(a1 + 56);
    v15 = MEMORY[0x277D82BE0](*(a1 + 32));
    [v4 operation:v5 requestApprovalForDownloadConstraints:v3 downloadPolicy:v2 replyHandler:&v10];
    if (v17)
    {
      MEMORY[0x277D82BD8](v18);
    }

    MEMORY[0x277D82BD8](v3);
    objc_storeStrong(&v15, 0);
    objc_destroyWeak(v16);
    v19 = 0;
  }

  objc_storeStrong(v24, 0);
  *MEMORY[0x277D85DE8];
}

void __72__SUUIMobileUpdateOperation_fsmAction_PresentDownloadConstraints_error___block_invoke_327(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = a1;
  v22 = a2;
  v21[1] = a1;
  v21[0] = objc_loadWeakRetained((a1 + 40));
  v7 = 0;
  if (!v21[0])
  {
    v6 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v20 = [v6 oslog];
    MEMORY[0x277D82BD8](v6);
    v19 = 16;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      log = v20;
      type = v19;
      v5 = NSStringFromSelector(*(a1 + 48));
      v18 = MEMORY[0x277D82BE0](v5);
      __os_log_helper_16_2_2_8_32_8_66(v24, "[SUUIMobileUpdateOperation fsmAction_PresentDownloadConstraints:error:]_block_invoke", v18);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v24, 0x16u);
      MEMORY[0x277D82BD8](v5);
      objc_storeStrong(&v18, 0);
    }

    objc_storeStrong(&v20, 0);
    v17 = 1;
    v7 = 1;
  }

  if (v7)
  {
    v16 = 1;
  }

  else
  {
    queue = *(v21[0] + 17);
    v9 = MEMORY[0x277D85DD0];
    v10 = -1073741824;
    v11 = 0;
    v12 = __72__SUUIMobileUpdateOperation_fsmAction_PresentDownloadConstraints_error___block_invoke_328;
    v13 = &unk_279CCC878;
    objc_copyWeak(v15, (a1 + 40));
    v15[1] = *(a1 + 48);
    v14 = MEMORY[0x277D82BE0](*(a1 + 32));
    v15[2] = v22;
    dispatch_async(queue, &v9);
    objc_storeStrong(&v14, 0);
    objc_destroyWeak(v15);
    v16 = 0;
  }

  objc_storeStrong(v21, 0);
  *MEMORY[0x277D85DE8];
}

void __72__SUUIMobileUpdateOperation_fsmAction_PresentDownloadConstraints_error___block_invoke_328(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v36[2] = a1;
  v36[1] = a1;
  v36[0] = objc_loadWeakRetained((a1 + 40));
  v21 = 0;
  if (!v36[0])
  {
    v20 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v35 = [v20 oslog];
    MEMORY[0x277D82BD8](v20);
    v34 = 16;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      log = v35;
      type = v34;
      v19 = NSStringFromSelector(*(a1 + 48));
      v33 = MEMORY[0x277D82BE0](v19);
      __os_log_helper_16_2_2_8_32_8_66(v38, "[SUUIMobileUpdateOperation fsmAction_PresentDownloadConstraints:error:]_block_invoke", v33);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v38, 0x16u);
      MEMORY[0x277D82BD8](v19);
      objc_storeStrong(&v33, 0);
    }

    objc_storeStrong(&v35, 0);
    v32 = 1;
    v21 = 1;
  }

  if (v21)
  {
    v31 = 1;
  }

  else
  {
    v16 = [MEMORY[0x277D64B58] updateOperationLogger];
    v30 = [v16 oslog];
    MEMORY[0x277D82BD8](v16);
    v29 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v30;
      v12 = v29;
      v15 = [*(a1 + 32) descriptor];
      v14 = [v15 updateName];
      v10 = MEMORY[0x277D82BE0](v14);
      v28 = v10;
      v1 = *(a1 + 56);
      v13 = SUUIUserInteractionResponseToString();
      v27 = MEMORY[0x277D82BE0](v13);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v37, "[SUUIMobileUpdateOperation fsmAction_PresentDownloadConstraints:error:]_block_invoke", v10, v27);
      _os_log_impl(&dword_26B0B9000, v11, v12, "%s [->%{public}@]: Download constraints approval request result: %{public}@", v37, 0x20u);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v28, 0);
    }

    objc_storeStrong(&v30, 0);
    if (*(a1 + 56))
    {
      v9 = [*(a1 + 32) agreementStatusRegistry];
      v8 = [*(a1 + 32) descriptor];
      v7 = [v8 underlyingDescriptor];
      [v9 setAgreementStatus:? type:? forDescriptor:?];
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      [*(a1 + 32) setCellularAgreementStatus:2];
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:9 userInfo:0];
      v25 = 0;
      v23 = 0;
      if (v6)
      {
        v5 = [SUUIMobileStatefulError alloc];
        v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:9 userInfo:0];
        v25 = 1;
        v24 = [(SUUIStatefulError *)v5 initFromError:?];
        v23 = 1;
        [*(a1 + 32) setOperationError:v24];
      }

      else
      {
        [*(a1 + 32) setOperationError:0];
      }

      if (v23)
      {
        MEMORY[0x277D82BD8](v24);
      }

      if (v25)
      {
        MEMORY[0x277D82BD8](v26);
      }

      MEMORY[0x277D82BD8](v6);
      [*(v36[0] + 9) postEvent:*MEMORY[0x277D64D40] withInfo:*(a1 + 32)];
      v31 = 1;
    }

    else
    {
      v4 = [*(a1 + 32) agreementStatusRegistry];
      v3 = [*(a1 + 32) descriptor];
      v2 = [v3 underlyingDescriptor];
      [v4 setAgreementStatus:? type:? forDescriptor:?];
      MEMORY[0x277D82BD8](v2);
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](v4);
      [*(a1 + 32) setCellularAgreementStatus:1];
      [*(v36[0] + 9) postEvent:*MEMORY[0x277D64D30] withInfo:*(a1 + 32)];
      v31 = 0;
    }
  }

  objc_storeStrong(v36, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)fsmAction_InitiateUpdateDownload:(id)a3 error:(id *)a4
{
  v29 = self;
  v28 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v26 = a4;
  v12 = [(SUUIMobileUpdateOperation *)v29 updateFSM];
  v11 = [(SUCoreFSM *)v12 extendedStateQueue];
  dispatch_assert_queue_V2(v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  if (location)
  {
    v7 = [location descriptor];
    v24 = [v7 underlyingDescriptor];
    MEMORY[0x277D82BD8](v7);
    v23 = [objc_alloc(MEMORY[0x277D64890]) initWithDescriptor:v24];
    v22 = [MEMORY[0x277D64898] userDownloadPolicyForDescriptor:v24 existingPolicy:0 allowCellularOverride:{-[SUUIMobileUpdateOperationOptions doesAllowUnrestrictedCellularDownload](v29->_options, "doesAllowUnrestrictedCellularDownload")}];
    v8 = [(SUUIMobileUpdateOperation *)v29 operationType];
    if (v8 != 1)
    {
      if (v8 != 3)
      {
LABEL_7:
        [v23 setActiveDownloadPolicy:v22];
        [v23 setDownloadFeeAgreementStatus:{objc_msgSend(location, "cellularAgreementStatus")}];
        [v23 setTermsAndConditionsAgreementStatus:1];
        objc_initWeak(&from, v29);
        v6 = [(SUUIMobileUpdateOperation *)v29 suClient];
        v5 = v23;
        v13 = MEMORY[0x277D85DD0];
        v14 = -1073741824;
        v15 = 0;
        v16 = __68__SUUIMobileUpdateOperation_fsmAction_InitiateUpdateDownload_error___block_invoke;
        v17 = &unk_279CCC850;
        objc_copyWeak(v20, &from);
        v20[1] = v28;
        v18 = MEMORY[0x277D82BE0](location);
        v19 = MEMORY[0x277D82BE0](v24);
        [(SUManagerClient *)v6 startDownloadWithOptions:v5 withResult:&v13];
        MEMORY[0x277D82BD8](v6);
        v30 = 0;
        v25 = 1;
        objc_storeStrong(&v19, 0);
        objc_storeStrong(&v18, 0);
        objc_destroyWeak(v20);
        objc_destroyWeak(&from);
        objc_storeStrong(&v22, 0);
        objc_storeStrong(&v23, 0);
        objc_storeStrong(&v24, 0);
        goto LABEL_8;
      }

      [v23 setUserUpdateTonight:1];
    }

    [v23 setDownloadOnly:1];
    goto LABEL_7;
  }

  v9 = [(SUCoreFSM *)v29->_updateFSM diag];
  [v9 trackAnomaly:@"[SUUIMobileUpdateOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:? withError:?];
  MEMORY[0x277D82BD8](v9);
  v30 = 8102;
  v25 = 1;
LABEL_8:
  objc_storeStrong(&location, 0);
  return v30;
}

void __68__SUUIMobileUpdateOperation_fsmAction_InitiateUpdateDownload_error___block_invoke(uint64_t a1, char a2, id obj)
{
  v55 = *MEMORY[0x277D85DE8];
  v51 = a1;
  v50 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v48[1] = a1;
  v48[0] = objc_loadWeakRetained((a1 + 48));
  v20 = 0;
  if (!v48[0])
  {
    v19 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v47 = [v19 oslog];
    MEMORY[0x277D82BD8](v19);
    v46 = 16;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      log = v47;
      type = v46;
      v16 = NSStringFromSelector(*(a1 + 56));
      v45 = MEMORY[0x277D82BE0](v16);
      __os_log_helper_16_2_2_8_32_8_66(v54, "[SUUIMobileUpdateOperation fsmAction_InitiateUpdateDownload:error:]_block_invoke", v45);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v54, 0x16u);
      MEMORY[0x277D82BD8](v16);
      objc_storeStrong(&v45, 0);
    }

    objc_storeStrong(&v47, 0);
    v44 = 1;
    v20 = 1;
  }

  if (v20)
  {
    v43 = 1;
  }

  else
  {
    v15 = [MEMORY[0x277D64B58] updateOperationLogger];
    v42 = [v15 oslog];
    MEMORY[0x277D82BD8](v15);
    v41 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v42;
      v14 = v41;
      v12 = [*(a1 + 32) descriptor];
      v11 = [v12 updateName];
      v40 = MEMORY[0x277D82BE0](v11);
      __os_log_helper_16_2_4_8_32_8_66_4_0_8_66(v53, "[SUUIMobileUpdateOperation fsmAction_InitiateUpdateDownload:error:]_block_invoke", v40, v50 & 1, location);
      _os_log_impl(&dword_26B0B9000, v13, v14, "%s [->%{public}@]: Initiated the update download. Successfully started: %d; error: %{public}@", v53, 0x26u);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      objc_storeStrong(&v40, 0);
    }

    objc_storeStrong(&v42, 0);
    if ([v48[0] shouldConsiderErrorAsSuccessfulCase:location])
    {
      v50 = 1;
    }

    else if (location)
    {
      v39 = [(SUUIStatefulError *)[SUUIMobileStatefulError alloc] initFromError:location];
      v38 = 1;
      [*(a1 + 32) setOperationError:v39];
      MEMORY[0x277D82BD8](v39);
    }

    [*(a1 + 32) setDownloadStartedSuccessfully:v50 & 1];
    if (v50)
    {
      v3 = *(v48[0] + 10);
      v22 = MEMORY[0x277D85DD0];
      v23 = -1073741824;
      v24 = 0;
      v25 = __68__SUUIMobileUpdateOperation_fsmAction_InitiateUpdateDownload_error___block_invoke_330;
      v26 = &unk_279CCC8C8;
      objc_copyWeak(v30, (a1 + 48));
      v30[1] = *(a1 + 56);
      v27 = MEMORY[0x277D82BE0](*(a1 + 32));
      v28 = MEMORY[0x277D82BE0](location);
      v29 = MEMORY[0x277D82BE0](*(a1 + 40));
      [v3 download:&v22];
      objc_storeStrong(&v29, 0);
      objc_storeStrong(&v28, 0);
      objc_storeStrong(&v27, 0);
      objc_destroyWeak(v30);
      v43 = 0;
    }

    else
    {
      v10 = [*(a1 + 32) operationError];
      MEMORY[0x277D82BD8](v10);
      if (!v10)
      {
        v9 = [MEMORY[0x277D64B58] updateOperationLogger];
        v37 = [v9 oslog];
        MEMORY[0x277D82BD8](v9);
        v36 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v37;
          v7 = [*(a1 + 32) descriptor];
          v6 = [v7 updateName];
          v35 = MEMORY[0x277D82BE0](v6);
          __os_log_helper_16_2_4_8_32_8_66_4_0_8_66(v52, "[SUUIMobileUpdateOperation fsmAction_InitiateUpdateDownload:error:]_block_invoke", v35, v50 & 1, location);
          _os_log_impl(&dword_26B0B9000, v8, v36, "%s [->%{public}@]: The download attempt has failed but there's no error assigned to it. result: %d; startDownloadError: %{public}@", v52, 0x26u);
          MEMORY[0x277D82BD8](v6);
          MEMORY[0x277D82BD8](v7);
          objc_storeStrong(&v35, 0);
        }

        objc_storeStrong(&v37, 0);
        v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:-1 userInfo:0];
        v33 = 0;
        v31 = 0;
        if (v5)
        {
          v4 = [SUUIMobileStatefulError alloc];
          v34 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:-1 userInfo:0];
          v33 = 1;
          v32 = [(SUUIStatefulError *)v4 initFromError:?];
          v31 = 1;
          [*(a1 + 32) setOperationError:v32];
        }

        else
        {
          [*(a1 + 32) setOperationError:0];
        }

        if (v31)
        {
          MEMORY[0x277D82BD8](v32);
        }

        if (v33)
        {
          MEMORY[0x277D82BD8](v34);
        }

        MEMORY[0x277D82BD8](v5);
      }

      [*(v48[0] + 9) postEvent:*MEMORY[0x277D64E10] withInfo:*(a1 + 32)];
      v43 = 1;
    }
  }

  objc_storeStrong(v48, 0);
  if (!v43)
  {
    v43 = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __68__SUUIMobileUpdateOperation_fsmAction_InitiateUpdateDownload_error___block_invoke_330(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v37 = 0;
  objc_storeStrong(&v37, a3);
  v36[1] = a1;
  v36[0] = objc_loadWeakRetained((a1 + 56));
  v20 = 0;
  if (!v36[0])
  {
    v19 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v35 = [v19 oslog];
    MEMORY[0x277D82BD8](v19);
    v34 = 16;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      log = v35;
      type = v34;
      v18 = NSStringFromSelector(*(a1 + 64));
      v33 = MEMORY[0x277D82BE0](v18);
      __os_log_helper_16_2_2_8_32_8_66(v41, "[SUUIMobileUpdateOperation fsmAction_InitiateUpdateDownload:error:]_block_invoke", v33);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v41, 0x16u);
      MEMORY[0x277D82BD8](v18);
      objc_storeStrong(&v33, 0);
    }

    objc_storeStrong(&v35, 0);
    v32 = 1;
    v20 = 1;
  }

  if (v20)
  {
    v31 = 1;
  }

  else
  {
    v15 = [MEMORY[0x277D64B58] updateOperationLogger];
    v30 = [v15 oslog];
    MEMORY[0x277D82BD8](v15);
    v29 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v30;
      v12 = v29;
      v14 = [*(a1 + 32) descriptor];
      v13 = [v14 updateName];
      v28 = MEMORY[0x277D82BE0](v13);
      __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v40, "[SUUIMobileUpdateOperation fsmAction_InitiateUpdateDownload:error:]_block_invoke", v28, location[0], v37);
      _os_log_impl(&dword_26B0B9000, v11, v12, "%s [->%{public}@]: Received the newly created download object: %{public}@; error: %{public}@", v40, 0x2Au);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      objc_storeStrong(&v28, 0);
    }

    objc_storeStrong(&v30, 0);
    if (!location[0] && (([v36[0] shouldConsiderErrorAsSuccessfulCase:*(a1 + 40)] & 1) != 0 || (objc_msgSend(v36[0], "shouldConsiderErrorAsSuccessfulCase:", v37) & 1) != 0))
    {
      v3 = [[SUUIMobileUninitializedDownload alloc] initWithDescriptor:*(a1 + 48)];
      v4 = location[0];
      location[0] = v3;
      MEMORY[0x277D82BD8](v4);
      v10 = [MEMORY[0x277D64B58] updateOperationLogger];
      oslog = [v10 oslog];
      MEMORY[0x277D82BD8](v10);
      v26 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v6 = oslog;
        v7 = v26;
        v9 = [*(a1 + 32) descriptor];
        v8 = [v9 updateName];
        v25 = MEMORY[0x277D82BE0](v8);
        __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v39, "[SUUIMobileUpdateOperation fsmAction_InitiateUpdateDownload:error:]_block_invoke", v25, v37, location[0]);
        _os_log_impl(&dword_26B0B9000, v6, v7, "%s [->%{public}@]: Received a nil download and SUErrorCodeDownloadInProgress error (%{public}@) - assigned SUDownloadUninitialized to the download object: %{public}@", v39, 0x2Au);
        MEMORY[0x277D82BD8](v8);
        MEMORY[0x277D82BD8](v9);
        objc_storeStrong(&v25, 0);
      }

      objc_storeStrong(&oslog, 0);
    }

    v23 = 0;
    if (location[0])
    {
      v5 = [SUUIMobileDownload alloc];
      v24 = [(SUUIMobileDownload *)v5 initWithDownload:location[0]];
      v23 = 1;
      [*(a1 + 32) setCurrentDownload:v24];
    }

    else
    {
      [*(a1 + 32) setCurrentDownload:0];
    }

    if (v23)
    {
      MEMORY[0x277D82BD8](v24);
    }

    if (*(v36[0] + 7) == 3)
    {
      [*(v36[0] + 9) postEvent:*MEMORY[0x277D64E18] withInfo:*(a1 + 32)];
      v31 = 1;
    }

    else
    {
      [*(v36[0] + 9) postEvent:*MEMORY[0x277D64E20] withInfo:*(a1 + 32)];
      v31 = 0;
    }
  }

  objc_storeStrong(v36, 0);
  if (!v31)
  {
    v31 = 0;
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)fsmAction_InitiateUpdateInstallation:(id)a3 error:(id *)a4
{
  v24 = self;
  v23 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v21 = a4;
  v10 = [(SUUIMobileUpdateOperation *)v24 updateFSM];
  v9 = [(SUCoreFSM *)v10 extendedStateQueue];
  dispatch_assert_queue_V2(v9);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  if (location)
  {
    v19 = objc_alloc_init(MEMORY[0x277D648A0]);
    [v19 setIgnorableConstraints:{+[SUUIMobileScanOperation installationIgnorableConstraints](SUUIMobileScanOperation, "installationIgnorableConstraints")}];
    objc_initWeak(&from, v24);
    v6 = [(SUUIMobileUpdateOperation *)v24 suClient];
    v5 = v19;
    v11 = MEMORY[0x277D85DD0];
    v12 = -1073741824;
    v13 = 0;
    v14 = __72__SUUIMobileUpdateOperation_fsmAction_InitiateUpdateInstallation_error___block_invoke;
    v15 = &unk_279CCC738;
    objc_copyWeak(v17, &from);
    v17[1] = v23;
    v16 = MEMORY[0x277D82BE0](location);
    [(SUManagerClient *)v6 installUpdateWithInstallOptions:v5 withResult:&v11];
    MEMORY[0x277D82BD8](v6);
    v25 = 0;
    v20 = 1;
    objc_storeStrong(&v16, 0);
    objc_destroyWeak(v17);
    objc_destroyWeak(&from);
    objc_storeStrong(&v19, 0);
  }

  else
  {
    v7 = [(SUCoreFSM *)v24->_updateFSM diag];
    [v7 trackAnomaly:@"[SUUIMobileUpdateOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:? withError:?];
    MEMORY[0x277D82BD8](v7);
    v25 = 8102;
    v20 = 1;
  }

  objc_storeStrong(&location, 0);
  return v25;
}

void __72__SUUIMobileUpdateOperation_fsmAction_InitiateUpdateInstallation_error___block_invoke(uint64_t a1, char a2, id obj)
{
  v56 = *MEMORY[0x277D85DE8];
  v51 = a1;
  v50 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v48[1] = a1;
  v48[0] = objc_loadWeakRetained((a1 + 40));
  v26 = 0;
  if (!v48[0])
  {
    v25 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v47 = [v25 oslog];
    MEMORY[0x277D82BD8](v25);
    v46 = 16;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      log = v47;
      type = v46;
      v24 = NSStringFromSelector(*(a1 + 48));
      v45 = MEMORY[0x277D82BE0](v24);
      __os_log_helper_16_2_2_8_32_8_66(v55, "[SUUIMobileUpdateOperation fsmAction_InitiateUpdateInstallation:error:]_block_invoke", v45);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v55, 0x16u);
      MEMORY[0x277D82BD8](v24);
      objc_storeStrong(&v45, 0);
    }

    objc_storeStrong(&v47, 0);
    v44 = 1;
    v26 = 1;
  }

  if (v26)
  {
    v43 = 1;
  }

  else
  {
    v21 = [MEMORY[0x277D64B58] updateOperationLogger];
    v42 = [v21 oslog];
    MEMORY[0x277D82BD8](v21);
    v41 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v42;
      v17 = v41;
      v20 = [*(a1 + 32) descriptor];
      v19 = [v20 updateName];
      v15 = MEMORY[0x277D82BE0](v19);
      v40 = v15;
      v52 = v50 & 1;
      if (v50)
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      v14 = v3;
      v4 = v3;
      v18 = v14;
      v39 = MEMORY[0x277D82BE0](v18);
      __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v54, "[SUUIMobileUpdateOperation fsmAction_InitiateUpdateInstallation:error:]_block_invoke", v15, v39, location);
      _os_log_impl(&dword_26B0B9000, v16, v17, "%s [->%{public}@]: Finished to request installation from SUS: %{public}@; error: %{public}@", v54, 0x2Au);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v20);
      objc_storeStrong(&v39, 0);
      objc_storeStrong(&v40, 0);
    }

    objc_storeStrong(&v42, 0);
    [*(a1 + 32) setInstallInitiatedSuccessfully:v50 & 1];
    if (([v48[0] shouldConsiderErrorAsSuccessfulCase:location] & 1) == 0)
    {
      v37 = 0;
      if (location)
      {
        v38 = [(SUUIStatefulError *)[SUUIMobileStatefulError alloc] initFromError:location];
        v37 = 1;
        [*(a1 + 32) setOperationError:v38];
      }

      else
      {
        [*(a1 + 32) setOperationError:0];
      }

      if (v37)
      {
        MEMORY[0x277D82BD8](v38);
      }
    }

    v35 = 0;
    v13 = 0;
    if ((v50 & 1) == 0)
    {
      v36 = [*(a1 + 32) operationError];
      v35 = 1;
      v13 = v36 == 0;
    }

    if (v35)
    {
      MEMORY[0x277D82BD8](v36);
    }

    if (v13)
    {
      v12 = [MEMORY[0x277D64B58] updateOperationLogger];
      oslog = [v12 oslog];
      MEMORY[0x277D82BD8](v12);
      v33 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v8 = oslog;
        v9 = v33;
        v11 = [*(a1 + 32) descriptor];
        v10 = [v11 updateName];
        v32 = MEMORY[0x277D82BE0](v10);
        __os_log_helper_16_2_4_8_32_8_66_4_0_8_66(v53, "[SUUIMobileUpdateOperation fsmAction_InitiateUpdateInstallation:error:]_block_invoke", v32, v50 & 1, location);
        _os_log_impl(&dword_26B0B9000, v8, v9, "%s [->%{public}@]: The installation attempt has failed but there's no error assigned to it. result: %d; installationError: %{public}@", v53, 0x26u);
        MEMORY[0x277D82BD8](v10);
        MEMORY[0x277D82BD8](v11);
        objc_storeStrong(&v32, 0);
      }

      objc_storeStrong(&oslog, 0);
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:-1 userInfo:0];
      v30 = 0;
      v28 = 0;
      if (v7)
      {
        v6 = [SUUIMobileStatefulError alloc];
        v31 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:-1 userInfo:0];
        v30 = 1;
        v29 = [(SUUIStatefulError *)v6 initFromError:?];
        v28 = 1;
        [*(a1 + 32) setOperationError:v29];
      }

      else
      {
        [*(a1 + 32) setOperationError:0];
      }

      if (v28)
      {
        MEMORY[0x277D82BD8](v29);
      }

      if (v30)
      {
        MEMORY[0x277D82BD8](v31);
      }

      MEMORY[0x277D82BD8](v7);
    }

    v5 = *(v48[0] + 9);
    if (v50)
    {
      [v5 postEvent:*MEMORY[0x277D64E30] withInfo:*(a1 + 32)];
    }

    else
    {
      [v5 postEvent:*MEMORY[0x277D64E28] withInfo:*(a1 + 32)];
    }

    v43 = 0;
  }

  objc_storeStrong(v48, 0);
  if (!v43)
  {
    v43 = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)fsmAction_ScheduleUpdate:(id)a3 error:(id *)a4
{
  v22 = self;
  v21 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v19 = a4;
  v9 = [(SUUIMobileUpdateOperation *)v22 updateFSM];
  v8 = [(SUCoreFSM *)v9 extendedStateQueue];
  dispatch_assert_queue_V2(v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  if (location)
  {
    objc_initWeak(&from, v22);
    v5 = [(SUUIMobileUpdateOperation *)v22 suClient];
    v10 = MEMORY[0x277D85DD0];
    v11 = -1073741824;
    v12 = 0;
    v13 = __60__SUUIMobileUpdateOperation_fsmAction_ScheduleUpdate_error___block_invoke;
    v14 = &unk_279CCC918;
    objc_copyWeak(v16, &from);
    v16[1] = v21;
    v15 = MEMORY[0x277D82BE0](location);
    [(SUManagerClient *)v5 currentAutoInstallOperation:1 withResult:&v10];
    MEMORY[0x277D82BD8](v5);
    v23 = 0;
    v18 = 1;
    objc_storeStrong(&v15, 0);
    objc_destroyWeak(v16);
    objc_destroyWeak(&from);
  }

  else
  {
    v6 = [(SUCoreFSM *)v22->_updateFSM diag];
    [v6 trackAnomaly:@"[SUUIMobileUpdateOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:? withError:?];
    MEMORY[0x277D82BD8](v6);
    v23 = 8102;
    v18 = 1;
  }

  objc_storeStrong(&location, 0);
  return v23;
}

void __60__SUUIMobileUpdateOperation_fsmAction_ScheduleUpdate_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v35 = 0;
  objc_storeStrong(&v35, a3);
  v34[1] = a1;
  v34[0] = objc_loadWeakRetained((a1 + 40));
  v12 = 0;
  if (!v34[0])
  {
    v11 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v33 = [v11 oslog];
    MEMORY[0x277D82BD8](v11);
    v32 = 16;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      log = v33;
      type = v32;
      v8 = NSStringFromSelector(*(a1 + 48));
      v31 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_2_8_32_8_66(v38, "[SUUIMobileUpdateOperation fsmAction_ScheduleUpdate:error:]_block_invoke", v31);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v38, 0x16u);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v31, 0);
    }

    objc_storeStrong(&v33, 0);
    v30 = 1;
    v12 = 1;
  }

  if (v12)
  {
    v29 = 1;
  }

  else
  {
    v7 = [MEMORY[0x277D64B58] updateOperationLogger];
    v28 = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) descriptor];
      v5 = [v6 updateName];
      v26 = MEMORY[0x277D82BE0](v5);
      __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v37, "[SUUIMobileUpdateOperation fsmAction_ScheduleUpdate:error:]_block_invoke", v26, location[0], v35);
      _os_log_impl(&dword_26B0B9000, v28, v27, "%s [->%{public}@]: Operation aquired from currentAutoInstallOperation: %{public}@; error: %{public}@", v37, 0x2Au);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v26, 0);
    }

    objc_storeStrong(&v28, 0);
    if (location[0] && !v35)
    {
      v3 = *(v34[0] + 10);
      v4 = location[0];
      v15 = MEMORY[0x277D85DD0];
      v16 = -1073741824;
      v17 = 0;
      v18 = __60__SUUIMobileUpdateOperation_fsmAction_ScheduleUpdate_error___block_invoke_334;
      v19 = &unk_279CCC8F0;
      objc_copyWeak(v23, (a1 + 40));
      v23[1] = *(a1 + 48);
      v20 = MEMORY[0x277D82BE0](*(a1 + 32));
      v21 = MEMORY[0x277D82BE0](location[0]);
      v22 = MEMORY[0x277D82BE0](v35);
      [v3 _consentAutoInstallOperation:v4 withResult:&v15];
      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v20, 0);
      objc_destroyWeak(v23);
      v29 = 0;
    }

    else
    {
      [*(a1 + 32) setUpdateScheduledSuccessfully:0];
      v24 = 0;
      if (v35)
      {
        v25 = [(SUUIStatefulError *)[SUUIMobileStatefulError alloc] initFromError:v35];
        v24 = 1;
        [*(a1 + 32) setScheduleError:v25];
      }

      else
      {
        [*(a1 + 32) setScheduleError:0];
      }

      if (v24)
      {
        MEMORY[0x277D82BD8](v25);
      }

      [*(v34[0] + 9) postEvent:*MEMORY[0x277D64E60] withInfo:*(a1 + 32)];
      v29 = 1;
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

void __60__SUUIMobileUpdateOperation_fsmAction_ScheduleUpdate_error___block_invoke_334(uint64_t a1, char a2, id obj)
{
  v34 = *MEMORY[0x277D85DE8];
  v31 = a1;
  v30 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v28[1] = a1;
  v28[0] = objc_loadWeakRetained((a1 + 56));
  v16 = 0;
  if (!v28[0])
  {
    v15 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v27 = [v15 oslog];
    MEMORY[0x277D82BD8](v15);
    v26 = 16;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      log = v27;
      type = v26;
      v14 = NSStringFromSelector(*(a1 + 64));
      v25 = MEMORY[0x277D82BE0](v14);
      __os_log_helper_16_2_2_8_32_8_66(v33, "[SUUIMobileUpdateOperation fsmAction_ScheduleUpdate:error:]_block_invoke", v25);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v33, 0x16u);
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
    v11 = [MEMORY[0x277D64B58] updateOperationLogger];
    v22 = [v11 oslog];
    MEMORY[0x277D82BD8](v11);
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v22;
      v8 = v21;
      v10 = [*(a1 + 32) descriptor];
      v9 = [v10 updateName];
      v20 = MEMORY[0x277D82BE0](v9);
      __os_log_helper_16_2_4_8_32_8_66_4_0_8_66(v32, "[SUUIMobileUpdateOperation fsmAction_ScheduleUpdate:error:]_block_invoke", v20, v30 & 1, location);
      _os_log_impl(&dword_26B0B9000, v7, v8, "%s [->%{public}@]: Consent aquired: %d; error: %{public}@", v32, 0x26u);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v20, 0);
    }

    objc_storeStrong(&v22, 0);
    v6 = 0;
    if (v30)
    {
      v6 = *(a1 + 40) != 0;
    }

    [*(a1 + 32) setUpdateScheduledSuccessfully:v6];
    v5 = [*(a1 + 32) scheduleError];
    v18 = 0;
    if (v5)
    {
      [*(a1 + 32) setScheduleError:v5];
    }

    else
    {
      if (*(a1 + 48))
      {
        v19 = [(SUUIStatefulError *)[SUUIMobileStatefulError alloc] initFromError:*(a1 + 48)];
        v18 = 1;
        v4 = v19;
      }

      else
      {
        v4 = 0;
      }

      [*(a1 + 32) setScheduleError:v4];
    }

    if (v18)
    {
      MEMORY[0x277D82BD8](v19);
    }

    MEMORY[0x277D82BD8](v5);
    if (*(a1 + 40))
    {
      if (v30)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }

      [*(a1 + 40) setAgreementStatus:v3];
      [*(a1 + 32) setAutoInstallOperation:*(a1 + 40)];
      [*(v28[0] + 9) postEvent:*MEMORY[0x277D64E68] withInfo:*(a1 + 32)];
    }

    else
    {
      [*(v28[0] + 9) postEvent:*MEMORY[0x277D64E60] withInfo:*(a1 + 32)];
    }

    v23 = 0;
  }

  objc_storeStrong(v28, 0);
  if (!v23)
  {
    v23 = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)fsmAction_ReportUpdateOperationOutcome:(id)a3 error:(id *)a4
{
  v102 = *MEMORY[0x277D85DE8];
  v94 = self;
  v93 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v91 = a4;
  v34 = [(SUUIMobileUpdateOperation *)v94 updateFSM];
  v33 = [(SUCoreFSM *)v34 extendedStateQueue];
  dispatch_assert_queue_V2(v33);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  if (location)
  {
    v89[0] = 3;
    p_lock = &v94->_lock;
    v96 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v89[1] = p_lock;
    v87 = 0;
    v31 = 0;
    if ([location createdKeybag])
    {
      v30 = 1;
      if (!v94->_canceled)
      {
        v88 = [location operationError];
        v87 = 1;
        v30 = v88 != 0;
      }

      v31 = v30;
    }

    if (v87)
    {
      MEMORY[0x277D82BD8](v88);
    }

    if (v31)
    {
      v29 = [MEMORY[0x277D64B58] updateOperationLogger];
      oslog = [v29 oslog];
      MEMORY[0x277D82BD8](v29);
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [location descriptor];
        v25 = [v28 updateName];
        v26 = MEMORY[0x277D82BE0](v25);
        v84 = v26;
        if (v94->_canceled)
        {
          v4 = @"YES";
        }

        else
        {
          v4 = @"NO";
        }

        v27 = v4;
        v5 = v4;
        v24 = v27;
        v83 = MEMORY[0x277D82BE0](v24);
        v23 = [location operationError];
        __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v101, "[SUUIMobileUpdateOperation fsmAction_ReportUpdateOperationOutcome:error:]", v26, v83, v23);
        _os_log_impl(&dword_26B0B9000, oslog, type, "%s [->%{public}@]: A keybag was created during the update attempt, but the update operation did not finish with success result. Destroying the keybag.\ncanceled? %{public}@; operationError: %{public}@", v101, 0x2Au);
        MEMORY[0x277D82BD8](v23);
        MEMORY[0x277D82BD8](v24);
        MEMORY[0x277D82BD8](v25);
        MEMORY[0x277D82BD8](v28);
        objc_storeStrong(&v83, 0);
        objc_storeStrong(&v84, 0);
      }

      objc_storeStrong(&oslog, 0);
      v22 = [(SUUIMobileUpdateOperation *)v94 suClient];
      [(SUManagerClient *)v22 destroyInstallationKeybag];
      MEMORY[0x277D82BD8](v22);
    }

    if (v94->_canceled)
    {
      [location setDownloadStartedSuccessfully:0];
      [location setInstallInitiatedSuccessfully:0];
      [location setUpdateScheduledSuccessfully:0];
      v6 = *MEMORY[0x277D64910];
      v81 = 0;
      v79 = 0;
      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:v6 code:16 userInfo:0];
      if (v21)
      {
        v20 = [SUUIMobileStatefulError alloc];
        v82 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:16 userInfo:0];
        v81 = 1;
        v80 = [(SUUIStatefulError *)v20 initFromError:?];
        v79 = 1;
        v19 = v80;
      }

      else
      {
        v19 = 0;
      }

      [location setOperationError:v19];
      if (v79)
      {
        MEMORY[0x277D82BD8](v80);
      }

      if (v81)
      {
        MEMORY[0x277D82BD8](v82);
      }

      MEMORY[0x277D82BD8](v21);
      objc_initWeak(&from, v94);
      queue = v94->_completionQueue;
      block = MEMORY[0x277D85DD0];
      v73 = -1073741824;
      v74 = 0;
      v75 = __74__SUUIMobileUpdateOperation_fsmAction_ReportUpdateOperationOutcome_error___block_invoke;
      v76 = &unk_279CCC6E8;
      objc_copyWeak(v77, &from);
      v77[1] = v93;
      dispatch_async(queue, &block);
      objc_destroyWeak(v77);
      objc_destroyWeak(&from);
    }

    operationType = v94->_operationType;
    if ((operationType - 1) <= 1)
    {
      objc_initWeak(&v71, v94);
      completionQueue = v94->_completionQueue;
      v64 = MEMORY[0x277D85DD0];
      v65 = -1073741824;
      v66 = 0;
      v67 = __74__SUUIMobileUpdateOperation_fsmAction_ReportUpdateOperationOutcome_error___block_invoke_336;
      v68 = &unk_279CCBD58;
      objc_copyWeak(v70, &v71);
      v70[1] = v93;
      v69 = MEMORY[0x277D82BE0](location);
      dispatch_async(completionQueue, &v64);
      objc_storeStrong(&v69, 0);
      objc_destroyWeak(v70);
      objc_destroyWeak(&v71);
    }

    else
    {
      switch(operationType)
      {
        case 3:
          objc_initWeak(&v63, v94);
          v15 = v94->_completionQueue;
          v56 = MEMORY[0x277D85DD0];
          v57 = -1073741824;
          v58 = 0;
          v59 = __74__SUUIMobileUpdateOperation_fsmAction_ReportUpdateOperationOutcome_error___block_invoke_338;
          v60 = &unk_279CCBD58;
          objc_copyWeak(v62, &v63);
          v62[1] = v93;
          v61 = MEMORY[0x277D82BE0](location);
          dispatch_async(v15, &v56);
          objc_storeStrong(&v61, 0);
          objc_destroyWeak(v62);
          objc_destroyWeak(&v63);
          break;
        case 4:
          objc_initWeak(&v55, v94);
          v14 = v94->_completionQueue;
          v48 = MEMORY[0x277D85DD0];
          v49 = -1073741824;
          v50 = 0;
          v51 = __74__SUUIMobileUpdateOperation_fsmAction_ReportUpdateOperationOutcome_error___block_invoke_340;
          v52 = &unk_279CCBD58;
          objc_copyWeak(v54, &v55);
          v54[1] = v93;
          v53 = MEMORY[0x277D82BE0](location);
          dispatch_async(v14, &v48);
          objc_storeStrong(&v53, 0);
          objc_destroyWeak(v54);
          objc_destroyWeak(&v55);
          break;
        case 5:
          objc_initWeak(&v47, v94);
          v13 = v94->_completionQueue;
          v40 = MEMORY[0x277D85DD0];
          v41 = -1073741824;
          v42 = 0;
          v43 = __74__SUUIMobileUpdateOperation_fsmAction_ReportUpdateOperationOutcome_error___block_invoke_342;
          v44 = &unk_279CCBD58;
          objc_copyWeak(v46, &v47);
          v46[1] = v93;
          v45 = MEMORY[0x277D82BE0](location);
          dispatch_async(v13, &v40);
          objc_storeStrong(&v45, 0);
          objc_destroyWeak(v46);
          objc_destroyWeak(&v47);
          break;
        default:
          v12 = [MEMORY[0x277D64B58] updateOperationLogger];
          v39 = [v12 oslog];
          MEMORY[0x277D82BD8](v12);
          v38 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [location descriptor];
            v10 = [v11 updateName];
            v37 = MEMORY[0x277D82BE0](v10);
            [(SUUIMobileUpdateOperation *)v94 operationType];
            v9 = SUUIUpdateContinuousOperationTypeToString();
            v36 = MEMORY[0x277D82BE0](v9);
            __os_log_helper_16_2_4_8_32_8_66_8_66_8_2(v100, "[SUUIMobileUpdateOperation fsmAction_ReportUpdateOperationOutcome:error:]", v37, v36, [(SUUIMobileUpdateOperation *)v94 operationType]);
            _os_log_impl(&dword_26B0B9000, v39, v38, "%s [->%{public}@]: Unknown operation type: %{public}@ (%{public}ld)", v100, 0x2Au);
            MEMORY[0x277D82BD8](v9);
            MEMORY[0x277D82BD8](v10);
            MEMORY[0x277D82BD8](v11);
            objc_storeStrong(&v36, 0);
            objc_storeStrong(&v37, 0);
          }

          objc_storeStrong(&v39, 0);
          break;
      }
    }

    v95 = 0;
    v90 = 1;
    v98 = v89;
    switch(v89[0])
    {
      case 1:
        [v98[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v98[1]);
        break;
      case 3:
        v7 = v98[1];
        os_unfair_recursive_lock_unlock();
        break;
    }

    if (v90 == 4)
    {
      v90 = 0;
    }
  }

  else
  {
    v32 = [(SUCoreFSM *)v94->_updateFSM diag];
    [v32 trackAnomaly:@"[SUUIMobileUpdateOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v32);
    v95 = 8102;
    v90 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v95;
}

void __74__SUUIMobileUpdateOperation_fsmAction_ReportUpdateOperationOutcome_error___block_invoke(uint64_t a1)
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
      __os_log_helper_16_2_2_8_32_8_66(v14, "[SUUIMobileUpdateOperation fsmAction_ReportUpdateOperationOutcome:error:]_block_invoke", v10);
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
    v7 = MEMORY[0x26D66ED00](*(v13[0] + 14));
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

void __74__SUUIMobileUpdateOperation_fsmAction_ReportUpdateOperationOutcome_error___block_invoke_336(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v19[2] = a1;
  v19[1] = a1;
  v19[0] = objc_loadWeakRetained((a1 + 40));
  v8 = 0;
  if (!v19[0])
  {
    v7 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v18 = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v17 = 16;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      log = v18;
      type = v17;
      v6 = NSStringFromSelector(*(a1 + 48));
      v16 = MEMORY[0x277D82BE0](v6);
      __os_log_helper_16_2_2_8_32_8_66(v20, "[SUUIMobileUpdateOperation fsmAction_ReportUpdateOperationOutcome:error:]_block_invoke", v16);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v20, 0x16u);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v16, 0);
    }

    objc_storeStrong(&v18, 0);
    v15 = 1;
    v8 = 1;
  }

  if (v8)
  {
    v14 = 1;
  }

  else
  {
    v2 = objc_alloc(MEMORY[0x277D64BB0]);
    v1 = [*(a1 + 32) downloadStartedSuccessfully];
    v3 = [*(a1 + 32) currentDownload];
    v13 = [v2 initWithResult:v1 download:?];
    MEMORY[0x277D82BD8](v3);
    v12 = MEMORY[0x26D66ED00](*(v19[0] + 11));
    v10 = 0;
    if (v12)
    {
      v11 = [*(a1 + 32) operationError];
      v10 = 1;
      (*(v12 + 2))(v12, v13);
    }

    if (v10)
    {
      MEMORY[0x277D82BD8](v11);
    }

    objc_storeStrong(&v12, 0);
    [v19[0] invalidateMachine];
    objc_storeStrong(&v13, 0);
    v14 = 0;
  }

  objc_storeStrong(v19, 0);
  *MEMORY[0x277D85DE8];
}

void __74__SUUIMobileUpdateOperation_fsmAction_ReportUpdateOperationOutcome_error___block_invoke_338(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v21[2] = a1;
  v21[1] = a1;
  v21[0] = objc_loadWeakRetained((a1 + 40));
  v10 = 0;
  if (!v21[0])
  {
    v9 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v20 = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    v19 = 16;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      log = v20;
      type = v19;
      v8 = NSStringFromSelector(*(a1 + 48));
      v18 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_2_8_32_8_66(v22, "[SUUIMobileUpdateOperation fsmAction_ReportUpdateOperationOutcome:error:]_block_invoke", v18);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v22, 0x16u);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v18, 0);
    }

    objc_storeStrong(&v20, 0);
    v17 = 1;
    v10 = 1;
  }

  if (v10)
  {
    v16 = 1;
  }

  else
  {
    v3 = [SUUIMobileUpdateOperationDownloadAndScheduleResults alloc];
    v1 = [*(a1 + 32) downloadStartedSuccessfully];
    v2 = [*(a1 + 32) updateScheduledSuccessfully];
    v5 = [*(a1 + 32) currentDownload];
    v4 = [*(a1 + 32) autoInstallOperation];
    v15 = [(SUUIMobileUpdateOperationDownloadAndScheduleResults *)v3 initWithResult:v1 andScheduleResult:v2 download:v5 currentAutoInstallOperation:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    v14 = MEMORY[0x26D66ED00](*(v21[0] + 12));
    v12 = 0;
    if (v14)
    {
      v13 = [*(a1 + 32) operationError];
      v12 = 1;
      (*(v14 + 2))(v14, v15);
    }

    if (v12)
    {
      MEMORY[0x277D82BD8](v13);
    }

    objc_storeStrong(&v14, 0);
    [v21[0] invalidateMachine];
    objc_storeStrong(&v15, 0);
    v16 = 0;
  }

  objc_storeStrong(v21, 0);
  *MEMORY[0x277D85DE8];
}

void __74__SUUIMobileUpdateOperation_fsmAction_ReportUpdateOperationOutcome_error___block_invoke_340(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v19[2] = a1;
  v19[1] = a1;
  v19[0] = objc_loadWeakRetained((a1 + 40));
  v8 = 0;
  if (!v19[0])
  {
    v7 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v18 = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v17 = 16;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      log = v18;
      type = v17;
      v6 = NSStringFromSelector(*(a1 + 48));
      v16 = MEMORY[0x277D82BE0](v6);
      __os_log_helper_16_2_2_8_32_8_66(v20, "[SUUIMobileUpdateOperation fsmAction_ReportUpdateOperationOutcome:error:]_block_invoke", v16);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v20, 0x16u);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v16, 0);
    }

    objc_storeStrong(&v18, 0);
    v15 = 1;
    v8 = 1;
  }

  if (v8)
  {
    v14 = 1;
  }

  else
  {
    v2 = [SUUIMobileUpdateOperationScheduleResults alloc];
    v1 = [*(a1 + 32) updateScheduledSuccessfully];
    v3 = [*(a1 + 32) autoInstallOperation];
    v13 = [(SUUIMobileUpdateOperationScheduleResults *)v2 initWithResult:v1 currentAutoInstallOperation:?];
    MEMORY[0x277D82BD8](v3);
    v12 = MEMORY[0x26D66ED00](*(v19[0] + 13));
    v10 = 0;
    if (v12)
    {
      v11 = [*(a1 + 32) operationError];
      v10 = 1;
      (*(v12 + 2))(v12, v13);
    }

    if (v10)
    {
      MEMORY[0x277D82BD8](v11);
    }

    objc_storeStrong(&v12, 0);
    [v19[0] invalidateMachine];
    objc_storeStrong(&v13, 0);
    v14 = 0;
  }

  objc_storeStrong(v19, 0);
  *MEMORY[0x277D85DE8];
}

void __74__SUUIMobileUpdateOperation_fsmAction_ReportUpdateOperationOutcome_error___block_invoke_342(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v16[2] = a1;
  v16[1] = a1;
  v16[0] = objc_loadWeakRetained((a1 + 40));
  v5 = 0;
  if (!v16[0])
  {
    v4 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v15 = [v4 oslog];
    MEMORY[0x277D82BD8](v4);
    v14 = 16;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      log = v15;
      type = v14;
      v3 = NSStringFromSelector(*(a1 + 48));
      v13 = MEMORY[0x277D82BE0](v3);
      __os_log_helper_16_2_2_8_32_8_66(v17, "[SUUIMobileUpdateOperation fsmAction_ReportUpdateOperationOutcome:error:]_block_invoke", v13);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v17, 0x16u);
      MEMORY[0x277D82BD8](v3);
      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&v15, 0);
    v12 = 1;
    v5 = 1;
  }

  if (v5)
  {
    v11 = 1;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277D64BB8]) initWithResult:{objc_msgSend(*(a1 + 32), "installInitiatedSuccessfully")}];
    v9 = MEMORY[0x26D66ED00](*(v16[0] + 15));
    v7 = 0;
    if (v9)
    {
      v8 = [*(a1 + 32) operationError];
      v7 = 1;
      (*(v9 + 2))(v9, v10);
    }

    if (v7)
    {
      MEMORY[0x277D82BD8](v8);
    }

    objc_storeStrong(&v9, 0);
    [v16[0] invalidateMachine];
    objc_storeStrong(&v10, 0);
    v11 = 0;
  }

  objc_storeStrong(v16, 0);
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
  v11 = [(SUUIMobileUpdateOperation *)v18 updateFSM];
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
  v14 = [(SUUIMobileUpdateOperation *)v18 updateFSM];
  v13 = [(SUCoreFSM *)v14 diag];
  v6 = [v15 code];
  [v13 trackAnomaly:@"[SUUIMobileUpdateOperation]" forReason:@"Scan FSM has reported an anomaly" withResult:v6 withError:v15];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (SUUIMobileUpdateOperation)initWithIdentifier:(id)a3 options:(id)a4 usingSUManagerClient:(id)a5 delegateCallbackQueue:(id)a6 withCompletionQueue:(id)a7
{
  v56 = *MEMORY[0x277D85DE8];
  v51 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v49 = 0;
  objc_storeStrong(&v49, a4);
  v48 = 0;
  objc_storeStrong(&v48, a5);
  v47 = 0;
  objc_storeStrong(&v47, a6);
  v46 = 0;
  objc_storeStrong(&v46, a7);
  v7 = v51;
  v51 = 0;
  v45.receiver = v7;
  v45.super_class = SUUIMobileUpdateOperation;
  v39 = [(SUUIMobileUpdateOperation *)&v45 init];
  v51 = v39;
  objc_storeStrong(&v51, v39);
  if (!v39)
  {
    goto LABEL_8;
  }

  v54 = MGCopyAnswer();
  v29 = v54;
  v8 = v54;
  v44 = v29;
  v53 = MGCopyAnswer();
  v30 = v53;
  v9 = v53;
  v43 = v30;
  v31 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = objc_opt_class();
  v32 = NSStringFromClass(v10);
  v42 = [v31 initWithFormat:@"%@:[(%@, %@)]", v32, v44, v43];
  MEMORY[0x277D82BD8](v32);
  objc_storeStrong(v51 + 3, location[0]);
  v41[1] = 0;
  *(v51 + 1) = 0;
  objc_storeStrong(v51 + 10, v48);
  v11 = [objc_opt_class() _generateStateTable];
  v12 = *(v51 + 18);
  *(v51 + 18) = v11;
  MEMORY[0x277D82BD8](v12);
  *(v51 + 7) = 0;
  v33 = objc_alloc(MEMORY[0x277D64458]);
  v34 = [v51 stateTable];
  v13 = [v33 initMachine:v42 withTable:v34 startingIn:*MEMORY[0x277D64E88] usingDelegate:v51 registeringAllInfoClass:objc_opt_class()];
  v14 = *(v51 + 9);
  *(v51 + 9) = v13;
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v34);
  if (*(v51 + 9))
  {
    v22 = MEMORY[0x277CCACA8];
    v24 = [v51 baseDomain];
    v23 = [v22 stringWithFormat:@"%@.requests-queue", v24];
    v15 = v23;
    v16 = dispatch_queue_create([v23 UTF8String], 0);
    v17 = *(v51 + 16);
    *(v51 + 16) = v16;
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    v25 = MEMORY[0x277CCACA8];
    v27 = [v51 baseDomain];
    v26 = [v25 stringWithFormat:@"%@.work-queue", v27];
    v18 = v26;
    v19 = dispatch_queue_create([v26 UTF8String], 0);
    v20 = *(v51 + 17);
    *(v51 + 17) = v19;
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    objc_storeStrong(v51 + 6, v47);
    objc_storeStrong(v51 + 5, v46);
    v40 = 0;
  }

  else
  {
    v28 = [MEMORY[0x277D64B58] updateOperationLogger];
    v41[0] = [v28 oslog];
    MEMORY[0x277D82BD8](v28);
    if (os_log_type_enabled(v41[0], OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_2_1_8_32(v55, "[SUUIMobileUpdateOperation initWithIdentifier:options:usingSUManagerClient:delegateCallbackQueue:withCompletionQueue:]");
      _os_log_fault_impl(&dword_26B0B9000, v41[0], OS_LOG_TYPE_FAULT, "%s: Failed creating the update FSM", v55, 0xCu);
    }

    objc_storeStrong(v41, 0);
    v52 = 0;
    v40 = 1;
  }

  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  if (!v40)
  {
LABEL_8:
    v52 = MEMORY[0x277D82BE0](v51);
  }

  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v51, 0);
  *MEMORY[0x277D85DE8];
  return v52;
}

- (void)downloadUpdate:(id)a3 withContext:(id)a4 delegate:(id)a5 completionHandler:(id)a6
{
  v49 = *MEMORY[0x277D85DE8];
  v44 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v42 = 0;
  objc_storeStrong(&v42, a4);
  v41 = 0;
  objc_storeStrong(&v41, a5);
  v40 = 0;
  objc_storeStrong(&v40, a6);
  v24 = [MEMORY[0x277D64B58] updateOperationLogger];
  v39 = [v24 oslog];
  MEMORY[0x277D82BD8](v24);
  v38 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [location[0] updateName];
    v37 = MEMORY[0x277D82BE0](v23);
    __os_log_helper_16_2_2_8_32_8_66(v48, "[SUUIMobileUpdateOperation downloadUpdate:withContext:delegate:completionHandler:]", v37);
    _os_log_impl(&dword_26B0B9000, v39, v38, "%s: Initiating an update operation (Download Only) to target: %{public}@", v48, 0x16u);
    MEMORY[0x277D82BD8](v23);
    objc_storeStrong(&v37, 0);
  }

  objc_storeStrong(&v39, 0);
  v36[0] = 3;
  p_lock = &v44->_lock;
  v45 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v36[1] = p_lock;
  if (v44->_operationType)
  {
    v22 = [(SUCoreFSM *)v44->_updateFSM diag];
    [v22 trackAnomaly:@"[SUUIMobileUpdateOperation]" forReason:@"This update machine is currently process another scan request. Queuing requests is not currently supported." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v22);
    v20 = v40;
    v21 = [SUUIMobileStatefulError alloc];
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:-1 userInfo:0];
    v19 = [(SUUIStatefulError *)v21 initFromError:?];
    v20[2](v20, 0, v19);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v18);
    v35 = 1;
  }

  else
  {
    v33 = MEMORY[0x277D82BE0](v42);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      _suui_precondition_failure_with_format();
      __break(1u);
    }

    v32 = MEMORY[0x277D82BE0](v33);
    objc_storeStrong(&v33, 0);
    v34 = v32;
    v17 = MEMORY[0x26D66ED00](v40);
    downloadUpdateCompletion = v44->_downloadUpdateCompletion;
    v44->_downloadUpdateCompletion = v17;
    MEMORY[0x277D82BD8](downloadUpdateCompletion);
    objc_storeStrong(&v44->_delegate, v41);
    v15 = v44;
    v16 = [v34 unattendedPurge];
    v14 = location[0];
    v12 = [v34 agreementStatusRegistry];
    v13 = [(SUUIMobileUpdateOperation *)v15 beginOperation:1 ofUnattendedPurge:v16 andUnattendedInstall:0 descriptor:v14 agreementStatusRegistry:?];
    MEMORY[0x277D82BD8](v12);
    if (!v13)
    {
      v11 = v40;
      v30 = 0;
      v28 = 0;
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:8102 userInfo:0];
      if (v10)
      {
        v9 = [SUUIMobileStatefulError alloc];
        v31 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:8102 userInfo:0];
        v30 = 1;
        v29 = [(SUUIStatefulError *)v9 initFromError:?];
        v28 = 1;
        v8 = v29;
      }

      else
      {
        v8 = 0;
      }

      v11[2](v11, 0, v8);
      if (v28)
      {
        MEMORY[0x277D82BD8](v29);
      }

      if (v30)
      {
        MEMORY[0x277D82BD8](v31);
      }

      MEMORY[0x277D82BD8](v10);
    }

    objc_storeStrong(&v34, 0);
    v35 = 4;
  }

  v47 = v36;
  switch(v36[0])
  {
    case 1:
      [v47[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v47[1]);
      break;
    case 3:
      v7 = v47[1];
      os_unfair_recursive_lock_unlock();
      break;
  }

  if (v35 == 4)
  {
    v35 = 0;
  }

  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)downloadAndInstallUpdate:(id)a3 withContext:(id)a4 delegate:(id)a5 completionHandler:(id)a6
{
  v49 = *MEMORY[0x277D85DE8];
  v44 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v42 = 0;
  objc_storeStrong(&v42, a4);
  v41 = 0;
  objc_storeStrong(&v41, a5);
  v40 = 0;
  objc_storeStrong(&v40, a6);
  v24 = [MEMORY[0x277D64B58] updateOperationLogger];
  v39 = [v24 oslog];
  MEMORY[0x277D82BD8](v24);
  v38 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [location[0] updateName];
    v37 = MEMORY[0x277D82BE0](v23);
    __os_log_helper_16_2_2_8_32_8_66(v48, "[SUUIMobileUpdateOperation downloadAndInstallUpdate:withContext:delegate:completionHandler:]", v37);
    _os_log_impl(&dword_26B0B9000, v39, v38, "%s: Initiating an update operation (Download and Install) to target: %{public}@", v48, 0x16u);
    MEMORY[0x277D82BD8](v23);
    objc_storeStrong(&v37, 0);
  }

  objc_storeStrong(&v39, 0);
  v36[0] = 3;
  p_lock = &v44->_lock;
  v45 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v36[1] = p_lock;
  if (v44->_operationType)
  {
    v22 = [(SUCoreFSM *)v44->_updateFSM diag];
    [v22 trackAnomaly:@"[SUUIMobileUpdateOperation]" forReason:@"This update machine is currently process another scan request. Queuing requests is not currently supported." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v22);
    v20 = v40;
    v21 = [SUUIMobileStatefulError alloc];
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:-1 userInfo:0];
    v19 = [(SUUIStatefulError *)v21 initFromError:?];
    v20[2](v20, 0, v19);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v18);
    v35 = 1;
  }

  else
  {
    v33 = MEMORY[0x277D82BE0](v42);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      _suui_precondition_failure_with_format();
      __break(1u);
    }

    v32 = MEMORY[0x277D82BE0](v33);
    objc_storeStrong(&v33, 0);
    v34 = v32;
    v17 = MEMORY[0x26D66ED00](v40);
    downloadUpdateCompletion = v44->_downloadUpdateCompletion;
    v44->_downloadUpdateCompletion = v17;
    MEMORY[0x277D82BD8](downloadUpdateCompletion);
    objc_storeStrong(&v44->_delegate, v41);
    v15 = v44;
    v16 = [v34 unattendedPurge];
    v14 = location[0];
    v12 = [v34 agreementStatusRegistry];
    v13 = [(SUUIMobileUpdateOperation *)v15 beginOperation:2 ofUnattendedPurge:v16 andUnattendedInstall:1 descriptor:v14 agreementStatusRegistry:?];
    MEMORY[0x277D82BD8](v12);
    if (!v13)
    {
      v11 = v40;
      v30 = 0;
      v28 = 0;
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:8102 userInfo:0];
      if (v10)
      {
        v9 = [SUUIMobileStatefulError alloc];
        v31 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:8102 userInfo:0];
        v30 = 1;
        v29 = [(SUUIStatefulError *)v9 initFromError:?];
        v28 = 1;
        v8 = v29;
      }

      else
      {
        v8 = 0;
      }

      v11[2](v11, 0, v8);
      if (v28)
      {
        MEMORY[0x277D82BD8](v29);
      }

      if (v30)
      {
        MEMORY[0x277D82BD8](v31);
      }

      MEMORY[0x277D82BD8](v10);
    }

    objc_storeStrong(&v34, 0);
    v35 = 4;
  }

  v47 = v36;
  switch(v36[0])
  {
    case 1:
      [v47[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v47[1]);
      break;
    case 3:
      v7 = v47[1];
      os_unfair_recursive_lock_unlock();
      break;
  }

  if (v35 == 4)
  {
    v35 = 0;
  }

  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)downloadAndScheduleUpdate:(id)a3 forInstallationTonightWithContext:(id)a4 delegate:(id)a5 completionHandler:(id)a6
{
  v49 = *MEMORY[0x277D85DE8];
  v44 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v42 = 0;
  objc_storeStrong(&v42, a4);
  v41 = 0;
  objc_storeStrong(&v41, a5);
  v40 = 0;
  objc_storeStrong(&v40, a6);
  v24 = [MEMORY[0x277D64B58] updateOperationLogger];
  v39 = [v24 oslog];
  MEMORY[0x277D82BD8](v24);
  v38 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [location[0] updateName];
    v37 = MEMORY[0x277D82BE0](v23);
    __os_log_helper_16_2_2_8_32_8_66(v48, "[SUUIMobileUpdateOperation downloadAndScheduleUpdate:forInstallationTonightWithContext:delegate:completionHandler:]", v37);
    _os_log_impl(&dword_26B0B9000, v39, v38, "%s: Initiating an update operation (Update Tonight) to target: %{public}@", v48, 0x16u);
    MEMORY[0x277D82BD8](v23);
    objc_storeStrong(&v37, 0);
  }

  objc_storeStrong(&v39, 0);
  v36[0] = 3;
  p_lock = &v44->_lock;
  v45 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v36[1] = p_lock;
  if (v44->_operationType)
  {
    v22 = [(SUCoreFSM *)v44->_updateFSM diag];
    [v22 trackAnomaly:@"[SUUIMobileUpdateOperation]" forReason:@"This update machine is currently process another scan request. Queuing requests is not currently supported." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v22);
    v20 = v40;
    v21 = [SUUIMobileStatefulError alloc];
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:-1 userInfo:0];
    v19 = [(SUUIStatefulError *)v21 initFromError:?];
    v20[2](v20, 0, v19);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v18);
    v35 = 1;
  }

  else
  {
    v33 = MEMORY[0x277D82BE0](v42);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      _suui_precondition_failure_with_format();
      __break(1u);
    }

    v32 = MEMORY[0x277D82BE0](v33);
    objc_storeStrong(&v33, 0);
    v34 = v32;
    v17 = MEMORY[0x26D66ED00](v40);
    downloadAndScheduleCompletion = v44->_downloadAndScheduleCompletion;
    v44->_downloadAndScheduleCompletion = v17;
    MEMORY[0x277D82BD8](downloadAndScheduleCompletion);
    objc_storeStrong(&v44->_delegate, v41);
    v15 = v44;
    v16 = [v34 unattendedPurge];
    v14 = location[0];
    v12 = [v34 agreementStatusRegistry];
    v13 = [(SUUIMobileUpdateOperation *)v15 beginOperation:3 ofUnattendedPurge:v16 andUnattendedInstall:1 descriptor:v14 agreementStatusRegistry:?];
    MEMORY[0x277D82BD8](v12);
    if (!v13)
    {
      v11 = v40;
      v30 = 0;
      v28 = 0;
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:8102 userInfo:0];
      if (v10)
      {
        v9 = [SUUIMobileStatefulError alloc];
        v31 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:8102 userInfo:0];
        v30 = 1;
        v29 = [(SUUIStatefulError *)v9 initFromError:?];
        v28 = 1;
        v8 = v29;
      }

      else
      {
        v8 = 0;
      }

      v11[2](v11, 0, v8);
      if (v28)
      {
        MEMORY[0x277D82BD8](v29);
      }

      if (v30)
      {
        MEMORY[0x277D82BD8](v31);
      }

      MEMORY[0x277D82BD8](v10);
    }

    objc_storeStrong(&v34, 0);
    v35 = 4;
  }

  v47 = v36;
  switch(v36[0])
  {
    case 1:
      [v47[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v47[1]);
      break;
    case 3:
      v7 = v47[1];
      os_unfair_recursive_lock_unlock();
      break;
  }

  if (v35 == 4)
  {
    v35 = 0;
  }

  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)installUpdate:(id)a3 withContext:(id)a4 delegate:(id)a5 completionHandler:(id)a6
{
  v49 = *MEMORY[0x277D85DE8];
  v44 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v42 = 0;
  objc_storeStrong(&v42, a4);
  v41 = 0;
  objc_storeStrong(&v41, a5);
  v40 = 0;
  objc_storeStrong(&v40, a6);
  v24 = [MEMORY[0x277D64B58] updateOperationLogger];
  v39 = [v24 oslog];
  MEMORY[0x277D82BD8](v24);
  v38 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [location[0] updateName];
    v37 = MEMORY[0x277D82BE0](v23);
    __os_log_helper_16_2_2_8_32_8_66(v48, "[SUUIMobileUpdateOperation installUpdate:withContext:delegate:completionHandler:]", v37);
    _os_log_impl(&dword_26B0B9000, v39, v38, "%s: Initiating an install operation (Install Now) to target: %{public}@", v48, 0x16u);
    MEMORY[0x277D82BD8](v23);
    objc_storeStrong(&v37, 0);
  }

  objc_storeStrong(&v39, 0);
  v36[0] = 3;
  p_lock = &v44->_lock;
  v45 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v36[1] = p_lock;
  if (v44->_operationType)
  {
    v22 = [(SUCoreFSM *)v44->_updateFSM diag];
    [v22 trackAnomaly:@"[SUUIMobileUpdateOperation]" forReason:@"This update machine is currently process another scan request. Queuing requests is not currently supported." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v22);
    v20 = v40;
    v21 = [SUUIMobileStatefulError alloc];
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:-1 userInfo:0];
    v19 = [(SUUIStatefulError *)v21 initFromError:?];
    v20[2](v20, 0, v19);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v18);
    v35 = 1;
  }

  else
  {
    v33 = MEMORY[0x277D82BE0](v42);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      _suui_precondition_failure_with_format();
      __break(1u);
    }

    v32 = MEMORY[0x277D82BE0](v33);
    objc_storeStrong(&v33, 0);
    v34 = v32;
    v17 = MEMORY[0x26D66ED00](v40);
    installCompletion = v44->_installCompletion;
    v44->_installCompletion = v17;
    MEMORY[0x277D82BD8](installCompletion);
    objc_storeStrong(&v44->_delegate, v41);
    v15 = v44;
    v16 = [v34 unattendedPurge];
    v14 = location[0];
    v12 = [v34 agreementStatusRegistry];
    v13 = [(SUUIMobileUpdateOperation *)v15 beginOperation:5 ofUnattendedPurge:v16 andUnattendedInstall:1 descriptor:v14 agreementStatusRegistry:?];
    MEMORY[0x277D82BD8](v12);
    if (!v13)
    {
      v11 = v40;
      v30 = 0;
      v28 = 0;
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:8102 userInfo:0];
      if (v10)
      {
        v9 = [SUUIMobileStatefulError alloc];
        v31 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:8102 userInfo:0];
        v30 = 1;
        v29 = [(SUUIStatefulError *)v9 initFromError:?];
        v28 = 1;
        v8 = v29;
      }

      else
      {
        v8 = 0;
      }

      v11[2](v11, 0, v8);
      if (v28)
      {
        MEMORY[0x277D82BD8](v29);
      }

      if (v30)
      {
        MEMORY[0x277D82BD8](v31);
      }

      MEMORY[0x277D82BD8](v10);
    }

    objc_storeStrong(&v34, 0);
    v35 = 4;
  }

  v47 = v36;
  switch(v36[0])
  {
    case 1:
      [v47[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v47[1]);
      break;
    case 3:
      v7 = v47[1];
      os_unfair_recursive_lock_unlock();
      break;
  }

  if (v35 == 4)
  {
    v35 = 0;
  }

  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)promoteDownloadToUserInitiated:(id)a3 withContext:(id)a4 delegate:(id)a5 completionHandler:(id)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v44 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v42 = 0;
  objc_storeStrong(&v42, a4);
  v41 = 0;
  objc_storeStrong(&v41, a5);
  v40 = 0;
  objc_storeStrong(&v40, a6);
  if (location[0])
  {
    v15 = [MEMORY[0x277D64B58] updateOperationLogger];
    v36 = [v15 oslog];
    MEMORY[0x277D82BD8](v15);
    v35 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v36;
      v12 = v35;
      v14 = [location[0] descriptor];
      v13 = [v14 updateName];
      v34 = MEMORY[0x277D82BE0](v13);
      __os_log_helper_16_2_2_8_32_8_66(v45, "[SUUIMobileUpdateOperation promoteDownloadToUserInitiated:withContext:delegate:completionHandler:]", v34);
      _os_log_impl(&dword_26B0B9000, v11, v12, "%s: Initiating an update operation (Install once Downloaded) to target: %{public}@", v45, 0x16u);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      objc_storeStrong(&v34, 0);
    }

    objc_storeStrong(&v36, 0);
    v32 = MEMORY[0x277D82BE0](location[0]);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      _suui_precondition_failure_with_format();
    }

    v31 = MEMORY[0x277D82BE0](v32);
    objc_storeStrong(&v32, 0);
    v33 = v31;
    v7 = [v31 underlyingDownload];
    v6 = [v7 downloadOptions];
    [v6 setAutoDownload:0];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    v10 = [(SUUIMobileUpdateOperation *)v44 suClient];
    v9 = [v33 underlyingDownload];
    v8 = [v9 downloadOptions];
    v24 = MEMORY[0x277D85DD0];
    v25 = -1073741824;
    v26 = 0;
    v27 = __99__SUUIMobileUpdateOperation_promoteDownloadToUserInitiated_withContext_delegate_completionHandler___block_invoke;
    v28 = &unk_279CCC940;
    v30 = MEMORY[0x277D82BE0](v40);
    v29 = MEMORY[0x277D82BE0](v33);
    [(SUManagerClient *)v10 updateDownloadOptions:v8 withResult:&v24];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v33, 0);
    v37 = 0;
  }

  else
  {
    v20 = [MEMORY[0x277D64B58] updateOperationLogger];
    v39 = [v20 oslog];
    MEMORY[0x277D82BD8](v20);
    v38 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v46, "[SUUIMobileUpdateOperation promoteDownloadToUserInitiated:withContext:delegate:completionHandler:]");
      _os_log_error_impl(&dword_26B0B9000, v39, v38, "%s: Can not promote the initial status of a nil targeted update.", v46, 0xCu);
    }

    objc_storeStrong(&v39, 0);
    v17 = v40;
    v16 = [SUUIMobileStatefulError alloc];
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:-1 userInfo:?];
    v18 = [(SUUIStatefulError *)v16 initFromError:?];
    v17[2](v17, 0);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    v37 = 1;
  }

  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __99__SUUIMobileUpdateOperation_promoteDownloadToUserInitiated_withContext_delegate_completionHandler___block_invoke(void *a1, char a2, id obj)
{
  v29 = *MEMORY[0x277D85DE8];
  v26 = a1;
  v25 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v23[1] = a1;
  v11 = [MEMORY[0x277D64B58] updateOperationLogger];
  v23[0] = [v11 oslog];
  MEMORY[0x277D82BD8](v11);
  v22 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v23[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v23[0];
    type = v22;
    v27 = v25 & 1;
    if (v25)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v7 = v3;
    v4 = v3;
    v10 = v7;
    v21 = MEMORY[0x277D82BE0](v10);
    __os_log_helper_16_2_3_8_32_8_66_8_66(v28, "[SUUIMobileUpdateOperation promoteDownloadToUserInitiated:withContext:delegate:completionHandler:]_block_invoke", v21, location);
    _os_log_impl(&dword_26B0B9000, log, type, "%s: User-Promotion result: %{public}@; error: %{public}@", v28, 0x20u);
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v21, 0);
  }

  objc_storeStrong(v23, 0);
  if (location)
  {
    v20 = MEMORY[0x26D66ED00](a1[5]);
    v18 = 0;
    if (v20)
    {
      if (location)
      {
        v5 = [SUUIMobileStatefulError alloc];
        v19 = [(SUUIStatefulError *)v5 initFromError:location];
        v18 = 1;
        (*(v20 + 2))(v20, 0, v19);
      }

      else
      {
        (*(v20 + 2))(v20, 0, 0);
      }

      v17 = 0;
    }

    else
    {
      v16 = 0;
    }

    if (v18)
    {
      MEMORY[0x277D82BD8](v19);
    }

    objc_storeStrong(&v20, 0);
  }

  else
  {
    v15 = MEMORY[0x26D66ED00](a1[5]);
    v13 = 0;
    if (v15)
    {
      v6 = objc_alloc(MEMORY[0x277D64BD0]);
      v14 = [v6 initWithResult:v25 & 1 download:a1[4]];
      v13 = 1;
      (*(v15 + 2))();
    }

    if (v13)
    {
      MEMORY[0x277D82BD8](v14);
    }

    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)scheduleUpdate:(id)a3 forInstallationTonightWithContext:(id)a4 delegate:(id)a5 completionHandler:(id)a6
{
  v49 = *MEMORY[0x277D85DE8];
  v44 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v42 = 0;
  objc_storeStrong(&v42, a4);
  v41 = 0;
  objc_storeStrong(&v41, a5);
  v40 = 0;
  objc_storeStrong(&v40, a6);
  v24 = [MEMORY[0x277D64B58] updateOperationLogger];
  v39 = [v24 oslog];
  MEMORY[0x277D82BD8](v24);
  v38 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [location[0] updateName];
    v37 = MEMORY[0x277D82BE0](v23);
    __os_log_helper_16_2_2_8_32_8_66(v48, "[SUUIMobileUpdateOperation scheduleUpdate:forInstallationTonightWithContext:delegate:completionHandler:]", v37);
    _os_log_impl(&dword_26B0B9000, v39, v38, "%s: Initiating a schedule operation (Install Tonight) of target: %{public}@", v48, 0x16u);
    MEMORY[0x277D82BD8](v23);
    objc_storeStrong(&v37, 0);
  }

  objc_storeStrong(&v39, 0);
  v36[0] = 3;
  p_lock = &v44->_lock;
  v45 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v36[1] = p_lock;
  if (v44->_operationType)
  {
    v22 = [(SUCoreFSM *)v44->_updateFSM diag];
    [v22 trackAnomaly:@"[SUUIMobileUpdateOperation]" forReason:@"This update machine is currently process another scan request. Queuing requests is not currently supported." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v22);
    v20 = v40;
    v21 = [SUUIMobileStatefulError alloc];
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:-1 userInfo:0];
    v19 = [(SUUIStatefulError *)v21 initFromError:?];
    v20[2](v20, 0, v19);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v18);
    v35 = 1;
  }

  else
  {
    v33 = MEMORY[0x277D82BE0](v42);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      _suui_precondition_failure_with_format();
      __break(1u);
    }

    v32 = MEMORY[0x277D82BE0](v33);
    objc_storeStrong(&v33, 0);
    v34 = v32;
    v17 = MEMORY[0x26D66ED00](v40);
    scheduleCompletion = v44->_scheduleCompletion;
    v44->_scheduleCompletion = v17;
    MEMORY[0x277D82BD8](scheduleCompletion);
    objc_storeStrong(&v44->_delegate, v41);
    v15 = v44;
    v16 = [v34 unattendedPurge];
    v14 = location[0];
    v12 = [v34 agreementStatusRegistry];
    v13 = [(SUUIMobileUpdateOperation *)v15 beginOperation:4 ofUnattendedPurge:v16 andUnattendedInstall:1 descriptor:v14 agreementStatusRegistry:?];
    MEMORY[0x277D82BD8](v12);
    if (!v13)
    {
      v11 = v40;
      v30 = 0;
      v28 = 0;
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:8102 userInfo:0];
      if (v10)
      {
        v9 = [SUUIMobileStatefulError alloc];
        v31 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:8102 userInfo:0];
        v30 = 1;
        v29 = [(SUUIStatefulError *)v9 initFromError:?];
        v28 = 1;
        v8 = v29;
      }

      else
      {
        v8 = 0;
      }

      v11[2](v11, 0, v8);
      if (v28)
      {
        MEMORY[0x277D82BD8](v29);
      }

      if (v30)
      {
        MEMORY[0x277D82BD8](v31);
      }

      MEMORY[0x277D82BD8](v10);
    }

    objc_storeStrong(&v34, 0);
    v35 = 4;
  }

  v47 = v36;
  switch(v36[0])
  {
    case 1:
      [v47[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v47[1]);
      break;
    case 3:
      v7 = v47[1];
      os_unfair_recursive_lock_unlock();
      break;
  }

  if (v35 == 4)
  {
    v35 = 0;
  }

  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)unscheduleUpdate:(id)a3 forInstallationTonightWithContext:(id)a4 delegate:(id)a5 completionHandler:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v22 = 0;
  objc_storeStrong(&v22, a5);
  v21 = 0;
  objc_storeStrong(&v21, a6);
  v12 = [MEMORY[0x277D64B58] updateOperationLogger];
  v20 = [v12 oslog];
  MEMORY[0x277D82BD8](v12);
  v19 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    log = v20;
    type = v19;
    v11 = [location[0] updateName];
    v18 = MEMORY[0x277D82BE0](v11);
    __os_log_helper_16_2_2_8_32_8_66(v25, "[SUUIMobileUpdateOperation unscheduleUpdate:forInstallationTonightWithContext:delegate:completionHandler:]", v18);
    _os_log_impl(&dword_26B0B9000, log, type, "%s: Initiating an update operation (Cancel Install Tonight) to operation: %{public}@", v25, 0x16u);
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v18, 0);
  }

  objc_storeStrong(&v20, 0);
  v17 = MEMORY[0x277D82BE0](v23);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    _suui_precondition_failure_with_format();
  }

  v16 = MEMORY[0x277D82BE0](v17);
  objc_storeStrong(&v17, 0);
  v6 = [v16 currentAutoInstallOperation];
  [v6 cancel];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v16);
  v7 = v21;
  v8 = [objc_alloc(MEMORY[0x277D64BC8]) initWithResult:1];
  v7[2](v7, v8);
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)purgeDownload:(id)a3 withContext:(id)a4 delegate:(id)a5 completionHandler:(id)a6
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v20 = 0;
  objc_storeStrong(&v20, a5);
  v19 = 0;
  objc_storeStrong(&v19, a6);
  v18 = objc_alloc_init(MEMORY[0x277D648D8]);
  v6 = [v21 isNotifyUser];
  [v18 setNotifyUser:v6];
  v7 = [v21 isUserRequested];
  [v18 setUserRequested:v7];
  v12 = [(SUUIMobileUpdateOperation *)v23 suClient];
  v11 = v18;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __82__SUUIMobileUpdateOperation_purgeDownload_withContext_delegate_completionHandler___block_invoke;
  v16 = &unk_279CCC968;
  v17 = MEMORY[0x277D82BE0](v19);
  [(SUManagerClient *)v12 purgeDownloadWithOptions:v11 withResult:?];
  MEMORY[0x277D82BD8](v12);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

void __82__SUUIMobileUpdateOperation_purgeDownload_withContext_delegate_completionHandler___block_invoke(void *a1, char a2, id obj)
{
  v29 = *MEMORY[0x277D85DE8];
  v26 = a1;
  v25 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v23[1] = a1;
  v11 = [MEMORY[0x277D64B58] updateOperationLogger];
  v23[0] = [v11 oslog];
  MEMORY[0x277D82BD8](v11);
  v22 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v23[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v23[0];
    type = v22;
    v27 = v25 & 1;
    if (v25)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v7 = v3;
    v4 = v3;
    v10 = v7;
    v21 = MEMORY[0x277D82BE0](v10);
    __os_log_helper_16_2_3_8_32_8_66_8_66(v28, "[SUUIMobileUpdateOperation purgeDownload:withContext:delegate:completionHandler:]_block_invoke", v21, location);
    _os_log_impl(&dword_26B0B9000, log, type, "%s: Purge result: %{public}@; error: %{public}@", v28, 0x20u);
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v21, 0);
  }

  objc_storeStrong(v23, 0);
  if (location)
  {
    v20 = MEMORY[0x26D66ED00](a1[4]);
    v18 = 0;
    if (v20)
    {
      if (location)
      {
        v5 = [SUUIMobileStatefulError alloc];
        v19 = [(SUUIStatefulError *)v5 initFromError:location];
        v18 = 1;
        (*(v20 + 2))(v20, 0, v19);
      }

      else
      {
        (*(v20 + 2))(v20, 0, 0);
      }

      v17 = 0;
    }

    else
    {
      v16 = 0;
    }

    if (v18)
    {
      MEMORY[0x277D82BD8](v19);
    }

    objc_storeStrong(&v20, 0);
  }

  else
  {
    v15 = MEMORY[0x26D66ED00](a1[4]);
    v13 = 0;
    if (v15)
    {
      v6 = objc_alloc(MEMORY[0x277D64BC0]);
      v14 = [v6 initWithResult:v25 & 1];
      v13 = 1;
      (*(v15 + 2))();
    }

    if (v13)
    {
      MEMORY[0x277D82BD8](v14);
    }

    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)hasAcceptedTermsAndConditionsOfDescriptor:(id)a3 completionHandler:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  (*(v5 + 2))(v5, [(SUUIMobileUpdateOperation *)v7 hasAcceptedTermsAndConditionsOfDescriptorSync:location[0]], 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)respondToTermsAndConditionsOfDescriptor:(id)a3 withResponse:(int64_t)a4 completionHandler:(id)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = a4;
  v7 = 0;
  objc_storeStrong(&v7, a5);
  [(SUUIMobileUpdateOperation *)v10 respondToTermsAndConditionsOfDescriptorSync:location[0] withResponse:v8];
  (*(v7 + 2))(v7, 1, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)cancel:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = [MEMORY[0x277D64B58] updateOperationLogger];
  v13 = [v10 oslog];
  MEMORY[0x277D82BD8](v10);
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_32(v19, "[SUUIMobileUpdateOperation cancel:]");
    _os_log_impl(&dword_26B0B9000, v13, v12, "%s: Requesting to cancel the current update operation", v19, 0xCu);
  }

  objc_storeStrong(&v13, 0);
  v11[0] = 3;
  p_lock = &v15->_lock;
  v16 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v11[1] = p_lock;
  if (v15->_operationType)
  {
    if (!v15->_canceled)
    {
      v15->_canceled = 1;
      v8 = MEMORY[0x26D66ED00](location[0]);
      cancelHandler = v15->_cancelHandler;
      v15->_cancelHandler = v8;
      MEMORY[0x277D82BD8](cancelHandler);
      updateFSM = v15->_updateFSM;
      v6 = *MEMORY[0x277D64D10];
      v7 = objc_alloc_init(SUUIMobileUpdateOperationParam);
      [(SUCoreFSM *)updateFSM postEvent:v6 withInfo:v7];
      MEMORY[0x277D82BD8](v7);
    }
  }

  else
  {
    v9 = [(SUCoreFSM *)v15->_updateFSM diag];
    [v9 trackAnomaly:@"[SUUIMobileUpdateOperation]" forReason:@"There is no active search to cancel" withResult:8102 withError:0];
    MEMORY[0x277D82BD8](v9);
  }

  v18 = v11;
  switch(v11[0])
  {
    case 1:
      [v18[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v18[1]);
      break;
    case 3:
      v4 = v18[1];
      os_unfair_recursive_lock_unlock();
      break;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
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

- (BOOL)beginOperation:(int64_t)a3 ofUnattendedPurge:(BOOL)a4 andUnattendedInstall:(BOOL)a5 descriptor:(id)a6 agreementStatusRegistry:(id)a7
{
  v35 = *MEMORY[0x277D85DE8];
  v32 = self;
  v31 = a2;
  v30 = a3;
  v29 = a4;
  v28 = a5;
  location = 0;
  objc_storeStrong(&location, a6);
  v26 = 0;
  objc_storeStrong(&v26, a7);
  if (v32->_delegate)
  {
    v32->_operationType = v30;
    v16 = [MEMORY[0x277D643F8] sharedCore];
    v7 = [v16 selectDelegateCallbackQueue:v32->_delegateCallbackQueue];
    delegateCallbackQueue = v32->_delegateCallbackQueue;
    v32->_delegateCallbackQueue = v7;
    MEMORY[0x277D82BD8](delegateCallbackQueue);
    MEMORY[0x277D82BD8](v16);
    v17 = [MEMORY[0x277D643F8] sharedCore];
    v9 = [v17 selectCompletionQueue:v32->_completionQueue];
    completionQueue = v32->_completionQueue;
    v32->_completionQueue = v9;
    MEMORY[0x277D82BD8](completionQueue);
    MEMORY[0x277D82BD8](v17);
    v21 = MEMORY[0x277D82BE0](location);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      _suui_precondition_failure_with_format();
    }

    v20 = MEMORY[0x277D82BE0](v21);
    objc_storeStrong(&v21, 0);
    v22 = v20;
    [(SUCoreFSM *)v32->_updateFSM activateMachine];
    updateFSM = v32->_updateFSM;
    v13 = *MEMORY[0x277D64D00];
    v11 = [SUUIMobileUpdateOperationParam alloc];
    v15 = [(SUUIMobileUpdateOperationParam *)v11 initWithDescriptor:v22 forUnattendedPurge:v29 andForUnattendedInstall:v28 usingAgreementStatusRegistry:v26];
    [(SUCoreFSM *)updateFSM postEvent:v13 withInfo:?];
    MEMORY[0x277D82BD8](v15);
    v33 = 1;
    v23 = 1;
    objc_storeStrong(&v22, 0);
  }

  else
  {
    v18 = [MEMORY[0x277D64B58] updateOperationLogger];
    v25 = [v18 oslog];
    MEMORY[0x277D82BD8](v18);
    v24 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_0(v34, "[SUUIMobileUpdateOperation beginOperation:ofUnattendedPurge:andUnattendedInstall:descriptor:agreementStatusRegistry:]", v30);
      _os_log_error_impl(&dword_26B0B9000, v25, v24, "%s: Can not perform operation %ld: The class delegate must not be nil.", v34, 0x16u);
    }

    objc_storeStrong(&v25, 0);
    v33 = 0;
    v23 = 1;
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v33 & 1;
}

- (BOOL)hasAcceptedTermsAndConditionsOfDescriptorSync:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = MEMORY[0x277D82BE0](location[0]);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    _suui_precondition_failure_with_format();
  }

  v17 = MEMORY[0x277D82BE0](v18);
  objc_storeStrong(&v18, 0);
  v19 = v17;
  v10 = [v17 underlyingDescriptor];
  v9 = [v10 documentation];
  v8 = [v9 slaVersion];
  v11 = [v8 unsignedIntegerValue];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  v16 = v11;
  v15 = [MEMORY[0x277D4DA38] versionOfAcceptedAgreement];
  v7 = [MEMORY[0x277D64B58] updateOperationLogger];
  v14 = [v7 oslog];
  MEMORY[0x277D82BD8](v7);
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v6 = [location[0] updateName];
    v12 = MEMORY[0x277D82BE0](v6);
    __os_log_helper_16_2_4_8_32_8_66_8_2_8_2(v22, "[SUUIMobileUpdateOperation hasAcceptedTermsAndConditionsOfDescriptorSync:]", v12, v16, v15);
    _os_log_impl(&dword_26B0B9000, log, type, "%s: Terms and Conditions Acceptance status:\n\t- Descriptor (%{public}@) SLA Version: %{public}lu\n\t- Setup Version: %{public}lu", v22, 0x2Au);
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  if (v16 == v15)
  {
    [MEMORY[0x277D4DA38] recordUserAcceptedAgreementVersion:v16];
    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v21 & 1;
}

- (void)respondToTermsAndConditionsOfDescriptorSync:(id)a3 withResponse:(int64_t)a4
{
  v27 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = a4;
  v22 = MEMORY[0x277D82BE0](location[0]);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    _suui_precondition_failure_with_format();
  }

  v21 = MEMORY[0x277D82BE0](v22);
  objc_storeStrong(&v22, 0);
  v23 = v21;
  v13 = [v21 underlyingDescriptor];
  v12 = [v13 documentation];
  v11 = [v12 slaVersion];
  v14 = [v11 unsignedIntegerValue];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v20 = v14;
  v10 = [MEMORY[0x277D64B58] updateOperationLogger];
  v19 = [v10 oslog];
  MEMORY[0x277D82BD8](v10);
  v18 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    log = v19;
    type = v18;
    v9 = [location[0] updateName];
    v4 = MEMORY[0x277D82BE0](v9);
    v17 = v4;
    v5 = v20;
    v8 = SUUIUserInteractionResponseToString();
    v16 = MEMORY[0x277D82BE0](v8);
    __os_log_helper_16_2_4_8_32_8_66_8_2_8_66(v26, "[SUUIMobileUpdateOperation respondToTermsAndConditionsOfDescriptorSync:withResponse:]", v4, v5, v16);
    _os_log_impl(&dword_26B0B9000, log, type, "%s: Recording new Terms and Conditions Acceptance status:\n\t- Descriptor (%{public}@) SLA Version: %{public}lu\n\t- New Status: %{public}@", v26, 0x2Au);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(&v19, 0);
  if (!v24)
  {
    [MEMORY[0x277D4DA38] recordUserAcceptedAgreementVersion:v20];
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
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
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = *MEMORY[0x277D64C30];
  v5 = [(SUUIMobileUpdateOperation *)self identifier];
  v6 = [v4 initWithFormat:@"%@.stateful-ui.update.%@", v3, v5];
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (BOOL)isCancelableState:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] isEqualToString:*MEMORY[0x277D64E88]])
  {
    v5 = 1;
  }

  else if ([location[0] isEqualToString:*MEMORY[0x277D64EB8]])
  {
    v5 = 1;
  }

  else
  {
    v5 = ([location[0] isEqualToString:*MEMORY[0x277D64E78]] & 1) != 0 || (objc_msgSend(location[0], "isEqualToString:", *MEMORY[0x277D64EB0]) & 1) != 0 || (objc_msgSend(location[0], "isEqualToString:", *MEMORY[0x277D64ED0]) & 1) != 0;
  }

  objc_storeStrong(location, 0);
  return v5;
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
      if (v7 != 13)
      {
        v4 = 1;
        if (v7 != 11)
        {
          v4 = 1;
          if (v7 != 14)
          {
            v4 = v7 == 41;
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

@end