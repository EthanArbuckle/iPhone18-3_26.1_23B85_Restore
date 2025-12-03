@interface SUCoreScan
+ (BOOL)isPreSUStagingEnabledForUpdate:(id)update policy:(id)policy reason:(id *)reason;
+ (id)_generateStateTable;
- (BOOL)_decideAndProcessPSUSScanForPrimaryDescriptor:(id)descriptor secondaryDescriptor:(id)secondaryDescriptor andError:(id)error;
- (BOOL)_decideAndProcessSlowReleaseScan;
- (BOOL)_decideAndProcessSplomboScan;
- (BOOL)_decideReserveSpace:(id)space error:(id)error;
- (BOOL)_shouldPerformAlternateScanFromFoundDescriptor:(id)descriptor policy:(id)policy;
- (BOOL)_shouldPerformPSUSScanFromFoundDescriptor:(id)descriptor policy:(id)policy;
- (BOOL)_shouldPerformSplomboScanFromFoundDescriptor:(id)descriptor policy:(id)policy;
- (SUCoreScan)initWithUUID:(id)d withCompletionQueue:(id)queue;
- (double)_psusDetermineTimeout;
- (id)_createEvent:(id)event;
- (id)_operationName;
- (id)_simDescriptorAttributes;
- (id)description;
- (int64_t)_decrementMobileAssetPending:(id)pending;
- (int64_t)_determinePSUSAssets;
- (int64_t)_downloadCatalog:(id)catalog withIdentifier:(id)identifier;
- (int64_t)a_SimCatalogDownloadSuccess:(id *)success;
- (int64_t)a_SimQueryMetadataUpdateAvailable:(id *)available;
- (int64_t)actionAfterAvailCancelSuccess:(id)success error:(id *)error;
- (int64_t)actionAfterFailCancelSuccess:(id)success error:(id *)error;
- (int64_t)actionAfterFailCheckCancelDone:(id)done error:(id *)error;
- (int64_t)actionAlterDocDownloadConfig:(id *)config;
- (int64_t)actionCancelDocCatalogDownload:(id *)download;
- (int64_t)actionCancelDone:(id *)done;
- (int64_t)actionCancelPSUSAssetsDetermination:(id *)determination;
- (int64_t)actionCancelRemoveFailed:(id)failed error:(id *)error;
- (int64_t)actionCancelSUCatalogDownload:(id *)download;
- (int64_t)actionCancelSuccess:(id *)success;
- (int64_t)actionCheckCancelDone:(id *)done;
- (int64_t)actionDeterminePSUSAssets:(id *)assets;
- (int64_t)actionDownloadDocAsset:(id *)asset;
- (int64_t)actionDownloadDocCatalog:(id *)catalog;
- (int64_t)actionDownloadSUCatalog:(id *)catalog;
- (int64_t)actionQueryDocMetadata:(id *)metadata;
- (int64_t)actionQuerySUMetadata:(id *)metadata;
- (int64_t)actionRemoveDocAsset:(id *)asset;
- (int64_t)actionScanCompleteNoUpdate:(id *)update;
- (int64_t)actionScanFailed:(id)failed error:(id *)error;
- (int64_t)actionScanSuccess:(id)success error:(id *)error;
- (int64_t)actionUnknownAction:(id)action error:(id *)error;
- (int64_t)performAction:(id)action onEvent:(id)event inState:(id)state withInfo:(id)info nextState:(id)nextState error:(id *)error;
- (unint64_t)actionDecideNextScanStep:(id *)step;
- (unint64_t)actionDeterminePSUSAssetsFailed:(id)failed error:(id *)error;
- (unint64_t)actionDeterminePSUSAssetsSuccess:(id)success error:(id *)error;
- (unint64_t)actionPerformReserveSpace:(id *)space;
- (unint64_t)actionScanComplete:(id *)complete;
- (void)_cancelCompleteWithError:(id)error;
- (void)_checkMajorMinorEndComplete:(id)complete scanPolicy:(id)policy majorPrimary:(id)primary majorSecondary:(id)secondary minorPrimary:(id)minorPrimary minorSecondary:(id)minorSecondary error:(id)error clearingTransaction:(BOOL)self0;
- (void)_checkSlowReleaseEndComplete:(id)complete scanPolicy:(id)policy primary:(id)primary secondary:(id)secondary alternatePrimary:(id)alternatePrimary alternateSecondary:(id)alternateSecondary error:(id)error clearingTransaction:(BOOL)self0;
- (void)_clearCurrentOperation;
- (void)_filterDocQueryResults:(id)results;
- (void)_filterSUQueryResults:(id)results;
- (void)_filterSUQueryResultsForSPITypeMajorMinorFromQuery:(id)query;
- (void)_filterSUQueryResultsForSPITypeSingleFromQuery:(id)query;
- (void)_incrementMobileAssetPending:(id)pending;
- (void)_invalidOperation:(id)operation;
- (void)_operationCompleting:(id)completing error:(id)error clearingTransaction:(BOOL)transaction;
- (void)_reportPSUSDetermineFinishedEvent:(id)event duration:(double)duration;
- (void)_reportPSUSDetermineStartedEvent;
- (void)_scanCompleteFoundPrimary:(id)primary foundSecondary:(id)secondary majorPrimary:(id)majorPrimary majorSecondary:(id)majorSecondary minorPrimary:(id)minorPrimary minorSecondary:(id)minorSecondary clearingOperation:(BOOL)operation error:(id)self0;
- (void)_trackInconsistentAnomalyAndUpdateInterimResult:(id)result reason:(id)reason;
- (void)_trackScanBegin:(id)begin withIdentifier:(id)identifier;
- (void)_trackScanEnd:(id)end withIdentifier:(id)identifier withResult:(int64_t)result withError:(id)error;
- (void)_updateInterimScanResultForSlowReleaseWithPrimary:(id)primary secondary:(id)secondary error:(id)error;
- (void)_updateInterimScanResultForSplomboWithPrimary:(id)primary secondary:(id)secondary majorPrimary:(id)majorPrimary majorSecondary:(id)majorSecondary minorPrimary:(id)minorPrimary minorSecondary:(id)minorSecondary error:(id)error;
- (void)_updateInterimScanResultWithPrimary:(id)primary secondary:(id)secondary majorPrimary:(id)majorPrimary majorSecondary:(id)majorSecondary minorPrimary:(id)minorPrimary minorSecondary:(id)minorSecondary error:(id)error;
- (void)_verifyEndComplete:(id)complete scanPolicy:(id)policy active:(id)active primary:(id)primary secondary:(id)secondary error:(id)error clearingTransaction:(BOOL)transaction;
- (void)alterCurrentPolicy:(id)policy;
- (void)cancelCurrentScan:(id)scan;
- (void)checkForAvailableMajorMinorUpdatesWithPolicy:(id)policy completion:(id)completion;
- (void)checkForAvailableSlowReleaseUpdatesWithPolicy:(id)policy completion:(id)completion;
- (void)checkForAvailableUpdateWithPolicy:(id)policy completion:(id)completion;
- (void)collectDocumentationMetadataWithPolicy:(id)policy descriptor:(id)descriptor downloadDocumentation:(BOOL)documentation completion:(id)completion;
- (void)locateAvailableUpdateWithPolicy:(id)policy completion:(id)completion;
- (void)verifyLatestAvailableWithPolicy:(id)policy descriptor:(id)descriptor completion:(id)completion;
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

