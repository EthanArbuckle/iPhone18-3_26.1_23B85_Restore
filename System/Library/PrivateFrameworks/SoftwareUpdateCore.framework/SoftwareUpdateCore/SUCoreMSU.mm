@interface SUCoreMSU
- (SUCoreMSU)initWithDelegate:(id)delegate withCallbackQueue:(id)queue;
- (id)_newMSUOptionsUsingPolicy:(id)policy descriptor:(id)descriptor baseOptions:(id)options;
- (id)_newMSURollbackOptionsUsingPolicy:(id)policy rollbackDescriptor:(id)descriptor baseOptions:(id)options additionalOptions:(id)additionalOptions;
- (id)_newPreflightOptionsUsingPolicy:(id)policy subPolicyClass:(Class)class descriptor:(id)descriptor baseOptions:(id)options additionalOptions:(id)additionalOptions;
- (id)_newPrepareOptionsUsingPolicy:(id)policy descriptor:(id)descriptor;
- (id)_newRollbackPrepareOptionsUsingPolicy:(id)policy rollbackDescriptor:(id)descriptor;
- (id)msuDelegate;
- (int)applyProgress:(__CFDictionary *)progress;
- (int)prepareProgress:(__CFDictionary *)progress;
- (void)_addRemoteServerAccessControlToMSUOptions:(id)options usingPolicy:(id)policy;
- (void)_addUpdateMetricsEventFieldsToMSUOptions:(id)options usingPolicy:(id)policy descriptor:(id)descriptor;
- (void)_addUpdateMetricsEventFieldsToMSURollbackOptions:(id)options usingPolicy:(id)policy rollbackDescriptor:(id)descriptor;
- (void)_operationApplyUpdate:(id)update;
- (void)_operationLoadBrain:(id)brain;
- (void)_operationPreflightFDRRecovery:(id)recovery;
- (void)_operationPreflightPersonalize:(id)personalize;
- (void)_operationPreflightPrerequisiteCheck:(id)check;
- (void)_operationPreflightSUDownload:(id)download;
- (void)_operationPreflightWakeup:(id)wakeup;
- (void)_operationPrepareUpdate:(id)update;
- (void)_operationResumeUpdate:(id)update;
- (void)_operationRollbackUpdateApply:(id)apply;
- (void)_operationRollbackUpdatePrepare:(id)prepare;
- (void)_operationRollbackUpdateResume:(id)resume;
- (void)_operationRollbackUpdateSuspend:(id)suspend;
- (void)_operationSuspendUpdate;
- (void)_removePrepared;
- (void)_reportAnomaly:(id)anomaly;
- (void)_reportApplied;
- (void)_reportApplyFailed:(id)failed;
- (void)_reportApplyProgress:(id)progress;
- (void)_reportBrainLoadFailed:(id)failed;
- (void)_reportBrainLoadProgress:(id)progress;
- (void)_reportBrainLoadStalled:(id)stalled;
- (void)_reportBrainLoaded:(id)loaded;
- (void)_reportFDRRecoveryPreflightFailed:(id)failed;
- (void)_reportFDRRecoveryPreflighted;
- (void)_reportPersonalizePreflightFailed:(id)failed;
- (void)_reportPersonalizePreflighted;
- (void)_reportPrepareFailed:(id)failed;
- (void)_reportPrepareProgress:(id)progress;
- (void)_reportPrepared:(id)prepared;
- (void)_reportPrerequisiteCheckPreflightFailed:(id)failed;
- (void)_reportPrerequisiteCheckPreflighted;
- (void)_reportRemoveFailed:(id)failed;
- (void)_reportRemoved;
- (void)_reportResumeFailed:(id)failed;
- (void)_reportResumed;
- (void)_reportRollbackApplyFailed:(id)failed;
- (void)_reportRollbackApplySuccess;
- (void)_reportRollbackFailed:(id)failed;
- (void)_reportRollbackPrepareSuccess;
- (void)_reportRollbackResumeSuccess;
- (void)_reportRollbackSuspendSuccess;
- (void)_reportSUDownloadPreflightFailed:(id)failed;
- (void)_reportSUDownloadPreflighted;
- (void)_reportSuspendFailed:(id)failed;
- (void)_reportSuspended;
- (void)_reportWakeupPreflightFailed:(id)failed;
- (void)_reportWakeupPreflighted;
- (void)_trackMSUAnomaly:(id)anomaly result:(int64_t)result description:(id)description underlying:(id)underlying;
- (void)_trackMSUBegin:(id)begin;
- (void)_trackMSUEnd:(id)end withResult:(int64_t)result withError:(id)error;
- (void)_trackMSUOptions:(id)options optionsName:(id)name withMSUOptions:(id)uOptions;
- (void)applyUpdate:(id)update;
- (void)assignDescriptor:(id)descriptor updateUUID:(id)d;
- (void)assignRollbackDescriptor:(id)descriptor updateUUID:(id)d;
- (void)cancelPrepare;
- (void)loadBrain:(id)brain;
- (void)loadBrainProgress:(id)progress error:(id)error;
- (void)preflightDownloadSU:(id)u;
- (void)preflightFDRRecovery:(id)recovery;
- (void)preflightPersonalize:(id)personalize;
- (void)preflightPrerequisiteCheck:(id)check;
- (void)preflightWakeup:(id)wakeup;
- (void)prepareUpdate:(id)update;
- (void)removePrepared;
- (void)resumeUpdate:(id)update;
- (void)rollbackUpdateApply:(id)apply;
- (void)rollbackUpdatePrepare:(id)prepare;
- (void)rollbackUpdateResume:(id)resume;
- (void)rollbackUpdateSuspend:(id)suspend;
- (void)suspendUpdate;
- (void)updatePrepareOptions:(id)options withPolicy:(id)policy;
@end

@implementation SUCoreMSU

- (SUCoreMSU)initWithDelegate:(id)delegate withCallbackQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v34.receiver = self;
  v34.super_class = SUCoreMSU;
  v8 = [(SUCoreMSU *)&v34 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_msuDelegate, delegateCopy);
    updateUUID = v9->_updateUUID;
    v9->_updateUUID = 0;

    descriptionName = v9->_descriptionName;
    v9->_descriptionName = @"NotAssigned";

    updateDescriptor = v9->_updateDescriptor;
    v9->_updateDescriptor = 0;

    v9->_nextProgressThreshold = 0.0;
    *&v9->_performingOperation = 0;
    v9->_applyProgressFinal = 0;
    applyProgressActionText = v9->_applyProgressActionText;
    v9->_applyProgressActionText = 0;

    brainLoader = v9->_brainLoader;
    v9->_brainLoader = 0;

    v9->_msuHandle = 0;
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    commonDomain = [mEMORY[0x277D643F8] commonDomain];

    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.%@", commonDomain, @"msu.control"];
    uTF8String = [v17 UTF8String];
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create(uTF8String, v19);
    msuControlQueue = v9->_msuControlQueue;
    v9->_msuControlQueue = v20;

    if (v9->_msuControlQueue)
    {
      v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.%@", commonDomain, @"msu.operation"];
      uTF8String2 = [v22 UTF8String];
      v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v25 = dispatch_queue_create(uTF8String2, v24);
      msuOperationQueue = v9->_msuOperationQueue;
      v9->_msuOperationQueue = v25;

      if (v9->_msuOperationQueue)
      {
        mEMORY[0x277D643F8]2 = [MEMORY[0x277D643F8] sharedCore];
        v28 = [mEMORY[0x277D643F8]2 selectDelegateCallbackQueue:queueCopy];
        clientDelegateCallbackQueue = v9->_clientDelegateCallbackQueue;
        v9->_clientDelegateCallbackQueue = v28;

        if (initWithDelegate_withCallbackQueue__msuErrorInfoOnce != -1)
        {
          [SUCoreMSU initWithDelegate:withCallbackQueue:];
        }

        goto LABEL_7;
      }

      v31 = @"unable to create MSU operation dispatch queue";
    }

    else
    {
      v31 = @"unable to create MSU control dispatch queue";
    }

    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428] trackError:@"[MSU]" forReason:v31 withResult:8100 withError:0];

    v30 = 0;
    goto LABEL_11;
  }

LABEL_7:
  v30 = v9;
LABEL_11:

  return v30;
}

uint64_t __48__SUCoreMSU_initWithDelegate_withCallbackQueue___block_invoke()
{
  v0 = *MEMORY[0x277D292C8];
  [MEMORY[0x277D64430] associateLayer:510 withDomain:*MEMORY[0x277D292C8] indicating:2 ifKeyTrue:@"MSUFullReplacementRecommened"];
  [MEMORY[0x277D64430] associateLayer:512 withDomain:@"com.apple.BuildInfo.preflight.error" indicating:8 ifKeyTrue:@"BIPreflightAlternateInstallerRecommended"];
  v1 = *MEMORY[0x277D292D0];
  [MEMORY[0x277D64430] associateLayer:511 withDomain:*MEMORY[0x277D292D0]];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:1 codeName:@"MSU_ERR_BAD_SIGNATURE"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:2 codeName:@"MSU_ERR_PERSONALIZATION_FAILURE"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:3 codeName:@"MSU_ERR_FILESYSTEM_DOESNT_VERIFY"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:4 codeName:@"MSU_ERR_PENDING_UPDATE"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:5 codeName:@"MSU_ERR_NO_SUSPENDED_UPDATE"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:6 codeName:@"MSU_ERR_NONFATAL_RESIZE_FAILURE"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:7 codeName:@"MSU_ERR_INTERNAL_ERROR"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:8 codeName:@"MSU_ERR_INVALID_INFO_PLIST"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:9 codeName:@"MSU_ERR_BAD_ARGUMENT"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:10 codeName:@"MSU_ERR_UPDATE_BRAIN"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:11 codeName:@"MSU_ERR_BOOT_SETUP_FAILURE"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:12 codeName:@"MSU_ERR_CANCEL"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:13 codeName:@"MSU_ERR_FDR"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:14 codeName:@"MSU_ERR_ALLOC"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:15 codeName:@"MSU_ERR_PROGRAMMED_FAILURE"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:16 codeName:@"MSU_ERR_PREPARE_FAILURE"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:17 codeName:@"MSU_ERR_APPLY_FAILURE"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:18 codeName:@"MSU_ERR_PARALLELEXTRACTPAYLOAD"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:19 codeName:@"MSU_ERR_PARALLELAPPLYPATCHFILES"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:20 codeName:@"MSU_ERR_INSUFFICIENT_DISK_SPACE"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:21 codeName:@"MSU_ERR_CONTENT_HASHES"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:23 codeName:@"MSU_ERR_APP_DEMOTION"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:24 codeName:@"MSU_ERR_PREBRAIN_SCAN"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:25 codeName:@"MSU_ERR_PREBRAIN_DOWNLOAD"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:26 codeName:@"MSU_ERR_NO_STASHBAG"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:27 codeName:@"MSU_ERR_FAILED_BRAIN_LOAD"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:28 codeName:@"MSU_ERR_NO_BRAIN"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:29 codeName:@"MSU_ERR_PACKAGE_FAILURE"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:30 codeName:@"MSU_ERR_RETRIEVE_AP_NONCE"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:31 codeName:@"MSU_ERR_PERSONALIZATION_VERIFICATION_FAILURE"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:32 codeName:@"MSU_ERR_NETWORK"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:33 codeName:@"MSU_ERR_DEMO_MODE"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:34 codeName:@"MSU_ERR_PURGE_QUERY_FAILURE"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:35 codeName:@"MSU_ERR_LOCAL_QUERY_FAILURE"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:36 codeName:@"MSU_ERR_BRIDGE_CALLING_MA"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:37 codeName:@"MSU_ERR_RETRIEVE_UCRT_FAILED"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:38 codeName:@"MSU_ERR_COPY_DEVICE_IDENTITY"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:39 codeName:@"MSU_ERR_FAILED_TRUST_CACHE_LOAD"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:40 codeName:@"MSU_ERR_CONNECT_SOFTWAREUPDATED"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:41 codeName:@"MSU_ERR_BACKWARDS_UPDATE"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:42 codeName:@"MSU_ERR_MISSING_TARGET"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:43 codeName:@"MSU_ERR_BOOTPOLICY_FAILURE"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:44 codeName:@"MSU_ERR_BRIDGEOS_PERSONALIZATION_FAILURE"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:45 codeName:@"MSU_ERR_BRIDGEOS_PREPARE_FAILURE"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:46 codeName:@"MSU_ERR_BRIDGEOS_APPLY_FAILURE"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:47 codeName:@"MSU_ERR_LIVE_SNAPSHOT_MOUNT_FAILED"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:48 codeName:@"MSU_ERR_CREATE_SNAPSHOT_FAILED"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:49 codeName:@"MSU_ERR_SET_TARGET_SYSTEM_FAILED"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:50 codeName:@"MSU_ERR_CONFIGURE_TARGET_FAILED"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:51 codeName:@"MSU_ERR_PREP_INSTALL_TARGET_FAILED"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:52 codeName:@"MSU_ERR_GLOBAL_TICKET_NOT_FOUND"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:53 codeName:@"MSU_ERR_GLOBAL_TICKET_INVALID"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:54 codeName:@"MSU_ERR_MEDIUM_DOWNGRADE_NOT_ALLOWED"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:55 codeName:@"MSU_ERR_INTERNAL_USE_ONLY_BUILD"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:56 codeName:@"MSU_ERR_STAGE_SPLAT_FAILED"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:57 codeName:@"MSU_ERR_SPLAT_PREBOOT_UNAVAILABLE"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:58 codeName:@"MSU_ERR_ROLLBACK_UNSUPPORTED"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:59 codeName:@"MSU_ERR_ROLLBACK_UNAVAILABLE"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:60 codeName:@"MSU_ERR_STAGE_SPLAT_ROLLBACK_FAILED"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:61 codeName:@"MSU_ERR_PARALLELPATCHIMAGEINFO_FAILED"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:62 codeName:@"MSU_ERR_MOUNT_PREBOOT"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:63 codeName:@"MSU_ERR_PRESOFTWAREUPDATESTAGING"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:64 codeName:@"MSU_ERR_STAGE_SEMISPLAT_FAILED"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:65 codeName:@"MSU_ERR_IMG4_NONCE_PREROLL_FAILED"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:66 codeName:@"MSU_ERR_IMG4_NONCE_UNSUPPORTED"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:67 codeName:@"MSU_ERR_BOOTPOLICY_NONCES_CHANGED"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:801 codeName:@"MSU_ERR_BRAINLOAD_MISSING_PLIST"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:802 codeName:@"MSU_ERR_BRAINLOAD_NO_LOCATION"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:803 codeName:@"MSU_ERR_BRAINLOAD_NO_QUERY_RESULTS"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:804 codeName:@"MSU_ERR_BRAINLOAD_SORT_EXCEPTION"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:805 codeName:@"MSU_ERR_BRAINLOAD_NO_BEST_ASSET"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:806 codeName:@"MSU_ERR_BRAINLOAD_ASSET_DOWNLOAD_FAILED"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:807 codeName:@"MSU_ERR_BRAINLOAD_NO_ASSET"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:808 codeName:@"MSU_ERR_BRAINLOAD_ADJUST_FAILED"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:809 codeName:@"MSU_ERR_BRAINLOAD_ADJUST_NOT_DOWNLOADING"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:810 codeName:@"MSU_ERR_BRAINLOAD_CANCEL_FAILED"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:811 codeName:@"MSU_ERR_BRAINLOAD_QUERY_FAILED"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:812 codeName:@"MSU_ERR_BRAINLOAD_CATALOG_DOWNLOAD_FAILED"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:813 codeName:@"MSU_ERR_BRAINLOAD_PURGE_FAILED"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:814 codeName:@"MSU_ERR_BRAINLOAD_SPACE_CHECK_FAILED"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:815 codeName:@"MSU_ERR_BRAINLOAD_CANCEL_DOWNLOAD_FAILED"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:816 codeName:@"MSU_ERR_BRAINLOAD_NO_SHARED_CONNECTION"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:817 codeName:@"MSU_ERR_BRAINLOAD_NO_BRAIN_LOCATOR"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v0 withCode:818 codeName:@"MSU_ERR_BRAINLOAD_INVALID_RESPONSE"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:1 codeName:@"BIPreflightErrorMissingTargetMedia"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:2 codeName:@"BIPreflightErrorTargetIsEncrypted"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:3 codeName:@"BIPreflightErrorTargetIsNotMounted"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:4 codeName:@"BIPreflightErrorTargetIsFirewireDisk"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:5 codeName:@"BIPreflightErrorTargetIsTargetDiskMode"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:6 codeName:@"BIPreflightErrorTargetIsNotSnapshotBooted"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:7 codeName:@"BIPreflightErrorTargetIsAppleRAID"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:8 codeName:@"BIPreflightErrorTargetIsCaseSensitive"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:9 codeName:@"BIPreflightErrorDeviceNotSupported"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:10 codeName:@"BIPreflightErrorTargetNotCompatible"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:11 codeName:@"BIPreflightErrorTargetHasInvalidBAACert"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:12 codeName:@"BIPreflightErrorBaseBuildNotCompatible"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:13 codeName:@"BIPreflightErrorUpdateIsNotMounted"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:14 codeName:@"BIPreflightErrorBootIsNotMounted"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:15 codeName:@"BIPreflightErrorBootOutOfSpace" indicating:4];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:16 codeName:@"BIPreflightErrorTargetOutOfSpace" indicating:4];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:17 codeName:@"BIPreflightErrorUpdateOutOfSpace" indicating:4];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:18 codeName:@"BIPreflightErrorStatFailed"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:19 codeName:@"BIPreflightErrorInsufficientFreeSpace" indicating:4];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:20 codeName:@"BIPreflightErrorTargetIsBackupDisk"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:21 codeName:@"BIPreflightErrorDowngrade"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:22 codeName:@"BIPreflightErrorNotInstallable"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:23 codeName:@"BIPreflightErrorIsDiskUser"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:24 codeName:@"BIPreflightErrorHasInstallerUser"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:25 codeName:@"BIPreflightErrorBootVolumeIsExternal"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:26 codeName:@"BIPreflightErrorRosettaDownloadNotAllowed"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:27 codeName:@"BIPreflightErrorNetworkingRequired" indicating:1];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:28 codeName:@"BIPreflightErrorAlternateInstaller"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:29 codeName:@"BIPreflightErrorFullReplacement"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:32 codeName:@"BIPreflightErrorMacOSServerUnsupported"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.BuildInfo.preflight.error" withCode:33 codeName:@"BIPreflightErrorInvalidStartupDisk"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:1 codeName:@"kAMAuthInstallErrorBadParameter"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:2 codeName:@"kAMAuthInstallErrorAllocation"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:3 codeName:@"kAMAuthInstallErrorConversion"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:4 codeName:@"kAMAuthInstallErrorFile"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:5 codeName:@"kAMAuthInstallErrorHash"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:6 codeName:@"kAMAuthInstallErrorCrypto"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:7 codeName:@"kAMAuthInstallErrorBadBuildIdentity"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:8 codeName:@"kAMAuthInstallErrorEntryNotFound"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:9 codeName:@"kAMAuthInstallErrorInvalidImg3Object"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:10 codeName:@"kAMAuthInstallErrorInvalidFlsObject"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:11 codeName:@"kAMAuthInstallErrorServerNotReachable" indicating:1];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:12 codeName:@"kAMAuthInstallErrorServerTimedOut" indicating:1];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:13 codeName:@"kAMAuthInstallErrorUnimplemented"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:14 codeName:@"kAMAuthInstallErrorInternal"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:15 codeName:@"kAMAuthInstallErrorInvalidBbfwFile"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:16 codeName:@"kAMAuthInstallErrorNetwork"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:17 codeName:@"kAMAuthInstallErrorBadResponse"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:18 codeName:@"kAMAuthInstallErrorFusingFailed"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:19 codeName:@"kAMAuthInstallErrorBBProvisioningFailed"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:20 codeName:@"kAMAuthInstallErrorAppleConnectNotFound"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:21 codeName:@"kAMAuthInstallErrorAppleConnectCanceled"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:22 codeName:@"kAMAuthInstallErrorAppleConnectAuthFailed"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:23 codeName:@"kAMAuthInstallErrorInvalidImg4Object"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:24 codeName:@"kAMAuthInstallErrorProvisioningAckFailed"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:25 codeName:@"kAMAuthInstallErrorUpdaterOperation"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:26 codeName:@"kAMAuthInstallErrorUpdaterNotFound"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:99 codeName:@"kAMAuthInstallErrorGeneric"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:3194 codeName:@"kAMAuthInstallTATSUDeclinedAuthorization" indicating:16];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:3501 codeName:@"kAMAuthInstallErrorHTTPUnauthorized"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:3503 codeName:@"kAMAuthInstallErrorHTTPForbidden"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:3504 codeName:@"kAMAuthInstallErrorHTTPNotFound"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:3507 codeName:@"kAMAuthInstallErrorHTTPProxyAuthNeeded"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:3500 codeName:@"kAMAuthInstallErrorHTTPInternalServerError"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:5000 codeName:@"kAMAuthInstallErrorZipOpenFailed"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:5001 codeName:@"kAMAuthInstallErrorZipWriteFailed"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:5002 codeName:@"kAMAuthInstallErrorZipCloseFailed"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:5003 codeName:@"kAMAuthInstallErrorZipParamError"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:5004 codeName:@"kAMAuthInstallErrorZipBadZipFile"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:5005 codeName:@"kAMAuthInstallErrorZipInternalError"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:5006 codeName:@"kAMAuthInstallErrorZipStreamError"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:5007 codeName:@"kAMAuthInstallErrorZipDataError"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:5008 codeName:@"kAMAuthInstallErrorZipMemError"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:v1 withCode:5009 codeName:@"kAMAuthInstallErrorZipBufError"];
  v2 = MEMORY[0x277D64430];

  return [v2 attributesOfErrorForDomain:v1 withCode:5010 codeName:@"kAMAuthInstallErrorZipVersionError"];
}

