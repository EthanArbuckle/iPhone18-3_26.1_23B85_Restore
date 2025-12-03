@interface SUManagerEngine
+ (BOOL)shouldHideInstallAlertForCoreDescriptor:(id)descriptor;
+ (id)SUDescriptorFromCoreDescriptor:(id)descriptor;
+ (id)SUDescriptorFromRollbackDescriptor:(id)descriptor;
+ (id)_generateStateTable;
+ (id)rollbackDescriptorForSUCoreRollbackDescriptor:(id)descriptor;
+ (int)softwareUpdateTypeForDescriptor:(id)descriptor;
+ (unint64_t)SUCoreAudienceTypeToSUSAudienceType:(int64_t)type;
+ (unint64_t)SUCorePreferredTypeToSUSPreferenceType:(int64_t)type;
+ (unint64_t)upgradeTypeForCoreDescriptor:(id)descriptor;
- (BOOL)_queue_createBrainLoadLockAssertion:(id *)assertion;
- (BOOL)isBrainNetworkError:(id)error;
- (BOOL)isBrainReloadError:(id)error;
- (SUManagerEngine)initWithDelegate:(id)delegate;
- (SUManagerEngineDelegate)managerDelegate;
- (id)SUOperationProgressFromSUCoreProgress:(id)progress;
- (id)availableRollback;
- (id)previousRollback;
- (id)rollbackPolicy;
- (id)updatePolicy;
- (int64_t)actionUnknownAction:(id)action error:(id *)error;
- (int64_t)action_ArmInstallOrFail:(id)fail error:(id *)error;
- (int64_t)action_BrainLoaded:(id)loaded error:(id *)error;
- (int64_t)action_Cancel:(id)cancel error:(id *)error;
- (int64_t)action_CanceledDownloadRequested:(id)requested error:(id *)error;
- (int64_t)action_CheckLockAndNetwork:(id)network error:(id *)error;
- (int64_t)action_DownloadAndPrepare:(id)prepare error:(id *)error;
- (int64_t)action_HandleCanceledPendingRollback:(id)rollback error:(id *)error;
- (int64_t)action_HandlePendingDownload:(id)download error:(id *)error;
- (int64_t)action_HandlePendingRollback:(id)rollback error:(id *)error;
- (int64_t)action_InstallArmed:(id)armed error:(id *)error;
- (int64_t)action_InstallUpdate:(id)update error:(id *)error;
- (int64_t)action_LoadBrain:(id)brain error:(id *)error;
- (int64_t)action_NewDownloadPending:(id)pending error:(id *)error;
- (int64_t)action_Prepare:(id)prepare error:(id *)error;
- (int64_t)action_ReloadBrain:(id)brain error:(id *)error;
- (int64_t)action_RemoveAll:(id)all error:(id *)error;
- (int64_t)action_RemoveAllPreserveCache:(id)cache error:(id *)error;
- (int64_t)action_RemovePreserving:(id)preserving error:(id *)error;
- (int64_t)action_ReportApplyFailed:(id)failed error:(id *)error;
- (int64_t)action_ReportApplyFailedRemoveAll:(id)all error:(id *)error;
- (int64_t)action_ReportAwaitingReboot:(id)reboot error:(id *)error;
- (int64_t)action_ReportDownloadAwaitingReboot:(id)reboot error:(id *)error;
- (int64_t)action_ReportDownloadFailedNoUpdate:(id)update error:(id *)error;
- (int64_t)action_ReportDownloadFailedRemoveAll:(id)all error:(id *)error;
- (int64_t)action_ReportDownloadFailedRollingBack:(id)back error:(id *)error;
- (int64_t)action_ReportDownloadInstalling:(id)installing error:(id *)error;
- (int64_t)action_ReportDownloadProgress:(id)progress error:(id *)error;
- (int64_t)action_ReportInstallAwaitingReboot:(id)reboot error:(id *)error;
- (int64_t)action_ReportInstallFailedNoUpdate:(id)update error:(id *)error;
- (int64_t)action_ReportInstallFailedRollingBack:(id)back error:(id *)error;
- (int64_t)action_ReportPrepared:(id)prepared error:(id *)error;
- (int64_t)action_ReportPreparedSet:(id)set error:(id *)error;
- (int64_t)action_ReportRemoveAwaitingReboot:(id)reboot error:(id *)error;
- (int64_t)action_ReportRemoveFailedRollingBack:(id)back error:(id *)error;
- (int64_t)action_ReportRemoveInstalling:(id)installing error:(id *)error;
- (int64_t)action_ReportRollbackAwaitingReboot:(id)reboot error:(id *)error;
- (int64_t)action_ReportRollbackFailed:(id)failed error:(id *)error;
- (int64_t)action_ReportRollbackInstalling:(id)installing error:(id *)error;
- (int64_t)action_ReportRollbackSucceeded:(id)succeeded error:(id *)error;
- (int64_t)action_Resume:(id)resume error:(id *)error;
- (int64_t)action_RollbackUpdate:(id)update error:(id *)error;
- (int64_t)loadBrainHelper:(id)helper;
- (int64_t)performAction:(id)action onEvent:(id)event inState:(id)state withInfo:(id)info nextState:(id)nextState error:(id *)error;
- (void)_queue_cancelLockAssertion;
- (void)_updatePolicyFactoryMetricEventFields:(id)fields updateUUID:(id)d cleanupLevel:(id)level;
- (void)actionHelper_ReportApplyFailed:(id)failed;
- (void)actionHelper_ReportDownloadFailedRollingBack;
- (void)actionHelper_ReportInstallFailedNoUpdate;
- (void)actionHelper_ReportInstallFailedRollingBack;
- (void)actionHelper_ReportPrepared:(BOOL)prepared;
- (void)actionHelper_ReportRemoveFailedRollingBack;
- (void)actionHelper_ReportRollbackCompleted:(id)completed withError:(id)error;
- (void)activateLoadingPersisted:(id)persisted;
- (void)applyAttemptFailed:(id)failed;
- (void)cancelLockAssertion;
- (void)createBrainLoadLockAssertion:(id)assertion;
- (void)downloadUpdate:(id)update;
- (void)installUpdate:(id)update;
- (void)notifyRollbackStarted:(id)started;
- (void)onUnlock;
- (void)pathSatisficationStatusChangedTo:(BOOL)to;
- (void)refreshInstallTonightConfig:(id)config;
- (void)removeUpdateKeepingDocAssets:(BOOL)assets;
- (void)resetPolicy;
- (void)rollbackAttemptFailed:(id)failed withError:(id)error;
- (void)rollbackUpdateWithOptions:(id)options;
- (void)updateAnomaly:(id)anomaly;
- (void)updateApplied;
- (void)updateAssetDownloadPreflighted;
- (void)updateAssetDownloadProgress:(id)progress;
- (void)updateAssetDownloadStalled:(id)stalled;
- (void)updateAssetDownloaded:(id)downloaded;
- (void)updateAttemptFailed:(id)failed;
- (void)updateBrainLoadProgress:(id)progress;
- (void)updateBrainLoadStalled:(id)stalled;
- (void)updateBrainLoaded:(id)loaded;
- (void)updateCanceled;
- (void)updatePrepareProgress:(id)progress;
- (void)updatePrepared:(id)prepared;
- (void)updateRolledBack:(id)back;
@end

@implementation SUManagerEngine