- (int64_t)performAction:(id)action onEvent:(id)event inState:(id)state withInfo:(id)info nextState:(id)nextState error:(id *)error
{
  actionCopy = action;
  infoCopy = info;
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([actionCopy isEqualToString:*MEMORY[0x277D647D0]])
  {
    v15 = 0;
  }

  else
  {
    if ([actionCopy isEqualToString:@"DecideNextScanStep"])
    {
      v16 = [(SUCoreScan *)self actionDecideNextScanStep:error];
    }

    else if ([actionCopy isEqualToString:@"DownloadSUCatalog"])
    {
      v16 = [(SUCoreScan *)self actionDownloadSUCatalog:error];
    }

    else if ([actionCopy isEqualToString:@"QuerySUMetadata"])
    {
      v16 = [(SUCoreScan *)self actionQuerySUMetadata:error];
    }

    else if ([actionCopy isEqualToString:@"PerformReserveSpace"])
    {
      v16 = [(SUCoreScan *)self actionPerformReserveSpace:error];
    }

    else if ([actionCopy isEqualToString:@"DeterminePSUSAssets"])
    {
      v16 = [(SUCoreScan *)self actionDeterminePSUSAssets:error];
    }

    else if ([actionCopy isEqualToString:@"DownloadDocCatalog"])
    {
      v16 = [(SUCoreScan *)self actionDownloadDocCatalog:error];
    }

    else if ([actionCopy isEqualToString:@"QueryDocMetadata"])
    {
      v16 = [(SUCoreScan *)self actionQueryDocMetadata:error];
    }

    else if ([actionCopy isEqualToString:@"DownloadDocAsset"])
    {
      v16 = [(SUCoreScan *)self actionDownloadDocAsset:error];
    }

    else if ([actionCopy isEqualToString:@"AlterDocDownloadConfig"])
    {
      v16 = [(SUCoreScan *)self actionAlterDocDownloadConfig:error];
    }

    else if ([actionCopy isEqualToString:@"RemoveDocAsset"])
    {
      v16 = [(SUCoreScan *)self actionRemoveDocAsset:error];
    }

    else if ([actionCopy isEqualToString:@"ScanCompleteNoUpdate"])
    {
      v16 = [(SUCoreScan *)self actionScanCompleteNoUpdate:error];
    }

    else if ([actionCopy isEqualToString:@"ScanSuccess"])
    {
      v16 = [(SUCoreScan *)self actionScanSuccess:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ScanFailed"])
    {
      v16 = [(SUCoreScan *)self actionScanFailed:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"DeterminePSUSAssetsSuccess"])
    {
      v16 = [(SUCoreScan *)self actionDeterminePSUSAssetsSuccess:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"DeterminePSUSAssetsFailed"])
    {
      v16 = [(SUCoreScan *)self actionDeterminePSUSAssetsFailed:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ScanComplete"])
    {
      v16 = [(SUCoreScan *)self actionScanComplete:error];
    }

    else if ([actionCopy isEqualToString:@"CancelSUCatalogDownload"])
    {
      v16 = [(SUCoreScan *)self actionCancelSUCatalogDownload:error];
    }

    else if ([actionCopy isEqualToString:@"CancelDocCatalogDownload"])
    {
      v16 = [(SUCoreScan *)self actionCancelDocCatalogDownload:error];
    }

    else if ([actionCopy isEqualToString:@"CancelSuccess"])
    {
      v16 = [(SUCoreScan *)self actionCancelSuccess:error];
    }

    else if ([actionCopy isEqualToString:@"AfterAvailCancelSuccess"])
    {
      v16 = [(SUCoreScan *)self actionAfterAvailCancelSuccess:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"AfterFailCancelSuccess"])
    {
      v16 = [(SUCoreScan *)self actionAfterFailCancelSuccess:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"CancelRemoveFailed"])
    {
      v16 = [(SUCoreScan *)self actionCancelRemoveFailed:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"CheckCancelDone"])
    {
      v16 = [(SUCoreScan *)self actionCheckCancelDone:error];
    }

    else if ([actionCopy isEqualToString:@"AfterFailCheckCancelDone"])
    {
      v16 = [(SUCoreScan *)self actionAfterFailCheckCancelDone:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"CancelDone"])
    {
      v16 = [(SUCoreScan *)self actionCancelDone:error];
    }

    else if ([actionCopy isEqualToString:@"CancelPSUSAssetsDetermination"])
    {
      v16 = [(SUCoreScan *)self actionCancelPSUSAssetsDetermination:error];
    }

    else if ([actionCopy isEqualToString:@"SimCatalogDownloadSuccess"])
    {
      v16 = [(SUCoreScan *)self a_SimCatalogDownloadSuccess:error];
    }

    else if ([actionCopy isEqualToString:@"SimQueryMetadataUpdateAvailable"])
    {
      v16 = [(SUCoreScan *)self a_SimQueryMetadataUpdateAvailable:error];
    }

    else
    {
      v16 = [(SUCoreScan *)self actionUnknownAction:actionCopy error:error];
    }

    v15 = v16;
  }

  return v15;
}

- (int64_t)actionDeterminePSUSAssets:(id *)assets
{
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  return [(SUCoreScan *)self _determinePSUSAssets];
}

- (int64_t)actionDownloadSUCatalog:(id *)catalog
{
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  scanPolicy = [(SUCoreScan *)self scanPolicy];
  softwareUpdateAssetType = [scanPolicy softwareUpdateAssetType];
  v8 = [(SUCoreScan *)self _downloadCatalog:softwareUpdateAssetType withIdentifier:@"su"];

  return v8;
}

- (int64_t)actionQuerySUMetadata:(id *)metadata
{
  v38 = *MEMORY[0x277D85DE8];
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v6 = [(SUCoreScan *)self _decrementMobileAssetPending:@"DownloadSUCatalog"];
  scanPolicy = [(SUCoreScan *)self scanPolicy];
  mobileAssetPurposeOverride = [scanPolicy mobileAssetPurposeOverride];

  if (mobileAssetPurposeOverride)
  {
    scanPolicy2 = [(SUCoreScan *)self scanPolicy];
    mobileAssetPurposeOverride2 = [scanPolicy2 mobileAssetPurposeOverride];

    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v36 = 2114;
      v37 = mobileAssetPurposeOverride2;
      v13 = "%{public}@ SU metadata query using mobileAssetPurposeOverride as purpose: %{public}@";
LABEL_10:
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, v13, buf, 0x16u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  alternateAssetAudienceUUID = [(SUCoreScan *)self alternateAssetAudienceUUID];

  if (alternateAssetAudienceUUID)
  {
    mobileAssetPurposeOverride2 = [(SUCoreScan *)self alternateAssetAudienceUUID];
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v36 = 2114;
      v37 = mobileAssetPurposeOverride2;
      v13 = "%{public}@ SU metadata query using alternateAssetAudienceUUID as purpose: %{public}@";
      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

  scanPolicy3 = [(SUCoreScan *)self scanPolicy];
  assetAudienceUUID = [scanPolicy3 assetAudienceUUID];

  if (assetAudienceUUID)
  {
    scanPolicy4 = [(SUCoreScan *)self scanPolicy];
    mobileAssetPurposeOverride2 = [scanPolicy4 assetAudienceUUID];

    mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460]3 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v36 = 2114;
      v37 = mobileAssetPurposeOverride2;
      v13 = "%{public}@ SU metadata query using scan policy assetAudienceUUID as purpose: %{public}@";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  mobileAssetPurposeOverride2 = 0;
LABEL_12:
  scanPolicy5 = [(SUCoreScan *)self scanPolicy];
  v21 = [scanPolicy5 constructSoftwareUpdateMAAssetQueryWithPurpose:mobileAssetPurposeOverride2];

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
    scanPolicy6 = [(SUCoreScan *)self scanPolicy];
    summary = [scanPolicy6 summary];
    v25 = [v22 initWithFormat:@"failed to construct SU asset query from policy[%@]", summary];

    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v6 = 8100;
    v27 = [mEMORY[0x277D643F8] buildError:8100 underlying:0 description:v25];

    scanFSM2 = [(SUCoreScan *)self scanFSM];
    v29 = [[SUCoreScanParam alloc] initWithResult:8100 withError:v27];
    [scanFSM2 postEvent:@"QueryMetadataFailed" withInfo:v29];
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

- (unint64_t)actionPerformReserveSpace:(id *)space
{
  v71 = *MEMORY[0x277D85DE8];
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    scanFSM2 = [(SUCoreScan *)self scanFSM];
    [scanFSM2 followupEvent:@"DecideNextScanStep"];

    goto LABEL_78;
  }

  if ([(SUCoreScan *)self operationSPIType]== 1)
  {
    interimScanResult = [(SUCoreScan *)self interimScanResult];
    descriptor = [interimScanResult descriptor];
    minorPrimaryDescriptor = 0;
  }

  else
  {
    if ([(SUCoreScan *)self operationSPIType]!= 2 && [(SUCoreScan *)self operationSPIType]!= 3)
    {
      descriptor = 0;
      minorPrimaryDescriptor = 0;
      goto LABEL_13;
    }

    interimScanResult2 = [(SUCoreScan *)self interimScanResult];
    descriptor = [interimScanResult2 majorPrimaryDescriptor];

    interimScanResult = [(SUCoreScan *)self interimScanResult];
    minorPrimaryDescriptor = [interimScanResult minorPrimaryDescriptor];
  }

  if (!descriptor)
  {
LABEL_13:
    v12 = 1;
LABEL_14:
    scanPolicy = [(SUCoreScan *)self scanPolicy];
    v11 = [scanPolicy useReserveSpace] ^ 1;

    if (v12)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (([descriptor disableReserveSpace] & 1) == 0)
  {
    v12 = 0;
    goto LABEL_14;
  }

  v11 = 1;
LABEL_15:
  if ([descriptor updateType] == 1)
  {
    v14 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (minorPrimaryDescriptor)
  {
    v14 = [minorPrimaryDescriptor updateType] == 1;
  }

  else
  {
    v14 = 0;
  }

LABEL_20:
  v15 = (v11 ^ 1) & v14;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[Space] %s, isReserveSpaceDisabled: %@, anyUpdateIsIncremental: %@, shouldUseReserveSpace: %@", buf, 0x2Au);
  }

  selfCopy = self;
  if (v15)
  {
    if ([descriptor updateType] == 1)
    {
      totalSnapshotRequiredFreeSpace = [descriptor totalSnapshotRequiredFreeSpace];
      if (!minorPrimaryDescriptor)
      {
        goto LABEL_38;
      }
    }

    else
    {
      totalSnapshotRequiredFreeSpace = 0;
      if (!minorPrimaryDescriptor)
      {
        goto LABEL_38;
      }
    }

    if ([minorPrimaryDescriptor updateType] == 1)
    {
      totalSnapshotRequiredFreeSpace2 = [minorPrimaryDescriptor totalSnapshotRequiredFreeSpace];
      goto LABEL_39;
    }

LABEL_38:
    totalSnapshotRequiredFreeSpace2 = 0;
LABEL_39:
    if (totalSnapshotRequiredFreeSpace <= totalSnapshotRequiredFreeSpace2)
    {
      totalSnapshotRequiredFreeSpace = totalSnapshotRequiredFreeSpace2;
    }

    minReserveSpace = [descriptor minReserveSpace];
    minReserveSpace2 = [minorPrimaryDescriptor minReserveSpace];
    if (minReserveSpace <= minReserveSpace2)
    {
      v25 = minReserveSpace2;
    }

    else
    {
      v25 = minReserveSpace;
    }

    if ([descriptor updateType] == 1)
    {
      minimumSystemPartitionSize = [descriptor minimumSystemPartitionSize];
      if (!minorPrimaryDescriptor)
      {
        goto LABEL_50;
      }
    }

    else
    {
      minimumSystemPartitionSize = 0;
      if (!minorPrimaryDescriptor)
      {
        goto LABEL_50;
      }
    }

    if ([minorPrimaryDescriptor updateType] == 1)
    {
      minimumSystemPartitionSize2 = [minorPrimaryDescriptor minimumSystemPartitionSize];
LABEL_51:
      if (minimumSystemPartitionSize <= minimumSystemPartitionSize2)
      {
        minimumSystemPartitionSize = minimumSystemPartitionSize2;
      }

      v31 = [SUCoreSpace getVolumeUsedSpace:@"/"];
      if (minimumSystemPartitionSize >= v31)
      {
        unsignedLongLongValue = minimumSystemPartitionSize - v31;
      }

      else
      {
        unsignedLongLongValue = 0;
      }

      mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
      isInternal = [mEMORY[0x277D64418] isInternal];

      if (!isInternal)
      {
        goto LABEL_61;
      }

      scanPolicy2 = [(SUCoreScan *)self scanPolicy];
      reserveSpaceSizeOverride = [scanPolicy2 reserveSpaceSizeOverride];

      if (reserveSpaceSizeOverride)
      {
        scanPolicy3 = [(SUCoreScan *)self scanPolicy];
        reserveSpaceSizeOverride2 = [scanPolicy3 reserveSpaceSizeOverride];
        totalSnapshotRequiredFreeSpace = [reserveSpaceSizeOverride2 unsignedLongLongValue];
      }

      scanPolicy4 = [(SUCoreScan *)self scanPolicy];
      systemGrowthMarginOverride = [scanPolicy4 systemGrowthMarginOverride];

      if (systemGrowthMarginOverride)
      {
        selfCopy2 = self;
        v22 = minorPrimaryDescriptor;
        v23 = v11;
        scanPolicy5 = [(SUCoreScan *)selfCopy2 scanPolicy];
        systemGrowthMarginOverride2 = [scanPolicy5 systemGrowthMarginOverride];
        unsignedLongLongValue = [systemGrowthMarginOverride2 unsignedLongLongValue];
      }

      else
      {
LABEL_61:
        v22 = minorPrimaryDescriptor;
        v23 = v11;
      }

      goto LABEL_62;
    }

LABEL_50:
    minimumSystemPartitionSize2 = 0;
    goto LABEL_51;
  }

  v22 = minorPrimaryDescriptor;
  v23 = v11;
  unsignedLongLongValue = 0;
  v25 = 0;
  totalSnapshotRequiredFreeSpace = 0;
LABEL_62:
  v43 = MEMORY[0x277CCABB0];
  if ([descriptor centeralizedPurgeableFactor])
  {
    v44 = descriptor;
  }

  else
  {
    v44 = v22;
  }

  v45 = [v43 numberWithUnsignedLong:{objc_msgSend(v44, "centeralizedPurgeableFactor")}];
  v46 = MEMORY[0x277CCABB0];
  if ([descriptor pluginPurgeableFactor])
  {
    v47 = descriptor;
  }

  else
  {
    v47 = v22;
  }

  v48 = [v46 numberWithUnsignedLong:{objc_msgSend(v47, "pluginPurgeableFactor")}];
  v49 = MEMORY[0x277CCABB0];
  if ([descriptor maxReserveSpace])
  {
    v50 = descriptor;
  }

  else
  {
    v50 = v22;
  }

  v51 = [v49 numberWithUnsignedLongLong:{objc_msgSend(v50, "maxReserveSpace")}];
  if (totalSnapshotRequiredFreeSpace <= v25)
  {
    v52 = v25;
  }

  else
  {
    v52 = totalSnapshotRequiredFreeSpace;
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
  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongLongValue];
  v62[1] = v55;
  v62[2] = v45;
  v61[2] = @"CACHE_DELETE_FACTOR_FOR_CENTRALIZED_PURGEABLE";
  v61[3] = @"CACHE_DELETE_FACTOR_FOR_PLUGIN_PURGEABLE";
  v61[4] = @"CACHE_DELETE_MAX_RESERVE_SPACE_AMOUNT";
  v62[3] = v48;
  v62[4] = v51;
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:5];

  [SUCoreSpace cacheDeleteSetReserveSpaceWithInfo:v56];
  scanFSM3 = [(SUCoreScan *)selfCopy scanFSM];
  [scanFSM3 followupEvent:@"DecideNextScanStep"];

LABEL_78:
  v58 = *MEMORY[0x277D85DE8];
  return 0;
}

- (unint64_t)actionDeterminePSUSAssetsSuccess:(id)success error:(id *)error
{
  v61 = *MEMORY[0x277D85DE8];
  successCopy = success;
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v8 = [(SUCoreScan *)self _decrementMobileAssetPending:@"DeterminePSUSAssets succeeded"];
  additionalInfo = [successCopy additionalInfo];

  v10 = [additionalInfo safeObjectForKey:@"PSUSDetermineError" ofClass:objc_opt_class()];
  if (v10)
  {
    v11 = [additionalInfo safeObjectForKey:@"Duration" ofClass:objc_opt_class()];
    [v11 doubleValue];
    v13 = v12;

    selfCopy2 = self;
    v15 = v10;
LABEL_3:
    [(SUCoreScan *)selfCopy2 _reportPSUSDetermineFinishedEvent:v15 duration:v13];
    goto LABEL_4;
  }

  v19 = [additionalInfo safeObjectForKey:@"PSUSAssetsSizes" ofClass:objc_opt_class()];
  if (!v19)
  {
    scanFSM2 = [(SUCoreScan *)self scanFSM];
    diag = [scanFSM2 diag];
    v49 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ unexpected no assets sizes", self];
    [diag trackAnomaly:@"[SCAN] DETERMINE_PSUS_SUCCESS" forReason:v49 withResult:8117 withError:0];

    v50 = [additionalInfo safeObjectForKey:@"Duration" ofClass:objc_opt_class()];
    [v50 doubleValue];
    v13 = v51;

    selfCopy2 = self;
    v15 = 0;
    goto LABEL_3;
  }

  v20 = v19;
  v52 = v8;
  v21 = [v19 safeULLForKey:@"STAGE_GROUP_REQUIRED" defaultValue:0];
  v22 = [v20 safeULLForKey:@"STAGE_GROUP_OPTIONAL" defaultValue:0];
  psusPrimaryDescriptor = [(SUCoreScan *)self psusPrimaryDescriptor];
  preSUStagingMaxSize = [psusPrimaryDescriptor preSUStagingMaxSize];

  v25 = *MEMORY[0x277D29460];
  v26 = _MSUPreferencesCopyValue();
  if (v26)
  {
    v27 = v26;
    v28 = CFGetTypeID(v26);
    if (v28 == CFNumberGetTypeID())
    {
      preSUStagingMaxSize = [v27 unsignedLongLongValue];
      mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
      oslog = [mEMORY[0x277D64460] oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy4 = self;
        v55 = 2048;
        v56 = preSUStagingMaxSize;
        _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ Using PSUS max size from preferences: %llu", buf, 0x16u);
      }
    }

    CFRelease(v27);
  }

  v33 = v21 > preSUStagingMaxSize || v22 > preSUStagingMaxSize || v22 + v21 > preSUStagingMaxSize;
  if (v33)
  {
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog2 = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      selfCopy4 = self;
      v55 = 2048;
      v56 = v21;
      v57 = 2048;
      v58 = v22;
      v59 = 2048;
      v60 = preSUStagingMaxSize;
      _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "%{public}@ Ignore PSUS assets because required=%llu, optional=%llu, max=%llu", buf, 0x2Au);
    }
  }

  psusPrimaryDescriptor2 = [(SUCoreScan *)self psusPrimaryDescriptor];
  [psusPrimaryDescriptor2 setPreSUStagingRequiredSize:v21];

  psusPrimaryDescriptor3 = [(SUCoreScan *)self psusPrimaryDescriptor];
  [psusPrimaryDescriptor3 setPreSUStagingOptionalSize:v22];

  psusSecondaryDescriptor = [(SUCoreScan *)self psusSecondaryDescriptor];
  [psusSecondaryDescriptor setPreSUStagingRequiredSize:v21];

  psusSecondaryDescriptor2 = [(SUCoreScan *)self psusSecondaryDescriptor];
  [psusSecondaryDescriptor2 setPreSUStagingOptionalSize:v22];

  v40 = [additionalInfo safeObjectForKey:@"Duration" ofClass:objc_opt_class()];
  [v40 doubleValue];
  v42 = v41;

  [(SUCoreScan *)self _reportPSUSDetermineFinishedEvent:0 duration:v42];
  v8 = v52;
  if (v33)
  {
    psusPrimaryDescriptor4 = [(SUCoreScan *)self psusPrimaryDescriptor];
    [psusPrimaryDescriptor4 setPreSUStagingRequiredSize:0];

    psusPrimaryDescriptor5 = [(SUCoreScan *)self psusPrimaryDescriptor];
    [psusPrimaryDescriptor5 setPreSUStagingOptionalSize:0];

    psusSecondaryDescriptor3 = [(SUCoreScan *)self psusSecondaryDescriptor];
    [psusSecondaryDescriptor3 setPreSUStagingRequiredSize:0];

    psusSecondaryDescriptor4 = [(SUCoreScan *)self psusSecondaryDescriptor];
    [psusSecondaryDescriptor4 setPreSUStagingOptionalSize:0];
  }

LABEL_4:
  [(SUCoreScan *)self setPsusPrimaryDescriptor:0];
  [(SUCoreScan *)self setPsusSecondaryDescriptor:0];
  scanFSM3 = [(SUCoreScan *)self scanFSM];
  [scanFSM3 followupEvent:@"DecideNextScanStep"];

  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

- (unint64_t)actionDeterminePSUSAssetsFailed:(id)failed error:(id *)error
{
  failedCopy = failed;
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v8 = [(SUCoreScan *)self _decrementMobileAssetPending:@"DeterminePSUSAssets failed"];
  [(SUCoreScan *)self setInterimScanResult:failedCopy];
  error = [failedCopy error];
  additionalInfo = [failedCopy additionalInfo];

  v11 = [additionalInfo safeObjectForKey:@"Duration" ofClass:objc_opt_class()];
  [v11 doubleValue];
  v13 = v12;

  [(SUCoreScan *)self _reportPSUSDetermineFinishedEvent:error duration:v13];
  [(SUCoreScan *)self setPsusPrimaryDescriptor:0];
  [(SUCoreScan *)self setPsusSecondaryDescriptor:0];
  scanFSM2 = [(SUCoreScan *)self scanFSM];
  [scanFSM2 followupEvent:@"DecideNextScanStep"];

  return v8;
}

- (unint64_t)actionScanComplete:(id *)complete
{
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(SUCoreScan *)self operation]!= 1)
  {
    scanFSM2 = [(SUCoreScan *)self scanFSM];
    diag = [scanFSM2 diag];
    checkCompletion = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ invalid operation (%d) detected", self, -[SUCoreScan operation](self, "operation")];
    v13 = 8117;
    [diag trackAnomaly:@"[SCAN] COMPLETE" forReason:checkCompletion withResult:8117 withError:0];
    goto LABEL_12;
  }

  scanFSM2 = [(SUCoreScan *)self interimScanResult];
  diag = [(SUCoreScan *)self scanPolicy];
  if ([(SUCoreScan *)self operationSPIType]== 1)
  {
    checkCompletion = [(SUCoreScan *)self checkCompletion];
    [(SUCoreScan *)self setCheckCompletion:0];
    scanPolicy = [(SUCoreScan *)self scanPolicy];
    descriptor = [scanFSM2 descriptor];
    fallbackDescriptor = [scanFSM2 fallbackDescriptor];
    error = [scanFSM2 error];
    [(SUCoreScan *)self _checkEndComplete:checkCompletion scanPolicy:scanPolicy primary:descriptor secondary:fallbackDescriptor error:error clearingTransaction:1];
  }

  else
  {
    if ([(SUCoreScan *)self operationSPIType]== 2)
    {
      checkCompletion = [(SUCoreScan *)self checkMajorMinorCompletion];
      [(SUCoreScan *)self setCheckMajorMinorCompletion:0];
      scanPolicy = [scanFSM2 majorPrimaryDescriptor];
      descriptor = [scanFSM2 majorSecondaryDescriptor];
      fallbackDescriptor = [scanFSM2 minorPrimaryDescriptor];
      error = [scanFSM2 minorSecondaryDescriptor];
      error2 = [scanFSM2 error];
      LOBYTE(v16) = 1;
      [(SUCoreScan *)self _checkMajorMinorEndComplete:checkCompletion scanPolicy:diag majorPrimary:scanPolicy majorSecondary:descriptor minorPrimary:fallbackDescriptor minorSecondary:error error:error2 clearingTransaction:v16];
    }

    else
    {
      if ([(SUCoreScan *)self operationSPIType]!= 3)
      {
        checkCompletion = [(SUCoreScan *)self scanFSM];
        scanPolicy = [checkCompletion diag];
        descriptor = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ unknown operationSPIType (%d) found", self, -[SUCoreScan operationSPIType](self, "operationSPIType")];
        v13 = 8117;
        [scanPolicy trackAnomaly:@"[SCAN] COMPLETE" forReason:descriptor withResult:8117 withError:0];
        goto LABEL_11;
      }

      checkCompletion = [(SUCoreScan *)self checkSlowReleaseCompletion];
      [(SUCoreScan *)self setCheckSlowReleaseCompletion:0];
      scanPolicy = [scanFSM2 majorPrimaryDescriptor];
      descriptor = [scanFSM2 majorSecondaryDescriptor];
      fallbackDescriptor = [scanFSM2 minorPrimaryDescriptor];
      error = [scanFSM2 minorSecondaryDescriptor];
      error2 = [scanFSM2 error];
      LOBYTE(v16) = 1;
      [(SUCoreScan *)self _checkSlowReleaseEndComplete:checkCompletion scanPolicy:diag primary:scanPolicy secondary:descriptor alternatePrimary:fallbackDescriptor alternateSecondary:error error:error2 clearingTransaction:v16];
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

- (unint64_t)actionDecideNextScanStep:(id *)step
{
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUCoreScan *)self setPhase:[(SUCoreScan *)self _getPhaseAndPostEventAfterReachingScanPhase:[(SUCoreScan *)self phase]]];
  return 0;
}

- (int64_t)actionDownloadDocCatalog:(id *)catalog
{
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  scanPolicy = [(SUCoreScan *)self scanPolicy];
  documentationAssetType = [scanPolicy documentationAssetType];
  v8 = [(SUCoreScan *)self _downloadCatalog:documentationAssetType withIdentifier:@"doc"];

  return v8;
}

- (int64_t)actionQueryDocMetadata:(id *)metadata
{
  v44 = *MEMORY[0x277D85DE8];
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v6 = [(SUCoreScan *)self _decrementMobileAssetPending:@"DownloadDocCatalog"];
  scanPolicy = [(SUCoreScan *)self scanPolicy];
  mobileAssetPurposeOverride = [scanPolicy mobileAssetPurposeOverride];

  if (mobileAssetPurposeOverride)
  {
    scanPolicy2 = [(SUCoreScan *)self scanPolicy];
    mobileAssetPurposeOverride2 = [scanPolicy2 mobileAssetPurposeOverride];

    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v42 = 2114;
      v43 = mobileAssetPurposeOverride2;
      v13 = "%{public}@ doc metadata query using mobileAssetPurposeOverride as purpose: %{public}@";
LABEL_10:
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, v13, buf, 0x16u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  activeDescriptor = [(SUCoreScan *)self activeDescriptor];
  assetAudienceUUID = [activeDescriptor assetAudienceUUID];

  if (assetAudienceUUID)
  {
    activeDescriptor2 = [(SUCoreScan *)self activeDescriptor];
    mobileAssetPurposeOverride2 = [activeDescriptor2 assetAudienceUUID];

    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v42 = 2114;
      v43 = mobileAssetPurposeOverride2;
      v13 = "%{public}@ doc metadata query using activeDescriptor assetAudienceUUID as purpose: %{public}@";
      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

  scanPolicy3 = [(SUCoreScan *)self scanPolicy];
  assetAudienceUUID2 = [scanPolicy3 assetAudienceUUID];

  if (assetAudienceUUID2)
  {
    scanPolicy4 = [(SUCoreScan *)self scanPolicy];
    mobileAssetPurposeOverride2 = [scanPolicy4 assetAudienceUUID];

    mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460]3 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v42 = 2114;
      v43 = mobileAssetPurposeOverride2;
      v13 = "%{public}@ doc metadata query using scan policy assetAudienceUUID as purpose: %{public}@";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  mobileAssetPurposeOverride2 = 0;
LABEL_12:
  scanPolicy5 = [(SUCoreScan *)self scanPolicy];
  activeDescriptor3 = [(SUCoreScan *)self activeDescriptor];
  documentationID = [activeDescriptor3 documentationID];
  v25 = [scanPolicy5 constructDocumentationMAAssetQueryWithDocID:documentationID purpose:mobileAssetPurposeOverride2];

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
    activeDescriptor4 = [(SUCoreScan *)self activeDescriptor];
    documentationID2 = [activeDescriptor4 documentationID];
    scanPolicy6 = [(SUCoreScan *)self scanPolicy];
    summary = [scanPolicy6 summary];
    v31 = [v26 initWithFormat:@"failed to construct doc asset query for docID[%@] from policy[%@]", documentationID2, summary];

    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v6 = 8100;
    v33 = [mEMORY[0x277D643F8] buildError:8100 underlying:0 description:v31];

    scanFSM2 = [(SUCoreScan *)self scanFSM];
    v35 = [[SUCoreScanParam alloc] initWithResult:8100 withError:v33];
    [scanFSM2 postEvent:@"QueryMetadataFailed" withInfo:v35];
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

- (int64_t)actionDownloadDocAsset:(id *)asset
{
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v6 = [(SUCoreScan *)self _decrementMobileAssetPending:@"DownloadDocAsset"];
  [(SUCoreScan *)self _incrementMobileAssetPending:@"DownloadDocAsset"];
  v7 = [SUCoreMobileAsset alloc];
  activeDescriptor = [(SUCoreScan *)self activeDescriptor];
  documentationAsset = [activeDescriptor documentationAsset];
  scanUUID = [(SUCoreScan *)self scanUUID];
  v11 = [(SUCoreMobileAsset *)v7 initWithDelegate:0 forAsset:documentationAsset updateUUID:scanUUID];
  [(SUCoreScan *)self setMaDocumentationControl:v11];

  maDocumentationControl = [(SUCoreScan *)self maDocumentationControl];

  if (maDocumentationControl)
  {
    maDocumentationControl2 = [(SUCoreScan *)self maDocumentationControl];
    scanPolicy = [(SUCoreScan *)self scanPolicy];
    scanUUID2 = [(SUCoreScan *)self scanUUID];
    activeDescriptor2 = [(SUCoreScan *)self activeDescriptor];
    productBuildVersion = [activeDescriptor2 productBuildVersion];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __37__SUCoreScan_actionDownloadDocAsset___block_invoke;
    v23[3] = &unk_27892D228;
    v23[4] = self;
    [maDocumentationControl2 downloadDocumentationAssetWithPolicy:scanPolicy withUUID:scanUUID2 stashingDocumentationForBuild:productBuildVersion completion:v23];
  }

  else
  {
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v6 = 8100;
    v19 = [mEMORY[0x277D643F8] buildError:8100 underlying:0 description:@"failed to allocate MA documentation control"];

    scanFSM2 = [(SUCoreScan *)self scanFSM];
    v21 = [[SUCoreScanParam alloc] initWithResult:8100 withError:v19];
    [scanFSM2 postEvent:@"DocDownloadFailed" withInfo:v21];
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

- (int64_t)actionAlterDocDownloadConfig:(id *)config
{
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  maDocumentationControl = [(SUCoreScan *)self maDocumentationControl];

  if (maDocumentationControl)
  {
    scanFSM2 = objc_alloc_init(MEMORY[0x277D28A00]);
    scanPolicy = [(SUCoreScan *)self scanPolicy];
    documentationDownloadPolicy = [scanPolicy documentationDownloadPolicy];
    [scanFSM2 setDiscretionary:{objc_msgSend(documentationDownloadPolicy, "discretionary")}];

    maDocumentationControl2 = [(SUCoreScan *)self maDocumentationControl];
    [maDocumentationControl2 alterDownloadOptions:scanFSM2];
    v11 = 0;
  }

  else
  {
    scanFSM2 = [(SUCoreScan *)self scanFSM];
    maDocumentationControl2 = [scanFSM2 diag];
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ alter documentation download configuration when not downloading", self];
    v11 = 8116;
    [maDocumentationControl2 trackAnomaly:@"[SCAN] ALTER" forReason:v12 withResult:8116 withError:0];
  }

  return v11;
}

- (int64_t)actionRemoveDocAsset:(id *)asset
{
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUCoreScan *)self _incrementMobileAssetPending:@"RemoveDocAsset"];
  maDocumentationControl = [(SUCoreScan *)self maDocumentationControl];

  if (maDocumentationControl)
  {
    maDocumentationControl2 = [(SUCoreScan *)self maDocumentationControl];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __35__SUCoreScan_actionRemoveDocAsset___block_invoke;
    v10[3] = &unk_27892D228;
    v10[4] = self;
    [maDocumentationControl2 removeAsset:v10];

    return 0;
  }

  else
  {
    scanFSM2 = [(SUCoreScan *)self scanFSM];
    [scanFSM2 postEvent:@"DocRemoveFailed"];

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

- (int64_t)actionScanCompleteNoUpdate:(id *)update
{
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUCoreScan *)self _decrementMobileAssetPending:@"ScanCompleteNoUpdate"];
  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  v7 = [mEMORY[0x277D643F8] buildError:8406 underlying:0 description:@"no update found"];

  LOBYTE(v9) = 1;
  [(SUCoreScan *)self _scanCompleteFoundPrimary:0 foundSecondary:0 majorPrimary:0 majorSecondary:0 minorPrimary:0 minorSecondary:0 clearingOperation:v9 error:v7];

  return 0;
}

- (int64_t)actionScanSuccess:(id)success error:(id *)error
{
  v67 = *MEMORY[0x277D85DE8];
  successCopy = success;
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v8 = [(SUCoreScan *)self _decrementMobileAssetPending:@"ScanSuccess"];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  selfCopy = self;
  operation = [(SUCoreScan *)self operation];
  if (operation > 2)
  {
    if (operation == 3)
    {
      v54 = v8;
      mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
      oslog = [mEMORY[0x277D64460] oslog];

      if (!os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      descriptor = [successCopy descriptor];
      summary = [descriptor summary];
      descriptor2 = [successCopy descriptor];
      documentation = [descriptor2 documentation];
      summary2 = [documentation summary];
      *buf = 138543874;
      selfCopy8 = self;
      v63 = 2114;
      v64 = summary;
      v65 = 2114;
      v66 = summary2;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ collected descriptor:%{public}@ doc metadata:%{public}@", buf, 0x20u);
    }

    else
    {
      if (operation != 4)
      {
        goto LABEL_11;
      }

      v54 = v8;
      secondaryUpdateAsset = [(SUCoreScan *)self secondaryUpdateAsset];

      mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
      oslog = [mEMORY[0x277D64460]2 oslog];

      v20 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
      if (secondaryUpdateAsset)
      {
        if (!v20)
        {
          goto LABEL_26;
        }

        summary = [(SUCoreScan *)self primaryUpdateAsset];
        assetId = [summary assetId];
        secondaryUpdateAsset2 = [(SUCoreScan *)self secondaryUpdateAsset];
        assetId2 = [secondaryUpdateAsset2 assetId];
        *buf = 138543874;
        selfCopy8 = self;
        v63 = 2114;
        v64 = assetId;
        v65 = 2114;
        v66 = assetId2;
        _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ found primary update asset ID:%{public}@ with secondary update asset ID:%{public}@", buf, 0x20u);
      }

      else
      {
        if (!v20)
        {
          goto LABEL_26;
        }

        summary = [(SUCoreScan *)self primaryUpdateAsset];
        assetId = [summary assetId];
        *buf = 138543618;
        selfCopy8 = self;
        v63 = 2114;
        v64 = assetId;
        _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ found update asset ID:%{public}@", buf, 0x16u);
      }
    }

LABEL_25:

    goto LABEL_26;
  }

  if (operation != 1)
  {
    if (operation == 2)
    {
      v54 = v8;
      mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
      oslog = [mEMORY[0x277D64460]3 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        descriptor3 = [successCopy descriptor];
        summary = [descriptor3 summary];
        descriptor4 = [successCopy descriptor];
        v16 = [descriptor4 overviewWithMaxValueLength:96 providingSubstitutionMap:v9];
        *buf = 138543874;
        selfCopy8 = self;
        v63 = 2114;
        v64 = summary;
        v65 = 2114;
        v66 = v16;
        v17 = "%{public}@ verified active descriptor:%{public}@\n%{public}@";
LABEL_24:
        _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, v17, buf, 0x20u);

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
  fallbackDescriptor = [successCopy fallbackDescriptor];

  mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460]4 oslog];

  v26 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
  if (fallbackDescriptor)
  {
    if (v26)
    {
      descriptor5 = [successCopy descriptor];
      summary3 = [descriptor5 summary];
      descriptor6 = [successCopy descriptor];
      v30 = [descriptor6 overviewWithMaxValueLength:96 providingSubstitutionMap:v9];
      *buf = 138543874;
      selfCopy8 = self;
      v63 = 2114;
      v64 = summary3;
      v65 = 2114;
      v66 = v30;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ found primary descriptor:%{public}@\n%{public}@", buf, 0x20u);
    }

    mEMORY[0x277D64460]5 = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460]5 oslog];

    if (!os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    descriptor3 = [successCopy fallbackDescriptor];
    summary = [descriptor3 summary];
    descriptor4 = [successCopy fallbackDescriptor];
    v16 = [descriptor4 overviewWithMaxValueLength:96 providingSubstitutionMap:v9];
    *buf = 138543874;
    selfCopy8 = self;
    v63 = 2114;
    v64 = summary;
    v65 = 2114;
    v66 = v16;
    v17 = "%{public}@ with fallback descriptor:%{public}@\n%{public}@";
    goto LABEL_24;
  }

  if (v26)
  {
    descriptor3 = [successCopy descriptor];
    summary = [descriptor3 summary];
    descriptor4 = [successCopy descriptor];
    v16 = [descriptor4 overviewWithMaxValueLength:96 providingSubstitutionMap:v9];
    *buf = 138543874;
    selfCopy8 = self;
    v63 = 2114;
    v64 = summary;
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
        mEMORY[0x277D64460]6 = [MEMORY[0x277D64460] sharedLogger];
        oslog2 = [mEMORY[0x277D64460]6 oslog];

        if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy8 = selfCopy;
          v63 = 2114;
          v64 = v42;
          _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v39);
  }

  descriptor7 = [successCopy descriptor];
  fallbackDescriptor2 = [successCopy fallbackDescriptor];
  majorPrimaryDescriptor = [successCopy majorPrimaryDescriptor];
  majorSecondaryDescriptor = [successCopy majorSecondaryDescriptor];
  minorPrimaryDescriptor = [successCopy minorPrimaryDescriptor];
  minorSecondaryDescriptor = [successCopy minorSecondaryDescriptor];
  LOBYTE(v53) = 1;
  [(SUCoreScan *)selfCopy _scanCompleteFoundPrimary:descriptor7 foundSecondary:fallbackDescriptor2 majorPrimary:majorPrimaryDescriptor majorSecondary:majorSecondaryDescriptor minorPrimary:minorPrimaryDescriptor minorSecondary:minorSecondaryDescriptor clearingOperation:v53 error:0];

  v51 = *MEMORY[0x277D85DE8];
  return v54;
}

- (int64_t)actionScanFailed:(id)failed error:(id *)error
{
  failedCopy = failed;
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUCoreScan *)self _decrementMobileAssetPending:@"ScanFailed"];
  error = [failedCopy error];
  if (!error)
  {
    resultCode = [failedCopy resultCode];
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    if (resultCode)
    {
      resultCode2 = [failedCopy resultCode];
    }

    else
    {
      resultCode2 = 8402;
    }

    error = [mEMORY[0x277D643F8] buildError:resultCode2 underlying:0 description:@"scan failed"];
  }

  LOBYTE(v13) = 1;
  [(SUCoreScan *)self _scanCompleteFoundPrimary:0 foundSecondary:0 majorPrimary:0 majorSecondary:0 minorPrimary:0 minorSecondary:0 clearingOperation:v13 error:error];

  return 0;
}

- (int64_t)actionCancelPSUSAssetsDetermination:(id *)determination
{
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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

- (int64_t)actionCancelSUCatalogDownload:(id *)download
{
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUCoreScan *)self _incrementMobileAssetPending:@"CancelSUCatalogDownload"];
  [(SUCoreScan *)self _trackScanBegin:@"cancelCatalogDownload" withIdentifier:@"su"];
  v6 = MEMORY[0x277D289C0];
  scanPolicy = [(SUCoreScan *)self scanPolicy];
  softwareUpdateAssetType = [scanPolicy softwareUpdateAssetType];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__SUCoreScan_actionCancelSUCatalogDownload___block_invoke;
  v10[3] = &unk_27892D250;
  v10[4] = self;
  [v6 SUCoreBorder_cancelCatalogDownload:softwareUpdateAssetType completionWithCancelResult:v10];

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

- (int64_t)actionCancelDocCatalogDownload:(id *)download
{
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUCoreScan *)self _incrementMobileAssetPending:@"CancelDocCatalogDownload"];
  [(SUCoreScan *)self _trackScanBegin:@"cancelCatalogDownload" withIdentifier:@"doc"];
  v6 = MEMORY[0x277D289C0];
  scanPolicy = [(SUCoreScan *)self scanPolicy];
  documentationAssetType = [scanPolicy documentationAssetType];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__SUCoreScan_actionCancelDocCatalogDownload___block_invoke;
  v10[3] = &unk_27892D250;
  v10[4] = self;
  [v6 SUCoreBorder_cancelCatalogDownload:documentationAssetType completionWithCancelResult:v10];

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

- (int64_t)actionCancelSuccess:(id *)success
{
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v6 = [(SUCoreScan *)self _decrementMobileAssetPending:@"CancelSuccess"];
  if ([(SUCoreScan *)self cancelingOperation])
  {
    [(SUCoreScan *)self _cancelCompleteWithError:0];
  }

  else
  {
    scanFSM2 = [(SUCoreScan *)self scanFSM];
    diag = [scanFSM2 diag];
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ cancel success when not canceling", self];
    v6 = 8405;
    [diag trackAnomaly:@"[SCAN] CANCEL" forReason:v9 withResult:8405 withError:0];
  }

  return v6;
}

- (int64_t)actionAfterAvailCancelSuccess:(id)success error:(id *)error
{
  v5 = [(SUCoreScan *)self scanFSM:success];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v7 = [(SUCoreScan *)self _decrementMobileAssetPending:@"AfterAvailCancelSuccess"];
  if ([(SUCoreScan *)self cancelingOperation])
  {
    [(SUCoreScan *)self _cancelCompleteWithError:0];
  }

  else
  {
    scanFSM = [(SUCoreScan *)self scanFSM];
    diag = [scanFSM diag];
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ cancel (after update availabvle) when not canceling", self];
    v7 = 8405;
    [diag trackAnomaly:@"[SCAN] CANCEL" forReason:v10 withResult:8405 withError:0];
  }

  return v7;
}

- (int64_t)actionAfterFailCancelSuccess:(id)success error:(id *)error
{
  v5 = [(SUCoreScan *)self scanFSM:success];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v7 = [(SUCoreScan *)self _decrementMobileAssetPending:@"AfterFailCancelSuccess"];
  if ([(SUCoreScan *)self cancelingOperation])
  {
    [(SUCoreScan *)self _cancelCompleteWithError:0];
  }

  else
  {
    scanFSM = [(SUCoreScan *)self scanFSM];
    diag = [scanFSM diag];
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ cancel (after fail) when not canceling", self];
    v7 = 8405;
    [diag trackAnomaly:@"[SCAN] CANCEL" forReason:v10 withResult:8405 withError:0];
  }

  return v7;
}

- (int64_t)actionCancelRemoveFailed:(id)failed error:(id *)error
{
  failedCopy = failed;
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v8 = [(SUCoreScan *)self _decrementMobileAssetPending:@"CancelRemoveFailed"];
  if ([(SUCoreScan *)self cancelingOperation])
  {
    error = [failedCopy error];
    [(SUCoreScan *)self _cancelCompleteWithError:error];
  }

  else
  {
    error = [(SUCoreScan *)self scanFSM];
    diag = [error diag];
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ cancel (after remove fail) when not canceling", self];
    resultCode = [failedCopy resultCode];
    error2 = [failedCopy error];
    [diag trackAnomaly:@"[SCAN] CANCEL" forReason:v11 withResult:resultCode withError:error2];

    v8 = 8405;
  }

  return v8;
}

- (int64_t)actionCheckCancelDone:(id *)done
{
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v6 = [(SUCoreScan *)self _decrementMobileAssetPending:@"CheckCancelDone"];
  if (![(SUCoreScan *)self pendingMobileAssetRequests])
  {
    scanFSM2 = [(SUCoreScan *)self scanFSM];
    [scanFSM2 followupEvent:@"CancelComplete"];
  }

  return v6;
}

- (int64_t)actionAfterFailCheckCancelDone:(id)done error:(id *)error
{
  v5 = [(SUCoreScan *)self scanFSM:done];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v7 = [(SUCoreScan *)self _decrementMobileAssetPending:@"AfterFailCheckCancelDone"];
  if (![(SUCoreScan *)self pendingMobileAssetRequests])
  {
    scanFSM = [(SUCoreScan *)self scanFSM];
    [scanFSM followupEvent:@"CancelComplete"];
  }

  return v7;
}

- (int64_t)actionCancelDone:(id *)done
{
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(SUCoreScan *)self cancelingOperation])
  {
    [(SUCoreScan *)self _cancelCompleteWithError:0];
    return 0;
  }

  else
  {
    scanFSM2 = [(SUCoreScan *)self scanFSM];
    diag = [scanFSM2 diag];
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ cancel done when not canceling", self];
    v6 = 8405;
    [diag trackAnomaly:@"[SCAN] CANCEL" forReason:v9 withResult:8405 withError:0];
  }

  return v6;
}

- (int64_t)actionUnknownAction:(id)action error:(id *)error
{
  actionCopy = action;
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  scanFSM2 = [(SUCoreScan *)self scanFSM];
  diag = [scanFSM2 diag];
  actionCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ unknown action(%@)", self, actionCopy];

  [diag dumpTracked:actionCopy dumpingTo:5 usingFilename:0 clearingStatistics:0 clearingHistory:0];
  return 8102;
}

- (int64_t)a_SimCatalogDownloadSuccess:(id *)success
{
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  scanFSM2 = [(SUCoreScan *)self scanFSM];
  [scanFSM2 postEvent:@"CatalogDownloadSuccess"];

  return 0;
}

- (int64_t)a_SimQueryMetadataUpdateAvailable:(id *)available
{
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v6 = objc_alloc(MEMORY[0x277D289C0]);
  _simDescriptorAttributes = [(SUCoreScan *)self _simDescriptorAttributes];
  v8 = [v6 initWithAttributes:_simDescriptorAttributes];

  v9 = [[SUCoreDescriptor alloc] initWithSUAsset:v8 releaseDate:@"2018-10-22" defaultValues:0];
  scanFSM2 = [(SUCoreScan *)self scanFSM];
  v11 = [[SUCoreScanParam alloc] initWithDescriptor:v9 withFallbackDescriptor:0];
  [scanFSM2 postEvent:@"QueryMetadataUpdateAvailable" withInfo:v11];

  return 0;
}

- (SUCoreScan)initWithUUID:(id)d withCompletionQueue:(id)queue
{
  dCopy = d;
  queueCopy = queue;
  v39.receiver = self;
  v39.super_class = SUCoreScan;
  v9 = [(SUCoreScan *)&v39 init];
  if (v9)
  {
    v10 = +[SUCoreScan _generateStateTable];
    v11 = [objc_alloc(MEMORY[0x277D64458]) initMachine:@"scan" ofInstance:dCopy withTable:v10 startingIn:@"Idle"];
    scanFSM = v9->_scanFSM;
    v9->_scanFSM = v11;

    if (!v9->_scanFSM)
    {

      v35 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v9->_scanUUID, d);
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v14 = [mEMORY[0x277D643F8] selectCompletionQueue:queueCopy];
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
    scanFSM = [(SUCoreScan *)v33 scanFSM];
    [scanFSM activateMachine];
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

- (void)checkForAvailableUpdateWithPolicy:(id)policy completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  completionCopy = completion;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v23 = 2080;
    v24 = "[SUCoreScan checkForAvailableUpdateWithPolicy:completion:]";
    v25 = 2114;
    v26 = policyCopy;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ %s is called with policy:%{public}@", buf, 0x20u);
  }

  v10 = [MEMORY[0x277D643F8] beginTransactionWithName:@"scan.CheckForAvailableUpdate"];
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__SUCoreScan_checkForAvailableUpdateWithPolicy_completion___block_invoke;
  v17[3] = &unk_27892D2C8;
  v17[4] = self;
  v18 = policyCopy;
  v19 = v10;
  v20 = completionCopy;
  v13 = v10;
  v14 = policyCopy;
  v15 = completionCopy;
  dispatch_async(extendedStateQueue, v17);

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

- (void)checkForAvailableMajorMinorUpdatesWithPolicy:(id)policy completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  completionCopy = completion;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v23 = 2080;
    v24 = "[SUCoreScan checkForAvailableMajorMinorUpdatesWithPolicy:completion:]";
    v25 = 2114;
    v26 = policyCopy;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ %s is called with policy:%{public}@", buf, 0x20u);
  }

  v10 = [MEMORY[0x277D643F8] beginTransactionWithName:@"scan.CheckForAvailableUpdate"];
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__SUCoreScan_checkForAvailableMajorMinorUpdatesWithPolicy_completion___block_invoke;
  v17[3] = &unk_27892D2C8;
  v17[4] = self;
  v18 = policyCopy;
  v19 = v10;
  v20 = completionCopy;
  v13 = v10;
  v14 = policyCopy;
  v15 = completionCopy;
  dispatch_async(extendedStateQueue, v17);

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

- (void)checkForAvailableSlowReleaseUpdatesWithPolicy:(id)policy completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  completionCopy = completion;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v23 = 2080;
    v24 = "[SUCoreScan checkForAvailableSlowReleaseUpdatesWithPolicy:completion:]";
    v25 = 2114;
    v26 = policyCopy;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ %s is called with policy:%{public}@", buf, 0x20u);
  }

  v10 = [MEMORY[0x277D643F8] beginTransactionWithName:@"scan.CheckForAvailableUpdate"];
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__SUCoreScan_checkForAvailableSlowReleaseUpdatesWithPolicy_completion___block_invoke;
  v17[3] = &unk_27892D2C8;
  v17[4] = self;
  v18 = policyCopy;
  v19 = v10;
  v20 = completionCopy;
  v13 = v10;
  v14 = policyCopy;
  v15 = completionCopy;
  dispatch_async(extendedStateQueue, v17);

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