- (void)assignDescriptor:(id)descriptor updateUUID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  dCopy = d;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v19 = 2114;
    v20 = dCopy;
    v21 = 2114;
    v22 = descriptorCopy;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ ASSIGN_DESCRIPTOR: Client provided updateUUID: %{public}@; descriptor: %{public}@", buf, 0x20u);
  }

  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SUCoreMSU_assignDescriptor_updateUUID___block_invoke;
  block[3] = &unk_27892D340;
  block[4] = self;
  v15 = descriptorCopy;
  v16 = dCopy;
  v11 = dCopy;
  v12 = descriptorCopy;
  dispatch_async(msuControlQueue, block);

  v13 = *MEMORY[0x277D85DE8];
}

void __41__SUCoreMSU_assignDescriptor_updateUUID___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) performingOperation] & 1) != 0 || (objc_msgSend(*(a1 + 32), "cancelingPrepare") & 1) != 0 || objc_msgSend(*(a1 + 32), "removingPrepared"))
  {
    v2 = *(a1 + 32);
    v3 = *MEMORY[0x277D85DE8];

    [v2 _trackMSUAnomaly:@"ASSIGN_DESCRIPTOR" result:8115 description:@"busy performing other MSU operation"];
    return;
  }

  [*(a1 + 32) setUpdateDescriptor:*(a1 + 40)];
  [*(a1 + 32) setUpdateUUID:*(a1 + 48)];
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = [*(a1 + 32) updateUUID];
  v6 = [v4 initWithFormat:@"[MSU(%@)]", v5];
  [*(a1 + 32) setDescriptionName:v6];

  v7 = [*(a1 + 32) updateDescriptor];
  if ([v7 descriptorType] == 2)
  {

LABEL_10:
    v10 = [objc_alloc(MEMORY[0x277D292C0]) initWithUpdateAsset:0];
    [*(a1 + 32) setBrainLoader:v10];

    goto LABEL_11;
  }

  v8 = [*(a1 + 32) updateDescriptor];
  v9 = [v8 descriptorType];

  if (v9 == 4)
  {
    goto LABEL_10;
  }

  v29 = [*(a1 + 32) updateDescriptor];
  if ([v29 descriptorType] == 1)
  {
  }

  else
  {
    v30 = [*(a1 + 32) updateDescriptor];
    v31 = [v30 descriptorType];

    if (v31 != 3)
    {
      v36 = [objc_alloc(MEMORY[0x277D292C0]) initWithUpdateAsset:0];
      [*(a1 + 32) setBrainLoader:v36];

      [*(a1 + 32) _trackMSUAnomaly:@"ASSIGN_DESCRIPTOR" result:8115 description:@"method received a descriptor with unknown type; creating a brain loader anyways"];
      goto LABEL_11;
    }
  }

  v32 = objc_alloc(MEMORY[0x277D292C0]);
  v33 = [*(a1 + 32) updateDescriptor];
  v34 = [v33 softwareUpdateAsset];
  v35 = [v32 initWithUpdateAsset:v34];
  [*(a1 + 32) setBrainLoader:v35];

LABEL_11:
  v11 = [*(a1 + 32) brainLoader];

  if (!v11)
  {
    [*(a1 + 32) _trackMSUAnomaly:@"ASSIGN_DESCRIPTOR" result:8100 description:@"unable to create MSU brain loader"];
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = [MEMORY[0x277D64460] sharedLogger];
  v14 = [v13 oslog];

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    v16 = [v15 updateDescriptor];
    v17 = [v16 overviewWithMaxValueLength:96 providingSubstitutionMap:v12];
    *buf = 138543618;
    v43 = v15;
    v44 = 2114;
    v45 = v17;
    _os_log_impl(&dword_23193C000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ assigned update descriptor: %{public}@", buf, 0x16u);
  }

  v18 = a1;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v19 = v12;
  v20 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v38;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v37 + 1) + 8 * i);
        v25 = [MEMORY[0x277D64460] sharedLogger];
        v26 = [v25 oslog];

        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *(v18 + 32);
          *buf = 138543618;
          v43 = v27;
          v44 = 2114;
          v45 = v24;
          _os_log_impl(&dword_23193C000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v21);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)assignRollbackDescriptor:(id)descriptor updateUUID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  dCopy = d;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v19 = 2114;
    v20 = dCopy;
    v21 = 2114;
    v22 = descriptorCopy;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ ASSIGN_ROLLBACK_DESCRIPTOR: Client provided updateUUID: %{public}@; rollbackDescriptor: %{public}@", buf, 0x20u);
  }

  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SUCoreMSU_assignRollbackDescriptor_updateUUID___block_invoke;
  block[3] = &unk_27892D340;
  block[4] = self;
  v15 = descriptorCopy;
  v16 = dCopy;
  v11 = dCopy;
  v12 = descriptorCopy;
  dispatch_async(msuControlQueue, block);

  v13 = *MEMORY[0x277D85DE8];
}

void __49__SUCoreMSU_assignRollbackDescriptor_updateUUID___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) performingOperation] & 1) != 0 || (objc_msgSend(*(a1 + 32), "cancelingPrepare") & 1) != 0 || objc_msgSend(*(a1 + 32), "removingPrepared"))
  {
    v2 = *(a1 + 32);
    v3 = *MEMORY[0x277D85DE8];

    [v2 _trackMSUAnomaly:@"ASSIGN_ROLLBACK_DESCRIPTOR" result:8115 description:@"busy performing other MSU operation"];
  }

  else
  {
    [*(a1 + 32) setRollbackDescriptor:*(a1 + 40)];
    [*(a1 + 32) setUpdateUUID:*(a1 + 48)];
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    v5 = [*(a1 + 32) updateUUID];
    v6 = [v4 initWithFormat:@"[MSU Rollback(%@)]", v5];
    [*(a1 + 32) setDescriptionName:v6];

    v7 = [objc_alloc(MEMORY[0x277D292C0]) initWithUpdateAsset:0];
    [*(a1 + 32) setBrainLoader:v7];

    v8 = [*(a1 + 32) brainLoader];

    if (!v8)
    {
      [*(a1 + 32) _trackMSUAnomaly:@"ASSIGN_ROLLBACK_DESCRIPTOR" result:8100 description:@"unable to create MSU brain loader"];
    }

    v9 = [MEMORY[0x277D64460] sharedLogger];
    v10 = [v9 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      *buf = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ assigned rollback descriptor: %{public}@", buf, 0x16u);
    }

    v13 = *MEMORY[0x277D85DE8];
  }
}

- (void)loadBrain:(id)brain
{
  brainCopy = brain;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"msu.LoadBrain"];
  v20 = 0;
  v6 = *MEMORY[0x277D29480];
  AppIntegerValue = _MSUPreferencesGetAppIntegerValue();
  v8 = dispatch_time(0, 1000000000 * AppIntegerValue);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __23__SUCoreMSU_loadBrain___block_invoke;
  v16 = &unk_27892D340;
  selfCopy = self;
  v18 = v5;
  v19 = brainCopy;
  v9 = brainCopy;
  v10 = v5;
  v11 = MEMORY[0x2383746D0](&v13);
  v12 = [(SUCoreMSU *)self msuControlQueue:v13];
  if (v8)
  {
    dispatch_after(v8, v12, v11);
  }

  else
  {
    dispatch_async(v12, v11);
  }
}

uint64_t __23__SUCoreMSU_loadBrain___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) performingOperation] & 1) != 0 || (objc_msgSend(*(a1 + 32), "cancelingPrepare") & 1) != 0 || objc_msgSend(*(a1 + 32), "removingPrepared"))
  {
    [*(a1 + 32) _trackMSUAnomaly:@"LOAD_BRAIN" result:8115 description:@"busy performing other MSU operation"];
    v2 = MEMORY[0x277D643F8];
    v3 = *(a1 + 40);

    return [v2 endTransaction:v3 withName:@"msu.LoadBrain"];
  }

  else
  {
    [*(a1 + 32) setLoadBrainTransaction:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);

    return [v5 _operationLoadBrain:v6];
  }
}

- (void)preflightDownloadSU:(id)u
{
  uCopy = u;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"msu.PreflightDownloadSU"];
  v20 = 0;
  v6 = *MEMORY[0x277D29488];
  AppIntegerValue = _MSUPreferencesGetAppIntegerValue();
  v8 = dispatch_time(0, 1000000000 * AppIntegerValue);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __33__SUCoreMSU_preflightDownloadSU___block_invoke;
  v16 = &unk_27892D340;
  selfCopy = self;
  v18 = v5;
  v19 = uCopy;
  v9 = uCopy;
  v10 = v5;
  v11 = MEMORY[0x2383746D0](&v13);
  v12 = [(SUCoreMSU *)self msuControlQueue:v13];
  if (v8)
  {
    dispatch_after(v8, v12, v11);
  }

  else
  {
    dispatch_async(v12, v11);
  }
}

uint64_t __33__SUCoreMSU_preflightDownloadSU___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) performingOperation] & 1) != 0 || (objc_msgSend(*(a1 + 32), "cancelingPrepare") & 1) != 0 || objc_msgSend(*(a1 + 32), "removingPrepared"))
  {
    [*(a1 + 32) _trackMSUAnomaly:@"PREFLIGHT_DOWNLOAD" result:8115 description:@"busy performing other MSU operation"];
    v2 = MEMORY[0x277D643F8];
    v3 = *(a1 + 40);

    return [v2 endTransaction:v3 withName:@"msu.PreflightDownloadSU"];
  }

  else
  {
    [*(a1 + 32) setPreflightDownloadSUTransaction:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);

    return [v5 _operationPreflightSUDownload:v6];
  }
}

- (void)preflightPersonalize:(id)personalize
{
  personalizeCopy = personalize;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"msu.PreflightPersonalize"];
  v20 = 0;
  v6 = *MEMORY[0x277D29498];
  AppIntegerValue = _MSUPreferencesGetAppIntegerValue();
  v8 = dispatch_time(0, 1000000000 * AppIntegerValue);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __34__SUCoreMSU_preflightPersonalize___block_invoke;
  v16 = &unk_27892D340;
  selfCopy = self;
  v18 = v5;
  v19 = personalizeCopy;
  v9 = personalizeCopy;
  v10 = v5;
  v11 = MEMORY[0x2383746D0](&v13);
  v12 = [(SUCoreMSU *)self msuControlQueue:v13];
  if (v8)
  {
    dispatch_after(v8, v12, v11);
  }

  else
  {
    dispatch_async(v12, v11);
  }
}

uint64_t __34__SUCoreMSU_preflightPersonalize___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) performingOperation] & 1) != 0 || (objc_msgSend(*(a1 + 32), "cancelingPrepare") & 1) != 0 || objc_msgSend(*(a1 + 32), "removingPrepared"))
  {
    [*(a1 + 32) _trackMSUAnomaly:@"PREFLIGHT_PERSONALIZE" result:8115 description:@"busy performing other MSU operation"];
    v2 = MEMORY[0x277D643F8];
    v3 = *(a1 + 40);

    return [v2 endTransaction:v3 withName:@"msu.PreflightPersonalize"];
  }

  else
  {
    [*(a1 + 32) setPreflightPersonalizeTransaction:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);

    return [v5 _operationPreflightPersonalize:v6];
  }
}

- (void)preflightFDRRecovery:(id)recovery
{
  recoveryCopy = recovery;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"msu.PreflightFDRRecovery"];
  v20 = 0;
  v6 = *MEMORY[0x277D29490];
  AppIntegerValue = _MSUPreferencesGetAppIntegerValue();
  v8 = dispatch_time(0, 1000000000 * AppIntegerValue);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __34__SUCoreMSU_preflightFDRRecovery___block_invoke;
  v16 = &unk_27892D340;
  selfCopy = self;
  v18 = v5;
  v19 = recoveryCopy;
  v9 = recoveryCopy;
  v10 = v5;
  v11 = MEMORY[0x2383746D0](&v13);
  v12 = [(SUCoreMSU *)self msuControlQueue:v13];
  if (v8)
  {
    dispatch_after(v8, v12, v11);
  }

  else
  {
    dispatch_async(v12, v11);
  }
}

uint64_t __34__SUCoreMSU_preflightFDRRecovery___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) performingOperation] & 1) != 0 || (objc_msgSend(*(a1 + 32), "cancelingPrepare") & 1) != 0 || objc_msgSend(*(a1 + 32), "removingPrepared"))
  {
    [*(a1 + 32) _trackMSUAnomaly:@"PREFLIGHT_FDR_RECOVERY" result:8115 description:@"busy performing other MSU operation"];
    v2 = MEMORY[0x277D643F8];
    v3 = *(a1 + 40);

    return [v2 endTransaction:v3 withName:@"msu.PreflightFDRRecovery"];
  }

  else
  {
    [*(a1 + 32) setPreflightFDRRecoveryTransaction:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);

    return [v5 _operationPreflightFDRRecovery:v6];
  }
}

- (void)preflightWakeup:(id)wakeup
{
  wakeupCopy = wakeup;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"msu.PreflightWakeup"];
  v20 = 0;
  v6 = *MEMORY[0x277D294A8];
  AppIntegerValue = _MSUPreferencesGetAppIntegerValue();
  v8 = dispatch_time(0, 1000000000 * AppIntegerValue);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __29__SUCoreMSU_preflightWakeup___block_invoke;
  v16 = &unk_27892D340;
  selfCopy = self;
  v18 = v5;
  v19 = wakeupCopy;
  v9 = wakeupCopy;
  v10 = v5;
  v11 = MEMORY[0x2383746D0](&v13);
  v12 = [(SUCoreMSU *)self msuControlQueue:v13];
  if (v8)
  {
    dispatch_after(v8, v12, v11);
  }

  else
  {
    dispatch_async(v12, v11);
  }
}

uint64_t __29__SUCoreMSU_preflightWakeup___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) performingOperation] & 1) != 0 || (objc_msgSend(*(a1 + 32), "cancelingPrepare") & 1) != 0 || objc_msgSend(*(a1 + 32), "removingPrepared"))
  {
    [*(a1 + 32) _trackMSUAnomaly:@"PREFLIGHT_WAKEUP" result:8115 description:@"busy performing other MSU operation"];
    v2 = MEMORY[0x277D643F8];
    v3 = *(a1 + 40);

    return [v2 endTransaction:v3 withName:@"msu.PreflightWakeup"];
  }

  else
  {
    [*(a1 + 32) setPreflightWakeupTransaction:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);

    return [v5 _operationPreflightWakeup:v6];
  }
}

- (void)preflightPrerequisiteCheck:(id)check
{
  checkCopy = check;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"msu.PreflightPrerequisiteCheck"];
  v20 = 0;
  v6 = *MEMORY[0x277D294A0];
  AppIntegerValue = _MSUPreferencesGetAppIntegerValue();
  v8 = dispatch_time(0, 1000000000 * AppIntegerValue);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __40__SUCoreMSU_preflightPrerequisiteCheck___block_invoke;
  v16 = &unk_27892D340;
  selfCopy = self;
  v18 = v5;
  v19 = checkCopy;
  v9 = checkCopy;
  v10 = v5;
  v11 = MEMORY[0x2383746D0](&v13);
  v12 = [(SUCoreMSU *)self msuControlQueue:v13];
  if (v8)
  {
    dispatch_after(v8, v12, v11);
  }

  else
  {
    dispatch_async(v12, v11);
  }
}

uint64_t __40__SUCoreMSU_preflightPrerequisiteCheck___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) performingOperation] & 1) != 0 || (objc_msgSend(*(a1 + 32), "cancelingPrepare") & 1) != 0 || objc_msgSend(*(a1 + 32), "removingPrepared"))
  {
    [*(a1 + 32) _trackMSUAnomaly:@"PREFLIGHT_PREREQUISITE_CHECK" result:8115 description:@"busy performing other MSU operation"];
    v2 = MEMORY[0x277D643F8];
    v3 = *(a1 + 40);

    return [v2 endTransaction:v3 withName:@"msu.PreflightPrerequisiteCheck"];
  }

  else
  {
    [*(a1 + 32) setPreflightPrerequisiteCheckTransaction:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);

    return [v5 _operationPreflightPrerequisiteCheck:v6];
  }
}

- (void)prepareUpdate:(id)update
{
  updateCopy = update;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"msu.PrepareUpdate"];
  v20 = 0;
  v6 = *MEMORY[0x277D294B0];
  AppIntegerValue = _MSUPreferencesGetAppIntegerValue();
  v8 = dispatch_time(0, 1000000000 * AppIntegerValue);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __27__SUCoreMSU_prepareUpdate___block_invoke;
  v16 = &unk_27892D340;
  selfCopy = self;
  v18 = v5;
  v19 = updateCopy;
  v9 = updateCopy;
  v10 = v5;
  v11 = MEMORY[0x2383746D0](&v13);
  v12 = [(SUCoreMSU *)self msuControlQueue:v13];
  if (v8)
  {
    dispatch_after(v8, v12, v11);
  }

  else
  {
    dispatch_async(v12, v11);
  }
}

uint64_t __27__SUCoreMSU_prepareUpdate___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) performingOperation] & 1) != 0 || (objc_msgSend(*(a1 + 32), "cancelingPrepare") & 1) != 0 || objc_msgSend(*(a1 + 32), "removingPrepared"))
  {
    [*(a1 + 32) _trackMSUAnomaly:@"PREPARE_UPDATE" result:8115 description:@"busy performing other MSU operation"];
    v2 = MEMORY[0x277D643F8];
    v3 = *(a1 + 40);

    return [v2 endTransaction:v3 withName:@"msu.PrepareUpdate"];
  }

  else
  {
    [*(a1 + 32) setPrepareUpdateTransaction:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);

    return [v5 _operationPrepareUpdate:v6];
  }
}

- (void)suspendUpdate
{
  v3 = [MEMORY[0x277D643F8] beginTransactionWithName:@"msu.SuspendUpdate"];
  v12 = 0;
  v4 = *MEMORY[0x277D294E8];
  AppIntegerValue = _MSUPreferencesGetAppIntegerValue();
  v6 = dispatch_time(0, 1000000000 * AppIntegerValue);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __26__SUCoreMSU_suspendUpdate__block_invoke;
  v10[3] = &unk_27892D478;
  v10[4] = self;
  v11 = v3;
  v7 = v3;
  v8 = MEMORY[0x2383746D0](v10);
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  if (v6)
  {
    dispatch_after(v6, msuControlQueue, v8);
  }

  else
  {
    dispatch_async(msuControlQueue, v8);
  }
}

uint64_t __26__SUCoreMSU_suspendUpdate__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) performingOperation] & 1) != 0 || (objc_msgSend(*(a1 + 32), "cancelingPrepare") & 1) != 0 || objc_msgSend(*(a1 + 32), "removingPrepared"))
  {
    [*(a1 + 32) _trackMSUAnomaly:@"SUSPEND_UPDATE" result:8115 description:@"busy performing other MSU operation"];
    v2 = MEMORY[0x277D643F8];
    v3 = *(a1 + 40);

    return [v2 endTransaction:v3 withName:@"msu.SuspendUpdate"];
  }

  else
  {
    [*(a1 + 32) setSuspendUpdateTransaction:*(a1 + 40)];
    v5 = *(a1 + 32);

    return [v5 _operationSuspendUpdate];
  }
}

- (void)resumeUpdate:(id)update
{
  updateCopy = update;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"msu.ResumeUpdate"];
  v20 = 0;
  v6 = *MEMORY[0x277D294C0];
  AppIntegerValue = _MSUPreferencesGetAppIntegerValue();
  v8 = dispatch_time(0, 1000000000 * AppIntegerValue);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __26__SUCoreMSU_resumeUpdate___block_invoke;
  v16 = &unk_27892D340;
  selfCopy = self;
  v18 = v5;
  v19 = updateCopy;
  v9 = updateCopy;
  v10 = v5;
  v11 = MEMORY[0x2383746D0](&v13);
  v12 = [(SUCoreMSU *)self msuControlQueue:v13];
  if (v8)
  {
    dispatch_after(v8, v12, v11);
  }

  else
  {
    dispatch_async(v12, v11);
  }
}

uint64_t __26__SUCoreMSU_resumeUpdate___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) performingOperation] & 1) != 0 || (objc_msgSend(*(a1 + 32), "cancelingPrepare") & 1) != 0 || objc_msgSend(*(a1 + 32), "removingPrepared"))
  {
    [*(a1 + 32) _trackMSUAnomaly:@"RESUME_UPDATE" result:8115 description:@"busy performing other MSU operation"];
    v2 = MEMORY[0x277D643F8];
    v3 = *(a1 + 40);

    return [v2 endTransaction:v3 withName:@"msu.ResumeUpdate"];
  }

  else
  {
    [*(a1 + 32) setResumeUpdateTransaction:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);

    return [v5 _operationResumeUpdate:v6];
  }
}

- (void)applyUpdate:(id)update
{
  updateCopy = update;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"msu.ApplyUpdate"];
  v20 = 0;
  v6 = *MEMORY[0x277D29470];
  AppIntegerValue = _MSUPreferencesGetAppIntegerValue();
  v8 = dispatch_time(0, 1000000000 * AppIntegerValue);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __25__SUCoreMSU_applyUpdate___block_invoke;
  v16 = &unk_27892D340;
  selfCopy = self;
  v18 = v5;
  v19 = updateCopy;
  v9 = updateCopy;
  v10 = v5;
  v11 = MEMORY[0x2383746D0](&v13);
  v12 = [(SUCoreMSU *)self msuControlQueue:v13];
  if (v8)
  {
    dispatch_after(v8, v12, v11);
  }

  else
  {
    dispatch_async(v12, v11);
  }
}