+ (id)_generateStateTable
{
  v458[18] = *MEMORY[0x277D85DE8];
  v457[0] = *MEMORY[0x277D643F0];
  v455[0] = @"DownloadAndPrepare";
  v453 = *MEMORY[0x277D644B0];
  v2 = v453;
  v454 = @"ReportDownloadFailedNoUpdate";
  v160 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v454 forKeys:&v453 count:1];
  v456[0] = v160;
  v455[1] = @"InstallUpdate";
  v451 = v2;
  v452 = @"ReportInstallFailedNoUpdate";
  v159 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v452 forKeys:&v451 count:1];
  v456[1] = v159;
  v455[2] = @"RollbackRequested";
  v449 = v2;
  v450 = *MEMORY[0x277D64380];
  v127 = v450;
  v158 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v450 forKeys:&v449 count:1];
  v456[2] = v158;
  v455[3] = @"ActivateNoPersisted";
  v447[0] = *MEMORY[0x277D647F8];
  v3 = v447[0];
  v447[1] = v2;
  v448[0] = @"RemovingAll";
  v448[1] = @"RemoveAll";
  v157 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v448 forKeys:v447 count:2];
  v456[3] = v157;
  v455[4] = @"ActivateHavePersisted";
  v445[0] = v3;
  v445[1] = v2;
  v446[0] = @"RemovingExceptPreserved";
  v446[1] = @"RemovePreserving";
  v156 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v446 forKeys:v445 count:2];
  v456[4] = v156;
  v155 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v456 forKeys:v455 count:5];
  v458[0] = v155;
  v457[1] = @"RemovingExceptPreserved";
  v443[0] = @"DownloadAndPrepare";
  v441[0] = v3;
  v441[1] = v2;
  v442[0] = @"CancelingDownloadRequested";
  v442[1] = @"NewDownloadPending";
  v154 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v442 forKeys:v441 count:2];
  v444[0] = v154;
  v443[1] = @"InstallUpdate";
  v439 = v2;
  v440 = @"ReportInstallFailedNoUpdate";
  v153 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v440 forKeys:&v439 count:1];
  v444[1] = v153;
  v443[2] = @"RemoveUpdate";
  v437 = v3;
  v438 = @"CancelingRemoveRequested";
  v152 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v438 forKeys:&v437 count:1];
  v444[2] = v152;
  v443[3] = @"RollbackRequested";
  v435 = v3;
  v436 = @"CancelingRollbackRequested";
  v151 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v436 forKeys:&v435 count:1];
  v444[3] = v151;
  v443[4] = @"PreservedInvalid";
  v433[0] = v3;
  v433[1] = v2;
  v434[0] = @"RemovingAll";
  v434[1] = @"RemoveAll";
  v150 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v434 forKeys:v433 count:2];
  v444[4] = v150;
  v443[5] = @"PreservedValidated";
  v4 = *MEMORY[0x277D643D0];
  v431[0] = v3;
  v431[1] = v2;
  v5 = *MEMORY[0x277D64360];
  v432[0] = v4;
  v432[1] = v5;
  v149 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v432 forKeys:v431 count:2];
  v444[5] = v149;
  v148 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v444 forKeys:v443 count:6];
  v458[1] = v148;
  v457[2] = @"RemovingAll";
  v429[0] = @"DownloadAndPrepare";
  v427[0] = v3;
  v427[1] = v2;
  v428[0] = @"RemovingAllDownloadRequested";
  v428[1] = @"NewDownloadPending";
  v147 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v428 forKeys:v427 count:2];
  v430[0] = v147;
  v429[1] = @"InstallUpdate";
  v425 = v2;
  v426 = @"ReportInstallFailedNoUpdate";
  v146 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v426 forKeys:&v425 count:1];
  v430[1] = v146;
  v429[2] = @"RemoveUpdate";
  v423 = v2;
  v424 = *MEMORY[0x277D647D8];
  v164 = v424;
  v145 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v424 forKeys:&v423 count:1];
  v430[2] = v145;
  v429[3] = @"RollbackRequested";
  v421 = v3;
  v422 = @"RemovingAllRollbackRequested";
  v144 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v422 forKeys:&v421 count:1];
  v430[3] = v144;
  v429[4] = @"RemovedAll";
  v165 = *MEMORY[0x277D643E0];
  v419[0] = v3;
  v419[1] = v2;
  v420[0] = v165;
  v420[1] = @"ActivatedClean";
  v143 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v420 forKeys:v419 count:2];
  v430[4] = v143;
  v142 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v430 forKeys:v429 count:5];
  v458[2] = v142;
  v457[3] = @"RemovingAllDownloadRequested";
  v417[0] = @"DownloadAndPrepare";
  v415 = v2;
  v416 = @"NewDownloadPending";
  v141 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v416 forKeys:&v415 count:1];
  v418[0] = v141;
  v417[1] = @"InstallUpdate";
  v413 = v2;
  v414 = @"ReportInstallFailedNoUpdate";
  v140 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v414 forKeys:&v413 count:1];
  v418[1] = v140;
  v417[2] = @"RemoveUpdate";
  v411 = v3;
  v412 = @"RemovingAll";
  v139 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v412 forKeys:&v411 count:1];
  v418[2] = v139;
  v417[3] = @"RollbackRequested";
  v409 = v3;
  v410 = @"RemovingAllRollbackRequested";
  v138 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v410 forKeys:&v409 count:1];
  v418[3] = v138;
  v417[4] = @"RemovedAll";
  v407 = v2;
  v408 = @"HandlePendingDownload";
  v137 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v408 forKeys:&v407 count:1];
  v418[4] = v137;
  v417[5] = @"ReadyToDownload";
  v405[0] = v3;
  v405[1] = v2;
  v406[0] = v4;
  v406[1] = v5;
  v136 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v406 forKeys:v405 count:2];
  v418[5] = v136;
  v135 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v418 forKeys:v417 count:6];
  v458[3] = v135;
  v457[4] = @"RemovingAllRollbackRequested";
  v403[0] = @"DownloadAndPrepare";
  v401 = v2;
  v402 = @"ReportDownloadFailedRollingBack";
  v134 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v402 forKeys:&v401 count:1];
  v404[0] = v134;
  v403[1] = @"InstallUpdate";
  v399 = v2;
  v400 = @"ReportInstallFailedRollingBack";
  v133 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v400 forKeys:&v399 count:1];
  v404[1] = v133;
  v403[2] = @"RemoveUpdate";
  v397 = v2;
  v398 = v164;
  v132 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v398 forKeys:&v397 count:1];
  v404[2] = v132;
  v403[3] = @"RollbackRequested";
  v395 = v2;
  v396 = v164;
  v131 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v396 forKeys:&v395 count:1];
  v404[3] = v131;
  v403[4] = @"RemovedAll";
  v393 = v2;
  v394 = @"HandleCanceledPendingRollback";
  v130 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v394 forKeys:&v393 count:1];
  v404[4] = v130;
  v403[5] = @"ReadyToRollback";
  v391[0] = v3;
  v391[1] = v2;
  v392[0] = @"RollingBack";
  v392[1] = @"PerformRollback";
  v129 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v392 forKeys:v391 count:2];
  v404[5] = v129;
  v128 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v404 forKeys:v403 count:6];
  v458[4] = v128;
  v457[5] = @"CancelingDownloadRequested";
  v389[0] = @"DownloadAndPrepare";
  v387 = v2;
  v388 = @"NewDownloadPending";
  v126 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v388 forKeys:&v387 count:1];
  v390[0] = v126;
  v389[1] = @"InstallUpdate";
  v385 = v2;
  v386 = @"ReportInstallFailedNoUpdate";
  v125 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v386 forKeys:&v385 count:1];
  v390[1] = v125;
  v389[2] = @"RemoveUpdate";
  v383 = v3;
  v384 = @"CancelingRemoveRequested";
  v124 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v384 forKeys:&v383 count:1];
  v390[2] = v124;
  v389[3] = @"RollbackRequested";
  v381 = v3;
  v382 = @"CancelingRollbackRequested";
  v123 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v382 forKeys:&v381 count:1];
  v390[3] = v123;
  v389[4] = @"UpdateCanceled";
  v379 = v2;
  v380 = @"CanceledDownloadRequested";
  v122 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v380 forKeys:&v379 count:1];
  v390[4] = v122;
  v389[5] = @"UpdateFailed";
  v377 = v2;
  v378 = @"CanceledDownloadRequested";
  v121 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v378 forKeys:&v377 count:1];
  v390[5] = v121;
  v389[6] = @"PreservedInvalid";
  v375 = v2;
  v376 = @"CanceledDownloadRequested";
  v120 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v376 forKeys:&v375 count:1];
  v390[6] = v120;
  v389[7] = @"PreservedValidated";
  v373 = v2;
  v374 = @"CanceledDownloadRequested";
  v119 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v374 forKeys:&v373 count:1];
  v390[7] = v119;
  v389[8] = @"ReadyToDownload";
  v371[0] = v3;
  v371[1] = v2;
  v372[0] = @"RemovingExceptPreserved";
  v372[1] = @"RemovePreserving";
  v118 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v372 forKeys:v371 count:2];
  v390[8] = v118;
  v117 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v390 forKeys:v389 count:9];
  v458[5] = v117;
  v457[6] = @"CancelingRollbackRequested";
  v369[0] = @"DownloadAndPrepare";
  v367 = v2;
  v368 = @"ReportDownloadFailedRollingBack";
  v116 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v368 forKeys:&v367 count:1];
  v370[0] = v116;
  v369[1] = @"InstallUpdate";
  v365 = v2;
  v366 = @"ReportInstallFailedRollingBack";
  v115 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v366 forKeys:&v365 count:1];
  v370[1] = v115;
  v369[2] = @"RemoveUpdate";
  v363 = v2;
  v364 = v164;
  v114 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v364 forKeys:&v363 count:1];
  v370[2] = v114;
  v369[3] = @"RollbackRequested";
  v361 = v2;
  v362 = v164;
  v113 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v362 forKeys:&v361 count:1];
  v370[3] = v113;
  v369[4] = @"UpdateCanceled";
  v359 = v2;
  v360 = @"HandleCanceledPendingRollback";
  v112 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v360 forKeys:&v359 count:1];
  v370[4] = v112;
  v369[5] = @"UpdateFailed";
  v357 = v2;
  v358 = @"HandleCanceledPendingRollback";
  v111 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v358 forKeys:&v357 count:1];
  v370[5] = v111;
  v369[6] = @"PreservedInvalid";
  v355 = v2;
  v356 = @"HandleCanceledPendingRollback";
  v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v356 forKeys:&v355 count:1];
  v370[6] = v110;
  v369[7] = @"PreservedValidated";
  v353 = v2;
  v354 = @"HandleCanceledPendingRollback";
  v109 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v354 forKeys:&v353 count:1];
  v370[7] = v109;
  v369[8] = @"ReadyToRollback";
  v351[0] = v3;
  v351[1] = v2;
  v352[0] = @"RollingBack";
  v352[1] = @"PerformRollback";
  v108 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v352 forKeys:v351 count:2];
  v370[8] = v108;
  v107 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v370 forKeys:v369 count:9];
  v458[6] = v107;
  v457[7] = @"CancelingRemoveRequested";
  v349[0] = @"DownloadAndPrepare";
  v347[0] = v3;
  v347[1] = v2;
  v348[0] = @"CancelingDownloadRequested";
  v348[1] = @"NewDownloadPending";
  v106 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v348 forKeys:v347 count:2];
  v350[0] = v106;
  v349[1] = @"InstallUpdate";
  v345 = v2;
  v346 = @"ReportInstallFailedNoUpdate";
  v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v346 forKeys:&v345 count:1];
  v350[1] = v105;
  v349[2] = @"RemoveUpdate";
  v343 = v2;
  v344 = v164;
  v104 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v344 forKeys:&v343 count:1];
  v350[2] = v104;
  v349[3] = @"RollbackRequested";
  v341 = v3;
  v342 = @"CancelingRollbackRequested";
  v103 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v342 forKeys:&v341 count:1];
  v350[3] = v103;
  v349[4] = @"UpdateCanceled";
  v339[0] = v3;
  v339[1] = v2;
  v340[0] = @"RemovingAll";
  v340[1] = @"RemoveAll";
  v102 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v340 forKeys:v339 count:2];
  v350[4] = v102;
  v349[5] = @"UpdateFailed";
  v337[0] = v3;
  v337[1] = v2;
  v338[0] = @"RemovingAll";
  v338[1] = @"RemoveAll";
  v101 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v338 forKeys:v337 count:2];
  v350[5] = v101;
  v349[6] = @"PreservedValidated";
  v335[0] = v3;
  v335[1] = v2;
  v336[0] = @"RemovingAll";
  v336[1] = @"RemoveAll";
  v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v336 forKeys:v335 count:2];
  v350[6] = v100;
  v349[7] = @"PreservedInvalid";
  v333[0] = v3;
  v333[1] = v2;
  v334[0] = @"RemovingAll";
  v334[1] = @"RemoveAll";
  v99 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v334 forKeys:v333 count:2];
  v350[7] = v99;
  v98 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v350 forKeys:v349 count:8];
  v458[7] = v98;
  v457[8] = v165;
  v331[0] = @"DownloadAndPrepare";
  v329[0] = v3;
  v329[1] = v2;
  v330[0] = v4;
  v330[1] = v5;
  v97 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v330 forKeys:v329 count:2];
  v332[0] = v97;
  v331[1] = @"InstallUpdate";
  v327 = v2;
  v328 = @"ReportInstallFailedNoUpdate";
  v96 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v328 forKeys:&v327 count:1];
  v332[1] = v96;
  v331[2] = @"RemoveUpdate";
  v325[0] = v3;
  v325[1] = v2;
  v326[0] = @"RemovingAll";
  v326[1] = @"RemoveAll";
  v95 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v326 forKeys:v325 count:2];
  v332[2] = v95;
  v331[3] = @"RollbackRequested";
  v323 = v2;
  v324 = @"HandlePendingRollback";
  v94 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v324 forKeys:&v323 count:1];
  v332[3] = v94;
  v331[4] = @"ReadyToRollback";
  v321[0] = v3;
  v321[1] = v2;
  v322[0] = @"RollingBack";
  v322[1] = @"PerformRollback";
  v93 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v322 forKeys:v321 count:2];
  v332[4] = v93;
  v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v332 forKeys:v331 count:5];
  v458[8] = v92;
  v457[9] = v4;
  v319[0] = @"DownloadAndPrepare";
  v317[0] = v3;
  v317[1] = v2;
  v318[0] = @"CancelingDownloadRequested";
  v318[1] = @"Cancel";
  v91 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v318 forKeys:v317 count:2];
  v320[0] = v91;
  v319[1] = @"InstallUpdate";
  v315 = v2;
  v316 = @"ArmInstallOrFail";
  v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v316 forKeys:&v315 count:1];
  v320[1] = v90;
  v319[2] = @"RemoveUpdate";
  v313[0] = v3;
  v313[1] = v2;
  v314[0] = @"CancelingRemoveRequested";
  v314[1] = @"Cancel";
  v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v314 forKeys:v313 count:2];
  v320[2] = v89;
  v319[3] = @"RollbackRequested";
  v311[0] = v3;
  v311[1] = v2;
  v312[0] = @"CancelingRollbackRequested";
  v312[1] = @"Cancel";
  v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v312 forKeys:v311 count:2];
  v320[3] = v88;
  v319[4] = @"BrainLoading";
  v309 = v2;
  v310 = @"Activated";
  v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v310 forKeys:&v309 count:1];
  v320[4] = v87;
  v319[5] = *MEMORY[0x277D643B0];
  v307 = v2;
  v308 = @"BrainLoaded";
  v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v308 forKeys:&v307 count:1];
  v320[5] = v86;
  v319[6] = @"BrainLoaded";
  v305[0] = v3;
  v305[1] = v2;
  v306[0] = @"DownloadAndPrepare";
  v306[1] = @"DownloadAndPrepare";
  v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v306 forKeys:v305 count:2];
  v320[6] = v85;
  v319[7] = @"AlreadyDownloaded";
  v303[0] = v3;
  v303[1] = v2;
  v304[0] = @"DownloadAndPrepare";
  v304[1] = @"Prepare";
  v84 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v304 forKeys:v303 count:2];
  v320[7] = v84;
  v319[8] = @"PrepareInterrupted";
  v6 = *MEMORY[0x277D643E8];
  v301[0] = v3;
  v301[1] = v2;
  v7 = *MEMORY[0x277D64390];
  v302[0] = v6;
  v302[1] = v7;
  v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v302 forKeys:v301 count:2];
  v320[8] = v83;
  v319[9] = @"AlreadyPrepared";
  v8 = *MEMORY[0x277D643D8];
  v299[0] = v3;
  v299[1] = v2;
  v300[0] = v8;
  v300[1] = @"ReportPreparedSet";
  v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v300 forKeys:v299 count:2];
  v320[9] = v82;
  v319[10] = @"ArmedInstall";
  v49 = *MEMORY[0x277D643C0];
  v297[0] = v3;
  v297[1] = v2;
  v298[0] = v49;
  v298[1] = @"InstallArmed";
  v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v298 forKeys:v297 count:2];
  v320[10] = v81;
  v319[11] = @"UpdateProgress";
  v295 = v2;
  v296 = *MEMORY[0x277D64370];
  v46 = v296;
  v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v296 forKeys:&v295 count:1];
  v320[11] = v80;
  v319[12] = @"UpdateFailed";
  v293 = v2;
  v294 = @"CheckLockAndNetwork";
  v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v294 forKeys:&v293 count:1];
  v320[12] = v79;
  v319[13] = @"Unlocked";
  v291 = v2;
  v292 = @"ReloadBrain";
  v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v292 forKeys:&v291 count:1];
  v320[13] = v78;
  v319[14] = @"WaitUnlock";
  v289 = v3;
  v290 = @"WaitingFirstUnlock";
  v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v290 forKeys:&v289 count:1];
  v320[14] = v77;
  v319[15] = @"WaitNetwork";
  v287 = v3;
  v288 = @"WaitingNetwork";
  v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v288 forKeys:&v287 count:1];
  v320[15] = v76;
  v319[16] = *MEMORY[0x277D643A8];
  v285[0] = v3;
  v285[1] = v2;
  v286[0] = @"CancelingRemoveRequested";
  v286[1] = @"ReportDownloadFailedRemoveAll";
  v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v286 forKeys:v285 count:2];
  v320[16] = v75;
  v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v320 forKeys:v319 count:17];
  v458[9] = v74;
  v457[10] = v6;
  v279[0] = @"DownloadAndPrepare";
  v277[0] = v3;
  v277[1] = v2;
  v278[0] = @"CancelingDownloadRequested";
  v278[1] = @"Cancel";
  v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v278 forKeys:v277 count:2];
  v284[0] = v73;
  v279[1] = @"InstallUpdate";
  v275 = v2;
  v276 = @"ReportInstallFailedNoUpdate";
  v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v276 forKeys:&v275 count:1];
  v284[1] = v72;
  v279[2] = @"RemoveUpdate";
  v273[0] = v3;
  v273[1] = v2;
  v274[0] = @"CancelingRemoveRequested";
  v274[1] = @"Cancel";
  v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v274 forKeys:v273 count:2];
  v284[2] = v71;
  v279[3] = @"RollbackRequested";
  v271[0] = v3;
  v271[1] = v2;
  v272[0] = @"CancelingRollbackRequested";
  v272[1] = @"Cancel";
  v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v272 forKeys:v271 count:2];
  v284[3] = v70;
  v279[4] = @"ApplyFailedDone";
  v269 = v2;
  v270 = @"RemoveAllPreserveCache";
  v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v270 forKeys:&v269 count:1];
  v284[4] = v69;
  v280 = *MEMORY[0x277D64398];
  v42 = v280;
  v267 = v2;
  v268 = @"RemoveAllPreserveCache";
  v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v268 forKeys:&v267 count:1];
  v284[5] = v68;
  v281 = @"RemovedAllPreservedCache";
  v265 = v2;
  v266 = @"CanceledDownloadRequested";
  v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v266 forKeys:&v265 count:1];
  v284[6] = v67;
  v282 = @"ReadyToDownload";
  v263[0] = v3;
  v263[1] = v2;
  v264[0] = v4;
  v264[1] = v5;
  v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v264 forKeys:v263 count:2];
  v284[7] = v66;
  v283 = *MEMORY[0x277D643B8];
  v44 = v283;
  v261[0] = v3;
  v261[1] = v2;
  v40 = *MEMORY[0x277D64378];
  v262[0] = v8;
  v262[1] = v40;
  v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v262 forKeys:v261 count:2];
  v284[8] = v65;
  v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v284 forKeys:v279 count:9];
  v458[10] = v64;
  v457[11] = @"WaitingFirstUnlock";
  v259[0] = @"DownloadAndPrepare";
  v257[0] = v3;
  v257[1] = v2;
  v258[0] = @"CancelingDownloadRequested";
  v258[1] = @"Cancel";
  v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v258 forKeys:v257 count:2];
  v260[0] = v63;
  v259[1] = @"InstallUpdate";
  v255 = v2;
  v256 = @"ReportInstallFailedNoUpdate";
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v256 forKeys:&v255 count:1];
  v260[1] = v62;
  v259[2] = @"RemoveUpdate";
  v253[0] = v3;
  v253[1] = v2;
  v254[0] = @"CancelingRemoveRequested";
  v254[1] = @"Cancel";
  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v254 forKeys:v253 count:2];
  v260[2] = v61;
  v259[3] = @"RollbackRequested";
  v251[0] = v3;
  v251[1] = v2;
  v252[0] = @"CancelingRollbackRequested";
  v252[1] = @"Cancel";
  v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v252 forKeys:v251 count:2];
  v260[3] = v60;
  v259[4] = @"Unlocked";
  v249[0] = v3;
  v249[1] = v2;
  v250[0] = v4;
  v250[1] = v5;
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v250 forKeys:v249 count:2];
  v260[4] = v59;
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v260 forKeys:v259 count:5];
  v458[11] = v58;
  v457[12] = @"WaitingNetwork";
  v247[0] = @"DownloadAndPrepare";
  v245[0] = v3;
  v245[1] = v2;
  v246[0] = @"CancelingDownloadRequested";
  v246[1] = @"Cancel";
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v246 forKeys:v245 count:2];
  v248[0] = v57;
  v247[1] = @"InstallUpdate";
  v243 = v2;
  v244 = @"ReportInstallFailedNoUpdate";
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v244 forKeys:&v243 count:1];
  v248[1] = v56;
  v247[2] = @"RemoveUpdate";
  v241[0] = v3;
  v241[1] = v2;
  v242[0] = @"CancelingRemoveRequested";
  v242[1] = @"Cancel";
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v242 forKeys:v241 count:2];
  v248[2] = v55;
  v247[3] = @"RollbackRequested";
  v239[0] = v3;
  v239[1] = v2;
  v240[0] = @"CancelingRollbackRequested";
  v240[1] = @"Cancel";
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v240 forKeys:v239 count:2];
  v248[3] = v54;
  v247[4] = @"NetworkAvailable";
  v237[0] = v3;
  v237[1] = v2;
  v238[0] = v4;
  v238[1] = v5;
  v163 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v238 forKeys:v237 count:2];
  v248[4] = v163;
  v162 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v248 forKeys:v247 count:5];
  v458[12] = v162;
  v457[13] = @"DownloadAndPrepare";
  v235[0] = @"DownloadAndPrepare";
  v233[0] = v3;
  v233[1] = v2;
  v234[0] = @"CancelingDownloadRequested";
  v234[1] = @"Cancel";
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v234 forKeys:v233 count:2];
  v236[0] = v53;
  v235[1] = @"InstallUpdate";
  v231 = v2;
  v232 = @"ReportInstallFailedNoUpdate";
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v232 forKeys:&v231 count:1];
  v236[1] = v52;
  v235[2] = @"RemoveUpdate";
  v229[0] = v3;
  v229[1] = v2;
  v230[0] = @"CancelingRemoveRequested";
  v230[1] = @"Cancel";
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v230 forKeys:v229 count:2];
  v236[2] = v51;
  v235[3] = @"RollbackRequested";
  v227[0] = v3;
  v227[1] = v2;
  v228[0] = @"CancelingRollbackRequested";
  v228[1] = @"Cancel";
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v228 forKeys:v227 count:2];
  v236[3] = v48;
  v235[4] = @"UpdateProgress";
  v225 = v2;
  v226 = v46;
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v226 forKeys:&v225 count:1];
  v236[4] = v47;
  v235[5] = v44;
  v223[0] = v3;
  v223[1] = v2;
  v224[0] = v8;
  v224[1] = v40;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v224 forKeys:v223 count:2];
  v236[5] = v45;
  v235[6] = @"UpdateFailed";
  v221[0] = v3;
  v221[1] = v2;
  v222[0] = @"CancelingRemoveRequested";
  v222[1] = @"ReportDownloadFailedRemoveAll";
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v222 forKeys:v221 count:2];
  v236[6] = v41;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v236 forKeys:v235 count:7];
  v458[13] = v39;
  v457[14] = v8;
  v219[0] = @"DownloadAndPrepare";
  v217[0] = v3;
  v217[1] = v2;
  v218[0] = @"CancelingDownloadRequested";
  v218[1] = @"Cancel";
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v218 forKeys:v217 count:2];
  v220[0] = v38;
  v219[1] = @"InstallUpdate";
  v215[0] = v3;
  v215[1] = v2;
  v216[0] = v49;
  v216[1] = @"InstallUpdate";
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v216 forKeys:v215 count:2];
  v220[1] = v37;
  v219[2] = @"RemoveUpdate";
  v213[0] = v3;
  v213[1] = v2;
  v214[0] = @"RemovingAll";
  v214[1] = @"RemoveAll";
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v214 forKeys:v213 count:2];
  v220[2] = v36;
  v219[3] = @"RollbackRequested";
  v211[0] = v3;
  v211[1] = v2;
  v212[0] = @"CancelingRollbackRequested";
  v212[1] = @"Cancel";
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v212 forKeys:v211 count:2];
  v220[3] = v35;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v220 forKeys:v219 count:4];
  v458[14] = v34;
  v457[15] = v49;
  v209[0] = @"DownloadAndPrepare";
  v207 = v2;
  v208 = @"ReportDownloadInstalling";
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v208 forKeys:&v207 count:1];
  v210[0] = v50;
  v209[1] = @"InstallUpdate";
  v205 = v2;
  v206 = v164;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v206 forKeys:&v205 count:1];
  v210[1] = v33;
  v209[2] = @"RemoveUpdate";
  v203 = v2;
  v204 = @"ReportRemoveInstalling";
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v204 forKeys:&v203 count:1];
  v210[2] = v32;
  v209[3] = @"RollbackRequested";
  v201 = v2;
  v202 = @"ReportRollbackInstalling";
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v202 forKeys:&v201 count:1];
  v210[3] = v31;
  v209[4] = @"UpdateProgress";
  v199 = v2;
  v200 = v164;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v200 forKeys:&v199 count:1];
  v210[4] = v30;
  v209[5] = v42;
  v197[0] = v3;
  v197[1] = v2;
  v9 = *MEMORY[0x277D64368];
  v198[0] = v8;
  v198[1] = v9;
  v161 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v198 forKeys:v197 count:2];
  v210[5] = v161;
  v209[6] = @"ApplyFailedDone";
  v195 = v2;
  v196 = @"ReportApplyFailedRemoveAll";
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v196 forKeys:&v195 count:1];
  v210[6] = v43;
  v209[7] = @"ApplyFailedRemoveNow";
  v193[0] = v3;
  v193[1] = v2;
  v194[0] = @"RemovingAll";
  v194[1] = @"RemoveAll";
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v194 forKeys:v193 count:2];
  v210[7] = v29;
  v209[8] = *MEMORY[0x277D643A0];
  v10 = *MEMORY[0x277D643C8];
  v191[0] = v3;
  v191[1] = v2;
  v192[0] = v10;
  v192[1] = @"ReportAwaitingReboot";
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v192 forKeys:v191 count:2];
  v210[8] = v28;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v210 forKeys:v209 count:9];
  v458[15] = v27;
  v457[16] = @"RollingBack";
  v189[0] = @"DownloadAndPrepare";
  v187 = v2;
  v188 = @"ReportDownloadFailedRollingBack";
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v188 forKeys:&v187 count:1];
  v190[0] = v26;
  v189[1] = @"InstallUpdate";
  v185 = v2;
  v186 = @"ReportInstallFailedRollingBack";
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v186 forKeys:&v185 count:1];
  v190[1] = v25;
  v189[2] = @"RemoveUpdate";
  v183 = v2;
  v184 = @"ReportRemoveFailedRollingBack";
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v184 forKeys:&v183 count:1];
  v190[2] = v24;
  v189[3] = @"RollbackRequested";
  v181 = v2;
  v182 = v164;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v182 forKeys:&v181 count:1];
  v190[3] = v11;
  v189[4] = @"RollbackComplete";
  v179[0] = v3;
  v179[1] = v2;
  v12 = *MEMORY[0x277D64388];
  v180[0] = v10;
  v180[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v180 forKeys:v179 count:2];
  v190[4] = v13;
  v189[5] = @"RollbackFailed";
  v177[0] = v3;
  v177[1] = v2;
  v178[0] = v165;
  v178[1] = v127;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v178 forKeys:v177 count:2];
  v190[5] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v190 forKeys:v189 count:6];
  v458[16] = v15;
  v457[17] = v10;
  v175[0] = @"DownloadAndPrepare";
  v173 = v2;
  v174 = @"ReportDownloadAwaitingReboot";
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v174 forKeys:&v173 count:1];
  v176[0] = v16;
  v175[1] = @"InstallUpdate";
  v171 = v2;
  v172 = @"ReportInstallAwaitingReboot";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v172 forKeys:&v171 count:1];
  v176[1] = v17;
  v175[2] = @"RemoveUpdate";
  v169 = v2;
  v170 = @"ReportRemoveAwaitingReboot";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v170 forKeys:&v169 count:1];
  v176[2] = v18;
  v175[3] = @"RollbackRequested";
  v167 = v2;
  v168 = @"ReportRollbackAwaitingReboot";
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v168 forKeys:&v167 count:1];
  v176[3] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v176 forKeys:v175 count:4];
  v458[17] = v20;
  v166 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v458 forKeys:v457 count:18];

  v21 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v166 copyItems:1];
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (int64_t)performAction:(id)action onEvent:(id)event inState:(id)state withInfo:(id)info nextState:(id)nextState error:(id *)error
{
  actionCopy = action;
  infoCopy = info;
  if ([actionCopy isEqualToString:*MEMORY[0x277D647D8]])
  {
    v13 = 0;
  }

  else
  {
    if ([actionCopy isEqualToString:@"RemovePreserving"])
    {
      v14 = [(SUManagerEngine *)self action_RemovePreserving:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"Activated"])
    {
      v14 = [(SUManagerEngine *)self action_Activated:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ActivatedClean"])
    {
      v14 = [(SUManagerEngine *)self action_ActivatedClean:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"NewDownloadPending"])
    {
      v14 = [(SUManagerEngine *)self action_NewDownloadPending:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"HandlePendingDownload"])
    {
      v14 = [(SUManagerEngine *)self action_HandlePendingDownload:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"CheckLockAndNetwork"])
    {
      v14 = [(SUManagerEngine *)self action_CheckLockAndNetwork:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"BrainLoaded"])
    {
      v14 = [(SUManagerEngine *)self action_BrainLoaded:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:*MEMORY[0x277D64360]])
    {
      v14 = [(SUManagerEngine *)self action_LoadBrain:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReloadBrain"])
    {
      v14 = [(SUManagerEngine *)self action_ReloadBrain:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"DownloadAndPrepare"])
    {
      v14 = [(SUManagerEngine *)self action_DownloadAndPrepare:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"Prepare"])
    {
      v14 = [(SUManagerEngine *)self action_Prepare:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:*MEMORY[0x277D64390]])
    {
      v14 = [(SUManagerEngine *)self action_Resume:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"InstallUpdate"])
    {
      v14 = [(SUManagerEngine *)self action_InstallUpdate:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ArmInstallOrFail"])
    {
      v14 = [(SUManagerEngine *)self action_ArmInstallOrFail:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"InstallArmed"])
    {
      v14 = [(SUManagerEngine *)self action_InstallArmed:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"Cancel"])
    {
      v14 = [(SUManagerEngine *)self action_Cancel:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"CanceledDownloadRequested"])
    {
      v14 = [(SUManagerEngine *)self action_CanceledDownloadRequested:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"RemoveAll"])
    {
      v14 = [(SUManagerEngine *)self action_RemoveAll:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"RemoveAllPreserveCache"])
    {
      v14 = [(SUManagerEngine *)self action_RemoveAllPreserveCache:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"PerformRollback"])
    {
      v14 = [(SUManagerEngine *)self action_RollbackUpdate:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"HandlePendingRollback"])
    {
      v14 = [(SUManagerEngine *)self action_HandlePendingRollback:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"HandleCanceledPendingRollback"])
    {
      v14 = [(SUManagerEngine *)self action_HandleCanceledPendingRollback:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportDownloadFailedRemoveAll"])
    {
      v14 = [(SUManagerEngine *)self action_ReportDownloadFailedRemoveAll:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:*MEMORY[0x277D64370]])
    {
      v14 = [(SUManagerEngine *)self action_ReportDownloadProgress:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportPreparedSet"])
    {
      v14 = [(SUManagerEngine *)self action_ReportPreparedSet:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:*MEMORY[0x277D64378]])
    {
      v14 = [(SUManagerEngine *)self action_ReportPrepared:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:*MEMORY[0x277D64368]])
    {
      v14 = [(SUManagerEngine *)self action_ReportApplyFailed:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportApplyFailedRemoveAll"])
    {
      v14 = [(SUManagerEngine *)self action_ReportApplyFailedRemoveAll:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportDownloadFailedNoUpdate"])
    {
      v14 = [(SUManagerEngine *)self action_ReportDownloadFailedNoUpdate:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportInstallFailedNoUpdate"])
    {
      v14 = [(SUManagerEngine *)self action_ReportInstallFailedNoUpdate:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportDownloadFailedRollingBack"])
    {
      v14 = [(SUManagerEngine *)self action_ReportDownloadFailedRollingBack:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportInstallFailedRollingBack"])
    {
      v14 = [(SUManagerEngine *)self action_ReportInstallFailedRollingBack:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportRemoveFailedRollingBack"])
    {
      v14 = [(SUManagerEngine *)self action_ReportRemoveFailedRollingBack:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportDownloadInstalling"])
    {
      v14 = [(SUManagerEngine *)self action_ReportDownloadInstalling:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportRemoveInstalling"])
    {
      v14 = [(SUManagerEngine *)self action_ReportRemoveInstalling:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportRollbackInstalling"])
    {
      v14 = [(SUManagerEngine *)self action_ReportRollbackInstalling:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportAwaitingReboot"])
    {
      v14 = [(SUManagerEngine *)self action_ReportAwaitingReboot:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportDownloadAwaitingReboot"])
    {
      v14 = [(SUManagerEngine *)self action_ReportDownloadAwaitingReboot:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportInstallAwaitingReboot"])
    {
      v14 = [(SUManagerEngine *)self action_ReportInstallAwaitingReboot:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportRemoveAwaitingReboot"])
    {
      v14 = [(SUManagerEngine *)self action_ReportRemoveAwaitingReboot:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportRollbackAwaitingReboot"])
    {
      v14 = [(SUManagerEngine *)self action_ReportRollbackAwaitingReboot:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:*MEMORY[0x277D64380]])
    {
      v14 = [(SUManagerEngine *)self action_ReportRollbackFailed:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:*MEMORY[0x277D64388]])
    {
      v14 = [(SUManagerEngine *)self action_ReportRollbackSucceeded:infoCopy error:error];
    }

    else
    {
      v14 = [(SUManagerEngine *)self actionUnknownAction:actionCopy error:error];
    }

    v13 = v14;
  }

  return v13;
}

- (int64_t)action_RemovePreserving:(id)preserving error:(id *)error
{
  preservingCopy = preserving;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  paramType = [preservingCopy paramType];
  engineFSM2 = [(SUManagerEngine *)self engineFSM];
  v10 = engineFSM2;
  if (paramType == 2)
  {
    [engineFSM2 postEvent:@"PreservedValidated" withInfo:preservingCopy];
    v11 = 0;
  }

  else
  {
    diag = [engineFSM2 diag];
    v11 = 8102;
    [diag trackAnomaly:@"[ENGINE]" forReason:@"param type is not DOWNLOAD_DESCRIPTOR" withResult:8102 withError:0];
  }

  return v11;
}

- (int64_t)action_NewDownloadPending:(id)pending error:(id *)error
{
  pendingCopy = pending;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  downloadDescriptor = [pendingCopy downloadDescriptor];

  [(SUManagerEngine *)self setDownloadDescriptor:downloadDescriptor];
  return 0;
}

- (int64_t)action_HandlePendingDownload:(id)download error:(id *)error
{
  v5 = [(SUManagerEngine *)self engineFSM:download];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  engineFSM = [(SUManagerEngine *)self engineFSM];
  v8 = [SUManagerEngineParam alloc];
  downloadDescriptor = [(SUManagerEngine *)self downloadDescriptor];
  v10 = [(SUManagerEngineParam *)v8 initWithDownloadDescriptor:downloadDescriptor];
  [engineFSM followupEvent:@"ReadyToDownload" withInfo:v10];

  return 0;
}

- (int64_t)action_CheckLockAndNetwork:(id)network error:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  downloadDescriptor = [(SUManagerEngine *)self downloadDescriptor];
  LODWORD(extendedStateQueue) = [downloadDescriptor disarmInstall];

  if (extendedStateQueue)
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    oslog = [engineLog oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v49 = engineName;
      _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ disarming install", buf, 0xCu);
    }

    [(SUManagerEngine *)self actionHelper_ReportInstallFailedNoUpdate];
  }

  downloadDescriptor2 = [(SUManagerEngine *)self downloadDescriptor];
  asset = [downloadDescriptor2 asset];

  if (!asset)
  {
    goto LABEL_28;
  }

  if (!-[SUManagerEngine isBrainNetworkError:](self, "isBrainNetworkError:", networkCopy) || (+[SUNetworkMonitor sharedInstance](SUNetworkMonitor, "sharedInstance"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 isPathSatisfied], v14, (v15 & 1) != 0))
  {
    if ([(SUManagerEngine *)self isBrainReloadError:networkCopy])
    {
      engineFSM3 = 0;
    }

    else
    {
      downloadDescriptor3 = [(SUManagerEngine *)self downloadDescriptor];
      asset2 = [downloadDescriptor3 asset];
      attributes = [asset2 attributes];
      v20 = SUCoreBorder_MSUBrainIsLoadable();
      engineFSM3 = v20;
      if (v20)
      {
        userInfo = [v20 userInfo];
        v22 = [userInfo objectForKeyedSubscript:@"LoadTrustCachePurgedBrain"];
        v23 = [v22 isEqual:MEMORY[0x277CBEC38]];

        if (!v23)
        {
          v24 = +[SUKeybagInterface sharedInstance];
          isPasscodeLocked = [v24 isPasscodeLocked];

          if (isPasscodeLocked)
          {
            managerDelegate = [(SUManagerEngine *)self managerDelegate];
            v27 = objc_opt_respondsToSelector();

            engineLog2 = [(SUManagerEngine *)self engineLog];
            oslog2 = [engineLog2 oslog];

            v30 = os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT);
            if (v27)
            {
              if (v30)
              {
                engineName2 = [(SUManagerEngine *)self engineName];
                *buf = 138412290;
                v49 = engineName2;
                _os_log_impl(&dword_26AB34000, oslog2, OS_LOG_TYPE_DEFAULT, "%@ load brain failed, waiting for unlock", buf, 0xCu);
              }

              engineFSM2 = [(SUManagerEngine *)self engineFSM];
              v33 = objc_alloc_init(SUManagerEngineParam);
              [engineFSM2 followupEvent:@"WaitUnlock" withInfo:v33];

              mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
              delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __52__SUManagerEngine_action_CheckLockAndNetwork_error___block_invoke;
              block[3] = &unk_279CAA708;
              block[4] = self;
              dispatch_async(delegateCallbackQueue, block);

              goto LABEL_23;
            }

            if (v30)
            {
              engineName3 = [(SUManagerEngine *)self engineName];
              *buf = 138412290;
              v49 = engineName3;
              _os_log_impl(&dword_26AB34000, oslog2, OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to sendUnlockNotifications, failing", buf, 0xCu);
            }
          }

          goto LABEL_27;
        }
      }

      else
      {
      }
    }

    if ([(SUManagerEngine *)self loadBrainRetries]<= 9)
    {
      mEMORY[0x277D64400] = [(SUManagerEngine *)self engineFSM];
      v41 = [SUManagerEngineParam alloc];
      downloadDescriptor4 = [(SUManagerEngine *)self downloadDescriptor];
      v43 = [(SUManagerEngineParam *)v41 initWithDownloadDescriptor:downloadDescriptor4];
      [mEMORY[0x277D64400] followupEvent:@"Unlocked" withInfo:v43];

LABEL_23:
      goto LABEL_29;
    }

LABEL_27:

LABEL_28:
    [(SUManagerEngine *)self _queue_cancelLockAssertion];
    engineFSM3 = [(SUManagerEngine *)self engineFSM];
    [engineFSM3 followupEvent:*MEMORY[0x277D643A8] withInfo:networkCopy];
    goto LABEL_29;
  }

  engineLog3 = [(SUManagerEngine *)self engineLog];
  oslog3 = [engineLog3 oslog];

  if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
  {
    engineName4 = [(SUManagerEngine *)self engineName];
    *buf = 138412290;
    v49 = engineName4;
    _os_log_impl(&dword_26AB34000, oslog3, OS_LOG_TYPE_DEFAULT, "%@ network unavailable, will wait for network", buf, 0xCu);
  }

  v39 = +[SUNetworkMonitor sharedInstance];
  [v39 addObserver:self];

  engineFSM3 = [(SUManagerEngine *)self engineFSM];
  v40 = objc_alloc_init(SUManagerEngineParam);
  [engineFSM3 followupEvent:@"WaitNetwork" withInfo:v40];

LABEL_29:
  v45 = *MEMORY[0x277D85DE8];
  return 0;
}

void __52__SUManagerEngine_action_CheckLockAndNetwork_error___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) managerDelegate];
  [v1 sendUnlockNotifications:1];
}

- (int64_t)action_BrainLoaded:(id)loaded error:(id *)error
{
  loadedCopy = loaded;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  downloadDescriptor = [(SUManagerEngine *)self downloadDescriptor];
  asset = [downloadDescriptor asset];
  if (asset)
  {
    v10 = asset;
    downloadDescriptor2 = [(SUManagerEngine *)self downloadDescriptor];
    asset2 = [downloadDescriptor2 asset];
    attributes = [asset2 attributes];
    v14 = SUCoreBorder_MSUBrainIsLoadable();

    if (!v14)
    {
      downloadDescriptor3 = [(SUManagerEngine *)self downloadDescriptor];
      atPhase = [downloadDescriptor3 atPhase];

      if (atPhase == 6)
      {
        engineFSM2 = [(SUManagerEngine *)self engineFSM];
        v14 = engineFSM2;
        v18 = @"ArmedInstall";
      }

      else
      {
        downloadDescriptor4 = [(SUManagerEngine *)self downloadDescriptor];
        atPhase2 = [downloadDescriptor4 atPhase];

        if (atPhase2 == 5)
        {
          engineFSM2 = [(SUManagerEngine *)self engineFSM];
          v14 = engineFSM2;
          v18 = @"AlreadyPrepared";
        }

        else
        {
          downloadDescriptor5 = [(SUManagerEngine *)self downloadDescriptor];
          atPhase3 = [downloadDescriptor5 atPhase];

          if (atPhase3 == 4)
          {
            engineFSM2 = [(SUManagerEngine *)self engineFSM];
            v14 = engineFSM2;
            v18 = @"PrepareInterrupted";
          }

          else
          {
            downloadDescriptor6 = [(SUManagerEngine *)self downloadDescriptor];
            atPhase4 = [downloadDescriptor6 atPhase];

            engineFSM2 = [(SUManagerEngine *)self engineFSM];
            v14 = engineFSM2;
            if (atPhase4 == 3)
            {
              v18 = @"AlreadyDownloaded";
            }

            else
            {
              v18 = @"BrainLoaded";
            }
          }
        }
      }

      [engineFSM2 followupEvent:v18 withInfo:loadedCopy];
      goto LABEL_18;
    }
  }

  else
  {

    v14 = 0;
  }

  userInfo = [v14 userInfo];
  v20 = [userInfo objectForKeyedSubscript:@"LoadTrustCachePurgedBrain"];
  v21 = [v20 isEqual:MEMORY[0x277CBEC38]];

  if (v21)
  {
    v22 = 107;
  }

  else
  {
    v22 = 54;
  }

  engineFSM3 = [(SUManagerEngine *)self engineFSM];
  v24 = [SUManagerEngineParam alloc];
  v25 = [SUUtility errorWithCode:v22];
  v26 = [(SUManagerEngineParam *)v24 initWithError:v25];
  [engineFSM3 followupEvent:@"UpdateFailed" withInfo:v26];

LABEL_18:
  return 0;
}

- (int64_t)loadBrainHelper:(id)helper
{
  helperCopy = helper;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([helperCopy paramType] == 2)
  {
    downloadDescriptor = [helperCopy downloadDescriptor];
    [(SUManagerEngine *)self setDownloadDescriptor:downloadDescriptor];

    downloadDescriptor2 = [(SUManagerEngine *)self downloadDescriptor];
    coreDescriptor = [downloadDescriptor2 coreDescriptor];

    [(SUManagerEngine *)self resetPolicy];
    [(SUManagerEngine *)self setPendingPurgeParams:0];
    downloadDescriptor3 = [(SUManagerEngine *)self downloadDescriptor];
    installTonightConfig = [downloadDescriptor3 installTonightConfig];
    downloadDescriptor4 = [(SUManagerEngine *)self downloadDescriptor];
    sessionID = [downloadDescriptor4 sessionID];
    downloadDescriptor5 = [(SUManagerEngine *)self downloadDescriptor];
    cleanupLevel = [downloadDescriptor5 cleanupLevel];
    [(SUManagerEngine *)self _updatePolicyFactoryMetricEventFields:installTonightConfig updateUUID:sessionID cleanupLevel:cleanupLevel];

    v16 = objc_alloc(MEMORY[0x277D641F0]);
    downloadDescriptor6 = [(SUManagerEngine *)self downloadDescriptor];
    sessionID2 = [downloadDescriptor6 sessionID];
    v19 = [v16 initWithDelegate:self updateDescriptor:coreDescriptor updateUUID:sessionID2];
    [(SUManagerEngine *)self setUpdateControl:v19];

    policyFactory = [(SUManagerEngine *)self policyFactory];
    downloadDescriptor7 = [helperCopy downloadDescriptor];
    scanOptions = [downloadDescriptor7 scanOptions];
    [policyFactory setScanOptions:scanOptions];

    updateControl = [(SUManagerEngine *)self updateControl];
    updatePolicy = [(SUManagerEngine *)self updatePolicy];
    [updateControl targetBrainLoaded:updatePolicy];

    if (![(SUManagerEngine *)self activating])
    {
      v27 = 0;
      goto LABEL_7;
    }

    engineFSM2 = [(SUManagerEngine *)self engineFSM];
    v26 = objc_alloc_init(SUManagerEngineParam);
    [engineFSM2 followupEvent:@"BrainLoading" withInfo:v26];

    v27 = 0;
  }

  else
  {
    coreDescriptor = [(SUManagerEngine *)self engineFSM];
    engineFSM2 = [coreDescriptor diag];
    v27 = 8102;
    [engineFSM2 trackAnomaly:@"[ENGINE]" forReason:@"param type is not DOWNLOAD_DESCRIPTOR" withResult:8102 withError:0];
  }

LABEL_7:
  return v27;
}

- (int64_t)action_LoadBrain:(id)brain error:(id *)error
{
  brainCopy = brain;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUManagerEngine *)self setLoadBrainRetries:0];
  v8 = [(SUManagerEngine *)self loadBrainHelper:brainCopy];

  return v8;
}

- (int64_t)action_ReloadBrain:(id)brain error:(id *)error
{
  brainCopy = brain;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUManagerEngine *)self setLoadBrainRetries:[(SUManagerEngine *)self loadBrainRetries]+ 1];
  v8 = [(SUManagerEngine *)self loadBrainHelper:brainCopy];

  return v8;
}

- (int64_t)action_DownloadAndPrepare:(id)prepare error:(id *)error
{
  prepareCopy = prepare;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  policyFactory = [(SUManagerEngine *)self policyFactory];
  downloadDescriptor = [(SUManagerEngine *)self downloadDescriptor];
  downloadOptions = [downloadDescriptor downloadOptions];
  [policyFactory setDownloadOptions:downloadOptions];

  engineFSM2 = [(SUManagerEngine *)self engineFSM];
  [engineFSM2 followupEvent:@"UpdateProgress" withInfo:prepareCopy];

  updateControl = [(SUManagerEngine *)self updateControl];
  updatePolicy = [(SUManagerEngine *)self updatePolicy];
  [updateControl targetPrepared:updatePolicy];

  return 0;
}

- (int64_t)action_Prepare:(id)prepare error:(id *)error
{
  prepareCopy = prepare;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  policyFactory = [(SUManagerEngine *)self policyFactory];
  downloadDescriptor = [(SUManagerEngine *)self downloadDescriptor];
  downloadOptions = [downloadDescriptor downloadOptions];
  [policyFactory setDownloadOptions:downloadOptions];

  engineFSM2 = [(SUManagerEngine *)self engineFSM];
  [engineFSM2 followupEvent:@"UpdateProgress" withInfo:prepareCopy];

  updatePolicy = [(SUManagerEngine *)self updatePolicy];
  [updatePolicy setCheckAvailableSpace:0];

  updatePolicy2 = [(SUManagerEngine *)self updatePolicy];
  downloadPreflightPolicy = [updatePolicy2 downloadPreflightPolicy];
  [downloadPreflightPolicy setSkipPhase:1];

  updatePolicy3 = [(SUManagerEngine *)self updatePolicy];
  softwareUpdateDownloadPolicy = [updatePolicy3 softwareUpdateDownloadPolicy];
  [softwareUpdateDownloadPolicy setSkipPhase:1];

  updateControl = [(SUManagerEngine *)self updateControl];
  updatePolicy4 = [(SUManagerEngine *)self updatePolicy];
  [updateControl targetPrepared:updatePolicy4];

  return 0;
}

- (int64_t)action_Resume:(id)resume error:(id *)error
{
  v5 = [(SUManagerEngine *)self engineFSM:resume];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  updatePolicy = [(SUManagerEngine *)self updatePolicy];
  downloadPreflightPolicy = [updatePolicy downloadPreflightPolicy];
  [downloadPreflightPolicy setSkipPhase:1];

  updatePolicy2 = [(SUManagerEngine *)self updatePolicy];
  [updatePolicy2 setCheckAvailableSpace:0];

  updatePolicy3 = [(SUManagerEngine *)self updatePolicy];
  softwareUpdateDownloadPolicy = [updatePolicy3 softwareUpdateDownloadPolicy];
  [softwareUpdateDownloadPolicy setSkipPhase:1];

  updatePolicy4 = [(SUManagerEngine *)self updatePolicy];
  preparePolicy = [updatePolicy4 preparePolicy];
  [preparePolicy setSkipPhase:1];

  updatePolicy5 = [(SUManagerEngine *)self updatePolicy];
  suspendPolicy = [updatePolicy5 suspendPolicy];
  [suspendPolicy setSkipPhase:1];

  updateControl = [(SUManagerEngine *)self updateControl];
  updatePolicy6 = [(SUManagerEngine *)self updatePolicy];
  [updateControl targetPrepared:updatePolicy6];

  return 0;
}

- (int64_t)action_InstallUpdate:(id)update error:(id *)error
{
  updateCopy = update;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  policyFactory = [(SUManagerEngine *)self policyFactory];
  installOptions = [updateCopy installOptions];

  [policyFactory setInstallOptions:installOptions];
  updateControl = [(SUManagerEngine *)self updateControl];
  updatePolicy = [(SUManagerEngine *)self updatePolicy];
  [updateControl targetApplied:updatePolicy];

  return 0;
}

- (int64_t)action_InstallArmed:(id)armed error:(id *)error
{
  v5 = [(SUManagerEngine *)self engineFSM:armed];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  policyFactory = [(SUManagerEngine *)self policyFactory];
  downloadDescriptor = [(SUManagerEngine *)self downloadDescriptor];
  installOptions = [downloadDescriptor installOptions];
  [policyFactory setInstallOptions:installOptions];

  updatePolicy = [(SUManagerEngine *)self updatePolicy];
  [updatePolicy setCheckAvailableSpace:0];

  updatePolicy2 = [(SUManagerEngine *)self updatePolicy];
  downloadPreflightPolicy = [updatePolicy2 downloadPreflightPolicy];
  [downloadPreflightPolicy setSkipPhase:1];

  updatePolicy3 = [(SUManagerEngine *)self updatePolicy];
  softwareUpdateDownloadPolicy = [updatePolicy3 softwareUpdateDownloadPolicy];
  [softwareUpdateDownloadPolicy setSkipPhase:1];

  updatePolicy4 = [(SUManagerEngine *)self updatePolicy];
  preparePolicy = [updatePolicy4 preparePolicy];
  [preparePolicy setSkipPhase:1];

  updatePolicy5 = [(SUManagerEngine *)self updatePolicy];
  suspendPolicy = [updatePolicy5 suspendPolicy];
  [suspendPolicy setSkipPhase:1];

  updateControl = [(SUManagerEngine *)self updateControl];
  updatePolicy6 = [(SUManagerEngine *)self updatePolicy];
  [updateControl targetApplied:updatePolicy6];

  return 0;
}

- (int64_t)action_ArmInstallOrFail:(id)fail error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  failCopy = fail;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  downloadDescriptor = [(SUManagerEngine *)self downloadDescriptor];
  installOptions = [failCopy installOptions];
  v10 = [downloadDescriptor armInstall:installOptions];

  engineLog = [(SUManagerEngine *)self engineLog];
  oslog = [engineLog oslog];

  v13 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v13)
    {
      engineName = [(SUManagerEngine *)self engineName];
      installOptions2 = [failCopy installOptions];
      v19 = 138412546;
      v20 = engineName;
      v21 = 2112;
      v22 = installOptions2;
      _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ install is armed with options:%@", &v19, 0x16u);
    }
  }

  else
  {
    if (v13)
    {
      engineName2 = [(SUManagerEngine *)self engineName];
      v19 = 138412290;
      v20 = engineName2;
      _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ install can't be armed", &v19, 0xCu);
    }

    [(SUManagerEngine *)self actionHelper_ReportInstallFailedNoUpdate];
  }

  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

- (int64_t)action_Cancel:(id)cancel error:(id *)error
{
  cancelCopy = cancel;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  downloadDescriptor = [cancelCopy downloadDescriptor];
  [(SUManagerEngine *)self setDownloadDescriptor:downloadDescriptor];

  if ([cancelCopy paramType] == 9)
  {
    [(SUManagerEngine *)self setPendingPurgeParams:cancelCopy];
  }

  updateControl = [(SUManagerEngine *)self updateControl];
  [updateControl cancelCurrentUpdate];

  return 0;
}

- (int64_t)action_CanceledDownloadRequested:(id)requested error:(id *)error
{
  v5 = [(SUManagerEngine *)self engineFSM:requested];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  engineFSM = [(SUManagerEngine *)self engineFSM];
  v8 = [SUManagerEngineParam alloc];
  downloadDescriptor = [(SUManagerEngine *)self downloadDescriptor];
  v10 = [(SUManagerEngineParam *)v8 initWithDownloadDescriptor:downloadDescriptor];
  [engineFSM followupEvent:@"ReadyToDownload" withInfo:v10];

  return 0;
}

- (int64_t)action_RemoveAll:(id)all error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  allCopy = all;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUManagerEngine *)self setUpdateControl:0];
  [(SUManagerEngine *)self setDownloadDescriptor:0];
  policyFactory = [(SUManagerEngine *)self policyFactory];
  [policyFactory setScanOptions:0];

  policyFactory2 = [(SUManagerEngine *)self policyFactory];
  [policyFactory2 setDownloadOptions:0];

  policyFactory3 = [(SUManagerEngine *)self policyFactory];
  [policyFactory3 setInstallOptions:0];

  updatePolicy = [(SUManagerEngine *)self updatePolicy];
  v12 = [updatePolicy copy];

  if ([allCopy paramType] == 9)
  {
    if ([allCopy skipDocAssetsPurge])
    {
      [v12 setDocumentationAssetType:0];
    }

    if ([allCopy skipPreSUStagingAssetsPurge])
    {
      engineLog = [(SUManagerEngine *)self engineLog];
      oslog = [engineLog oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        engineName = [(SUManagerEngine *)self engineName];
        *buf = 138412290;
        v20 = engineName;
        _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ Temporarily disabling PSUS to skip purging the assets", buf, 0xCu);
      }

      [v12 setEnablePreSUStaging:0];
    }
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __42__SUManagerEngine_action_RemoveAll_error___block_invoke;
  v18[3] = &unk_279CABA10;
  v18[4] = self;
  [MEMORY[0x277D641D0] removeAllUpdateContentWithPolicy:v12 completion:v18];

  v16 = *MEMORY[0x277D85DE8];
  return 0;
}

void __42__SUManagerEngine_action_RemoveAll_error___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = [*(a1 + 32) engineFSM];
  v5 = [v4 diag];
  [v5 trackError:@"[ENGINE]" forReason:@"unable to remove all update content" withResult:objc_msgSend(v3 withError:{"code"), v3}];

  v6 = [v3 domain];
  if (![v6 isEqual:@"com.apple.MobileAssetError.Purge"])
  {

    goto LABEL_6;
  }

  if ([v3 code] != 11)
  {
    v8 = [v3 code];

    if (v8 == 8)
    {
      goto LABEL_8;
    }

LABEL_6:
    v7 = *MEMORY[0x277D64318];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __42__SUManagerEngine_action_RemoveAll_error___block_invoke_2;
    v13[3] = &unk_279CABA10;
    v13[4] = *(a1 + 32);
    [MEMORY[0x277D641D0] removeAllAssetsOfType:v7 completion:v13];
    goto LABEL_11;
  }

LABEL_8:
  v9 = [*(a1 + 32) engineLog];
  v10 = [v9 oslog];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 32) engineName];
    *buf = 138412290;
    v16 = v11;
    _os_log_impl(&dword_26AB34000, v10, OS_LOG_TYPE_DEFAULT, "%@ Trying to purge installed assets one by one", buf, 0xCu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__SUManagerEngine_action_RemoveAll_error___block_invoke_532;
  v14[3] = &unk_279CAA708;
  v14[4] = *(a1 + 32);
  [SUAssetSupport cleanupAllInstalledAssets:v14];
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
}

void __42__SUManagerEngine_action_RemoveAll_error___block_invoke_532(uint64_t a1)
{
  v2 = [*(a1 + 32) engineFSM];
  v1 = objc_alloc_init(SUManagerEngineParam);
  [v2 postEvent:@"RemovedAll" withInfo:v1];
}

void __42__SUManagerEngine_action_RemoveAll_error___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = [*(a1 + 32) engineFSM];
  v5 = [v4 diag];
  [v5 trackError:@"[ENGINE]" forReason:@"unable to remove all splat update content" withResult:objc_msgSend(v3 withError:{"code"), v3}];

  v6 = [v3 domain];
  if (![v6 isEqual:@"com.apple.MobileAssetError.Purge"])
  {

    goto LABEL_6;
  }

  if ([v3 code] != 11)
  {
    v9 = [v3 code];

    if (v9 == 8)
    {
      goto LABEL_8;
    }

LABEL_6:
    v7 = [*(a1 + 32) engineFSM];
    v8 = objc_alloc_init(SUManagerEngineParam);
    [v7 postEvent:@"RemovedAll" withInfo:v8];

    goto LABEL_11;
  }

LABEL_8:
  v10 = [*(a1 + 32) engineLog];
  v11 = [v10 oslog];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 32) engineName];
    *buf = 138412290;
    v16 = v12;
    _os_log_impl(&dword_26AB34000, v11, OS_LOG_TYPE_DEFAULT, "%@ Trying to purge installed assets one by one", buf, 0xCu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__SUManagerEngine_action_RemoveAll_error___block_invoke_536;
  v14[3] = &unk_279CAA708;
  v14[4] = *(a1 + 32);
  [SUAssetSupport cleanupAllInstalledAssets:v14];
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
}

void __42__SUManagerEngine_action_RemoveAll_error___block_invoke_536(uint64_t a1)
{
  v2 = [*(a1 + 32) engineFSM];
  v1 = objc_alloc_init(SUManagerEngineParam);
  [v2 postEvent:@"RemovedAll" withInfo:v1];
}

- (int64_t)action_RemoveAllPreserveCache:(id)cache error:(id *)error
{
  v5 = [(SUManagerEngine *)self engineFSM:cache];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  downloadDescriptor = [(SUManagerEngine *)self downloadDescriptor];
  [downloadDescriptor resetPhase];

  v8 = MEMORY[0x277D641D0];
  updatePolicy = [(SUManagerEngine *)self updatePolicy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__SUManagerEngine_action_RemoveAllPreserveCache_error___block_invoke;
  v11[3] = &unk_279CABA10;
  v11[4] = self;
  [v8 removeAllUpdateContentWithPolicy:updatePolicy completion:v11];

  return 0;
}

void __55__SUManagerEngine_action_RemoveAllPreserveCache_error___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 engineFSM];
    v6 = [v5 diag];
    [v6 trackError:@"[ENGINE]" forReason:@"unable to remove all update content" withResult:objc_msgSend(v4 withError:{"code"), v4}];
  }

  v8 = [*(a1 + 32) engineFSM];
  v7 = objc_alloc_init(SUManagerEngineParam);
  [v8 postEvent:@"RemovedAllPreservedCache" withInfo:v7];
}

- (int64_t)action_RollbackUpdate:(id)update error:(id *)error
{
  updateCopy = update;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  policyFactory = [(SUManagerEngine *)self policyFactory];
  rollbackOptions = [updateCopy rollbackOptions];

  [policyFactory setRollbackOptions:rollbackOptions];
  updateControl = [(SUManagerEngine *)self updateControl];

  if (!updateControl)
  {
    v11 = [objc_alloc(MEMORY[0x277D641F0]) initWithDelegate:self updateDescriptor:0 updateUUID:self->_rollbackUUID];
    [(SUManagerEngine *)self setUpdateControl:v11];
  }

  updateControl2 = [(SUManagerEngine *)self updateControl];
  rollbackAvailable = [updateControl2 rollbackAvailable];
  [(SUManagerEngine *)self notifyRollbackStarted:rollbackAvailable];

  updateControl3 = [(SUManagerEngine *)self updateControl];
  rollbackPolicy = [(SUManagerEngine *)self rollbackPolicy];
  [updateControl3 targetRollback:rollbackPolicy];

  return 0;
}

- (int64_t)action_HandlePendingRollback:(id)rollback error:(id *)error
{
  rollbackCopy = rollback;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  engineFSM2 = [(SUManagerEngine *)self engineFSM];
  [engineFSM2 followupEvent:@"ReadyToRollback" withInfo:rollbackCopy];

  return 0;
}

- (int64_t)action_HandleCanceledPendingRollback:(id)rollback error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  rollbackCopy = rollback;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  LOBYTE(extendedStateQueue) = objc_opt_respondsToSelector();

  if (extendedStateQueue)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__SUManagerEngine_action_HandleCanceledPendingRollback_error___block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(delegateCallbackQueue, block);
LABEL_5:

    goto LABEL_6;
  }

  engineLog = [(SUManagerEngine *)self engineLog];
  mEMORY[0x277D64400] = [engineLog oslog];

  if (os_log_type_enabled(mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT))
  {
    delegateCallbackQueue = [(SUManagerEngine *)self engineName];
    *buf = 138412290;
    v17 = delegateCallbackQueue;
    _os_log_impl(&dword_26AB34000, mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(downloadCompleted:) so not reporting", buf, 0xCu);
    goto LABEL_5;
  }

LABEL_6:

  engineFSM2 = [(SUManagerEngine *)self engineFSM];
  [engineFSM2 followupEvent:@"ReadyToRollback" withInfo:rollbackCopy];

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

void __62__SUManagerEngine_action_HandleCanceledPendingRollback_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  v1 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.softwareupdateservices.errors" code:16 userInfo:0];
  [v2 downloadCompleted:v1];
}

- (int64_t)action_ReportDownloadProgress:(id)progress error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  progress = [progressCopy progress];
  v9 = [(SUManagerEngine *)self SUOperationProgressFromSUCoreProgress:progress];
  phase = [v9 phase];
  IsBeyondBrainLoad = SUDownloadPhaseIsBeyondBrainLoad(phase);

  if (IsBeyondBrainLoad)
  {
    [(SUManagerEngine *)self _queue_cancelLockAssertion];
  }

  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __55__SUManagerEngine_action_ReportDownloadProgress_error___block_invoke;
    v21[3] = &unk_279CAA7C0;
    v21[4] = self;
    v22 = progressCopy;
    dispatch_async(delegateCallbackQueue, v21);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    oslog = [engineLog oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v24 = engineName;
      _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(downloadProgress:) so not reporting", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return 0;
}

void __55__SUManagerEngine_action_ReportDownloadProgress_error___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) managerDelegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) progress];
  v4 = [v2 SUOperationProgressFromSUCoreProgress:v3];
  [v5 downloadProgress:v4];
}

- (void)actionHelper_ReportPrepared:(BOOL)prepared
{
  v17 = *MEMORY[0x277D85DE8];
  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __47__SUManagerEngine_actionHelper_ReportPrepared___block_invoke;
    v13[3] = &unk_279CAAD00;
    v13[4] = self;
    preparedCopy = prepared;
    dispatch_async(delegateCallbackQueue, v13);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    oslog = [engineLog oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v16 = engineName;
      _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(downloadCompleted:) so not reporting", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __47__SUManagerEngine_actionHelper_ReportPrepared___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  [v2 downloadCompleted:0 informClients:*(a1 + 40)];
}

- (int64_t)action_ReportPrepared:(id)prepared error:(id *)error
{
  v5 = [(SUManagerEngine *)self engineFSM:prepared];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUManagerEngine *)self actionHelper_ReportPrepared:1];
  return 0;
}

- (int64_t)action_ReportPreparedSet:(id)set error:(id *)error
{
  v5 = [(SUManagerEngine *)self engineFSM:set];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  policyFactory = [(SUManagerEngine *)self policyFactory];
  downloadDescriptor = [(SUManagerEngine *)self downloadDescriptor];
  downloadOptions = [downloadDescriptor downloadOptions];
  [policyFactory setDownloadOptions:downloadOptions];

  updatePolicy = [(SUManagerEngine *)self updatePolicy];
  [updatePolicy setCheckAvailableSpace:0];

  updatePolicy2 = [(SUManagerEngine *)self updatePolicy];
  downloadPreflightPolicy = [updatePolicy2 downloadPreflightPolicy];
  [downloadPreflightPolicy setSkipPhase:1];

  updatePolicy3 = [(SUManagerEngine *)self updatePolicy];
  softwareUpdateDownloadPolicy = [updatePolicy3 softwareUpdateDownloadPolicy];
  [softwareUpdateDownloadPolicy setSkipPhase:1];

  updatePolicy4 = [(SUManagerEngine *)self updatePolicy];
  preparePolicy = [updatePolicy4 preparePolicy];
  [preparePolicy setSkipPhase:1];

  updatePolicy5 = [(SUManagerEngine *)self updatePolicy];
  suspendPolicy = [updatePolicy5 suspendPolicy];
  [suspendPolicy setSkipPhase:1];

  [(SUManagerEngine *)self actionHelper_ReportPrepared:0];
  return 0;
}

- (int64_t)action_ReportDownloadFailedNoUpdate:(id)update error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [(SUManagerEngine *)self engineFSM:update];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  LOBYTE(extendedStateQueue) = objc_opt_respondsToSelector();

  if (extendedStateQueue)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SUManagerEngine_action_ReportDownloadFailedNoUpdate_error___block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(delegateCallbackQueue, block);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    mEMORY[0x277D64400] = [engineLog oslog];

    if (os_log_type_enabled(mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v16 = engineName;
      _os_log_impl(&dword_26AB34000, mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(downloadCompleted:) so not reporting", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

void __61__SUManagerEngine_action_ReportDownloadFailedNoUpdate_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  v1 = [SUUtility errorWithCode:3];
  [v2 downloadCompleted:v1];
}

- (void)actionHelper_ReportInstallFailedNoUpdate
{
  v13 = *MEMORY[0x277D85DE8];
  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__SUManagerEngine_actionHelper_ReportInstallFailedNoUpdate__block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(delegateCallbackQueue, block);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    mEMORY[0x277D64400] = [engineLog oslog];

    if (os_log_type_enabled(mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v12 = engineName;
      _os_log_impl(&dword_26AB34000, mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(installCompleted:) so not reporting", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __59__SUManagerEngine_actionHelper_ReportInstallFailedNoUpdate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  v1 = [SUUtility errorWithCode:3];
  [v2 installCompleted:v1];
}

- (int64_t)action_ReportInstallFailedNoUpdate:(id)update error:(id *)error
{
  v5 = [(SUManagerEngine *)self engineFSM:update];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUManagerEngine *)self actionHelper_ReportInstallFailedNoUpdate];
  return 0;
}

- (void)actionHelper_ReportInstallFailedRollingBack
{
  v13 = *MEMORY[0x277D85DE8];
  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__SUManagerEngine_actionHelper_ReportInstallFailedRollingBack__block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(delegateCallbackQueue, block);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    mEMORY[0x277D64400] = [engineLog oslog];

    if (os_log_type_enabled(mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v12 = engineName;
      _os_log_impl(&dword_26AB34000, mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(installCompleted:) so not reporting", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __62__SUManagerEngine_actionHelper_ReportInstallFailedRollingBack__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  v1 = [SUUtility errorWithCode:87];
  [v2 installCompleted:v1];
}

- (int64_t)action_ReportInstallFailedRollingBack:(id)back error:(id *)error
{
  v5 = [(SUManagerEngine *)self engineFSM:back];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUManagerEngine *)self actionHelper_ReportInstallFailedRollingBack];
  return 0;
}

- (void)actionHelper_ReportDownloadFailedRollingBack
{
  v13 = *MEMORY[0x277D85DE8];
  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__SUManagerEngine_actionHelper_ReportDownloadFailedRollingBack__block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(delegateCallbackQueue, block);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    mEMORY[0x277D64400] = [engineLog oslog];

    if (os_log_type_enabled(mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v12 = engineName;
      _os_log_impl(&dword_26AB34000, mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(downloadCompleted:) so not reporting", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __63__SUManagerEngine_actionHelper_ReportDownloadFailedRollingBack__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  v1 = [SUUtility errorWithCode:87];
  [v2 downloadCompleted:v1];
}

- (int64_t)action_ReportDownloadFailedRollingBack:(id)back error:(id *)error
{
  v5 = [(SUManagerEngine *)self engineFSM:back];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUManagerEngine *)self actionHelper_ReportDownloadFailedRollingBack];
  return 0;
}

- (void)actionHelper_ReportRemoveFailedRollingBack
{
  v13 = *MEMORY[0x277D85DE8];
  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SUManagerEngine_actionHelper_ReportRemoveFailedRollingBack__block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(delegateCallbackQueue, block);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    mEMORY[0x277D64400] = [engineLog oslog];

    if (os_log_type_enabled(mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v12 = engineName;
      _os_log_impl(&dword_26AB34000, mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(removeCompleted:) so not reporting", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __61__SUManagerEngine_actionHelper_ReportRemoveFailedRollingBack__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  v1 = [SUUtility errorWithCode:87];
  [v2 removeCompleted:v1];
}

- (int64_t)action_ReportRemoveFailedRollingBack:(id)back error:(id *)error
{
  v5 = [(SUManagerEngine *)self engineFSM:back];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUManagerEngine *)self actionHelper_ReportRemoveFailedRollingBack];
  return 0;
}

- (int64_t)action_ReportDownloadInstalling:(id)installing error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [(SUManagerEngine *)self engineFSM:installing];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  LOBYTE(extendedStateQueue) = objc_opt_respondsToSelector();

  if (extendedStateQueue)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__SUManagerEngine_action_ReportDownloadInstalling_error___block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(delegateCallbackQueue, block);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    mEMORY[0x277D64400] = [engineLog oslog];

    if (os_log_type_enabled(mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v16 = engineName;
      _os_log_impl(&dword_26AB34000, mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(downloadCompleted:) so not reporting", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

void __57__SUManagerEngine_action_ReportDownloadInstalling_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  v1 = [SUUtility errorWithCode:14];
  [v2 downloadCompleted:v1];
}

- (int64_t)action_ReportRemoveInstalling:(id)installing error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [(SUManagerEngine *)self engineFSM:installing];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  LOBYTE(extendedStateQueue) = objc_opt_respondsToSelector();

  if (extendedStateQueue)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__SUManagerEngine_action_ReportRemoveInstalling_error___block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(delegateCallbackQueue, block);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    mEMORY[0x277D64400] = [engineLog oslog];

    if (os_log_type_enabled(mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v16 = engineName;
      _os_log_impl(&dword_26AB34000, mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(removeCompleted:) so not reporting", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

void __55__SUManagerEngine_action_ReportRemoveInstalling_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  v1 = [SUUtility errorWithCode:14];
  [v2 removeCompleted:v1];
}

- (int64_t)action_ReportRollbackInstalling:(id)installing error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  installingCopy = installing;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  LOBYTE(extendedStateQueue) = objc_opt_respondsToSelector();

  if (extendedStateQueue)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __57__SUManagerEngine_action_ReportRollbackInstalling_error___block_invoke;
    v16[3] = &unk_279CAA7C0;
    v16[4] = self;
    v17 = installingCopy;
    dispatch_async(delegateCallbackQueue, v16);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    oslog = [engineLog oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v19 = engineName;
      _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(rollbackCompleted:withError:) so not reporting", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return 0;
}

void __57__SUManagerEngine_action_ReportRollbackInstalling_error___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) managerDelegate];
  v2 = [*(a1 + 40) rollback];
  v3 = [v2 eligibleRollback];
  v4 = [SUUtility errorWithCode:14];
  [v5 rollbackCompleted:v3 withError:v4];
}

- (int64_t)action_ReportDownloadAwaitingReboot:(id)reboot error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [(SUManagerEngine *)self engineFSM:reboot];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  LOBYTE(extendedStateQueue) = objc_opt_respondsToSelector();

  if (extendedStateQueue)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SUManagerEngine_action_ReportDownloadAwaitingReboot_error___block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(delegateCallbackQueue, block);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    mEMORY[0x277D64400] = [engineLog oslog];

    if (os_log_type_enabled(mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v16 = engineName;
      _os_log_impl(&dword_26AB34000, mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(downloadCompleted:) so not reporting", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

void __61__SUManagerEngine_action_ReportDownloadAwaitingReboot_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  v1 = [SUUtility errorWithCode:42];
  [v2 downloadCompleted:v1];
}

- (int64_t)action_ReportInstallAwaitingReboot:(id)reboot error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [(SUManagerEngine *)self engineFSM:reboot];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  LOBYTE(extendedStateQueue) = objc_opt_respondsToSelector();

  if (extendedStateQueue)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__SUManagerEngine_action_ReportInstallAwaitingReboot_error___block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(delegateCallbackQueue, block);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    mEMORY[0x277D64400] = [engineLog oslog];

    if (os_log_type_enabled(mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v16 = engineName;
      _os_log_impl(&dword_26AB34000, mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(installCompleted:) so not reporting", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

void __60__SUManagerEngine_action_ReportInstallAwaitingReboot_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  v1 = [SUUtility errorWithCode:42];
  [v2 installCompleted:v1];
}

- (int64_t)action_ReportRemoveAwaitingReboot:(id)reboot error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [(SUManagerEngine *)self engineFSM:reboot];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  LOBYTE(extendedStateQueue) = objc_opt_respondsToSelector();

  if (extendedStateQueue)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__SUManagerEngine_action_ReportRemoveAwaitingReboot_error___block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(delegateCallbackQueue, block);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    mEMORY[0x277D64400] = [engineLog oslog];

    if (os_log_type_enabled(mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v16 = engineName;
      _os_log_impl(&dword_26AB34000, mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(removeCompleted:) so not reporting", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

void __59__SUManagerEngine_action_ReportRemoveAwaitingReboot_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  v1 = [SUUtility errorWithCode:42];
  [v2 removeCompleted:v1];
}

- (int64_t)action_ReportRollbackAwaitingReboot:(id)reboot error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  rebootCopy = reboot;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  LOBYTE(extendedStateQueue) = objc_opt_respondsToSelector();

  if (extendedStateQueue)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __61__SUManagerEngine_action_ReportRollbackAwaitingReboot_error___block_invoke;
    v16[3] = &unk_279CAA7C0;
    v16[4] = self;
    v17 = rebootCopy;
    dispatch_async(delegateCallbackQueue, v16);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    oslog = [engineLog oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v19 = engineName;
      _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(rollbackCompleted:withError:) so not reporting", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return 0;
}

void __61__SUManagerEngine_action_ReportRollbackAwaitingReboot_error___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) managerDelegate];
  v2 = [*(a1 + 40) rollback];
  v3 = [v2 eligibleRollback];
  v4 = [SUUtility errorWithCode:42];
  [v5 rollbackCompleted:v3 withError:v4];
}

- (int64_t)action_ReportDownloadFailedRemoveAll:(id)all error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  allCopy = all;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  LOBYTE(extendedStateQueue) = objc_opt_respondsToSelector();

  if (extendedStateQueue)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __62__SUManagerEngine_action_ReportDownloadFailedRemoveAll_error___block_invoke;
    v20 = &unk_279CAA7C0;
    selfCopy = self;
    v22 = allCopy;
    dispatch_async(delegateCallbackQueue, &v17);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    oslog = [engineLog oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v24 = engineName;
      _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(downloadCompleted:) so not reporting", buf, 0xCu);
    }
  }

  v14 = [(SUManagerEngine *)self engineFSM:v17];
  [v14 followupEvent:@"UpdateFailed" withInfo:allCopy];

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

void __62__SUManagerEngine_action_ReportDownloadFailedRemoveAll_error___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) managerDelegate];
  v2 = [*(a1 + 40) error];
  [v3 downloadCompleted:v2];
}

- (void)actionHelper_ReportApplyFailed:(id)failed
{
  v17 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__SUManagerEngine_actionHelper_ReportApplyFailed___block_invoke;
    v13[3] = &unk_279CAA7C0;
    v13[4] = self;
    v14 = failedCopy;
    dispatch_async(delegateCallbackQueue, v13);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    oslog = [engineLog oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v16 = engineName;
      _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(installCompleted:) so not reporting", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __50__SUManagerEngine_actionHelper_ReportApplyFailed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  [v2 installCompleted:*(a1 + 40)];
}

- (int64_t)action_ReportApplyFailed:(id)failed error:(id *)error
{
  failedCopy = failed;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  error = [failedCopy error];

  [(SUManagerEngine *)self actionHelper_ReportApplyFailed:error];
  return 0;
}

- (int64_t)action_ReportApplyFailedRemoveAll:(id)all error:(id *)error
{
  allCopy = all;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  error = [allCopy error];
  v9 = [SUUtility errorWithCode:78 originalError:error];

  [(SUManagerEngine *)self actionHelper_ReportApplyFailed:v9];
  engineFSM2 = [(SUManagerEngine *)self engineFSM];
  [engineFSM2 followupEvent:@"ApplyFailedRemoveNow" withInfo:allCopy];

  return 0;
}

- (int64_t)action_ReportAwaitingReboot:(id)reboot error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [(SUManagerEngine *)self engineFSM:reboot];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  LOBYTE(extendedStateQueue) = objc_opt_respondsToSelector();

  if (extendedStateQueue)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__SUManagerEngine_action_ReportAwaitingReboot_error___block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(delegateCallbackQueue, block);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    mEMORY[0x277D64400] = [engineLog oslog];

    if (os_log_type_enabled(mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v16 = engineName;
      _os_log_impl(&dword_26AB34000, mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(installCompleted:) so not reporting", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

void __53__SUManagerEngine_action_ReportAwaitingReboot_error___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) managerDelegate];
  [v1 installCompleted:0];
}

- (void)actionHelper_ReportRollbackCompleted:(id)completed withError:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  errorCopy = error;
  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__SUManagerEngine_actionHelper_ReportRollbackCompleted_withError___block_invoke;
    block[3] = &unk_279CAA798;
    block[4] = self;
    v17 = completedCopy;
    v18 = errorCopy;
    dispatch_async(delegateCallbackQueue, block);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    oslog = [engineLog oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v20 = engineName;
      _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(rollbackCompleted:withError:) so not reporting", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __66__SUManagerEngine_actionHelper_ReportRollbackCompleted_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  [v2 rollbackCompleted:*(a1 + 40) withError:*(a1 + 48)];
}

- (int64_t)action_ReportRollbackFailed:(id)failed error:(id *)error
{
  failedCopy = failed;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  rollback = [failedCopy rollback];
  eligibleRollback = [rollback eligibleRollback];
  error = [failedCopy error];

  [(SUManagerEngine *)self actionHelper_ReportRollbackCompleted:eligibleRollback withError:error];
  return 0;
}

- (int64_t)action_ReportRollbackSucceeded:(id)succeeded error:(id *)error
{
  succeededCopy = succeeded;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  rollback = [succeededCopy rollback];
  eligibleRollback = [rollback eligibleRollback];
  error = [succeededCopy error];

  [(SUManagerEngine *)self actionHelper_ReportRollbackCompleted:eligibleRollback withError:error];
  return 0;
}

- (int64_t)actionUnknownAction:(id)action error:(id *)error
{
  v5 = MEMORY[0x277CCACA8];
  actionCopy = action;
  actionCopy = [[v5 alloc] initWithFormat:@"unknown action(%@)", actionCopy];

  engineFSM = [(SUManagerEngine *)self engineFSM];
  diag = [engineFSM diag];
  [diag dumpTracked:actionCopy dumpingTo:5 usingFilename:0 clearingStatistics:0 clearingHistory:0];

  mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
  v11 = [mEMORY[0x277D64400] buildError:8116 underlying:0 description:actionCopy];

  engineFSM2 = [(SUManagerEngine *)self engineFSM];
  diag2 = [engineFSM2 diag];
  [diag2 trackAnomaly:@"[ENGINE]" forReason:@"engine FSM has reported an anomaly" withResult:objc_msgSend(v11 withError:{"code"), v11}];

  return 0;
}

- (SUManagerEngine)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v44.receiver = self;
  v44.super_class = SUManagerEngine;
  v5 = [(SUManagerEngine *)&v44 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_managerDelegate, delegateCopy);
    v7 = [objc_alloc(MEMORY[0x277D64468]) initWithCategory:@"engine"];
    engineLog = v6->_engineLog;
    v6->_engineLog = v7;

    if (!v6->_engineLog)
    {
      SULogInfo(@"Failed creating engine log", v9, v10, v11, v12, v13, v14, v15, v43);
    }

    updateControl = v6->_updateControl;
    v6->_updateControl = 0;

    v17 = objc_alloc_init(SUPolicyFactory);
    policyFactory = v6->_policyFactory;
    v6->_policyFactory = v17;

    v19 = MGCopyAnswer();
    v20 = MGCopyAnswer();
    v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"engine:%@(%@)"];
    engineName = v6->_engineName;
    v6->_engineName = v21;

    _generateStateTable = [objc_opt_class() _generateStateTable];
    stateTable = v6->_stateTable;
    v6->_stateTable = _generateStateTable;

    v25 = objc_alloc(MEMORY[0x277D64450]);
    v26 = [v25 initMachine:v6->_engineName withTable:v6->_stateTable startingIn:*MEMORY[0x277D643F0] usingDelegate:v6 registeringAllInfoClass:objc_opt_class()];
    engineFSM = v6->_engineFSM;
    v6->_engineFSM = v26;

    if (!v6->_engineFSM)
    {
      SULogInfo(@"Failed creating engine FSM", v28, v29, v30, v31, v32, v33, v34, v19);

      v41 = 0;
      goto LABEL_8;
    }

    pendingManagedScanParams = v6->_pendingManagedScanParams;
    v6->_pendingManagedScanParams = 0;

    pendingPurgeParams = v6->_pendingPurgeParams;
    v6->_pendingPurgeParams = 0;

    v6->_isManagedScan = 0;
    activeScanner = v6->_activeScanner;
    v6->_activeScanner = 0;

    *&v6->_activating = 0;
    v6->_loadBrainRetries = 0;
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    rollbackUUID = v6->_rollbackUUID;
    v6->_rollbackUUID = uUIDString;
  }

  v41 = v6;
LABEL_8:

  return v41;
}

- (void)activateLoadingPersisted:(id)persisted
{
  persistedCopy = persisted;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__SUManagerEngine_activateLoadingPersisted___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = persistedCopy;
  v7 = persistedCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __44__SUManagerEngine_activateLoadingPersisted___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) engineFSM];
  v3 = [v2 diag];
  [v3 trackBegin:@"activateLoadingPersisted" atLevel:1];

  if (([*(a1 + 32) activated] & 1) == 0 && !objc_msgSend(*(a1 + 32), "activating"))
  {
    [*(a1 + 32) setActivating:1];
    v46 = 0;
    v45 = 0;
    [MEMORY[0x277D641D0] previousUpdateState:&v46 + 1 tetheredRestore:&v46 failedBackward:&v45 + 1 failedForward:&v45];
    if (HIBYTE(v46) == 1)
    {
      v10 = [*(a1 + 32) engineLog];
      v11 = [v10 oslog];

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(a1 + 32) engineName];
        *buf = 138412290;
        v48 = v12;
        _os_log_impl(&dword_26AB34000, v11, OS_LOG_TYPE_DEFAULT, "%@ previous update state: successful OTA", buf, 0xCu);
      }
    }

    if (v46 == 1)
    {
      v13 = [*(a1 + 32) engineLog];
      v14 = [v13 oslog];

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [*(a1 + 32) engineName];
        *buf = 138412290;
        v48 = v15;
        _os_log_impl(&dword_26AB34000, v14, OS_LOG_TYPE_DEFAULT, "%@ previous update state: tethered restore", buf, 0xCu);
      }
    }

    if (HIBYTE(v45) == 1)
    {
      v16 = [*(a1 + 32) engineLog];
      v17 = [v16 oslog];

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [*(a1 + 32) engineName];
        *buf = 138412290;
        v48 = v18;
        _os_log_impl(&dword_26AB34000, v17, OS_LOG_TYPE_DEFAULT, "%@ previous update state: failed backward", buf, 0xCu);
      }
    }

    if (v45 == 1)
    {
      v19 = [*(a1 + 32) engineLog];
      v20 = [v19 oslog];

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [*(a1 + 32) engineName];
        *buf = 138412290;
        v48 = v21;
        _os_log_impl(&dword_26AB34000, v20, OS_LOG_TYPE_DEFAULT, "%@ previous update state: failed forward", buf, 0xCu);
      }
    }

    v22 = *(a1 + 40);
    if (v22)
    {
      v23 = [v22 asset];

      if (v23)
      {
        if (HIBYTE(v45) == 1)
        {
          v24 = [*(a1 + 32) engineLog];
          v25 = [v24 oslog];

          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_26AB34000, v25, OS_LOG_TYPE_DEFAULT, "Previous OTA attempt failed backwards and prepared update has been purged", buf, 2u);
          }

          goto LABEL_37;
        }

        if ([*(a1 + 40) atPhase] == 2)
        {
          v36 = [*(a1 + 32) engineLog];
          v25 = [v36 oslog];

          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v37 = [*(a1 + 32) engineName];
            *buf = 138412290;
            v48 = v37;
            v38 = "%@ download descriptor found, started downloading but not completed, will try to load";
LABEL_52:
            _os_log_impl(&dword_26AB34000, v25, OS_LOG_TYPE_DEFAULT, v38, buf, 0xCu);

            goto LABEL_53;
          }

          goto LABEL_53;
        }

        if ([*(a1 + 40) atPhase] == 3)
        {
          v39 = [*(a1 + 32) engineLog];
          v25 = [v39 oslog];

          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v37 = [*(a1 + 32) engineName];
            *buf = 138412290;
            v48 = v37;
            v38 = "%@ download descriptor found, update is downloaded, will try to load";
            goto LABEL_52;
          }

LABEL_53:

          v30 = [*(a1 + 32) engineFSM];
          v31 = [[SUManagerEngineParam alloc] initWithDownloadDescriptor:*(a1 + 40)];
          v32 = @"ActivateHavePersisted";
          goto LABEL_38;
        }

        if ([*(a1 + 40) atPhase] == 5)
        {
          v40 = [*(a1 + 32) engineLog];
          v25 = [v40 oslog];

          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v37 = [*(a1 + 32) engineName];
            *buf = 138412290;
            v48 = v37;
            v38 = "%@ download descriptor found, update is prepared, will try to load";
            goto LABEL_52;
          }

          goto LABEL_53;
        }

        v41 = [*(a1 + 40) atPhase];
        v42 = [*(a1 + 32) engineLog];
        v25 = [v42 oslog];

        v43 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        if (v41 == 4)
        {
          if (v43)
          {
            v37 = [*(a1 + 32) engineName];
            *buf = 138412290;
            v48 = v37;
            v38 = "%@ download descriptor found, prepare interrupted, will try to resume or purge and redownload";
            goto LABEL_52;
          }

          goto LABEL_53;
        }

        if (v43)
        {
          v27 = +[SUManagerEngineDownloadDescriptor phaseToString:](SUManagerEngineDownloadDescriptor, "phaseToString:", [*(a1 + 40) atPhase]);
          v44 = [*(a1 + 32) engineName];
          *buf = 138412546;
          v48 = v27;
          v49 = 2112;
          v50 = v44;
          _os_log_impl(&dword_26AB34000, v25, OS_LOG_TYPE_DEFAULT, "%@ download descriptor found, phase (%@) is not valid to load", buf, 0x16u);

          goto LABEL_36;
        }

LABEL_37:

        v30 = [*(a1 + 32) engineFSM];
        v31 = [[SUManagerEngineParam alloc] initWithSkipPreSUStagingPurge:1];
        v32 = @"ActivateNoPersisted";
LABEL_38:
        [v30 postEvent:v32 withInfo:v31];

        v9 = 0;
        goto LABEL_39;
      }

      v29 = [*(a1 + 32) engineLog];
      v25 = [v29 oslog];

      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      v27 = [*(a1 + 32) engineName];
      *buf = 138412290;
      v48 = v27;
      v28 = "%@ no download descriptor asset to load from";
    }

    else
    {
      v26 = [*(a1 + 32) engineLog];
      v25 = [v26 oslog];

      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      v27 = [*(a1 + 32) engineName];
      *buf = 138412290;
      v48 = v27;
      v28 = "%@ no download descriptor to load from";
    }

    _os_log_impl(&dword_26AB34000, v25, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);
LABEL_36:

    goto LABEL_37;
  }

  v4 = [MEMORY[0x277D64400] sharedCore];
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([*(a1 + 32) activated])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([*(a1 + 32) activating])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v5 initWithFormat:@"unexpected activate - activated:%@, activating:%@", v6, v7];
  v9 = [v4 buildError:8111 underlying:0 description:v8];

LABEL_39:
  v33 = [*(a1 + 32) engineFSM];
  v34 = [v33 diag];
  [v34 trackEnd:@"activateLoadingPersisted" atLevel:1 withResult:objc_msgSend(v9 withError:{"code"), v9}];

  v35 = *MEMORY[0x277D85DE8];
}

- (void)downloadUpdate:(id)update
{
  updateCopy = update;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  v5 = [[SUManagerEngineParam alloc] initWithDownloadDescriptor:updateCopy];

  [engineFSM postEvent:@"DownloadAndPrepare" withInfo:v5];
}

- (void)refreshInstallTonightConfig:(id)config
{
  configCopy = config;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__SUManagerEngine_refreshInstallTonightConfig___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = configCopy;
  v7 = configCopy;
  dispatch_async(extendedStateQueue, v8);
}

- (void)_updatePolicyFactoryMetricEventFields:(id)fields updateUUID:(id)d cleanupLevel:(id)level
{
  fieldsCopy = fields;
  dCopy = d;
  levelCopy = level;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = v12;
  if (fieldsCopy)
  {
    [v12 setValue:fieldsCopy forKey:*MEMORY[0x277D64620]];
  }

  if (dCopy)
  {
    [v13 setValue:dCopy forKey:*MEMORY[0x277D647C0]];
  }

  if (levelCopy)
  {
    levelCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", levelCopy];
    [v13 setSafeObject:levelCopy forKey:@"cleanupLevel"];
  }

  policyFactory = [(SUManagerEngine *)self policyFactory];
  globalOptions = [policyFactory globalOptions];

  [globalOptions appendUpdateMetricEventFields:v13];
  policyFactory2 = [(SUManagerEngine *)self policyFactory];
  [policyFactory2 setGlobalOptions:globalOptions];
}

- (void)installUpdate:(id)update
{
  updateCopy = update;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  v5 = [[SUManagerEngineParam alloc] initWithInstallOptions:updateCopy];

  [engineFSM postEvent:@"InstallUpdate" withInfo:v5];
}

- (void)removeUpdateKeepingDocAssets:(BOOL)assets
{
  if (assets)
  {
    v4 = [[SUManagerEngineParam alloc] initWithPurgeOptions:1 withError:0];
  }

  else
  {
    v4 = objc_alloc_init(SUManagerEngineParam);
  }

  v6 = v4;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  [engineFSM postEvent:@"RemoveUpdate" withInfo:v6];
}

- (id)availableRollback
{
  updateControl = [(SUManagerEngine *)self updateControl];

  if (!updateControl)
  {
    v4 = [objc_alloc(MEMORY[0x277D641F0]) initWithDelegate:self updateDescriptor:0 updateUUID:self->_rollbackUUID];
    [(SUManagerEngine *)self setUpdateControl:v4];
  }

  updateControl2 = [(SUManagerEngine *)self updateControl];
  rollbackAvailable = [updateControl2 rollbackAvailable];

  return rollbackAvailable;
}

- (id)previousRollback
{
  updateControl = [(SUManagerEngine *)self updateControl];

  if (!updateControl)
  {
    v4 = [objc_alloc(MEMORY[0x277D641F0]) initWithDelegate:self updateDescriptor:0 updateUUID:self->_rollbackUUID];
    [(SUManagerEngine *)self setUpdateControl:v4];
  }

  updateControl2 = [(SUManagerEngine *)self updateControl];
  previousRollback = [updateControl2 previousRollback];

  return previousRollback;
}

- (void)rollbackUpdateWithOptions:(id)options
{
  optionsCopy = options;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  v5 = [[SUManagerEngineParam alloc] initWithRollbackOptions:optionsCopy];

  [engineFSM postEvent:@"RollbackRequested" withInfo:v5];
}

- (void)onUnlock
{
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__SUManagerEngine_onUnlock__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(extendedStateQueue, block);
}

void __27__SUManagerEngine_onUnlock__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [MEMORY[0x277D64400] sharedCore];
    v5 = [v4 delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__SUManagerEngine_onUnlock__block_invoke_2;
    block[3] = &unk_279CAA708;
    block[4] = *(a1 + 32);
    dispatch_async(v5, block);
  }

  v6 = [*(a1 + 32) engineFSM];
  v7 = [SUManagerEngineParam alloc];
  v8 = [*(a1 + 32) downloadDescriptor];
  v9 = [(SUManagerEngineParam *)v7 initWithDownloadDescriptor:v8];
  [v6 postEvent:@"Unlocked" withInfo:v9];
}

void __27__SUManagerEngine_onUnlock__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) managerDelegate];
  [v1 sendUnlockNotifications:0];
}