- (void)verifyLatestAvailableWithPolicy:(id)policy descriptor:(id)descriptor completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  descriptorCopy = descriptor;
  completionCopy = completion;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v28 = 2080;
    v29 = "[SUCoreScan verifyLatestAvailableWithPolicy:descriptor:completion:]";
    v30 = 2114;
    v31 = policyCopy;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ %s is called with policy:%{public}@", buf, 0x20u);
  }

  v13 = [MEMORY[0x277D643F8] beginTransactionWithName:@"scan.VerifyLatestAvailable"];
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SUCoreScan_verifyLatestAvailableWithPolicy_descriptor_completion___block_invoke;
  block[3] = &unk_27892D2F0;
  v24 = v13;
  v25 = completionCopy;
  block[4] = self;
  v22 = policyCopy;
  v23 = descriptorCopy;
  v16 = v13;
  v17 = descriptorCopy;
  v18 = policyCopy;
  v19 = completionCopy;
  dispatch_async(extendedStateQueue, block);

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

- (void)collectDocumentationMetadataWithPolicy:(id)policy descriptor:(id)descriptor downloadDocumentation:(BOOL)documentation completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  descriptorCopy = descriptor;
  completionCopy = completion;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v31 = 2080;
    v32 = "[SUCoreScan collectDocumentationMetadataWithPolicy:descriptor:downloadDocumentation:completion:]";
    v33 = 2114;
    v34 = policyCopy;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ %s is called with policy:%{public}@", buf, 0x20u);
  }

  v15 = [MEMORY[0x277D643F8] beginTransactionWithName:@"scan.CollectDocumentationMetadata"];
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __97__SUCoreScan_collectDocumentationMetadataWithPolicy_descriptor_downloadDocumentation_completion___block_invoke;
  v23[3] = &unk_27892D318;
  v26 = v15;
  v27 = completionCopy;
  v23[4] = self;
  v24 = policyCopy;
  v25 = descriptorCopy;
  documentationCopy = documentation;
  v18 = v15;
  v19 = descriptorCopy;
  v20 = policyCopy;
  v21 = completionCopy;
  dispatch_async(extendedStateQueue, v23);

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