uint64_t __25__SUCoreMSU_applyUpdate___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) performingOperation] & 1) != 0 || (objc_msgSend(*(a1 + 32), "cancelingPrepare") & 1) != 0 || objc_msgSend(*(a1 + 32), "removingPrepared"))
  {
    [*(a1 + 32) _trackMSUAnomaly:@"APPLY_UPDATE" result:8115 description:@"busy performing other MSU operation"];
    v2 = MEMORY[0x277D643F8];
    v3 = *(a1 + 40);

    return [v2 endTransaction:v3 withName:@"msu.ApplyUpdate"];
  }

  else
  {
    [*(a1 + 32) setApplyUpdateTransaction:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);

    return [v5 _operationApplyUpdate:v6];
  }
}

- (void)rollbackUpdatePrepare:(id)prepare
{
  prepareCopy = prepare;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"msu.RollbackUpdate"];
  v20 = 0;
  v6 = *MEMORY[0x277D294D0];
  AppIntegerValue = _MSUPreferencesGetAppIntegerValue();
  v8 = dispatch_time(0, 1000000000 * AppIntegerValue);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __35__SUCoreMSU_rollbackUpdatePrepare___block_invoke;
  v16 = &unk_27892D340;
  selfCopy = self;
  v18 = v5;
  v19 = prepareCopy;
  v9 = prepareCopy;
  v10 = v5;
  v11 = MEMORY[0x2383746D0](&v13);
  v12 = [(SUCoreMSU *)self msuControlQueue:v13];
  if (v8)
  {
    dispatch_after(v8, v12, v11);
  }

  else
  {
    dispatch_async(v12, v11);
  }
}

uint64_t __35__SUCoreMSU_rollbackUpdatePrepare___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) performingOperation] & 1) != 0 || (objc_msgSend(*(a1 + 32), "cancelingPrepare") & 1) != 0 || objc_msgSend(*(a1 + 32), "removingPrepared"))
  {
    [*(a1 + 32) _trackMSUAnomaly:@"ROLLBACK_UPDATE_PREPARE" result:8115 description:@"busy performing other MSU operation"];
    v2 = MEMORY[0x277D643F8];
    v3 = *(a1 + 40);

    return [v2 endTransaction:v3 withName:@"msu.RollbackUpdate"];
  }

  else
  {
    [*(a1 + 32) setRollbackUpdateTransaction:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);

    return [v5 _operationRollbackUpdatePrepare:v6];
  }
}

- (void)rollbackUpdateSuspend:(id)suspend
{
  suspendCopy = suspend;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"msu.RollbackUpdate"];
  v20 = 0;
  v6 = *MEMORY[0x277D294E0];
  AppIntegerValue = _MSUPreferencesGetAppIntegerValue();
  v8 = dispatch_time(0, 1000000000 * AppIntegerValue);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __35__SUCoreMSU_rollbackUpdateSuspend___block_invoke;
  v16 = &unk_27892D340;
  selfCopy = self;
  v18 = v5;
  v19 = suspendCopy;
  v9 = suspendCopy;
  v10 = v5;
  v11 = MEMORY[0x2383746D0](&v13);
  v12 = [(SUCoreMSU *)self msuControlQueue:v13];
  if (v8)
  {
    dispatch_after(v8, v12, v11);
  }

  else
  {
    dispatch_async(v12, v11);
  }
}

uint64_t __35__SUCoreMSU_rollbackUpdateSuspend___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) performingOperation] & 1) != 0 || (objc_msgSend(*(a1 + 32), "cancelingPrepare") & 1) != 0 || objc_msgSend(*(a1 + 32), "removingPrepared"))
  {
    [*(a1 + 32) _trackMSUAnomaly:@"ROLLBACK_UPDATE_SUSPEND" result:8115 description:@"busy performing other MSU operation"];
    v2 = MEMORY[0x277D643F8];
    v3 = *(a1 + 40);

    return [v2 endTransaction:v3 withName:@"msu.RollbackUpdate"];
  }

  else
  {
    [*(a1 + 32) setRollbackUpdateTransaction:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);

    return [v5 _operationRollbackUpdateSuspend:v6];
  }
}

- (void)rollbackUpdateResume:(id)resume
{
  resumeCopy = resume;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"msu.RollbackUpdate"];
  v20 = 0;
  v6 = *MEMORY[0x277D294D8];
  AppIntegerValue = _MSUPreferencesGetAppIntegerValue();
  v8 = dispatch_time(0, 1000000000 * AppIntegerValue);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __34__SUCoreMSU_rollbackUpdateResume___block_invoke;
  v16 = &unk_27892D340;
  selfCopy = self;
  v18 = v5;
  v19 = resumeCopy;
  v9 = resumeCopy;
  v10 = v5;
  v11 = MEMORY[0x2383746D0](&v13);
  v12 = [(SUCoreMSU *)self msuControlQueue:v13];
  if (v8)
  {
    dispatch_after(v8, v12, v11);
  }

  else
  {
    dispatch_async(v12, v11);
  }
}

uint64_t __34__SUCoreMSU_rollbackUpdateResume___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) performingOperation] & 1) != 0 || (objc_msgSend(*(a1 + 32), "cancelingPrepare") & 1) != 0 || objc_msgSend(*(a1 + 32), "removingPrepared"))
  {
    [*(a1 + 32) _trackMSUAnomaly:@"ROLLBACK_UPDATE_RESUME" result:8115 description:@"busy performing other MSU operation"];
    v2 = MEMORY[0x277D643F8];
    v3 = *(a1 + 40);

    return [v2 endTransaction:v3 withName:@"msu.RollbackUpdate"];
  }

  else
  {
    [*(a1 + 32) setRollbackUpdateTransaction:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);

    return [v5 _operationRollbackUpdateResume:v6];
  }
}

- (void)rollbackUpdateApply:(id)apply
{
  applyCopy = apply;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"msu.RollbackUpdate"];
  v20 = 0;
  v6 = *MEMORY[0x277D294C8];
  AppIntegerValue = _MSUPreferencesGetAppIntegerValue();
  v8 = dispatch_time(0, 1000000000 * AppIntegerValue);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __33__SUCoreMSU_rollbackUpdateApply___block_invoke;
  v16 = &unk_27892D340;
  selfCopy = self;
  v18 = v5;
  v19 = applyCopy;
  v9 = applyCopy;
  v10 = v5;
  v11 = MEMORY[0x2383746D0](&v13);
  v12 = [(SUCoreMSU *)self msuControlQueue:v13];
  if (v8)
  {
    dispatch_after(v8, v12, v11);
  }

  else
  {
    dispatch_async(v12, v11);
  }
}

uint64_t __33__SUCoreMSU_rollbackUpdateApply___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) performingOperation] & 1) != 0 || (objc_msgSend(*(a1 + 32), "cancelingPrepare") & 1) != 0 || objc_msgSend(*(a1 + 32), "removingPrepared"))
  {
    [*(a1 + 32) _trackMSUAnomaly:@"ROLLBACK_UPDATE_APPLY" result:8115 description:@"busy performing other MSU operation"];
    v2 = MEMORY[0x277D643F8];
    v3 = *(a1 + 40);

    return [v2 endTransaction:v3 withName:@"msu.RollbackUpdate"];
  }

  else
  {
    [*(a1 + 32) setRollbackUpdateTransaction:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);

    return [v5 _operationRollbackUpdateApply:v6];
  }
}

- (void)cancelPrepare
{
  v9 = 0;
  v3 = *MEMORY[0x277D29478];
  AppIntegerValue = _MSUPreferencesGetAppIntegerValue();
  v5 = dispatch_time(0, 1000000000 * AppIntegerValue);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __26__SUCoreMSU_cancelPrepare__block_invoke;
  v8[3] = &unk_27892C8A8;
  v8[4] = self;
  v6 = MEMORY[0x2383746D0](v8);
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  if (v5)
  {
    dispatch_after(v5, msuControlQueue, v6);
  }

  else
  {
    dispatch_async(msuControlQueue, v6);
  }
}

uint64_t __26__SUCoreMSU_cancelPrepare__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) cancelingPrepare] & 1) != 0 || objc_msgSend(*(a1 + 32), "removingPrepared"))
  {
    v2 = *(a1 + 32);
    v3 = *MEMORY[0x277D85DE8];
    v4 = @"busy performing other MSU operation";
LABEL_4:

    return [v2 _trackMSUAnomaly:@"CANCEL_PREPARE" result:8115 description:v4];
  }

  if (([*(a1 + 32) performingOperation] & 1) == 0)
  {
    v2 = *(a1 + 32);
    v10 = *MEMORY[0x277D85DE8];
    v4 = @"not performing any MSU operation";
    goto LABEL_4;
  }

  v6 = [MEMORY[0x277D64460] sharedLogger];
  v7 = [v6 oslog];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_23193C000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ will request that prepare be canceled [with result provided back to MSU on prepare progress as mechanism for requesting cancel]", &v11, 0xCu);
  }

  result = [*(a1 + 32) setCancelingPrepare:1];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removePrepared
{
  v3 = [MEMORY[0x277D643F8] beginTransactionWithName:@"msu.RemovePrepared"];
  v12 = 0;
  v4 = *MEMORY[0x277D294B8];
  AppIntegerValue = _MSUPreferencesGetAppIntegerValue();
  v6 = dispatch_time(0, 1000000000 * AppIntegerValue);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __27__SUCoreMSU_removePrepared__block_invoke;
  v10[3] = &unk_27892D478;
  v10[4] = self;
  v11 = v3;
  v7 = v3;
  v8 = MEMORY[0x2383746D0](v10);
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  if (v6)
  {
    dispatch_after(v6, msuControlQueue, v8);
  }

  else
  {
    dispatch_async(msuControlQueue, v8);
  }
}

uint64_t __27__SUCoreMSU_removePrepared__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) performingOperation] & 1) != 0 || (objc_msgSend(*(a1 + 32), "cancelingPrepare") & 1) != 0 || objc_msgSend(*(a1 + 32), "removingPrepared"))
  {
    [*(a1 + 32) _trackMSUAnomaly:@"REMOVE_PREPARED" result:8115 description:@"busy performing other MSU operation"];
    v2 = MEMORY[0x277D643F8];
    v3 = *(a1 + 40);

    return [v2 endTransaction:v3 withName:@"msu.RemovePrepared"];
  }

  else
  {
    [*(a1 + 32) setRemovePreparedTransaction:*(a1 + 40)];
    v5 = *(a1 + 32);

    return [v5 _removePrepared];
  }
}

- (void)_addUpdateMetricsEventFieldsToMSUOptions:(id)options usingPolicy:(id)policy descriptor:(id)descriptor
{
  optionsCopy = options;
  policyCopy = policy;
  descriptorCopy = descriptor;
  msuOperationQueue = [(SUCoreMSU *)self msuOperationQueue];
  dispatch_assert_queue_V2(msuOperationQueue);

  updateUUID = [(SUCoreMSU *)self updateUUID];

  if (!updateUUID)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428] trackAnomaly:@"NEW_UPDATE_METRIC_EVENT_FIELDS" forReason:@"Could not get everything needed to provide a sessionID on for update metric event fields (missing updateUUID)" withResult:8116 withError:0];
    goto LABEL_21;
  }

  v13 = *MEMORY[0x277D29438];
  v14 = [optionsCopy safeObjectForKey:*MEMORY[0x277D29438] ofClass:objc_opt_class()];
  mEMORY[0x277D64428] = [v14 mutableCopy];

  if (!mEMORY[0x277D64428])
  {
    mEMORY[0x277D64428] = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  [optionsCopy setSafeObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D293D0]];
  updateUUID2 = [(SUCoreMSU *)self updateUUID];
  [mEMORY[0x277D64428] setSafeObject:updateUUID2 forKey:*MEMORY[0x277D29410]];

  updateMetricContext = [policyCopy updateMetricContext];
  [mEMORY[0x277D64428] setSafeObject:updateMetricContext forKey:*MEMORY[0x277D646F8]];

  productBuildVersion = [descriptorCopy productBuildVersion];

  if (productBuildVersion)
  {
    productBuildVersion2 = [descriptorCopy productBuildVersion];
    [mEMORY[0x277D64428] setSafeObject:productBuildVersion2 forKey:*MEMORY[0x277D29318]];
  }

  updateMetricEventFields = [policyCopy updateMetricEventFields];

  if (updateMetricEventFields)
  {
    updateMetricEventFields2 = [policyCopy updateMetricEventFields];
    [optionsCopy setSafeObject:updateMetricEventFields2 forKey:*MEMORY[0x277D29390]];
  }

  updateDescriptor = [(SUCoreMSU *)self updateDescriptor];
  if ([updateDescriptor descriptorType] == 1)
  {
  }

  else
  {
    updateDescriptor2 = [(SUCoreMSU *)self updateDescriptor];
    descriptorType = [updateDescriptor2 descriptorType];

    if (descriptorType != 3)
    {
      if ([descriptorCopy descriptorType] == 2 || objc_msgSend(descriptorCopy, "descriptorType") == 4)
      {
        bundleAttributes = [descriptorCopy bundleAttributes];
      }

      else
      {
        bundleAttributes = 0;
      }

      goto LABEL_13;
    }
  }

  softwareUpdateAsset = [descriptorCopy softwareUpdateAsset];
  bundleAttributes = [softwareUpdateAsset attributes];

LABEL_13:
  v27 = [bundleAttributes safeObjectForKey:@"_EventRecordingServiceURL" ofClass:objc_opt_class()];
  if (!v27)
  {
    v27 = *MEMORY[0x277D64808];
  }

  [optionsCopy setSafeObject:v27 forKey:@"_EventRecordingServiceURL"];
  [mEMORY[0x277D64428] setSafeObject:v27 forKey:@"_EventRecordingServiceURL"];
  if ([descriptorCopy descriptorType] == 4)
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "Not setting update attributes for the SUCoreDescriptorTypeSFRPackage descriptor type", v30, 2u);
    }
  }

  else
  {
    [optionsCopy setSafeObject:mEMORY[0x277D64428] forKey:v13];
  }

LABEL_21:
}

- (void)_addUpdateMetricsEventFieldsToMSURollbackOptions:(id)options usingPolicy:(id)policy rollbackDescriptor:(id)descriptor
{
  optionsCopy = options;
  policyCopy = policy;
  descriptorCopy = descriptor;
  msuOperationQueue = [(SUCoreMSU *)self msuOperationQueue];
  dispatch_assert_queue_V2(msuOperationQueue);

  updateUUID = [(SUCoreMSU *)self updateUUID];

  if (updateUUID)
  {
    v12 = *MEMORY[0x277D29438];
    v13 = [optionsCopy safeObjectForKey:*MEMORY[0x277D29438] ofClass:objc_opt_class()];
    mEMORY[0x277D64428] = [v13 mutableCopy];

    if (!mEMORY[0x277D64428])
    {
      mEMORY[0x277D64428] = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    updateUUID2 = [(SUCoreMSU *)self updateUUID];
    [mEMORY[0x277D64428] setSafeObject:updateUUID2 forKey:*MEMORY[0x277D29410]];

    updateMetricContext = [policyCopy updateMetricContext];
    [mEMORY[0x277D64428] setSafeObject:updateMetricContext forKey:*MEMORY[0x277D646F8]];

    [mEMORY[0x277D64428] setSafeObject:*MEMORY[0x277D647A8] forKey:*MEMORY[0x277D64768]];
    productBuildVersion = [descriptorCopy productBuildVersion];

    if (productBuildVersion)
    {
      productBuildVersion2 = [descriptorCopy productBuildVersion];
      [mEMORY[0x277D64428] setSafeObject:productBuildVersion2 forKey:*MEMORY[0x277D29318]];
    }

    restoreVersion = [descriptorCopy restoreVersion];

    if (restoreVersion)
    {
      restoreVersion2 = [descriptorCopy restoreVersion];
      [mEMORY[0x277D64428] setSafeObject:restoreVersion2 forKey:*MEMORY[0x277D293D8]];
    }

    updateMetricEventFields = [policyCopy updateMetricEventFields];

    v22 = optionsCopy;
    if (updateMetricEventFields)
    {
      updateMetricEventFields2 = [policyCopy updateMetricEventFields];
      [optionsCopy setSafeObject:updateMetricEventFields2 forKey:*MEMORY[0x277D29390]];

      v22 = optionsCopy;
    }

    v24 = *MEMORY[0x277D64808];
    [v22 setSafeObject:*MEMORY[0x277D64808] forKey:@"_EventRecordingServiceURL"];
    [mEMORY[0x277D64428] setSafeObject:v24 forKey:@"_EventRecordingServiceURL"];
    [optionsCopy setSafeObject:mEMORY[0x277D64428] forKey:v12];
  }

  else
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428] trackAnomaly:@"NEW_UPDATE_METRIC_EVENT_FIELDS" forReason:@"Could not get everything needed to provide a sessionID on for update metric event fields (missing updateUUID)" withResult:8116 withError:0];
  }
}

- (void)_addRemoteServerAccessControlToMSUOptions:(id)options usingPolicy:(id)policy
{
  optionsCopy = options;
  policyCopy = policy;
  msuOperationQueue = [(SUCoreMSU *)self msuOperationQueue];
  dispatch_assert_queue_V2(msuOperationQueue);

  personalizationServerURL = [policyCopy personalizationServerURL];
  [optionsCopy setSafeObject:personalizationServerURL forKey:*MEMORY[0x277D293B8]];

  proxyHostName = [policyCopy proxyHostName];
  if (proxyHostName)
  {

LABEL_4:
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (v11)
    {
      proxyHostName2 = [policyCopy proxyHostName];
      [v11 setSafeObject:proxyHostName2 forKey:@"SOCKSProxy"];

      proxyPortNumber = [policyCopy proxyPortNumber];
      [v11 setSafeObject:proxyPortNumber forKey:@"SOCKSPort"];

      [optionsCopy setSafeObject:v11 forKey:*MEMORY[0x277D293F0]];
    }

    else
    {
      mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
      [mEMORY[0x277D64428] trackAnomaly:@"ADD_REMOTE_SERVER_ACCESS_CONTROL_TO_MSU_OPTIONS" forReason:@"could not create proxy dictionary" withResult:8100 withError:0];
    }

    goto LABEL_8;
  }

  proxyPortNumber2 = [policyCopy proxyPortNumber];

  if (proxyPortNumber2)
  {
    goto LABEL_4;
  }

LABEL_8:
}

- (id)_newMSUOptionsUsingPolicy:(id)policy descriptor:(id)descriptor baseOptions:(id)options
{
  policyCopy = policy;
  descriptorCopy = descriptor;
  optionsCopy = options;
  msuOperationQueue = [(SUCoreMSU *)self msuOperationQueue];
  dispatch_assert_queue_V2(msuOperationQueue);

  updateUUID = [(SUCoreMSU *)self updateUUID];

  if (!updateUUID)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428] trackAnomaly:@"NEW_MSU_OPTIONS" forReason:@"Could not get everything needed to provide a sessionID creation of MSU options (missing updateUUID)" withResult:8116 withError:0];

    v14 = 0;
    goto LABEL_55;
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = v13;
  if (optionsCopy)
  {
    [v13 addEntriesFromDictionary:optionsCopy];
  }

  v15 = objc_opt_new();
  updateDescriptor = [(SUCoreMSU *)self updateDescriptor];
  updateBrainPath = [updateDescriptor updateBrainPath];
  v18 = *MEMORY[0x277D292D8];
  [v15 setSafeObject:updateBrainPath forKey:*MEMORY[0x277D292D8]];

  mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
  if ([mEMORY[0x277D64418] isBootedOSSecureInternal])
  {
    updateBrainLocationOverride = [policyCopy updateBrainLocationOverride];

    if (!updateBrainLocationOverride)
    {
      goto LABEL_10;
    }

    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [SUCoreMSU _newMSUOptionsUsingPolicy:policyCopy descriptor:oslog baseOptions:?];
    }

    mEMORY[0x277D64418] = [policyCopy updateBrainLocationOverride];
    [v15 setSafeObject:mEMORY[0x277D64418] forKey:v18];
  }