- (void)createBrainLoadLockAssertion:(id)assertion
{
  assertionCopy = assertion;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__SUManagerEngine_createBrainLoadLockAssertion___block_invoke;
  v8[3] = &unk_279CAA8D0;
  v8[4] = self;
  v9 = assertionCopy;
  v7 = assertionCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __48__SUManagerEngine_createBrainLoadLockAssertion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = 0;
  [v2 _queue_createBrainLoadLockAssertion:&v5];
  v3 = v5;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (BOOL)_queue_createBrainLoadLockAssertion:(id *)assertion
{
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v7 = +[SUKeybagInterface sharedInstance];
  v8 = [v7 createPreventLockAssertionWithDuration:240];
  lockAssertion = self->_lockAssertion;
  self->_lockAssertion = v8;

  v10 = self->_lockAssertion;
  if (assertion && !v10)
  {
    *assertion = [SUUtility errorWithCode:-1];
  }

  return v10 != 0;
}

- (void)updateBrainLoadProgress:(id)progress
{
  progressCopy = progress;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__SUManagerEngine_updateBrainLoadProgress___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = progressCopy;
  v7 = progressCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __43__SUManagerEngine_updateBrainLoadProgress___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) engineFSM];
  v2 = [[SUManagerEngineParam alloc] initWithProgress:*(a1 + 40)];
  [v3 postEvent:@"UpdateProgress" withInfo:v2];
}

