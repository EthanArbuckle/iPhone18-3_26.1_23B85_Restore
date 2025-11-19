@interface SUCoreScan
+ (BOOL)isPreSUStagingEnabledForUpdate:(id)a3 policy:(id)a4 reason:(id *)a5;
+ (id)_generateStateTable;
- (BOOL)_decideAndProcessPSUSScanForPrimaryDescriptor:(id)a3 secondaryDescriptor:(id)a4 andError:(id)a5;
- (BOOL)_decideAndProcessSlowReleaseScan;
- (BOOL)_decideAndProcessSplomboScan;
- (BOOL)_decideReserveSpace:(id)a3 error:(id)a4;
- (BOOL)_shouldPerformAlternateScanFromFoundDescriptor:(id)a3 policy:(id)a4;
- (BOOL)_shouldPerformPSUSScanFromFoundDescriptor:(id)a3 policy:(id)a4;
- (BOOL)_shouldPerformSplomboScanFromFoundDescriptor:(id)a3 policy:(id)a4;
- (SUCoreScan)initWithUUID:(id)a3 withCompletionQueue:(id)a4;
- (double)_psusDetermineTimeout;
- (id)_createEvent:(id)a3;
- (id)_operationName;
- (id)_simDescriptorAttributes;
- (id)description;
- (int64_t)_decrementMobileAssetPending:(id)a3;
- (int64_t)_determinePSUSAssets;
- (int64_t)_downloadCatalog:(id)a3 withIdentifier:(id)a4;
- (int64_t)a_SimCatalogDownloadSuccess:(id *)a3;
- (int64_t)a_SimQueryMetadataUpdateAvailable:(id *)a3;
- (int64_t)actionAfterAvailCancelSuccess:(id)a3 error:(id *)a4;
- (int64_t)actionAfterFailCancelSuccess:(id)a3 error:(id *)a4;
- (int64_t)actionAfterFailCheckCancelDone:(id)a3 error:(id *)a4;
- (int64_t)actionAlterDocDownloadConfig:(id *)a3;
- (int64_t)actionCancelDocCatalogDownload:(id *)a3;
- (int64_t)actionCancelDone:(id *)a3;
- (int64_t)actionCancelPSUSAssetsDetermination:(id *)a3;
- (int64_t)actionCancelRemoveFailed:(id)a3 error:(id *)a4;
- (int64_t)actionCancelSUCatalogDownload:(id *)a3;
- (int64_t)actionCancelSuccess:(id *)a3;
- (int64_t)actionCheckCancelDone:(id *)a3;
- (int64_t)actionDeterminePSUSAssets:(id *)a3;
- (int64_t)actionDownloadDocAsset:(id *)a3;
- (int64_t)actionDownloadDocCatalog:(id *)a3;
- (int64_t)actionDownloadSUCatalog:(id *)a3;
- (int64_t)actionQueryDocMetadata:(id *)a3;
- (int64_t)actionQuerySUMetadata:(id *)a3;
- (int64_t)actionRemoveDocAsset:(id *)a3;
- (int64_t)actionScanCompleteNoUpdate:(id *)a3;
- (int64_t)actionScanFailed:(id)a3 error:(id *)a4;
- (int64_t)actionScanSuccess:(id)a3 error:(id *)a4;
- (int64_t)actionUnknownAction:(id)a3 error:(id *)a4;
- (int64_t)performAction:(id)a3 onEvent:(id)a4 inState:(id)a5 withInfo:(id)a6 nextState:(id)a7 error:(id *)a8;
- (unint64_t)actionDecideNextScanStep:(id *)a3;
- (unint64_t)actionDeterminePSUSAssetsFailed:(id)a3 error:(id *)a4;
- (unint64_t)actionDeterminePSUSAssetsSuccess:(id)a3 error:(id *)a4;
- (unint64_t)actionPerformReserveSpace:(id *)a3;
- (unint64_t)actionScanComplete:(id *)a3;
- (void)_cancelCompleteWithError:(id)a3;
- (void)_checkMajorMinorEndComplete:(id)a3 scanPolicy:(id)a4 majorPrimary:(id)a5 majorSecondary:(id)a6 minorPrimary:(id)a7 minorSecondary:(id)a8 error:(id)a9 clearingTransaction:(BOOL)a10;
- (void)_checkSlowReleaseEndComplete:(id)a3 scanPolicy:(id)a4 primary:(id)a5 secondary:(id)a6 alternatePrimary:(id)a7 alternateSecondary:(id)a8 error:(id)a9 clearingTransaction:(BOOL)a10;
- (void)_clearCurrentOperation;
- (void)_filterDocQueryResults:(id)a3;
- (void)_filterSUQueryResults:(id)a3;
- (void)_filterSUQueryResultsForSPITypeMajorMinorFromQuery:(id)a3;
- (void)_filterSUQueryResultsForSPITypeSingleFromQuery:(id)a3;
- (void)_incrementMobileAssetPending:(id)a3;
- (void)_invalidOperation:(id)a3;
- (void)_operationCompleting:(id)a3 error:(id)a4 clearingTransaction:(BOOL)a5;
- (void)_reportPSUSDetermineFinishedEvent:(id)a3 duration:(double)a4;
- (void)_reportPSUSDetermineStartedEvent;
- (void)_scanCompleteFoundPrimary:(id)a3 foundSecondary:(id)a4 majorPrimary:(id)a5 majorSecondary:(id)a6 minorPrimary:(id)a7 minorSecondary:(id)a8 clearingOperation:(BOOL)a9 error:(id)a10;
- (void)_trackInconsistentAnomalyAndUpdateInterimResult:(id)a3 reason:(id)a4;
- (void)_trackScanBegin:(id)a3 withIdentifier:(id)a4;
- (void)_trackScanEnd:(id)a3 withIdentifier:(id)a4 withResult:(int64_t)a5 withError:(id)a6;
- (void)_updateInterimScanResultForSlowReleaseWithPrimary:(id)a3 secondary:(id)a4 error:(id)a5;
- (void)_updateInterimScanResultForSplomboWithPrimary:(id)a3 secondary:(id)a4 majorPrimary:(id)a5 majorSecondary:(id)a6 minorPrimary:(id)a7 minorSecondary:(id)a8 error:(id)a9;
- (void)_updateInterimScanResultWithPrimary:(id)a3 secondary:(id)a4 majorPrimary:(id)a5 majorSecondary:(id)a6 minorPrimary:(id)a7 minorSecondary:(id)a8 error:(id)a9;
- (void)_verifyEndComplete:(id)a3 scanPolicy:(id)a4 active:(id)a5 primary:(id)a6 secondary:(id)a7 error:(id)a8 clearingTransaction:(BOOL)a9;
- (void)alterCurrentPolicy:(id)a3;
- (void)cancelCurrentScan:(id)a3;
- (void)checkForAvailableMajorMinorUpdatesWithPolicy:(id)a3 completion:(id)a4;
- (void)checkForAvailableSlowReleaseUpdatesWithPolicy:(id)a3 completion:(id)a4;
- (void)checkForAvailableUpdateWithPolicy:(id)a3 completion:(id)a4;
- (void)collectDocumentationMetadataWithPolicy:(id)a3 descriptor:(id)a4 downloadDocumentation:(BOOL)a5 completion:(id)a6;
- (void)locateAvailableUpdateWithPolicy:(id)a3 completion:(id)a4;
- (void)verifyLatestAvailableWithPolicy:(id)a3 descriptor:(id)a4 completion:(id)a5;
@end

@implementation SUCoreScan