LABEL_10:
  if ([descriptorCopy descriptorType] == 4)
  {
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog2 = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "Not setting update attributes for the SUCoreDescriptorTypeSFRPackage descriptor type", buf, 2u);
    }
  }

  else
  {
    [v14 setSafeObject:v15 forKey:*MEMORY[0x277D29438]];
  }

  v86 = v15;
  [(SUCoreMSU *)self _addUpdateMetricsEventFieldsToMSUOptions:v14 usingPolicy:policyCopy descriptor:descriptorCopy];
  [(SUCoreMSU *)self _addRemoteServerAccessControlToMSUOptions:v14 usingPolicy:policyCopy];
  updateMetricEventFields = [policyCopy updateMetricEventFields];
  [v14 setSafeObject:updateMetricEventFields forKey:*MEMORY[0x277D29390]];

  userAgentString = [policyCopy userAgentString];
  [v14 setSafeObject:userAgentString forKey:*MEMORY[0x277D29418]];

  v28 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(policyCopy, "performPreflightEncryptedCheck")}];
  [v14 setSafeObject:v28 forKey:*MEMORY[0x277D29440]];

  v29 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(policyCopy, "performPreflightSnapshotCheck")}];
  [v14 setSafeObject:v29 forKey:*MEMORY[0x277D29448]];

  ssoToken = [policyCopy ssoToken];

  if (ssoToken)
  {
    v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
    ssoToken2 = [policyCopy ssoToken];
    v33 = *MEMORY[0x277D292F0];
    [v31 setSafeObject:ssoToken2 forKey:*MEMORY[0x277D292F0]];

    [v14 setSafeObject:v31 forKey:*MEMORY[0x277D292E8]];
    ssoToken3 = [policyCopy ssoToken];
    [v14 setSafeObject:ssoToken3 forKey:v33];
  }

  personalizedManifestRootsPath = [policyCopy personalizedManifestRootsPath];
  [v14 setSafeObject:personalizedManifestRootsPath forKey:*MEMORY[0x277D293C0]];

  localAuthenticationContext = [policyCopy localAuthenticationContext];
  [v14 setSafeObject:localAuthenticationContext forKey:*MEMORY[0x277D293A0]];

  localAuthenticationUserID = [policyCopy localAuthenticationUserID];
  [v14 setSafeObject:localAuthenticationUserID forKey:*MEMORY[0x277D293A8]];

  mdmBootstrapToken = [policyCopy mdmBootstrapToken];
  [v14 setSafeObject:mdmBootstrapToken forKey:*MEMORY[0x277D293B0]];

  bridgeOSIgnoreMinimumVersionCheck = [policyCopy bridgeOSIgnoreMinimumVersionCheck];
  v40 = MEMORY[0x277CBEC28];
  v41 = MEMORY[0x277CBEC38];
  if (bridgeOSIgnoreMinimumVersionCheck)
  {
    v42 = MEMORY[0x277CBEC38];
  }

  else
  {
    v42 = MEMORY[0x277CBEC28];
  }

  [v14 setSafeObject:v42 forKey:*MEMORY[0x277D29310]];
  bridgeOSDownloadDirectory = [policyCopy bridgeOSDownloadDirectory];
  [v14 setSafeObject:bridgeOSDownloadDirectory forKey:*MEMORY[0x277D29308]];

  if ([policyCopy enableEmbeddedOSInstall])
  {
    v44 = v41;
  }

  else
  {
    v44 = v40;
  }

  [v14 setSafeObject:v44 forKey:*MEMORY[0x277D29378]];
  if ([policyCopy enableBridgeOSInstall])
  {
    v45 = v41;
  }

  else
  {
    v45 = v40;
  }

  [v14 setSafeObject:v45 forKey:*MEMORY[0x277D29370]];
  if ([policyCopy enableOSPersonalization])
  {
    v46 = v41;
  }

  else
  {
    v46 = v40;
  }

  [v14 setSafeObject:v46 forKey:*MEMORY[0x277D29388]];
  if ([policyCopy userInitiated])
  {
    v47 = v41;
  }

  else
  {
    v47 = v40;
  }

  [v14 setSafeObject:v47 forKey:*MEMORY[0x277D29420]];
  if ([policyCopy skipVolumeSealing])
  {
    v48 = v41;
  }

  else
  {
    v48 = v40;
  }

  [v14 setSafeObject:v48 forKey:*MEMORY[0x277D293E8]];
  v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(policyCopy, "qualityOfService")}];
  [v14 setSafeObject:v49 forKey:*MEMORY[0x277D293C8]];

  targetVolumeUUID = [policyCopy targetVolumeUUID];
  [v14 setSafeObject:targetVolumeUUID forKey:*MEMORY[0x277D29408]];

  prerequisiteBuildVersion = [policyCopy prerequisiteBuildVersion];
  [v14 setSafeObject:prerequisiteBuildVersion forKey:*MEMORY[0x277D29300]];

  mEMORY[0x277D64418]2 = [MEMORY[0x277D64418] sharedDevice];
  rootVolumeUUID = [mEMORY[0x277D64418]2 rootVolumeUUID];
  [v14 setSafeObject:rootVolumeUUID forKey:*MEMORY[0x277D292F8]];

  targetVolumeUUID2 = [policyCopy targetVolumeUUID];
  [v14 setSafeObject:targetVolumeUUID2 forKey:*MEMORY[0x277D29320]];

  if ([descriptorCopy descriptorType] == 2)
  {
    updateBundlePath = [descriptorCopy updateBundlePath];
    [v14 setSafeObject:updateBundlePath forKey:*MEMORY[0x277D293F8]];
LABEL_48:

    goto LABEL_49;
  }

  if ([descriptorCopy descriptorType] == 1)
  {
    softwareUpdateAsset = [descriptorCopy softwareUpdateAsset];
    getLocalUrl = [softwareUpdateAsset getLocalUrl];
    updateBundlePath = [getLocalUrl fileSystemRepresentation];

    if (updateBundlePath)
    {
      updateBundlePath = [MEMORY[0x277CCACA8] stringWithUTF8String:updateBundlePath];
    }

    [v14 setSafeObject:updateBundlePath forKey:*MEMORY[0x277D293F8]];
    associatedSplatDescriptor = [descriptorCopy associatedSplatDescriptor];
    if (associatedSplatDescriptor)
    {
      v59 = associatedSplatDescriptor;
      associatedSplatDescriptor2 = [descriptorCopy associatedSplatDescriptor];
      descriptorType = [associatedSplatDescriptor2 descriptorType];

      if (descriptorType == 1)
      {
        associatedSplatDescriptor3 = [descriptorCopy associatedSplatDescriptor];
        softwareUpdateAsset2 = [associatedSplatDescriptor3 softwareUpdateAsset];
        [softwareUpdateAsset2 refreshState];

        associatedSplatDescriptor4 = [descriptorCopy associatedSplatDescriptor];
        softwareUpdateAsset3 = [associatedSplatDescriptor4 softwareUpdateAsset];
        wasLocal = [softwareUpdateAsset3 wasLocal];

        if (wasLocal)
        {
          v85 = optionsCopy;
          associatedSplatDescriptor5 = [descriptorCopy associatedSplatDescriptor];
          softwareUpdateAsset4 = [associatedSplatDescriptor5 softwareUpdateAsset];
          getLocalUrl2 = [softwareUpdateAsset4 getLocalUrl];
          fileSystemRepresentation = [getLocalUrl2 fileSystemRepresentation];

          if (fileSystemRepresentation)
          {
            fileSystemRepresentation = [MEMORY[0x277CCACA8] stringWithUTF8String:fileSystemRepresentation];
          }

          [v14 setSafeObject:fileSystemRepresentation forKey:@"SplatComboBundlePath"];

          optionsCopy = v85;
        }

        associatedSplatDescriptor6 = [descriptorCopy associatedSplatDescriptor];
        bundleAttributes = [associatedSplatDescriptor6 bundleAttributes];
        [v14 setSafeObject:bundleAttributes forKey:@"__msu-splat-combo-update-attributes-dictionary-key"];
      }
    }

    goto LABEL_48;
  }

LABEL_49:
  if ([descriptorCopy splatOnly])
  {
    [v14 setSafeObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D29400]];
  }

  v73 = objc_alloc_init(MEMORY[0x277CBEB38]);
  hwModelStr = [policyCopy hwModelStr];
  [v73 setSafeObject:hwModelStr forKey:*MEMORY[0x277D29338]];

  deviceClass = [policyCopy deviceClass];
  [v73 setSafeObject:deviceClass forKey:*MEMORY[0x277D29330]];

  productType = [policyCopy productType];
  [v73 setSafeObject:productType forKey:*MEMORY[0x277D29348]];

  releaseType = [policyCopy releaseType];
  [v73 setSafeObject:releaseType forKey:*MEMORY[0x277D29350]];

  mEMORY[0x277D64418]3 = [MEMORY[0x277D64418] sharedDevice];
  deviceBoardID = [mEMORY[0x277D64418]3 deviceBoardID];
  [v73 setSafeObject:deviceBoardID forKey:*MEMORY[0x277D29328]];

  [v14 setSafeObject:v73 forKey:*MEMORY[0x277D29340]];
  v80 = +[SUCoreDescriptor nameForDescriptorAudienceType:](SUCoreDescriptor, "nameForDescriptorAudienceType:", [descriptorCopy descriptorAudienceType]);
  [v14 setSafeObject:v80 forKey:*MEMORY[0x277D29358]];

  v81 = +[SUCoreDescriptor nameForDescriptorPreferredUpdateType:](SUCoreDescriptor, "nameForDescriptorPreferredUpdateType:", [descriptorCopy preferredUpdateType]);
  [v14 setSafeObject:v81 forKey:*MEMORY[0x277D29360]];

  softwareUpdateScanPolicy = [policyCopy softwareUpdateScanPolicy];
  if ([softwareUpdateScanPolicy allowSameVersion])
  {
    v83 = v41;
  }

  else
  {
    v83 = v40;
  }

  [v14 setSafeObject:v83 forKey:*MEMORY[0x277D292E0]];

LABEL_55:
  return v14;
}

- (id)_newMSURollbackOptionsUsingPolicy:(id)policy rollbackDescriptor:(id)descriptor baseOptions:(id)options additionalOptions:(id)additionalOptions
{
  additionalOptionsCopy = additionalOptions;
  descriptorCopy = descriptor;
  policyCopy = policy;
  v13 = [(SUCoreMSU *)self _newMSUOptionsUsingPolicy:policyCopy descriptor:0 baseOptions:options];
  [(SUCoreMSU *)self _addUpdateMetricsEventFieldsToMSURollbackOptions:v13 usingPolicy:policyCopy rollbackDescriptor:descriptorCopy];

  [v13 setSafeObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D293E0]];
  [v13 setSafeObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D293D0]];
  [v13 addEntriesFromDictionary:additionalOptionsCopy];

  return v13;
}

- (id)_newPreflightOptionsUsingPolicy:(id)policy subPolicyClass:(Class)class descriptor:(id)descriptor baseOptions:(id)options additionalOptions:(id)additionalOptions
{
  additionalOptionsCopy = additionalOptions;
  v13 = [(SUCoreMSU *)self _newMSUOptionsUsingPolicy:policy descriptor:descriptor baseOptions:options];
  if (objc_opt_class() == class || objc_opt_class() == class)
  {
    [v13 setSafeObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D29398]];
  }

  [v13 addEntriesFromDictionary:additionalOptionsCopy];

  return v13;
}

- (id)_newPrepareOptionsUsingPolicy:(id)policy descriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  policyCopy = policy;
  preparePolicy = [policyCopy preparePolicy];
  basePrepareOptions = [preparePolicy basePrepareOptions];
  v10 = [(SUCoreMSU *)self _newMSUOptionsUsingPolicy:policyCopy descriptor:descriptorCopy baseOptions:basePrepareOptions];

  [(SUCoreMSU *)self updatePrepareOptions:v10 withPolicy:policyCopy];
  return v10;
}

- (id)_newRollbackPrepareOptionsUsingPolicy:(id)policy rollbackDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  policyCopy = policy;
  rollbackPolicy = [policyCopy rollbackPolicy];
  baseRollbackOptions = [rollbackPolicy baseRollbackOptions];
  rollbackPolicy2 = [policyCopy rollbackPolicy];
  additionalOptions = [rollbackPolicy2 additionalOptions];
  v12 = [(SUCoreMSU *)self _newMSURollbackOptionsUsingPolicy:policyCopy rollbackDescriptor:descriptorCopy baseOptions:baseRollbackOptions additionalOptions:additionalOptions];

  [(SUCoreMSU *)self updatePrepareOptions:v12 withPolicy:policyCopy];
  [policyCopy updateRollbackOptionsWithExtensions:v12];

  return v12;
}

- (void)updatePrepareOptions:(id)options withPolicy:(id)policy
{
  optionsCopy = options;
  policyCopy = policy;
  doNotPatchList = [(SUCoreMSU *)self doNotPatchList];
  v8 = *MEMORY[0x277D29368];
  v9 = [optionsCopy safeObjectForKey:*MEMORY[0x277D29368] ofClass:objc_opt_class()];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 arrayByAddingObjectsFromArray:doNotPatchList];

    v12 = [MEMORY[0x277CBEB98] setWithArray:v11];
    allObjects = [v12 allObjects];
  }

  else
  {
    allObjects = doNotPatchList;
  }

  [optionsCopy setSafeObject:allObjects forKey:v8];
  [(SUCoreMSU *)self _addRemoteServerAccessControlToMSUOptions:optionsCopy usingPolicy:policyCopy];
  preparePolicy = [policyCopy preparePolicy];

  additionalOptions = [preparePolicy additionalOptions];
  [optionsCopy addEntriesFromDictionary:additionalOptions];
}

- (void)_operationLoadBrain:(id)brain
{
  brainCopy = brain;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  brainLoader = [(SUCoreMSU *)self brainLoader];

  if (brainLoader)
  {
    [(SUCoreMSU *)self setPerformingOperation:1];
    msuOperationQueue = [(SUCoreMSU *)self msuOperationQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __33__SUCoreMSU__operationLoadBrain___block_invoke;
    v10[3] = &unk_27892D478;
    v10[4] = self;
    v11 = brainCopy;
    dispatch_async(msuOperationQueue, v10);
  }

  else
  {
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v9 = [mEMORY[0x277D643F8] buildError:8102 underlying:0 description:@"Missing required brain loader when attempting to load an update brain"];
    [(SUCoreMSU *)self _reportBrainLoadFailed:v9];

    [(SUCoreMSU *)self setPerformingOperation:0];
  }
}

void __33__SUCoreMSU__operationLoadBrain___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v2 updateDescriptor];
  v5 = [v2 _newMSUOptionsUsingPolicy:v3 descriptor:v4 baseOptions:0];

  v6 = objc_opt_new();
  if (v6)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = [v7 loadBrainPolicy];
      [v6 setDiscretionary:{objc_msgSend(v8, "discretionary")}];

      v9 = [*(a1 + 40) loadBrainPolicy];
      [v6 setAllowsCellularAccess:{objc_msgSend(v9, "allowsCellular")}];

      v10 = [*(a1 + 40) loadBrainPolicy];
      [v6 setLiveServerCatalogOnly:{objc_msgSend(v10, "liveServerCatalogOnly")}];

      if ([*(a1 + 40) isSupervisedPolicy])
      {
        [v6 setSupervised:1];
        v11 = [*(a1 + 32) updateDescriptor];
        v12 = [v11 productVersion];
        [v6 setRequestedProductVersion:v12];
      }

      v13 = [v6 additionalServerParams];
      v14 = [v13 mutableCopy];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v17 = v16;

      v18 = [*(a1 + 40) loadBrainPolicy];
      v19 = [v18 additionalOptions];

      if (v19)
      {
        v20 = [*(a1 + 40) loadBrainPolicy];
        v21 = [v20 additionalOptions];
        [v17 addEntriesFromDictionary:v21];
      }

      [v6 setAdditionalServerParams:v17];
    }

    else
    {
      [v6 setDiscretionary:0];
      [v6 setAllowsCellularAccess:0];
    }

    v22 = [*(a1 + 32) updateDescriptor];

    if (v22)
    {
      v23 = [*(a1 + 32) updateDescriptor];
      v24 = [v23 assetAudienceUUID];

      if (v24)
      {
        v25 = [*(a1 + 32) updateDescriptor];
        v26 = [v25 assetAudienceUUID];
        v27 = [v26 copy];
        [v6 setLiveAssetAudienceUUID:v27];
      }
    }
  }

  else
  {
    [*(a1 + 32) _trackMSUAnomaly:@"LOAD_BRAIN" result:8100 description:@"unable to create download options - using default"];
  }

  v28 = [MEMORY[0x277D64460] sharedLogger];
  v29 = [v28 oslog];

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(a1 + 32);
    v31 = [v30 brainLoader];
    v32 = @"YES";
    *buf = 138543874;
    v37 = v30;
    v38 = 2114;
    if (!v31)
    {
      v32 = @"NO";
    }

    v39 = v6;
    v40 = 2114;
    v41 = v32;
    _os_log_impl(&dword_23193C000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ loading brain with download options: %{public}@; brain loader present: %{public}@", buf, 0x20u);
  }

  [*(a1 + 32) _trackMSUBegin:@"loadUpdateBrainWithMAOptions"];
  v33 = [*(a1 + 32) brainLoader];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __33__SUCoreMSU__operationLoadBrain___block_invoke_981;
  v35[3] = &unk_27892E6A8;
  v35[4] = *(a1 + 32);
  [v33 SUCoreBorder_loadUpdateBrainWithMAOptions:v6 clientOptionsFromPolicy:v5 progressHandler:v35];

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_operationPreflightSUDownload:(id)download
{
  downloadCopy = download;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  updateDescriptor = [(SUCoreMSU *)self updateDescriptor];

  if (!updateDescriptor)
  {
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v16 = [mEMORY[0x277D643F8] buildError:8803 underlying:0 description:@"Missing required descriptor for PreflightSUDownload"];

    [(SUCoreMSU *)self _reportSUDownloadPreflightFailed:v16];
    goto LABEL_8;
  }

  updateDescriptor2 = [(SUCoreMSU *)self updateDescriptor];
  if ([updateDescriptor2 descriptorType] == 1)
  {
    goto LABEL_5;
  }

  updateDescriptor3 = [(SUCoreMSU *)self updateDescriptor];
  descriptorType = [updateDescriptor3 descriptorType];

  if (descriptorType != 3)
  {
    v10 = objc_alloc(MEMORY[0x277CCACA8]);
    updateDescriptor4 = [(SUCoreMSU *)self updateDescriptor];
    v12 = +[SUCoreDescriptor nameForDescriptorType:](SUCoreDescriptor, "nameForDescriptorType:", [updateDescriptor4 descriptorType]);
    updateDescriptor2 = [v10 initWithFormat:@"Unexpected descriptor type %@, expecting SUCoreDescriptorTypeAsset or SUCoreDescriptorTypeSFRAsset", v12];

    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428] trackAnomaly:@"PreflightSUDownload" forReason:updateDescriptor2 withResult:8116 withError:0];

LABEL_5:
  }

  [(SUCoreMSU *)self setPerformingOperation:1];
  msuOperationQueue = [(SUCoreMSU *)self msuOperationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SUCoreMSU__operationPreflightSUDownload___block_invoke;
  block[3] = &unk_27892D478;
  block[4] = self;
  v18 = downloadCopy;
  dispatch_async(msuOperationQueue, block);

LABEL_8:
}

void __43__SUCoreMSU__operationPreflightSUDownload___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDescriptor];
  if ([v2 descriptorType] == 2)
  {

LABEL_4:
    v5 = [MEMORY[0x277D64428] sharedDiag];
    [v5 trackAnomaly:@"MSUPreflightSUDownload" forReason:@"The descriptor specified a package type which is not expected for download preflight" withResult:8116 withError:0];

    goto LABEL_5;
  }

  v3 = [*(a1 + 32) updateDescriptor];
  v4 = [v3 descriptorType];

  if (v4 == 4)
  {
    goto LABEL_4;
  }

LABEL_5:
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = [v7 downloadPreflightPolicy];
  v9 = objc_opt_class();
  v10 = [*(a1 + 32) updateDescriptor];
  v11 = [*(a1 + 40) softwareUpdateDownloadPolicy];
  v12 = [v11 basePreflightOptions];
  v13 = [*(a1 + 40) softwareUpdateDownloadPolicy];
  v14 = [v13 additionalOptions];
  v15 = [v6 _newPreflightOptionsUsingPolicy:v7 subPolicyClass:v9 descriptor:v10 baseOptions:v12 additionalOptions:v14];

  [*(a1 + 32) _trackMSUOptions:@"performing MSU preflight (download)" optionsName:@"preflightOptions" withMSUOptions:v15];
  [*(a1 + 32) _trackMSUBegin:@"MSUPreflightUpdate"];
  v16 = SUCoreBorder_MSUPreflightUpdate(4, v15);
  v17 = [*(a1 + 32) msuControlQueue];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __43__SUCoreMSU__operationPreflightSUDownload___block_invoke_2;
  v20[3] = &unk_27892D478;
  v18 = *(a1 + 32);
  v21 = v16;
  v22 = v18;
  v19 = v16;
  dispatch_async(v17, v20);
}

uint64_t __43__SUCoreMSU__operationPreflightSUDownload___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    [v2 _reportSUDownloadPreflightFailed:?];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) code];
    v6 = *(a1 + 32);
    v7 = v4;
  }

  else
  {
    [v2 _reportSUDownloadPreflighted];
    v7 = *(a1 + 40);
    v5 = 0;
    v6 = 0;
  }

  [v7 _trackMSUEnd:@"MSUPreflightUpdate" withResult:v5 withError:v6];
  v8 = *(a1 + 40);

  return [v8 setPerformingOperation:0];
}

- (void)_operationPreflightPersonalize:(id)personalize
{
  personalizeCopy = personalize;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  updateDescriptor = [(SUCoreMSU *)self updateDescriptor];

  if (updateDescriptor)
  {
    [(SUCoreMSU *)self setPerformingOperation:1];
    msuOperationQueue = [(SUCoreMSU *)self msuOperationQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__SUCoreMSU__operationPreflightPersonalize___block_invoke;
    v10[3] = &unk_27892D478;
    v10[4] = self;
    v11 = personalizeCopy;
    dispatch_async(msuOperationQueue, v10);
  }

  else
  {
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v9 = [mEMORY[0x277D643F8] buildError:8803 underlying:0 description:@"Missing required descriptor for PreflightPersonalize"];

    [(SUCoreMSU *)self _reportPersonalizePreflightFailed:v9];
  }
}

void __44__SUCoreMSU__operationPreflightPersonalize___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v3 personalizePreflightPolicy];
  v5 = objc_opt_class();
  v6 = [*(a1 + 32) updateDescriptor];
  v7 = [*(a1 + 40) personalizePreflightPolicy];
  v8 = [v7 basePreflightOptions];
  v9 = [*(a1 + 40) personalizePreflightPolicy];
  v10 = [v9 additionalOptions];
  v11 = [v2 _newPreflightOptionsUsingPolicy:v3 subPolicyClass:v5 descriptor:v6 baseOptions:v8 additionalOptions:v10];

  [*(a1 + 32) _trackMSUOptions:@"performing MSU preflight (personalize)" optionsName:@"preflightOptions" withMSUOptions:v11];
  [*(a1 + 32) _trackMSUBegin:@"MSUPreflightUpdate"];
  v12 = SUCoreBorder_MSUPreflightUpdate(2, v11);
  v13 = [*(a1 + 32) msuControlQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __44__SUCoreMSU__operationPreflightPersonalize___block_invoke_2;
  v16[3] = &unk_27892D478;
  v14 = *(a1 + 32);
  v17 = v12;
  v18 = v14;
  v15 = v12;
  dispatch_async(v13, v16);
}