- (void)locateAvailableUpdateWithPolicy:(id)policy completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  completionCopy = completion;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v23 = 2080;
    v24 = "[SUCoreScan locateAvailableUpdateWithPolicy:completion:]";
    v25 = 2114;
    v26 = policyCopy;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ %s is called with policy:%{public}@", buf, 0x20u);
  }

  v10 = [MEMORY[0x277D643F8] beginTransactionWithName:@"scan.LocateAvailableUpdate"];
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__SUCoreScan_locateAvailableUpdateWithPolicy_completion___block_invoke;
  v17[3] = &unk_27892D2C8;
  v17[4] = self;
  v18 = policyCopy;
  v19 = v10;
  v20 = completionCopy;
  v13 = v10;
  v14 = policyCopy;
  v15 = completionCopy;
  dispatch_async(extendedStateQueue, v17);

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

- (void)alterCurrentPolicy:(id)policy
{
  v22 = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v18 = 2080;
    v19 = "[SUCoreScan alterCurrentPolicy:]";
    v20 = 2114;
    v21 = policyCopy;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ %s is called with policy:%{public}@", buf, 0x20u);
  }

  v7 = [MEMORY[0x277D643F8] beginTransactionWithName:@"scan.AlterCurrentPolicy"];
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SUCoreScan_alterCurrentPolicy___block_invoke;
  block[3] = &unk_27892D340;
  block[4] = self;
  v14 = policyCopy;
  v15 = v7;
  v10 = v7;
  v11 = policyCopy;
  dispatch_async(extendedStateQueue, block);

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

- (void)cancelCurrentScan:(id)scan
{
  scanCopy = scan;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"scan.CancelCurrentScan"];
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__SUCoreScan_cancelCurrentScan___block_invoke;
  block[3] = &unk_27892D368;
  v11 = v5;
  v12 = scanCopy;
  block[4] = self;
  v8 = v5;
  v9 = scanCopy;
  dispatch_async(extendedStateQueue, block);
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

- (void)_updateInterimScanResultForSlowReleaseWithPrimary:(id)primary secondary:(id)secondary error:(id)error
{
  v113 = *MEMORY[0x277D85DE8];
  primaryCopy = primary;
  secondaryCopy = secondary;
  errorCopy = error;
  if ([(SUCoreScan *)self operationSPIType]!= 3)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ invalid operationSPIType (%d) found", self, -[SUCoreScan operationSPIType](self, "operationSPIType")];
    v33 = LABEL_20:;
    [(SUCoreScan *)self _trackInconsistentAnomalyAndUpdateInterimResult:@"[SCAN] UPDATE_INTERIM_SLOWROLL" reason:v33];

    goto LABEL_106;
  }

  interimScanResult = [(SUCoreScan *)self interimScanResult];

  if (!interimScanResult)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ unexpected no previous scan result for slow release scan", self, v85];
    goto LABEL_20;
  }

  v91 = errorCopy;
  interimScanResult2 = [(SUCoreScan *)self interimScanResult];
  majorPrimaryDescriptor = [interimScanResult2 majorPrimaryDescriptor];

  interimScanResult3 = [(SUCoreScan *)self interimScanResult];
  majorSecondaryDescriptor = [interimScanResult3 majorSecondaryDescriptor];

  v92 = primaryCopy;
  v94 = secondaryCopy;
  if (v92 && !majorPrimaryDescriptor)
  {
    goto LABEL_5;
  }

  v15 = 2;
  v16 = 1;
  if (v92 && majorPrimaryDescriptor)
  {
    if ([(SUCoreScanParam *)majorPrimaryDescriptor promoteAlternateUpdate])
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
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v19 = errorCopy;
    v20 = @"YES";
    v88 = v19;
    if (majorPrimaryDescriptor)
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
    selfCopy9 = self;
    v105 = 2112;
    v106 = v96;
    v107 = 2114;
    v108 = v22;
    v109 = 2112;
    v110 = v20;
    errorCopy = v88;
    v111 = 2114;
    v112 = v23;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] assigning to descriptors (Default) promotedPrimary=%@ primaryPreferredType=%{public}@ and (Alternate) promotedAlternatePrimary=%@ alternatePreferredType=%{public}@", buf, 0x34u);
  }

  [(SUCoreScanParam *)majorPrimaryDescriptor assignDescriptorAudienceType:1 descriptorPreferredUpdateType:v15 assetAudienceUUID:0];
  [(SUCoreScanParam *)majorSecondaryDescriptor assignDescriptorAudienceType:1 descriptorPreferredUpdateType:v15 assetAudienceUUID:0];
  alternateAssetAudienceUUID = [(SUCoreScan *)self alternateAssetAudienceUUID];
  [(SUCoreScanParam *)v92 assignDescriptorAudienceType:2 descriptorPreferredUpdateType:v16 assetAudienceUUID:alternateAssetAudienceUUID];

  alternateAssetAudienceUUID2 = [(SUCoreScan *)self alternateAssetAudienceUUID];
  [(SUCoreScanParam *)v94 assignDescriptorAudienceType:2 descriptorPreferredUpdateType:v16 assetAudienceUUID:alternateAssetAudienceUUID2];

  v26 = v91;
  domain = [v91 domain];
  if ([domain isEqualToString:*MEMORY[0x277D646E8]])
  {
    code = [v91 code];

    v29 = v92;
    v30 = 0x277D64000uLL;
    if (code != 8406)
    {
      goto LABEL_27;
    }

    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog2 = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
    {
      [SUCoreScan _updateInterimScanResultForSlowReleaseWithPrimary:secondary:error:];
    }

    v29 = 0;
    v26 = 0;
    domain = v94;
    v94 = 0;
  }

  else
  {
    v29 = v92;
    v30 = 0x277D64000;
  }