+ (id)_generateStateTable
{
  v196[9] = *MEMORY[0x277D85DE8];
  v195[0] = @"Idle";
  v193[0] = @"CheckForAvailableUpdate";
  v3 = *MEMORY[0x277D644B8];
  v191[0] = *MEMORY[0x277D64800];
  v2 = v191[0];
  v191[1] = v3;
  v192[0] = @"DownloadingSUCatalog";
  v192[1] = @"DownloadSUCatalog";
  v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v192 forKeys:v191 count:2];
  v194[0] = v70;
  v193[1] = @"VerifyLatestAvailable";
  v189[0] = v2;
  v189[1] = v3;
  v190[0] = @"DownloadingSUCatalog";
  v190[1] = @"DownloadSUCatalog";
  v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v190 forKeys:v189 count:2];
  v194[1] = v69;
  v193[2] = @"CollectDocMetadata";
  v187[0] = v2;
  v187[1] = v3;
  v188[0] = @"DownloadingDocCatalog";
  v188[1] = @"DownloadDocCatalog";
  v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v188 forKeys:v187 count:2];
  v194[2] = v68;
  v193[3] = @"DeterminePSUSAssets";
  v185[0] = v2;
  v185[1] = v3;
  v186[0] = @"DeterminingPSUSAssets";
  v186[1] = @"DeterminePSUSAssets";
  v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v186 forKeys:v185 count:2];
  v194[3] = v67;
  v193[4] = @"DecideNextScanStep";
  v183 = v3;
  v184 = @"DecideNextScanStep";
  v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v184 forKeys:&v183 count:1];
  v194[4] = v66;
  v193[5] = @"ReserveSpace";
  v181 = v3;
  v182 = @"PerformReserveSpace";
  v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v182 forKeys:&v181 count:1];
  v194[5] = v65;
  v193[6] = @"ScanComplete";
  v179 = v3;
  v180 = @"ScanComplete";
  v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v180 forKeys:&v179 count:1];
  v194[6] = v64;
  v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v194 forKeys:v193 count:7];
  v196[0] = v63;
  v195[1] = @"DownloadingSUCatalog";
  v177[0] = @"CatalogDownloadSuccess";
  v175[0] = v2;
  v175[1] = v3;
  v176[0] = @"QueryingSUMetadata";
  v176[1] = @"QuerySUMetadata";
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v176 forKeys:v175 count:2];
  v178[0] = v62;
  v177[1] = @"CatalogDownloadFailed";
  v173[0] = v2;
  v173[1] = v3;
  v174[0] = @"Idle";
  v174[1] = @"ScanFailed";
  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v174 forKeys:v173 count:2];
  v178[1] = v61;
  v177[2] = @"AlterCurrentPolicy";
  v171 = v3;
  v172 = *MEMORY[0x277D647D0];
  v4 = v172;
  v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v172 forKeys:&v171 count:1];
  v178[2] = v60;
  v177[3] = @"CancelCurrentScan";
  v169[0] = v2;
  v169[1] = v3;
  v170[0] = @"Canceling";
  v170[1] = @"CancelSUCatalogDownload";
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v170 forKeys:v169 count:2];
  v178[3] = v59;
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v178 forKeys:v177 count:4];
  v196[1] = v58;
  v195[2] = @"QueryingSUMetadata";
  v167[0] = @"QueryMetadataNoAssetFound";
  v165[0] = v2;
  v165[1] = v3;
  v166[0] = @"Idle";
  v166[1] = @"ScanCompleteNoUpdate";
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v166 forKeys:v165 count:2];
  v168[0] = v57;
  v167[1] = @"QueryMetadataUpdateAvailable";
  v163[0] = v2;
  v163[1] = v3;
  v164[0] = @"Idle";
  v164[1] = @"ScanSuccess";
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v164 forKeys:v163 count:2];
  v168[1] = v56;
  v167[2] = @"QueryMetadataFailed";
  v161[0] = v2;
  v161[1] = v3;
  v162[0] = @"Idle";
  v162[1] = @"ScanFailed";
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v162 forKeys:v161 count:2];
  v168[2] = v55;
  v167[3] = @"AlterCurrentPolicy";
  v159 = v3;
  v160 = v4;
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
  v168[3] = v54;
  v167[4] = @"CancelCurrentScan";
  v157 = v2;
  v158 = @"Canceling";
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v158 forKeys:&v157 count:1];
  v168[4] = v53;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v168 forKeys:v167 count:5];
  v196[2] = v52;
  v195[3] = @"DeterminingPSUSAssets";
  v155[0] = @"PSUSAssetsDetermineSuccess";
  v153[0] = v2;
  v153[1] = v3;
  v154[0] = @"Idle";
  v154[1] = @"DeterminePSUSAssetsSuccess";
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v154 forKeys:v153 count:2];
  v156[0] = v51;
  v155[1] = @"PSUSAssetsDetermineFailed";
  v151[0] = v2;
  v151[1] = v3;
  v152[0] = @"Idle";
  v152[1] = @"DeterminePSUSAssetsFailed";
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v152 forKeys:v151 count:2];
  v156[1] = v50;
  v155[2] = @"AlterCurrentPolicy";
  v149 = v3;
  v150 = v4;
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
  v156[2] = v49;
  v155[3] = @"CancelCurrentScan";
  v147[0] = v2;
  v147[1] = v3;
  v148[0] = @"Canceling";
  v148[1] = @"CancelPSUSAssetsDetermination";
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v148 forKeys:v147 count:2];
  v156[3] = v48;
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v156 forKeys:v155 count:4];
  v196[3] = v47;
  v195[4] = @"DownloadingDocCatalog";
  v145[0] = @"CatalogDownloadSuccess";
  v143[0] = v2;
  v143[1] = v3;
  v144[0] = @"QueryingDocMetadata";
  v144[1] = @"QueryDocMetadata";
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v144 forKeys:v143 count:2];
  v146[0] = v46;
  v145[1] = @"CatalogDownloadFailed";
  v141[0] = v2;
  v141[1] = v3;
  v142[0] = @"Idle";
  v142[1] = @"ScanFailed";
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v142 forKeys:v141 count:2];
  v146[1] = v45;
  v145[2] = @"AlterCurrentPolicy";
  v139 = v3;
  v140 = v4;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
  v146[2] = v44;
  v145[3] = @"CancelCurrentScan";
  v137[0] = v2;
  v137[1] = v3;
  v138[0] = @"Canceling";
  v138[1] = @"CancelDocCatalogDownload";
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v138 forKeys:v137 count:2];
  v146[3] = v43;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v146 forKeys:v145 count:4];
  v196[4] = v42;
  v195[5] = @"QueryingDocMetadata";
  v135[0] = @"QueryMetadataNoAssetFound";
  v133[0] = v2;
  v133[1] = v3;
  v134[0] = @"Idle";
  v134[1] = @"ScanFailed";
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v134 forKeys:v133 count:2];
  v136[0] = v41;
  v135[1] = @"QueryMetadataSuccess";
  v131[0] = v2;
  v131[1] = v3;
  v132[0] = @"Idle";
  v132[1] = @"ScanSuccess";
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v132 forKeys:v131 count:2];
  v136[1] = v40;
  v135[2] = @"QueryMetadataNeedDoc";
  v129[0] = v2;
  v129[1] = v3;
  v130[0] = @"DownloadingDocAsset";
  v130[1] = @"DownloadDocAsset";
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v130 forKeys:v129 count:2];
  v136[2] = v39;
  v135[3] = @"QueryMetadataFailed";
  v127[0] = v2;
  v127[1] = v3;
  v128[0] = @"Idle";
  v128[1] = @"ScanFailed";
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v128 forKeys:v127 count:2];
  v136[3] = v38;
  v135[4] = @"AlterCurrentPolicy";
  v125 = v3;
  v126 = v4;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
  v136[4] = v37;
  v135[5] = @"CancelCurrentScan";
  v123 = v2;
  v124 = @"Canceling";
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
  v136[5] = v36;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v136 forKeys:v135 count:6];
  v196[5] = v35;
  v195[6] = @"DownloadingDocAsset";
  v121[0] = @"DocDownloadSuccess";
  v119[0] = v2;
  v119[1] = v3;
  v120[0] = @"Idle";
  v120[1] = @"ScanSuccess";
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:2];
  v122[0] = v34;
  v121[1] = @"DocDownloadFailed";
  v117[0] = v2;
  v117[1] = v3;
  v118[0] = @"Idle";
  v118[1] = @"ScanFailed";
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v117 count:2];
  v122[1] = v33;
  v121[2] = @"AlterCurrentPolicy";
  v115 = v3;
  v116 = @"AlterDocDownloadConfig";
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
  v122[2] = v32;
  v121[3] = @"CancelCurrentScan";
  v113[0] = v2;
  v113[1] = v3;
  v114[0] = @"Canceling";
  v114[1] = @"RemoveDocAsset";
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:v113 count:2];
  v122[3] = v31;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v122 forKeys:v121 count:4];
  v196[6] = v30;
  v195[7] = @"Canceling";
  v111[0] = @"CatalogDownloadSuccess";
  v109 = v3;
  v110 = @"CheckCancelDone";
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
  v112[0] = v29;
  v111[1] = @"CatalogDownloadFailed";
  v107 = v3;
  v108 = @"AfterFailCheckCancelDone";
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
  v112[1] = v28;
  v111[2] = @"CatalogDownloadCancelSuccess";
  v105 = v3;
  v106 = @"CheckCancelDone";
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
  v112[2] = v27;
  v111[3] = @"CatalogDownloadCancelFailed";
  v103 = v3;
  v104 = @"AfterFailCheckCancelDone";
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
  v112[3] = v26;
  v111[4] = @"PSUSAssetsDetermineSuccess";
  v101 = v3;
  v102 = @"CheckCancelDone";
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
  v112[4] = v25;
  v111[5] = @"PSUSAssetsDetermineFailed";
  v99 = v3;
  v100 = @"AfterFailCheckCancelDone";
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
  v112[5] = v24;
  v111[6] = @"PSUSAssetsDetermineCancelSuccess";
  v97 = v3;
  v98 = @"CheckCancelDone";
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
  v112[6] = v23;
  v111[7] = @"PSUSAssetsDetermineCancelFailed";
  v95 = v3;
  v96 = @"AfterFailCheckCancelDone";
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
  v112[7] = v22;
  v111[8] = @"QueryMetadataNoAssetFound";
  v93[0] = v2;
  v93[1] = v3;
  v94[0] = @"Idle";
  v94[1] = @"CancelSuccess";
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:2];
  v112[8] = v21;
  v111[9] = @"QueryMetadataUpdateAvailable";
  v91[0] = v2;
  v91[1] = v3;
  v92[0] = @"Idle";
  v92[1] = @"AfterAvailCancelSuccess";
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:2];
  v112[9] = v20;
  v111[10] = @"QueryMetadataNeedDoc";
  v89[0] = v2;
  v89[1] = v3;
  v90[0] = @"Idle";
  v90[1] = @"CancelSuccess";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:2];
  v112[10] = v18;
  v111[11] = @"QueryMetadataSuccess";
  v87[0] = v2;
  v87[1] = v3;
  v88[0] = @"Idle";
  v88[1] = @"CancelSuccess";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:2];
  v112[11] = v17;
  v111[12] = @"QueryMetadataFailed";
  v85[0] = v2;
  v85[1] = v3;
  v86[0] = @"Idle";
  v86[1] = @"AfterFailCancelSuccess";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:2];
  v112[12] = v5;
  v111[13] = @"DocDownloadSuccess";
  v83 = v3;
  v84 = @"CheckCancelDone";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
  v112[13] = v6;
  v111[14] = @"DocDownloadFailed";
  v81 = v3;
  v82 = @"AfterFailCheckCancelDone";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
  v112[14] = v7;
  v111[15] = @"DocRemoveSuccess";
  v79 = v3;
  v80 = @"CheckCancelDone";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
  v112[15] = v8;
  v111[16] = @"DocRemoveFailed";
  v77 = v3;
  v78 = @"AfterFailCheckCancelDone";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
  v112[16] = v9;
  v111[17] = @"CancelComplete";
  v75[0] = v2;
  v75[1] = v3;
  v76[0] = @"Idle";
  v76[1] = @"CancelDone";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:2];
  v112[17] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:18];
  v196[7] = v11;
  v195[8] = *MEMORY[0x277D647E8];
  v73 = *MEMORY[0x277D647E0];
  v71 = v2;
  v72 = *MEMORY[0x277D647F0];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
  v74 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
  v196[8] = v13;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v196 forKeys:v195 count:9];

  v14 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v19 copyItems:1];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (int64_t)performAction:(id)a3 onEvent:(id)a4 inState:(id)a5 withInfo:(id)a6 nextState:(id)a7 error:(id *)a8
{
  v11 = a3;
  v12 = a6;
  v13 = [(SUCoreScan *)self scanFSM];
  v14 = [v13 extendedStateQueue];
  dispatch_assert_queue_V2(v14);

  if ([v11 isEqualToString:*MEMORY[0x277D647D0]])
  {
    v15 = 0;
  }

  else
  {
    if ([v11 isEqualToString:@"DecideNextScanStep"])
    {
      v16 = [(SUCoreScan *)self actionDecideNextScanStep:a8];
    }

    else if ([v11 isEqualToString:@"DownloadSUCatalog"])
    {
      v16 = [(SUCoreScan *)self actionDownloadSUCatalog:a8];
    }

    else if ([v11 isEqualToString:@"QuerySUMetadata"])
    {
      v16 = [(SUCoreScan *)self actionQuerySUMetadata:a8];
    }

    else if ([v11 isEqualToString:@"PerformReserveSpace"])
    {
      v16 = [(SUCoreScan *)self actionPerformReserveSpace:a8];
    }

    else if ([v11 isEqualToString:@"DeterminePSUSAssets"])
    {
      v16 = [(SUCoreScan *)self actionDeterminePSUSAssets:a8];
    }

    else if ([v11 isEqualToString:@"DownloadDocCatalog"])
    {
      v16 = [(SUCoreScan *)self actionDownloadDocCatalog:a8];
    }

    else if ([v11 isEqualToString:@"QueryDocMetadata"])
    {
      v16 = [(SUCoreScan *)self actionQueryDocMetadata:a8];
    }

    else if ([v11 isEqualToString:@"DownloadDocAsset"])
    {
      v16 = [(SUCoreScan *)self actionDownloadDocAsset:a8];
    }

    else if ([v11 isEqualToString:@"AlterDocDownloadConfig"])
    {
      v16 = [(SUCoreScan *)self actionAlterDocDownloadConfig:a8];
    }

    else if ([v11 isEqualToString:@"RemoveDocAsset"])
    {
      v16 = [(SUCoreScan *)self actionRemoveDocAsset:a8];
    }

    else if ([v11 isEqualToString:@"ScanCompleteNoUpdate"])
    {
      v16 = [(SUCoreScan *)self actionScanCompleteNoUpdate:a8];
    }

    else if ([v11 isEqualToString:@"ScanSuccess"])
    {
      v16 = [(SUCoreScan *)self actionScanSuccess:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ScanFailed"])
    {
      v16 = [(SUCoreScan *)self actionScanFailed:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"DeterminePSUSAssetsSuccess"])
    {
      v16 = [(SUCoreScan *)self actionDeterminePSUSAssetsSuccess:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"DeterminePSUSAssetsFailed"])
    {
      v16 = [(SUCoreScan *)self actionDeterminePSUSAssetsFailed:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ScanComplete"])
    {
      v16 = [(SUCoreScan *)self actionScanComplete:a8];
    }

    else if ([v11 isEqualToString:@"CancelSUCatalogDownload"])
    {
      v16 = [(SUCoreScan *)self actionCancelSUCatalogDownload:a8];
    }

    else if ([v11 isEqualToString:@"CancelDocCatalogDownload"])
    {
      v16 = [(SUCoreScan *)self actionCancelDocCatalogDownload:a8];
    }

    else if ([v11 isEqualToString:@"CancelSuccess"])
    {
      v16 = [(SUCoreScan *)self actionCancelSuccess:a8];
    }

    else if ([v11 isEqualToString:@"AfterAvailCancelSuccess"])
    {
      v16 = [(SUCoreScan *)self actionAfterAvailCancelSuccess:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"AfterFailCancelSuccess"])
    {
      v16 = [(SUCoreScan *)self actionAfterFailCancelSuccess:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"CancelRemoveFailed"])
    {
      v16 = [(SUCoreScan *)self actionCancelRemoveFailed:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"CheckCancelDone"])
    {
      v16 = [(SUCoreScan *)self actionCheckCancelDone:a8];
    }

    else if ([v11 isEqualToString:@"AfterFailCheckCancelDone"])
    {
      v16 = [(SUCoreScan *)self actionAfterFailCheckCancelDone:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"CancelDone"])
    {
      v16 = [(SUCoreScan *)self actionCancelDone:a8];
    }

    else if ([v11 isEqualToString:@"CancelPSUSAssetsDetermination"])
    {
      v16 = [(SUCoreScan *)self actionCancelPSUSAssetsDetermination:a8];
    }

    else if ([v11 isEqualToString:@"SimCatalogDownloadSuccess"])
    {
      v16 = [(SUCoreScan *)self a_SimCatalogDownloadSuccess:a8];
    }

    else if ([v11 isEqualToString:@"SimQueryMetadataUpdateAvailable"])
    {
      v16 = [(SUCoreScan *)self a_SimQueryMetadataUpdateAvailable:a8];
    }

    else
    {
      v16 = [(SUCoreScan *)self actionUnknownAction:v11 error:a8];
    }

    v15 = v16;
  }

  return v15;
}

- (int64_t)actionDeterminePSUSAssets:(id *)a3
{
  v4 = [(SUCoreScan *)self scanFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  return [(SUCoreScan *)self _determinePSUSAssets];
}

- (int64_t)actionDownloadSUCatalog:(id *)a3
{
  v4 = [(SUCoreScan *)self scanFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SUCoreScan *)self scanPolicy];
  v7 = [v6 softwareUpdateAssetType];
  v8 = [(SUCoreScan *)self _downloadCatalog:v7 withIdentifier:@"su"];

  return v8;
}

- (int64_t)actionQuerySUMetadata:(id *)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = [(SUCoreScan *)self scanFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SUCoreScan *)self _decrementMobileAssetPending:@"DownloadSUCatalog"];
  v7 = [(SUCoreScan *)self scanPolicy];
  v8 = [v7 mobileAssetPurposeOverride];

  if (v8)
  {
    v9 = [(SUCoreScan *)self scanPolicy];
    v10 = [v9 mobileAssetPurposeOverride];

    v11 = [MEMORY[0x277D64460] sharedLogger];
    v12 = [v11 oslog];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v35 = self;
      v36 = 2114;
      v37 = v10;
      v13 = "%{public}@ SU metadata query using mobileAssetPurposeOverride as purpose: %{public}@";
LABEL_10:
      _os_log_impl(&dword_23193C000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0x16u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v14 = [(SUCoreScan *)self alternateAssetAudienceUUID];

  if (v14)
  {
    v10 = [(SUCoreScan *)self alternateAssetAudienceUUID];
    v15 = [MEMORY[0x277D64460] sharedLogger];
    v12 = [v15 oslog];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v35 = self;
      v36 = 2114;
      v37 = v10;
      v13 = "%{public}@ SU metadata query using alternateAssetAudienceUUID as purpose: %{public}@";
      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

  v16 = [(SUCoreScan *)self scanPolicy];
  v17 = [v16 assetAudienceUUID];

  if (v17)
  {
    v18 = [(SUCoreScan *)self scanPolicy];
    v10 = [v18 assetAudienceUUID];

    v19 = [MEMORY[0x277D64460] sharedLogger];
    v12 = [v19 oslog];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v35 = self;
      v36 = 2114;
      v37 = v10;
      v13 = "%{public}@ SU metadata query using scan policy assetAudienceUUID as purpose: %{public}@";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v10 = 0;
LABEL_12:
  v20 = [(SUCoreScan *)self scanPolicy];
  v21 = [v20 constructSoftwareUpdateMAAssetQueryWithPurpose:v10];

  [(SUCoreScan *)self _incrementMobileAssetPending:@"QuerySUMetadata"];
  if (v21)
  {
    [(SUCoreScan *)self _trackScanBegin:@"queryMetaDataWithError" withIdentifier:@"su"];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __36__SUCoreScan_actionQuerySUMetadata___block_invoke;
    v32[3] = &unk_27892D200;
    v32[4] = self;
    v33 = v21;
    [v33 SUCoreBorder_queryMetaDataWithError:v32];
  }

  else
  {
    v22 = objc_alloc(MEMORY[0x277CCACA8]);
    v23 = [(SUCoreScan *)self scanPolicy];
    v24 = [v23 summary];
    v25 = [v22 initWithFormat:@"failed to construct SU asset query from policy[%@]", v24];

    v26 = [MEMORY[0x277D643F8] sharedCore];
    v6 = 8100;
    v27 = [v26 buildError:8100 underlying:0 description:v25];

    v28 = [(SUCoreScan *)self scanFSM];
    v29 = [[SUCoreScanParam alloc] initWithResult:8100 withError:v27];
    [v28 postEvent:@"QueryMetadataFailed" withInfo:v29];
  }

  v30 = *MEMORY[0x277D85DE8];
  return v6;
}

void __36__SUCoreScan_actionQuerySUMetadata___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  [*(a1 + 32) _trackScanEnd:@"queryMetaDataWithError" withIdentifier:@"su" withResult:a2 withError:?];
  if (a2)
  {
    v5 = [MEMORY[0x277D643F8] sharedCore];
    v6 = [v5 buildError:8401 underlying:v9 description:@"failed to query SU metadata"];

    v7 = [*(a1 + 32) scanFSM];
    v8 = [[SUCoreScanParam alloc] initWithResult:a2 withError:v6];
    [v7 postEvent:@"QueryMetadataFailed" withInfo:v8];
  }

  else
  {
    [*(a1 + 32) _filterSUQueryResults:*(a1 + 40)];
  }
}

- (unint64_t)actionPerformReserveSpace:(id *)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = [(SUCoreScan *)self scanFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v9 = [(SUCoreScan *)self scanFSM];
    [v9 followupEvent:@"DecideNextScanStep"];

    goto LABEL_78;
  }

  if ([(SUCoreScan *)self operationSPIType]== 1)
  {
    v6 = [(SUCoreScan *)self interimScanResult];
    v7 = [v6 descriptor];
    v8 = 0;
  }

  else
  {
    if ([(SUCoreScan *)self operationSPIType]!= 2 && [(SUCoreScan *)self operationSPIType]!= 3)
    {
      v7 = 0;
      v8 = 0;
      goto LABEL_13;
    }

    v10 = [(SUCoreScan *)self interimScanResult];
    v7 = [v10 majorPrimaryDescriptor];

    v6 = [(SUCoreScan *)self interimScanResult];
    v8 = [v6 minorPrimaryDescriptor];
  }

  if (!v7)
  {
LABEL_13:
    v12 = 1;
LABEL_14:
    v13 = [(SUCoreScan *)self scanPolicy];
    v11 = [v13 useReserveSpace] ^ 1;

    if (v12)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (([v7 disableReserveSpace] & 1) == 0)
  {
    v12 = 0;
    goto LABEL_14;
  }

  v11 = 1;
LABEL_15:
  if ([v7 updateType] == 1)
  {
    v14 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (v8)
  {
    v14 = [v8 updateType] == 1;
  }

  else
  {
    v14 = 0;
  }

LABEL_20:
  v15 = (v11 ^ 1) & v14;
  v16 = [MEMORY[0x277D64460] sharedLogger];
  v17 = [v16 oslog];

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"NO";
    v64 = "[SUCoreScan actionPerformReserveSpace:]";
    if (v11)
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    *buf = 136315906;
    if (v14)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v66 = v19;
    v65 = 2112;
    v67 = 2112;
    v68 = v20;
    if (v15)
    {
      v18 = @"YES";
    }

    v69 = 2112;
    v70 = v18;
    _os_log_impl(&dword_23193C000, v17, OS_LOG_TYPE_DEFAULT, "[Space] %s, isReserveSpaceDisabled: %@, anyUpdateIsIncremental: %@, shouldUseReserveSpace: %@", buf, 0x2Au);
  }

  v60 = self;
  if (v15)
  {
    if ([v7 updateType] == 1)
    {
      v21 = [v7 totalSnapshotRequiredFreeSpace];
      if (!v8)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v21 = 0;
      if (!v8)
      {
        goto LABEL_38;
      }
    }

    if ([v8 updateType] == 1)
    {
      v26 = [v8 totalSnapshotRequiredFreeSpace];
      goto LABEL_39;
    }

LABEL_38:
    v26 = 0;
LABEL_39:
    if (v21 <= v26)
    {
      v21 = v26;
    }

    v27 = [v7 minReserveSpace];
    v28 = [v8 minReserveSpace];
    if (v27 <= v28)
    {
      v25 = v28;
    }

    else
    {
      v25 = v27;
    }

    if ([v7 updateType] == 1)
    {
      v29 = [v7 minimumSystemPartitionSize];
      if (!v8)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v29 = 0;
      if (!v8)
      {
        goto LABEL_50;
      }
    }

    if ([v8 updateType] == 1)
    {
      v30 = [v8 minimumSystemPartitionSize];
LABEL_51:
      if (v29 <= v30)
      {
        v29 = v30;
      }

      v31 = [SUCoreSpace getVolumeUsedSpace:@"/"];
      if (v29 >= v31)
      {
        v24 = v29 - v31;
      }

      else
      {
        v24 = 0;
      }

      v32 = [MEMORY[0x277D64418] sharedDevice];
      v33 = [v32 isInternal];

      if (!v33)
      {
        goto LABEL_61;
      }

      v34 = [(SUCoreScan *)self scanPolicy];
      v35 = [v34 reserveSpaceSizeOverride];

      if (v35)
      {
        v36 = [(SUCoreScan *)self scanPolicy];
        v37 = [v36 reserveSpaceSizeOverride];
        v21 = [v37 unsignedLongLongValue];
      }

      v38 = [(SUCoreScan *)self scanPolicy];
      v39 = [v38 systemGrowthMarginOverride];

      if (v39)
      {
        v40 = self;
        v22 = v8;
        v23 = v11;
        v41 = [(SUCoreScan *)v40 scanPolicy];
        v42 = [v41 systemGrowthMarginOverride];
        v24 = [v42 unsignedLongLongValue];
      }

      else
      {
LABEL_61:
        v22 = v8;
        v23 = v11;
      }

      goto LABEL_62;
    }

LABEL_50:
    v30 = 0;
    goto LABEL_51;
  }

  v22 = v8;
  v23 = v11;
  v24 = 0;
  v25 = 0;
  v21 = 0;
LABEL_62:
  v43 = MEMORY[0x277CCABB0];
  if ([v7 centeralizedPurgeableFactor])
  {
    v44 = v7;
  }

  else
  {
    v44 = v22;
  }

  v45 = [v43 numberWithUnsignedLong:{objc_msgSend(v44, "centeralizedPurgeableFactor")}];
  v46 = MEMORY[0x277CCABB0];
  if ([v7 pluginPurgeableFactor])
  {
    v47 = v7;
  }

  else
  {
    v47 = v22;
  }

  v48 = [v46 numberWithUnsignedLong:{objc_msgSend(v47, "pluginPurgeableFactor")}];
  v49 = MEMORY[0x277CCABB0];
  if ([v7 maxReserveSpace])
  {
    v50 = v7;
  }

  else
  {
    v50 = v22;
  }

  v51 = [v49 numberWithUnsignedLongLong:{objc_msgSend(v50, "maxReserveSpace")}];
  if (v21 <= v25)
  {
    v52 = v25;
  }

  else
  {
    v52 = v21;
  }

  if (v23)
  {
    v53 = 0;
  }

  else
  {
    v53 = v52;
  }

  v61[0] = @"CACHE_DELETE_RESERVE_SPACE_AMOUNT";
  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v53];
  v62[0] = v54;
  v61[1] = @"CACHE_DELETE_EXPECTED_SYSTEM_GROWTH_AMOUNT";
  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v24];
  v62[1] = v55;
  v62[2] = v45;
  v61[2] = @"CACHE_DELETE_FACTOR_FOR_CENTRALIZED_PURGEABLE";
  v61[3] = @"CACHE_DELETE_FACTOR_FOR_PLUGIN_PURGEABLE";
  v61[4] = @"CACHE_DELETE_MAX_RESERVE_SPACE_AMOUNT";
  v62[3] = v48;
  v62[4] = v51;
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:5];

  [SUCoreSpace cacheDeleteSetReserveSpaceWithInfo:v56];
  v57 = [(SUCoreScan *)v60 scanFSM];
  [v57 followupEvent:@"DecideNextScanStep"];

LABEL_78:
  v58 = *MEMORY[0x277D85DE8];
  return 0;
}

- (unint64_t)actionDeterminePSUSAssetsSuccess:(id)a3 error:(id *)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(SUCoreScan *)self scanFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(SUCoreScan *)self _decrementMobileAssetPending:@"DeterminePSUSAssets succeeded"];
  v9 = [v5 additionalInfo];

  v10 = [v9 safeObjectForKey:@"PSUSDetermineError" ofClass:objc_opt_class()];
  if (v10)
  {
    v11 = [v9 safeObjectForKey:@"Duration" ofClass:objc_opt_class()];
    [v11 doubleValue];
    v13 = v12;

    v14 = self;
    v15 = v10;
LABEL_3:
    [(SUCoreScan *)v14 _reportPSUSDetermineFinishedEvent:v15 duration:v13];
    goto LABEL_4;
  }

  v19 = [v9 safeObjectForKey:@"PSUSAssetsSizes" ofClass:objc_opt_class()];
  if (!v19)
  {
    v47 = [(SUCoreScan *)self scanFSM];
    v48 = [v47 diag];
    v49 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ unexpected no assets sizes", self];
    [v48 trackAnomaly:@"[SCAN] DETERMINE_PSUS_SUCCESS" forReason:v49 withResult:8117 withError:0];

    v50 = [v9 safeObjectForKey:@"Duration" ofClass:objc_opt_class()];
    [v50 doubleValue];
    v13 = v51;

    v14 = self;
    v15 = 0;
    goto LABEL_3;
  }

  v20 = v19;
  v52 = v8;
  v21 = [v19 safeULLForKey:@"STAGE_GROUP_REQUIRED" defaultValue:0];
  v22 = [v20 safeULLForKey:@"STAGE_GROUP_OPTIONAL" defaultValue:0];
  v23 = [(SUCoreScan *)self psusPrimaryDescriptor];
  v24 = [v23 preSUStagingMaxSize];

  v25 = *MEMORY[0x277D29460];
  v26 = _MSUPreferencesCopyValue();
  if (v26)
  {
    v27 = v26;
    v28 = CFGetTypeID(v26);
    if (v28 == CFNumberGetTypeID())
    {
      v24 = [v27 unsignedLongLongValue];
      v29 = [MEMORY[0x277D64460] sharedLogger];
      v30 = [v29 oslog];

      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v54 = self;
        v55 = 2048;
        v56 = v24;
        _os_log_impl(&dword_23193C000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ Using PSUS max size from preferences: %llu", buf, 0x16u);
      }
    }

    CFRelease(v27);
  }

  v33 = v21 > v24 || v22 > v24 || v22 + v21 > v24;
  if (v33)
  {
    v34 = [MEMORY[0x277D64460] sharedLogger];
    v35 = [v34 oslog];

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v54 = self;
      v55 = 2048;
      v56 = v21;
      v57 = 2048;
      v58 = v22;
      v59 = 2048;
      v60 = v24;
      _os_log_impl(&dword_23193C000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ Ignore PSUS assets because required=%llu, optional=%llu, max=%llu", buf, 0x2Au);
    }
  }

  v36 = [(SUCoreScan *)self psusPrimaryDescriptor];
  [v36 setPreSUStagingRequiredSize:v21];

  v37 = [(SUCoreScan *)self psusPrimaryDescriptor];
  [v37 setPreSUStagingOptionalSize:v22];

  v38 = [(SUCoreScan *)self psusSecondaryDescriptor];
  [v38 setPreSUStagingRequiredSize:v21];

  v39 = [(SUCoreScan *)self psusSecondaryDescriptor];
  [v39 setPreSUStagingOptionalSize:v22];

  v40 = [v9 safeObjectForKey:@"Duration" ofClass:objc_opt_class()];
  [v40 doubleValue];
  v42 = v41;

  [(SUCoreScan *)self _reportPSUSDetermineFinishedEvent:0 duration:v42];
  v8 = v52;
  if (v33)
  {
    v43 = [(SUCoreScan *)self psusPrimaryDescriptor];
    [v43 setPreSUStagingRequiredSize:0];

    v44 = [(SUCoreScan *)self psusPrimaryDescriptor];
    [v44 setPreSUStagingOptionalSize:0];

    v45 = [(SUCoreScan *)self psusSecondaryDescriptor];
    [v45 setPreSUStagingRequiredSize:0];

    v46 = [(SUCoreScan *)self psusSecondaryDescriptor];
    [v46 setPreSUStagingOptionalSize:0];
  }

LABEL_4:
  [(SUCoreScan *)self setPsusPrimaryDescriptor:0];
  [(SUCoreScan *)self setPsusSecondaryDescriptor:0];
  v16 = [(SUCoreScan *)self scanFSM];
  [v16 followupEvent:@"DecideNextScanStep"];

  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

- (unint64_t)actionDeterminePSUSAssetsFailed:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreScan *)self scanFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(SUCoreScan *)self _decrementMobileAssetPending:@"DeterminePSUSAssets failed"];
  [(SUCoreScan *)self setInterimScanResult:v5];
  v9 = [v5 error];
  v10 = [v5 additionalInfo];

  v11 = [v10 safeObjectForKey:@"Duration" ofClass:objc_opt_class()];
  [v11 doubleValue];
  v13 = v12;

  [(SUCoreScan *)self _reportPSUSDetermineFinishedEvent:v9 duration:v13];
  [(SUCoreScan *)self setPsusPrimaryDescriptor:0];
  [(SUCoreScan *)self setPsusSecondaryDescriptor:0];
  v14 = [(SUCoreScan *)self scanFSM];
  [v14 followupEvent:@"DecideNextScanStep"];

  return v8;
}

- (unint64_t)actionScanComplete:(id *)a3
{
  v4 = [(SUCoreScan *)self scanFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  if ([(SUCoreScan *)self operation]!= 1)
  {
    v6 = [(SUCoreScan *)self scanFSM];
    v7 = [v6 diag];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ invalid operation (%d) detected", self, -[SUCoreScan operation](self, "operation")];
    v13 = 8117;
    [v7 trackAnomaly:@"[SCAN] COMPLETE" forReason:v8 withResult:8117 withError:0];
    goto LABEL_12;
  }

  v6 = [(SUCoreScan *)self interimScanResult];
  v7 = [(SUCoreScan *)self scanPolicy];
  if ([(SUCoreScan *)self operationSPIType]== 1)
  {
    v8 = [(SUCoreScan *)self checkCompletion];
    [(SUCoreScan *)self setCheckCompletion:0];
    v9 = [(SUCoreScan *)self scanPolicy];
    v10 = [v6 descriptor];
    v11 = [v6 fallbackDescriptor];
    v12 = [v6 error];
    [(SUCoreScan *)self _checkEndComplete:v8 scanPolicy:v9 primary:v10 secondary:v11 error:v12 clearingTransaction:1];
  }

  else
  {
    if ([(SUCoreScan *)self operationSPIType]== 2)
    {
      v8 = [(SUCoreScan *)self checkMajorMinorCompletion];
      [(SUCoreScan *)self setCheckMajorMinorCompletion:0];
      v9 = [v6 majorPrimaryDescriptor];
      v10 = [v6 majorSecondaryDescriptor];
      v11 = [v6 minorPrimaryDescriptor];
      v12 = [v6 minorSecondaryDescriptor];
      v14 = [v6 error];
      LOBYTE(v16) = 1;
      [(SUCoreScan *)self _checkMajorMinorEndComplete:v8 scanPolicy:v7 majorPrimary:v9 majorSecondary:v10 minorPrimary:v11 minorSecondary:v12 error:v14 clearingTransaction:v16];
    }

    else
    {
      if ([(SUCoreScan *)self operationSPIType]!= 3)
      {
        v8 = [(SUCoreScan *)self scanFSM];
        v9 = [v8 diag];
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ unknown operationSPIType (%d) found", self, -[SUCoreScan operationSPIType](self, "operationSPIType")];
        v13 = 8117;
        [v9 trackAnomaly:@"[SCAN] COMPLETE" forReason:v10 withResult:8117 withError:0];
        goto LABEL_11;
      }

      v8 = [(SUCoreScan *)self checkSlowReleaseCompletion];
      [(SUCoreScan *)self setCheckSlowReleaseCompletion:0];
      v9 = [v6 majorPrimaryDescriptor];
      v10 = [v6 majorSecondaryDescriptor];
      v11 = [v6 minorPrimaryDescriptor];
      v12 = [v6 minorSecondaryDescriptor];
      v14 = [v6 error];
      LOBYTE(v16) = 1;
      [(SUCoreScan *)self _checkSlowReleaseEndComplete:v8 scanPolicy:v7 primary:v9 secondary:v10 alternatePrimary:v11 alternateSecondary:v12 error:v14 clearingTransaction:v16];
    }
  }

  v13 = 0;
LABEL_11:

LABEL_12:
  if (![(SUCoreScan *)self cancelingOperation])
  {
    [(SUCoreScan *)self _clearCurrentOperation];
  }

  return v13;
}

- (unint64_t)actionDecideNextScanStep:(id *)a3
{
  v4 = [(SUCoreScan *)self scanFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  [(SUCoreScan *)self setPhase:[(SUCoreScan *)self _getPhaseAndPostEventAfterReachingScanPhase:[(SUCoreScan *)self phase]]];
  return 0;
}

- (int64_t)actionDownloadDocCatalog:(id *)a3
{
  v4 = [(SUCoreScan *)self scanFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SUCoreScan *)self scanPolicy];
  v7 = [v6 documentationAssetType];
  v8 = [(SUCoreScan *)self _downloadCatalog:v7 withIdentifier:@"doc"];

  return v8;
}

- (int64_t)actionQueryDocMetadata:(id *)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = [(SUCoreScan *)self scanFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SUCoreScan *)self _decrementMobileAssetPending:@"DownloadDocCatalog"];
  v7 = [(SUCoreScan *)self scanPolicy];
  v8 = [v7 mobileAssetPurposeOverride];

  if (v8)
  {
    v9 = [(SUCoreScan *)self scanPolicy];
    v10 = [v9 mobileAssetPurposeOverride];

    v11 = [MEMORY[0x277D64460] sharedLogger];
    v12 = [v11 oslog];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v41 = self;
      v42 = 2114;
      v43 = v10;
      v13 = "%{public}@ doc metadata query using mobileAssetPurposeOverride as purpose: %{public}@";
LABEL_10:
      _os_log_impl(&dword_23193C000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0x16u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v14 = [(SUCoreScan *)self activeDescriptor];
  v15 = [v14 assetAudienceUUID];

  if (v15)
  {
    v16 = [(SUCoreScan *)self activeDescriptor];
    v10 = [v16 assetAudienceUUID];

    v17 = [MEMORY[0x277D64460] sharedLogger];
    v12 = [v17 oslog];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v41 = self;
      v42 = 2114;
      v43 = v10;
      v13 = "%{public}@ doc metadata query using activeDescriptor assetAudienceUUID as purpose: %{public}@";
      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

  v18 = [(SUCoreScan *)self scanPolicy];
  v19 = [v18 assetAudienceUUID];

  if (v19)
  {
    v20 = [(SUCoreScan *)self scanPolicy];
    v10 = [v20 assetAudienceUUID];

    v21 = [MEMORY[0x277D64460] sharedLogger];
    v12 = [v21 oslog];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v41 = self;
      v42 = 2114;
      v43 = v10;
      v13 = "%{public}@ doc metadata query using scan policy assetAudienceUUID as purpose: %{public}@";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v10 = 0;
LABEL_12:
  v22 = [(SUCoreScan *)self scanPolicy];
  v23 = [(SUCoreScan *)self activeDescriptor];
  v24 = [v23 documentationID];
  v25 = [v22 constructDocumentationMAAssetQueryWithDocID:v24 purpose:v10];

  [(SUCoreScan *)self _incrementMobileAssetPending:@"QueryDocMetadata"];
  if (v25)
  {
    [(SUCoreScan *)self _trackScanBegin:@"queryMetaDataWithError" withIdentifier:@"doc"];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __37__SUCoreScan_actionQueryDocMetadata___block_invoke;
    v38[3] = &unk_27892D200;
    v38[4] = self;
    v39 = v25;
    [v39 SUCoreBorder_queryMetaDataWithError:v38];
  }

  else
  {
    v26 = objc_alloc(MEMORY[0x277CCACA8]);
    v27 = [(SUCoreScan *)self activeDescriptor];
    v28 = [v27 documentationID];
    v29 = [(SUCoreScan *)self scanPolicy];
    v30 = [v29 summary];
    v31 = [v26 initWithFormat:@"failed to construct doc asset query for docID[%@] from policy[%@]", v28, v30];

    v32 = [MEMORY[0x277D643F8] sharedCore];
    v6 = 8100;
    v33 = [v32 buildError:8100 underlying:0 description:v31];

    v34 = [(SUCoreScan *)self scanFSM];
    v35 = [[SUCoreScanParam alloc] initWithResult:8100 withError:v33];
    [v34 postEvent:@"QueryMetadataFailed" withInfo:v35];
  }

  v36 = *MEMORY[0x277D85DE8];
  return v6;
}

void __37__SUCoreScan_actionQueryDocMetadata___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  [*(a1 + 32) _trackScanEnd:@"queryMetaDataWithError" withIdentifier:@"doc" withResult:a2 withError:?];
  if (a2)
  {
    v5 = [MEMORY[0x277D643F8] sharedCore];
    v6 = [v5 buildError:8401 underlying:v9 description:@"failed to query doc metadata"];

    v7 = [*(a1 + 32) scanFSM];
    v8 = [[SUCoreScanParam alloc] initWithResult:a2 withError:v6];
    [v7 postEvent:@"QueryMetadataFailed" withInfo:v8];
  }

  else
  {
    [*(a1 + 32) _filterDocQueryResults:*(a1 + 40)];
  }
}

- (int64_t)actionDownloadDocAsset:(id *)a3
{
  v4 = [(SUCoreScan *)self scanFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SUCoreScan *)self _decrementMobileAssetPending:@"DownloadDocAsset"];
  [(SUCoreScan *)self _incrementMobileAssetPending:@"DownloadDocAsset"];
  v7 = [SUCoreMobileAsset alloc];
  v8 = [(SUCoreScan *)self activeDescriptor];
  v9 = [v8 documentationAsset];
  v10 = [(SUCoreScan *)self scanUUID];
  v11 = [(SUCoreMobileAsset *)v7 initWithDelegate:0 forAsset:v9 updateUUID:v10];
  [(SUCoreScan *)self setMaDocumentationControl:v11];

  v12 = [(SUCoreScan *)self maDocumentationControl];

  if (v12)
  {
    v13 = [(SUCoreScan *)self maDocumentationControl];
    v14 = [(SUCoreScan *)self scanPolicy];
    v15 = [(SUCoreScan *)self scanUUID];
    v16 = [(SUCoreScan *)self activeDescriptor];
    v17 = [v16 productBuildVersion];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __37__SUCoreScan_actionDownloadDocAsset___block_invoke;
    v23[3] = &unk_27892D228;
    v23[4] = self;
    [v13 downloadDocumentationAssetWithPolicy:v14 withUUID:v15 stashingDocumentationForBuild:v17 completion:v23];
  }

  else
  {
    v18 = [MEMORY[0x277D643F8] sharedCore];
    v6 = 8100;
    v19 = [v18 buildError:8100 underlying:0 description:@"failed to allocate MA documentation control"];

    v20 = [(SUCoreScan *)self scanFSM];
    v21 = [[SUCoreScanParam alloc] initWithResult:8100 withError:v19];
    [v20 postEvent:@"DocDownloadFailed" withInfo:v21];
  }

  return v6;
}

void __37__SUCoreScan_actionDownloadDocAsset___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11 = v3;
  if (v3)
  {
    v5 = [v4 scanFSM];
    v6 = -[SUCoreScanParam initWithResult:withError:]([SUCoreScanParam alloc], "initWithResult:withError:", [v11 code], v11);
    [v5 postEvent:@"DocDownloadFailed" withInfo:v6];
  }

  else
  {
    v7 = [v4 activeDescriptor];
    v8 = [v7 documentation];
    v5 = [v8 extendDocumentationProperties];

    v9 = [*(a1 + 32) scanFSM];
    v6 = v9;
    if (v5)
    {
      v10 = -[SUCoreScanParam initWithResult:withError:]([SUCoreScanParam alloc], "initWithResult:withError:", [v5 code], v5);
      [(SUCoreScanParam *)v6 postEvent:@"DocDownloadFailed" withInfo:v10];
    }

    else
    {
      [(SUCoreScanParam *)v9 postEvent:@"DocDownloadSuccess"];
    }
  }
}