- (void)updateBrainLoadStalled:(id)stalled
{
  stalledCopy = stalled;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__SUManagerEngine_updateBrainLoadStalled___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = stalledCopy;
  v7 = stalledCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __42__SUManagerEngine_updateBrainLoadStalled___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) engineFSM];
  v2 = [[SUManagerEngineParam alloc] initWithProgress:*(a1 + 40)];
  [v3 postEvent:@"UpdateProgress" withInfo:v2];
}

- (void)updateBrainLoaded:(id)loaded
{
  loadedCopy = loaded;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__SUManagerEngine_updateBrainLoaded___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = loadedCopy;
  v7 = loadedCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __37__SUManagerEngine_updateBrainLoaded___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) engineFSM];
  v2 = *MEMORY[0x277D643B0];
  v3 = [[SUManagerEngineParam alloc] initWithProgress:*(a1 + 40)];
  [v4 postEvent:v2 withInfo:v3];
}

- (void)updateAssetDownloadPreflighted
{
  v9 = *MEMORY[0x277D85DE8];
  engineLog = [(SUManagerEngine *)self engineLog];
  oslog = [engineLog oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    engineName = [(SUManagerEngine *)self engineName];
    v7 = 138412290;
    v8 = engineName;
    _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ update asset download preflighted", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateAssetDownloadProgress:(id)progress
{
  progressCopy = progress;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__SUManagerEngine_updateAssetDownloadProgress___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = progressCopy;
  v7 = progressCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __47__SUManagerEngine_updateAssetDownloadProgress___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) engineFSM];
  v2 = [[SUManagerEngineParam alloc] initWithProgress:*(a1 + 40)];
  [v3 postEvent:@"UpdateProgress" withInfo:v2];
}