uint64_t __44__SUCoreMSU__operationPreflightPersonalize___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    [v2 _reportPersonalizePreflightFailed:?];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) code];
    v6 = *(a1 + 32);
    v7 = v4;
  }

  else
  {
    [v2 _reportPersonalizePreflighted];
    v7 = *(a1 + 40);
    v5 = 0;
    v6 = 0;
  }

  [v7 _trackMSUEnd:@"MSUPreflightUpdate" withResult:v5 withError:v6];
  v8 = *(a1 + 40);

  return [v8 setPerformingOperation:0];
}

- (void)_operationPreflightFDRRecovery:(id)recovery
{
  recoveryCopy = recovery;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  updateDescriptor = [(SUCoreMSU *)self updateDescriptor];

  if (updateDescriptor)
  {
    [(SUCoreMSU *)self setPerformingOperation:1];
    msuOperationQueue = [(SUCoreMSU *)self msuOperationQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__SUCoreMSU__operationPreflightFDRRecovery___block_invoke;
    v10[3] = &unk_27892D478;
    v10[4] = self;
    v11 = recoveryCopy;
    dispatch_async(msuOperationQueue, v10);
  }

  else
  {
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v9 = [mEMORY[0x277D643F8] buildError:8803 underlying:0 description:@"Missing required descriptor for PreflightFDRRecovery"];

    [(SUCoreMSU *)self _reportFDRRecoveryPreflightFailed:v9];
  }
}

void __44__SUCoreMSU__operationPreflightFDRRecovery___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v3 fdrRecoveryPreflightPolicy];
  v5 = objc_opt_class();
  v6 = [*(a1 + 32) updateDescriptor];
  v7 = [*(a1 + 40) fdrRecoveryPreflightPolicy];
  v8 = [v7 basePreflightOptions];
  v9 = [*(a1 + 40) fdrRecoveryPreflightPolicy];
  v10 = [v9 additionalOptions];
  v11 = [v2 _newPreflightOptionsUsingPolicy:v3 subPolicyClass:v5 descriptor:v6 baseOptions:v8 additionalOptions:v10];

  [*(a1 + 32) _trackMSUOptions:@"performing MSU preflight (FDRRecovery)" optionsName:@"preflightOptions" withMSUOptions:v11];
  [*(a1 + 32) _trackMSUBegin:@"MSUPreflightUpdate"];
  v12 = SUCoreBorder_MSUPreflightUpdate(3, v11);
  v13 = [*(a1 + 32) msuControlQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __44__SUCoreMSU__operationPreflightFDRRecovery___block_invoke_2;
  v16[3] = &unk_27892D478;
  v14 = *(a1 + 32);
  v17 = v12;
  v18 = v14;
  v15 = v12;
  dispatch_async(v13, v16);
}

uint64_t __44__SUCoreMSU__operationPreflightFDRRecovery___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    [v2 _reportFDRRecoveryPreflightFailed:?];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) code];
    v6 = *(a1 + 32);
    v7 = v4;
  }

  else
  {
    [v2 _reportFDRRecoveryPreflighted];
    v7 = *(a1 + 40);
    v5 = 0;
    v6 = 0;
  }

  [v7 _trackMSUEnd:@"MSUPreflightUpdate" withResult:v5 withError:v6];
  v8 = *(a1 + 40);

  return [v8 setPerformingOperation:0];
}

- (void)_operationPreflightWakeup:(id)wakeup
{
  wakeupCopy = wakeup;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  updateDescriptor = [(SUCoreMSU *)self updateDescriptor];

  if (updateDescriptor)
  {
    [(SUCoreMSU *)self setPerformingOperation:1];
    msuOperationQueue = [(SUCoreMSU *)self msuOperationQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __39__SUCoreMSU__operationPreflightWakeup___block_invoke;
    v10[3] = &unk_27892D478;
    v10[4] = self;
    v11 = wakeupCopy;
    dispatch_async(msuOperationQueue, v10);
  }

  else
  {
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v9 = [mEMORY[0x277D643F8] buildError:8803 underlying:0 description:@"Missing required descriptor for PreflightWakeup"];

    [(SUCoreMSU *)self _reportWakeupPreflightFailed:v9];
  }
}

void __39__SUCoreMSU__operationPreflightWakeup___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) updateDescriptor];
  v4 = [v3 descriptorType];
  if (v4 != 2)
  {
    v1 = [*(a1 + 32) updateDescriptor];
    if ([v1 descriptorType] != 4)
    {

      goto LABEL_8;
    }
  }

  v5 = [*(a1 + 32) updateDescriptor];
  v6 = [v5 updateBrainPath];

  if (v4 != 2)
  {
  }

  if (!v6)
  {
    v3 = [MEMORY[0x277D64428] sharedDiag];
    [v3 trackAnomaly:@"MSUPreflightWakeup" forReason:@"An update brain path is required for preflight withResult:yet none was provided" withError:{8116, 0}];
LABEL_8:
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = [v8 wakeupPreflightPolicy];
  v10 = objc_opt_class();
  v11 = [*(a1 + 32) updateDescriptor];
  v12 = [*(a1 + 40) wakeupPreflightPolicy];
  v13 = [v12 basePreflightOptions];
  v14 = [*(a1 + 40) wakeupPreflightPolicy];
  v15 = [v14 additionalOptions];
  v16 = [v7 _newPreflightOptionsUsingPolicy:v8 subPolicyClass:v10 descriptor:v11 baseOptions:v13 additionalOptions:v15];

  [*(a1 + 32) _trackMSUOptions:@"performing MSU preflight (wakeup)" optionsName:@"preflightOptions" withMSUOptions:v16];
  [*(a1 + 32) _trackMSUBegin:@"MSUPreflightUpdate"];
  v17 = SUCoreBorder_MSUPreflightUpdate(4, v16);
  v18 = [*(a1 + 32) msuControlQueue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __39__SUCoreMSU__operationPreflightWakeup___block_invoke_2;
  v21[3] = &unk_27892D478;
  v19 = *(a1 + 32);
  v22 = v17;
  v23 = v19;
  v20 = v17;
  dispatch_async(v18, v21);
}

uint64_t __39__SUCoreMSU__operationPreflightWakeup___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    [v2 _reportWakeupPreflightFailed:?];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) code];
    v6 = *(a1 + 32);
    v7 = v4;
  }

  else
  {
    [v2 _reportWakeupPreflighted];
    v7 = *(a1 + 40);
    v5 = 0;
    v6 = 0;
  }

  [v7 _trackMSUEnd:@"MSUPreflightUpdate" withResult:v5 withError:v6];
  v8 = *(a1 + 40);

  return [v8 setPerformingOperation:0];
}

- (void)_operationPreflightPrerequisiteCheck:(id)check
{
  checkCopy = check;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  updateDescriptor = [(SUCoreMSU *)self updateDescriptor];

  if (updateDescriptor)
  {
    [(SUCoreMSU *)self setPerformingOperation:1];
    msuOperationQueue = [(SUCoreMSU *)self msuOperationQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__SUCoreMSU__operationPreflightPrerequisiteCheck___block_invoke;
    v10[3] = &unk_27892D478;
    v10[4] = self;
    v11 = checkCopy;
    dispatch_async(msuOperationQueue, v10);
  }

  else
  {
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v9 = [mEMORY[0x277D643F8] buildError:8803 underlying:0 description:@"Missing required descriptor for PreflightPrerequisiteCheck"];

    [(SUCoreMSU *)self _reportPrerequisiteCheckPreflightFailed:v9];
  }
}

void __50__SUCoreMSU__operationPreflightPrerequisiteCheck___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v3 prerequisiteCheckPreflightPolicy];
  v5 = objc_opt_class();
  v6 = [*(a1 + 32) updateDescriptor];
  v7 = [*(a1 + 40) prerequisiteCheckPreflightPolicy];
  v8 = [v7 basePreflightOptions];
  v9 = [*(a1 + 40) prerequisiteCheckPreflightPolicy];
  v10 = [v9 additionalOptions];
  v11 = [v2 _newPreflightOptionsUsingPolicy:v3 subPolicyClass:v5 descriptor:v6 baseOptions:v8 additionalOptions:v10];

  [*(a1 + 32) _trackMSUOptions:@"performing MSU preflight (prerequisite check)" optionsName:@"preflightOptions" withMSUOptions:v11];
  [*(a1 + 32) _trackMSUBegin:@"MSUPreflightUpdate"];
  v12 = SUCoreBorder_MSUPreflightUpdate(5, v11);
  v13 = [*(a1 + 32) msuControlQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __50__SUCoreMSU__operationPreflightPrerequisiteCheck___block_invoke_2;
  v16[3] = &unk_27892D478;
  v14 = *(a1 + 32);
  v17 = v12;
  v18 = v14;
  v15 = v12;
  dispatch_async(v13, v16);
}

uint64_t __50__SUCoreMSU__operationPreflightPrerequisiteCheck___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    [v2 _reportPrerequisiteCheckPreflightFailed:?];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) code];
    v6 = *(a1 + 32);
    v7 = v4;
  }

  else
  {
    [v2 _reportPrerequisiteCheckPreflighted];
    v7 = *(a1 + 40);
    v5 = 0;
    v6 = 0;
  }

  [v7 _trackMSUEnd:@"MSUPreflightUpdate" withResult:v5 withError:v6];
  v8 = *(a1 + 40);

  return [v8 setPerformingOperation:0];
}

- (void)_operationPrepareUpdate:(id)update
{
  updateCopy = update;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  updateDescriptor = [(SUCoreMSU *)self updateDescriptor];

  if (updateDescriptor)
  {
    updateDescriptor2 = [(SUCoreMSU *)self updateDescriptor];
    descriptorType = [updateDescriptor2 descriptorType];
    if (descriptorType == 2 || (-[SUCoreMSU updateDescriptor](self, "updateDescriptor"), v3 = objc_claimAutoreleasedReturnValue(), [v3 descriptorType] == 4))
    {
      updateDescriptor3 = [(SUCoreMSU *)self updateDescriptor];
      updateBrainPath = [updateDescriptor3 updateBrainPath];

      if (descriptorType != 2)
      {
      }

      if (updateBrainPath)
      {
LABEL_11:
        updateDescriptor4 = [(SUCoreMSU *)self updateDescriptor];
        descriptorType2 = [updateDescriptor4 descriptorType];
        if (descriptorType2 == 2 || (-[SUCoreMSU updateDescriptor](self, "updateDescriptor"), v3 = objc_claimAutoreleasedReturnValue(), [v3 descriptorType] == 4))
        {
          updateDescriptor5 = [(SUCoreMSU *)self updateDescriptor];
          updateBundlePath = [updateDescriptor5 updateBundlePath];

          if (descriptorType2 != 2)
          {
          }

          if (updateBundlePath)
          {
            goto LABEL_19;
          }

          updateDescriptor4 = [MEMORY[0x277D64428] sharedDiag];
          [updateDescriptor4 trackAnomaly:@"MSUPrepare" forReason:@"An update bundle path is required for prepare withResult:yet none was provided" withError:{8116, 0}];
        }

        else
        {
        }

LABEL_19:
        [(SUCoreMSU *)self setPerformingOperation:1];
        [(SUCoreMSU *)self setCancelingPrepare:0];
        [(SUCoreMSU *)self setNextProgressThreshold:0.0];
        [(SUCoreMSU *)self setPrepareProgressFinal:0];
        msuOperationQueue = [(SUCoreMSU *)self msuOperationQueue];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __37__SUCoreMSU__operationPrepareUpdate___block_invoke;
        v19[3] = &unk_27892D478;
        v19[4] = self;
        v20 = updateCopy;
        dispatch_async(msuOperationQueue, v19);

        goto LABEL_20;
      }

      updateDescriptor2 = [MEMORY[0x277D64428] sharedDiag];
      [updateDescriptor2 trackAnomaly:@"MSUPrepare" forReason:@"An update brain path is required for prepare withResult:yet none was provided" withError:{8116, 0}];
    }

    else
    {
    }

    goto LABEL_11;
  }

  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  v13 = [mEMORY[0x277D643F8] buildError:8803 underlying:0 description:@"Missing required descriptor for PrepareUpdate"];

  [(SUCoreMSU *)self _reportPrepareFailed:v13];
LABEL_20:
}

void __37__SUCoreMSU__operationPrepareUpdate___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v27 = *(a1 + 32);
  [SUCorePower setPowerAssertion:1 forIdentifierDomain:@"msu.PrepareUpdate"];
  [*v2 setMsuHandle:0];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [v4 updateDescriptor];
  v6 = [v4 _newPrepareOptionsUsingPolicy:v3 descriptor:v5];

  [*v2 _trackMSUOptions:@"performing MSU prepare" optionsName:@"prepareOptions" withMSUOptions:v6];
  v26 = 0;
  v7 = [*v2 updateDescriptor];
  if ([v7 descriptorType] == 2)
  {

LABEL_4:
    [*v2 _trackMSUBegin:@"MSUPrepareUpdate"];
    v10 = [*v2 updateDescriptor];
    v11 = [v10 updateBundlePath];
    v12 = SUCoreBorder_MSUPrepareUpdate(v11, v6);
    goto LABEL_6;
  }

  v8 = [*v2 updateDescriptor];
  v9 = [v8 descriptorType];

  if (v9 == 4)
  {
    goto LABEL_4;
  }

  [*v2 _trackMSUBegin:@"MSUPrepareUpdateWithMAAsset"];
  v10 = [*v2 updateDescriptor];
  v11 = [v10 softwareUpdateAsset];
  v12 = SUCoreBorder_MSUPrepareUpdateWithMAAsset(v11, v6);
LABEL_6:
  v13 = v12;

  [SUCorePower setPowerAssertion:0 forIdentifierDomain:@"msu.PrepareUpdate"];
  if (v13)
  {
    v14 = [MEMORY[0x277D64460] sharedLogger];
    v15 = [v14 oslog];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __37__SUCoreMSU__operationPrepareUpdate___block_invoke_cold_1(v2, v13, v15);
    }
  }

  else
  {
    [*v2 setMsuHandle:v26];
    v16 = [MEMORY[0x277D64460] sharedLogger];
    v15 = [v16 oslog];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *v2;
      v18 = [*v2 msuHandle];
      *buf = 138543618;
      v29 = v17;
      v30 = 2048;
      v31 = v18;
      _os_log_impl(&dword_23193C000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ MSU prepare completed successfully, updating msuHandle: %ld", buf, 0x16u);
    }
  }

  v19 = [*v2 msuControlQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __37__SUCoreMSU__operationPrepareUpdate___block_invoke_1053;
  v23[3] = &unk_27892D478;
  v20 = *v2;
  v24 = v13;
  v25 = v20;
  v21 = v13;
  dispatch_async(v19, v23);

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __37__SUCoreMSU__operationPrepareUpdate___block_invoke_1053(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    [*(a1 + 40) _reportPrepareFailed:?];
    v3 = [*(a1 + 40) updateDescriptor];
    if ([v3 descriptorType] == 2)
    {
    }

    else
    {
      v8 = [*(a1 + 40) updateDescriptor];
      v9 = [v8 descriptorType];

      if (v9 != 4)
      {
        v10 = &kSU_M_MSUPrepareUpdateWithMAAsset;
        goto LABEL_11;
      }
    }

    v10 = &kSU_M_MSUPrepareUpdate;
LABEL_11:
    v15 = *v10;
    v16 = *(a1 + 40);
    v17 = [*(a1 + 32) code];
    v18 = *(a1 + 32);
    v13 = v16;
    v19 = v15;
    goto LABEL_14;
  }

  v4 = objc_alloc(MEMORY[0x277D64488]);
  LODWORD(v5) = 1.0;
  v6 = [v4 initWithPhase:*MEMORY[0x277D64850] isStalled:0 portionComplete:v5 remaining:-1.0];
  [v2 _reportPrepared:v6];

  v7 = [*(a1 + 40) updateDescriptor];
  if ([v7 descriptorType] == 2)
  {
  }

  else
  {
    v11 = [*(a1 + 40) updateDescriptor];
    v12 = [v11 descriptorType];

    if (v12 != 4)
    {
      v13 = *(a1 + 40);
      v14 = &kSU_M_MSUPrepareUpdateWithMAAsset;
      goto LABEL_13;
    }
  }

  v13 = *(a1 + 40);
  v14 = &kSU_M_MSUPrepareUpdate;
LABEL_13:
  v19 = *v14;
  v17 = 0;
  v18 = 0;
LABEL_14:
  [v13 _trackMSUEnd:v19 withResult:v17 withError:v18];
  [*(a1 + 40) setPerformingOperation:0];
  v20 = *(a1 + 40);

  return [v20 setCancelingPrepare:0];
}

- (void)_operationSuspendUpdate
{
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  [(SUCoreMSU *)self setPerformingOperation:1];
  msuOperationQueue = [(SUCoreMSU *)self msuOperationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__SUCoreMSU__operationSuspendUpdate__block_invoke;
  block[3] = &unk_27892C8A8;
  block[4] = self;
  dispatch_async(msuOperationQueue, block);
}

void __36__SUCoreMSU__operationSuspendUpdate__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D64460] sharedLogger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138543618;
    v14 = v4;
    v15 = 2048;
    v16 = [v4 msuHandle];
    _os_log_impl(&dword_23193C000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing MSU suspend update with msuHandle: %ld", buf, 0x16u);
  }

  [*(a1 + 32) _trackMSUBegin:@"MSUSuspendUpdate"];
  [*(a1 + 32) msuHandle];
  v5 = SUCoreBorder_MSUSuspendUpdate();
  v6 = [*(a1 + 32) msuControlQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __36__SUCoreMSU__operationSuspendUpdate__block_invoke_1055;
  v10[3] = &unk_27892D478;
  v7 = *(a1 + 32);
  v11 = v5;
  v12 = v7;
  v8 = v5;
  dispatch_async(v6, v10);

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __36__SUCoreMSU__operationSuspendUpdate__block_invoke_1055(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    [v2 _reportSuspendFailed:?];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) code];
    v6 = *(a1 + 32);
    v7 = v4;
  }

  else
  {
    [v2 _reportSuspended];
    v7 = *(a1 + 40);
    v5 = 0;
    v6 = 0;
  }

  [v7 _trackMSUEnd:@"MSUSuspendUpdate" withResult:v5 withError:v6];
  v8 = *(a1 + 40);

  return [v8 setPerformingOperation:0];
}

- (void)_operationResumeUpdate:(id)update
{
  updateCopy = update;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  [(SUCoreMSU *)self setPerformingOperation:1];
  msuOperationQueue = [(SUCoreMSU *)self msuOperationQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__SUCoreMSU__operationResumeUpdate___block_invoke;
  v8[3] = &unk_27892D478;
  v8[4] = self;
  v9 = updateCopy;
  v7 = updateCopy;
  dispatch_async(msuOperationQueue, v8);
}

void __36__SUCoreMSU__operationResumeUpdate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v3 resumePolicy];
  v5 = objc_opt_class();
  v6 = [*(a1 + 32) updateDescriptor];
  v7 = [*(a1 + 40) resumePolicy];
  v8 = [v7 baseResumeOptions];
  v9 = [*(a1 + 40) resumePolicy];
  v10 = [v9 additionalOptions];
  v11 = [v2 _newPreflightOptionsUsingPolicy:v3 subPolicyClass:v5 descriptor:v6 baseOptions:v8 additionalOptions:v10];

  [*(a1 + 32) _trackMSUOptions:@"performing MSU resume" optionsName:@"resumeUpdateOptions" withMSUOptions:v11];
  [*(a1 + 32) _trackMSUBegin:@"MSUResumeUpdateWithOptions"];
  v20 = 0;
  v12 = SUCoreBorder_MSUResumeUpdateWithOptions(v11);
  v13 = [*(a1 + 32) msuControlQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __36__SUCoreMSU__operationResumeUpdate___block_invoke_2;
  v16[3] = &unk_27892E580;
  v14 = *(a1 + 32);
  v17 = v12;
  v18 = v14;
  v19 = 0;
  v15 = v12;
  dispatch_async(v13, v16);
}