- (int64_t)actionAlterDocDownloadConfig:(id *)a3
{
  v4 = [(SUCoreScan *)self scanFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SUCoreScan *)self maDocumentationControl];

  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277D28A00]);
    v8 = [(SUCoreScan *)self scanPolicy];
    v9 = [v8 documentationDownloadPolicy];
    [v7 setDiscretionary:{objc_msgSend(v9, "discretionary")}];

    v10 = [(SUCoreScan *)self maDocumentationControl];
    [v10 alterDownloadOptions:v7];
    v11 = 0;
  }

  else
  {
    v7 = [(SUCoreScan *)self scanFSM];
    v10 = [v7 diag];
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ alter documentation download configuration when not downloading", self];
    v11 = 8116;
    [v10 trackAnomaly:@"[SCAN] ALTER" forReason:v12 withResult:8116 withError:0];
  }

  return v11;
}

- (int64_t)actionRemoveDocAsset:(id *)a3
{
  v4 = [(SUCoreScan *)self scanFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  [(SUCoreScan *)self _incrementMobileAssetPending:@"RemoveDocAsset"];
  v6 = [(SUCoreScan *)self maDocumentationControl];

  if (v6)
  {
    v7 = [(SUCoreScan *)self maDocumentationControl];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __35__SUCoreScan_actionRemoveDocAsset___block_invoke;
    v10[3] = &unk_27892D228;
    v10[4] = self;
    [v7 removeAsset:v10];

    return 0;
  }

  else
  {
    v9 = [(SUCoreScan *)self scanFSM];
    [v9 postEvent:@"DocRemoveFailed"];

    return 8116;
  }
}

void __35__SUCoreScan_actionRemoveDocAsset___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) scanFSM];
  if (v5)
  {
    v4 = -[SUCoreScanParam initWithResult:withError:]([SUCoreScanParam alloc], "initWithResult:withError:", [v5 code], v5);
    [v3 postEvent:@"DocRemoveFailed" withInfo:v4];
  }

  else
  {
    [v3 postEvent:@"DocRemoveSuccess"];
  }
}

- (int64_t)actionScanCompleteNoUpdate:(id *)a3
{
  v4 = [(SUCoreScan *)self scanFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  [(SUCoreScan *)self _decrementMobileAssetPending:@"ScanCompleteNoUpdate"];
  v6 = [MEMORY[0x277D643F8] sharedCore];
  v7 = [v6 buildError:8406 underlying:0 description:@"no update found"];

  LOBYTE(v9) = 1;
  [(SUCoreScan *)self _scanCompleteFoundPrimary:0 foundSecondary:0 majorPrimary:0 majorSecondary:0 minorPrimary:0 minorSecondary:0 clearingOperation:v9 error:v7];

  return 0;
}

- (int64_t)actionScanSuccess:(id)a3 error:(id *)a4
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(SUCoreScan *)self scanFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(SUCoreScan *)self _decrementMobileAssetPending:@"ScanSuccess"];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v55 = self;
  v10 = [(SUCoreScan *)self operation];
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      v54 = v8;
      v32 = [MEMORY[0x277D64460] sharedLogger];
      v12 = [v32 oslog];

      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v33 = [v5 descriptor];
      v14 = [v33 summary];
      v34 = [v5 descriptor];
      v35 = [v34 documentation];
      v36 = [v35 summary];
      *buf = 138543874;
      v62 = self;
      v63 = 2114;
      v64 = v14;
      v65 = 2114;
      v66 = v36;
      _os_log_impl(&dword_23193C000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ collected descriptor:%{public}@ doc metadata:%{public}@", buf, 0x20u);
    }

    else
    {
      if (v10 != 4)
      {
        goto LABEL_11;
      }

      v54 = v8;
      v18 = [(SUCoreScan *)self secondaryUpdateAsset];

      v19 = [MEMORY[0x277D64460] sharedLogger];
      v12 = [v19 oslog];

      v20 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v18)
      {
        if (!v20)
        {
          goto LABEL_26;
        }

        v14 = [(SUCoreScan *)self primaryUpdateAsset];
        v21 = [v14 assetId];
        v22 = [(SUCoreScan *)self secondaryUpdateAsset];
        v23 = [v22 assetId];
        *buf = 138543874;
        v62 = self;
        v63 = 2114;
        v64 = v21;
        v65 = 2114;
        v66 = v23;
        _os_log_impl(&dword_23193C000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ found primary update asset ID:%{public}@ with secondary update asset ID:%{public}@", buf, 0x20u);
      }

      else
      {
        if (!v20)
        {
          goto LABEL_26;
        }

        v14 = [(SUCoreScan *)self primaryUpdateAsset];
        v21 = [v14 assetId];
        *buf = 138543618;
        v62 = self;
        v63 = 2114;
        v64 = v21;
        _os_log_impl(&dword_23193C000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ found update asset ID:%{public}@", buf, 0x16u);
      }
    }

LABEL_25:

    goto LABEL_26;
  }

  if (v10 != 1)
  {
    if (v10 == 2)
    {
      v54 = v8;
      v11 = [MEMORY[0x277D64460] sharedLogger];
      v12 = [v11 oslog];

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v5 descriptor];
        v14 = [v13 summary];
        v15 = [v5 descriptor];
        v16 = [v15 overviewWithMaxValueLength:96 providingSubstitutionMap:v9];
        *buf = 138543874;
        v62 = self;
        v63 = 2114;
        v64 = v14;
        v65 = 2114;
        v66 = v16;
        v17 = "%{public}@ verified active descriptor:%{public}@\n%{public}@";
LABEL_24:
        _os_log_impl(&dword_23193C000, v12, OS_LOG_TYPE_DEFAULT, v17, buf, 0x20u);

        goto LABEL_25;
      }

      goto LABEL_26;
    }

LABEL_11:
    [(SUCoreScan *)self _invalidOperation:@"[SCAN] SUCCESS"];
    v54 = 8112;
    goto LABEL_27;
  }

  v54 = v8;
  v24 = [v5 fallbackDescriptor];

  v25 = [MEMORY[0x277D64460] sharedLogger];
  v12 = [v25 oslog];

  v26 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v24)
  {
    if (v26)
    {
      v27 = [v5 descriptor];
      v28 = [v27 summary];
      v29 = [v5 descriptor];
      v30 = [v29 overviewWithMaxValueLength:96 providingSubstitutionMap:v9];
      *buf = 138543874;
      v62 = self;
      v63 = 2114;
      v64 = v28;
      v65 = 2114;
      v66 = v30;
      _os_log_impl(&dword_23193C000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ found primary descriptor:%{public}@\n%{public}@", buf, 0x20u);
    }

    v31 = [MEMORY[0x277D64460] sharedLogger];
    v12 = [v31 oslog];

    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v13 = [v5 fallbackDescriptor];
    v14 = [v13 summary];
    v15 = [v5 fallbackDescriptor];
    v16 = [v15 overviewWithMaxValueLength:96 providingSubstitutionMap:v9];
    *buf = 138543874;
    v62 = self;
    v63 = 2114;
    v64 = v14;
    v65 = 2114;
    v66 = v16;
    v17 = "%{public}@ with fallback descriptor:%{public}@\n%{public}@";
    goto LABEL_24;
  }

  if (v26)
  {
    v13 = [v5 descriptor];
    v14 = [v13 summary];
    v15 = [v5 descriptor];
    v16 = [v15 overviewWithMaxValueLength:96 providingSubstitutionMap:v9];
    *buf = 138543874;
    v62 = self;
    v63 = 2114;
    v64 = v14;
    v65 = 2114;
    v66 = v16;
    v17 = "%{public}@ found descriptor:%{public}@\n%{public}@";
    goto LABEL_24;
  }

LABEL_26:

LABEL_27:
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v37 = v9;
  v38 = [v37 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v57;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v57 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v56 + 1) + 8 * i);
        v43 = [MEMORY[0x277D64460] sharedLogger];
        v44 = [v43 oslog];

        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v62 = v55;
          v63 = 2114;
          v64 = v42;
          _os_log_impl(&dword_23193C000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v39);
  }

  v45 = [v5 descriptor];
  v46 = [v5 fallbackDescriptor];
  v47 = [v5 majorPrimaryDescriptor];
  v48 = [v5 majorSecondaryDescriptor];
  v49 = [v5 minorPrimaryDescriptor];
  v50 = [v5 minorSecondaryDescriptor];
  LOBYTE(v53) = 1;
  [(SUCoreScan *)v55 _scanCompleteFoundPrimary:v45 foundSecondary:v46 majorPrimary:v47 majorSecondary:v48 minorPrimary:v49 minorSecondary:v50 clearingOperation:v53 error:0];

  v51 = *MEMORY[0x277D85DE8];
  return v54;
}

- (int64_t)actionScanFailed:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreScan *)self scanFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  [(SUCoreScan *)self _decrementMobileAssetPending:@"ScanFailed"];
  v8 = [v5 error];
  if (!v8)
  {
    v9 = [v5 resultCode];
    v10 = [MEMORY[0x277D643F8] sharedCore];
    if (v9)
    {
      v11 = [v5 resultCode];
    }

    else
    {
      v11 = 8402;
    }

    v8 = [v10 buildError:v11 underlying:0 description:@"scan failed"];
  }

  LOBYTE(v13) = 1;
  [(SUCoreScan *)self _scanCompleteFoundPrimary:0 foundSecondary:0 majorPrimary:0 majorSecondary:0 minorPrimary:0 minorSecondary:0 clearingOperation:v13 error:v8];

  return 0;
}

- (int64_t)actionCancelPSUSAssetsDetermination:(id *)a3
{
  v4 = [(SUCoreScan *)self scanFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  [(SUCoreScan *)self _incrementMobileAssetPending:@"CancelPSUSAssetsDetermination"];
  [(SUCoreScan *)self _trackScanBegin:@"stageCancelOperation"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__SUCoreScan_actionCancelPSUSAssetsDetermination___block_invoke;
  v7[3] = &unk_27892D228;
  v7[4] = self;
  [MEMORY[0x277D289E0] SUCoreBorder_stageCancelOperation:v7];
  return 0;
}

void __50__SUCoreScan_actionCancelPSUSAssetsDetermination___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _trackScanEnd:@"stageCancelOperation" withResult:objc_msgSend(v4 withError:{"code"), v4}];

  v5 = [*(a1 + 32) scanFSM];
  v7 = v5;
  if (v4)
  {
    v6 = @"PSUSAssetsDetermineCancelFailed";
  }

  else
  {
    v6 = @"PSUSAssetsDetermineCancelSuccess";
  }

  [v5 postEvent:v6];
}

- (int64_t)actionCancelSUCatalogDownload:(id *)a3
{
  v4 = [(SUCoreScan *)self scanFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  [(SUCoreScan *)self _incrementMobileAssetPending:@"CancelSUCatalogDownload"];
  [(SUCoreScan *)self _trackScanBegin:@"cancelCatalogDownload" withIdentifier:@"su"];
  v6 = MEMORY[0x277D289C0];
  v7 = [(SUCoreScan *)self scanPolicy];
  v8 = [v7 softwareUpdateAssetType];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__SUCoreScan_actionCancelSUCatalogDownload___block_invoke;
  v10[3] = &unk_27892D250;
  v10[4] = self;
  [v6 SUCoreBorder_cancelCatalogDownload:v8 completionWithCancelResult:v10];

  return 0;
}

void __44__SUCoreScan_actionCancelSUCatalogDownload___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _trackScanEnd:@"cancelCatalogDownload" withIdentifier:@"su" withResult:a2 withError:0];
  v4 = [*(a1 + 32) scanFSM];
  v6 = v4;
  if (a2)
  {
    v5 = @"CatalogDownloadCancelFailed";
  }

  else
  {
    v5 = @"CatalogDownloadCancelSuccess";
  }

  [v4 postEvent:v5];
}

- (int64_t)actionCancelDocCatalogDownload:(id *)a3
{
  v4 = [(SUCoreScan *)self scanFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  [(SUCoreScan *)self _incrementMobileAssetPending:@"CancelDocCatalogDownload"];
  [(SUCoreScan *)self _trackScanBegin:@"cancelCatalogDownload" withIdentifier:@"doc"];
  v6 = MEMORY[0x277D289C0];
  v7 = [(SUCoreScan *)self scanPolicy];
  v8 = [v7 documentationAssetType];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__SUCoreScan_actionCancelDocCatalogDownload___block_invoke;
  v10[3] = &unk_27892D250;
  v10[4] = self;
  [v6 SUCoreBorder_cancelCatalogDownload:v8 completionWithCancelResult:v10];

  return 0;
}

void __45__SUCoreScan_actionCancelDocCatalogDownload___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _trackScanEnd:@"cancelCatalogDownload" withIdentifier:@"doc" withResult:a2 withError:0];
  v4 = [*(a1 + 32) scanFSM];
  v6 = v4;
  if (a2)
  {
    v5 = @"CatalogDownloadCancelFailed";
  }

  else
  {
    v5 = @"CatalogDownloadCancelSuccess";
  }

  [v4 postEvent:v5];
}

- (int64_t)actionCancelSuccess:(id *)a3
{
  v4 = [(SUCoreScan *)self scanFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SUCoreScan *)self _decrementMobileAssetPending:@"CancelSuccess"];
  if ([(SUCoreScan *)self cancelingOperation])
  {
    [(SUCoreScan *)self _cancelCompleteWithError:0];
  }

  else
  {
    v7 = [(SUCoreScan *)self scanFSM];
    v8 = [v7 diag];
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ cancel success when not canceling", self];
    v6 = 8405;
    [v8 trackAnomaly:@"[SCAN] CANCEL" forReason:v9 withResult:8405 withError:0];
  }

  return v6;
}

- (int64_t)actionAfterAvailCancelSuccess:(id)a3 error:(id *)a4
{
  v5 = [(SUCoreScan *)self scanFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(SUCoreScan *)self _decrementMobileAssetPending:@"AfterAvailCancelSuccess"];
  if ([(SUCoreScan *)self cancelingOperation])
  {
    [(SUCoreScan *)self _cancelCompleteWithError:0];
  }

  else
  {
    v8 = [(SUCoreScan *)self scanFSM];
    v9 = [v8 diag];
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ cancel (after update availabvle) when not canceling", self];
    v7 = 8405;
    [v9 trackAnomaly:@"[SCAN] CANCEL" forReason:v10 withResult:8405 withError:0];
  }

  return v7;
}

- (int64_t)actionAfterFailCancelSuccess:(id)a3 error:(id *)a4
{
  v5 = [(SUCoreScan *)self scanFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(SUCoreScan *)self _decrementMobileAssetPending:@"AfterFailCancelSuccess"];
  if ([(SUCoreScan *)self cancelingOperation])
  {
    [(SUCoreScan *)self _cancelCompleteWithError:0];
  }

  else
  {
    v8 = [(SUCoreScan *)self scanFSM];
    v9 = [v8 diag];
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ cancel (after fail) when not canceling", self];
    v7 = 8405;
    [v9 trackAnomaly:@"[SCAN] CANCEL" forReason:v10 withResult:8405 withError:0];
  }

  return v7;
}

- (int64_t)actionCancelRemoveFailed:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreScan *)self scanFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(SUCoreScan *)self _decrementMobileAssetPending:@"CancelRemoveFailed"];
  if ([(SUCoreScan *)self cancelingOperation])
  {
    v9 = [v5 error];
    [(SUCoreScan *)self _cancelCompleteWithError:v9];
  }

  else
  {
    v9 = [(SUCoreScan *)self scanFSM];
    v10 = [v9 diag];
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ cancel (after remove fail) when not canceling", self];
    v12 = [v5 resultCode];
    v13 = [v5 error];
    [v10 trackAnomaly:@"[SCAN] CANCEL" forReason:v11 withResult:v12 withError:v13];

    v8 = 8405;
  }

  return v8;
}

- (int64_t)actionCheckCancelDone:(id *)a3
{
  v4 = [(SUCoreScan *)self scanFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SUCoreScan *)self _decrementMobileAssetPending:@"CheckCancelDone"];
  if (![(SUCoreScan *)self pendingMobileAssetRequests])
  {
    v7 = [(SUCoreScan *)self scanFSM];
    [v7 followupEvent:@"CancelComplete"];
  }

  return v6;
}

- (int64_t)actionAfterFailCheckCancelDone:(id)a3 error:(id *)a4
{
  v5 = [(SUCoreScan *)self scanFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(SUCoreScan *)self _decrementMobileAssetPending:@"AfterFailCheckCancelDone"];
  if (![(SUCoreScan *)self pendingMobileAssetRequests])
  {
    v8 = [(SUCoreScan *)self scanFSM];
    [v8 followupEvent:@"CancelComplete"];
  }

  return v7;
}

- (int64_t)actionCancelDone:(id *)a3
{
  v4 = [(SUCoreScan *)self scanFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  if ([(SUCoreScan *)self cancelingOperation])
  {
    [(SUCoreScan *)self _cancelCompleteWithError:0];
    return 0;
  }

  else
  {
    v7 = [(SUCoreScan *)self scanFSM];
    v8 = [v7 diag];
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ cancel done when not canceling", self];
    v6 = 8405;
    [v8 trackAnomaly:@"[SCAN] CANCEL" forReason:v9 withResult:8405 withError:0];
  }

  return v6;
}

- (int64_t)actionUnknownAction:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreScan *)self scanFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(SUCoreScan *)self scanFSM];
  v9 = [v8 diag];
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ unknown action(%@)", self, v5];

  [v9 dumpTracked:v10 dumpingTo:5 usingFilename:0 clearingStatistics:0 clearingHistory:0];
  return 8102;
}

- (int64_t)a_SimCatalogDownloadSuccess:(id *)a3
{
  v4 = [(SUCoreScan *)self scanFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SUCoreScan *)self scanFSM];
  [v6 postEvent:@"CatalogDownloadSuccess"];

  return 0;
}