- (void)updateAssetDownloadStalled:(id)stalled
{
  stalledCopy = stalled;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__SUManagerEngine_updateAssetDownloadStalled___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = stalledCopy;
  v7 = stalledCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __46__SUManagerEngine_updateAssetDownloadStalled___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) engineFSM];
  v2 = [[SUManagerEngineParam alloc] initWithProgress:*(a1 + 40)];
  [v3 postEvent:@"UpdateProgress" withInfo:v2];
}

- (void)updateAssetDownloaded:(id)downloaded
{
  downloadedCopy = downloaded;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__SUManagerEngine_updateAssetDownloaded___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = downloadedCopy;
  v7 = downloadedCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __41__SUManagerEngine_updateAssetDownloaded___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) engineFSM];
  v2 = [[SUManagerEngineParam alloc] initWithProgress:*(a1 + 40)];
  [v3 postEvent:@"UpdateProgress" withInfo:v2];
}

- (void)updatePrepareProgress:(id)progress
{
  progressCopy = progress;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__SUManagerEngine_updatePrepareProgress___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = progressCopy;
  v7 = progressCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __41__SUManagerEngine_updatePrepareProgress___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) engineFSM];
  v2 = [[SUManagerEngineParam alloc] initWithProgress:*(a1 + 40)];
  [v3 postEvent:@"UpdateProgress" withInfo:v2];
}