uint64_t __36__SUCoreMSU__operationResumeUpdate___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = [MEMORY[0x277D64460] sharedLogger];
    v4 = [v3 oslog];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __36__SUCoreMSU__operationResumeUpdate___block_invoke_2_cold_1(a1, v2);
    }

    [*(a1 + 40) _reportResumeFailed:*(a1 + 32)];
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) code];
    v7 = *(a1 + 32);
    v8 = v5;
  }

  else
  {
    [*(a1 + 40) setMsuHandle:*(a1 + 48)];
    v9 = [MEMORY[0x277D64460] sharedLogger];
    v10 = [v9 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v14 = 138543618;
      v15 = v11;
      v16 = 2048;
      v17 = [v11 msuHandle];
      _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ MSU resume completed successfully, updating msuHandle: %ld", &v14, 0x16u);
    }

    [*(a1 + 40) _reportResumed];
    v8 = *(a1 + 40);
    v6 = 0;
    v7 = 0;
  }

  [v8 _trackMSUEnd:@"MSUResumeUpdateWithOptions" withResult:v6 withError:v7];
  result = [*(a1 + 40) setPerformingOperation:0];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_operationApplyUpdate:(id)update
{
  updateCopy = update;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  [(SUCoreMSU *)self setPerformingOperation:1];
  [(SUCoreMSU *)self setNextProgressThreshold:0.0];
  [(SUCoreMSU *)self setApplyProgressFinal:0];
  [(SUCoreMSU *)self setApplyProgressActionText:0];
  msuOperationQueue = [(SUCoreMSU *)self msuOperationQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__SUCoreMSU__operationApplyUpdate___block_invoke;
  v8[3] = &unk_27892D478;
  v8[4] = self;
  v9 = updateCopy;
  v7 = updateCopy;
  dispatch_async(msuOperationQueue, v8);
}

void __35__SUCoreMSU__operationApplyUpdate___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = *(a1 + 32);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v2 updateDescriptor];
  v5 = [*(a1 + 40) applyPolicy];
  v6 = [v5 baseApplyOptions];
  v7 = [v2 _newMSUOptionsUsingPolicy:v3 descriptor:v4 baseOptions:v6];

  [*(a1 + 40) updateApplyOptionsWithExtensions:v7];
  v8 = [*(a1 + 40) applyPolicy];
  v9 = [v8 additionalOptions];
  [v7 addEntriesFromDictionary:v9];

  [*(a1 + 32) _trackMSUOptions:@"performing MSU apply" optionsName:@"applyOptions" withMSUOptions:v7];
  v10 = [MEMORY[0x277D64460] sharedLogger];
  v11 = [v10 oslog];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    *buf = 138543618;
    v23 = v12;
    v24 = 2048;
    v25 = [v12 msuHandle];
    _os_log_impl(&dword_23193C000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ performing MSU apply with msuHandle: %ld", buf, 0x16u);
  }

  [SUCorePower setPowerAssertion:1 forIdentifierDomain:@"msu.ApplyUpdate"];
  [*(a1 + 32) _trackMSUBegin:@"MSUApplyUpdate"];
  v13 = SUCoreBorder_MSUApplyUpdate([*(a1 + 32) msuHandle], v7);
  [SUCorePower setPowerAssertion:0 forIdentifierDomain:@"msu.ApplyUpdate"];
  v14 = [*(a1 + 32) msuControlQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SUCoreMSU__operationApplyUpdate___block_invoke_1068;
  block[3] = &unk_27892D478;
  v15 = *(a1 + 32);
  v19 = v13;
  v20 = v15;
  v16 = v13;
  dispatch_async(v14, block);

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __35__SUCoreMSU__operationApplyUpdate___block_invoke_1068(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    [v2 _reportApplyFailed:?];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) code];
    v6 = *(a1 + 32);
    v7 = v4;
  }

  else
  {
    [v2 _reportApplied];
    v7 = *(a1 + 40);
    v5 = 0;
    v6 = 0;
  }

  [v7 _trackMSUEnd:@"MSUApplyUpdate" withResult:v5 withError:v6];
  v8 = *(a1 + 40);

  return [v8 setPerformingOperation:0];
}

- (void)_removePrepared
{
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  msuOperationQueue = [(SUCoreMSU *)self msuOperationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__SUCoreMSU__removePrepared__block_invoke;
  block[3] = &unk_27892C8A8;
  block[4] = self;
  dispatch_async(msuOperationQueue, block);
}

void __28__SUCoreMSU__removePrepared__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _trackMSUBegin:@"MSUPurgeSuspendedUpdate"];
  v2 = SUCoreBorder_MSUPurgeSuspendedUpdate();
  v3 = [*(a1 + 32) msuControlQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__SUCoreMSU__removePrepared__block_invoke_2;
  v6[3] = &unk_27892D478;
  v4 = *(a1 + 32);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

uint64_t __28__SUCoreMSU__removePrepared__block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    [v2 _reportRemoveFailed:?];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) code];
    v6 = *(a1 + 32);
    v7 = v4;
  }

  else
  {
    [v2 _reportRemoved];
    v7 = *(a1 + 40);
    v5 = 0;
    v6 = 0;
  }

  [v7 _trackMSUEnd:@"MSUPurgeSuspendedUpdate" withResult:v5 withError:v6];
  v8 = *(a1 + 40);

  return [v8 setRemovingPrepared:0];
}

- (void)_operationRollbackUpdatePrepare:(id)prepare
{
  prepareCopy = prepare;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  [(SUCoreMSU *)self setPerformingOperation:1];
  msuOperationQueue = [(SUCoreMSU *)self msuOperationQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SUCoreMSU__operationRollbackUpdatePrepare___block_invoke;
  v8[3] = &unk_27892D478;
  v9 = prepareCopy;
  selfCopy = self;
  v7 = prepareCopy;
  dispatch_async(msuOperationQueue, v8);
}

void __45__SUCoreMSU__operationRollbackUpdatePrepare___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) softwareUpdateAssetType];
  if ([v2 isEqualToString:@"com.apple.MobileAsset.SplatSoftwareUpdate"])
  {

LABEL_4:
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = [v5 rollbackDescriptor];
    v8 = [v5 _newRollbackPrepareOptionsUsingPolicy:v6 rollbackDescriptor:v7];

    [*(a1 + 40) _trackMSUOptions:@"performing MSU rollback prepare" optionsName:@"rollbackOptions" withMSUOptions:v8];
    [SUCorePower setPowerAssertion:1 forIdentifierDomain:@"msu.RollbackUpdatePrepare"];
    [*(a1 + 40) _trackMSUBegin:@"MSURollbackUpdatePrepare"];
    *buf = 0;
    v9 = SUCoreBorder_MSURollbackUpdatePrepare(buf, v8);
    [SUCorePower setPowerAssertion:0 forIdentifierDomain:@"msu.RollbackUpdatePrepare"];
    v10 = [*(a1 + 40) msuControlQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__SUCoreMSU__operationRollbackUpdatePrepare___block_invoke_2;
    block[3] = &unk_27892E580;
    v11 = v9;
    v12 = *(a1 + 40);
    v27 = v11;
    v28 = v12;
    v29 = *buf;
    dispatch_async(v10, block);

    v13 = v27;
    goto LABEL_8;
  }

  v3 = [*(a1 + 32) softwareUpdateAssetType];
  v4 = [v3 isEqualToString:@"com.apple.MobileAsset.MacSplatSoftwareUpdate"];

  if (v4)
  {
    goto LABEL_4;
  }

  v14 = MEMORY[0x277CCACA8];
  v15 = [*(a1 + 32) softwareUpdateAssetType];
  v8 = [v14 stringWithFormat:@"Rollback prepare operation only supported for Splat asset types. Asset Type %@ unsupported", v15];

  v16 = [MEMORY[0x277D64460] sharedLogger];
  v17 = [v16 oslog];

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 40);
    *buf = 138543618;
    *&buf[4] = v18;
    v35 = 2114;
    v36 = v8;
    _os_log_impl(&dword_23193C000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
  }

  v19 = MEMORY[0x277CCA9B8];
  v20 = *MEMORY[0x277D646E8];
  v32 = *MEMORY[0x277CCA450];
  v33 = v8;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v22 = [v19 errorWithDomain:v20 code:8118 userInfo:v21];

  v23 = [MEMORY[0x277D64428] sharedDiag];
  [v23 trackAnomaly:@"[POLICY] ROLLBACK_UPDATE_PREPARE" forReason:@"SoftwareUpdateAssetType is not supported with rollback" withResult:8118 withError:v22];

  v24 = [*(a1 + 40) msuControlQueue];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __45__SUCoreMSU__operationRollbackUpdatePrepare___block_invoke_1079;
  v30[3] = &unk_27892D478;
  v30[4] = *(a1 + 40);
  v11 = v22;
  v31 = v11;
  dispatch_async(v24, v30);

  v13 = v31;
LABEL_8:

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __45__SUCoreMSU__operationRollbackUpdatePrepare___block_invoke_1079(uint64_t a1)
{
  [*(a1 + 32) _reportRollbackFailed:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 setPerformingOperation:0];
}

uint64_t __45__SUCoreMSU__operationRollbackUpdatePrepare___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277D64460] sharedLogger];
  v5 = [v4 oslog];

  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __45__SUCoreMSU__operationRollbackUpdatePrepare___block_invoke_2_cold_1(a1, v2);
    }

    [*(a1 + 40) _reportRollbackFailed:*(a1 + 32)];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) code];
    v8 = *(a1 + 32);
    v9 = v6;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v14 = 138543618;
      v15 = v10;
      v16 = 2048;
      v17 = v11;
      _os_log_impl(&dword_23193C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ MSU rollback completed successfully, updating msuHandle: %ld", &v14, 0x16u);
    }

    [*(a1 + 40) setMsuHandle:*(a1 + 48)];
    [*(a1 + 40) _reportRollbackPrepareSuccess];
    v9 = *(a1 + 40);
    v7 = 0;
    v8 = 0;
  }

  [v9 _trackMSUEnd:@"MSURollbackUpdatePrepare" withResult:v7 withError:v8];
  result = [*(a1 + 40) setPerformingOperation:0];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_operationRollbackUpdateSuspend:(id)suspend
{
  suspendCopy = suspend;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  [(SUCoreMSU *)self setPerformingOperation:1];
  msuOperationQueue = [(SUCoreMSU *)self msuOperationQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SUCoreMSU__operationRollbackUpdateSuspend___block_invoke;
  v8[3] = &unk_27892D478;
  v9 = suspendCopy;
  selfCopy = self;
  v7 = suspendCopy;
  dispatch_async(msuOperationQueue, v8);
}

void __45__SUCoreMSU__operationRollbackUpdateSuspend___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) softwareUpdateAssetType];
  if ([v2 isEqualToString:@"com.apple.MobileAsset.SplatSoftwareUpdate"])
  {

LABEL_4:
    v5 = [MEMORY[0x277D64460] sharedLogger];
    v6 = [v5 oslog];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      *buf = 138543618;
      v33 = v7;
      v34 = 2048;
      v35 = [v7 msuHandle];
      _os_log_impl(&dword_23193C000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing MSU suspend rollback update with msuHandle: %ld", buf, 0x16u);
    }

    [SUCorePower setPowerAssertion:1 forIdentifierDomain:@"msu.RollbackUpdateSuspend"];
    [*(a1 + 40) _trackMSUBegin:@"MSURollbackUpdateSuspend"];
    [*(a1 + 40) msuHandle];
    v8 = SUCoreBorder_MSURollbackUpdateSuspend();
    [SUCorePower setPowerAssertion:0 forIdentifierDomain:@"msu.RollbackUpdateSuspend"];
    v9 = [*(a1 + 40) msuControlQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__SUCoreMSU__operationRollbackUpdateSuspend___block_invoke_1093;
    block[3] = &unk_27892D478;
    v10 = v8;
    v11 = *(a1 + 40);
    v26 = v10;
    v27 = v11;
    dispatch_async(v9, block);

    v12 = v26;
    goto LABEL_10;
  }

  v3 = [*(a1 + 32) softwareUpdateAssetType];
  v4 = [v3 isEqualToString:@"com.apple.MobileAsset.MacSplatSoftwareUpdate"];

  if (v4)
  {
    goto LABEL_4;
  }

  v13 = MEMORY[0x277CCACA8];
  v14 = [*(a1 + 32) softwareUpdateAssetType];
  v12 = [v13 stringWithFormat:@"Rollback suspend operation only supported for Splat asset types. Asset Type %@ unsupported", v14];

  v15 = [MEMORY[0x277D64460] sharedLogger];
  v16 = [v15 oslog];

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 40);
    *buf = 138543618;
    v33 = v17;
    v34 = 2114;
    v35 = v12;
    _os_log_impl(&dword_23193C000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
  }

  v18 = MEMORY[0x277CCA9B8];
  v19 = *MEMORY[0x277D646E8];
  v30 = *MEMORY[0x277CCA450];
  v31 = v12;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v21 = [v18 errorWithDomain:v19 code:8118 userInfo:v20];

  v22 = [MEMORY[0x277D64428] sharedDiag];
  [v22 trackAnomaly:@"[POLICY] ROLLBACK_UPDATE_SUSPEND" forReason:@"SoftwareUpdateAssetType is not supported with rollback" withResult:8118 withError:v21];

  v23 = [*(a1 + 40) msuControlQueue];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __45__SUCoreMSU__operationRollbackUpdateSuspend___block_invoke_1092;
  v28[3] = &unk_27892D478;
  v28[4] = *(a1 + 40);
  v10 = v21;
  v29 = v10;
  dispatch_async(v23, v28);

LABEL_10:
  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __45__SUCoreMSU__operationRollbackUpdateSuspend___block_invoke_1092(uint64_t a1)
{
  [*(a1 + 32) _reportRollbackFailed:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 setPerformingOperation:0];
}

uint64_t __45__SUCoreMSU__operationRollbackUpdateSuspend___block_invoke_1093(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277D64460] sharedLogger];
  v5 = [v4 oslog];

  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __45__SUCoreMSU__operationRollbackUpdateSuspend___block_invoke_1093_cold_1(a1, v2);
    }

    [*(a1 + 40) _reportRollbackFailed:*(a1 + 32)];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) code];
    v8 = *(a1 + 32);
    v9 = v6;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v13 = 138543618;
      v14 = v10;
      v15 = 2048;
      v16 = [v10 msuHandle];
      _os_log_impl(&dword_23193C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ MSU suspend rollback completed successfully, msuHandle: %ld", &v13, 0x16u);
    }

    [*(a1 + 40) _reportRollbackSuspendSuccess];
    v9 = *(a1 + 40);
    v7 = 0;
    v8 = 0;
  }

  [v9 _trackMSUEnd:@"MSURollbackUpdateSuspend" withResult:v7 withError:v8];
  result = [*(a1 + 40) setPerformingOperation:0];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_operationRollbackUpdateResume:(id)resume
{
  resumeCopy = resume;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  [(SUCoreMSU *)self setPerformingOperation:1];
  msuOperationQueue = [(SUCoreMSU *)self msuOperationQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__SUCoreMSU__operationRollbackUpdateResume___block_invoke;
  v8[3] = &unk_27892D478;
  v9 = resumeCopy;
  selfCopy = self;
  v7 = resumeCopy;
  dispatch_async(msuOperationQueue, v8);
}

void __44__SUCoreMSU__operationRollbackUpdateResume___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) softwareUpdateAssetType];
  if ([v2 isEqualToString:@"com.apple.MobileAsset.SplatSoftwareUpdate"])
  {

LABEL_4:
    v5 = [MEMORY[0x277D64460] sharedLogger];
    v6 = [v5 oslog];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      *buf = 138543618;
      *&buf[4] = v7;
      v34 = 2048;
      v35 = [v7 msuHandle];
      _os_log_impl(&dword_23193C000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing MSU resume rollback update with msuHandle: %ld", buf, 0x16u);
    }

    [SUCorePower setPowerAssertion:1 forIdentifierDomain:@"msu.RollbackUpdateResume"];
    [*(a1 + 40) _trackMSUBegin:@"MSURollbackUpdateResume"];
    *buf = 0;
    v8 = SUCoreBorder_MSURollbackUpdateResumeWithOptions(0);
    [SUCorePower setPowerAssertion:0 forIdentifierDomain:@"msu.RollbackUpdateResume"];
    v9 = [*(a1 + 40) msuControlQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__SUCoreMSU__operationRollbackUpdateResume___block_invoke_1101;
    block[3] = &unk_27892E580;
    v10 = v8;
    v11 = *(a1 + 40);
    v26 = v10;
    v27 = v11;
    v28 = *buf;
    dispatch_async(v9, block);

    goto LABEL_10;
  }

  v3 = [*(a1 + 32) softwareUpdateAssetType];
  v4 = [v3 isEqualToString:@"com.apple.MobileAsset.MacSplatSoftwareUpdate"];

  if (v4)
  {
    goto LABEL_4;
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = [*(a1 + 32) softwareUpdateAssetType];
  v14 = [v12 stringWithFormat:@"Rollback resume operation only supported for Splat asset types. Asset Type %@ unsupported", v13];

  v15 = [MEMORY[0x277D64460] sharedLogger];
  v16 = [v15 oslog];

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 40);
    *buf = 138543618;
    *&buf[4] = v17;
    v34 = 2114;
    v35 = v14;
    _os_log_impl(&dword_23193C000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
  }

  v18 = MEMORY[0x277CCA9B8];
  v19 = *MEMORY[0x277D646E8];
  v31 = *MEMORY[0x277CCA450];
  v32 = v14;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v21 = [v18 errorWithDomain:v19 code:8118 userInfo:v20];

  v22 = [MEMORY[0x277D64428] sharedDiag];
  [v22 trackAnomaly:@"[POLICY] ROLLBACK_UPDATE_RESUME" forReason:@"SoftwareUpdateAssetType is not supported with rollback" withResult:8118 withError:v21];

  v23 = [*(a1 + 40) msuControlQueue];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __44__SUCoreMSU__operationRollbackUpdateResume___block_invoke_1100;
  v29[3] = &unk_27892D478;
  v29[4] = *(a1 + 40);
  v10 = v21;
  v30 = v10;
  dispatch_async(v23, v29);

LABEL_10:
  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __44__SUCoreMSU__operationRollbackUpdateResume___block_invoke_1100(uint64_t a1)
{
  [*(a1 + 32) _reportRollbackFailed:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 setPerformingOperation:0];
}

uint64_t __44__SUCoreMSU__operationRollbackUpdateResume___block_invoke_1101(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = [MEMORY[0x277D64460] sharedLogger];
    v4 = [v3 oslog];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __44__SUCoreMSU__operationRollbackUpdateResume___block_invoke_1101_cold_1(a1, v2);
    }

    [*(a1 + 40) _reportRollbackFailed:*(a1 + 32)];
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) code];
    v7 = *(a1 + 32);
    v8 = v5;
  }

  else
  {
    [*(a1 + 40) setMsuHandle:*(a1 + 48)];
    v9 = [MEMORY[0x277D64460] sharedLogger];
    v10 = [v9 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v14 = 138543618;
      v15 = v11;
      v16 = 2048;
      v17 = [v11 msuHandle];
      _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ MSU resume completed successfully, updating msuHandle: %ld", &v14, 0x16u);
    }

    [*(a1 + 40) _reportRollbackResumeSuccess];
    v8 = *(a1 + 40);
    v6 = 0;
    v7 = 0;
  }

  [v8 _trackMSUEnd:@"MSURollbackUpdateResume" withResult:v6 withError:v7];
  result = [*(a1 + 40) setPerformingOperation:0];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_operationRollbackUpdateApply:(id)apply
{
  applyCopy = apply;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  [(SUCoreMSU *)self setPerformingOperation:1];
  msuOperationQueue = [(SUCoreMSU *)self msuOperationQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__SUCoreMSU__operationRollbackUpdateApply___block_invoke;
  v8[3] = &unk_27892D478;
  v9 = applyCopy;
  selfCopy = self;
  v7 = applyCopy;
  dispatch_async(msuOperationQueue, v8);
}

void __43__SUCoreMSU__operationRollbackUpdateApply___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) softwareUpdateAssetType];
  if ([v2 isEqualToString:@"com.apple.MobileAsset.SplatSoftwareUpdate"])
  {

LABEL_4:
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = [v5 rollbackDescriptor];
    v8 = [*(a1 + 32) rollbackPolicy];
    v9 = [v8 baseRollbackOptions];
    v10 = [*(a1 + 32) rollbackPolicy];
    v11 = [v10 additionalOptions];
    v12 = [v5 _newMSURollbackOptionsUsingPolicy:v6 rollbackDescriptor:v7 baseOptions:v9 additionalOptions:v11];

    [*(a1 + 32) updateApplyOptionsWithExtensions:v12];
    [*(a1 + 40) _trackMSUOptions:@"performing MSU rollback apply" optionsName:@"applyOptions" withMSUOptions:v12];
    v13 = [MEMORY[0x277D64460] sharedLogger];
    v14 = [v13 oslog];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      *buf = 138543618;
      v41 = v15;
      v42 = 2048;
      v43 = [v15 msuHandle];
      _os_log_impl(&dword_23193C000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ performing MSU rollback apply with msuHandle: %ld", buf, 0x16u);
    }

    [SUCorePower setPowerAssertion:1 forIdentifierDomain:@"msu.ApplyUpdate"];
    [*(a1 + 40) _trackMSUBegin:@"MSURollbackUpdateApply"];
    v16 = SUCoreBorder_MSURollbackUpdateApply([*(a1 + 40) msuHandle], v12);
    [SUCorePower setPowerAssertion:0 forIdentifierDomain:@"msu.ApplyUpdate"];
    v17 = [*(a1 + 40) msuControlQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__SUCoreMSU__operationRollbackUpdateApply___block_invoke_1112;
    block[3] = &unk_27892D478;
    v18 = v16;
    v19 = *(a1 + 40);
    v34 = v18;
    v35 = v19;
    dispatch_async(v17, block);

    v20 = v34;
    goto LABEL_10;
  }

  v3 = [*(a1 + 32) softwareUpdateAssetType];
  v4 = [v3 isEqualToString:@"com.apple.MobileAsset.MacSplatSoftwareUpdate"];

  if (v4)
  {
    goto LABEL_4;
  }

  v21 = MEMORY[0x277CCACA8];
  v22 = [*(a1 + 32) softwareUpdateAssetType];
  v12 = [v21 stringWithFormat:@"Rollback apply operation only supported for Splat asset types. Asset Type %@ unsupported", v22];

  v23 = [MEMORY[0x277D64460] sharedLogger];
  v24 = [v23 oslog];

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(a1 + 40);
    *buf = 138543618;
    v41 = v25;
    v42 = 2114;
    v43 = v12;
    _os_log_impl(&dword_23193C000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
  }

  v26 = MEMORY[0x277CCA9B8];
  v27 = *MEMORY[0x277D646E8];
  v38 = *MEMORY[0x277CCA450];
  v39 = v12;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v29 = [v26 errorWithDomain:v27 code:8118 userInfo:v28];

  v30 = [MEMORY[0x277D64428] sharedDiag];
  [v30 trackAnomaly:@"[POLICY] ROLLBACK_UPDATE_APPLY" forReason:@"SoftwareUpdateAssetType is not supported with rollback" withResult:8118 withError:v29];

  v31 = [*(a1 + 40) msuControlQueue];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __43__SUCoreMSU__operationRollbackUpdateApply___block_invoke_1108;
  v36[3] = &unk_27892D478;
  v36[4] = *(a1 + 40);
  v18 = v29;
  v37 = v18;
  dispatch_async(v31, v36);

  v20 = v37;
LABEL_10:

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __43__SUCoreMSU__operationRollbackUpdateApply___block_invoke_1108(uint64_t a1)
{
  [*(a1 + 32) _reportRollbackFailed:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 setPerformingOperation:0];
}

uint64_t __43__SUCoreMSU__operationRollbackUpdateApply___block_invoke_1112(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277D64460] sharedLogger];
  v5 = [v4 oslog];

  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __43__SUCoreMSU__operationRollbackUpdateApply___block_invoke_1112_cold_1(a1, v2);
    }

    [*(a1 + 40) _reportRollbackApplyFailed:*(a1 + 32)];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) code];
    v8 = *(a1 + 32);
    v9 = v6;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_23193C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ MSU apply rollback completed successfully", &v13, 0xCu);
    }

    [*(a1 + 40) _reportRollbackApplySuccess];
    v9 = *(a1 + 40);
    v7 = 0;
    v8 = 0;
  }

  [v9 _trackMSUEnd:@"MSURollbackUpdateApply" withResult:v7 withError:v8];
  result = [*(a1 + 40) setPerformingOperation:0];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)loadBrainProgress:(id)progress error:(id)error
{
  progressCopy = progress;
  errorCopy = error;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SUCoreMSU_loadBrainProgress_error___block_invoke;
  block[3] = &unk_27892D340;
  v12 = errorCopy;
  v13 = progressCopy;
  selfCopy = self;
  v9 = progressCopy;
  v10 = errorCopy;
  dispatch_async(msuControlQueue, block);
}