- (int64_t)a_SimQueryMetadataUpdateAvailable:(id *)a3
{
  v4 = [(SUCoreScan *)self scanFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_alloc(MEMORY[0x277D289C0]);
  v7 = [(SUCoreScan *)self _simDescriptorAttributes];
  v8 = [v6 initWithAttributes:v7];

  v9 = [[SUCoreDescriptor alloc] initWithSUAsset:v8 releaseDate:@"2018-10-22" defaultValues:0];
  v10 = [(SUCoreScan *)self scanFSM];
  v11 = [[SUCoreScanParam alloc] initWithDescriptor:v9 withFallbackDescriptor:0];
  [v10 postEvent:@"QueryMetadataUpdateAvailable" withInfo:v11];

  return 0;
}

- (SUCoreScan)initWithUUID:(id)a3 withCompletionQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v39.receiver = self;
  v39.super_class = SUCoreScan;
  v9 = [(SUCoreScan *)&v39 init];
  if (v9)
  {
    v10 = +[SUCoreScan _generateStateTable];
    v11 = [objc_alloc(MEMORY[0x277D64458]) initMachine:@"scan" ofInstance:v7 withTable:v10 startingIn:@"Idle"];
    scanFSM = v9->_scanFSM;
    v9->_scanFSM = v11;

    if (!v9->_scanFSM)
    {

      v35 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v9->_scanUUID, a3);
    v13 = [MEMORY[0x277D643F8] sharedCore];
    v14 = [v13 selectCompletionQueue:v8];
    clientCompletionQueue = v9->_clientCompletionQueue;
    v9->_clientCompletionQueue = v14;

    v9->_operation = 0;
    v9->_operationSPIType = 0;
    v9->_cancelingOperation = 0;
    scanPolicy = v9->_scanPolicy;
    v9->_scanPolicy = 0;

    activeDescriptor = v9->_activeDescriptor;
    v9->_activeDescriptor = 0;

    v9->_downloadDocumentation = 0;
    v9->_pendingMobileAssetRequests = 0;
    alternateAssetAudienceUUID = v9->_alternateAssetAudienceUUID;
    v9->_alternateAssetAudienceUUID = 0;

    maDocumentationControl = v9->_maDocumentationControl;
    v9->_maDocumentationControl = 0;

    primaryUpdateAsset = v9->_primaryUpdateAsset;
    v9->_primaryUpdateAsset = 0;

    secondaryUpdateAsset = v9->_secondaryUpdateAsset;
    v9->_secondaryUpdateAsset = 0;

    originalScanPolicy = v9->_originalScanPolicy;
    v9->_originalScanPolicy = 0;

    v9->_phase = 0;
    interimScanResult = v9->_interimScanResult;
    v9->_interimScanResult = 0;

    psusPrimaryDescriptor = v9->_psusPrimaryDescriptor;
    v9->_psusPrimaryDescriptor = 0;

    psusSecondaryDescriptor = v9->_psusSecondaryDescriptor;
    v9->_psusSecondaryDescriptor = 0;

    checkCompletion = v9->_checkCompletion;
    v9->_checkCompletion = 0;

    checkMajorMinorCompletion = v9->_checkMajorMinorCompletion;
    v9->_checkMajorMinorCompletion = 0;

    checkSlowReleaseCompletion = v9->_checkSlowReleaseCompletion;
    v9->_checkSlowReleaseCompletion = 0;

    verifyCompletion = v9->_verifyCompletion;
    v9->_verifyCompletion = 0;

    collectCompletion = v9->_collectCompletion;
    v9->_collectCompletion = 0;

    locateCompletion = v9->_locateCompletion;
    v9->_locateCompletion = 0;

    cancelCompletion = v9->_cancelCompletion;
    v9->_cancelCompletion = 0;

    +[SUCoreMobileAsset mapMobileAssetErrorIndications];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __47__SUCoreScan_initWithUUID_withCompletionQueue___block_invoke;
    v37[3] = &unk_27892D2A0;
    v33 = v9;
    v38 = v33;
    [v10 enumerateKeysAndObjectsUsingBlock:v37];
    v34 = [(SUCoreScan *)v33 scanFSM];
    [v34 activateMachine];
  }

  v35 = v9;
LABEL_6:

  return v35;
}

void __47__SUCoreScan_initWithUUID_withCompletionQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SUCoreScan_initWithUUID_withCompletionQueue___block_invoke_2;
  v7[3] = &unk_27892D278;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void __47__SUCoreScan_initWithUUID_withCompletionQueue___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = [a3 safeStringForKey:*MEMORY[0x277D644B8]];
  if (v5)
  {
    if (([v8 isEqualToString:@"CatalogDownloadFailed"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"QueryMetadataFailed") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"QueryMetadataNoAssetFound") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"QueryMetadataUpdateAvailable") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"DocDownloadFailed") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"DocRemoveFailed") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"PSUSAssetsDetermineFailed") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"CheckForAvailableUpdate") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"DeterminePSUSAssets") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"ScanComplete") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"PSUSAssetsDetermineSuccess") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"ReserveSpace"))
    {
      v6 = objc_opt_class();
    }

    else
    {
      v6 = 0;
    }

    v7 = [*(a1 + 32) scanFSM];
    [v7 registerAction:v5 ForEvent:v8 inState:*(a1 + 40) usingDelegate:*(a1 + 32) withInfoClass:v6];
  }
}

- (void)checkForAvailableUpdateWithPolicy:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D64460] sharedLogger];
  v9 = [v8 oslog];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v22 = self;
    v23 = 2080;
    v24 = "[SUCoreScan checkForAvailableUpdateWithPolicy:completion:]";
    v25 = 2114;
    v26 = v6;
    _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %s is called with policy:%{public}@", buf, 0x20u);
  }

  v10 = [MEMORY[0x277D643F8] beginTransactionWithName:@"scan.CheckForAvailableUpdate"];
  v11 = [(SUCoreScan *)self scanFSM];
  v12 = [v11 extendedStateQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__SUCoreScan_checkForAvailableUpdateWithPolicy_completion___block_invoke;
  v17[3] = &unk_27892D2C8;
  v17[4] = self;
  v18 = v6;
  v19 = v10;
  v20 = v7;
  v13 = v10;
  v14 = v6;
  v15 = v7;
  dispatch_async(v12, v17);

  v16 = *MEMORY[0x277D85DE8];
}

void __59__SUCoreScan_checkForAvailableUpdateWithPolicy_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _trackScanBegin:@"checkForAvailableUpdateWithPolicy"];
  if ([*(a1 + 32) operation])
  {
    v2 = [MEMORY[0x277D643F8] sharedCore];
    v18 = [v2 buildError:8111 underlying:0 description:@"check when already performing scan operation"];

    v3 = [*(a1 + 32) scanFSM];
    v4 = [v3 diag];
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ already performing scan operation", *(a1 + 32)];
    v6 = v4;
    v7 = v5;
    v8 = 8111;
LABEL_5:
    [v6 trackAnomaly:@"[SCAN] CHECK" forReason:v7 withResult:v8 withError:v18];

    [*(a1 + 32) _checkEndComplete:*(a1 + 56) scanPolicy:*(a1 + 40) primary:0 secondary:0 error:v18 clearingTransaction:0];
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 48) withName:@"scan.CheckForAvailableUpdate"];
    goto LABEL_6;
  }

  if ([*(a1 + 32) cancelingOperation])
  {
    v9 = [MEMORY[0x277D643F8] sharedCore];
    v18 = [v9 buildError:8115 underlying:0 description:@"check when canceling"];

    v3 = [*(a1 + 32) scanFSM];
    v4 = [v3 diag];
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ check when canceling scan operation", *(a1 + 32)];
    v6 = v4;
    v7 = v5;
    v8 = 8115;
    goto LABEL_5;
  }

  v10 = [*(a1 + 32) scanCheckTransaction];

  if (v10)
  {
    v11 = [*(a1 + 32) scanFSM];
    v12 = [v11 diag];
    [v12 trackAnomaly:@"[SCAN] CHECK" forReason:@"existing transaction found for kSUCoreTransactionCheckForAvailableUpdate" withResult:8120 withError:0];
  }

  [*(a1 + 32) setScanCheckTransaction:*(a1 + 48)];
  v13 = [*(a1 + 40) copy];
  [*(a1 + 32) setScanPolicy:v13];

  v14 = [*(a1 + 40) mobileAssetPurposeOverride];

  if (v14)
  {
    v15 = [*(a1 + 40) mobileAssetPurposeOverride];
    v16 = [v15 copy];
    v17 = [*(a1 + 32) scanPolicy];
    [v17 setMobileAssetPurposeOverride:v16];
  }

  [*(a1 + 32) setCheckCompletion:*(a1 + 56)];
  [*(a1 + 32) setOperation:1];
  [*(a1 + 32) setOperationSPIType:1];
  v18 = [*(a1 + 32) scanFSM];
  [v18 postProtectedEvent:@"DecideNextScanStep"];
LABEL_6:
}

- (void)checkForAvailableMajorMinorUpdatesWithPolicy:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D64460] sharedLogger];
  v9 = [v8 oslog];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v22 = self;
    v23 = 2080;
    v24 = "[SUCoreScan checkForAvailableMajorMinorUpdatesWithPolicy:completion:]";
    v25 = 2114;
    v26 = v6;
    _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %s is called with policy:%{public}@", buf, 0x20u);
  }

  v10 = [MEMORY[0x277D643F8] beginTransactionWithName:@"scan.CheckForAvailableUpdate"];
  v11 = [(SUCoreScan *)self scanFSM];
  v12 = [v11 extendedStateQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__SUCoreScan_checkForAvailableMajorMinorUpdatesWithPolicy_completion___block_invoke;
  v17[3] = &unk_27892D2C8;
  v17[4] = self;
  v18 = v6;
  v19 = v10;
  v20 = v7;
  v13 = v10;
  v14 = v6;
  v15 = v7;
  dispatch_async(v12, v17);

  v16 = *MEMORY[0x277D85DE8];
}

void __70__SUCoreScan_checkForAvailableMajorMinorUpdatesWithPolicy_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _trackScanBegin:@"checkForAvailableUpdateWithPolicy"];
  if ([*(a1 + 32) operation])
  {
    v2 = [MEMORY[0x277D643F8] sharedCore];
    v19 = [v2 buildError:8111 underlying:0 description:@"check when already performing scan operation"];

    v3 = [*(a1 + 32) scanFSM];
    v4 = [v3 diag];
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ already performing scan operation", *(a1 + 32)];
    v6 = v4;
    v7 = v5;
    v8 = 8111;
LABEL_5:
    [v6 trackAnomaly:@"[SCAN] CHECK MAJOR_MINOR" forReason:v7 withResult:v8 withError:v19];

    LOBYTE(v18) = 0;
    [*(a1 + 32) _checkMajorMinorEndComplete:*(a1 + 56) scanPolicy:*(a1 + 40) majorPrimary:0 majorSecondary:0 minorPrimary:0 minorSecondary:0 error:v19 clearingTransaction:v18];
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 48) withName:@"scan.CheckForAvailableUpdate"];
    goto LABEL_6;
  }

  if ([*(a1 + 32) cancelingOperation])
  {
    v9 = [MEMORY[0x277D643F8] sharedCore];
    v19 = [v9 buildError:8115 underlying:0 description:@"check when canceling"];

    v3 = [*(a1 + 32) scanFSM];
    v4 = [v3 diag];
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ check when canceling scan operation", *(a1 + 32)];
    v6 = v4;
    v7 = v5;
    v8 = 8115;
    goto LABEL_5;
  }

  v10 = [*(a1 + 32) scanCheckTransaction];

  if (v10)
  {
    v11 = [*(a1 + 32) scanFSM];
    v12 = [v11 diag];
    [v12 trackAnomaly:@"[SCAN] CHECK MAJOR_MINOR" forReason:@"existing transaction found for kSUCoreTransactionCheckForAvailableUpdate" withResult:8120 withError:0];
  }

  [*(a1 + 32) setScanCheckTransaction:*(a1 + 48)];
  v13 = [*(a1 + 40) copy];
  [*(a1 + 32) setScanPolicy:v13];

  v14 = [*(a1 + 40) mobileAssetPurposeOverride];

  if (v14)
  {
    v15 = [*(a1 + 40) mobileAssetPurposeOverride];
    v16 = [v15 copy];
    v17 = [*(a1 + 32) scanPolicy];
    [v17 setMobileAssetPurposeOverride:v16];
  }

  [*(a1 + 32) setCheckMajorMinorCompletion:*(a1 + 56)];
  [*(a1 + 32) setOperation:1];
  [*(a1 + 32) setOperationSPIType:2];
  v19 = [*(a1 + 32) scanFSM];
  [v19 postProtectedEvent:@"DecideNextScanStep"];
LABEL_6:
}

- (void)checkForAvailableSlowReleaseUpdatesWithPolicy:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D64460] sharedLogger];
  v9 = [v8 oslog];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v22 = self;
    v23 = 2080;
    v24 = "[SUCoreScan checkForAvailableSlowReleaseUpdatesWithPolicy:completion:]";
    v25 = 2114;
    v26 = v6;
    _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %s is called with policy:%{public}@", buf, 0x20u);
  }

  v10 = [MEMORY[0x277D643F8] beginTransactionWithName:@"scan.CheckForAvailableUpdate"];
  v11 = [(SUCoreScan *)self scanFSM];
  v12 = [v11 extendedStateQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__SUCoreScan_checkForAvailableSlowReleaseUpdatesWithPolicy_completion___block_invoke;
  v17[3] = &unk_27892D2C8;
  v17[4] = self;
  v18 = v6;
  v19 = v10;
  v20 = v7;
  v13 = v10;
  v14 = v6;
  v15 = v7;
  dispatch_async(v12, v17);

  v16 = *MEMORY[0x277D85DE8];
}

void __71__SUCoreScan_checkForAvailableSlowReleaseUpdatesWithPolicy_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _trackScanBegin:@"checkForAvailableSlowReleaseUpdatesWithPolicy"];
  if ([*(a1 + 32) operation])
  {
    v2 = [MEMORY[0x277D643F8] sharedCore];
    v16 = [v2 buildError:8111 underlying:0 description:@"check when already performing scan operation"];

    v3 = [*(a1 + 32) scanFSM];
    v4 = [v3 diag];
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ already performing scan operation", *(a1 + 32)];
    v6 = v4;
    v7 = v5;
    v8 = 8111;
LABEL_5:
    [v6 trackAnomaly:@"[SCAN] CHECK SLOW_RELEASE" forReason:v7 withResult:v8 withError:v16];

    LOBYTE(v15) = 0;
    [*(a1 + 32) _checkSlowReleaseEndComplete:*(a1 + 56) scanPolicy:*(a1 + 40) primary:0 secondary:0 alternatePrimary:0 alternateSecondary:0 error:v16 clearingTransaction:v15];
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 48) withName:@"scan.CheckForAvailableUpdate"];
    goto LABEL_6;
  }

  if ([*(a1 + 32) cancelingOperation])
  {
    v9 = [MEMORY[0x277D643F8] sharedCore];
    v16 = [v9 buildError:8115 underlying:0 description:@"check when canceling"];

    v3 = [*(a1 + 32) scanFSM];
    v4 = [v3 diag];
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ check when canceling scan operation", *(a1 + 32)];
    v6 = v4;
    v7 = v5;
    v8 = 8115;
    goto LABEL_5;
  }

  [*(a1 + 32) setScanCheckTransaction:*(a1 + 48)];
  v10 = [*(a1 + 40) copy];
  [*(a1 + 32) setScanPolicy:v10];

  v11 = [*(a1 + 40) mobileAssetPurposeOverride];

  if (v11)
  {
    v12 = [*(a1 + 40) mobileAssetPurposeOverride];
    v13 = [v12 copy];
    v14 = [*(a1 + 32) scanPolicy];
    [v14 setMobileAssetPurposeOverride:v13];
  }

  [*(a1 + 32) setCheckSlowReleaseCompletion:*(a1 + 56)];
  [*(a1 + 32) setOperation:1];
  [*(a1 + 32) setOperationSPIType:3];
  v16 = [*(a1 + 32) scanFSM];
  [v16 postProtectedEvent:@"DecideNextScanStep"];
LABEL_6:
}

- (void)verifyLatestAvailableWithPolicy:(id)a3 descriptor:(id)a4 completion:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277D64460] sharedLogger];
  v12 = [v11 oslog];

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v27 = self;
    v28 = 2080;
    v29 = "[SUCoreScan verifyLatestAvailableWithPolicy:descriptor:completion:]";
    v30 = 2114;
    v31 = v8;
    _os_log_impl(&dword_23193C000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ %s is called with policy:%{public}@", buf, 0x20u);
  }

  v13 = [MEMORY[0x277D643F8] beginTransactionWithName:@"scan.VerifyLatestAvailable"];
  v14 = [(SUCoreScan *)self scanFSM];
  v15 = [v14 extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SUCoreScan_verifyLatestAvailableWithPolicy_descriptor_completion___block_invoke;
  block[3] = &unk_27892D2F0;
  v24 = v13;
  v25 = v10;
  block[4] = self;
  v22 = v8;
  v23 = v9;
  v16 = v13;
  v17 = v9;
  v18 = v8;
  v19 = v10;
  dispatch_async(v15, block);

  v20 = *MEMORY[0x277D85DE8];
}

void __68__SUCoreScan_verifyLatestAvailableWithPolicy_descriptor_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _trackScanBegin:@"verifyLatestAvailableWithPolicy"];
  if ([*(a1 + 32) operation])
  {
    v2 = [MEMORY[0x277D643F8] sharedCore];
    v19 = [v2 buildError:8111 underlying:0 description:@"verify when already performing scan operation"];

    v3 = [*(a1 + 32) scanFSM];
    v4 = [v3 diag];
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ already performing scan operation", *(a1 + 32)];
    v6 = v4;
    v7 = v5;
    v8 = 8111;
LABEL_5:
    [v6 trackAnomaly:@"[SCAN] VERIFY" forReason:v7 withResult:v8 withError:v19];

    LOBYTE(v18) = 0;
    [*(a1 + 32) _verifyEndComplete:*(a1 + 64) scanPolicy:*(a1 + 40) active:*(a1 + 48) primary:0 secondary:0 error:v19 clearingTransaction:v18];
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 56) withName:@"scan.VerifyLatestAvailable"];
    goto LABEL_6;
  }

  if ([*(a1 + 32) cancelingOperation])
  {
    v9 = [MEMORY[0x277D643F8] sharedCore];
    v19 = [v9 buildError:8115 underlying:0 description:@"verify when canceling"];

    v3 = [*(a1 + 32) scanFSM];
    v4 = [v3 diag];
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ verify when canceling scan operation", *(a1 + 32)];
    v6 = v4;
    v7 = v5;
    v8 = 8115;
    goto LABEL_5;
  }

  v10 = [*(a1 + 32) scanVerifyTransaction];

  if (v10)
  {
    v11 = [*(a1 + 32) scanFSM];
    v12 = [v11 diag];
    [v12 trackAnomaly:@"[SCAN] VERIFY" forReason:@"existing transaction found for kSUCoreTransactionVerifyLatestAvailable" withResult:8120 withError:0];
  }

  [*(a1 + 32) setScanVerifyTransaction:*(a1 + 56)];
  v13 = [*(a1 + 40) copy];
  [*(a1 + 32) setScanPolicy:v13];

  v14 = [*(a1 + 40) mobileAssetPurposeOverride];

  if (v14)
  {
    v15 = [*(a1 + 40) mobileAssetPurposeOverride];
    v16 = [v15 copy];
    v17 = [*(a1 + 32) scanPolicy];
    [v17 setMobileAssetPurposeOverride:v16];
  }

  [*(a1 + 32) setActiveDescriptor:*(a1 + 48)];
  [*(a1 + 32) setVerifyCompletion:*(a1 + 64)];
  [*(a1 + 32) setOperation:2];
  [*(a1 + 32) setOperationSPIType:1];
  v19 = [*(a1 + 32) scanFSM];
  [v19 postProtectedEvent:@"VerifyLatestAvailable"];
LABEL_6:
}

- (void)collectDocumentationMetadataWithPolicy:(id)a3 descriptor:(id)a4 downloadDocumentation:(BOOL)a5 completion:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [MEMORY[0x277D64460] sharedLogger];
  v14 = [v13 oslog];

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v30 = self;
    v31 = 2080;
    v32 = "[SUCoreScan collectDocumentationMetadataWithPolicy:descriptor:downloadDocumentation:completion:]";
    v33 = 2114;
    v34 = v10;
    _os_log_impl(&dword_23193C000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ %s is called with policy:%{public}@", buf, 0x20u);
  }

  v15 = [MEMORY[0x277D643F8] beginTransactionWithName:@"scan.CollectDocumentationMetadata"];
  v16 = [(SUCoreScan *)self scanFSM];
  v17 = [v16 extendedStateQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __97__SUCoreScan_collectDocumentationMetadataWithPolicy_descriptor_downloadDocumentation_completion___block_invoke;
  v23[3] = &unk_27892D318;
  v26 = v15;
  v27 = v12;
  v23[4] = self;
  v24 = v10;
  v25 = v11;
  v28 = a5;
  v18 = v15;
  v19 = v11;
  v20 = v10;
  v21 = v12;
  dispatch_async(v17, v23);

  v22 = *MEMORY[0x277D85DE8];
}

void __97__SUCoreScan_collectDocumentationMetadataWithPolicy_descriptor_downloadDocumentation_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _trackScanBegin:@"collectDocumentationMetadataWithPolicy"];
  if ([*(a1 + 32) operation])
  {
    v2 = [MEMORY[0x277D643F8] sharedCore];
    v18 = [v2 buildError:8111 underlying:0 description:@"collect when already performing scan operation"];

    v3 = [*(a1 + 32) scanFSM];
    v4 = [v3 diag];
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ already performing scan operation", *(a1 + 32)];
    v6 = v4;
    v7 = v5;
    v8 = 8111;
LABEL_5:
    [v6 trackAnomaly:@"[SCAN] COLLECT" forReason:v7 withResult:v8 withError:v18];

    [*(a1 + 32) _collectEndComplete:*(a1 + 64) scanPolicy:*(a1 + 40) active:*(a1 + 48) error:v18 clearingTransaction:0];
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 56) withName:@"scan.CollectDocumentationMetadata"];
    goto LABEL_6;
  }

  if ([*(a1 + 32) cancelingOperation])
  {
    v9 = [MEMORY[0x277D643F8] sharedCore];
    v18 = [v9 buildError:8115 underlying:0 description:@"collect when canceling"];

    v3 = [*(a1 + 32) scanFSM];
    v4 = [v3 diag];
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ collect when canceling scan operation", *(a1 + 32)];
    v6 = v4;
    v7 = v5;
    v8 = 8115;
    goto LABEL_5;
  }

  v10 = [*(a1 + 32) scanCollectTransaction];

  if (v10)
  {
    v11 = [*(a1 + 32) scanFSM];
    v12 = [v11 diag];
    [v12 trackAnomaly:@"[SCAN] COLLECT" forReason:@"existing transaction found for kSUCoreTransactionCollectDocumentationMetadata" withResult:8120 withError:0];
  }

  [*(a1 + 32) setScanCollectTransaction:*(a1 + 56)];
  v13 = [*(a1 + 40) copy];
  [*(a1 + 32) setScanPolicy:v13];

  v14 = [*(a1 + 40) mobileAssetPurposeOverride];

  if (v14)
  {
    v15 = [*(a1 + 40) mobileAssetPurposeOverride];
    v16 = [v15 copy];
    v17 = [*(a1 + 32) scanPolicy];
    [v17 setMobileAssetPurposeOverride:v16];
  }

  [*(a1 + 32) setActiveDescriptor:*(a1 + 48)];
  [*(a1 + 32) setDownloadDocumentation:*(a1 + 72)];
  [*(a1 + 32) setCollectCompletion:*(a1 + 64)];
  [*(a1 + 32) setOperation:3];
  [*(a1 + 32) setOperationSPIType:1];
  v18 = [*(a1 + 32) scanFSM];
  [v18 postProtectedEvent:@"CollectDocMetadata"];
LABEL_6:
}