- (void)updatePrepared:(id)prepared
{
  preparedCopy = prepared;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__SUManagerEngine_updatePrepared___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = preparedCopy;
  v7 = preparedCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __34__SUManagerEngine_updatePrepared___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) engineFSM];
  v2 = *MEMORY[0x277D643B8];
  v3 = [[SUManagerEngineParam alloc] initWithProgress:*(a1 + 40)];
  [v4 postEvent:v2 withInfo:v3];
}

- (void)updateApplied
{
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__SUManagerEngine_updateApplied__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(extendedStateQueue, block);
}

void __32__SUManagerEngine_updateApplied__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) engineFSM];
  v1 = *MEMORY[0x277D643A0];
  v2 = objc_alloc_init(SUManagerEngineParam);
  [v3 postEvent:v1 withInfo:v2];
}

- (void)applyAttemptFailed:(id)failed
{
  failedCopy = failed;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__SUManagerEngine_applyAttemptFailed___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v9 = failedCopy;
  selfCopy = self;
  v7 = failedCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __38__SUManagerEngine_applyAttemptFailed___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277D64398];
  v3 = *(a1 + 32);
  v34 = v2;
  if (!v3)
  {
    goto LABEL_21;
  }

  v4 = [v3 domain];
  v5 = v34;
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = v4;
  v7 = [*(a1 + 32) domain];
  if ([v7 isEqualToString:*MEMORY[0x277D292C8]])
  {
    v8 = [*(a1 + 32) code];

    v5 = v34;
    if (v8 != 5)
    {
      goto LABEL_8;
    }

    v5 = @"ApplyFailedDone";
    v6 = v34;
  }

  else
  {

    v5 = v34;
  }