void __37__SUCoreMSU_loadBrainProgress_error___block_invoke(id *a1)
{
  if (a1[4])
  {
    [a1[6] _reportBrainLoadFailed:?];
    [a1[6] _trackMSUEnd:@"loadUpdateBrainWithMAOptions" withResult:objc_msgSend(a1[4] withError:{"code"), a1[4]}];
    v2 = a1[6];

    [v2 setPerformingOperation:0];
  }

  else
  {
    v14 = [a1[5] safeStringForKey:*MEMORY[0x277D28998]];
    if ([v14 isEqualToString:*MEMORY[0x277D28990]])
    {
      v3 = a1[6];
      v4 = objc_alloc(MEMORY[0x277D64488]);
      LODWORD(v5) = -1.0;
      v6 = [v4 initWithPhase:*MEMORY[0x277D64838] isStalled:1 portionComplete:v5 remaining:-1.0];
      [v3 _reportBrainLoadStalled:v6];
    }

    else
    {
      v7 = [v14 isEqualToString:*MEMORY[0x277D28988]];
      v8 = a1[6];
      v9 = objc_alloc(MEMORY[0x277D64488]);
      v11 = *MEMORY[0x277D64838];
      if (v7)
      {
        LODWORD(v10) = 1.0;
        v12 = [v9 initWithPhase:v11 isStalled:0 portionComplete:v10 remaining:-1.0];
        [v8 _reportBrainLoaded:v12];

        [a1[6] _trackMSUEnd:@"loadUpdateBrainWithMAOptions" withResult:0 withError:0];
        [a1[6] setPerformingOperation:0];
      }

      else
      {
        LODWORD(v10) = -1.0;
        v13 = [v9 initWithPhase:v11 isStalled:0 portionComplete:v10 remaining:-1.0];
        [v8 _reportBrainLoadProgress:v13];
      }
    }
  }
}

- (int)prepareProgress:(__CFDictionary *)progress
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__SUCoreMSU_prepareProgress___block_invoke;
  block[3] = &unk_27892D570;
  block[4] = self;
  block[5] = &v8;
  block[6] = progress;
  dispatch_sync(msuControlQueue, block);

  LODWORD(progress) = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return progress;
}

void __29__SUCoreMSU_prepareProgress___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) cancelingPrepare])
  {
    v2 = [MEMORY[0x277D64460] sharedLogger];
    v3 = [v2 oslog];

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138543362;
      v17 = v4;
      _os_log_impl(&dword_23193C000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ requesting cancel (on return from prepare progress)", buf, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 2;
    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v15 = CFDictionaryGetValue(*(a1 + 48), *MEMORY[0x277D29430]);
    [v15 doubleValue];
    *&v6 = v6;
    v7 = fminf(fmaxf(*&v6 / 100.0, 0.0), 1.0);
    [*(a1 + 32) nextProgressThreshold];
    if (v7 > v8 && ([*(a1 + 32) prepareProgressFinal] & 1) == 0)
    {
      *&v9 = v7 + 0.01;
      if ((v7 + 0.01) >= 0.99)
      {
        if (v7 >= 0.99)
        {
          [*(a1 + 32) setPrepareProgressFinal:{1, v9}];
          if (v7 > 0.99)
          {
            v7 = 0.99;
          }
        }
      }

      else
      {
        [*(a1 + 32) setNextProgressThreshold:v9];
      }

      v10 = *(a1 + 32);
      v11 = objc_alloc(MEMORY[0x277D64488]);
      *&v12 = v7;
      v13 = [v11 initWithPhase:*MEMORY[0x277D64850] isStalled:0 portionComplete:v12 remaining:-1.0];
      [v10 _reportPrepareProgress:v13];
    }

    v14 = *MEMORY[0x277D85DE8];
  }
}

- (int)applyProgress:(__CFDictionary *)progress
{
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__SUCoreMSU_applyProgress___block_invoke;
  v7[3] = &unk_27892E5D0;
  v7[4] = self;
  v7[5] = progress;
  dispatch_sync(msuControlQueue, v7);

  return 0;
}

void __27__SUCoreMSU_applyProgress___block_invoke(uint64_t a1)
{
  value = 0;
  valuePtr = -1.0;
  if (CFDictionaryGetValueIfPresent(*(a1 + 40), *MEMORY[0x277D29430], &value))
  {
    v3 = value == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3 || (v4 = CFGetTypeID(value), v4 != CFNumberGetTypeID()) || (CFNumberGetValue(value, kCFNumberFloatType, &valuePtr), *&v2 = valuePtr, valuePtr < 0.0) || (v5 = fminf(valuePtr, 1.0), [*(a1 + 32) nextProgressThreshold], v5 <= *&v2) || (objc_msgSend(*(a1 + 32), "applyProgressFinal") & 1) != 0)
  {
    [*(a1 + 32) nextProgressThreshold];
    v5 = v6;
    v7 = 0;
    goto LABEL_10;
  }

  *&v2 = v5 + 0.01;
  if ((v5 + 0.01) < 0.99)
  {
    [*(a1 + 32) setNextProgressThreshold:v2];
LABEL_23:
    v7 = 1;
    goto LABEL_10;
  }

  if (v5 < 0.99)
  {
    goto LABEL_23;
  }

  v7 = 1;
  [*(a1 + 32) setApplyProgressFinal:{1, v2}];
  if (v5 > 0.99)
  {
    v5 = 0.99;
  }

LABEL_10:
  v8 = CFDictionaryGetValue(*(a1 + 40), *MEMORY[0x277D29428]);
  v9 = v8;
  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 == CFStringGetTypeID())
    {
      v9 = v9;
      v11 = [*(a1 + 32) applyProgressActionText];

      v12 = *(a1 + 32);
      if (!v11)
      {
LABEL_15:
        [v12 setApplyProgressActionText:v9];
LABEL_18:
        v15 = *(a1 + 32);
        v16 = objc_alloc(MEMORY[0x277D64488]);
        *&v17 = v5;
        v18 = [v16 initWithPhase:*MEMORY[0x277D64820] isStalled:0 portionComplete:v9 remaining:v17 actionText:-1.0];
        [v15 _reportApplyProgress:v18];

        goto LABEL_19;
      }

      v13 = [v12 applyProgressActionText];
      v14 = [v13 isEqualToString:v9];

      if ((v14 & 1) == 0)
      {
        v12 = *(a1 + 32);
        goto LABEL_15;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  if (v7)
  {
    goto LABEL_18;
  }

LABEL_19:
}

- (void)_reportBrainLoadProgress:(id)progress
{
  v19 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __38__SUCoreMSU__reportBrainLoadProgress___block_invoke;
    v13[3] = &unk_27892D478;
    v13[4] = self;
    v14 = progressCopy;
    dispatch_async(clientDelegateCallbackQueue, v13);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      summary = [progressCopy summary];
      *buf = 138543618;
      selfCopy = self;
      v17 = 2114;
      v18 = summary;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuBrainLoadProgress:); so not reporting progress=%{public}@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __38__SUCoreMSU__reportBrainLoadProgress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuBrainLoadProgress:*(a1 + 40)];
}

- (void)_reportBrainLoadStalled:(id)stalled
{
  v19 = *MEMORY[0x277D85DE8];
  stalledCopy = stalled;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __37__SUCoreMSU__reportBrainLoadStalled___block_invoke;
    v13[3] = &unk_27892D478;
    v13[4] = self;
    v14 = stalledCopy;
    dispatch_async(clientDelegateCallbackQueue, v13);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      summary = [stalledCopy summary];
      *buf = 138543618;
      selfCopy = self;
      v17 = 2114;
      v18 = summary;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuBrainLoadStalled:); so not reporting stalled with progress=%{public}@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __37__SUCoreMSU__reportBrainLoadStalled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuBrainLoadStalled:*(a1 + 40)];
}

- (void)_reportBrainLoaded:(id)loaded
{
  v21 = *MEMORY[0x277D85DE8];
  loadedCopy = loaded;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  loadBrainTransaction = [(SUCoreMSU *)self loadBrainTransaction];
  [(SUCoreMSU *)self setLoadBrainTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__SUCoreMSU__reportBrainLoaded___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v15 = loadedCopy;
    v16 = loadBrainTransaction;
    dispatch_async(clientDelegateCallbackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      summary = [loadedCopy summary];
      *buf = 138543618;
      selfCopy = self;
      v19 = 2114;
      v20 = summary;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuBrainLoaded:); so not reporting brain loaded with progress=%{public}@", buf, 0x16u);
    }

    [MEMORY[0x277D643F8] endTransaction:loadBrainTransaction withName:@"msu.LoadBrain"];
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __32__SUCoreMSU__reportBrainLoaded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuBrainLoaded:*(a1 + 40)];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 48);

  return [v3 endTransaction:v4 withName:@"msu.LoadBrain"];
}

- (void)_reportBrainLoadFailed:(id)failed
{
  v20 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  loadBrainTransaction = [(SUCoreMSU *)self loadBrainTransaction];
  [(SUCoreMSU *)self setLoadBrainTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__SUCoreMSU__reportBrainLoadFailed___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v14 = failedCopy;
    v15 = loadBrainTransaction;
    dispatch_async(clientDelegateCallbackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v18 = 2114;
      v19 = failedCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuBrainLoadFailed:); so not reporting brain load failed error=%{public}@", buf, 0x16u);
    }

    [MEMORY[0x277D643F8] endTransaction:loadBrainTransaction withName:@"msu.LoadBrain"];
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __36__SUCoreMSU__reportBrainLoadFailed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuBrainLoadFailed:*(a1 + 40)];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 48);

  return [v3 endTransaction:v4 withName:@"msu.LoadBrain"];
}

- (void)_reportSUDownloadPreflighted
{
  v15 = *MEMORY[0x277D85DE8];
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  preflightDownloadSUTransaction = [(SUCoreMSU *)self preflightDownloadSUTransaction];
  [(SUCoreMSU *)self setPreflightDownloadSUTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__SUCoreMSU__reportSUDownloadPreflighted__block_invoke;
    v11[3] = &unk_27892D478;
    v11[4] = self;
    v12 = preflightDownloadSUTransaction;
    dispatch_async(clientDelegateCallbackQueue, v11);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuSUDownloadPreflighted); so not reporting SU download preflighted", buf, 0xCu);
    }

    [MEMORY[0x277D643F8] endTransaction:preflightDownloadSUTransaction withName:@"msu.PreflightDownloadSU"];
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __41__SUCoreMSU__reportSUDownloadPreflighted__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuSUDownloadPreflighted];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 40);

  return [v3 endTransaction:v4 withName:@"msu.PreflightDownloadSU"];
}

- (void)_reportSUDownloadPreflightFailed:(id)failed
{
  v20 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  preflightDownloadSUTransaction = [(SUCoreMSU *)self preflightDownloadSUTransaction];
  [(SUCoreMSU *)self setPreflightDownloadSUTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__SUCoreMSU__reportSUDownloadPreflightFailed___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v14 = failedCopy;
    v15 = preflightDownloadSUTransaction;
    dispatch_async(clientDelegateCallbackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v18 = 2114;
      v19 = failedCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuSUDownloadPreflightFailed:); so not reporting SU download preflight failed error=%{public}@", buf, 0x16u);
    }

    [MEMORY[0x277D643F8] endTransaction:preflightDownloadSUTransaction withName:@"msu.PreflightDownloadSU"];
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __46__SUCoreMSU__reportSUDownloadPreflightFailed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuSUDownloadPreflightFailed:*(a1 + 40)];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 48);

  return [v3 endTransaction:v4 withName:@"msu.PreflightDownloadSU"];
}

- (void)_reportPersonalizePreflighted
{
  v15 = *MEMORY[0x277D85DE8];
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  preflightPersonalizeTransaction = [(SUCoreMSU *)self preflightPersonalizeTransaction];
  [(SUCoreMSU *)self setPreflightPersonalizeTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__SUCoreMSU__reportPersonalizePreflighted__block_invoke;
    v11[3] = &unk_27892D478;
    v11[4] = self;
    v12 = preflightPersonalizeTransaction;
    dispatch_async(clientDelegateCallbackQueue, v11);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuPersonalizePreflighted); so not reporting personalization preflighted", buf, 0xCu);
    }

    [MEMORY[0x277D643F8] endTransaction:preflightPersonalizeTransaction withName:@"msu.PreflightPersonalize"];
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __42__SUCoreMSU__reportPersonalizePreflighted__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuPersonalizePreflighted];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 40);

  return [v3 endTransaction:v4 withName:@"msu.PreflightPersonalize"];
}

- (void)_reportPersonalizePreflightFailed:(id)failed
{
  v20 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  preflightPersonalizeTransaction = [(SUCoreMSU *)self preflightPersonalizeTransaction];
  [(SUCoreMSU *)self setPreflightPersonalizeTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__SUCoreMSU__reportPersonalizePreflightFailed___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v14 = failedCopy;
    v15 = preflightPersonalizeTransaction;
    dispatch_async(clientDelegateCallbackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v18 = 2114;
      v19 = failedCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuPersonalizePreflightFailed:); so not reporting personalization preflight failed error=%{public}@", buf, 0x16u);
    }

    [MEMORY[0x277D643F8] endTransaction:preflightPersonalizeTransaction withName:@"msu.PreflightDownloadSU"];
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __47__SUCoreMSU__reportPersonalizePreflightFailed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuPersonalizePreflightFailed:*(a1 + 40)];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 48);

  return [v3 endTransaction:v4 withName:@"msu.PreflightDownloadSU"];
}

- (void)_reportFDRRecoveryPreflighted
{
  v15 = *MEMORY[0x277D85DE8];
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  preflightFDRRecoveryTransaction = [(SUCoreMSU *)self preflightFDRRecoveryTransaction];
  [(SUCoreMSU *)self setPreflightFDRRecoveryTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__SUCoreMSU__reportFDRRecoveryPreflighted__block_invoke;
    v11[3] = &unk_27892D478;
    v11[4] = self;
    v12 = preflightFDRRecoveryTransaction;
    dispatch_async(clientDelegateCallbackQueue, v11);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuFDRRecoveryPreflighted); so not reporting FDRRecovery preflighted", buf, 0xCu);
    }

    [MEMORY[0x277D643F8] endTransaction:preflightFDRRecoveryTransaction withName:@"msu.PreflightFDRRecovery"];
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __42__SUCoreMSU__reportFDRRecoveryPreflighted__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuFDRRecoveryPreflighted];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 40);

  return [v3 endTransaction:v4 withName:@"msu.PreflightFDRRecovery"];
}

- (void)_reportFDRRecoveryPreflightFailed:(id)failed
{
  v20 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  preflightFDRRecoveryTransaction = [(SUCoreMSU *)self preflightFDRRecoveryTransaction];
  [(SUCoreMSU *)self setPreflightFDRRecoveryTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__SUCoreMSU__reportFDRRecoveryPreflightFailed___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v14 = failedCopy;
    v15 = preflightFDRRecoveryTransaction;
    dispatch_async(clientDelegateCallbackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v18 = 2114;
      v19 = failedCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuFDRRecoveryPreflightFailed:); so not reporting FDRRecovery preflight failed error=%{public}@", buf, 0x16u);
    }

    [MEMORY[0x277D643F8] endTransaction:preflightFDRRecoveryTransaction withName:@"msu.PreflightFDRRecovery"];
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __47__SUCoreMSU__reportFDRRecoveryPreflightFailed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuFDRRecoveryPreflightFailed:*(a1 + 40)];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 48);

  return [v3 endTransaction:v4 withName:@"msu.PreflightFDRRecovery"];
}

- (void)_reportWakeupPreflighted
{
  v15 = *MEMORY[0x277D85DE8];
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  preflightWakeupTransaction = [(SUCoreMSU *)self preflightWakeupTransaction];
  [(SUCoreMSU *)self setPreflightWakeupTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __37__SUCoreMSU__reportWakeupPreflighted__block_invoke;
    v11[3] = &unk_27892D478;
    v11[4] = self;
    v12 = preflightWakeupTransaction;
    dispatch_async(clientDelegateCallbackQueue, v11);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuWakeupPreflighted); so not reporting wakeup preflighted", buf, 0xCu);
    }

    [MEMORY[0x277D643F8] endTransaction:preflightWakeupTransaction withName:@"msu.PreflightWakeup"];
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __37__SUCoreMSU__reportWakeupPreflighted__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuWakeupPreflighted];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 40);

  return [v3 endTransaction:v4 withName:@"msu.PreflightWakeup"];
}

- (void)_reportWakeupPreflightFailed:(id)failed
{
  v20 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  preflightWakeupTransaction = [(SUCoreMSU *)self preflightWakeupTransaction];
  [(SUCoreMSU *)self setPreflightWakeupTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__SUCoreMSU__reportWakeupPreflightFailed___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v14 = failedCopy;
    v15 = preflightWakeupTransaction;
    dispatch_async(clientDelegateCallbackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v18 = 2114;
      v19 = failedCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuWakeupPreflightFailed:); so not reporting wakeup preflight failed error=%{public}@", buf, 0x16u);
    }

    [MEMORY[0x277D643F8] endTransaction:preflightWakeupTransaction withName:@"msu.PreflightWakeup"];
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __42__SUCoreMSU__reportWakeupPreflightFailed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuWakeupPreflightFailed:*(a1 + 40)];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 48);

  return [v3 endTransaction:v4 withName:@"msu.PreflightWakeup"];
}

- (void)_reportPrerequisiteCheckPreflighted
{
  v15 = *MEMORY[0x277D85DE8];
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  preflightPrerequisiteCheckTransaction = [(SUCoreMSU *)self preflightPrerequisiteCheckTransaction];
  [(SUCoreMSU *)self setPreflightPrerequisiteCheckTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48__SUCoreMSU__reportPrerequisiteCheckPreflighted__block_invoke;
    v11[3] = &unk_27892D478;
    v11[4] = self;
    v12 = preflightPrerequisiteCheckTransaction;
    dispatch_async(clientDelegateCallbackQueue, v11);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuPrerequisiteCheckPreflighted); so not reporting prerequisite check preflighted", buf, 0xCu);
    }

    [MEMORY[0x277D643F8] endTransaction:preflightPrerequisiteCheckTransaction withName:@"msu.PreflightPrerequisiteCheck"];
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __48__SUCoreMSU__reportPrerequisiteCheckPreflighted__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuPrerequisiteCheckPreflighted];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 40);

  return [v3 endTransaction:v4 withName:@"msu.PreflightPrerequisiteCheck"];
}

- (void)_reportPrerequisiteCheckPreflightFailed:(id)failed
{
  v20 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  preflightPrerequisiteCheckTransaction = [(SUCoreMSU *)self preflightPrerequisiteCheckTransaction];
  [(SUCoreMSU *)self setPreflightPrerequisiteCheckTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__SUCoreMSU__reportPrerequisiteCheckPreflightFailed___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v14 = failedCopy;
    v15 = preflightPrerequisiteCheckTransaction;
    dispatch_async(clientDelegateCallbackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v18 = 2114;
      v19 = failedCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuPrerequisiteCheckPreflightFailed:); so not reporting prerequisite check preflight failed error=%{public}@", buf, 0x16u);
    }

    [MEMORY[0x277D643F8] endTransaction:preflightPrerequisiteCheckTransaction withName:@"msu.PreflightPrerequisiteCheck"];
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __53__SUCoreMSU__reportPrerequisiteCheckPreflightFailed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuPrerequisiteCheckPreflightFailed:*(a1 + 40)];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 48);

  return [v3 endTransaction:v4 withName:@"msu.PreflightPrerequisiteCheck"];
}