- (void)locateAvailableUpdateWithPolicy:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D64460] sharedLogger];
  v9 = [v8 oslog];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v22 = self;
    v23 = 2080;
    v24 = "[SUCoreScan locateAvailableUpdateWithPolicy:completion:]";
    v25 = 2114;
    v26 = v6;
    _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %s is called with policy:%{public}@", buf, 0x20u);
  }

  v10 = [MEMORY[0x277D643F8] beginTransactionWithName:@"scan.LocateAvailableUpdate"];
  v11 = [(SUCoreScan *)self scanFSM];
  v12 = [v11 extendedStateQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__SUCoreScan_locateAvailableUpdateWithPolicy_completion___block_invoke;
  v17[3] = &unk_27892D2C8;
  v17[4] = self;
  v18 = v6;
  v19 = v10;
  v20 = v7;
  v13 = v10;
  v14 = v6;
  v15 = v7;
  dispatch_async(v12, v17);

  v16 = *MEMORY[0x277D85DE8];
}

void __57__SUCoreScan_locateAvailableUpdateWithPolicy_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _trackScanBegin:@"locateAvailableUpdateWithPolicy"];
  if ([*(a1 + 32) operation])
  {
    v2 = [MEMORY[0x277D643F8] sharedCore];
    v23 = [v2 buildError:8111 underlying:0 description:@"locate when already performing scan operation"];

    v3 = [*(a1 + 32) scanFSM];
    v4 = [v3 diag];
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ already performing scan operation", *(a1 + 32)];
    v6 = v4;
    v7 = v5;
    v8 = 8111;
LABEL_5:
    [v6 trackAnomaly:@"[SCAN] LOCATE" forReason:v7 withResult:v8 withError:v23];

    [*(a1 + 32) _locateEndComplete:*(a1 + 56) scanPolicy:*(a1 + 40) primary:0 secondary:0 error:v23 clearingTransaction:0];
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 48) withName:@"scan.LocateAvailableUpdate"];
    goto LABEL_6;
  }

  if ([*(a1 + 32) cancelingOperation])
  {
    v9 = [MEMORY[0x277D643F8] sharedCore];
    v23 = [v9 buildError:8115 underlying:0 description:@"locate when canceling"];

    v3 = [*(a1 + 32) scanFSM];
    v4 = [v3 diag];
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ locate when canceling scan operation", *(a1 + 32)];
    v6 = v4;
    v7 = v5;
    v8 = 8115;
    goto LABEL_5;
  }

  v10 = [*(a1 + 32) scanLocateTransaction];

  if (v10)
  {
    v11 = [*(a1 + 32) scanFSM];
    v12 = [v11 diag];
    [v12 trackAnomaly:@"[SCAN] COLLECT" forReason:@"existing transaction found for kSUCoreTransactionLocateAvailableUpdate" withResult:8120 withError:0];
  }

  [*(a1 + 32) setScanLocateTransaction:*(a1 + 48)];
  v13 = [*(a1 + 40) copy];
  [*(a1 + 32) setScanPolicy:v13];

  v14 = [*(a1 + 40) mobileAssetPurposeOverride];

  if (v14)
  {
    v15 = [*(a1 + 40) mobileAssetPurposeOverride];
    v16 = [v15 copy];
    v17 = [*(a1 + 32) scanPolicy];
    [v17 setMobileAssetPurposeOverride:v16];
  }

  [*(a1 + 32) setLocateCompletion:*(a1 + 56)];
  [*(a1 + 32) setOperation:4];
  [*(a1 + 32) setOperationSPIType:1];
  v18 = [*(a1 + 40) mobileAssetPurposeOverride];

  if (v18)
  {
    v19 = [*(a1 + 40) mobileAssetPurposeOverride];
    v20 = [v19 copy];
    v21 = [*(a1 + 32) scanPolicy];
    [v21 setMobileAssetPurposeOverride:v20];
  }

  v23 = [*(a1 + 32) scanFSM];
  v22 = [[SUCoreScanParam alloc] initWithNote:@"API locateAvailableUpdateWithPolicy"];
  [v23 postProtectedEvent:@"CheckForAvailableUpdate" withInfo:v22];

LABEL_6:
}

- (void)alterCurrentPolicy:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D64460] sharedLogger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v17 = self;
    v18 = 2080;
    v19 = "[SUCoreScan alterCurrentPolicy:]";
    v20 = 2114;
    v21 = v4;
    _os_log_impl(&dword_23193C000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ %s is called with policy:%{public}@", buf, 0x20u);
  }

  v7 = [MEMORY[0x277D643F8] beginTransactionWithName:@"scan.AlterCurrentPolicy"];
  v8 = [(SUCoreScan *)self scanFSM];
  v9 = [v8 extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SUCoreScan_alterCurrentPolicy___block_invoke;
  block[3] = &unk_27892D340;
  block[4] = self;
  v14 = v4;
  v15 = v7;
  v10 = v7;
  v11 = v4;
  dispatch_async(v9, block);

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __33__SUCoreScan_alterCurrentPolicy___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _trackScanBegin:@"alterCurrentPolicy"];
  if ([*(a1 + 32) cancelingOperation])
  {
    v2 = [MEMORY[0x277D643F8] sharedCore];
    v3 = [v2 buildError:8115 underlying:0 description:@"no alterations permitted when canceling scan operation"];

    v4 = [*(a1 + 32) scanFSM];
    v5 = [v4 diag];
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ currently canceling", *(a1 + 32)];
    [v5 trackAnomaly:@"[SCAN] ALTER" forReason:v6 withResult:8115 withError:v3];

LABEL_7:
    goto LABEL_8;
  }

  v7 = [*(a1 + 40) copy];
  [*(a1 + 32) setScanPolicy:v7];

  v8 = [*(a1 + 40) mobileAssetPurposeOverride];

  if (v8)
  {
    v9 = [*(a1 + 40) mobileAssetPurposeOverride];
    v10 = [v9 copy];
    v11 = [*(a1 + 32) scanPolicy];
    [v11 setMobileAssetPurposeOverride:v10];
  }

  if ([*(a1 + 32) operation] == 3)
  {
    v3 = [*(a1 + 32) scanFSM];
    [v3 postProtectedEvent:@"AlterCurrentPolicy"];
    goto LABEL_7;
  }

LABEL_8:
  v12 = MEMORY[0x277D643F8];
  v13 = *(a1 + 48);

  return [v12 endTransaction:v13 withName:@"scan.AlterCurrentPolicy"];
}

- (void)cancelCurrentScan:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"scan.CancelCurrentScan"];
  v6 = [(SUCoreScan *)self scanFSM];
  v7 = [v6 extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__SUCoreScan_cancelCurrentScan___block_invoke;
  block[3] = &unk_27892D368;
  v11 = v5;
  v12 = v4;
  block[4] = self;
  v8 = v5;
  v9 = v4;
  dispatch_async(v7, block);
}

void __32__SUCoreScan_cancelCurrentScan___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _trackScanBegin:@"cancelCurrentScan"];
  if ([*(a1 + 32) cancelingOperation])
  {
    v2 = [MEMORY[0x277D643F8] sharedCore];
    v18 = [v2 buildError:8111 underlying:0 description:@"already canceling scan operation"];

    v3 = [*(a1 + 32) scanFSM];
    v4 = [v3 diag];
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ already canceling", *(a1 + 32)];
    v6 = v4;
    v7 = v5;
    v8 = 8111;
LABEL_9:
    [v6 trackAnomaly:@"[SCAN] CANCEL" forReason:v7 withResult:v8 withError:v18];

    [*(a1 + 32) _cancelEndComplete:*(a1 + 48) error:v18 clearingTransaction:0];
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 40) withName:@"scan.CancelCurrentScan"];
    goto LABEL_12;
  }

  v9 = [*(a1 + 32) operation];
  v10 = [MEMORY[0x277D643F8] sharedCore];
  v11 = v10;
  if (!v9)
  {
    v18 = [v10 buildError:8115 underlying:0 description:@"cancel when not performing scan operation"];

    v3 = [*(a1 + 32) scanFSM];
    v4 = [v3 diag];
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ no scan operation to cancel", *(a1 + 32)];
    v6 = v4;
    v7 = v5;
    v8 = 8115;
    goto LABEL_9;
  }

  v18 = [v10 buildError:8403 underlying:0 description:@"scan operation canceled"];

  v12 = [*(a1 + 32) scanCancelTransaction];

  if (v12)
  {
    v13 = [*(a1 + 32) scanFSM];
    v14 = [v13 diag];
    [v14 trackAnomaly:@"[SCAN] CANCEL" forReason:@"existing transaction found for kSUCoreTransactionCancelCurrentScan" withResult:8120 withError:0];
  }

  [*(a1 + 32) setScanCancelTransaction:*(a1 + 40)];
  [*(a1 + 32) setCancelingOperation:1];
  [*(a1 + 32) setCancelCompletion:*(a1 + 48)];
  if ([*(a1 + 32) operation] == 1)
  {
    v15 = [[SUCoreScanParam alloc] initWithResult:8403 withError:v18];
    [*(a1 + 32) setInterimScanResult:v15];

    [*(a1 + 32) actionScanComplete:0];
  }

  else
  {
    LOBYTE(v17) = 0;
    [*(a1 + 32) _scanCompleteFoundPrimary:0 foundSecondary:0 majorPrimary:0 majorSecondary:0 minorPrimary:0 minorSecondary:0 clearingOperation:v17 error:v18];
  }

  v16 = [*(a1 + 32) scanFSM];
  [v16 postProtectedEvent:@"CancelCurrentScan"];

LABEL_12:
}

- (void)_updateInterimScanResultForSlowReleaseWithPrimary:(id)a3 secondary:(id)a4 error:(id)a5
{
  v113 = *MEMORY[0x277D85DE8];
  v95 = a3;
  v8 = a4;
  v9 = a5;
  if ([(SUCoreScan *)self operationSPIType]!= 3)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ invalid operationSPIType (%d) found", self, -[SUCoreScan operationSPIType](self, "operationSPIType")];
    v33 = LABEL_20:;
    [(SUCoreScan *)self _trackInconsistentAnomalyAndUpdateInterimResult:@"[SCAN] UPDATE_INTERIM_SLOWROLL" reason:v33];

    goto LABEL_106;
  }

  v10 = [(SUCoreScan *)self interimScanResult];

  if (!v10)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ unexpected no previous scan result for slow release scan", self, v85];
    goto LABEL_20;
  }

  v91 = v9;
  v11 = [(SUCoreScan *)self interimScanResult];
  v12 = [v11 majorPrimaryDescriptor];

  v13 = [(SUCoreScan *)self interimScanResult];
  v14 = [v13 majorSecondaryDescriptor];

  v92 = v95;
  v94 = v8;
  if (v92 && !v12)
  {
    goto LABEL_5;
  }

  v15 = 2;
  v16 = 1;
  if (v92 && v12)
  {
    if ([(SUCoreScanParam *)v12 promoteAlternateUpdate])
    {
LABEL_5:
      v15 = 1;
      v16 = 2;
      goto LABEL_6;
    }

    v15 = 2;
    v16 = 1;
  }

LABEL_6:
  v17 = [MEMORY[0x277D64460] sharedLogger];
  v18 = [v17 oslog];

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v9;
    v20 = @"YES";
    v88 = v19;
    if (v12)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v96 = v21;
    v22 = [SUCoreDescriptor nameForDescriptorPreferredUpdateType:v15];
    if (!v92)
    {
      v20 = @"NO";
    }

    v23 = [SUCoreDescriptor nameForDescriptorPreferredUpdateType:v16];
    *buf = 138544386;
    v104 = self;
    v105 = 2112;
    v106 = v96;
    v107 = 2114;
    v108 = v22;
    v109 = 2112;
    v110 = v20;
    v9 = v88;
    v111 = 2114;
    v112 = v23;
    _os_log_impl(&dword_23193C000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] assigning to descriptors (Default) promotedPrimary=%@ primaryPreferredType=%{public}@ and (Alternate) promotedAlternatePrimary=%@ alternatePreferredType=%{public}@", buf, 0x34u);
  }

  [(SUCoreScanParam *)v12 assignDescriptorAudienceType:1 descriptorPreferredUpdateType:v15 assetAudienceUUID:0];
  [(SUCoreScanParam *)v14 assignDescriptorAudienceType:1 descriptorPreferredUpdateType:v15 assetAudienceUUID:0];
  v24 = [(SUCoreScan *)self alternateAssetAudienceUUID];
  [(SUCoreScanParam *)v92 assignDescriptorAudienceType:2 descriptorPreferredUpdateType:v16 assetAudienceUUID:v24];

  v25 = [(SUCoreScan *)self alternateAssetAudienceUUID];
  [(SUCoreScanParam *)v94 assignDescriptorAudienceType:2 descriptorPreferredUpdateType:v16 assetAudienceUUID:v25];

  v26 = v91;
  v27 = [v91 domain];
  if ([v27 isEqualToString:*MEMORY[0x277D646E8]])
  {
    v28 = [v91 code];

    v29 = v92;
    v30 = 0x277D64000uLL;
    if (v28 != 8406)
    {
      goto LABEL_27;
    }

    v31 = [MEMORY[0x277D64460] sharedLogger];
    v32 = [v31 oslog];

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [SUCoreScan _updateInterimScanResultForSlowReleaseWithPrimary:secondary:error:];
    }

    v29 = 0;
    v26 = 0;
    v27 = v94;
    v94 = 0;
  }

  else
  {
    v29 = v92;
    v30 = 0x277D64000;
  }

LABEL_27:
  v34 = [(SUCoreScan *)self scanPolicy];
  v35 = [v34 isSupervisedPolicy];

  if (!v35)
  {
    goto LABEL_76;
  }

  v90 = v26;
  v86 = v8;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v97 = self;
  v36 = [(SUCoreScan *)self scanPolicy];
  v37 = [v36 policyExtensions];

  v38 = [(SUCoreScanParam *)v37 countByEnumeratingWithState:&v98 objects:v102 count:16];
  if (!v38)
  {
    goto LABEL_60;
  }

  v39 = v38;
  v93 = v29;
  v87 = v14;
  v89 = v9;
  v40 = 0;
  v41 = 0;
  v42 = *v99;
  do
  {
    for (i = 0; i != v39; ++i)
    {
      if (*v99 != v42)
      {
        objc_enumerationMutation(v37);
      }

      v44 = *(*(&v98 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = [v44 requestedPMV];

        v40 = [v44 mdmSoftwareUpdatePath];
        v46 = [MEMORY[0x277D64460] sharedLogger];
        v47 = [v46 oslog];

        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = [SUCorePolicyExtensionManagedUpdates nameForMDMSoftwareUpdatePath:v40];
          *buf = 138543874;
          v104 = v97;
          v105 = 2112;
          v106 = v48;
          v107 = 2048;
          v108 = v40;
          _os_log_impl(&dword_23193C000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] Found SUCorePolicyExtensionManagedUpdates with mdmSoftwareUpdatePath: %@ (%ld)", buf, 0x20u);
        }

        v41 = v45;
      }
    }

    v39 = [(SUCoreScanParam *)v37 countByEnumeratingWithState:&v98 objects:v102 count:16];
  }

  while (v39);

  if (v12)
  {
    v29 = v93;
    v37 = v94;
    v93 = v12;
    v8 = v86;
    v14 = v87;
  }

  else
  {
    v8 = v86;
    v14 = v87;
    v37 = v94;
    if (v93 && v41)
    {
      v49 = [MEMORY[0x277D64460] sharedLogger];
      v50 = [v49 oslog];

      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v104 = v97;
        _os_log_impl(&dword_23193C000, v50, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] MDM scan performed using a requested PMV with no primary update found, using alternate update instead", buf, 0xCu);
      }

      v51 = v94;
      v37 = 0;
      v29 = 0;
      v14 = v51;
    }

    else
    {
      v29 = v93;
      v93 = 0;
    }
  }

  if (v40 == 1)
  {
    v12 = v93;
    if (![(SUCoreScanParam *)v93 enableAlternateAssetAudience]|| v41)
    {
      v54 = v41;
    }

    else
    {
      v52 = [MEMORY[0x277D64460] sharedLogger];
      v53 = [v52 oslog];

      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v104 = v97;
        _os_log_impl(&dword_23193C000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] MDM software update path indicates SUCoreMDMSoftwareUpdatePathSlow and primary update found with dual audiences enabled, dropping primary update", buf, 0xCu);
      }

      v54 = 0;
      v14 = 0;
      v12 = 0;
    }

    if (!v41 && v29)
    {
      v57 = [MEMORY[0x277D64460] sharedLogger];
      v58 = [v57 oslog];

      v9 = v89;
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v104 = v97;
        _os_log_impl(&dword_23193C000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] MDM software update path indicates SUCoreMDMSoftwareUpdatePathSlow and alternate update found, using alternate update only", buf, 0xCu);
      }

      v59 = v29;
      v60 = v37;

      v37 = 0;
      v14 = v60;
      goto LABEL_74;
    }

    goto LABEL_69;
  }

  if (v41 || v40 != 2)
  {
    v54 = v41;
    v9 = v89;
    v12 = v93;
    goto LABEL_70;
  }

  v12 = v93;
  if (v29)
  {
    v55 = [MEMORY[0x277D64460] sharedLogger];
    v56 = [v55 oslog];

    v9 = v89;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v104 = v97;
      _os_log_impl(&dword_23193C000, v56, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] MDM software update path indicates SUCoreMDMSoftwareUpdatePathFast and alternate update found, dropping alternate update", buf, 0xCu);
    }

    v94 = 0;
    v29 = 0;
LABEL_60:

    v54 = 0;
    v37 = v94;
    goto LABEL_70;
  }

  v54 = 0;
LABEL_69:
  v9 = v89;
LABEL_70:
  if (v90 || v29 || v12)
  {
    goto LABEL_75;
  }

  v60 = [MEMORY[0x277D643F8] sharedCore];
  v90 = [(SUCoreScanParam *)v60 buildError:8406 underlying:v91 description:@"Supervised device MDM restrictions resulted in no update found"];
  v59 = 0;
LABEL_74:

  v29 = 0;
  v12 = v59;
LABEL_75:

  v94 = v37;
  self = v97;
  v30 = 0x277D64000uLL;
  v26 = v90;
LABEL_76:
  if (v29 && v12 && [(SUCoreScanParam *)v12 isEqual:v29])
  {
    v61 = [*(v30 + 1120) sharedLogger];
    v62 = [v61 oslog];

    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = [(SUCoreScanParam *)v12 promoteAlternateUpdate];
      v64 = @"NO";
      if (v63)
      {
        v64 = @"YES";
      }

      *buf = 138543618;
      v104 = self;
      v105 = 2114;
      v106 = v64;
      _os_log_impl(&dword_23193C000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] Primary update and alternate update descriptors are equal, not returning alternate update (promoteAlternateUpdate=%{public}@)", buf, 0x16u);
    }

    v65 = v14;

    if ([(SUCoreScanParam *)v12 promoteAlternateUpdate])
    {
      v66 = v29;

      v67 = v94;
      v68 = v94;

      v65 = v68;
      v12 = v66;
    }

    else
    {
      v67 = v94;
    }

    [(SUCoreScanParam *)v12 promoteAlternateUpdate];
    v94 = 0;
    v29 = 0;
    v14 = v65;
  }

  else
  {
    v69 = [(SUCoreScanParam *)v12 promoteAlternateUpdate];
    if (v29 && v69)
    {
      v70 = [*(v30 + 1120) sharedLogger];
      v71 = [v70 oslog];

      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v104 = self;
        _os_log_impl(&dword_23193C000, v71, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] Primary descriptor indicates alternate updates should be promoted, swapping now", buf, 0xCu);
      }

      v72 = v29;
      v29 = v12;

      v73 = v94;
      v94 = v14;
      v14 = v73;
      v12 = v72;
    }
  }

  v74 = [*(v30 + 1120) sharedLogger];
  v75 = [v74 oslog];

  v76 = os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT);
  if (v26)
  {
    if (v76)
    {
      *buf = 138543362;
      v104 = self;
      _os_log_impl(&dword_23193C000, v75, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] An error was found while processing the scan for dual audience updates, not returning any updates", buf, 0xCu);
    }

    v12 = -[SUCoreScanParam initWithResult:withError:]([SUCoreScanParam alloc], "initWithResult:withError:", [v26 code], v26);
    [(SUCoreScan *)self setInterimScanResult:v12];
  }

  else
  {
    if (v76)
    {
      *buf = 138543618;
      v104 = self;
      v105 = 2114;
      v106 = v12;
      _os_log_impl(&dword_23193C000, v75, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] promoted primary update: %{public}@", buf, 0x16u);
    }

    v77 = [*(v30 + 1120) sharedLogger];
    v78 = [v77 oslog];

    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v104 = self;
      v105 = 2114;
      v106 = v14;
      _os_log_impl(&dword_23193C000, v78, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] promoted secondary update: %{public}@", buf, 0x16u);
    }

    v79 = [*(v30 + 1120) sharedLogger];
    v80 = [v79 oslog];

    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v104 = self;
      v105 = 2114;
      v106 = v29;
      _os_log_impl(&dword_23193C000, v80, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] promoted alternate primary update: %{public}@", buf, 0x16u);
    }

    v81 = [*(v30 + 1120) sharedLogger];
    v82 = [v81 oslog];

    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v104 = self;
      v105 = 2114;
      v106 = v94;
      _os_log_impl(&dword_23193C000, v82, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] promoted alternate secondary update: %{public}@", buf, 0x16u);
    }

    v83 = [[SUCoreScanParam alloc] initWithMajorPrimaryDescriptor:v12 majorSecondaryDescriptor:v14 minorPrimaryDescriptor:v29 minorSecondaryDescriptor:v94];
    [(SUCoreScan *)self setInterimScanResult:v83];
  }

LABEL_106:
  v84 = *MEMORY[0x277D85DE8];
}

- (void)_updateInterimScanResultForSplomboWithPrimary:(id)a3 secondary:(id)a4 majorPrimary:(id)a5 majorSecondary:(id)a6 minorPrimary:(id)a7 minorSecondary:(id)a8 error:(id)a9
{
  v55 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = [(SUCoreScan *)self interimScanResult];

  if (!v22)
  {
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ unexpected no previous scan result for Splombo scan", self];
    [(SUCoreScan *)self _trackInconsistentAnomalyAndUpdateInterimResult:@"[SCAN] UPDATE_INTERIM_SPLOMBO" reason:v26];

    goto LABEL_18;
  }

  if (!v21)
  {
    if ([(SUCoreScan *)self operationSPIType]== 1)
    {
      [(SUCoreScan *)self interimScanResult];
      v27 = v49 = v20;
      v28 = [v27 descriptor];

      v29 = [(SUCoreScan *)self interimScanResult];
      v30 = [v29 fallbackDescriptor];

      v20 = v49;
      [v28 setAssociatedSplatDescriptor:v15];
      [v30 setAssociatedSplatDescriptor:v15];
      v31 = [[SUCoreScanParam alloc] initWithDescriptor:v28 withFallbackDescriptor:v30];
      [(SUCoreScan *)self setInterimScanResult:v31];

      v16 = v30;
    }

    else
    {
      if ([(SUCoreScan *)self operationSPIType]== 2)
      {
        v15 = v15;
        v32 = [(SUCoreScan *)self interimScanResult];
        v33 = [v32 majorPrimaryDescriptor];

        v34 = [(SUCoreScan *)self interimScanResult];
        v35 = [v34 majorSecondaryDescriptor];

        v36 = [(SUCoreScan *)self interimScanResult];
        v37 = [v36 minorPrimaryDescriptor];

        v38 = [(SUCoreScan *)self interimScanResult];
        v39 = [v38 minorSecondaryDescriptor];

        if (v33)
        {
          [v33 setAssociatedSplatDescriptor:v15];
          v40 = v35;
        }

        else
        {
          [v37 setAssociatedSplatDescriptor:v15];
          v40 = v39;
        }

        [v40 setAssociatedSplatDescriptor:v15];

        v46 = [[SUCoreScanParam alloc] initWithMajorPrimaryDescriptor:v33 majorSecondaryDescriptor:v35 minorPrimaryDescriptor:v37 minorSecondaryDescriptor:v39];
        [(SUCoreScan *)self setInterimScanResult:v46];

        v20 = v39;
        v19 = v37;
        v18 = v35;
        v17 = v33;
        goto LABEL_18;
      }

      if ([(SUCoreScan *)self operationSPIType]!= 3)
      {
        v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ unknown operationSPIType (%d) found", self, -[SUCoreScan operationSPIType](self, "operationSPIType")];
        [(SUCoreScan *)self _trackInconsistentAnomalyAndUpdateInterimResult:@"[SCAN] UPDATE_INTERIM_SPLOMBO" reason:v45];

        goto LABEL_18;
      }

      v41 = [(SUCoreScan *)self interimScanResult];
      v28 = [v41 majorPrimaryDescriptor];

      v42 = [(SUCoreScan *)self interimScanResult];
      [v42 majorSecondaryDescriptor];
      v43 = v50 = v20;

      [v28 setAssociatedSplatDescriptor:v15];
      [v43 setAssociatedSplatDescriptor:v15];
      v44 = [[SUCoreScanParam alloc] initWithMajorPrimaryDescriptor:v28 majorSecondaryDescriptor:v43 minorPrimaryDescriptor:0 minorSecondaryDescriptor:0];
      [(SUCoreScan *)self setInterimScanResult:v44];

      v16 = v43;
      v20 = v50;
    }

    v15 = v28;
    goto LABEL_18;
  }

  v23 = v20;
  v24 = [MEMORY[0x277D64460] sharedLogger];
  v25 = [v24 oslog];

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v52 = self;
    v53 = 2114;
    v54 = v21;
    _os_log_impl(&dword_23193C000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ [SPLOMBO] splombo scan failed with %{public}@, but this is non-fatal", buf, 0x16u);
  }

  v20 = v23;
LABEL_18:
  v47 = [(SUCoreScan *)self originalScanPolicy];
  [(SUCoreScan *)self setScanPolicy:v47];

  [(SUCoreScan *)self setOriginalScanPolicy:0];
  v48 = *MEMORY[0x277D85DE8];
}