LABEL_8:
  v9 = *(a1 + 32);
  if (!v9)
  {
    v29 = 0;
    v34 = v5;
    goto LABEL_23;
  }

  v10 = [v9 userInfo];
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  v12 = [*(a1 + 32) userInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_14;
  }

  v14 = [*(a1 + 32) userInfo];
  v15 = [v14 objectForKeyedSubscript:@"Recoverable"];
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  if (v16)
  {
    v17 = [*(a1 + 32) userInfo];
    v18 = [v17 objectForKeyedSubscript:@"Recoverable"];
    v19 = [v18 BOOLValue];

    if (v19)
    {
      v20 = v34;
    }

    else
    {
      v20 = @"ApplyFailedDone";
    }

    v35 = v20;

    v21 = v35;
  }

  else
  {
LABEL_14:
    v21 = v5;
  }

  v34 = v21;
  v22 = *(a1 + 32);
  if (!v22)
  {
LABEL_21:
    v29 = 0;
    goto LABEL_23;
  }

  v23 = [v22 userInfo];
  v24 = [v23 mutableCopy];

  if (!v24)
  {
    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v25 = [*(a1 + 40) policyFactory];
  v26 = [v25 installOptions];

  if (v26)
  {
    [v24 setSafeObject:v26 forKey:@"InstallOptions"];
  }

  v27 = MEMORY[0x277CCA9B8];
  v28 = [*(a1 + 32) domain];
  v29 = [v27 errorWithDomain:v28 code:objc_msgSend(*(a1 + 32) userInfo:{"code"), v24}];

LABEL_23:
  v30 = [*(a1 + 40) engineFSM];
  v31 = [SUManagerEngineParam alloc];
  v32 = [*(a1 + 40) downloadDescriptor];
  v33 = [(SUManagerEngineParam *)v31 initWithDescriptor:v32 andError:v29];
  [v30 postEvent:v34 withInfo:v33];
}

- (void)updateAttemptFailed:(id)failed
{
  failedCopy = failed;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__SUManagerEngine_updateAttemptFailed___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = failedCopy;
  v7 = failedCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __39__SUManagerEngine_updateAttemptFailed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingPurgeParams];

  v3 = [SUManagerEngineParam alloc];
  v4 = v3;
  if (v2)
  {
    v5 = [*(a1 + 32) pendingPurgeParams];
    v8 = -[SUManagerEngineParam initWithPurgeOptions:withError:](v4, "initWithPurgeOptions:withError:", [v5 skipDocAssetsPurge], *(a1 + 40));

    [*(a1 + 32) setPendingPurgeParams:0];
  }

  else
  {
    v8 = [(SUManagerEngineParam *)v3 initWithError:*(a1 + 40)];
  }

  v6 = [*(a1 + 32) engineFSM];
  v7 = [[SUManagerEngineParam alloc] initWithError:*(a1 + 40)];
  [v6 postEvent:@"UpdateFailed" withInfo:v7];
}

- (void)updateCanceled
{
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SUManagerEngine_updateCanceled__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(extendedStateQueue, block);
}

void __33__SUManagerEngine_updateCanceled__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingPurgeParams];

  if (v2)
  {
    v4 = [*(a1 + 32) pendingPurgeParams];
    [*(a1 + 32) setPendingPurgeParams:0];
  }

  else
  {
    v4 = objc_alloc_init(SUManagerEngineParam);
  }

  v3 = [*(a1 + 32) engineFSM];
  [v3 postEvent:@"UpdateCanceled" withInfo:v4];
}

- (void)updateRolledBack:(id)back
{
  backCopy = back;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__SUManagerEngine_updateRolledBack___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = backCopy;
  v7 = backCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __36__SUManagerEngine_updateRolledBack___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) engineFSM];
  v2 = [[SUManagerEngineParam alloc] initWithRollback:*(a1 + 40)];
  [v3 postEvent:@"RollbackComplete" withInfo:v2];
}

- (void)rollbackAttemptFailed:(id)failed withError:(id)error
{
  failedCopy = failed;
  errorCopy = error;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SUManagerEngine_rollbackAttemptFailed_withError___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v13 = failedCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = failedCopy;
  dispatch_async(extendedStateQueue, block);
}

void __51__SUManagerEngine_rollbackAttemptFailed_withError___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) engineFSM];
  v2 = [[SUManagerEngineParam alloc] initWithRollback:*(a1 + 40) withError:*(a1 + 48)];
  [v3 postEvent:@"RollbackFailed" withInfo:v2];
}