LABEL_27:
  scanPolicy = [(SUCoreScan *)self scanPolicy];
  isSupervisedPolicy = [scanPolicy isSupervisedPolicy];

  if (!isSupervisedPolicy)
  {
    goto LABEL_76;
  }

  v90 = v26;
  v86 = secondaryCopy;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  selfCopy2 = self;
  scanPolicy2 = [(SUCoreScan *)self scanPolicy];
  policyExtensions = [scanPolicy2 policyExtensions];

  v38 = [(SUCoreScanParam *)policyExtensions countByEnumeratingWithState:&v98 objects:v102 count:16];
  if (!v38)
  {
    goto LABEL_60;
  }

  v39 = v38;
  v93 = v29;
  v87 = majorSecondaryDescriptor;
  v89 = errorCopy;
  mdmSoftwareUpdatePath = 0;
  v41 = 0;
  v42 = *v99;
  do
  {
    for (i = 0; i != v39; ++i)
    {
      if (*v99 != v42)
      {
        objc_enumerationMutation(policyExtensions);
      }

      v44 = *(*(&v98 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        requestedPMV = [v44 requestedPMV];

        mdmSoftwareUpdatePath = [v44 mdmSoftwareUpdatePath];
        mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
        oslog3 = [mEMORY[0x277D64460]3 oslog];

        if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
        {
          v48 = [SUCorePolicyExtensionManagedUpdates nameForMDMSoftwareUpdatePath:mdmSoftwareUpdatePath];
          *buf = 138543874;
          selfCopy9 = selfCopy2;
          v105 = 2112;
          v106 = v48;
          v107 = 2048;
          v108 = mdmSoftwareUpdatePath;
          _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] Found SUCorePolicyExtensionManagedUpdates with mdmSoftwareUpdatePath: %@ (%ld)", buf, 0x20u);
        }

        v41 = requestedPMV;
      }
    }

    v39 = [(SUCoreScanParam *)policyExtensions countByEnumeratingWithState:&v98 objects:v102 count:16];
  }

  while (v39);

  if (majorPrimaryDescriptor)
  {
    v29 = v93;
    policyExtensions = v94;
    v93 = majorPrimaryDescriptor;
    secondaryCopy = v86;
    majorSecondaryDescriptor = v87;
  }

  else
  {
    secondaryCopy = v86;
    majorSecondaryDescriptor = v87;
    policyExtensions = v94;
    if (v93 && v41)
    {
      mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
      oslog4 = [mEMORY[0x277D64460]4 oslog];

      if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy9 = selfCopy2;
        _os_log_impl(&dword_23193C000, oslog4, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] MDM scan performed using a requested PMV with no primary update found, using alternate update instead", buf, 0xCu);
      }

      v51 = v94;
      policyExtensions = 0;
      v29 = 0;
      majorSecondaryDescriptor = v51;
    }

    else
    {
      v29 = v93;
      v93 = 0;
    }
  }

  if (mdmSoftwareUpdatePath == 1)
  {
    majorPrimaryDescriptor = v93;
    if (![(SUCoreScanParam *)v93 enableAlternateAssetAudience]|| v41)
    {
      v54 = v41;
    }

    else
    {
      mEMORY[0x277D64460]5 = [MEMORY[0x277D64460] sharedLogger];
      oslog5 = [mEMORY[0x277D64460]5 oslog];

      if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy9 = selfCopy2;
        _os_log_impl(&dword_23193C000, oslog5, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] MDM software update path indicates SUCoreMDMSoftwareUpdatePathSlow and primary update found with dual audiences enabled, dropping primary update", buf, 0xCu);
      }

      v54 = 0;
      majorSecondaryDescriptor = 0;
      majorPrimaryDescriptor = 0;
    }

    if (!v41 && v29)
    {
      mEMORY[0x277D64460]6 = [MEMORY[0x277D64460] sharedLogger];
      oslog6 = [mEMORY[0x277D64460]6 oslog];

      errorCopy = v89;
      if (os_log_type_enabled(oslog6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy9 = selfCopy2;
        _os_log_impl(&dword_23193C000, oslog6, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] MDM software update path indicates SUCoreMDMSoftwareUpdatePathSlow and alternate update found, using alternate update only", buf, 0xCu);
      }

      v59 = v29;
      mEMORY[0x277D643F8] = policyExtensions;

      policyExtensions = 0;
      majorSecondaryDescriptor = mEMORY[0x277D643F8];
      goto LABEL_74;
    }

    goto LABEL_69;
  }

  if (v41 || mdmSoftwareUpdatePath != 2)
  {
    v54 = v41;
    errorCopy = v89;
    majorPrimaryDescriptor = v93;
    goto LABEL_70;
  }

  majorPrimaryDescriptor = v93;
  if (v29)
  {
    mEMORY[0x277D64460]7 = [MEMORY[0x277D64460] sharedLogger];
    oslog7 = [mEMORY[0x277D64460]7 oslog];

    errorCopy = v89;
    if (os_log_type_enabled(oslog7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy9 = selfCopy2;
      _os_log_impl(&dword_23193C000, oslog7, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] MDM software update path indicates SUCoreMDMSoftwareUpdatePathFast and alternate update found, dropping alternate update", buf, 0xCu);
    }

    v94 = 0;
    v29 = 0;
LABEL_60:

    v54 = 0;
    policyExtensions = v94;
    goto LABEL_70;
  }

  v54 = 0;
LABEL_69:
  errorCopy = v89;
LABEL_70:
  if (v90 || v29 || majorPrimaryDescriptor)
  {
    goto LABEL_75;
  }

  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  v90 = [(SUCoreScanParam *)mEMORY[0x277D643F8] buildError:8406 underlying:v91 description:@"Supervised device MDM restrictions resulted in no update found"];
  v59 = 0;
LABEL_74:

  v29 = 0;
  majorPrimaryDescriptor = v59;
LABEL_75:

  v94 = policyExtensions;
  self = selfCopy2;
  v30 = 0x277D64000uLL;
  v26 = v90;
LABEL_76:
  if (v29 && majorPrimaryDescriptor && [(SUCoreScanParam *)majorPrimaryDescriptor isEqual:v29])
  {
    sharedLogger = [*(v30 + 1120) sharedLogger];
    oslog8 = [sharedLogger oslog];

    if (os_log_type_enabled(oslog8, OS_LOG_TYPE_DEFAULT))
    {
      promoteAlternateUpdate = [(SUCoreScanParam *)majorPrimaryDescriptor promoteAlternateUpdate];
      v64 = @"NO";
      if (promoteAlternateUpdate)
      {
        v64 = @"YES";
      }

      *buf = 138543618;
      selfCopy9 = self;
      v105 = 2114;
      v106 = v64;
      _os_log_impl(&dword_23193C000, oslog8, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] Primary update and alternate update descriptors are equal, not returning alternate update (promoteAlternateUpdate=%{public}@)", buf, 0x16u);
    }

    v65 = majorSecondaryDescriptor;

    if ([(SUCoreScanParam *)majorPrimaryDescriptor promoteAlternateUpdate])
    {
      v66 = v29;

      v67 = v94;
      v68 = v94;

      v65 = v68;
      majorPrimaryDescriptor = v66;
    }

    else
    {
      v67 = v94;
    }

    [(SUCoreScanParam *)majorPrimaryDescriptor promoteAlternateUpdate];
    v94 = 0;
    v29 = 0;
    majorSecondaryDescriptor = v65;
  }

  else
  {
    promoteAlternateUpdate2 = [(SUCoreScanParam *)majorPrimaryDescriptor promoteAlternateUpdate];
    if (v29 && promoteAlternateUpdate2)
    {
      sharedLogger2 = [*(v30 + 1120) sharedLogger];
      oslog9 = [sharedLogger2 oslog];

      if (os_log_type_enabled(oslog9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy9 = self;
        _os_log_impl(&dword_23193C000, oslog9, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] Primary descriptor indicates alternate updates should be promoted, swapping now", buf, 0xCu);
      }

      v72 = v29;
      v29 = majorPrimaryDescriptor;

      v73 = v94;
      v94 = majorSecondaryDescriptor;
      majorSecondaryDescriptor = v73;
      majorPrimaryDescriptor = v72;
    }
  }

  sharedLogger3 = [*(v30 + 1120) sharedLogger];
  oslog10 = [sharedLogger3 oslog];

  v76 = os_log_type_enabled(oslog10, OS_LOG_TYPE_DEFAULT);
  if (v26)
  {
    if (v76)
    {
      *buf = 138543362;
      selfCopy9 = self;
      _os_log_impl(&dword_23193C000, oslog10, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] An error was found while processing the scan for dual audience updates, not returning any updates", buf, 0xCu);
    }

    majorPrimaryDescriptor = -[SUCoreScanParam initWithResult:withError:]([SUCoreScanParam alloc], "initWithResult:withError:", [v26 code], v26);
    [(SUCoreScan *)self setInterimScanResult:majorPrimaryDescriptor];
  }

  else
  {
    if (v76)
    {
      *buf = 138543618;
      selfCopy9 = self;
      v105 = 2114;
      v106 = majorPrimaryDescriptor;
      _os_log_impl(&dword_23193C000, oslog10, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] promoted primary update: %{public}@", buf, 0x16u);
    }

    sharedLogger4 = [*(v30 + 1120) sharedLogger];
    oslog11 = [sharedLogger4 oslog];

    if (os_log_type_enabled(oslog11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy9 = self;
      v105 = 2114;
      v106 = majorSecondaryDescriptor;
      _os_log_impl(&dword_23193C000, oslog11, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] promoted secondary update: %{public}@", buf, 0x16u);
    }

    sharedLogger5 = [*(v30 + 1120) sharedLogger];
    oslog12 = [sharedLogger5 oslog];

    if (os_log_type_enabled(oslog12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy9 = self;
      v105 = 2114;
      v106 = v29;
      _os_log_impl(&dword_23193C000, oslog12, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] promoted alternate primary update: %{public}@", buf, 0x16u);
    }

    sharedLogger6 = [*(v30 + 1120) sharedLogger];
    oslog13 = [sharedLogger6 oslog];

    if (os_log_type_enabled(oslog13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy9 = self;
      v105 = 2114;
      v106 = v94;
      _os_log_impl(&dword_23193C000, oslog13, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] promoted alternate secondary update: %{public}@", buf, 0x16u);
    }

    v83 = [[SUCoreScanParam alloc] initWithMajorPrimaryDescriptor:majorPrimaryDescriptor majorSecondaryDescriptor:majorSecondaryDescriptor minorPrimaryDescriptor:v29 minorSecondaryDescriptor:v94];
    [(SUCoreScan *)self setInterimScanResult:v83];
  }

LABEL_106:
  v84 = *MEMORY[0x277D85DE8];
}

- (void)_updateInterimScanResultForSplomboWithPrimary:(id)primary secondary:(id)secondary majorPrimary:(id)majorPrimary majorSecondary:(id)majorSecondary minorPrimary:(id)minorPrimary minorSecondary:(id)minorSecondary error:(id)error
{
  v55 = *MEMORY[0x277D85DE8];
  primaryCopy = primary;
  secondaryCopy = secondary;
  majorPrimaryCopy = majorPrimary;
  majorSecondaryCopy = majorSecondary;
  minorPrimaryCopy = minorPrimary;
  minorSecondaryCopy = minorSecondary;
  errorCopy = error;
  interimScanResult = [(SUCoreScan *)self interimScanResult];

  if (!interimScanResult)
  {
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ unexpected no previous scan result for Splombo scan", self];
    [(SUCoreScan *)self _trackInconsistentAnomalyAndUpdateInterimResult:@"[SCAN] UPDATE_INTERIM_SPLOMBO" reason:v26];

    goto LABEL_18;
  }

  if (!errorCopy)
  {
    if ([(SUCoreScan *)self operationSPIType]== 1)
    {
      [(SUCoreScan *)self interimScanResult];
      v27 = v49 = minorSecondaryCopy;
      descriptor = [v27 descriptor];

      interimScanResult2 = [(SUCoreScan *)self interimScanResult];
      fallbackDescriptor = [interimScanResult2 fallbackDescriptor];

      minorSecondaryCopy = v49;
      [descriptor setAssociatedSplatDescriptor:primaryCopy];
      [fallbackDescriptor setAssociatedSplatDescriptor:primaryCopy];
      v31 = [[SUCoreScanParam alloc] initWithDescriptor:descriptor withFallbackDescriptor:fallbackDescriptor];
      [(SUCoreScan *)self setInterimScanResult:v31];

      secondaryCopy = fallbackDescriptor;
    }

    else
    {
      if ([(SUCoreScan *)self operationSPIType]== 2)
      {
        primaryCopy = primaryCopy;
        interimScanResult3 = [(SUCoreScan *)self interimScanResult];
        majorPrimaryDescriptor = [interimScanResult3 majorPrimaryDescriptor];

        interimScanResult4 = [(SUCoreScan *)self interimScanResult];
        majorSecondaryDescriptor = [interimScanResult4 majorSecondaryDescriptor];

        interimScanResult5 = [(SUCoreScan *)self interimScanResult];
        minorPrimaryDescriptor = [interimScanResult5 minorPrimaryDescriptor];

        interimScanResult6 = [(SUCoreScan *)self interimScanResult];
        minorSecondaryDescriptor = [interimScanResult6 minorSecondaryDescriptor];

        if (majorPrimaryDescriptor)
        {
          [majorPrimaryDescriptor setAssociatedSplatDescriptor:primaryCopy];
          v40 = majorSecondaryDescriptor;
        }

        else
        {
          [minorPrimaryDescriptor setAssociatedSplatDescriptor:primaryCopy];
          v40 = minorSecondaryDescriptor;
        }

        [v40 setAssociatedSplatDescriptor:primaryCopy];

        v46 = [[SUCoreScanParam alloc] initWithMajorPrimaryDescriptor:majorPrimaryDescriptor majorSecondaryDescriptor:majorSecondaryDescriptor minorPrimaryDescriptor:minorPrimaryDescriptor minorSecondaryDescriptor:minorSecondaryDescriptor];
        [(SUCoreScan *)self setInterimScanResult:v46];

        minorSecondaryCopy = minorSecondaryDescriptor;
        minorPrimaryCopy = minorPrimaryDescriptor;
        majorSecondaryCopy = majorSecondaryDescriptor;
        majorPrimaryCopy = majorPrimaryDescriptor;
        goto LABEL_18;
      }

      if ([(SUCoreScan *)self operationSPIType]!= 3)
      {
        v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ unknown operationSPIType (%d) found", self, -[SUCoreScan operationSPIType](self, "operationSPIType")];
        [(SUCoreScan *)self _trackInconsistentAnomalyAndUpdateInterimResult:@"[SCAN] UPDATE_INTERIM_SPLOMBO" reason:v45];

        goto LABEL_18;
      }

      interimScanResult7 = [(SUCoreScan *)self interimScanResult];
      descriptor = [interimScanResult7 majorPrimaryDescriptor];

      interimScanResult8 = [(SUCoreScan *)self interimScanResult];
      [interimScanResult8 majorSecondaryDescriptor];
      v43 = v50 = minorSecondaryCopy;

      [descriptor setAssociatedSplatDescriptor:primaryCopy];
      [v43 setAssociatedSplatDescriptor:primaryCopy];
      v44 = [[SUCoreScanParam alloc] initWithMajorPrimaryDescriptor:descriptor majorSecondaryDescriptor:v43 minorPrimaryDescriptor:0 minorSecondaryDescriptor:0];
      [(SUCoreScan *)self setInterimScanResult:v44];

      secondaryCopy = v43;
      minorSecondaryCopy = v50;
    }

    primaryCopy = descriptor;
    goto LABEL_18;
  }

  v23 = minorSecondaryCopy;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v53 = 2114;
    v54 = errorCopy;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ [SPLOMBO] splombo scan failed with %{public}@, but this is non-fatal", buf, 0x16u);
  }

  minorSecondaryCopy = v23;
LABEL_18:
  originalScanPolicy = [(SUCoreScan *)self originalScanPolicy];
  [(SUCoreScan *)self setScanPolicy:originalScanPolicy];

  [(SUCoreScan *)self setOriginalScanPolicy:0];
  v48 = *MEMORY[0x277D85DE8];
}

- (void)_updateInterimScanResultWithPrimary:(id)primary secondary:(id)secondary majorPrimary:(id)majorPrimary majorSecondary:(id)majorSecondary minorPrimary:(id)minorPrimary minorSecondary:(id)minorSecondary error:(id)error
{
  primaryCopy = primary;
  secondaryCopy = secondary;
  majorPrimaryCopy = majorPrimary;
  majorSecondaryCopy = majorSecondary;
  minorPrimaryCopy = minorPrimary;
  minorSecondaryCopy = minorSecondary;
  errorCopy = error;
  if ([(SUCoreScan *)self operation]== 1)
  {
    if ([(SUCoreScan *)self phase]== 1)
    {
      if (errorCopy)
      {
        v21 = -[SUCoreScanParam initWithResult:withError:]([SUCoreScanParam alloc], "initWithResult:withError:", [errorCopy code], errorCopy);
LABEL_19:
        v22 = v21;
        [(SUCoreScan *)self setInterimScanResult:v21];
        goto LABEL_20;
      }

      if ([(SUCoreScan *)self operationSPIType]== 1)
      {
        v21 = [[SUCoreScanParam alloc] initWithDescriptor:primaryCopy withFallbackDescriptor:secondaryCopy];
        goto LABEL_19;
      }

      if ([(SUCoreScan *)self operationSPIType]== 2)
      {
        v23 = [SUCoreScanParam alloc];
        v24 = majorPrimaryCopy;
        v25 = majorSecondaryCopy;
        v26 = minorPrimaryCopy;
        v27 = minorSecondaryCopy;
LABEL_18:
        v21 = [(SUCoreScanParam *)v23 initWithMajorPrimaryDescriptor:v24 majorSecondaryDescriptor:v25 minorPrimaryDescriptor:v26 minorSecondaryDescriptor:v27];
        goto LABEL_19;
      }

      if ([(SUCoreScan *)self operationSPIType]== 3)
      {
        [primaryCopy assignDescriptorAudienceType:1 descriptorPreferredUpdateType:2 assetAudienceUUID:0];
        [secondaryCopy assignDescriptorAudienceType:1 descriptorPreferredUpdateType:2 assetAudienceUUID:0];
        v23 = [SUCoreScanParam alloc];
        v24 = primaryCopy;
        v25 = secondaryCopy;
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
        [(SUCoreScan *)self _updateInterimScanResultForSplomboWithPrimary:primaryCopy secondary:secondaryCopy majorPrimary:majorPrimaryCopy majorSecondary:majorSecondaryCopy minorPrimary:minorPrimaryCopy minorSecondary:minorSecondaryCopy error:errorCopy];
        goto LABEL_21;
      }

      if ([(SUCoreScan *)self phase]== 3)
      {
        [(SUCoreScan *)self _updateInterimScanResultForSlowReleaseWithPrimary:primaryCopy secondary:secondaryCopy error:errorCopy];
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

- (void)_trackInconsistentAnomalyAndUpdateInterimResult:(id)result reason:(id)reason
{
  v6 = MEMORY[0x277D643F8];
  reasonCopy = reason;
  resultCopy = result;
  sharedCore = [v6 sharedCore];
  v13 = [sharedCore buildError:8117 underlying:0 description:reasonCopy];

  scanFSM = [(SUCoreScan *)self scanFSM];
  diag = [scanFSM diag];
  [diag trackAnomaly:resultCopy forReason:reasonCopy withResult:objc_msgSend(v13 withError:{"code"), v13}];

  v12 = -[SUCoreScanParam initWithResult:withError:]([SUCoreScanParam alloc], "initWithResult:withError:", [v13 code], v13);
  [(SUCoreScan *)self setInterimScanResult:v12];
}

- (void)_scanCompleteFoundPrimary:(id)primary foundSecondary:(id)secondary majorPrimary:(id)majorPrimary majorSecondary:(id)majorSecondary minorPrimary:(id)minorPrimary minorSecondary:(id)minorSecondary clearingOperation:(BOOL)operation error:(id)self0
{
  primaryCopy = primary;
  secondaryCopy = secondary;
  majorPrimaryCopy = majorPrimary;
  majorSecondaryCopy = majorSecondary;
  minorPrimaryCopy = minorPrimary;
  minorSecondaryCopy = minorSecondary;
  errorCopy = error;
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  scanPolicy = [(SUCoreScan *)self scanPolicy];
  activeDescriptor = [(SUCoreScan *)self activeDescriptor];
  operation = [(SUCoreScan *)self operation];
  if (operation > 2)
  {
    if (operation == 3)
    {
      collectCompletion = [(SUCoreScan *)self collectCompletion];
      [(SUCoreScan *)self setCollectCompletion:0];
      [(SUCoreScan *)self _collectEndComplete:collectCompletion scanPolicy:scanPolicy active:activeDescriptor error:errorCopy clearingTransaction:1];

      goto LABEL_16;
    }

    if (operation == 4)
    {
      [(SUCoreScan *)self primaryUpdateAsset];
      v31 = v41 = activeDescriptor;
      [(SUCoreScan *)self secondaryUpdateAsset];
      v32 = v43 = majorPrimaryCopy;
      [(SUCoreScan *)self setPrimaryUpdateAsset:0];
      [(SUCoreScan *)self setSecondaryUpdateAsset:0];
      [(SUCoreScan *)self locateCompletion];
      v33 = secondaryCopy;
      v34 = minorSecondaryCopy;
      v35 = minorPrimaryCopy;
      v37 = v36 = majorSecondaryCopy;
      [(SUCoreScan *)self setLocateCompletion:0];
      [(SUCoreScan *)self _locateEndComplete:v37 scanPolicy:scanPolicy primary:v31 secondary:v32 error:errorCopy clearingTransaction:1];

      majorSecondaryCopy = v36;
      minorPrimaryCopy = v35;
      minorSecondaryCopy = v34;
      secondaryCopy = v33;

      majorPrimaryCopy = v43;
      activeDescriptor = v41;
      goto LABEL_16;
    }

LABEL_12:
    [(SUCoreScan *)self _invalidOperation:@"[SCAN] COMPLETION"];
    goto LABEL_19;
  }

  if (operation == 1)
  {
    [(SUCoreScan *)self _updateInterimScanResultWithPrimary:primaryCopy secondary:secondaryCopy majorPrimary:majorPrimaryCopy majorSecondary:majorSecondaryCopy minorPrimary:minorPrimaryCopy minorSecondary:minorSecondaryCopy error:errorCopy];
    scanFSM2 = [(SUCoreScan *)self scanFSM];
    [scanFSM2 followupEvent:@"DecideNextScanStep"];

    if (!operation)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (operation != 2)
  {
    goto LABEL_12;
  }

  v42 = minorPrimaryCopy;
  v27 = majorSecondaryCopy;
  v28 = majorPrimaryCopy;
  verifyCompletion = [(SUCoreScan *)self verifyCompletion];
  [(SUCoreScan *)self setVerifyCompletion:0];
  v30 = errorCopy;
  if (!v30 && (([activeDescriptor isEqual:primaryCopy] & 1) != 0 || objc_msgSend(activeDescriptor, "isEqual:", secondaryCopy)))
  {

    secondaryCopy = 0;
    primaryCopy = 0;
  }

  LOBYTE(v40) = 1;
  [(SUCoreScan *)self _verifyEndComplete:verifyCompletion scanPolicy:scanPolicy active:activeDescriptor primary:primaryCopy secondary:secondaryCopy error:v30 clearingTransaction:v40];

  majorPrimaryCopy = v28;
  majorSecondaryCopy = v27;
  minorPrimaryCopy = v42;
LABEL_16:
  if (!operation)
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

- (void)_cancelCompleteWithError:(id)error
{
  errorCopy = error;
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  cancelCompletion = [(SUCoreScan *)self cancelCompletion];
  [(SUCoreScan *)self setCancelCompletion:0];
  [(SUCoreScan *)self _cancelEndComplete:cancelCompletion error:errorCopy clearingTransaction:1];

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

- (void)_checkMajorMinorEndComplete:(id)complete scanPolicy:(id)policy majorPrimary:(id)primary majorSecondary:(id)secondary minorPrimary:(id)minorPrimary minorSecondary:(id)minorSecondary error:(id)error clearingTransaction:(BOOL)self0
{
  completeCopy = complete;
  policyCopy = policy;
  primaryCopy = primary;
  secondaryCopy = secondary;
  minorPrimaryCopy = minorPrimary;
  minorSecondaryCopy = minorSecondary;
  errorCopy = error;
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (transaction)
  {
    scanCheckTransaction = [(SUCoreScan *)self scanCheckTransaction];
    [(SUCoreScan *)self setScanCheckTransaction:0];
  }

  else
  {
    scanCheckTransaction = 0;
  }

  v25 = MEMORY[0x2383746D0](completeCopy);
  [(SUCoreScan *)self _operationCompleting:v25 error:errorCopy clearingTransaction:transaction];

  if (completeCopy)
  {
    clientCompletionQueue = [(SUCoreScan *)self clientCompletionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __135__SUCoreScan__checkMajorMinorEndComplete_scanPolicy_majorPrimary_majorSecondary_minorPrimary_minorSecondary_error_clearingTransaction___block_invoke;
    block[3] = &unk_27892D3B8;
    v38 = completeCopy;
    v27 = policyCopy;
    v31 = policyCopy;
    v32 = primaryCopy;
    v33 = secondaryCopy;
    v34 = minorPrimaryCopy;
    v35 = minorSecondaryCopy;
    v36 = errorCopy;
    v37 = scanCheckTransaction;
    dispatch_async(clientCompletionQueue, block);
  }

  else
  {
    v27 = policyCopy;
    if (scanCheckTransaction)
    {
      [MEMORY[0x277D643F8] endTransaction:scanCheckTransaction withName:@"scan.CheckForAvailableUpdate"];
    }
  }

  if (errorCopy)
  {
    code = [errorCopy code];
  }

  else
  {
    code = 0;
  }

  [(SUCoreScan *)self _trackScanEnd:@"checkForAvailableUpdateWithPolicy" withResult:code withError:errorCopy];
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
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(SUCoreScan *)self phase]<= 2 && [(SUCoreScan *)self operation]== 1 && [(SUCoreScan *)self operationSPIType]== 3)
  {
    interimScanResult = [(SUCoreScan *)self interimScanResult];
    majorPrimaryDescriptor = [interimScanResult majorPrimaryDescriptor];

    interimScanResult2 = [(SUCoreScan *)self interimScanResult];
    error = [interimScanResult2 error];

    userInfo = [error userInfo];
    v10 = [userInfo safeObjectForKey:*MEMORY[0x277CCA7E8] ofClass:objc_opt_class()];

    if (error)
    {
      domain = [error domain];
      if ([domain isEqualToString:*MEMORY[0x277D646E8]] && objc_msgSend(error, "code") == 8400 && v10)
      {
        domain2 = [v10 domain];
        if ([domain2 isEqualToString:@"com.apple.MobileAssetError.Download"] && objc_msgSend(v10, "code") == 18)
        {
          scanPolicy = [(SUCoreScan *)self scanPolicy];
          isRequestedPMVSupervisedPolicy = [scanPolicy isRequestedPMVSupervisedPolicy];

          if (!isRequestedPMVSupervisedPolicy)
          {
            goto LABEL_19;
          }

LABEL_15:
          scanPolicy2 = [(SUCoreScan *)self scanPolicy];
          alternateAssetAudienceUUID = [scanPolicy2 alternateAssetAudienceUUID];
          if (alternateAssetAudienceUUID)
          {
            [(SUCoreScan *)self setAlternateAssetAudienceUUID:alternateAssetAudienceUUID];
          }

          else
          {
            alternateAssetAudienceUUID2 = [majorPrimaryDescriptor alternateAssetAudienceUUID];
            [(SUCoreScan *)self setAlternateAssetAudienceUUID:alternateAssetAudienceUUID2];
          }

          if (error)
          {
            alternateAssetAudienceUUID3 = [(SUCoreScan *)self alternateAssetAudienceUUID];

            if (!alternateAssetAudienceUUID3)
            {
              v24 = objc_alloc(MEMORY[0x277D64408]);
              v25 = [v24 initWithProjectName:*MEMORY[0x277D64540]];
              v26 = [v25 getStringConfigForKey:*MEMORY[0x277D644C8]];
              [(SUCoreScan *)self setAlternateAssetAudienceUUID:v26];

              alternateAssetAudienceUUID4 = [(SUCoreScan *)self alternateAssetAudienceUUID];

              if (alternateAssetAudienceUUID4)
              {
                mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
                oslog = [mEMORY[0x277D64460] oslog];

                if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
                {
                  alternateAssetAudienceUUID5 = [(SUCoreScan *)self alternateAssetAudienceUUID];
                  v34 = 138543618;
                  selfCopy2 = self;
                  v36 = 2114;
                  v37 = alternateAssetAudienceUUID5;
                  _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] Using alternate asset audience from SUCoreConfig: %{public}@", &v34, 0x16u);
                }
              }

              else
              {
                [(SUCoreScan *)self setAlternateAssetAudienceUUID:@"c724cb61-e974-42d3-a911-ffd4dce11eda"];
              }
            }
          }

          mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
          oslog2 = [mEMORY[0x277D64460]2 oslog];

          if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
          {
            alternateAssetAudienceUUID6 = [(SUCoreScan *)self alternateAssetAudienceUUID];
            v34 = 138543618;
            selfCopy2 = self;
            v36 = 2114;
            v37 = alternateAssetAudienceUUID6;
            _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] alternate scan using asset audience: %{public}@", &v34, 0x16u);
          }

          v15 = 1;
          goto LABEL_31;
        }
      }
    }

    else
    {
      scanPolicy3 = [(SUCoreScan *)self scanPolicy];
      v19 = [(SUCoreScan *)self _shouldPerformAlternateScanFromFoundDescriptor:majorPrimaryDescriptor policy:scanPolicy3];

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
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(SUCoreScan *)self phase]<= 1 && [(SUCoreScan *)self operation]== 1)
  {
    interimScanResult = [(SUCoreScan *)self interimScanResult];
    error = [interimScanResult error];

    if ([(SUCoreScan *)self operationSPIType]== 1)
    {
      interimScanResult2 = [(SUCoreScan *)self interimScanResult];
      descriptor = [interimScanResult2 descriptor];
    }

    else
    {
      if ([(SUCoreScan *)self operationSPIType]== 2)
      {
        interimScanResult2 = [(SUCoreScan *)self interimScanResult];
        majorPrimaryDescriptor = [interimScanResult2 majorPrimaryDescriptor];
        v12 = majorPrimaryDescriptor;
        if (majorPrimaryDescriptor)
        {
          minorPrimaryDescriptor = majorPrimaryDescriptor;
        }

        else
        {
          interimScanResult3 = [(SUCoreScan *)self interimScanResult];
          minorPrimaryDescriptor = [interimScanResult3 minorPrimaryDescriptor];
        }

        goto LABEL_15;
      }

      if ([(SUCoreScan *)self operationSPIType]!= 3)
      {
        minorPrimaryDescriptor = 0;
        goto LABEL_21;
      }

      interimScanResult2 = [(SUCoreScan *)self interimScanResult];
      descriptor = [interimScanResult2 majorPrimaryDescriptor];
    }

    minorPrimaryDescriptor = descriptor;
LABEL_15:

    v10 = 0;
    if (error || !minorPrimaryDescriptor)
    {
      goto LABEL_22;
    }

    scanPolicy = [(SUCoreScan *)self scanPolicy];
    v15 = [(SUCoreScan *)self _shouldPerformSplomboScanFromFoundDescriptor:minorPrimaryDescriptor policy:scanPolicy];

    if (v15)
    {
      scanPolicy2 = [(SUCoreScan *)self scanPolicy];
      v17 = [scanPolicy2 copy];

      productBuildVersion = [minorPrimaryDescriptor productBuildVersion];
      [v17 setPrerequisiteBuildVersion:productBuildVersion];

      productVersion = [minorPrimaryDescriptor productVersion];
      [v17 setPrerequisiteProductVersion:productVersion];

      restoreVersion = [minorPrimaryDescriptor restoreVersion];
      [v17 setPrerequisiteRestoreVersion:restoreVersion];

      softwareUpdateScanPolicy = [v17 softwareUpdateScanPolicy];
      [softwareUpdateScanPolicy setRestrictToFull:0];

      softwareUpdateScanPolicy2 = [v17 softwareUpdateScanPolicy];
      [softwareUpdateScanPolicy2 setRestrictToIncremental:1];

      v23 = objc_alloc_init(SUCorePolicyExtensionSplatUpdate);
      restoreVersion2 = [minorPrimaryDescriptor restoreVersion];
      [(SUCorePolicyExtensionSplatUpdate *)v23 setInstalledSplatRestoreVersion:restoreVersion2];

      productBuildVersion2 = [minorPrimaryDescriptor productBuildVersion];
      [(SUCorePolicyExtensionSplatUpdate *)v23 setInstalledSplatBuildVersion:productBuildVersion2];

      productVersion2 = [minorPrimaryDescriptor productVersion];
      [(SUCorePolicyExtensionSplatUpdate *)v23 setInstalledSplatProductVersion:productVersion2];

      [(SUCorePolicyExtensionSplatUpdate *)v23 setInstalledSplatProductVersionExtra:0];
      releaseType = [minorPrimaryDescriptor releaseType];
      [(SUCorePolicyExtensionSplatUpdate *)v23 setInstalledSplatReleaseType:releaseType];

      restoreVersion3 = [minorPrimaryDescriptor restoreVersion];
      [(SUCorePolicyExtensionSplatUpdate *)v23 setInstalledBaseOSRestoreVersion:restoreVersion3];

      productBuildVersion3 = [minorPrimaryDescriptor productBuildVersion];
      [(SUCorePolicyExtensionSplatUpdate *)v23 setInstalledBaseOSBuildVersion:productBuildVersion3];

      productVersion3 = [minorPrimaryDescriptor productVersion];
      [(SUCorePolicyExtensionSplatUpdate *)v23 setInstalledSplatProductVersion:productVersion3];

      releaseType2 = [minorPrimaryDescriptor releaseType];
      [(SUCorePolicyExtensionSplatUpdate *)v23 setInstalledBaseOSReleaseType:releaseType2];

      softwareUpdateScanPolicy3 = [v17 softwareUpdateScanPolicy];
      -[SUCorePolicyExtensionSplatUpdate setAllowSameRestoreVersion:](v23, "setAllowSameRestoreVersion:", [softwareUpdateScanPolicy3 allowSameVersion]);

      array = [MEMORY[0x277CBEB18] array];
      policyExtensions = [v17 policyExtensions];

      if (policyExtensions)
      {
        v35 = MEMORY[0x277CBEB18];
        policyExtensions2 = [v17 policyExtensions];
        v37 = [v35 arrayWithArray:policyExtensions2];

        array = v37;
      }

      [array addObject:v23];
      [v17 setPolicyExtensions:array];
      [v17 setSoftwareUpdateAssetType:@"com.apple.MobileAsset.SplatSoftwareUpdate"];
      scanPolicy3 = [(SUCoreScan *)self scanPolicy];
      [(SUCoreScan *)self setOriginalScanPolicy:scanPolicy3];

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

- (BOOL)_decideAndProcessPSUSScanForPrimaryDescriptor:(id)descriptor secondaryDescriptor:(id)secondaryDescriptor andError:(id)error
{
  descriptorCopy = descriptor;
  secondaryDescriptorCopy = secondaryDescriptor;
  if ([(SUCoreScan *)self phase]<= 4 && [(SUCoreScan *)self operation]== 1)
  {
    if (descriptorCopy && !error && ([(SUCoreScan *)self scanPolicy], v10 = objc_claimAutoreleasedReturnValue(), v11 = [(SUCoreScan *)self _shouldPerformPSUSScanFromFoundDescriptor:descriptorCopy policy:v10], v10, v11))
    {
      [(SUCoreScan *)self setPsusPrimaryDescriptor:descriptorCopy];
      v12 = 1;
      v13 = secondaryDescriptorCopy;
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

- (BOOL)_decideReserveSpace:(id)space error:(id)error
{
  spaceCopy = space;
  if (_os_feature_enabled_impl() && [(SUCoreScan *)self phase]<= 5 && [(SUCoreScan *)self operation]== 1)
  {
    LOBYTE(v7) = 0;
    if (spaceCopy && !error)
    {
      v7 = [spaceCopy splatOnly] ^ 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)_shouldPerformPSUSScanFromFoundDescriptor:(id)descriptor policy:(id)policy
{
  v19 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v5 = [SUCoreScan isPreSUStagingEnabledForUpdate:descriptor policy:policy reason:&v12];
  v6 = v12;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    *buf = 138543874;
    selfCopy = self;
    v15 = 2114;
    if (v5)
    {
      v9 = @"YES";
    }

    v16 = v9;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ [PreSUStaging] Performing psus scan: %{public}@; reason; %{public}@", buf, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_shouldPerformSplomboScanFromFoundDescriptor:(id)descriptor policy:(id)policy
{
  v23 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  policyCopy = policy;
  v8 = policyCopy;
  if (policyCopy)
  {
    if ([policyCopy disableSplatCombo])
    {
      v9 = 0;
      v10 = @"Splombo scan disabled via policy";
    }

    else if ([v8 isSplatPolicy])
    {
      v9 = 0;
      v10 = @"Policy is a splat policy; don't perform splombo scan";
    }

    else if ([descriptorCopy splatOnly])
    {
      v9 = 0;
      v10 = @"Located descriptor is a splat update; don't perform splombo scan";
    }

    else
    {
      disableSplatCombo = [descriptorCopy disableSplatCombo];
      if (disableSplatCombo)
      {
        v10 = @"Splombo is disabled by server";
      }

      else
      {
        v10 = @"Splombo scan should be perfromed since it isn't disbaled and the found descriptor is a normal SU";
      }

      v9 = disableSplatCombo ^ 1;
    }
  }

  else
  {
    v9 = 0;
    v10 = @"Unexpected nil policy; don't perform the splombo scan";
  }

  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    v17 = 138543874;
    selfCopy = self;
    v19 = 2114;
    if (v9)
    {
      v14 = @"YES";
    }

    v20 = v14;
    v21 = 2114;
    v22 = v10;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ [SPLOMBO] Performing splombo scan: %{public}@ (%{public}@)", &v17, 0x20u);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)_shouldPerformAlternateScanFromFoundDescriptor:(id)descriptor policy:(id)policy
{
  v24 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  policyCopy = policy;
  if ([policyCopy disableAlternateUpdate])
  {
    v8 = 0;
    v9 = @"Alternate scan disabled via policy";
  }

  else if ([policyCopy isRequestedPMVSupervisedPolicy])
  {
    v8 = 0;
    v9 = @"Alternate scan disabled for supervised PMV requests";
  }

  else
  {
    alternateAssetAudienceUUID = [policyCopy alternateAssetAudienceUUID];

    if (alternateAssetAudienceUUID)
    {
      v8 = 1;
      v9 = @"Alternate scan enabled via policy alternate asset audience";
    }

    else
    {
      v9 = @"Defaults to not performing alternate scan";
      if ([descriptorCopy enableAlternateAssetAudience])
      {
        alternateAssetAudienceUUID2 = [descriptorCopy alternateAssetAudienceUUID];

        v12 = alternateAssetAudienceUUID2 == 0;
        v8 = alternateAssetAudienceUUID2 != 0;
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

  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"NO";
    v18 = 138543874;
    selfCopy = self;
    v20 = 2114;
    if (v8)
    {
      v15 = @"YES";
    }

    v21 = v15;
    v22 = 2114;
    v23 = v9;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ [DUAL_AUDIENCE] Performing alternate scan: %{public}@ (%{public}@)", &v18, 0x20u);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_checkSlowReleaseEndComplete:(id)complete scanPolicy:(id)policy primary:(id)primary secondary:(id)secondary alternatePrimary:(id)alternatePrimary alternateSecondary:(id)alternateSecondary error:(id)error clearingTransaction:(BOOL)self0
{
  completeCopy = complete;
  policyCopy = policy;
  primaryCopy = primary;
  secondaryCopy = secondary;
  alternatePrimaryCopy = alternatePrimary;
  alternateSecondaryCopy = alternateSecondary;
  errorCopy = error;
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v24 = errorCopy;
  if (transaction)
  {
    scanCheckTransaction = [(SUCoreScan *)self scanCheckTransaction];
    [(SUCoreScan *)self setScanCheckTransaction:0];
  }

  else
  {
    scanCheckTransaction = 0;
  }

  v26 = MEMORY[0x2383746D0](completeCopy);
  [(SUCoreScan *)self _operationCompleting:v26 error:v24 clearingTransaction:transaction];

  if (completeCopy)
  {
    clientCompletionQueue = [(SUCoreScan *)self clientCompletionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __134__SUCoreScan__checkSlowReleaseEndComplete_scanPolicy_primary_secondary_alternatePrimary_alternateSecondary_error_clearingTransaction___block_invoke;
    block[3] = &unk_27892D3B8;
    v39 = completeCopy;
    v28 = policyCopy;
    v32 = policyCopy;
    v33 = primaryCopy;
    v34 = secondaryCopy;
    v35 = alternatePrimaryCopy;
    v36 = alternateSecondaryCopy;
    v37 = v24;
    v38 = scanCheckTransaction;
    dispatch_async(clientCompletionQueue, block);
  }

  else
  {
    v28 = policyCopy;
    if (scanCheckTransaction)
    {
      [MEMORY[0x277D643F8] endTransaction:scanCheckTransaction withName:@"scan.CheckForAvailableUpdate"];
    }
  }

  if (v24)
  {
    code = [v24 code];
  }

  else
  {
    code = 0;
  }

  [(SUCoreScan *)self _trackScanEnd:@"checkForAvailableSlowReleaseUpdatesWithPolicy" withResult:code withError:v24];
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

- (void)_verifyEndComplete:(id)complete scanPolicy:(id)policy active:(id)active primary:(id)primary secondary:(id)secondary error:(id)error clearingTransaction:(BOOL)transaction
{
  completeCopy = complete;
  policyCopy = policy;
  activeCopy = active;
  primaryCopy = primary;
  secondaryCopy = secondary;
  errorCopy = error;
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (transaction)
  {
    scanVerifyTransaction = [(SUCoreScan *)self scanVerifyTransaction];
    [(SUCoreScan *)self setScanVerifyTransaction:0];
  }

  else
  {
    scanVerifyTransaction = 0;
  }

  v24 = MEMORY[0x2383746D0](completeCopy);
  [(SUCoreScan *)self _operationCompleting:v24 error:errorCopy clearingTransaction:transaction];

  if (completeCopy)
  {
    clientCompletionQueue = [(SUCoreScan *)self clientCompletionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __95__SUCoreScan__verifyEndComplete_scanPolicy_active_primary_secondary_error_clearingTransaction___block_invoke;
    block[3] = &unk_27892D3E0;
    v34 = completeCopy;
    v28 = policyCopy;
    v29 = activeCopy;
    v30 = primaryCopy;
    v31 = secondaryCopy;
    v32 = errorCopy;
    v33 = scanVerifyTransaction;
    dispatch_async(clientCompletionQueue, block);
  }

  else if (scanVerifyTransaction)
  {
    [MEMORY[0x277D643F8] endTransaction:scanVerifyTransaction withName:@"scan.VerifyLatestAvailable"];
  }

  if (errorCopy)
  {
    code = [errorCopy code];
  }

  else
  {
    code = 0;
  }

  [(SUCoreScan *)self _trackScanEnd:@"verifyLatestAvailableWithPolicy" withResult:code withError:errorCopy];
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
  selfCopy = self;
  v6 = 1024;
  pendingMobileAssetRequests = [self pendingMobileAssetRequests];
  _os_log_error_impl(&dword_23193C000, a2, OS_LOG_TYPE_ERROR, "%{public}@ [MA_PENDING] clearCurrentOperation - non-zero MA pending (%d) - clearing", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

- (id)_operationName
{
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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

- (void)_operationCompleting:(id)completing error:(id)error clearingTransaction:(BOOL)transaction
{
  transactionCopy = transaction;
  v27 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    _operationName = [(SUCoreScan *)self _operationName];
    v12 = _operationName;
    v13 = @"calling client completion";
    if (!completing)
    {
      v13 = @"has completed (no client completion)";
    }

    v14 = @"NO";
    v17 = 138544386;
    selfCopy = self;
    if (transactionCopy)
    {
      v14 = @"YES";
    }

    v19 = 2114;
    v20 = _operationName;
    v21 = 2114;
    v22 = v13;
    v23 = 2114;
    v24 = v14;
    if (errorCopy)
    {
      v15 = errorCopy;
    }

    else
    {
      v15 = @"SUCCESS";
    }

    v25 = 2114;
    v26 = v15;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ %{public}@ [clearingTransaction:%{public}@] | %{public}@", &v17, 0x34u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_invalidOperation:(id)operation
{
  operationCopy = operation;
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  scanFSM2 = [(SUCoreScan *)self scanFSM];
  diag = [scanFSM2 diag];
  v8 = objc_alloc(MEMORY[0x277CCACA8]);
  _operationName = [(SUCoreScan *)self _operationName];
  v10 = [v8 initWithFormat:@"%@ invalid scan operation: %@", self, _operationName];
  [diag trackAnomaly:operationCopy forReason:v10 withResult:8102 withError:0];
}

- (id)description
{
  scanPolicy = [(SUCoreScan *)self scanPolicy];

  if (scanPolicy)
  {
    scanPolicy2 = [(SUCoreScan *)self scanPolicy];
    softwareUpdateScanPolicy = [scanPolicy2 softwareUpdateScanPolicy];
    rampingScanType = [softwareUpdateScanPolicy rampingScanType];

    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    scanUUID = [(SUCoreScan *)self scanUUID];
    scanPolicy3 = [(SUCoreScan *)self scanPolicy];
    softwareUpdateScanPolicy2 = [scanPolicy3 softwareUpdateScanPolicy];
    if ([softwareUpdateScanPolicy2 discretionary])
    {
      v11 = @"Y";
    }

    else
    {
      v11 = @"N";
    }

    if (rampingScanType)
    {
      scanPolicy4 = [(SUCoreScan *)self scanPolicy];
      softwareUpdateScanPolicy3 = [scanPolicy4 softwareUpdateScanPolicy];
      rampingScanType2 = [softwareUpdateScanPolicy3 rampingScanType];
      v15 = [v7 initWithFormat:@"[SCAN(%@) SU disc:%@, ramp:%@]", scanUUID, v11, rampingScanType2];
    }

    else
    {
      v15 = [v7 initWithFormat:@"[SCAN(%@) SU disc:%@]", scanUUID, v11];
    }
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    scanUUID = [(SUCoreScan *)self scanUUID];
    v15 = [v16 initWithFormat:@"[SCAN(%@)]", scanUUID];
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
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUCoreScan *)self _incrementMobileAssetPending:@"_determinePSUSAssets"];
  psusPrimaryDescriptor = [(SUCoreScan *)self psusPrimaryDescriptor];
  if (psusPrimaryDescriptor)
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
    productVersion = [psusPrimaryDescriptor productVersion];
    productBuildVersion = [psusPrimaryDescriptor productBuildVersion];
    trainName = [psusPrimaryDescriptor trainName];
    restoreVersion = [psusPrimaryDescriptor restoreVersion];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setSafeObject:productVersion forKey:@"OSVersion"];
    [dictionary setSafeObject:productBuildVersion forKey:@"Build"];
    [dictionary setSafeObject:trainName forKey:@"TrainName"];
    [dictionary setSafeObject:restoreVersion forKey:@"RestoreVersion"];
    [dictionary setSafeObject:&unk_2846B9CB8 forKey:@"GroupNames"];
    [(SUCoreScan *)self _reportPSUSDetermineStartedEvent];
    [(SUCoreScan *)self _trackScanBegin:@"stageDetermineGroupsAvailableForUpdate"];
    v12 = [MEMORY[0x277CBEAA8] now];
    v13 = v27[5];
    v27[5] = v12;

    v14 = MEMORY[0x277D289E0];
    [(SUCoreScan *)self _psusDetermineTimeout];
    v15 = [v14 SUCoreBorder_stageDetermineGroupsAvailableForUpdate:dictionary timeoutSecs:v6 completion:?];

    _Block_object_dispose(&v26, 8);
    v16 = 0;
  }

  else
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ psus descriptor is nil", self];
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v16 = 8411;
    v19 = [mEMORY[0x277D643F8] buildError:8411 underlying:0 description:v17];

    scanFSM2 = [(SUCoreScan *)self scanFSM];
    diag = [scanFSM2 diag];
    [diag trackAnomaly:@"[SCAN] PSUS" forReason:v17 withResult:8411 withError:v19];

    v22 = [[SUCoreScanParam alloc] initWithResult:8411 withError:v19];
    scanFSM3 = [(SUCoreScan *)self scanFSM];
    [scanFSM3 postProtectedEvent:@"PSUSAssetsDetermineFailed" withInfo:v22];
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

+ (BOOL)isPreSUStagingEnabledForUpdate:(id)update policy:(id)policy reason:(id *)reason
{
  v22 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  policyCopy = policy;
  if ([updateCopy enablePreSUStaging])
  {
    if ([policyCopy enablePreSUStaging])
    {
      v9 = *MEMORY[0x277D29450];
      if (_MSUPreferencesGetAppBooleanValueWithDefaultValue())
      {
        v10 = 0;
        v11 = @"disabled by MSU default";
      }

      else if ([updateCopy splatOnly])
      {
        v10 = 0;
        v11 = @"disabled for a Splat update";
      }

      else if ([updateCopy descriptorType] == 3)
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

  if (reason)
  {
    *reason = v11;
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
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
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[PreSUStaging] %{public}@: %{public}@", &v18, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (int64_t)_downloadCatalog:(id)catalog withIdentifier:(id)identifier
{
  catalogCopy = catalog;
  identifierCopy = identifier;
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUCoreScan *)self _incrementMobileAssetPending:@"_downloadCatalog"];
  operation = [(SUCoreScan *)self operation];
  if ((operation - 1) < 2)
  {
    scanPolicy = [(SUCoreScan *)self scanPolicy];
    scanUUID = [(SUCoreScan *)self scanUUID];
    alternateAssetAudienceUUID = [(SUCoreScan *)self alternateAssetAudienceUUID];
    v13 = [scanPolicy constructMASoftwareUpdateCatalogDownloadOptionsWithUUID:scanUUID assetAudience:alternateAssetAudienceUUID];

    goto LABEL_6;
  }

  if (operation != 3)
  {
    if (operation != 4)
    {
      v26 = objc_alloc(MEMORY[0x277CCACA8]);
      _operationName = [(SUCoreScan *)self _operationName];
      v13 = [v26 initWithFormat:@"downloadCatalog received unsupported SUCoreScanOperation (%@)", _operationName];

      mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
      oslog = [mEMORY[0x277D64460] oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        [SUCoreScan _downloadCatalog:withIdentifier:];
      }

      goto LABEL_19;
    }

    scanPolicy = [(SUCoreScan *)self scanPolicy];
    scanUUID = [(SUCoreScan *)self scanUUID];
    v13 = [scanPolicy constructMASoftwareUpdateCatalogDownloadOptionsWithUUID:scanUUID assetAudience:0];
LABEL_6:

    if (!v13)
    {
      v15 = objc_alloc(MEMORY[0x277CCACA8]);
      oslog = [(SUCoreScan *)self _operationName];
      scanPolicy2 = [(SUCoreScan *)self scanPolicy];
      summary = [scanPolicy2 summary];
      v19 = [v15 initWithFormat:@"failed to construct MA SU catalog download options (for %@) from scan policy[%@]", oslog, summary];
LABEL_18:
      v13 = v19;

LABEL_19:
      mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
      v31 = 8100;
      v29 = [mEMORY[0x277D643F8] buildError:8100 underlying:0 description:v13];

      scanFSM2 = [(SUCoreScan *)self scanFSM];
      v35 = [[SUCoreScanParam alloc] initWithResult:8100 withError:v29];
      [scanFSM2 postProtectedEvent:@"CatalogDownloadFailed" withInfo:v35];

      goto LABEL_20;
    }

    goto LABEL_9;
  }

  scanPolicy3 = [(SUCoreScan *)self scanPolicy];
  scanUUID2 = [(SUCoreScan *)self scanUUID];
  activeDescriptor = [(SUCoreScan *)self activeDescriptor];
  v13 = [scanPolicy3 constructMADocumentationCatalogDownloadOptionsWithUUID:scanUUID2 usingDescriptor:activeDescriptor];

  if (!v13)
  {
    v32 = objc_alloc(MEMORY[0x277CCACA8]);
    oslog = [(SUCoreScan *)self _operationName];
    scanPolicy2 = [(SUCoreScan *)self scanPolicy];
    summary = [scanPolicy2 summary];
    v19 = [v32 initWithFormat:@"failed to construct MA documentation catalog download options (for %@) from scan policy[%@]", oslog, summary];
    goto LABEL_18;
  }

LABEL_9:
  additionalServerParams = [v13 additionalServerParams];
  v24 = additionalServerParams;
  if (additionalServerParams)
  {
    v25 = additionalServerParams;
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
  [(SUCoreScan *)self _trackScanBegin:@"startCatalogDownload" withIdentifier:identifierCopy];
  v30 = MEMORY[0x277D289C0];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __46__SUCoreScan__downloadCatalog_withIdentifier___block_invoke;
  v37[3] = &unk_27892D200;
  v37[4] = self;
  v38 = identifierCopy;
  [v30 SUCoreBorder_startCatalogDownload:catalogCopy options:v13 completionWithError:v37];

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

- (void)_filterSUQueryResults:(id)results
{
  resultsCopy = results;
  if ([(SUCoreScan *)self operationSPIType]== 1 || [(SUCoreScan *)self operationSPIType]== 3 || [(SUCoreScan *)self phase]== 2)
  {
    [(SUCoreScan *)self _filterSUQueryResultsForSPITypeSingleFromQuery:resultsCopy];
  }

  else if ([(SUCoreScan *)self operationSPIType]== 2)
  {
    [(SUCoreScan *)self _filterSUQueryResultsForSPITypeMajorMinorFromQuery:resultsCopy];
  }

  else
  {
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ unknown operationSPIType found (%i)", self, -[SUCoreScan operationSPIType](self, "operationSPIType")];
    v6 = [mEMORY[0x277D643F8] buildError:8117 underlying:0 description:v5];

    scanFSM = [(SUCoreScan *)self scanFSM];
    diag = [scanFSM diag];
    localizedDescription = [v6 localizedDescription];
    [diag trackAnomaly:@"[SCAN] FILTER_SU_QUERY" forReason:localizedDescription withResult:objc_msgSend(v6 withError:{"code"), v6}];

    scanFSM2 = [(SUCoreScan *)self scanFSM];
    v11 = [[SUCoreScanParam alloc] initWithResult:8117 withError:v6];
    [scanFSM2 postEvent:@"QueryMetadataFailed" withInfo:v11];
  }
}

- (void)_filterSUQueryResultsForSPITypeSingleFromQuery:(id)query
{
  v50 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  scanPolicy = [(SUCoreScan *)self scanPolicy];
  v46 = 0;
  v47 = 0;
  [scanPolicy selectSoftwareUpdatePrimaryAsset:&v47 secondaryAsset:&v46 fromAssetQuery:queryCopy];
  v6 = v47;
  v7 = v46;

  if (v6)
  {
    operation = [(SUCoreScan *)self operation];
    if ((operation - 1) < 2)
    {
      postedDate = [queryCopy postedDate];

      if (postedDate)
      {
        postedDate2 = [queryCopy postedDate];
      }

      else
      {
        mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
        oslog = [mEMORY[0x277D64460] oslog];

        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy = self;
          _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ Asset query did not return posting date. Setting posting date to now", buf, 0xCu);
        }

        postedDate2 = [MEMORY[0x277CBEAA8] date];
      }

      scanFSM2 = postedDate2;
      v35 = [SUCoreDescriptor alloc];
      scanPolicy2 = [(SUCoreScan *)self scanPolicy];
      defaultDescriptorValues = [scanPolicy2 defaultDescriptorValues];
      v38 = [(SUCoreDescriptor *)v35 initWithSUAsset:v6 releaseDate:scanFSM2 defaultValues:defaultDescriptorValues];

      if (v7)
      {
        v39 = [SUCoreDescriptor alloc];
        scanPolicy3 = [(SUCoreScan *)self scanPolicy];
        defaultDescriptorValues2 = [scanPolicy3 defaultDescriptorValues];
        diag = [(SUCoreDescriptor *)v39 initWithSUAsset:v7 releaseDate:scanFSM2 defaultValues:defaultDescriptorValues2];
      }

      else
      {
        diag = 0;
      }

      scanFSM = [(SUCoreScan *)self scanFSM];
      v42 = [SUCoreScanParam alloc];
      if (v38)
      {
        v43 = [(SUCoreScanParam *)v42 initWithDescriptor:v38 withFallbackDescriptor:diag];
        [scanFSM postEvent:@"QueryMetadataUpdateAvailable" withInfo:v43];

        diag = v38;
        goto LABEL_27;
      }

      v44 = [(SUCoreScanParam *)v42 initWithResult:8406 withError:0];
      [scanFSM postEvent:@"QueryMetadataNoAssetFound" withInfo:v44];
    }

    else
    {
      if (operation == 3)
      {
        scanFSM2 = [(SUCoreScan *)self scanFSM];
        diag = [scanFSM2 diag];
        scanFSM = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ SUCoreScanOperation (SU_SCAN_OP_COLLECT) should never filter SU query results", self];
        v29 = @"[SCAN] FILTER_SU_QUERY";
        v30 = diag;
        v31 = scanFSM;
        v32 = 8115;
      }

      else
      {
        if (operation == 4)
        {
          primaryUpdateAsset = [(SUCoreScan *)self primaryUpdateAsset];

          if (primaryUpdateAsset)
          {
            scanFSM3 = [(SUCoreScan *)self scanFSM];
            diag2 = [scanFSM3 diag];
            v12 = objc_alloc(MEMORY[0x277CCACA8]);
            primaryUpdateAsset2 = [(SUCoreScan *)self primaryUpdateAsset];
            assetId = [primaryUpdateAsset2 assetId];
            v15 = [v12 initWithFormat:@"%@ discarding existing primary update asset ID:%@", self, assetId];
            [diag2 trackAnomaly:@"[SCAN] FILTER_SU_QUERY" forReason:v15 withResult:8111 withError:0];
          }

          [(SUCoreScan *)self setPrimaryUpdateAsset:v6];
          secondaryUpdateAsset = [(SUCoreScan *)self secondaryUpdateAsset];

          if (secondaryUpdateAsset)
          {
            scanFSM4 = [(SUCoreScan *)self scanFSM];
            diag3 = [scanFSM4 diag];
            v19 = objc_alloc(MEMORY[0x277CCACA8]);
            secondaryUpdateAsset2 = [(SUCoreScan *)self secondaryUpdateAsset];
            assetId2 = [secondaryUpdateAsset2 assetId];
            v22 = [v19 initWithFormat:@"%@ discarding existing secondary update asset ID:%@", self, assetId2];
            [diag3 trackAnomaly:@"[SCAN] FILTER_SU_QUERY" forReason:v22 withResult:8111 withError:0];
          }

          [(SUCoreScan *)self setSecondaryUpdateAsset:v7];
          scanFSM2 = [(SUCoreScan *)self scanFSM];
          diag = objc_alloc_init(SUCoreScanParam);
          v25 = @"QueryMetadataUpdateAvailable";
          goto LABEL_11;
        }

        scanFSM2 = [(SUCoreScan *)self scanFSM];
        diag = [scanFSM2 diag];
        scanFSM = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ filter SU query results for unknown operation:%d", self, -[SUCoreScan operation](self, "operation")];
        v29 = @"[SCAN] UNKNOWN OPERATION";
        v30 = diag;
        v31 = scanFSM;
        v32 = 8117;
      }

      [(SUCoreScanParam *)v30 trackAnomaly:v29 forReason:v31 withResult:v32 withError:0];
    }

    goto LABEL_27;
  }

  scanFSM2 = [(SUCoreScan *)self scanFSM];
  diag = [[SUCoreScanParam alloc] initWithResult:8406 withError:0];
  v25 = @"QueryMetadataNoAssetFound";
LABEL_11:
  [scanFSM2 postEvent:v25 withInfo:diag];
LABEL_27:

  v45 = *MEMORY[0x277D85DE8];
}

- (void)_filterSUQueryResultsForSPITypeMajorMinorFromQuery:(id)query
{
  v47 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  if ([(SUCoreScan *)self operation]== 1)
  {
    scanPolicy = [(SUCoreScan *)self scanPolicy];
    v43 = 0;
    v44 = 0;
    v41 = 0;
    v42 = 0;
    [scanPolicy selectSoftwareUpdateMajorPrimaryAsset:&v44 majorSecondaryAsset:&v43 minorPrimaryAsset:&v42 minorSecondaryAsset:&v41 fromAssetQuery:queryCopy];
    v6 = v44;
    v7 = v43;
    v8 = v42;
    v40 = v41;

    postedDate = [queryCopy postedDate];

    if (postedDate)
    {
      postedDate2 = [queryCopy postedDate];
    }

    else
    {
      mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
      oslog = [mEMORY[0x277D64460] oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ Asset query did not return posting date. Setting posting date to now", buf, 0xCu);
      }

      postedDate2 = [MEMORY[0x277CBEAA8] date];
    }

    v16 = postedDate2;
    if (v6)
    {
      v17 = [SUCoreDescriptor alloc];
      scanPolicy2 = [(SUCoreScan *)self scanPolicy];
      defaultDescriptorValues = [scanPolicy2 defaultDescriptorValues];
      v38 = [(SUCoreDescriptor *)v17 initWithSUAsset:v6 releaseDate:v16 defaultValues:defaultDescriptorValues];
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
      scanPolicy3 = [(SUCoreScan *)self scanPolicy];
      defaultDescriptorValues2 = [scanPolicy3 defaultDescriptorValues];
      v23 = [(SUCoreDescriptor *)v20 initWithSUAsset:v7 releaseDate:v16 defaultValues:defaultDescriptorValues2];

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
      scanPolicy4 = [(SUCoreScan *)self scanPolicy];
      defaultDescriptorValues3 = [scanPolicy4 defaultDescriptorValues];
      v8 = [(SUCoreDescriptor *)v25 initWithSUAsset:v8 releaseDate:v16 defaultValues:defaultDescriptorValues3];
    }

    if (v40)
    {
      v28 = [SUCoreDescriptor alloc];
      scanPolicy5 = [(SUCoreScan *)self scanPolicy];
      defaultDescriptorValues4 = [scanPolicy5 defaultDescriptorValues];
      v31 = [(SUCoreDescriptor *)v28 initWithSUAsset:v40 releaseDate:v16 defaultValues:defaultDescriptorValues4];
    }

    else
    {
      v31 = 0;
    }

    scanFSM = [(SUCoreScan *)self scanFSM];
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

    [scanFSM postEvent:v35 withInfo:v34];
  }

  else
  {
    scanFSM2 = [(SUCoreScan *)self scanFSM];
    diag = [scanFSM2 diag];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ SU_SCAN_OP_CHECK is not supported for current operation", self];
    [diag trackAnomaly:@"[SCAN] FILTER_SU_QUERY" forReason:v13 withResult:8117 withError:0];
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_filterDocQueryResults:(id)results
{
  v24 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  scanPolicy = [(SUCoreScan *)self scanPolicy];
  v19 = 0;
  [scanPolicy selectDocumentationAsset:&v19 fromAssetQuery:resultsCopy];

  v6 = v19;
  if (v6)
  {
    activeDescriptor = [(SUCoreScan *)self activeDescriptor];
    [activeDescriptor assignDocumentationFromAsset:v6 extendingBundleProperties:{objc_msgSend(v6, "wasLocal")}];

    LODWORD(activeDescriptor) = [(SUCoreScan *)self downloadDocumentation];
    scanFSM = [(SUCoreScan *)self scanFSM];
    scanFSM2 = scanFSM;
    if (activeDescriptor)
    {
      v10 = @"QueryMetadataNeedDoc";
    }

    else
    {
      v10 = @"QueryMetadataSuccess";
    }

LABEL_12:
    [scanFSM postEvent:v10];
    goto LABEL_13;
  }

  mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
  requiresDocAssetForUpdate = [mEMORY[0x277D64418] requiresDocAssetForUpdate];

  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (!requiresDocAssetForUpdate)
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      mEMORY[0x277D64418]2 = [MEMORY[0x277D64418] sharedDevice];
      deviceClass = [mEMORY[0x277D64418]2 deviceClass];
      *buf = 138543618;
      selfCopy = self;
      v22 = 2114;
      v23 = deviceClass;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ documentation not required for device: %{public}@", buf, 0x16u);
    }

    scanFSM = [(SUCoreScan *)self scanFSM];
    scanFSM2 = scanFSM;
    v10 = @"QueryMetadataSuccess";
    goto LABEL_12;
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    [(SUCoreScan *)self _filterDocQueryResults:oslog];
  }

  scanFSM2 = [(SUCoreScan *)self scanFSM];
  v15 = [[SUCoreScanParam alloc] initWithResult:8407 withError:0];
  [scanFSM2 postEvent:@"QueryMetadataNoAssetFound" withInfo:v15];

LABEL_13:
  v18 = *MEMORY[0x277D85DE8];
}

- (void)_incrementMobileAssetPending:(id)pending
{
  v16 = *MEMORY[0x277D85DE8];
  pendingCopy = pending;
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUCoreScan *)self setPendingMobileAssetRequests:[(SUCoreScan *)self pendingMobileAssetRequests]+ 1];
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543874;
    selfCopy = self;
    v12 = 2114;
    v13 = pendingCopy;
    v14 = 1024;
    pendingMobileAssetRequests = [(SUCoreScan *)self pendingMobileAssetRequests];
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ [MA_PENDING(INCR)] %{public}@ - incremented MA pending (%d remaining)", &v10, 0x1Cu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (int64_t)_decrementMobileAssetPending:(id)pending
{
  v24 = *MEMORY[0x277D85DE8];
  pendingCopy = pending;
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(SUCoreScan *)self pendingMobileAssetRequests]< 1)
  {
    scanFSM2 = [(SUCoreScan *)self scanFSM];
    diag = [scanFSM2 diag];
    pendingCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ MobileAsset operation completed when nothing pending (%@)", self, pendingCopy];
    [diag trackAnomaly:@"[SCAN] MA_PENDING(DECR)" forReason:pendingCopy withResult:8117 withError:0];

    LODWORD(diag) = [(SUCoreScan *)self pendingMobileAssetRequests];
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    v15 = os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR);
    if ((diag & 0x80000000) != 0)
    {
      if (v15)
      {
        [(SUCoreScan *)self _decrementMobileAssetPending:pendingCopy, oslog];
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
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog2 = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy = self;
      v20 = 2114;
      v21 = pendingCopy;
      v22 = 1024;
      pendingMobileAssetRequests = [(SUCoreScan *)self pendingMobileAssetRequests];
      _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "%{public}@ [MA_PENDING(DECR)] %{public}@ - decremented MA pending (%d remaining)", buf, 0x1Cu);
    }

    v9 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_trackScanBegin:(id)begin withIdentifier:(id)identifier
{
  identifierCopy = identifier;
  beginCopy = begin;
  scanFSM = [(SUCoreScan *)self scanFSM];
  diag = [scanFSM diag];
  [diag trackBegin:beginCopy atLevel:1 forModule:@"scan" withIdentifier:identifierCopy];
}

- (void)_trackScanEnd:(id)end withIdentifier:(id)identifier withResult:(int64_t)result withError:(id)error
{
  errorCopy = error;
  identifierCopy = identifier;
  endCopy = end;
  scanFSM = [(SUCoreScan *)self scanFSM];
  diag = [scanFSM diag];
  [diag trackEnd:endCopy atLevel:1 forModule:@"scan" withIdentifier:identifierCopy withResult:result withError:errorCopy];
}

- (id)_createEvent:(id)event
{
  eventCopy = event;
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setSafeObject:eventCopy forKey:*MEMORY[0x277D64740]];

  scanUUID = [(SUCoreScan *)self scanUUID];
  [dictionary setSafeObject:scanUUID forKey:*MEMORY[0x277D647B8]];

  v9 = objc_alloc_init(SUCoreEventAugmenter);
  scanPolicy = [(SUCoreScan *)self scanPolicy];
  [(SUCoreEventAugmenter *)v9 setPolicy:scanPolicy];

  psusPrimaryDescriptor = [(SUCoreScan *)self psusPrimaryDescriptor];
  [(SUCoreEventAugmenter *)v9 setPrimaryDescriptor:psusPrimaryDescriptor];

  [(SUCoreEventAugmenter *)v9 augmentEvent:dictionary];

  return dictionary;
}

- (void)_reportPSUSDetermineStartedEvent
{
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v5 = [(SUCoreScan *)self _createEvent:*MEMORY[0x277D64788]];
  [v5 setSafeObject:*MEMORY[0x277D64760] forKey:*MEMORY[0x277D64748]];
  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  miscellaneousTaksQueue = [mEMORY[0x277D643F8] miscellaneousTaksQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SUCoreScan__reportPSUSDetermineStartedEvent__block_invoke;
  block[3] = &unk_27892C8A8;
  v10 = v5;
  v8 = v5;
  dispatch_async(miscellaneousTaksQueue, block);
}

void __46__SUCoreScan__reportPSUSDetermineStartedEvent__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D64448] sharedReporter];
  [v2 sendEvent:*(a1 + 32)];
}

- (void)_reportPSUSDetermineFinishedEvent:(id)event duration:(double)duration
{
  eventCopy = event;
  scanFSM = [(SUCoreScan *)self scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v9 = [(SUCoreScan *)self _createEvent:*MEMORY[0x277D64780]];
  v10 = v9;
  if (eventCopy)
  {
    [MEMORY[0x277D64448] augmentEvent:v9 withError:eventCopy];
  }

  else
  {
    [v9 setSafeObject:*MEMORY[0x277D64760] forKey:*MEMORY[0x277D64748]];
  }

  duration = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", duration];
  [v10 setSafeObject:duration forKey:*MEMORY[0x277D645D0]];

  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  miscellaneousTaksQueue = [mEMORY[0x277D643F8] miscellaneousTaksQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SUCoreScan__reportPSUSDetermineFinishedEvent_duration___block_invoke;
  block[3] = &unk_27892C8A8;
  v16 = v10;
  v14 = v10;
  dispatch_async(miscellaneousTaksQueue, block);
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