- (void)_updateInterimScanResultWithPrimary:(id)a3 secondary:(id)a4 majorPrimary:(id)a5 majorSecondary:(id)a6 minorPrimary:(id)a7 minorSecondary:(id)a8 error:(id)a9
{
  v29 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  if ([(SUCoreScan *)self operation]== 1)
  {
    if ([(SUCoreScan *)self phase]== 1)
    {
      if (v20)
      {
        v21 = -[SUCoreScanParam initWithResult:withError:]([SUCoreScanParam alloc], "initWithResult:withError:", [v20 code], v20);
LABEL_19:
        v22 = v21;
        [(SUCoreScan *)self setInterimScanResult:v21];
        goto LABEL_20;
      }

      if ([(SUCoreScan *)self operationSPIType]== 1)
      {
        v21 = [[SUCoreScanParam alloc] initWithDescriptor:v29 withFallbackDescriptor:v15];
        goto LABEL_19;
      }

      if ([(SUCoreScan *)self operationSPIType]== 2)
      {
        v23 = [SUCoreScanParam alloc];
        v24 = v16;
        v25 = v17;
        v26 = v18;
        v27 = v19;
LABEL_18:
        v21 = [(SUCoreScanParam *)v23 initWithMajorPrimaryDescriptor:v24 majorSecondaryDescriptor:v25 minorPrimaryDescriptor:v26 minorSecondaryDescriptor:v27];
        goto LABEL_19;
      }

      if ([(SUCoreScan *)self operationSPIType]== 3)
      {
        [v29 assignDescriptorAudienceType:1 descriptorPreferredUpdateType:2 assetAudienceUUID:0];
        [v15 assignDescriptorAudienceType:1 descriptorPreferredUpdateType:2 assetAudienceUUID:0];
        v23 = [SUCoreScanParam alloc];
        v24 = v29;
        v25 = v15;
        v26 = 0;
        v27 = 0;
        goto LABEL_18;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"%@ unknown operationSPIType (%d) found", self, -[SUCoreScan operationSPIType](self, "operationSPIType")];
    }

    else
    {
      if ([(SUCoreScan *)self phase]== 2)
      {
        [(SUCoreScan *)self _updateInterimScanResultForSplomboWithPrimary:v29 secondary:v15 majorPrimary:v16 majorSecondary:v17 minorPrimary:v18 minorSecondary:v19 error:v20];
        goto LABEL_21;
      }

      if ([(SUCoreScan *)self phase]== 3)
      {
        [(SUCoreScan *)self _updateInterimScanResultForSlowReleaseWithPrimary:v29 secondary:v15 error:v20];
        goto LABEL_21;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"%@ invalid phase (%d) found", self, -[SUCoreScan phase](self, "phase")];
    }
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"unknown operation (%d) found", -[SUCoreScan operation](self, "operation"), v28];
  }
  v22 = ;
  [(SUCoreScan *)self _trackInconsistentAnomalyAndUpdateInterimResult:@"[SCAN] UPDATE_INTERIM" reason:v22];
LABEL_20:

LABEL_21:
}

- (void)_trackInconsistentAnomalyAndUpdateInterimResult:(id)a3 reason:(id)a4
{
  v6 = MEMORY[0x277D643F8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 sharedCore];
  v13 = [v9 buildError:8117 underlying:0 description:v7];

  v10 = [(SUCoreScan *)self scanFSM];
  v11 = [v10 diag];
  [v11 trackAnomaly:v8 forReason:v7 withResult:objc_msgSend(v13 withError:{"code"), v13}];

  v12 = -[SUCoreScanParam initWithResult:withError:]([SUCoreScanParam alloc], "initWithResult:withError:", [v13 code], v13);
  [(SUCoreScan *)self setInterimScanResult:v12];
}

- (void)_scanCompleteFoundPrimary:(id)a3 foundSecondary:(id)a4 majorPrimary:(id)a5 majorSecondary:(id)a6 minorPrimary:(id)a7 minorSecondary:(id)a8 clearingOperation:(BOOL)a9 error:(id)a10
{
  v44 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a10;
  v22 = [(SUCoreScan *)self scanFSM];
  v23 = [v22 extendedStateQueue];
  dispatch_assert_queue_V2(v23);

  v24 = [(SUCoreScan *)self scanPolicy];
  v25 = [(SUCoreScan *)self activeDescriptor];
  v26 = [(SUCoreScan *)self operation];
  if (v26 > 2)
  {
    if (v26 == 3)
    {
      v39 = [(SUCoreScan *)self collectCompletion];
      [(SUCoreScan *)self setCollectCompletion:0];
      [(SUCoreScan *)self _collectEndComplete:v39 scanPolicy:v24 active:v25 error:v21 clearingTransaction:1];

      goto LABEL_16;
    }

    if (v26 == 4)
    {
      [(SUCoreScan *)self primaryUpdateAsset];
      v31 = v41 = v25;
      [(SUCoreScan *)self secondaryUpdateAsset];
      v32 = v43 = v17;
      [(SUCoreScan *)self setPrimaryUpdateAsset:0];
      [(SUCoreScan *)self setSecondaryUpdateAsset:0];
      [(SUCoreScan *)self locateCompletion];
      v33 = v16;
      v34 = v20;
      v35 = v19;
      v37 = v36 = v18;
      [(SUCoreScan *)self setLocateCompletion:0];
      [(SUCoreScan *)self _locateEndComplete:v37 scanPolicy:v24 primary:v31 secondary:v32 error:v21 clearingTransaction:1];

      v18 = v36;
      v19 = v35;
      v20 = v34;
      v16 = v33;

      v17 = v43;
      v25 = v41;
      goto LABEL_16;
    }

LABEL_12:
    [(SUCoreScan *)self _invalidOperation:@"[SCAN] COMPLETION"];
    goto LABEL_19;
  }

  if (v26 == 1)
  {
    [(SUCoreScan *)self _updateInterimScanResultWithPrimary:v44 secondary:v16 majorPrimary:v17 majorSecondary:v18 minorPrimary:v19 minorSecondary:v20 error:v21];
    v38 = [(SUCoreScan *)self scanFSM];
    [v38 followupEvent:@"DecideNextScanStep"];

    if (!a9)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v26 != 2)
  {
    goto LABEL_12;
  }

  v42 = v19;
  v27 = v18;
  v28 = v17;
  v29 = [(SUCoreScan *)self verifyCompletion];
  [(SUCoreScan *)self setVerifyCompletion:0];
  v30 = v21;
  if (!v30 && (([v25 isEqual:v44] & 1) != 0 || objc_msgSend(v25, "isEqual:", v16)))
  {

    v16 = 0;
    v44 = 0;
  }

  LOBYTE(v40) = 1;
  [(SUCoreScan *)self _verifyEndComplete:v29 scanPolicy:v24 active:v25 primary:v44 secondary:v16 error:v30 clearingTransaction:v40];

  v17 = v28;
  v18 = v27;
  v19 = v42;
LABEL_16:
  if (!a9)
  {
    goto LABEL_19;
  }

LABEL_17:
  if ([(SUCoreScan *)self operation]!= 1)
  {
    [(SUCoreScan *)self _clearCurrentOperation];
  }

LABEL_19:
}

- (void)_cancelCompleteWithError:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreScan *)self scanFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(SUCoreScan *)self cancelCompletion];
  [(SUCoreScan *)self setCancelCompletion:0];
  [(SUCoreScan *)self _cancelEndComplete:v7 error:v4 clearingTransaction:1];

  [(SUCoreScan *)self _clearCurrentOperation];
}

uint64_t __87__SUCoreScan__checkEndComplete_scanPolicy_primary_secondary_error_clearingTransaction___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  result = (*(a1[9] + 16))();
  if (a1[8])
  {
    v7 = MEMORY[0x277D643F8];

    return [v7 endTransaction:? withName:?];
  }

  return result;
}

- (void)_checkMajorMinorEndComplete:(id)a3 scanPolicy:(id)a4 majorPrimary:(id)a5 majorSecondary:(id)a6 minorPrimary:(id)a7 minorSecondary:(id)a8 error:(id)a9 clearingTransaction:(BOOL)a10
{
  v16 = a3;
  v29 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = [(SUCoreScan *)self scanFSM];
  v23 = [v22 extendedStateQueue];
  dispatch_assert_queue_V2(v23);

  if (a10)
  {
    v24 = [(SUCoreScan *)self scanCheckTransaction];
    [(SUCoreScan *)self setScanCheckTransaction:0];
  }

  else
  {
    v24 = 0;
  }

  v25 = MEMORY[0x2383746D0](v16);
  [(SUCoreScan *)self _operationCompleting:v25 error:v21 clearingTransaction:a10];

  if (v16)
  {
    v26 = [(SUCoreScan *)self clientCompletionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __135__SUCoreScan__checkMajorMinorEndComplete_scanPolicy_majorPrimary_majorSecondary_minorPrimary_minorSecondary_error_clearingTransaction___block_invoke;
    block[3] = &unk_27892D3B8;
    v38 = v16;
    v27 = v29;
    v31 = v29;
    v32 = v17;
    v33 = v18;
    v34 = v19;
    v35 = v20;
    v36 = v21;
    v37 = v24;
    dispatch_async(v26, block);
  }

  else
  {
    v27 = v29;
    if (v24)
    {
      [MEMORY[0x277D643F8] endTransaction:v24 withName:@"scan.CheckForAvailableUpdate"];
    }
  }

  if (v21)
  {
    v28 = [v21 code];
  }

  else
  {
    v28 = 0;
  }

  [(SUCoreScan *)self _trackScanEnd:@"checkForAvailableUpdateWithPolicy" withResult:v28 withError:v21];
}

uint64_t __135__SUCoreScan__checkMajorMinorEndComplete_scanPolicy_majorPrimary_majorSecondary_minorPrimary_minorSecondary_error_clearingTransaction___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[9];
  result = (*(a1[11] + 16))();
  if (a1[10])
  {
    v9 = MEMORY[0x277D643F8];

    return [v9 endTransaction:? withName:?];
  }

  return result;
}

- (BOOL)_decideAndProcessSlowReleaseScan
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [(SUCoreScan *)self scanFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  if ([(SUCoreScan *)self phase]<= 2 && [(SUCoreScan *)self operation]== 1 && [(SUCoreScan *)self operationSPIType]== 3)
  {
    v5 = [(SUCoreScan *)self interimScanResult];
    v6 = [v5 majorPrimaryDescriptor];

    v7 = [(SUCoreScan *)self interimScanResult];
    v8 = [v7 error];

    v9 = [v8 userInfo];
    v10 = [v9 safeObjectForKey:*MEMORY[0x277CCA7E8] ofClass:objc_opt_class()];

    if (v8)
    {
      v11 = [v8 domain];
      if ([v11 isEqualToString:*MEMORY[0x277D646E8]] && objc_msgSend(v8, "code") == 8400 && v10)
      {
        v12 = [v10 domain];
        if ([v12 isEqualToString:@"com.apple.MobileAssetError.Download"] && objc_msgSend(v10, "code") == 18)
        {
          v13 = [(SUCoreScan *)self scanPolicy];
          v14 = [v13 isRequestedPMVSupervisedPolicy];

          if (!v14)
          {
            goto LABEL_19;
          }

LABEL_15:
          v20 = [(SUCoreScan *)self scanPolicy];
          v21 = [v20 alternateAssetAudienceUUID];
          if (v21)
          {
            [(SUCoreScan *)self setAlternateAssetAudienceUUID:v21];
          }

          else
          {
            v22 = [v6 alternateAssetAudienceUUID];
            [(SUCoreScan *)self setAlternateAssetAudienceUUID:v22];
          }

          if (v8)
          {
            v23 = [(SUCoreScan *)self alternateAssetAudienceUUID];

            if (!v23)
            {
              v24 = objc_alloc(MEMORY[0x277D64408]);
              v25 = [v24 initWithProjectName:*MEMORY[0x277D64540]];
              v26 = [v25 getStringConfigForKey:*MEMORY[0x277D644C8]];
              [(SUCoreScan *)self setAlternateAssetAudienceUUID:v26];

              v27 = [(SUCoreScan *)self alternateAssetAudienceUUID];

              if (v27)
              {
                v28 = [MEMORY[0x277D64460] sharedLogger];
                v29 = [v28 oslog];

                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  v30 = [(SUCoreScan *)self alternateAssetAudienceUUID];
                  v34 = 138543618;
                  v35 = self;
                  v36 = 2114;
                  v37 = v30;
                  _os_log_impl(&dword_23193C000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] Using alternate asset audience from SUCoreConfig: %{public}@", &v34, 0x16u);
                }
              }

              else
              {
                [(SUCoreScan *)self setAlternateAssetAudienceUUID:@"c724cb61-e974-42d3-a911-ffd4dce11eda"];
              }
            }
          }

          v31 = [MEMORY[0x277D64460] sharedLogger];
          v32 = [v31 oslog];

          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = [(SUCoreScan *)self alternateAssetAudienceUUID];
            v34 = 138543618;
            v35 = self;
            v36 = 2114;
            v37 = v33;
            _os_log_impl(&dword_23193C000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] alternate scan using asset audience: %{public}@", &v34, 0x16u);
          }

          v15 = 1;
          goto LABEL_31;
        }
      }
    }

    else
    {
      v18 = [(SUCoreScan *)self scanPolicy];
      v19 = [(SUCoreScan *)self _shouldPerformAlternateScanFromFoundDescriptor:v6 policy:v18];

      if (v19)
      {
        goto LABEL_15;
      }
    }

LABEL_19:
    v15 = 0;
LABEL_31:

    goto LABEL_13;
  }

  v15 = 0;
LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_decideAndProcessSplomboScan
{
  v3 = [(SUCoreScan *)self scanFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  if ([(SUCoreScan *)self phase]<= 1 && [(SUCoreScan *)self operation]== 1)
  {
    v5 = [(SUCoreScan *)self interimScanResult];
    v6 = [v5 error];

    if ([(SUCoreScan *)self operationSPIType]== 1)
    {
      v7 = [(SUCoreScan *)self interimScanResult];
      v8 = [v7 descriptor];
    }

    else
    {
      if ([(SUCoreScan *)self operationSPIType]== 2)
      {
        v7 = [(SUCoreScan *)self interimScanResult];
        v11 = [v7 majorPrimaryDescriptor];
        v12 = v11;
        if (v11)
        {
          v9 = v11;
        }

        else
        {
          v13 = [(SUCoreScan *)self interimScanResult];
          v9 = [v13 minorPrimaryDescriptor];
        }

        goto LABEL_15;
      }

      if ([(SUCoreScan *)self operationSPIType]!= 3)
      {
        v9 = 0;
        goto LABEL_21;
      }

      v7 = [(SUCoreScan *)self interimScanResult];
      v8 = [v7 majorPrimaryDescriptor];
    }

    v9 = v8;
LABEL_15:

    v10 = 0;
    if (v6 || !v9)
    {
      goto LABEL_22;
    }

    v14 = [(SUCoreScan *)self scanPolicy];
    v15 = [(SUCoreScan *)self _shouldPerformSplomboScanFromFoundDescriptor:v9 policy:v14];

    if (v15)
    {
      v16 = [(SUCoreScan *)self scanPolicy];
      v17 = [v16 copy];

      v18 = [v9 productBuildVersion];
      [v17 setPrerequisiteBuildVersion:v18];

      v19 = [v9 productVersion];
      [v17 setPrerequisiteProductVersion:v19];

      v20 = [v9 restoreVersion];
      [v17 setPrerequisiteRestoreVersion:v20];

      v21 = [v17 softwareUpdateScanPolicy];
      [v21 setRestrictToFull:0];

      v22 = [v17 softwareUpdateScanPolicy];
      [v22 setRestrictToIncremental:1];

      v23 = objc_alloc_init(SUCorePolicyExtensionSplatUpdate);
      v24 = [v9 restoreVersion];
      [(SUCorePolicyExtensionSplatUpdate *)v23 setInstalledSplatRestoreVersion:v24];

      v25 = [v9 productBuildVersion];
      [(SUCorePolicyExtensionSplatUpdate *)v23 setInstalledSplatBuildVersion:v25];

      v26 = [v9 productVersion];
      [(SUCorePolicyExtensionSplatUpdate *)v23 setInstalledSplatProductVersion:v26];

      [(SUCorePolicyExtensionSplatUpdate *)v23 setInstalledSplatProductVersionExtra:0];
      v27 = [v9 releaseType];
      [(SUCorePolicyExtensionSplatUpdate *)v23 setInstalledSplatReleaseType:v27];

      v28 = [v9 restoreVersion];
      [(SUCorePolicyExtensionSplatUpdate *)v23 setInstalledBaseOSRestoreVersion:v28];

      v29 = [v9 productBuildVersion];
      [(SUCorePolicyExtensionSplatUpdate *)v23 setInstalledBaseOSBuildVersion:v29];

      v30 = [v9 productVersion];
      [(SUCorePolicyExtensionSplatUpdate *)v23 setInstalledSplatProductVersion:v30];

      v31 = [v9 releaseType];
      [(SUCorePolicyExtensionSplatUpdate *)v23 setInstalledBaseOSReleaseType:v31];

      v32 = [v17 softwareUpdateScanPolicy];
      -[SUCorePolicyExtensionSplatUpdate setAllowSameRestoreVersion:](v23, "setAllowSameRestoreVersion:", [v32 allowSameVersion]);

      v33 = [MEMORY[0x277CBEB18] array];
      v34 = [v17 policyExtensions];

      if (v34)
      {
        v35 = MEMORY[0x277CBEB18];
        v36 = [v17 policyExtensions];
        v37 = [v35 arrayWithArray:v36];

        v33 = v37;
      }

      [v33 addObject:v23];
      [v17 setPolicyExtensions:v33];
      [v17 setSoftwareUpdateAssetType:@"com.apple.MobileAsset.SplatSoftwareUpdate"];
      v38 = [(SUCoreScan *)self scanPolicy];
      [(SUCoreScan *)self setOriginalScanPolicy:v38];

      [(SUCoreScan *)self setScanPolicy:v17];
      v10 = 1;
      goto LABEL_22;
    }

LABEL_21:
    v10 = 0;
LABEL_22:

    return v10;
  }

  return 0;
}

- (BOOL)_decideAndProcessPSUSScanForPrimaryDescriptor:(id)a3 secondaryDescriptor:(id)a4 andError:(id)a5
{
  v8 = a3;
  v9 = a4;
  if ([(SUCoreScan *)self phase]<= 4 && [(SUCoreScan *)self operation]== 1)
  {
    if (v8 && !a5 && ([(SUCoreScan *)self scanPolicy], v10 = objc_claimAutoreleasedReturnValue(), v11 = [(SUCoreScan *)self _shouldPerformPSUSScanFromFoundDescriptor:v8 policy:v10], v10, v11))
    {
      [(SUCoreScan *)self setPsusPrimaryDescriptor:v8];
      v12 = 1;
      v13 = v9;
    }

    else
    {
      [(SUCoreScan *)self setPsusPrimaryDescriptor:0];
      v13 = 0;
      v12 = 0;
    }

    [(SUCoreScan *)self setPsusSecondaryDescriptor:v13];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_decideReserveSpace:(id)a3 error:(id)a4
{
  v6 = a3;
  if (_os_feature_enabled_impl() && [(SUCoreScan *)self phase]<= 5 && [(SUCoreScan *)self operation]== 1)
  {
    LOBYTE(v7) = 0;
    if (v6 && !a4)
    {
      v7 = [v6 splatOnly] ^ 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)_shouldPerformPSUSScanFromFoundDescriptor:(id)a3 policy:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v5 = [SUCoreScan isPreSUStagingEnabledForUpdate:a3 policy:a4 reason:&v12];
  v6 = v12;
  v7 = [MEMORY[0x277D64460] sharedLogger];
  v8 = [v7 oslog];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    *buf = 138543874;
    v14 = self;
    v15 = 2114;
    if (v5)
    {
      v9 = @"YES";
    }

    v16 = v9;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_23193C000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ [PreSUStaging] Performing psus scan: %{public}@; reason; %{public}@", buf, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_shouldPerformSplomboScanFromFoundDescriptor:(id)a3 policy:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    if ([v7 disableSplatCombo])
    {
      v9 = 0;
      v10 = @"Splombo scan disabled via policy";
    }

    else if ([v8 isSplatPolicy])
    {
      v9 = 0;
      v10 = @"Policy is a splat policy; don't perform splombo scan";
    }

    else if ([v6 splatOnly])
    {
      v9 = 0;
      v10 = @"Located descriptor is a splat update; don't perform splombo scan";
    }

    else
    {
      v11 = [v6 disableSplatCombo];
      if (v11)
      {
        v10 = @"Splombo is disabled by server";
      }

      else
      {
        v10 = @"Splombo scan should be perfromed since it isn't disbaled and the found descriptor is a normal SU";
      }

      v9 = v11 ^ 1;
    }
  }

  else
  {
    v9 = 0;
    v10 = @"Unexpected nil policy; don't perform the splombo scan";
  }

  v12 = [MEMORY[0x277D64460] sharedLogger];
  v13 = [v12 oslog];

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    v17 = 138543874;
    v18 = self;
    v19 = 2114;
    if (v9)
    {
      v14 = @"YES";
    }

    v20 = v14;
    v21 = 2114;
    v22 = v10;
    _os_log_impl(&dword_23193C000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ [SPLOMBO] Performing splombo scan: %{public}@ (%{public}@)", &v17, 0x20u);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)_shouldPerformAlternateScanFromFoundDescriptor:(id)a3 policy:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 disableAlternateUpdate])
  {
    v8 = 0;
    v9 = @"Alternate scan disabled via policy";
  }

  else if ([v7 isRequestedPMVSupervisedPolicy])
  {
    v8 = 0;
    v9 = @"Alternate scan disabled for supervised PMV requests";
  }

  else
  {
    v10 = [v7 alternateAssetAudienceUUID];

    if (v10)
    {
      v8 = 1;
      v9 = @"Alternate scan enabled via policy alternate asset audience";
    }

    else
    {
      v9 = @"Defaults to not performing alternate scan";
      if ([v6 enableAlternateAssetAudience])
      {
        v11 = [v6 alternateAssetAudienceUUID];

        v12 = v11 == 0;
        v8 = v11 != 0;
        if (!v12)
        {
          v9 = @"Located descriptor indicates an alternate scan should be performed";
        }
      }

      else
      {
        v8 = 0;
      }
    }
  }

  v13 = [MEMORY[0x277D64460] sharedLogger];
  v14 = [v13 oslog];

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"NO";
    v18 = 138543874;
    v19 = self;
    v20 = 2114;
    if (v8)
    {
      v15 = @"YES";
    }

    v21 = v15;
    v22 = 2114;
    v23 = v9;
    _os_log_impl(&dword_23193C000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] Performing alternate scan: %{public}@ (%{public}@)", &v18, 0x20u);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_checkSlowReleaseEndComplete:(id)a3 scanPolicy:(id)a4 primary:(id)a5 secondary:(id)a6 alternatePrimary:(id)a7 alternateSecondary:(id)a8 error:(id)a9 clearingTransaction:(BOOL)a10
{
  v16 = a3;
  v30 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = [(SUCoreScan *)self scanFSM];
  v23 = [v22 extendedStateQueue];
  dispatch_assert_queue_V2(v23);

  v24 = v21;
  if (a10)
  {
    v25 = [(SUCoreScan *)self scanCheckTransaction];
    [(SUCoreScan *)self setScanCheckTransaction:0];
  }

  else
  {
    v25 = 0;
  }

  v26 = MEMORY[0x2383746D0](v16);
  [(SUCoreScan *)self _operationCompleting:v26 error:v24 clearingTransaction:a10];

  if (v16)
  {
    v27 = [(SUCoreScan *)self clientCompletionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __134__SUCoreScan__checkSlowReleaseEndComplete_scanPolicy_primary_secondary_alternatePrimary_alternateSecondary_error_clearingTransaction___block_invoke;
    block[3] = &unk_27892D3B8;
    v39 = v16;
    v28 = v30;
    v32 = v30;
    v33 = v17;
    v34 = v18;
    v35 = v19;
    v36 = v20;
    v37 = v24;
    v38 = v25;
    dispatch_async(v27, block);
  }

  else
  {
    v28 = v30;
    if (v25)
    {
      [MEMORY[0x277D643F8] endTransaction:v25 withName:@"scan.CheckForAvailableUpdate"];
    }
  }

  if (v24)
  {
    v29 = [v24 code];
  }

  else
  {
    v29 = 0;
  }

  [(SUCoreScan *)self _trackScanEnd:@"checkForAvailableSlowReleaseUpdatesWithPolicy" withResult:v29 withError:v24];
}

uint64_t __134__SUCoreScan__checkSlowReleaseEndComplete_scanPolicy_primary_secondary_alternatePrimary_alternateSecondary_error_clearingTransaction___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[9];
  result = (*(a1[11] + 16))();
  if (a1[10])
  {
    v9 = MEMORY[0x277D643F8];

    return [v9 endTransaction:? withName:?];
  }

  return result;
}

- (void)_verifyEndComplete:(id)a3 scanPolicy:(id)a4 active:(id)a5 primary:(id)a6 secondary:(id)a7 error:(id)a8 clearingTransaction:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = [(SUCoreScan *)self scanFSM];
  v22 = [v21 extendedStateQueue];
  dispatch_assert_queue_V2(v22);

  if (a9)
  {
    v23 = [(SUCoreScan *)self scanVerifyTransaction];
    [(SUCoreScan *)self setScanVerifyTransaction:0];
  }

  else
  {
    v23 = 0;
  }

  v24 = MEMORY[0x2383746D0](v15);
  [(SUCoreScan *)self _operationCompleting:v24 error:v20 clearingTransaction:a9];

  if (v15)
  {
    v25 = [(SUCoreScan *)self clientCompletionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __95__SUCoreScan__verifyEndComplete_scanPolicy_active_primary_secondary_error_clearingTransaction___block_invoke;
    block[3] = &unk_27892D3E0;
    v34 = v15;
    v28 = v16;
    v29 = v17;
    v30 = v18;
    v31 = v19;
    v32 = v20;
    v33 = v23;
    dispatch_async(v25, block);
  }

  else if (v23)
  {
    [MEMORY[0x277D643F8] endTransaction:v23 withName:@"scan.VerifyLatestAvailable"];
  }

  if (v20)
  {
    v26 = [v20 code];
  }

  else
  {
    v26 = 0;
  }

  [(SUCoreScan *)self _trackScanEnd:@"verifyLatestAvailableWithPolicy" withResult:v26 withError:v20];
}

uint64_t __95__SUCoreScan__verifyEndComplete_scanPolicy_active_primary_secondary_error_clearingTransaction___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  result = (*(a1[10] + 16))();
  if (a1[9])
  {
    v8 = MEMORY[0x277D643F8];

    return [v8 endTransaction:? withName:?];
  }

  return result;
}

uint64_t __78__SUCoreScan__collectEndComplete_scanPolicy_active_error_clearingTransaction___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  result = (*(a1[8] + 16))();
  if (a1[7])
  {
    v6 = MEMORY[0x277D643F8];

    return [v6 endTransaction:? withName:?];
  }

  return result;
}

uint64_t __88__SUCoreScan__locateEndComplete_scanPolicy_primary_secondary_error_clearingTransaction___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  result = (*(a1[9] + 16))();
  if (a1[8])
  {
    v7 = MEMORY[0x277D643F8];

    return [v7 endTransaction:? withName:?];
  }

  return result;
}

uint64_t __59__SUCoreScan__cancelEndComplete_error_clearingTransaction___block_invoke(void *a1)
{
  v2 = a1[4];
  result = (*(a1[6] + 16))();
  if (a1[5])
  {
    v4 = MEMORY[0x277D643F8];

    return [v4 endTransaction:? withName:?];
  }

  return result;
}

- (void)_clearCurrentOperation
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 1024;
  v7 = [a1 pendingMobileAssetRequests];
  _os_log_error_impl(&dword_23193C000, a2, OS_LOG_TYPE_ERROR, "%{public}@ [MA_PENDING] clearCurrentOperation - non-zero MA pending (%d) - clearing", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

- (id)_operationName
{
  v3 = [(SUCoreScan *)self scanFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  if ([(SUCoreScan *)self operation]< 0 || [(SUCoreScan *)self operation]> 4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"UNKNOWN(%d)", -[SUCoreScan operation](self, "operation")];
  }

  else
  {
    v5 = kSUCoreScanOperationName[[(SUCoreScan *)self operation]];
  }

  return v5;
}

- (void)_operationCompleting:(id)a3 error:(id)a4 clearingTransaction:(BOOL)a5
{
  v5 = a5;
  v27 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [MEMORY[0x277D64460] sharedLogger];
  v10 = [v9 oslog];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(SUCoreScan *)self _operationName];
    v12 = v11;
    v13 = @"calling client completion";
    if (!a3)
    {
      v13 = @"has completed (no client completion)";
    }

    v14 = @"NO";
    v17 = 138544386;
    v18 = self;
    if (v5)
    {
      v14 = @"YES";
    }

    v19 = 2114;
    v20 = v11;
    v21 = 2114;
    v22 = v13;
    v23 = 2114;
    v24 = v14;
    if (v8)
    {
      v15 = v8;
    }

    else
    {
      v15 = @"SUCCESS";
    }

    v25 = 2114;
    v26 = v15;
    _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ %{public}@ [clearingTransaction:%{public}@] | %{public}@", &v17, 0x34u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_invalidOperation:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreScan *)self scanFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v11 = [(SUCoreScan *)self scanFSM];
  v7 = [v11 diag];
  v8 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = [(SUCoreScan *)self _operationName];
  v10 = [v8 initWithFormat:@"%@ invalid scan operation: %@", self, v9];
  [v7 trackAnomaly:v4 forReason:v10 withResult:8102 withError:0];
}

- (id)description
{
  v3 = [(SUCoreScan *)self scanPolicy];

  if (v3)
  {
    v4 = [(SUCoreScan *)self scanPolicy];
    v5 = [v4 softwareUpdateScanPolicy];
    v6 = [v5 rampingScanType];

    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = [(SUCoreScan *)self scanUUID];
    v9 = [(SUCoreScan *)self scanPolicy];
    v10 = [v9 softwareUpdateScanPolicy];
    if ([v10 discretionary])
    {
      v11 = @"Y";
    }

    else
    {
      v11 = @"N";
    }

    if (v6)
    {
      v12 = [(SUCoreScan *)self scanPolicy];
      v13 = [v12 softwareUpdateScanPolicy];
      v14 = [v13 rampingScanType];
      v15 = [v7 initWithFormat:@"[SCAN(%@) SU disc:%@, ramp:%@]", v8, v11, v14];
    }

    else
    {
      v15 = [v7 initWithFormat:@"[SCAN(%@) SU disc:%@]", v8, v11];
    }
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = [(SUCoreScan *)self scanUUID];
    v15 = [v16 initWithFormat:@"[SCAN(%@)]", v8];
  }

  return v15;
}

- (double)_psusDetermineTimeout
{
  v2 = *MEMORY[0x277D29458];
  v3 = _MSUPreferencesCopyValue();
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      [v4 doubleValue];
      v7 = v6;

      return v7;
    }

    CFRelease(v4);
  }

  return 900.0;
}

- (int64_t)_determinePSUSAssets
{
  v3 = [(SUCoreScan *)self scanFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  [(SUCoreScan *)self _incrementMobileAssetPending:@"_determinePSUSAssets"];
  v5 = [(SUCoreScan *)self psusPrimaryDescriptor];
  if (v5)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__1;
    v30 = __Block_byref_object_dispose__1;
    v31 = 0;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __34__SUCoreScan__determinePSUSAssets__block_invoke;
    v25[3] = &unk_27892D430;
    v25[4] = self;
    v25[5] = &v26;
    v6 = MEMORY[0x2383746D0](v25);
    v7 = [v5 productVersion];
    v8 = [v5 productBuildVersion];
    v9 = [v5 trainName];
    v10 = [v5 restoreVersion];
    v11 = [MEMORY[0x277CBEB38] dictionary];
    [v11 setSafeObject:v7 forKey:@"OSVersion"];
    [v11 setSafeObject:v8 forKey:@"Build"];
    [v11 setSafeObject:v9 forKey:@"TrainName"];
    [v11 setSafeObject:v10 forKey:@"RestoreVersion"];
    [v11 setSafeObject:&unk_2846B9CB8 forKey:@"GroupNames"];
    [(SUCoreScan *)self _reportPSUSDetermineStartedEvent];
    [(SUCoreScan *)self _trackScanBegin:@"stageDetermineGroupsAvailableForUpdate"];
    v12 = [MEMORY[0x277CBEAA8] now];
    v13 = v27[5];
    v27[5] = v12;

    v14 = MEMORY[0x277D289E0];
    [(SUCoreScan *)self _psusDetermineTimeout];
    v15 = [v14 SUCoreBorder_stageDetermineGroupsAvailableForUpdate:v11 timeoutSecs:v6 completion:?];

    _Block_object_dispose(&v26, 8);
    v16 = 0;
  }

  else
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ psus descriptor is nil", self];
    v18 = [MEMORY[0x277D643F8] sharedCore];
    v16 = 8411;
    v19 = [v18 buildError:8411 underlying:0 description:v17];

    v20 = [(SUCoreScan *)self scanFSM];
    v21 = [v20 diag];
    [v21 trackAnomaly:@"[SCAN] PSUS" forReason:v17 withResult:8411 withError:v19];

    v22 = [[SUCoreScanParam alloc] initWithResult:8411 withError:v19];
    v23 = [(SUCoreScan *)self scanFSM];
    [v23 postProtectedEvent:@"PSUSAssetsDetermineFailed" withInfo:v22];
  }

  return v16;
}

void __34__SUCoreScan__determinePSUSAssets__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v91 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CBEAA8] now];
  [v10 timeIntervalSinceDate:*(*(*(a1 + 40) + 8) + 40)];
  v12 = v11;

  [*(a1 + 32) _trackScanEnd:@"stageDetermineGroupsAvailableForUpdate" withResult:objc_msgSend(v9 withError:{"code"), v9}];
  if (v9)
  {
    v13 = [v9 domain];
    if ([v13 isEqualToString:@"com.apple.MobileAssetError.AutoAsset"])
    {
      v14 = [v9 code];

      if (v14 == 6602)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to determine PSUS, assets: %@, bytes: %@", v7, v8];
        v49 = LABEL_30:;
        v50 = [MEMORY[0x277D643F8] sharedCore];
        v51 = [v50 buildError:8411 underlying:v9 description:v49];

        v44 = -[SUCoreScanParam initWithResult:withError:]([SUCoreScanParam alloc], "initWithResult:withError:", [v51 code], v51);
        v46 = @"PSUSAssetsDetermineFailed";
        goto LABEL_39;
      }
    }

    else
    {
    }

    v47 = [v9 domain];
    if ([v47 isEqualToString:@"com.apple.MobileAssetError.AutoAsset"])
    {
      v48 = [v9 code];

      if (v48 == 6609)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"Operation canceled", v66, v67];
        goto LABEL_30;
      }
    }

    else
    {
    }

    v52 = [v9 domain];
    if ([v52 isEqualToString:*MEMORY[0x277D646E8]])
    {
      v53 = [v9 code];

      if (v53 == 8119)
      {
        notify_post("com.apple.SUCore.PSUS.TimedOut");
      }
    }

    else
    {
    }

    v54 = MEMORY[0x277CCACA8];
    v55 = [*(a1 + 32) psusPrimaryDescriptor];
    v56 = [v55 summary];
    v57 = [v54 stringWithFormat:@"failed to determine for %@ with %@, but this is non-fatal", v56, v9];

    v58 = [MEMORY[0x277D64460] sharedLogger];
    v59 = [v58 oslog];

    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = *(a1 + 32);
      *buf = 138543618;
      v84 = v60;
      v85 = 2114;
      v86 = v57;
      _os_log_impl(&dword_23193C000, v59, OS_LOG_TYPE_DEFAULT, "%{public}@ [PreSUStaging] %{public}@", buf, 0x16u);
    }

    v44 = [[SUCoreScanParam alloc] initWithNote:v57];
    v61 = [(SUCoreScanParam *)v44 additionalInfo];
    [v61 setSafeObject:v9 forKey:@"PSUSDetermineError"];

    v46 = @"PSUSAssetsDetermineSuccess";
  }

  else
  {
    v15 = [v8 safeULLForKey:@"STAGE_GROUP_REQUIRED" defaultValue:0];
    v16 = [v8 safeULLForKey:@"STAGE_GROUP_OPTIONAL" defaultValue:0];
    v17 = MEMORY[0x277CCACA8];
    v18 = [*(a1 + 32) psusPrimaryDescriptor];
    v19 = [v18 summary];
    v20 = [v17 stringWithFormat:@"found assets with {requiredSize=%llu, optionalSize=%llu} for %@", v15, v16, v19];

    v21 = [MEMORY[0x277D64460] sharedLogger];
    v22 = [v21 oslog];

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 32);
      *buf = 138544130;
      v84 = v23;
      v85 = 2114;
      v86 = v20;
      v87 = 2048;
      v88 = [v7 count];
      v89 = 2114;
      v90 = v8;
      _os_log_impl(&dword_23193C000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ [PreSUStaging] succeeded; %{public}@\n[>>>\nbyGroupAvailableForStagingAttributes = DICT[%lu]\nbyGroupTotalExpectedBytes = %{public}@\n<<<]", buf, 0x2Au);
    }

    v69 = v20;
    v70 = v8;

    v24 = [v7 safeDictionaryForKey:@"STAGE_GROUP_REQUIRED"];
    v25 = [v24 allKeys];

    v71 = v7;
    v26 = [v7 safeDictionaryForKey:@"STAGE_GROUP_OPTIONAL"];
    v68 = [v26 allKeys];

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = v25;
    v27 = [obj countByEnumeratingWithState:&v77 objects:v82 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v78;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v78 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v77 + 1) + 8 * i);
          v32 = [MEMORY[0x277D64460] sharedLogger];
          v33 = [v32 oslog];

          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = *(a1 + 32);
            *buf = 138543618;
            v84 = v34;
            v85 = 2114;
            v86 = v31;
            _os_log_impl(&dword_23193C000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ [PreSUStaging] required asset to stage: %{public}@", buf, 0x16u);
          }
        }

        v28 = [obj countByEnumeratingWithState:&v77 objects:v82 count:16];
      }

      while (v28);
    }

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v35 = v68;
    v36 = [v35 countByEnumeratingWithState:&v73 objects:v81 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v74;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v74 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v73 + 1) + 8 * j);
          v41 = [MEMORY[0x277D64460] sharedLogger];
          v42 = [v41 oslog];

          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = *(a1 + 32);
            *buf = 138543618;
            v84 = v43;
            v85 = 2114;
            v86 = v40;
            _os_log_impl(&dword_23193C000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ [PreSUStaging] optional asset to stage: %{public}@", buf, 0x16u);
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v73 objects:v81 count:16];
      }

      while (v37);
    }

    v44 = [[SUCoreScanParam alloc] initWithNote:v69];
    v45 = [(SUCoreScanParam *)v44 additionalInfo];
    v8 = v70;
    [v45 setSafeObject:v70 forKey:@"PSUSAssetsSizes"];

    v46 = @"PSUSAssetsDetermineSuccess";
    v7 = v71;
    v9 = 0;
  }

LABEL_39:
  v62 = [(SUCoreScanParam *)v44 additionalInfo];
  v63 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  [v62 setSafeObject:v63 forKey:@"Duration"];

  v64 = [*(a1 + 32) scanFSM];
  [v64 postEvent:v46 withInfo:v44];

  v65 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isPreSUStagingEnabledForUpdate:(id)a3 policy:(id)a4 reason:(id *)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 enablePreSUStaging])
  {
    if ([v8 enablePreSUStaging])
    {
      v9 = *MEMORY[0x277D29450];
      if (_MSUPreferencesGetAppBooleanValueWithDefaultValue())
      {
        v10 = 0;
        v11 = @"disabled by MSU default";
      }

      else if ([v7 splatOnly])
      {
        v10 = 0;
        v11 = @"disabled for a Splat update";
      }

      else if ([v7 descriptorType] == 3)
      {
        v10 = 0;
        v11 = @"disabled for SFR-only updates";
      }

      else
      {
        v17 = os_variant_uses_ephemeral_storage();
        v10 = v17 ^ 1;
        if (v17)
        {
          v11 = @"disabled in limited environment (NeRD)";
        }

        else
        {
          v11 = @"not disabled by anything";
        }
      }
    }

    else
    {
      v10 = 0;
      v11 = @"disabled by policy";
    }
  }

  else
  {
    v10 = 0;
    v11 = @"disabled by server (through software update asset metadata)";
  }

  if (a5)
  {
    *a5 = v11;
  }

  else
  {
    v12 = [MEMORY[0x277D64460] sharedLogger];
    v13 = [v12 oslog];

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"disabled";
      if (v10)
      {
        v14 = @"enabled";
      }

      v18 = 138543618;
      v19 = v14;
      v20 = 2114;
      v21 = v11;
      _os_log_impl(&dword_23193C000, v13, OS_LOG_TYPE_DEFAULT, "[PreSUStaging] %{public}@: %{public}@", &v18, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (int64_t)_downloadCatalog:(id)a3 withIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUCoreScan *)self scanFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  [(SUCoreScan *)self _incrementMobileAssetPending:@"_downloadCatalog"];
  v10 = [(SUCoreScan *)self operation];
  if ((v10 - 1) < 2)
  {
    v11 = [(SUCoreScan *)self scanPolicy];
    v12 = [(SUCoreScan *)self scanUUID];
    v14 = [(SUCoreScan *)self alternateAssetAudienceUUID];
    v13 = [v11 constructMASoftwareUpdateCatalogDownloadOptionsWithUUID:v12 assetAudience:v14];

    goto LABEL_6;
  }

  if (v10 != 3)
  {
    if (v10 != 4)
    {
      v26 = objc_alloc(MEMORY[0x277CCACA8]);
      v27 = [(SUCoreScan *)self _operationName];
      v13 = [v26 initWithFormat:@"downloadCatalog received unsupported SUCoreScanOperation (%@)", v27];

      v28 = [MEMORY[0x277D64460] sharedLogger];
      v16 = [v28 oslog];

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SUCoreScan _downloadCatalog:withIdentifier:];
      }

      goto LABEL_19;
    }

    v11 = [(SUCoreScan *)self scanPolicy];
    v12 = [(SUCoreScan *)self scanUUID];
    v13 = [v11 constructMASoftwareUpdateCatalogDownloadOptionsWithUUID:v12 assetAudience:0];
LABEL_6:

    if (!v13)
    {
      v15 = objc_alloc(MEMORY[0x277CCACA8]);
      v16 = [(SUCoreScan *)self _operationName];
      v17 = [(SUCoreScan *)self scanPolicy];
      v18 = [v17 summary];
      v19 = [v15 initWithFormat:@"failed to construct MA SU catalog download options (for %@) from scan policy[%@]", v16, v18];
LABEL_18:
      v13 = v19;

LABEL_19:
      v33 = [MEMORY[0x277D643F8] sharedCore];
      v31 = 8100;
      v29 = [v33 buildError:8100 underlying:0 description:v13];

      v34 = [(SUCoreScan *)self scanFSM];
      v35 = [[SUCoreScanParam alloc] initWithResult:8100 withError:v29];
      [v34 postProtectedEvent:@"CatalogDownloadFailed" withInfo:v35];

      goto LABEL_20;
    }

    goto LABEL_9;
  }

  v20 = [(SUCoreScan *)self scanPolicy];
  v21 = [(SUCoreScan *)self scanUUID];
  v22 = [(SUCoreScan *)self activeDescriptor];
  v13 = [v20 constructMADocumentationCatalogDownloadOptionsWithUUID:v21 usingDescriptor:v22];

  if (!v13)
  {
    v32 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = [(SUCoreScan *)self _operationName];
    v17 = [(SUCoreScan *)self scanPolicy];
    v18 = [v17 summary];
    v19 = [v32 initWithFormat:@"failed to construct MA documentation catalog download options (for %@) from scan policy[%@]", v16, v18];
    goto LABEL_18;
  }

LABEL_9:
  v23 = [v13 additionalServerParams];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v29 = v25;

  [v29 setSafeObject:&unk_2846B9D60 forKey:@"ScanRequestCount"];
  if ([(SUCoreScan *)self phase]>= 3)
  {
    [v29 setSafeObject:&unk_2846B9D78 forKey:@"ScanRequestCount"];
  }

  [v13 setAdditionalServerParams:v29];
  [(SUCoreScan *)self _trackScanBegin:@"startCatalogDownload" withIdentifier:v7];
  v30 = MEMORY[0x277D289C0];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __46__SUCoreScan__downloadCatalog_withIdentifier___block_invoke;
  v37[3] = &unk_27892D200;
  v37[4] = self;
  v38 = v7;
  [v30 SUCoreBorder_startCatalogDownload:v6 options:v13 completionWithError:v37];

  v31 = 0;
LABEL_20:

  return v31;
}