- (void)_reportPrepared:(id)prepared
{
  v21 = *MEMORY[0x277D85DE8];
  preparedCopy = prepared;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  prepareUpdateTransaction = [(SUCoreMSU *)self prepareUpdateTransaction];
  [(SUCoreMSU *)self setPrepareUpdateTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__SUCoreMSU__reportPrepared___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v15 = preparedCopy;
    v16 = prepareUpdateTransaction;
    dispatch_async(clientDelegateCallbackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      summary = [preparedCopy summary];
      *buf = 138543618;
      selfCopy = self;
      v19 = 2114;
      v20 = summary;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuPrepared:); so not reporting prepared with progress=%{public}@", buf, 0x16u);
    }

    [MEMORY[0x277D643F8] endTransaction:prepareUpdateTransaction withName:@"msu.PrepareUpdate"];
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __29__SUCoreMSU__reportPrepared___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuPrepared:*(a1 + 40)];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 48);

  return [v3 endTransaction:v4 withName:@"msu.PrepareUpdate"];
}

- (void)_reportPrepareProgress:(id)progress
{
  v19 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __36__SUCoreMSU__reportPrepareProgress___block_invoke;
    v13[3] = &unk_27892D478;
    v13[4] = self;
    v14 = progressCopy;
    dispatch_async(clientDelegateCallbackQueue, v13);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      summary = [progressCopy summary];
      *buf = 138543618;
      selfCopy = self;
      v17 = 2114;
      v18 = summary;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuPrepareProgress:); so not reporting prepare progress=%{public}@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __36__SUCoreMSU__reportPrepareProgress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuPrepareProgress:*(a1 + 40)];
}

- (void)_reportApplyProgress:(id)progress
{
  v19 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __34__SUCoreMSU__reportApplyProgress___block_invoke;
    v13[3] = &unk_27892D478;
    v13[4] = self;
    v14 = progressCopy;
    dispatch_async(clientDelegateCallbackQueue, v13);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      summary = [progressCopy summary];
      *buf = 138543618;
      selfCopy = self;
      v17 = 2114;
      v18 = summary;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuApplyProgress:); so not reporting apply progress=%{public}@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __34__SUCoreMSU__reportApplyProgress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuApplyProgress:*(a1 + 40)];
}

- (void)_reportPrepareFailed:(id)failed
{
  v20 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  prepareUpdateTransaction = [(SUCoreMSU *)self prepareUpdateTransaction];
  [(SUCoreMSU *)self setPrepareUpdateTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__SUCoreMSU__reportPrepareFailed___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v14 = failedCopy;
    v15 = prepareUpdateTransaction;
    dispatch_async(clientDelegateCallbackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v18 = 2114;
      v19 = failedCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuPrepareFailed:); so not reporting prepare failed error=%{public}@", buf, 0x16u);
    }

    [MEMORY[0x277D643F8] endTransaction:prepareUpdateTransaction withName:@"msu.PrepareUpdate"];
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __34__SUCoreMSU__reportPrepareFailed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuPrepareFailed:*(a1 + 40)];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 48);

  return [v3 endTransaction:v4 withName:@"msu.PrepareUpdate"];
}

- (void)_reportSuspended
{
  v15 = *MEMORY[0x277D85DE8];
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  suspendUpdateTransaction = [(SUCoreMSU *)self suspendUpdateTransaction];
  [(SUCoreMSU *)self setSuspendUpdateTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __29__SUCoreMSU__reportSuspended__block_invoke;
    v11[3] = &unk_27892D478;
    v11[4] = self;
    v12 = suspendUpdateTransaction;
    dispatch_async(clientDelegateCallbackQueue, v11);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuSuspended); so not reporting suspended", buf, 0xCu);
    }

    [MEMORY[0x277D643F8] endTransaction:suspendUpdateTransaction withName:@"msu.SuspendUpdate"];
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __29__SUCoreMSU__reportSuspended__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuSuspended];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 40);

  return [v3 endTransaction:v4 withName:@"msu.SuspendUpdate"];
}

- (void)_reportSuspendFailed:(id)failed
{
  v20 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  suspendUpdateTransaction = [(SUCoreMSU *)self suspendUpdateTransaction];
  [(SUCoreMSU *)self setSuspendUpdateTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__SUCoreMSU__reportSuspendFailed___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v14 = failedCopy;
    v15 = suspendUpdateTransaction;
    dispatch_async(clientDelegateCallbackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v18 = 2114;
      v19 = failedCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuSuspendFailed:); so not reporting suspend failed error=%{public}@", buf, 0x16u);
    }

    [MEMORY[0x277D643F8] endTransaction:suspendUpdateTransaction withName:@"msu.SuspendUpdate"];
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __34__SUCoreMSU__reportSuspendFailed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuSuspendFailed:*(a1 + 40)];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 48);

  return [v3 endTransaction:v4 withName:@"msu.SuspendUpdate"];
}

- (void)_reportResumed
{
  v15 = *MEMORY[0x277D85DE8];
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  resumeUpdateTransaction = [(SUCoreMSU *)self resumeUpdateTransaction];
  [(SUCoreMSU *)self setResumeUpdateTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __27__SUCoreMSU__reportResumed__block_invoke;
    v11[3] = &unk_27892D478;
    v11[4] = self;
    v12 = resumeUpdateTransaction;
    dispatch_async(clientDelegateCallbackQueue, v11);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuResumed); so not reporting resumed", buf, 0xCu);
    }

    [MEMORY[0x277D643F8] endTransaction:resumeUpdateTransaction withName:@"msu.ResumeUpdate"];
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __27__SUCoreMSU__reportResumed__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuResumed];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 40);

  return [v3 endTransaction:v4 withName:@"msu.ResumeUpdate"];
}

- (void)_reportResumeFailed:(id)failed
{
  v20 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  resumeUpdateTransaction = [(SUCoreMSU *)self resumeUpdateTransaction];
  [(SUCoreMSU *)self setResumeUpdateTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__SUCoreMSU__reportResumeFailed___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v14 = failedCopy;
    v15 = resumeUpdateTransaction;
    dispatch_async(clientDelegateCallbackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v18 = 2114;
      v19 = failedCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuResumeFailed:); so not reporting resume failed error=%{public}@", buf, 0x16u);
    }

    [MEMORY[0x277D643F8] endTransaction:resumeUpdateTransaction withName:@"msu.ResumeUpdate"];
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __33__SUCoreMSU__reportResumeFailed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuResumeFailed:*(a1 + 40)];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 48);

  return [v3 endTransaction:v4 withName:@"msu.ResumeUpdate"];
}

- (void)_reportApplied
{
  v15 = *MEMORY[0x277D85DE8];
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  applyUpdateTransaction = [(SUCoreMSU *)self applyUpdateTransaction];
  [(SUCoreMSU *)self setApplyUpdateTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __27__SUCoreMSU__reportApplied__block_invoke;
    v11[3] = &unk_27892D478;
    v11[4] = self;
    v12 = applyUpdateTransaction;
    dispatch_async(clientDelegateCallbackQueue, v11);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuApplied); so not reporting applied", buf, 0xCu);
    }

    [MEMORY[0x277D643F8] endTransaction:applyUpdateTransaction withName:@"msu.ApplyUpdate"];
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __27__SUCoreMSU__reportApplied__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuApplied];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 40);

  return [v3 endTransaction:v4 withName:@"msu.ApplyUpdate"];
}

- (void)_reportApplyFailed:(id)failed
{
  v20 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  applyUpdateTransaction = [(SUCoreMSU *)self applyUpdateTransaction];
  [(SUCoreMSU *)self setApplyUpdateTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__SUCoreMSU__reportApplyFailed___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v14 = failedCopy;
    v15 = applyUpdateTransaction;
    dispatch_async(clientDelegateCallbackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v18 = 2114;
      v19 = failedCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuApplyFailed:); so not reporting apply failed error=%{public}@", buf, 0x16u);
    }

    [MEMORY[0x277D643F8] endTransaction:applyUpdateTransaction withName:@"msu.ApplyUpdate"];
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __32__SUCoreMSU__reportApplyFailed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuApplyFailed:*(a1 + 40)];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 48);

  return [v3 endTransaction:v4 withName:@"msu.ApplyUpdate"];
}

- (void)_reportRollbackPrepareSuccess
{
  v15 = *MEMORY[0x277D85DE8];
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  rollbackUpdateTransaction = [(SUCoreMSU *)self rollbackUpdateTransaction];
  [(SUCoreMSU *)self setRollbackUpdateTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__SUCoreMSU__reportRollbackPrepareSuccess__block_invoke;
    v11[3] = &unk_27892D478;
    v11[4] = self;
    v12 = rollbackUpdateTransaction;
    dispatch_async(clientDelegateCallbackQueue, v11);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuRollbackPrepareSuccess); so not reporting msuRollbackPrepareSuccess", buf, 0xCu);
    }

    [MEMORY[0x277D643F8] endTransaction:rollbackUpdateTransaction withName:@"msu.RollbackUpdate"];
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __42__SUCoreMSU__reportRollbackPrepareSuccess__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuRollbackPrepareSuccess];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 40);

  return [v3 endTransaction:v4 withName:@"msu.RollbackUpdate"];
}

- (void)_reportRollbackSuspendSuccess
{
  v15 = *MEMORY[0x277D85DE8];
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  rollbackUpdateTransaction = [(SUCoreMSU *)self rollbackUpdateTransaction];
  [(SUCoreMSU *)self setRollbackUpdateTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__SUCoreMSU__reportRollbackSuspendSuccess__block_invoke;
    v11[3] = &unk_27892D478;
    v11[4] = self;
    v12 = rollbackUpdateTransaction;
    dispatch_async(clientDelegateCallbackQueue, v11);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuRollbackSuspendSuccess); so not reporting msuRollbackSuspendSuccess", buf, 0xCu);
    }

    [MEMORY[0x277D643F8] endTransaction:rollbackUpdateTransaction withName:@"msu.RollbackUpdate"];
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __42__SUCoreMSU__reportRollbackSuspendSuccess__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuRollbackSuspendSuccess];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 40);

  return [v3 endTransaction:v4 withName:@"msu.RollbackUpdate"];
}

- (void)_reportRollbackResumeSuccess
{
  v15 = *MEMORY[0x277D85DE8];
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  rollbackUpdateTransaction = [(SUCoreMSU *)self rollbackUpdateTransaction];
  [(SUCoreMSU *)self setRollbackUpdateTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__SUCoreMSU__reportRollbackResumeSuccess__block_invoke;
    v11[3] = &unk_27892D478;
    v11[4] = self;
    v12 = rollbackUpdateTransaction;
    dispatch_async(clientDelegateCallbackQueue, v11);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuRollbackResumeSuccess); so not reporting msuRollbackResumeSuccess", buf, 0xCu);
    }

    [MEMORY[0x277D643F8] endTransaction:rollbackUpdateTransaction withName:@"msu.RollbackUpdate"];
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __41__SUCoreMSU__reportRollbackResumeSuccess__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuRollbackResumeSuccess];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 40);

  return [v3 endTransaction:v4 withName:@"msu.RollbackUpdate"];
}

- (void)_reportRollbackApplySuccess
{
  v15 = *MEMORY[0x277D85DE8];
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  rollbackUpdateTransaction = [(SUCoreMSU *)self rollbackUpdateTransaction];
  [(SUCoreMSU *)self setRollbackUpdateTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __40__SUCoreMSU__reportRollbackApplySuccess__block_invoke;
    v11[3] = &unk_27892D478;
    v11[4] = self;
    v12 = rollbackUpdateTransaction;
    dispatch_async(clientDelegateCallbackQueue, v11);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuRollbackApplySuccess); so not reporting msuRollbackApplySuccess", buf, 0xCu);
    }

    [MEMORY[0x277D643F8] endTransaction:rollbackUpdateTransaction withName:@"msu.RollbackUpdate"];
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __40__SUCoreMSU__reportRollbackApplySuccess__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuRollbackApplySuccess];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 40);

  return [v3 endTransaction:v4 withName:@"msu.RollbackUpdate"];
}

- (void)_reportRollbackApplyFailed:(id)failed
{
  v20 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  rollbackUpdateTransaction = [(SUCoreMSU *)self rollbackUpdateTransaction];
  [(SUCoreMSU *)self setRollbackUpdateTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__SUCoreMSU__reportRollbackApplyFailed___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v14 = failedCopy;
    v15 = rollbackUpdateTransaction;
    dispatch_async(clientDelegateCallbackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v18 = 2114;
      v19 = failedCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuRollbackApplyFailed:); so not reporting apply failed error=%{public}@", buf, 0x16u);
    }

    [MEMORY[0x277D643F8] endTransaction:rollbackUpdateTransaction withName:@"msu.RollbackUpdate"];
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __40__SUCoreMSU__reportRollbackApplyFailed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuRollbackApplyFailed:*(a1 + 40)];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 48);

  return [v3 endTransaction:v4 withName:@"msu.RollbackUpdate"];
}

- (void)_reportRollbackFailed:(id)failed
{
  v20 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  rollbackUpdateTransaction = [(SUCoreMSU *)self rollbackUpdateTransaction];
  [(SUCoreMSU *)self setRollbackUpdateTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__SUCoreMSU__reportRollbackFailed___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v14 = failedCopy;
    v15 = rollbackUpdateTransaction;
    dispatch_async(clientDelegateCallbackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v18 = 2114;
      v19 = failedCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuRollbackFailed:); so not reporting rollback failed error=%{public}@", buf, 0x16u);
    }

    [MEMORY[0x277D643F8] endTransaction:rollbackUpdateTransaction withName:@"msu.RollbackUpdate"];
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __35__SUCoreMSU__reportRollbackFailed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuRollbackFailed:*(a1 + 40)];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 48);

  return [v3 endTransaction:v4 withName:@"msu.RollbackUpdate"];
}

- (void)_reportRemoved
{
  v15 = *MEMORY[0x277D85DE8];
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  removePreparedTransaction = [(SUCoreMSU *)self removePreparedTransaction];
  [(SUCoreMSU *)self setRemovePreparedTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __27__SUCoreMSU__reportRemoved__block_invoke;
    v11[3] = &unk_27892D478;
    v11[4] = self;
    v12 = removePreparedTransaction;
    dispatch_async(clientDelegateCallbackQueue, v11);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuRemoved); so not reporting removed", buf, 0xCu);
    }

    [MEMORY[0x277D643F8] endTransaction:removePreparedTransaction withName:@"msu.RemovePrepared"];
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __27__SUCoreMSU__reportRemoved__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuRemoved];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 40);

  return [v3 endTransaction:v4 withName:@"msu.RemovePrepared"];
}

- (void)_reportRemoveFailed:(id)failed
{
  v20 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  msuControlQueue = [(SUCoreMSU *)self msuControlQueue];
  dispatch_assert_queue_V2(msuControlQueue);

  removePreparedTransaction = [(SUCoreMSU *)self removePreparedTransaction];
  [(SUCoreMSU *)self setRemovePreparedTransaction:0];
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__SUCoreMSU__reportRemoveFailed___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v14 = failedCopy;
    v15 = removePreparedTransaction;
    dispatch_async(clientDelegateCallbackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v18 = 2114;
      v19 = failedCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuRemoveFailed:); so not reporting remove failed error=%{public}@", buf, 0x16u);
    }

    [MEMORY[0x277D643F8] endTransaction:removePreparedTransaction withName:@"msu.RemovePrepared"];
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __33__SUCoreMSU__reportRemoveFailed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuRemoveFailed:*(a1 + 40)];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 48);

  return [v3 endTransaction:v4 withName:@"msu.RemovePrepared"];
}

- (void)_reportAnomaly:(id)anomaly
{
  v17 = *MEMORY[0x277D85DE8];
  anomalyCopy = anomaly;
  msuDelegate = [(SUCoreMSU *)self msuDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    clientDelegateCallbackQueue = [(SUCoreMSU *)self clientDelegateCallbackQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __28__SUCoreMSU__reportAnomaly___block_invoke;
    v11[3] = &unk_27892D478;
    v11[4] = self;
    v12 = anomalyCopy;
    dispatch_async(clientDelegateCallbackQueue, v11);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v15 = 2114;
      v16 = anomalyCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(msuAnomaly:); so not reporting anomaly error=%{public}@", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __28__SUCoreMSU__reportAnomaly___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) msuDelegate];
  [v2 msuAnomaly:*(a1 + 40)];
}

- (void)_trackMSUBegin:(id)begin
{
  v3 = MEMORY[0x277D64428];
  beginCopy = begin;
  sharedDiag = [v3 sharedDiag];
  [sharedDiag trackBegin:beginCopy atLevel:1 forModule:@"msu"];
}

- (void)_trackMSUEnd:(id)end withResult:(int64_t)result withError:(id)error
{
  v7 = MEMORY[0x277D64428];
  errorCopy = error;
  endCopy = end;
  sharedDiag = [v7 sharedDiag];
  [sharedDiag trackEnd:endCopy atLevel:1 forModule:@"msu" withResult:result withError:errorCopy];
}

- (void)_trackMSUOptions:(id)options optionsName:(id)name withMSUOptions:(id)uOptions
{
  v59 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  nameCopy = name;
  uOptionsCopy = uOptions;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v40 = uOptionsCopy;
  v10 = [uOptionsCopy safeDescriptionWithName:nameCopy maxNestedLevel:0 withMaxValueLength:64 providingSubstitutionMap:v9];
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy2 = self;
    v55 = 2114;
    v56 = optionsCopy;
    v57 = 2114;
    v58 = v10;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ | %{public}@ | %{public}@", buf, 0x20u);
  }

  v37 = v10;

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v48;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v48 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v47 + 1) + 8 * i);
        mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
        oslog2 = [mEMORY[0x277D64460]2 oslog];

        if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy2 = v18;
          _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v15);
  }

  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = [v40 safeSubDescriptionAtNestedLevel:1 instanceAtLevel:0 withMaxValueLength:96 providingSubstitutionMap:v21];
  if (v22)
  {
    v23 = v22;
    v24 = 0;
    do
    {
      v42 = v24;
      mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
      oslog3 = [mEMORY[0x277D64460]3 oslog];

      if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        selfCopy2 = self;
        v55 = 2114;
        v56 = optionsCopy;
        v57 = 2114;
        v58 = v23;
        _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "%{public}@ | %{public}@ | %{public}@", buf, 0x20u);
      }

      v41 = v23;

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v27 = v21;
      v28 = [v27 countByEnumeratingWithState:&v43 objects:v51 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v44;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v44 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v43 + 1) + 8 * j);
            mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
            oslog4 = [mEMORY[0x277D64460]4 oslog];

            if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              selfCopy2 = v32;
              _os_log_impl(&dword_23193C000, oslog4, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v43 objects:v51 count:16];
        }

        while (v29);
      }

      v24 = v42 + 1;
      v21 = objc_alloc_init(MEMORY[0x277CBEB18]);

      v35 = [v40 safeSubDescriptionAtNestedLevel:1 instanceAtLevel:v42 + 1 withMaxValueLength:96 providingSubstitutionMap:v21];

      if (!v35)
      {
        break;
      }

      v23 = v35;
    }

    while (v42 < 5);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_trackMSUAnomaly:(id)anomaly result:(int64_t)result description:(id)description underlying:(id)underlying
{
  v10 = MEMORY[0x277D643F8];
  underlyingCopy = underlying;
  descriptionCopy = description;
  anomalyCopy = anomaly;
  sharedCore = [v10 sharedCore];
  v18 = [sharedCore buildError:result underlying:underlyingCopy description:descriptionCopy];

  mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
  anomalyCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"[MSU] %@", anomalyCopy];

  descriptionCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ %@", self, descriptionCopy];
  [mEMORY[0x277D64428] trackAnomaly:anomalyCopy forReason:descriptionCopy withResult:result withError:v18];

  [(SUCoreMSU *)self _reportAnomaly:v18];
}

- (id)msuDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_msuDelegate);

  return WeakRetained;
}

- (void)_newMSUOptionsUsingPolicy:(void *)a1 descriptor:(NSObject *)a2 baseOptions:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 updateBrainLocationOverride];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_23193C000, a2, OS_LOG_TYPE_ERROR, "[NEW_MSU_OPTIONS] WARNING WARNING WARNING: Setting update brain location override: %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __37__SUCoreMSU__operationPrepareUpdate___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1(&dword_23193C000, a2, a3, "%{public}@ MSU prepare completed with error (not updating msuHandle): %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __36__SUCoreMSU__operationResumeUpdate___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1(&dword_23193C000, v2, v3, "%{public}@ MSU resume failed to complete with error (not updating msuHandle): %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __45__SUCoreMSU__operationRollbackUpdatePrepare___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1(&dword_23193C000, v2, v3, "%{public}@ MSU rollback completed with error (not updating msuHandle): %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __45__SUCoreMSU__operationRollbackUpdateSuspend___block_invoke_1093_cold_1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1(&dword_23193C000, v2, v3, "%{public}@ MSU suspend rollback completed with error (not updating msuHandle): %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __44__SUCoreMSU__operationRollbackUpdateResume___block_invoke_1101_cold_1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1(&dword_23193C000, v2, v3, "%{public}@ MSU resume rollback completed with error (not updating msuHandle): %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __43__SUCoreMSU__operationRollbackUpdateApply___block_invoke_1112_cold_1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1(&dword_23193C000, v2, v3, "%{public}@ MSU apply rollback completed with error: %@");
  v4 = *MEMORY[0x277D85DE8];
}

@end