- (void)updateAnomaly:(id)anomaly
{
  v13 = *MEMORY[0x277D85DE8];
  anomalyCopy = anomaly;
  engineLog = [(SUManagerEngine *)self engineLog];
  oslog = [engineLog oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    engineName = [(SUManagerEngine *)self engineName];
    v9 = 138412546;
    v10 = engineName;
    v11 = 2112;
    v12 = anomalyCopy;
    _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ anomaly reporteed by update control interface, error:%@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)pathSatisficationStatusChangedTo:(BOOL)to
{
  toCopy = to;
  v16 = *MEMORY[0x277D85DE8];
  engineLog = [(SUManagerEngine *)self engineLog];
  oslog = [engineLog oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    engineName = [(SUManagerEngine *)self engineName];
    *buf = 138412546;
    v13 = engineName;
    v14 = 1024;
    v15 = toCopy;
    _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ path satisfication changed to: %d", buf, 0x12u);
  }

  if (toCopy)
  {
    engineFSM = [(SUManagerEngine *)self engineFSM];
    extendedStateQueue = [engineFSM extendedStateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__SUManagerEngine_pathSatisficationStatusChangedTo___block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(extendedStateQueue, block);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __52__SUManagerEngine_pathSatisficationStatusChangedTo___block_invoke(uint64_t a1)
{
  v2 = +[SUNetworkMonitor sharedInstance];
  [v2 removeObserver:*(a1 + 32)];

  v6 = [*(a1 + 32) engineFSM];
  v3 = [SUManagerEngineParam alloc];
  v4 = [*(a1 + 32) downloadDescriptor];
  v5 = [(SUManagerEngineParam *)v3 initWithDownloadDescriptor:v4];
  [v6 postEvent:@"NetworkAvailable" withInfo:v5];
}

- (BOOL)isBrainNetworkError:(id)error
{
  v29 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  engineLog = [(SUManagerEngine *)self engineLog];
  oslog = [engineLog oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    engineName = [(SUManagerEngine *)self engineName];
    v25 = 138412546;
    v26 = engineName;
    v27 = 2112;
    v28 = errorCopy;
    _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ Checking if engine parameter is brain network error, %@", &v25, 0x16u);
  }

  if ([errorCopy paramType] != 5)
  {
    engineLog2 = [(SUManagerEngine *)self engineLog];
    oslog2 = [engineLog2 oslog];

    if (!os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    engineName2 = [(SUManagerEngine *)self engineName];
    v25 = 138412290;
    v26 = engineName2;
    v15 = "%@ engine parameter is not an error";
LABEL_11:
    _os_log_impl(&dword_26AB34000, oslog2, OS_LOG_TYPE_DEFAULT, v15, &v25, 0xCu);

    goto LABEL_12;
  }

  error = [errorCopy error];
  domain = [error domain];
  v10 = [domain isEqualToString:*MEMORY[0x277D292C8]];

  if ((v10 & 1) == 0)
  {
    engineLog3 = [(SUManagerEngine *)self engineLog];
    oslog2 = [engineLog3 oslog];

    if (!os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    engineName2 = [(SUManagerEngine *)self engineName];
    v25 = 138412290;
    v26 = engineName2;
    v15 = "%@ engine error parameter is not in MSU domain";
    goto LABEL_11;
  }

  error2 = [errorCopy error];
  if ([error2 code] != 812)
  {
    error3 = [errorCopy error];
    code = [error3 code];

    if (code == 806)
    {
      goto LABEL_15;
    }

    engineLog4 = [(SUManagerEngine *)self engineLog];
    oslog2 = [engineLog4 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      engineName2 = [(SUManagerEngine *)self engineName];
      v25 = 138412290;
      v26 = engineName2;
      v15 = "%@ engine error parameter does not have a network failure code";
      goto LABEL_11;
    }

LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

LABEL_15:
  engineLog5 = [(SUManagerEngine *)self engineLog];
  oslog2 = [engineLog5 oslog];

  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    engineName3 = [(SUManagerEngine *)self engineName];
    v25 = 138412290;
    v26 = engineName3;
    _os_log_impl(&dword_26AB34000, oslog2, OS_LOG_TYPE_DEFAULT, "%@ Engine parameter is brain network error", &v25, 0xCu);
  }

  v17 = 1;
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)isBrainReloadError:(id)error
{
  v28 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  engineLog = [(SUManagerEngine *)self engineLog];
  oslog = [engineLog oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    engineName = [(SUManagerEngine *)self engineName];
    v24 = 138412546;
    v25 = engineName;
    v26 = 2112;
    v27 = errorCopy;
    _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ Checking if engine parameter is brain error that should be retried, %@", &v24, 0x16u);
  }

  if ([errorCopy paramType] != 5)
  {
    engineLog2 = [(SUManagerEngine *)self engineLog];
    oslog2 = [engineLog2 oslog];

    if (!os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    engineName2 = [(SUManagerEngine *)self engineName];
    v24 = 138412290;
    v25 = engineName2;
    v20 = "%@ engine parameter is not an error";
LABEL_15:
    _os_log_impl(&dword_26AB34000, oslog2, OS_LOG_TYPE_DEFAULT, v20, &v24, 0xCu);

    goto LABEL_16;
  }

  error = [errorCopy error];
  domain = [error domain];
  v10 = [domain isEqualToString:@"com.apple.softwareupdateservices.errors"];

  if ((v10 & 1) == 0)
  {
    engineLog3 = [(SUManagerEngine *)self engineLog];
    oslog2 = [engineLog3 oslog];

    if (!os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    engineName2 = [(SUManagerEngine *)self engineName];
    v24 = 138412290;
    v25 = engineName2;
    v20 = "%@ engine error parameter is not in SU domain";
    goto LABEL_15;
  }

  error2 = [errorCopy error];
  code = [error2 code];

  engineLog4 = [(SUManagerEngine *)self engineLog];
  oslog2 = [engineLog4 oslog];

  v15 = os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT);
  if (code != 107)
  {
    if (v15)
    {
      engineName2 = [(SUManagerEngine *)self engineName];
      v24 = 138412290;
      v25 = engineName2;
      v20 = "%@ engine error parameter does not have a brain should retry failure code";
      goto LABEL_15;
    }

LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  if (v15)
  {
    engineName3 = [(SUManagerEngine *)self engineName];
    v24 = 138412290;
    v25 = engineName3;
    _os_log_impl(&dword_26AB34000, oslog2, OS_LOG_TYPE_DEFAULT, "%@ Engine parameter is brain retry error", &v24, 0xCu);
  }

  v17 = 1;
LABEL_17:

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)cancelLockAssertion
{
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SUManagerEngine_cancelLockAssertion__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(extendedStateQueue, block);
}

- (void)_queue_cancelLockAssertion
{
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (self->_lockAssertion)
  {
    SULogInfo(@"Canceled lock assertion", v5, v6, v7, v8, v9, v10, v11, v13);
    [(SUInvalidatable *)self->_lockAssertion invalidate];
    lockAssertion = self->_lockAssertion;
    self->_lockAssertion = 0;
  }
}

- (id)updatePolicy
{
  policyFactory = [(SUManagerEngine *)self policyFactory];
  corePolicy = [policyFactory corePolicy];

  return corePolicy;
}

- (id)rollbackPolicy
{
  policyFactory = [(SUManagerEngine *)self policyFactory];
  rollbackPolicy = [policyFactory rollbackPolicy];

  return rollbackPolicy;
}

- (void)resetPolicy
{
  v3 = objc_alloc_init(SUPolicyFactory);
  [(SUManagerEngine *)self setPolicyFactory:v3];
}

- (void)notifyRollbackStarted:(id)started
{
  v17 = *MEMORY[0x277D85DE8];
  startedCopy = started;
  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __41__SUManagerEngine_notifyRollbackStarted___block_invoke;
    v13[3] = &unk_279CAA7C0;
    v13[4] = self;
    v14 = startedCopy;
    dispatch_async(delegateCallbackQueue, v13);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    oslog = [engineLog oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v16 = engineName;
      _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(rollbackStarted:) so not reporting", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __41__SUManagerEngine_notifyRollbackStarted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  [v2 rollbackStarted:*(a1 + 40)];
}

+ (int)softwareUpdateTypeForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if ([descriptorCopy splatOnly])
  {
    v4 = 4;
  }

  else
  {
    updateType = [descriptorCopy updateType];
    if ((updateType - 1) <= 2)
    {
      v4 = updateType;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (unint64_t)SUCoreAudienceTypeToSUSAudienceType:(int64_t)type
{
  if (type == 2)
  {
    return 2;
  }

  else
  {
    return type == 1;
  }
}

+ (unint64_t)SUCorePreferredTypeToSUSPreferenceType:(int64_t)type
{
  if (type == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (type == 2);
  }
}

+ (unint64_t)upgradeTypeForCoreDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  mEMORY[0x277D64420] = [MEMORY[0x277D64420] sharedDevice];
  productBuildVersion = [descriptorCopy productBuildVersion];
  v6 = [mEMORY[0x277D64420] isMinorOSUpdate:productBuildVersion];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    productBuildVersion2 = [descriptorCopy productBuildVersion];
    v9 = [mEMORY[0x277D64420] isMajorOSUpdate:productBuildVersion2];

    if (v9)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)SUOperationProgressFromSUCoreProgress:(id)progress
{
  progressCopy = progress;
  v4 = objc_alloc_init(SUOperationProgress);
  phase = [progressCopy phase];
  v6 = [phase isEqualToString:*MEMORY[0x277D64840]];

  if (v6)
  {
    [progressCopy portionComplete];
    if (v7 == 1.0)
    {
      v8 = kSUDownloadPhaseBrainExtracting;
      goto LABEL_11;
    }

    isStalled = [progressCopy isStalled];
    v8 = kSUDownloadPhaseBrainFetching;
    v12 = kSUDownloadPhaseBrainFetchingStalled;
LABEL_9:
    if (isStalled)
    {
      v8 = v12;
    }

    goto LABEL_11;
  }

  phase2 = [progressCopy phase];
  v10 = [phase2 isEqualToString:*MEMORY[0x277D64830]];

  if (v10)
  {
    isStalled = [progressCopy isStalled];
    v8 = kSUDownloadPhaseUpdateFetching;
    v12 = kSUDownloadPhaseUpdateFetchingStalled;
    goto LABEL_9;
  }

  phase3 = [progressCopy phase];
  v14 = [phase3 isEqualToString:*MEMORY[0x277D64848]];

  if (!v14)
  {
    goto LABEL_12;
  }

  v8 = kSUDownloadPhasePreparingForInstallation;
LABEL_11:
  [(SUOperationProgress *)v4 setPhase:*v8];
LABEL_12:
  [progressCopy portionComplete];
  [(SUOperationProgress *)v4 setIsDone:v15 == 1.0];
  [progressCopy portionComplete];
  [(SUOperationProgress *)v4 setPercentComplete:?];
  [progressCopy estimatedTimeRemaining];
  [(SUOperationProgress *)v4 setTimeRemaining:?];
  LODWORD(v16) = -1.0;
  [(SUOperationProgress *)v4 setNormalizedPercentComplete:v16];

  return v4;
}

+ (id)SUDescriptorFromCoreDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (descriptorCopy)
  {
    v5 = objc_alloc_init(SUDescriptor);
    documentation = [descriptorCopy documentation];

    if (documentation)
    {
      v7 = [SUDocumentation alloc];
      documentation2 = [descriptorCopy documentation];
      v9 = [(SUDocumentation *)v7 initWithSUCoreDocumentation:documentation2];
      [(SUDescriptor *)v5 setDocumentation:v9];
    }

    publisher = [descriptorCopy publisher];
    [(SUDescriptor *)v5 setPublisher:publisher];

    productSystemName = [descriptorCopy productSystemName];
    [(SUDescriptor *)v5 setProductSystemName:productSystemName];

    productVersion = [descriptorCopy productVersion];
    [(SUDescriptor *)v5 setProductVersion:productVersion];

    productVersionExtra = [descriptorCopy productVersionExtra];
    [(SUDescriptor *)v5 setProductVersionExtra:productVersionExtra];

    productBuildVersion = [descriptorCopy productBuildVersion];
    [(SUDescriptor *)v5 setProductBuildVersion:productBuildVersion];

    prerequisiteBuild = [descriptorCopy prerequisiteBuild];
    [(SUDescriptor *)v5 setPrerequisiteBuild:prerequisiteBuild];

    prerequisiteOSVersion = [descriptorCopy prerequisiteOSVersion];
    [(SUDescriptor *)v5 setPrerequisiteOS:prerequisiteOSVersion];

    releaseType = [descriptorCopy releaseType];
    [(SUDescriptor *)v5 setReleaseType:releaseType];

    -[SUDescriptor setDownloadSize:](v5, "setDownloadSize:", [descriptorCopy preSUStagingOptionalSize] + objc_msgSend(descriptorCopy, "downloadSize"));
    -[SUDescriptor _setUnarchiveSize:](v5, "_setUnarchiveSize:", [descriptorCopy unarchivedSize]);
    -[SUDescriptor _setMsuPrepareSize:](v5, "_setMsuPrepareSize:", [descriptorCopy msuPrepareSize]);
    -[SUDescriptor setInstallationSize:](v5, "setInstallationSize:", [descriptorCopy installationSize]);
    -[SUDescriptor setMinimumSystemPartitionSize:](v5, "setMinimumSystemPartitionSize:", [descriptorCopy minimumSystemPartitionSize]);
    -[SUDescriptor setPreparationSize:](v5, "setPreparationSize:", [descriptorCopy preparationSize]);
    -[SUDescriptor setTotalRequiredFreeSpace:](v5, "setTotalRequiredFreeSpace:", [descriptorCopy totalRequiredFreeSpace]);
    -[SUDescriptor setTotalSnapshotRequiredFreeSpace:](v5, "setTotalSnapshotRequiredFreeSpace:", [descriptorCopy totalSnapshotRequiredFreeSpace]);
    -[SUDescriptor setPreSUStagingRequiredSize:](v5, "setPreSUStagingRequiredSize:", [descriptorCopy preSUStagingRequiredSize]);
    -[SUDescriptor setPreSUStagingOptionalSize:](v5, "setPreSUStagingOptionalSize:", [descriptorCopy preSUStagingOptionalSize]);
    -[SUDescriptor setMinFreeSpacePostStageOptionalAssets:](v5, "setMinFreeSpacePostStageOptionalAssets:", [descriptorCopy minFreeSpacePostStageOptionalAssets]);
    -[SUDescriptor setUnentitledReserveAmount:](v5, "setUnentitledReserveAmount:", [descriptorCopy unentitledReserveAmount]);
    -[SUDescriptor _setStreamingZipCapable:](v5, "_setStreamingZipCapable:", [descriptorCopy streamingZipCapable]);
    -[SUDescriptor setUpdateType:](v5, "setUpdateType:", [self softwareUpdateTypeForDescriptor:descriptorCopy]);
    -[SUDescriptor setAutoDownloadAllowableForCellular:](v5, "setAutoDownloadAllowableForCellular:", [descriptorCopy autoDownloadAllowableOverCellular]);
    -[SUDescriptor setDownloadableOverCellular:](v5, "setDownloadableOverCellular:", [descriptorCopy downloadAllowableOverCellular]);
    -[SUDescriptor setDownloadable:](v5, "setDownloadable:", [descriptorCopy downloadable]);
    -[SUDescriptor _setDisableSiriVoiceDeletion:](v5, "_setDisableSiriVoiceDeletion:", [descriptorCopy disableSiriVoiceDeletion]);
    -[SUDescriptor _setDisableCDLevel4:](v5, "_setDisableCDLevel4:", [descriptorCopy disableCDLevel4]);
    -[SUDescriptor _setDisableAppDemotion:](v5, "_setDisableAppDemotion:", [descriptorCopy disableAppDemotion]);
    -[SUDescriptor _setDisableMASuspension:](v5, "_setDisableMASuspension:", [descriptorCopy disableMASuspension]);
    -[SUDescriptor _setDisableInstallTonight:](v5, "_setDisableInstallTonight:", [descriptorCopy disableInstallTonight]);
    -[SUDescriptor setRampEnabled:](v5, "setRampEnabled:", [descriptorCopy rampEnabled]);
    -[SUDescriptor setGranularlyRamped:](v5, "setGranularlyRamped:", [descriptorCopy granularlyRamped]);
    -[SUDescriptor setCriticalOutOfBoxOnly:](v5, "setCriticalOutOfBoxOnly:", [descriptorCopy criticalOutOfBoxOnly]);
    -[SUDescriptor setAutoUpdateEnabled:](v5, "setAutoUpdateEnabled:", [descriptorCopy autoUpdateEnabled]);
    setupCritical = [descriptorCopy setupCritical];
    [(SUDescriptor *)v5 setSetupCritical:setupCritical];

    criticalOverrideCellularPolicy = [descriptorCopy criticalOverrideCellularPolicy];
    [(SUDescriptor *)v5 setCriticalDownloadPolicy:criticalOverrideCellularPolicy];

    systemPartitionPadding = [descriptorCopy systemPartitionPadding];
    [(SUDescriptor *)v5 setSystemPartitionPadding:systemPartitionPadding];

    sepDigest = [descriptorCopy sepDigest];
    [(SUDescriptor *)v5 setSEPDigest:sepDigest];

    rsepDigest = [descriptorCopy rsepDigest];
    [(SUDescriptor *)v5 setRSEPDigest:rsepDigest];

    sepTBMDigests = [descriptorCopy sepTBMDigests];
    [(SUDescriptor *)v5 setSEPTBMDigest:sepTBMDigests];

    rsepTBMDigests = [descriptorCopy rsepTBMDigests];
    [(SUDescriptor *)v5 setRSEPTBMDigest:rsepTBMDigests];

    releaseDate = [descriptorCopy releaseDate];
    [(SUDescriptor *)v5 setReleaseDate:releaseDate];

    -[SUDescriptor setMdmDelayInterval:](v5, "setMdmDelayInterval:", [descriptorCopy mdmDelayInterval]);
    assetID = [descriptorCopy assetID];
    [(SUDescriptor *)v5 setAssetID:assetID];

    -[SUDescriptor setAudienceType:](v5, "setAudienceType:", [self SUCoreAudienceTypeToSUSAudienceType:{objc_msgSend(descriptorCopy, "descriptorAudienceType")}]);
    -[SUDescriptor setPreferenceType:](v5, "setPreferenceType:", [self SUCorePreferredTypeToSUSPreferenceType:{objc_msgSend(descriptorCopy, "preferredUpdateType")}]);
    -[SUDescriptor setUpgradeType:](v5, "setUpgradeType:", [self upgradeTypeForCoreDescriptor:descriptorCopy]);
    v27 = +[SUPreferences sharedInstance];
    if ([v27 alwaysPromoteAlternate])
    {
      promoteAlternateUpdate = 1;
    }

    else
    {
      promoteAlternateUpdate = [descriptorCopy promoteAlternateUpdate];
    }

    [(SUDescriptor *)v5 setPromoteAlternateUpdate:promoteAlternateUpdate];

    -[SUDescriptor setHideInstallAlert:](v5, "setHideInstallAlert:", [self shouldHideInstallAlertForCoreDescriptor:descriptorCopy]);
    -[SUDescriptor setIsSplatOnly:](v5, "setIsSplatOnly:", [descriptorCopy splatOnly]);
    humanReadableUpdateName = [descriptorCopy humanReadableUpdateName];
    [(SUDescriptor *)v5 setHumanReadableUpdateName:humanReadableUpdateName];

    -[SUDescriptor setMandatoryUpdateEligible:](v5, "setMandatoryUpdateEligible:", [descriptorCopy mandatoryUpdateEligible]);
    mandatoryUpdateVersionMin = [descriptorCopy mandatoryUpdateVersionMin];
    [(SUDescriptor *)v5 setMandatoryUpdateVersionMin:mandatoryUpdateVersionMin];

    mandatoryUpdateVersionMax = [descriptorCopy mandatoryUpdateVersionMax];
    [(SUDescriptor *)v5 setMandatoryUpdateVersionMax:mandatoryUpdateVersionMax];

    -[SUDescriptor setMandatoryUpdateOptional:](v5, "setMandatoryUpdateOptional:", [descriptorCopy mandatoryUpdateOptional]);
    -[SUDescriptor setMandatoryUpdateRestrictedToOutOfTheBox:](v5, "setMandatoryUpdateRestrictedToOutOfTheBox:", [descriptorCopy mandatoryUpdateRestrictedToOutOfTheBox]);
    -[SUDescriptor setForcePasscodeRequired:](v5, "setForcePasscodeRequired:", [descriptorCopy forcePasscodeRequired]);
    -[SUDescriptor setAllowAutoDownloadOnBattery:](v5, "setAllowAutoDownloadOnBattery:", [descriptorCopy allowAutoDownloadOnBattery]);
    -[SUDescriptor setAutoDownloadOnBatteryDelay:](v5, "setAutoDownloadOnBatteryDelay:", [descriptorCopy autoDownloadOnBatteryDelay]);
    -[SUDescriptor setAutoDownloadOnBatteryMinBattery:](v5, "setAutoDownloadOnBatteryMinBattery:", [descriptorCopy autoDownloadOnBatteryMinBattery]);
    associatedSplatDescriptor = [descriptorCopy associatedSplatDescriptor];
    [(SUDescriptor *)v5 setIsSplombo:associatedSplatDescriptor != 0];

    associatedSplatDescriptor2 = [descriptorCopy associatedSplatDescriptor];
    productBuildVersion2 = [associatedSplatDescriptor2 productBuildVersion];
    [(SUDescriptor *)v5 setSplatComboBuildVersion:productBuildVersion2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)SUDescriptorFromRollbackDescriptor:(id)descriptor
{
  if (descriptor)
  {
    descriptorCopy = descriptor;
    v4 = objc_alloc_init(SUDescriptor);
    productBuildVersion = [descriptorCopy productBuildVersion];
    [(SUDescriptor *)v4 setProductBuildVersion:productBuildVersion];

    productVersion = [descriptorCopy productVersion];
    [(SUDescriptor *)v4 setProductVersion:productVersion];

    releaseType = [descriptorCopy releaseType];

    [(SUDescriptor *)v4 setReleaseType:releaseType];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)shouldHideInstallAlertForCoreDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if ([descriptorCopy hideInstallAlert] == 2)
  {
    v4 = +[SUUtility currentReleaseType];
    v5 = [v4 isEqualToString:@"Beta"];

    if (v5)
    {
      v6 = 0;
    }

    else
    {
      productVersion = [descriptorCopy productVersion];
      v6 = [SUAssetSupport updateIsPreCRelease:productVersion];

      SULogInfo(@"%s: Current release type is not developer, overriding HideInstallAlert to: %@", v8, v9, v10, v11, v12, v13, v14, "+[SUManagerEngine shouldHideInstallAlertForCoreDescriptor:]");
    }
  }

  else
  {
    v6 = [descriptorCopy hideInstallAlert] != 0;
  }

  return v6;
}

+ (id)rollbackDescriptorForSUCoreRollbackDescriptor:(id)descriptor
{
  if (descriptor)
  {
    descriptorCopy = descriptor;
    v4 = objc_alloc_init(SURollbackDescriptor);
    restoreVersion = [descriptorCopy restoreVersion];
    [(SURollbackDescriptor *)v4 setRestoreVersion:restoreVersion];

    productVersion = [descriptorCopy productVersion];
    [(SURollbackDescriptor *)v4 setProductVersion:productVersion];

    productBuildVersion = [descriptorCopy productBuildVersion];
    [(SURollbackDescriptor *)v4 setProductBuildVersion:productBuildVersion];

    releaseType = [descriptorCopy releaseType];

    [(SURollbackDescriptor *)v4 setReleaseType:releaseType];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SUManagerEngineDelegate)managerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_managerDelegate);

  return WeakRetained;
}

@end