void __46__SUCoreScan__downloadCatalog_withIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  [*(a1 + 32) _trackScanEnd:@"startCatalogDownload" withIdentifier:*(a1 + 40) withResult:a2 withError:?];
  switch(a2)
  {
    case 0:
      goto LABEL_4;
    case 18:
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"failed to download catalog - no match found (MADownload domain result:%ld)", 18];
      break;
    case 10:
LABEL_4:
      v5 = [*(a1 + 32) scanFSM];
      [v5 postEvent:@"CatalogDownloadSuccess"];
      goto LABEL_8;
    default:
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"failed to download catalog (MADownload domain result:%ld)", a2];
      break;
  }

  v5 = v6;
  v7 = [MEMORY[0x277D643F8] sharedCore];
  v8 = [v7 buildError:8400 underlying:v11 description:v5];

  v9 = [*(a1 + 32) scanFSM];
  v10 = [[SUCoreScanParam alloc] initWithResult:a2 withError:v8];
  [v9 postEvent:@"CatalogDownloadFailed" withInfo:v10];

LABEL_8:
}

- (void)_filterSUQueryResults:(id)a3
{
  v12 = a3;
  if ([(SUCoreScan *)self operationSPIType]== 1 || [(SUCoreScan *)self operationSPIType]== 3 || [(SUCoreScan *)self phase]== 2)
  {
    [(SUCoreScan *)self _filterSUQueryResultsForSPITypeSingleFromQuery:v12];
  }

  else if ([(SUCoreScan *)self operationSPIType]== 2)
  {
    [(SUCoreScan *)self _filterSUQueryResultsForSPITypeMajorMinorFromQuery:v12];
  }

  else
  {
    v4 = [MEMORY[0x277D643F8] sharedCore];
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ unknown operationSPIType found (%i)", self, -[SUCoreScan operationSPIType](self, "operationSPIType")];
    v6 = [v4 buildError:8117 underlying:0 description:v5];

    v7 = [(SUCoreScan *)self scanFSM];
    v8 = [v7 diag];
    v9 = [v6 localizedDescription];
    [v8 trackAnomaly:@"[SCAN] FILTER_SU_QUERY" forReason:v9 withResult:objc_msgSend(v6 withError:{"code"), v6}];

    v10 = [(SUCoreScan *)self scanFSM];
    v11 = [[SUCoreScanParam alloc] initWithResult:8117 withError:v6];
    [v10 postEvent:@"QueryMetadataFailed" withInfo:v11];
  }
}

- (void)_filterSUQueryResultsForSPITypeSingleFromQuery:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUCoreScan *)self scanPolicy];
  v46 = 0;
  v47 = 0;
  [v5 selectSoftwareUpdatePrimaryAsset:&v47 secondaryAsset:&v46 fromAssetQuery:v4];
  v6 = v47;
  v7 = v46;

  if (v6)
  {
    v8 = [(SUCoreScan *)self operation];
    if ((v8 - 1) < 2)
    {
      v26 = [v4 postedDate];

      if (v26)
      {
        v27 = [v4 postedDate];
      }

      else
      {
        v33 = [MEMORY[0x277D64460] sharedLogger];
        v34 = [v33 oslog];

        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v49 = self;
          _os_log_impl(&dword_23193C000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ Asset query did not return posting date. Setting posting date to now", buf, 0xCu);
        }

        v27 = [MEMORY[0x277CBEAA8] date];
      }

      v23 = v27;
      v35 = [SUCoreDescriptor alloc];
      v36 = [(SUCoreScan *)self scanPolicy];
      v37 = [v36 defaultDescriptorValues];
      v38 = [(SUCoreDescriptor *)v35 initWithSUAsset:v6 releaseDate:v23 defaultValues:v37];

      if (v7)
      {
        v39 = [SUCoreDescriptor alloc];
        v40 = [(SUCoreScan *)self scanPolicy];
        v41 = [v40 defaultDescriptorValues];
        v24 = [(SUCoreDescriptor *)v39 initWithSUAsset:v7 releaseDate:v23 defaultValues:v41];
      }

      else
      {
        v24 = 0;
      }

      v28 = [(SUCoreScan *)self scanFSM];
      v42 = [SUCoreScanParam alloc];
      if (v38)
      {
        v43 = [(SUCoreScanParam *)v42 initWithDescriptor:v38 withFallbackDescriptor:v24];
        [v28 postEvent:@"QueryMetadataUpdateAvailable" withInfo:v43];

        v24 = v38;
        goto LABEL_27;
      }

      v44 = [(SUCoreScanParam *)v42 initWithResult:8406 withError:0];
      [v28 postEvent:@"QueryMetadataNoAssetFound" withInfo:v44];
    }

    else
    {
      if (v8 == 3)
      {
        v23 = [(SUCoreScan *)self scanFSM];
        v24 = [v23 diag];
        v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ SUCoreScanOperation (SU_SCAN_OP_COLLECT) should never filter SU query results", self];
        v29 = @"[SCAN] FILTER_SU_QUERY";
        v30 = v24;
        v31 = v28;
        v32 = 8115;
      }

      else
      {
        if (v8 == 4)
        {
          v9 = [(SUCoreScan *)self primaryUpdateAsset];

          if (v9)
          {
            v10 = [(SUCoreScan *)self scanFSM];
            v11 = [v10 diag];
            v12 = objc_alloc(MEMORY[0x277CCACA8]);
            v13 = [(SUCoreScan *)self primaryUpdateAsset];
            v14 = [v13 assetId];
            v15 = [v12 initWithFormat:@"%@ discarding existing primary update asset ID:%@", self, v14];
            [v11 trackAnomaly:@"[SCAN] FILTER_SU_QUERY" forReason:v15 withResult:8111 withError:0];
          }

          [(SUCoreScan *)self setPrimaryUpdateAsset:v6];
          v16 = [(SUCoreScan *)self secondaryUpdateAsset];

          if (v16)
          {
            v17 = [(SUCoreScan *)self scanFSM];
            v18 = [v17 diag];
            v19 = objc_alloc(MEMORY[0x277CCACA8]);
            v20 = [(SUCoreScan *)self secondaryUpdateAsset];
            v21 = [v20 assetId];
            v22 = [v19 initWithFormat:@"%@ discarding existing secondary update asset ID:%@", self, v21];
            [v18 trackAnomaly:@"[SCAN] FILTER_SU_QUERY" forReason:v22 withResult:8111 withError:0];
          }

          [(SUCoreScan *)self setSecondaryUpdateAsset:v7];
          v23 = [(SUCoreScan *)self scanFSM];
          v24 = objc_alloc_init(SUCoreScanParam);
          v25 = @"QueryMetadataUpdateAvailable";
          goto LABEL_11;
        }

        v23 = [(SUCoreScan *)self scanFSM];
        v24 = [v23 diag];
        v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ filter SU query results for unknown operation:%d", self, -[SUCoreScan operation](self, "operation")];
        v29 = @"[SCAN] UNKNOWN OPERATION";
        v30 = v24;
        v31 = v28;
        v32 = 8117;
      }

      [(SUCoreScanParam *)v30 trackAnomaly:v29 forReason:v31 withResult:v32 withError:0];
    }

    goto LABEL_27;
  }

  v23 = [(SUCoreScan *)self scanFSM];
  v24 = [[SUCoreScanParam alloc] initWithResult:8406 withError:0];
  v25 = @"QueryMetadataNoAssetFound";
LABEL_11:
  [v23 postEvent:v25 withInfo:v24];
LABEL_27:

  v45 = *MEMORY[0x277D85DE8];
}

- (void)_filterSUQueryResultsForSPITypeMajorMinorFromQuery:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SUCoreScan *)self operation]== 1)
  {
    v5 = [(SUCoreScan *)self scanPolicy];
    v43 = 0;
    v44 = 0;
    v41 = 0;
    v42 = 0;
    [v5 selectSoftwareUpdateMajorPrimaryAsset:&v44 majorSecondaryAsset:&v43 minorPrimaryAsset:&v42 minorSecondaryAsset:&v41 fromAssetQuery:v4];
    v6 = v44;
    v7 = v43;
    v8 = v42;
    v40 = v41;

    v9 = [v4 postedDate];

    if (v9)
    {
      v10 = [v4 postedDate];
    }

    else
    {
      v14 = [MEMORY[0x277D64460] sharedLogger];
      v15 = [v14 oslog];

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v46 = self;
        _os_log_impl(&dword_23193C000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Asset query did not return posting date. Setting posting date to now", buf, 0xCu);
      }

      v10 = [MEMORY[0x277CBEAA8] date];
    }

    v16 = v10;
    if (v6)
    {
      v17 = [SUCoreDescriptor alloc];
      v18 = [(SUCoreScan *)self scanPolicy];
      v19 = [v18 defaultDescriptorValues];
      v38 = [(SUCoreDescriptor *)v17 initWithSUAsset:v6 releaseDate:v16 defaultValues:v19];
    }

    else
    {
      v38 = 0;
    }

    v39 = v8;
    v37 = v7;
    if (v7)
    {
      v20 = [SUCoreDescriptor alloc];
      v21 = [(SUCoreScan *)self scanPolicy];
      v22 = [v21 defaultDescriptorValues];
      v23 = [(SUCoreDescriptor *)v20 initWithSUAsset:v7 releaseDate:v16 defaultValues:v22];

      v8 = v39;
    }

    else
    {
      v23 = 0;
    }

    v24 = v6;
    if (v8)
    {
      v25 = [SUCoreDescriptor alloc];
      v26 = [(SUCoreScan *)self scanPolicy];
      v27 = [v26 defaultDescriptorValues];
      v8 = [(SUCoreDescriptor *)v25 initWithSUAsset:v8 releaseDate:v16 defaultValues:v27];
    }

    if (v40)
    {
      v28 = [SUCoreDescriptor alloc];
      v29 = [(SUCoreScan *)self scanPolicy];
      v30 = [v29 defaultDescriptorValues];
      v31 = [(SUCoreDescriptor *)v28 initWithSUAsset:v40 releaseDate:v16 defaultValues:v30];
    }

    else
    {
      v31 = 0;
    }

    v32 = [(SUCoreScan *)self scanFSM];
    v33 = [SUCoreScanParam alloc];
    if (v38 | v8)
    {
      v34 = [(SUCoreScanParam *)v33 initWithMajorPrimaryDescriptor:v38 majorSecondaryDescriptor:v23 minorPrimaryDescriptor:v8 minorSecondaryDescriptor:v31];
      v35 = @"QueryMetadataUpdateAvailable";
    }

    else
    {
      v34 = [(SUCoreScanParam *)v33 initWithResult:8406 withError:0];
      v35 = @"QueryMetadataNoAssetFound";
    }

    [v32 postEvent:v35 withInfo:v34];
  }

  else
  {
    v11 = [(SUCoreScan *)self scanFSM];
    v12 = [v11 diag];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ SU_SCAN_OP_CHECK is not supported for current operation", self];
    [v12 trackAnomaly:@"[SCAN] FILTER_SU_QUERY" forReason:v13 withResult:8117 withError:0];
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_filterDocQueryResults:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUCoreScan *)self scanPolicy];
  v19 = 0;
  [v5 selectDocumentationAsset:&v19 fromAssetQuery:v4];

  v6 = v19;
  if (v6)
  {
    v7 = [(SUCoreScan *)self activeDescriptor];
    [v7 assignDocumentationFromAsset:v6 extendingBundleProperties:{objc_msgSend(v6, "wasLocal")}];

    LODWORD(v7) = [(SUCoreScan *)self downloadDocumentation];
    v8 = [(SUCoreScan *)self scanFSM];
    v9 = v8;
    if (v7)
    {
      v10 = @"QueryMetadataNeedDoc";
    }

    else
    {
      v10 = @"QueryMetadataSuccess";
    }

LABEL_12:
    [v8 postEvent:v10];
    goto LABEL_13;
  }

  v11 = [MEMORY[0x277D64418] sharedDevice];
  v12 = [v11 requiresDocAssetForUpdate];

  v13 = [MEMORY[0x277D64460] sharedLogger];
  v14 = [v13 oslog];

  if (!v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [MEMORY[0x277D64418] sharedDevice];
      v17 = [v16 deviceClass];
      *buf = 138543618;
      v21 = self;
      v22 = 2114;
      v23 = v17;
      _os_log_impl(&dword_23193C000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ documentation not required for device: %{public}@", buf, 0x16u);
    }

    v8 = [(SUCoreScan *)self scanFSM];
    v9 = v8;
    v10 = @"QueryMetadataSuccess";
    goto LABEL_12;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(SUCoreScan *)self _filterDocQueryResults:v14];
  }

  v9 = [(SUCoreScan *)self scanFSM];
  v15 = [[SUCoreScanParam alloc] initWithResult:8407 withError:0];
  [v9 postEvent:@"QueryMetadataNoAssetFound" withInfo:v15];

LABEL_13:
  v18 = *MEMORY[0x277D85DE8];
}

- (void)_incrementMobileAssetPending:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUCoreScan *)self scanFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  [(SUCoreScan *)self setPendingMobileAssetRequests:[(SUCoreScan *)self pendingMobileAssetRequests]+ 1];
  v7 = [MEMORY[0x277D64460] sharedLogger];
  v8 = [v7 oslog];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543874;
    v11 = self;
    v12 = 2114;
    v13 = v4;
    v14 = 1024;
    v15 = [(SUCoreScan *)self pendingMobileAssetRequests];
    _os_log_impl(&dword_23193C000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ [MA_PENDING(INCR)] %{public}@ - incremented MA pending (%d remaining)", &v10, 0x1Cu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (int64_t)_decrementMobileAssetPending:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUCoreScan *)self scanFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  if ([(SUCoreScan *)self pendingMobileAssetRequests]< 1)
  {
    v10 = [(SUCoreScan *)self scanFSM];
    v11 = [v10 diag];
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ MobileAsset operation completed when nothing pending (%@)", self, v4];
    [v11 trackAnomaly:@"[SCAN] MA_PENDING(DECR)" forReason:v12 withResult:8117 withError:0];

    LODWORD(v11) = [(SUCoreScan *)self pendingMobileAssetRequests];
    v13 = [MEMORY[0x277D64460] sharedLogger];
    v14 = [v13 oslog];

    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if ((v11 & 0x80000000) != 0)
    {
      if (v15)
      {
        [(SUCoreScan *)self _decrementMobileAssetPending:v4, v14];
      }

      [(SUCoreScan *)self setPendingMobileAssetRequests:0];
    }

    else
    {
      if (v15)
      {
        [SUCoreScan _decrementMobileAssetPending:];
      }
    }

    v9 = 8117;
  }

  else
  {
    [(SUCoreScan *)self setPendingMobileAssetRequests:[(SUCoreScan *)self pendingMobileAssetRequests]- 1];
    v7 = [MEMORY[0x277D64460] sharedLogger];
    v8 = [v7 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v19 = self;
      v20 = 2114;
      v21 = v4;
      v22 = 1024;
      v23 = [(SUCoreScan *)self pendingMobileAssetRequests];
      _os_log_impl(&dword_23193C000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ [MA_PENDING(DECR)] %{public}@ - decremented MA pending (%d remaining)", buf, 0x1Cu);
    }

    v9 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_trackScanBegin:(id)a3 withIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(SUCoreScan *)self scanFSM];
  v8 = [v9 diag];
  [v8 trackBegin:v7 atLevel:1 forModule:@"scan" withIdentifier:v6];
}

- (void)_trackScanEnd:(id)a3 withIdentifier:(id)a4 withResult:(int64_t)a5 withError:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v14 = [(SUCoreScan *)self scanFSM];
  v13 = [v14 diag];
  [v13 trackEnd:v12 atLevel:1 forModule:@"scan" withIdentifier:v11 withResult:a5 withError:v10];
}

- (id)_createEvent:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreScan *)self scanFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [MEMORY[0x277CBEB38] dictionary];
  [v7 setSafeObject:v4 forKey:*MEMORY[0x277D64740]];

  v8 = [(SUCoreScan *)self scanUUID];
  [v7 setSafeObject:v8 forKey:*MEMORY[0x277D647B8]];

  v9 = objc_alloc_init(SUCoreEventAugmenter);
  v10 = [(SUCoreScan *)self scanPolicy];
  [(SUCoreEventAugmenter *)v9 setPolicy:v10];

  v11 = [(SUCoreScan *)self psusPrimaryDescriptor];
  [(SUCoreEventAugmenter *)v9 setPrimaryDescriptor:v11];

  [(SUCoreEventAugmenter *)v9 augmentEvent:v7];

  return v7;
}

- (void)_reportPSUSDetermineStartedEvent
{
  v3 = [(SUCoreScan *)self scanFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(SUCoreScan *)self _createEvent:*MEMORY[0x277D64788]];
  [v5 setSafeObject:*MEMORY[0x277D64760] forKey:*MEMORY[0x277D64748]];
  v6 = [MEMORY[0x277D643F8] sharedCore];
  v7 = [v6 miscellaneousTaksQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SUCoreScan__reportPSUSDetermineStartedEvent__block_invoke;
  block[3] = &unk_27892C8A8;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, block);
}

void __46__SUCoreScan__reportPSUSDetermineStartedEvent__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D64448] sharedReporter];
  [v2 sendEvent:*(a1 + 32)];
}

- (void)_reportPSUSDetermineFinishedEvent:(id)a3 duration:(double)a4
{
  v6 = a3;
  v7 = [(SUCoreScan *)self scanFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(SUCoreScan *)self _createEvent:*MEMORY[0x277D64780]];
  v10 = v9;
  if (v6)
  {
    [MEMORY[0x277D64448] augmentEvent:v9 withError:v6];
  }

  else
  {
    [v9 setSafeObject:*MEMORY[0x277D64760] forKey:*MEMORY[0x277D64748]];
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a4];
  [v10 setSafeObject:v11 forKey:*MEMORY[0x277D645D0]];

  v12 = [MEMORY[0x277D643F8] sharedCore];
  v13 = [v12 miscellaneousTaksQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SUCoreScan__reportPSUSDetermineFinishedEvent_duration___block_invoke;
  block[3] = &unk_27892C8A8;
  v16 = v10;
  v14 = v10;
  dispatch_async(v13, block);
}

void __57__SUCoreScan__reportPSUSDetermineFinishedEvent_duration___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D64448] sharedReporter];
  [v2 sendEvent:*(a1 + 32)];
}

- (id)_simDescriptorAttributes
{
  v23[39] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v2 setDateFormat:@"dd-MMM-yy"];
  v17 = [v2 dateFromString:@"07-Jul-07"];
  v3 = objc_alloc_init(MEMORY[0x277CBEA90]);
  v22[0] = @"OSVersion";
  v22[1] = @"Build";
  v23[0] = @"9.9.13.0";
  v23[1] = @"17A408a";
  v22[2] = @"SUProductSystemName";
  v22[3] = @"ReleaseType";
  v23[2] = @"iOS";
  v23[3] = @"Internal";
  v22[4] = @"SUPublisher";
  v22[5] = @"ReleaseDate";
  v23[4] = @"Apple Inc.";
  v23[5] = v17;
  v22[6] = @"SupportedDevices";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"D11AP", 0}];
  v23[6] = v4;
  v22[7] = *MEMORY[0x277D28908];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:3209145381];
  v23[7] = v5;
  v22[8] = *MEMORY[0x277D28920];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:3309669376];
  v23[8] = v6;
  v22[9] = @"ActualMinimumSystemPartition";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:5674];
  v8 = MEMORY[0x277CBEC38];
  v9 = *MEMORY[0x277D28910];
  v23[9] = v7;
  v23[10] = MEMORY[0x277CBEC38];
  v22[10] = v9;
  v22[11] = @"SystemPartitionPadding";
  v23[11] = MEMORY[0x277CBEC10];
  v23[12] = MEMORY[0x277CBEC38];
  v22[12] = @"AutomaticDownloadOver3G";
  v22[13] = @"AllowableOverCellular";
  v23[13] = MEMORY[0x277CBEC38];
  v23[14] = MEMORY[0x277CBEC38];
  v22[14] = @"AllowableOTA";
  v22[15] = @"SUDisableSiriVoiceDeletion";
  v23[15] = MEMORY[0x277CBEC38];
  v23[16] = MEMORY[0x277CBEC38];
  v22[16] = @"SUDisableCDLevel4";
  v22[17] = @"SUDisableAppDemotion";
  v23[17] = MEMORY[0x277CBEC38];
  v23[18] = MEMORY[0x277CBEC38];
  v22[18] = @"SUInstallTonightEnabled";
  v22[19] = @"SUDisableReserveSpace";
  v23[19] = MEMORY[0x277CBEC38];
  v23[20] = MEMORY[0x277CBEC38];
  v22[20] = @"Ramp";
  v22[21] = @"MDMDelayInterval";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:24];
  v23[21] = v10;
  v23[22] = v8;
  v22[22] = @"AutoUpdate";
  v22[23] = @"SetupCritical";
  v23[23] = @"kSUAssetSetupCriticalKey";
  v23[24] = v8;
  v22[24] = @"SetupCriticalCellularOverride";
  v22[25] = @"SetupCriticalUpdateOutOfBoxOnly";
  v23[25] = v8;
  v23[26] = @"kSUAssetLastEmergencyBuildKey";
  v22[26] = @"LastEmergencyBuild";
  v22[27] = @"LastEmergencyOSVersion";
  v23[27] = @"kSUAssetLastEmergencyOSVersionKey";
  v23[28] = v3;
  v22[28] = @"SEPDigest";
  v22[29] = @"SEPTBMDigests";
  v23[29] = v3;
  v23[30] = v3;
  v22[30] = @"RSEPDigest";
  v22[31] = @"RSEPTBMDigests";
  v23[31] = v3;
  v23[32] = @"PreRelease";
  v22[32] = @"SUDocumentationID";
  v22[33] = @"Language";
  v23[33] = @"kSUAssetLanguageKey";
  v23[34] = @"kSUAssetReleaseNotesSummaryFileNameKey";
  v22[34] = @"ReleaseNotesSummaryFileName";
  v22[35] = @"ReleaseNotesFileName";
  v23[35] = @"kSUAssetReleaseNotesFileNameKey";
  v23[36] = @"kSUAssetLicenseAgreementFileNameKey";
  v22[36] = @"LicenseAgreementFileName";
  v22[37] = @"_Measurement";
  v22[38] = @"_MeasurementAlgorithm";
  v23[37] = v3;
  v23[38] = @"SHA-1";
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:39];

  v20[0] = @"AssetProperties";
  v20[1] = @"AssetAddedProperties";
  v21[0] = v11;
  v18[0] = @"AssetState";
  v12 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v19[0] = v12;
  v19[1] = @"com.apple.MobileAsset.SoftwareUpdateCoreTest";
  v18[1] = @"AssetType";
  v18[2] = @"AssetId";
  v19[2] = @"ma-asset-id";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v21[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)_updateInterimScanResultForSlowReleaseWithPrimary:secondary:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_23193C000, v0, v1, "%{public}@ [DUAL_AUDIENCE] Dropping no update found alternate scan error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_downloadCatalog:withIdentifier:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_23193C000, v0, v1, "%{public}@ %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_filterDocQueryResults:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_23193C000, a2, OS_LOG_TYPE_ERROR, "%{public}@ no documentation asset (after filtering/selection)", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_decrementMobileAssetPending:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_23193C000, v0, v1, "%{public}@ [MA_PENDING(DECR)] %{public}@ - 0 MA pending");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_decrementMobileAssetPending:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = 138543874;
  v6 = a1;
  v7 = 2114;
  v8 = a2;
  v9 = 1024;
  v10 = [a1 pendingMobileAssetRequests];
  _os_log_error_impl(&dword_23193C000, a3, OS_LOG_TYPE_ERROR, "%{public}@ [MA_PENDING(DECR)] %{public}@ - negative MA pending (%d) - clearing", &v5, 0x1Cu);
  v4 = *MEMORY[0x277D85DE8];
}

@end