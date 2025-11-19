@interface MADAutoAssetJob
- (BOOL)_commitPrePersonalized:(id)a3 error:(id *)a4;
- (BOOL)anyJobInterestedInContent;
- (BOOL)buildPotentialDescriptors:(id)a3 fromLookupResults:(id)a4 buildingPatchDescriptors:(id)a5 andFullDescriptors:(id)a6;
- (BOOL)isAtomicEntry:(id)a3 alreadyInAtomicEntries:(id)a4;
- (BOOL)isFoundAlreadyOnFilesystem:(BOOL *)a3;
- (BOOL)isMorePreferredFormat:(id)a3 comparedTo:(id)a4;
- (BOOL)isSetFoundAlreadyOnFilesystem:(id)a3 justPromotedAnyDescriptor:(BOOL *)a4;
- (BOOL)placeNextSetAssetDescriptorToDownload:(id)a3 restrictToFull:(BOOL)a4 error:(id *)a5;
- (BOOL)remainingSetDescriptorToBeDownloaded;
- (BOOL)wasAssetSetSpecifierRequested:(id)a3;
- (id)_baseAnalyticsData:(id)a3;
- (id)_longSummary;
- (id)_newSelectorForCachedAssetCatalog:(id)a3;
- (id)_summary;
- (id)_updateLatestSummary;
- (id)assetSetEntryForAssetMetadata:(id)a3;
- (id)autoAssetSetAssetType;
- (id)clientName;
- (id)currentJobInformation:(id *)a3;
- (id)decideFollowupBoost:(id)a3 forJobEvent:(id)a4 boostEvent:(id)a5 noBoostEvent:(id)a6;
- (id)decideFollowupMoreAssetsToDownload:(id)a3 withEventInfo:(id)a4;
- (id)getCurrentJobTask;
- (id)initForInstance:(id)a3 orForSelector:(id)a4 orForDescriptor:(id)a5 orForSetInstance:(id)a6 withLifetimeOSTransaction:(id)a7 withSetDesire:(id)a8 withSchedulerSetPolicy:(id)a9 withStagerSetPolicy:(id)a10 usingSetConfiguration:(id)a11 usingSetDescriptor:(id)a12 withBaseForPatchDescriptor:(id)a13 withAutoAssetUUID:(id)a14 downloadingUserInitiated:(BOOL)a15 asStagerJob:(BOOL)a16 usingCachedAutoAssetCatalog:(id)a17;
- (id)initForSelector:(id)a3 withLifetimeOSTransaction:(id)a4 withAutoAssetUUID:(id)a5 asStagerJob:(BOOL)a6 withStagerSetPolicy:(id)a7 usingCachedAutoAssetCatalog:(id)a8 usingBaseForPatching:(id)a9;
- (id)initForSetConfiguration:(id)a3 withLifetimeOSTransaction:(id)a4 withAutoAssetUUID:(id)a5 asStagerJob:(BOOL)a6 withStagerSetPolicy:(id)a7;
- (id)installedOnFilesystemWithVersion:(id)a3 fromLocation:(id)a4;
- (id)latestInstalledOnFilesystem;
- (id)mostSpecificSelectorToReport;
- (id)newAssetDownloadOptions;
- (id)newAtomicInstancesDownloadedForDescriptor:(id)a3;
- (id)newCatalogDownloadOptions;
- (id)newCurrentStatusForDescriptor:(id)a3;
- (id)newFoundSetDescriptorsAsNewerDiscovered;
- (id)newSessionID;
- (id)progressReportPhaseName;
- (id)refreshOnFilesystemFromManagerPromotingIfStaged:(BOOL)a3;
- (id)removeCurrentJobTask;
- (id)reportSetCatalogDecideFound:(id)a3 fromLocation:(id)a4;
- (id)setEntryBeingDownloaded;
- (id)simulatedErrorAtPhase:(id)a3 fromOperation:(id)a4 forAssetDownload:(BOOL)a5;
- (id)verifyDownloadNotBlockedBySetPolicy:(BOOL)a3;
- (int64_t)actionUnknownAction:(id)a3 error:(id *)a4;
- (int64_t)action_AddAtomicAlterDecideFilesystem:(id)a3 error:(id *)a4;
- (int64_t)action_AddAtomicCheckDecideFilesystem:(id)a3 error:(id *)a4;
- (int64_t)action_AddAtomicContinueDecideFilesystem:(id)a3 error:(id *)a4;
- (int64_t)action_AddAtomicEndDecideFilesystem:(id)a3 error:(id *)a4;
- (int64_t)action_AddAtomicLockDecideFilesystem:(id)a3 error:(id *)a4;
- (int64_t)action_AddAtomicNeedDecideFilesystem:(id)a3 error:(id *)a4;
- (int64_t)action_AddTaskCheckDecideFilesystem:(id)a3 error:(id *)a4;
- (int64_t)action_AddTaskDecideFilesystem:(id)a3 error:(id *)a4;
- (int64_t)action_AddTaskDetermineDecideFilesystem:(id)a3 error:(id *)a4;
- (int64_t)action_AddTaskInterestDecideFilesystem:(id)a3 error:(id *)a4;
- (int64_t)action_AddTaskLockDecideFilesystem:(id)a3 error:(id *)a4;
- (int64_t)action_AddTaskScheduler:(id)a3 error:(id *)a4;
- (int64_t)action_AddTaskSchedulerDecideFilesystem:(id)a3 error:(id *)a4;
- (int64_t)action_AdoptRegister:(id)a3 error:(id *)a4;
- (int64_t)action_BoostAndRequestLookupGrant:(id)a3 error:(id *)a4;
- (int64_t)action_BoostConfig:(id)a3 error:(id *)a4;
- (int64_t)action_CancelAssetDownload:(id)a3 error:(id *)a4;
- (int64_t)action_CheckSimulateEndStatusRequest:(id)a3 error:(id *)a4;
- (int64_t)action_DecideDownloadOrPostpone:(id)a3 error:(id *)a4;
- (int64_t)action_DecideStartupDownloading:(id)a3 error:(id *)a4;
- (int64_t)action_DoneReportingProgress:(id)a3 error:(id *)a4;
- (int64_t)action_DownloadCatalog:(id)a3 error:(id *)a4;
- (int64_t)action_DownloadNewestFull:(id)a3 error:(id *)a4;
- (int64_t)action_DownloadNewestPatch:(id)a3 error:(id *)a4;
- (int64_t)action_DownloadSuccessDecideMore:(id)a3 error:(id *)a4;
- (int64_t)action_DownloadSuccessDecidePersonalize:(id)a3 error:(id *)a4;
- (int64_t)action_FailRequestCanceling:(id)a3 error:(id *)a4;
- (int64_t)action_FailedPatchDecideTryFull:(id)a3 error:(id *)a4;
- (int64_t)action_FinishedCoalescedClientReply:(id)a3 error:(id *)a4;
- (int64_t)action_JobEndedSchedule:(id)a3 error:(id *)a4;
- (int64_t)action_JobFailedAwaiting:(id)a3 error:(id *)a4;
- (int64_t)action_JobFailedCanceled:(id)a3 error:(id *)a4;
- (int64_t)action_JobFailedSchedule:(id)a3 error:(id *)a4;
- (int64_t)action_JobNoNewerSchedule:(id)a3 error:(id *)a4;
- (int64_t)action_JobPostponedSchedule:(id)a3 error:(id *)a4;
- (int64_t)action_JobRevokedSchedule:(id)a3 error:(id *)a4;
- (int64_t)action_JobSuccessAlreadyDownloaded:(id)a3 error:(id *)a4;
- (int64_t)action_JobSuccessDownloadedAwaiting:(id)a3 error:(id *)a4;
- (int64_t)action_JobSuccessDownloadedSchedule:(id)a3 error:(id *)a4;
- (int64_t)action_JobSuccessFoundPromoted:(id)a3 error:(id *)a4;
- (int64_t)action_JobSuccessFoundSameSchedule:(id)a3 error:(id *)a4;
- (int64_t)action_JobSuccessPatchedAwaiting:(id)a3 error:(id *)a4;
- (int64_t)action_JobSuccessPatchedSchedule:(id)a3 error:(id *)a4;
- (int64_t)action_JobSuccessPersonalized:(id)a3 error:(id *)a4;
- (int64_t)action_LookupFailedContinue:(id)a3 error:(id *)a4;
- (int64_t)action_LookupNoNewerContinue:(id)a3 error:(id *)a4;
- (int64_t)action_LookupRevokedContinue:(id)a3 error:(id *)a4;
- (int64_t)action_LookupSuccessContinue:(id)a3 error:(id *)a4;
- (int64_t)action_MergeAddLock:(id)a3 error:(id *)a4;
- (int64_t)action_MergeAddLockDecideBoost:(id)a3 error:(id *)a4;
- (int64_t)action_MergeAtomicAddLock:(id)a3 error:(id *)a4;
- (int64_t)action_MergeAtomicAlterDecideLookup:(id)a3 error:(id *)a4;
- (int64_t)action_MergeAtomicAlterDecideLookupBoost:(id)a3 error:(id *)a4;
- (int64_t)action_MergeAtomicAlterNeeds:(id)a3 error:(id *)a4;
- (int64_t)action_MergeAtomicCntnuDecideLookupBoost:(id)a3 error:(id *)a4;
- (int64_t)action_MergeAtomicContinueLock:(id)a3 error:(id *)a4;
- (int64_t)action_MergeAtomicEndLockDecideInterest:(id)a3 error:(id *)a4;
- (int64_t)action_MergeAtomicLockDecideLookupBoost:(id)a3 error:(id *)a4;
- (int64_t)action_MergeAtomicNeeds:(id)a3 error:(id *)a4;
- (int64_t)action_MergeAtomicNeedsDecideLookup:(id)a3 error:(id *)a4;
- (int64_t)action_MergeAtomicNeedsDecideLookupBoost:(id)a3 error:(id *)a4;
- (int64_t)action_MergeContinueLock:(id)a3 error:(id *)a4;
- (int64_t)action_MergeContinueLockDecideBoost:(id)a3 error:(id *)a4;
- (int64_t)action_MergeNeeds:(id)a3 error:(id *)a4;
- (int64_t)action_MergeNeedsDecideBoost:(id)a3 error:(id *)a4;
- (int64_t)action_MergeNeedsDecideLookup:(id)a3 error:(id *)a4;
- (int64_t)action_MergeNeedsDecideLookupBoost:(id)a3 error:(id *)a4;
- (int64_t)action_MergeRemoveLock:(id)a3 error:(id *)a4;
- (int64_t)action_MergeRemoveLockDecideInterest:(id)a3 error:(id *)a4;
- (int64_t)action_NowDeadClear:(id)a3 error:(id *)a4;
- (int64_t)action_PersistedDecideDownload:(id)a3 error:(id *)a4;
- (int64_t)action_PersonalizeFailureDecideMore:(id)a3 error:(id *)a4;
- (int64_t)action_PersonalizeHealFailureDecideMore:(id)a3 error:(id *)a4;
- (int64_t)action_PersonalizeHealSuccessDecideMore:(id)a3 error:(id *)a4;
- (int64_t)action_PersonalizeSuccessDecideMore:(id)a3 error:(id *)a4;
- (int64_t)action_RecordSimulateOperation:(id)a3 error:(id *)a4;
- (int64_t)action_ReleaseGrantCanceling:(id)a3 error:(id *)a4;
- (int64_t)action_ReleaseGrantJobFailedCanceled:(id)a3 error:(id *)a4;
- (int64_t)action_ReleaseGrantJobFailedSchedule:(id)a3 error:(id *)a4;
- (int64_t)action_RemoveClient:(id)a3 error:(id *)a4;
- (int64_t)action_RemoveClientDecideInterest:(id)a3 error:(id *)a4;
- (int64_t)action_ReportCatalogDecideFound:(id)a3 error:(id *)a4;
- (int64_t)action_RequestLookupGrant:(id)a3 error:(id *)a4;
- (int64_t)action_RequestSpecificPersisted:(id)a3 error:(id *)a4;
- (int64_t)action_RerouteSchedulerTrigger:(id)a3 error:(id *)a4;
- (int64_t)action_SecureBundlePersonalize:(id)a3 error:(id *)a4;
- (int64_t)action_SetCalculateDownloadSpace:(id)a3 error:(id *)a4;
- (int64_t)action_SetDecideDownload:(id)a3 error:(id *)a4;
- (int64_t)action_SetDoneDetermine:(id)a3 error:(id *)a4;
- (int64_t)action_SetDownloadNewestFull:(id)a3 error:(id *)a4;
- (int64_t)action_SetDownloadNext:(id)a3 error:(id *)a4;
- (int64_t)action_SetDownloadSameFull:(id)a3 error:(id *)a4;
- (int64_t)action_SetJobEndedSchedule:(id)a3 error:(id *)a4;
- (int64_t)action_SetJobFailedAwaiting:(id)a3 error:(id *)a4;
- (int64_t)action_SetJobFailedSchedule:(id)a3 error:(id *)a4;
- (int64_t)action_SetJobHealPersonalizeNext:(id)a3 error:(id *)a4;
- (int64_t)action_SetJobLookupRevokedContinue:(id)a3 error:(id *)a4;
- (int64_t)action_SetJobNoNewerSchedule:(id)a3 error:(id *)a4;
- (int64_t)action_SetJobNoneSchedule:(id)a3 error:(id *)a4;
- (int64_t)action_SetJobSuccessAwaiting:(id)a3 error:(id *)a4;
- (int64_t)action_SetJobSuccessFoundPromoted:(id)a3 error:(id *)a4;
- (int64_t)action_SetJobSuccessFoundSameSchedule:(id)a3 error:(id *)a4;
- (int64_t)action_SetJobSuccessSchedule:(id)a3 error:(id *)a4;
- (int64_t)action_SetJobTryPersonalizeHeal:(id)a3 error:(id *)a4;
- (int64_t)action_SetLookupNoNewerContinue:(id)a3 error:(id *)a4;
- (int64_t)action_SetLookupNoneContinue:(id)a3 error:(id *)a4;
- (int64_t)action_SetLookupSuccessContinue:(id)a3 error:(id *)a4;
- (int64_t)action_SimulatePostponedCalculateSpace:(id)a3 error:(id *)a4;
- (int64_t)action_SimulateSuspendCatalogLookupIssue:(id)a3 error:(id *)a4;
- (int64_t)action_StagerDetermineDecideFilesystem:(id)a3 error:(id *)a4;
- (int64_t)action_StagerDownloadDecideFilesystem:(id)a3 error:(id *)a4;
- (int64_t)errorCodeForNoNewerContentFound;
- (int64_t)performAction:(id)a3 onEvent:(id)a4 inState:(id)a5 withInfo:(id)a6 nextState:(id)a7 error:(id *)a8;
- (void)_autoAssetJobDead:(id)a3;
- (void)_autoAssetJobFinished:(id)a3 forJobFinishedReason:(id)a4 failingWithError:(id)a5;
- (void)_extendAssetDownloadOptionsWithAnalyticsData:(id)a3 forDescriptor:(id)a4 withBaseForPatch:(id)a5;
- (void)_extendCatalogDownloadOptionsWithAnalyticsData:(id)a3;
- (void)_rememberIfSchedulerInvolved:(id)a3;
- (void)_setCalculateDownloadSpace:(id)a3;
- (void)_setPolicyFromClientRequest:(id)a3;
- (void)_statusChangeDownloadProgressDecideLog:(id)a3;
- (void)_updateDownloadOptions:(id)a3;
- (void)_updateUserInitiatedFields;
- (void)addClientRequestAndMergeNeeds:(id)a3 forJobEvent:(id)a4;
- (void)addToActiveJobTasks:(id)a3;
- (void)adoptCachedLookupResult:(id)a3;
- (void)appendUniqueSelectorForDescriptor:(id)a3 toArray:(id)a4;
- (void)autoAssetJobFinished:(id)a3 forJobFinishedReason:(id)a4 failingWithError:(id)a5;
- (void)cancelAutoAssetJob;
- (void)checkFilesystemAndDecidePurgeOrLookup;
- (void)clearSetStatusStartingSetJob;
- (void)clientRequestedStatus:(id)a3;
- (void)completeNWActivity;
- (void)desireChangedToUserInitiated;
- (void)determineWhetherNetworkConnectivityError:(id)a3;
- (void)doneWithAllJobs:(id)a3;
- (void)doneWithAllJobs:(id)a3 withLookupError:(id)a4;
- (void)downloadCatalog:(id)a3;
- (void)exclusiveLookupForAssetTypeGranted:(id)a3;
- (void)finishJobTaskForJobParam:(id)a3 withResponseError:(id)a4;
- (void)finishJobTaskForJobParam:(id)a3 withUnderlyingError:(id)a4 fromAction:(id)a5;
- (void)finishSetJobDownloadedNewer:(id)a3 forJobFinishedReason:(id)a4;
- (void)finishedAcknowledgeAutoAssetJob;
- (void)finishedSetJobFinalizeStatus:(id)a3 failingWithError:(id)a4;
- (void)finishedSetSameVersionFound:(id)a3;
- (void)foundAndDownloaded:(id)a3 forJobParam:(id)a4 wasPatched:(BOOL)a5;
- (void)foundAndDownloadedSet:(id)a3;
- (void)handleDownloadAssetJobFinished:(id)a3 downloadError:(id)a4;
- (void)handleDownloadAssetProgressForJob:(id)a3 withProgress:(id)a4;
- (void)handleDownloadCatalogJobFinished:(id)a3 withCatalog:(id)a4 downloadError:(id)a5;
- (void)handleDownloadConfigJobFinished:(id)a3 withDownloadOptions:(id)a4 configError:(id)a5;
- (void)handleSimulateOperation:(id)a3;
- (void)latchWhetherDownloadingUserInitiated;
- (void)mergeSetPolicyIntoAggregated:(id)a3;
- (void)newFoundSetDescriptorsFromCachedLookup:(id)a3;
- (void)obtainLookupGrant;
- (void)persistedStateForDownloadJob:(id)a3;
- (void)rebuildLastestDescriptorsOnFilesystem:(id)a3;
- (void)refreshDownloadedToManager:(id)a3;
- (void)refreshFoundToManager;
- (void)refreshSetFoundToManager:(BOOL)a3 fromLocation:(id)a4;
- (void)releaseLookupGrant;
- (void)replyToClientForJobParam:(id)a3 withResponseError:(id)a4;
- (void)replyToJobsWhenCatalogDownloaded:(id)a3 discoveredNewer:(BOOL)a4;
- (void)replyToJobsWhenContentDownloaded:(id)a3;
- (void)replyToJobsWhenLookupFailed:(id)a3 withLookupError:(id)a4;
- (void)replyToJobsWhenOperationFoundSame:(id)a3 forCheckAtomic:(BOOL)a4 withLookupError:(id)a5;
- (void)replyToSetCheckAtomicDownloadSuccess;
- (void)reportIfSetPallasResponseReceived:(id)a3;
- (void)reportJustDownloadedAssetOfSet:(id)a3;
- (void)requestDownloadManagerAssetDownload:(id)a3 forDescriptor:(id)a4 withBaseForPatch:(id)a5;
- (void)requestDownloadManagerCancelDownload:(id)a3 forDescriptor:(id)a4;
- (void)requestDownloadManagerCatalogLookup:(id)a3;
- (void)requestDownloadManagerConfigDownload:(id)a3 forDescriptor:(id)a4;
- (void)setCurrentJobTask:(id)a3;
- (void)setProgressAssetDownload:(id)a3;
- (void)setProgressReadyToStartDownloads;
- (void)simulateEnd:(int64_t)a3;
- (void)simulateSet:(id)a3;
- (void)stagerJobDetermineDone:(id)a3 reportingError:(id)a4;
- (void)stagerJobDone:(id)a3 reportingError:(id)a4;
- (void)stagerJobDownloadDone:(id)a3 reportingError:(id)a4;
- (void)stagerJobReportProgress:(id)a3 reportingError:(id)a4;
- (void)startHandlingClientRequest:(id)a3 withControlInformation:(id)a4;
- (void)startResumingInFlightDownload:(id)a3 withControlInformation:(id)a4;
- (void)startScheduleTriggeredSelector:(id)a3 withControlInformation:(id)a4;
- (void)startScheduleTriggeredSetJob:(id)a3;
- (void)startStagerDetermineIfAvailable:(id)a3 withAssetTargetBuildVersion:(id)a4 withAssetTargetTrainName:(id)a5 withAssetTargetRestoreVersion:(id)a6 withControlInformation:(id)a7;
- (void)startStagerDownloadForStaging:(id)a3 withAssetTargetBuildVersion:(id)a4 usingCachedAutoAssetCatalog:(id)a5 withControlInformation:(id)a6;
- (void)statusChange:(id)a3 catalogAnomaly:(int64_t)a4 forReason:(id)a5;
- (void)statusChange:(id)a3 catalogFailure:(int64_t)a4 forReason:(id)a5;
- (void)statusChangeCatalogFoundNewer:(id)a3;
- (void)statusChangeCatalogFoundSame:(id)a3;
- (void)statusChangeDownloadProgress:(id)a3;
- (void)statusChangeJobFinished:(id)a3 withResponseError:(id)a4;
- (void)statusChangeReportCurrent:(id)a3;
- (void)statusChangeSetCatalogFoundNewer:(id)a3;
- (void)statusChangeSetCatalogFoundSame:(id)a3;
- (void)statusChangeStartingAssetDownload:(id)a3 downloadingPatch:(BOOL)a4;
- (void)statusChangeSuccesfullyPatched:(id)a3;
- (void)statusChangeSuccessfullyDownloaded:(id)a3;
- (void)trackAnomaly:(int64_t)a3 forReason:(id)a4;
- (void)updateAutoAssetSetDescriptor;
- (void)updateResultPropertiesWithDescriptor:(id)a3;
- (void)updateSetDescriptorDownloaded:(id)a3 forAssetDescriptor:(id)a4 justDownloaded:(BOOL)a5;
- (void)updateSetResults:(id)a3 atomicInstanceDiscovered:(BOOL)a4 availableForUse:(BOOL)a5 downloading:(BOOL)a6 buildingResultSetFound:(BOOL)a7;
- (void)updateSetTrackingWithSuccessfulAssetDownload;
@end

@implementation MADAutoAssetJob

- (int64_t)performAction:(id)a3 onEvent:(id)a4 inState:(id)a5 withInfo:(id)a6 nextState:(id)a7 error:(id *)a8
{
  v11 = a3;
  v12 = a6;
  if (([v11 isEqualToString:kSUCoreFSMActionNoOp] & 1) == 0)
  {
    if ([v11 isEqualToString:@"AddTaskDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_AddTaskDecideFilesystem:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"AddTaskSchedulerDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_AddTaskSchedulerDecideFilesystem:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"AddTaskCheckDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_AddTaskCheckDecideFilesystem:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"AddTaskDetermineDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_AddTaskDetermineDecideFilesystem:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"AddTaskInterestDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_AddTaskInterestDecideFilesystem:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"AddTaskLockDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_AddTaskLockDecideFilesystem:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"StagerDetermineDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_StagerDetermineDecideFilesystem:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"StagerDownloadDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_StagerDownloadDecideFilesystem:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"DecideStartupDownloading"])
    {
      v14 = [(MADAutoAssetJob *)self action_DecideStartupDownloading:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"AddAtomicAlterDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_AddAtomicAlterDecideFilesystem:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"AddAtomicNeedDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_AddAtomicNeedDecideFilesystem:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"AddAtomicCheckDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_AddAtomicCheckDecideFilesystem:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"AddAtomicLockDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_AddAtomicLockDecideFilesystem:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"AddAtomicContinueDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_AddAtomicContinueDecideFilesystem:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"AddAtomicEndDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_AddAtomicEndDecideFilesystem:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"MergeAtomicAlterNeeds"])
    {
      v14 = [(MADAutoAssetJob *)self action_MergeAtomicAlterNeeds:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"MergeAtomicNeeds"])
    {
      v14 = [(MADAutoAssetJob *)self action_MergeAtomicNeeds:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"MergeAtomicAddLock"])
    {
      v14 = [(MADAutoAssetJob *)self action_MergeAtomicAddLock:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"MergeAtomicContinueLock"])
    {
      v14 = [(MADAutoAssetJob *)self action_MergeAtomicContinueLock:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"MergeAtomicEndLockDecideInterest"])
    {
      v14 = [(MADAutoAssetJob *)self action_MergeAtomicEndLockDecideInterest:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"MergeAtomicAlterDecideLookup"])
    {
      v14 = [(MADAutoAssetJob *)self action_MergeAtomicAlterDecideLookup:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"MergeAtomicNeedsDecideLookup"])
    {
      v14 = [(MADAutoAssetJob *)self action_MergeAtomicNeedsDecideLookup:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"MergeAtomicAlterDecideLookupBoost"])
    {
      v14 = [(MADAutoAssetJob *)self action_MergeAtomicAlterDecideLookupBoost:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"MergeAtomicNeedsDecideLookupBoost"])
    {
      v14 = [(MADAutoAssetJob *)self action_MergeAtomicNeedsDecideLookupBoost:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"MergeAtomicLockDecideLookupBoost"])
    {
      v14 = [(MADAutoAssetJob *)self action_MergeAtomicLockDecideLookupBoost:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"MergeAtomicCntnuDecideLookupBoost"])
    {
      v14 = [(MADAutoAssetJob *)self action_MergeAtomicCntnuDecideLookupBoost:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"SetCalculateDownloadSpace"])
    {
      v14 = [(MADAutoAssetJob *)self action_SetCalculateDownloadSpace:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"SetDecideDownload"])
    {
      v14 = [(MADAutoAssetJob *)self action_SetDecideDownload:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"SetDoneDetermine"])
    {
      v14 = [(MADAutoAssetJob *)self action_SetDoneDetermine:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"SetLookupSuccessContinue"])
    {
      v14 = [(MADAutoAssetJob *)self action_SetLookupSuccessContinue:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"SetLookupNoneContinue"])
    {
      v14 = [(MADAutoAssetJob *)self action_SetLookupNoneContinue:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"SetLookupNoNewerContinue"])
    {
      v14 = [(MADAutoAssetJob *)self action_SetLookupNoNewerContinue:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"SetJobNoneSchedule"])
    {
      v14 = [(MADAutoAssetJob *)self action_SetJobNoneSchedule:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"SetJobNoNewerSchedule"])
    {
      v14 = [(MADAutoAssetJob *)self action_SetJobNoNewerSchedule:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"SetJobFailedSchedule"])
    {
      v14 = [(MADAutoAssetJob *)self action_SetJobFailedSchedule:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"SetJobLookupRevokedContinue"])
    {
      v14 = [(MADAutoAssetJob *)self action_SetJobLookupRevokedContinue:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"SetJobHealPersonalizeNext"])
    {
      v14 = [(MADAutoAssetJob *)self action_SetJobHealPersonalizeNext:v12 error:a8];
    }

    else
    {
      if (![v11 isEqualToString:@"SetDownloadNewestFull"])
      {
        if ([v11 isEqualToString:@"SetDownloadNext"])
        {
          v14 = [(MADAutoAssetJob *)self action_SetDownloadNext:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"SetDownloadSameFull"])
        {
          v14 = [(MADAutoAssetJob *)self action_SetDownloadSameFull:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"SetJobSuccessSchedule"])
        {
          v14 = [(MADAutoAssetJob *)self action_SetJobSuccessSchedule:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"SetJobSuccessFoundSameSchedule"])
        {
          v14 = [(MADAutoAssetJob *)self action_SetJobSuccessFoundSameSchedule:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"SetJobSuccessFoundPromoted"])
        {
          v14 = [(MADAutoAssetJob *)self action_SetJobSuccessFoundPromoted:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"SetJobSuccessAwaiting"])
        {
          v14 = [(MADAutoAssetJob *)self action_SetJobSuccessAwaiting:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"SetJobFailedAwaiting"])
        {
          v14 = [(MADAutoAssetJob *)self action_SetJobFailedAwaiting:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"SetJobTryPersonalizeHeal"])
        {
          v14 = [(MADAutoAssetJob *)self action_SetJobTryPersonalizeHeal:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"FinishedCoalescedClientReply"])
        {
          v14 = [(MADAutoAssetJob *)self action_FinishedCoalescedClientReply:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"RerouteSchedulerTrigger"])
        {
          v14 = [(MADAutoAssetJob *)self action_RerouteSchedulerTrigger:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"NowDeadClear"])
        {
          v14 = [(MADAutoAssetJob *)self action_NowDeadClear:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"AddTaskScheduler"])
        {
          v14 = [(MADAutoAssetJob *)self action_AddTaskScheduler:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"MergeNeeds"])
        {
          v14 = [(MADAutoAssetJob *)self action_MergeNeeds:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"MergeNeedsDecideLookup"])
        {
          v14 = [(MADAutoAssetJob *)self action_MergeNeedsDecideLookup:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"MergeNeedsDecideBoost"])
        {
          v14 = [(MADAutoAssetJob *)self action_MergeNeedsDecideBoost:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"MergeNeedsDecideLookupBoost"])
        {
          v14 = [(MADAutoAssetJob *)self action_MergeNeedsDecideLookupBoost:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"MergeAddLock"])
        {
          v14 = [(MADAutoAssetJob *)self action_MergeAddLock:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"MergeContinueLock"])
        {
          v14 = [(MADAutoAssetJob *)self action_MergeContinueLock:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"MergeRemoveLock"])
        {
          v14 = [(MADAutoAssetJob *)self action_MergeRemoveLock:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"MergeRemoveLockDecideInterest"])
        {
          v14 = [(MADAutoAssetJob *)self action_MergeRemoveLockDecideInterest:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"MergeAddLockDecideBoost"])
        {
          v14 = [(MADAutoAssetJob *)self action_MergeAddLockDecideBoost:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"MergeContinueLockDecideBoost"])
        {
          v14 = [(MADAutoAssetJob *)self action_MergeContinueLockDecideBoost:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"AdoptRegister"])
        {
          v14 = [(MADAutoAssetJob *)self action_AdoptRegister:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"RequestLookupGrant"])
        {
          v14 = [(MADAutoAssetJob *)self action_RequestLookupGrant:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"DownloadCatalog"])
        {
          v14 = [(MADAutoAssetJob *)self action_DownloadCatalog:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"RemoveClient"])
        {
          v14 = [(MADAutoAssetJob *)self action_RemoveClient:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"RemoveClientDecideInterest"])
        {
          v14 = [(MADAutoAssetJob *)self action_RemoveClientDecideInterest:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"ReportCatalogDecideFound"])
        {
          v14 = [(MADAutoAssetJob *)self action_ReportCatalogDecideFound:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"DecideDownloadOrPostpone"])
        {
          v14 = [(MADAutoAssetJob *)self action_DecideDownloadOrPostpone:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"RequestSpecificPersisted"])
        {
          v14 = [(MADAutoAssetJob *)self action_RequestSpecificPersisted:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"PersistedDecideDownload"])
        {
          v14 = [(MADAutoAssetJob *)self action_PersistedDecideDownload:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"DownloadNewestPatch"])
        {
          v14 = [(MADAutoAssetJob *)self action_DownloadNewestPatch:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"DownloadNewestFull"])
        {
          v14 = [(MADAutoAssetJob *)self action_DownloadNewestFull:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"DownloadSuccessDecideMore"])
        {
          v14 = [(MADAutoAssetJob *)self action_DownloadSuccessDecideMore:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"FailedPatchDecideTryFull"])
        {
          v14 = [(MADAutoAssetJob *)self action_FailedPatchDecideTryFull:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"BoostConfig"])
        {
          v14 = [(MADAutoAssetJob *)self action_BoostConfig:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"BoostAndRequestLookupGrant"])
        {
          v14 = [(MADAutoAssetJob *)self action_BoostAndRequestLookupGrant:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"DownloadSuccessDecidePersonalize"])
        {
          v14 = [(MADAutoAssetJob *)self action_DownloadSuccessDecidePersonalize:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"SecureBundlePersonalize"])
        {
          v14 = [(MADAutoAssetJob *)self action_SecureBundlePersonalize:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"PersonalizeSuccessDecideMore"])
        {
          v14 = [(MADAutoAssetJob *)self action_PersonalizeSuccessDecideMore:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"PersonalizeFailureDecideMore"])
        {
          v14 = [(MADAutoAssetJob *)self action_PersonalizeFailureDecideMore:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"PersonalizeHealSuccessDecideMore"])
        {
          v14 = [(MADAutoAssetJob *)self action_PersonalizeHealSuccessDecideMore:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"PersonalizeHealFailureDecideMore"])
        {
          v14 = [(MADAutoAssetJob *)self action_PersonalizeHealFailureDecideMore:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"LookupSuccessContinue"])
        {
          v14 = [(MADAutoAssetJob *)self action_LookupSuccessContinue:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"LookupNoNewerContinue"])
        {
          v14 = [(MADAutoAssetJob *)self action_LookupNoNewerContinue:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"LookupRevokedContinue"])
        {
          v14 = [(MADAutoAssetJob *)self action_LookupRevokedContinue:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"LookupFailedContinue"])
        {
          v14 = [(MADAutoAssetJob *)self action_LookupFailedContinue:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"JobSuccessPatchedAwaiting"])
        {
          v14 = [(MADAutoAssetJob *)self action_JobSuccessPatchedAwaiting:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"JobSuccessDownloadedAwaiting"])
        {
          v14 = [(MADAutoAssetJob *)self action_JobSuccessDownloadedAwaiting:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"JobSuccessFoundSameSchedule"])
        {
          v14 = [(MADAutoAssetJob *)self action_JobSuccessFoundSameSchedule:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"JobSuccessFoundPromoted"])
        {
          v14 = [(MADAutoAssetJob *)self action_JobSuccessFoundPromoted:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"JobSuccessPatchedSchedule"])
        {
          v14 = [(MADAutoAssetJob *)self action_JobSuccessPatchedSchedule:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"JobSuccessDownloadedSchedule"])
        {
          v14 = [(MADAutoAssetJob *)self action_JobSuccessDownloadedSchedule:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"JobSuccessAlreadyDownloaded"])
        {
          v14 = [(MADAutoAssetJob *)self action_JobSuccessAlreadyDownloaded:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"JobSuccessPersonalized"])
        {
          v14 = [(MADAutoAssetJob *)self action_JobSuccessPersonalized:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"JobNoNewerSchedule"])
        {
          v14 = [(MADAutoAssetJob *)self action_JobNoNewerSchedule:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"JobRevokedSchedule"])
        {
          v14 = [(MADAutoAssetJob *)self action_JobRevokedSchedule:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"JobFailedSchedule"])
        {
          v14 = [(MADAutoAssetJob *)self action_JobFailedSchedule:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"ReleaseGrantJobFailedSchedule"])
        {
          v14 = [(MADAutoAssetJob *)self action_ReleaseGrantJobFailedSchedule:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"JobPostponedSchedule"])
        {
          v14 = [(MADAutoAssetJob *)self action_JobPostponedSchedule:v12 error:a8];
          goto LABEL_225;
        }

        if ([v11 isEqualToString:@"JobEndedSchedule"])
        {
          v14 = [(MADAutoAssetJob *)self action_JobEndedSchedule:v12 error:a8];
          goto LABEL_225;
        }

        if (![v11 isEqualToString:@"SetDownloadNewestFull"])
        {
          if ([v11 isEqualToString:@"SetJobEndedSchedule"])
          {
            v14 = [(MADAutoAssetJob *)self action_SetJobEndedSchedule:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"RecordSimulateOperation"])
          {
            v14 = [(MADAutoAssetJob *)self action_RecordSimulateOperation:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"CheckSimulateEndStatusRequest"])
          {
            v14 = [(MADAutoAssetJob *)self action_CheckSimulateEndStatusRequest:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"SimulateSuspendCatalogLookupIssue"])
          {
            v14 = [(MADAutoAssetJob *)self action_SimulateSuspendCatalogLookupIssue:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"SimulatePostponedCalculateSpace"])
          {
            v14 = [(MADAutoAssetJob *)self action_SimulatePostponedCalculateSpace:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"CancelAssetDownload"])
          {
            v14 = [(MADAutoAssetJob *)self action_CancelAssetDownload:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"ReleaseGrantCanceling"])
          {
            v14 = [(MADAutoAssetJob *)self action_ReleaseGrantCanceling:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"FailRequestCanceling"])
          {
            v14 = [(MADAutoAssetJob *)self action_FailRequestCanceling:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"JobFailedCanceled"])
          {
            v14 = [(MADAutoAssetJob *)self action_JobFailedCanceled:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"ReleaseGrantJobFailedCanceled"])
          {
            v14 = [(MADAutoAssetJob *)self action_ReleaseGrantJobFailedCanceled:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"DoneReportingProgress"])
          {
            v14 = [(MADAutoAssetJob *)self action_DoneReportingProgress:v12 error:a8];
          }

          else
          {
            v14 = [(MADAutoAssetJob *)self actionUnknownAction:v11 error:a8];
          }

          goto LABEL_225;
        }
      }

      v14 = [(MADAutoAssetJob *)self action_SetDownloadNewestFull:v12 error:a8];
    }

LABEL_225:
    v13 = v14;
    goto LABEL_226;
  }

  v13 = 0;
LABEL_226:

  return v13;
}

- (id)initForSelector:(id)a3 withLifetimeOSTransaction:(id)a4 withAutoAssetUUID:(id)a5 asStagerJob:(BOOL)a6 withStagerSetPolicy:(id)a7 usingCachedAutoAssetCatalog:(id)a8 usingBaseForPatching:(id)a9
{
  BYTE1(v10) = a6;
  LOBYTE(v10) = 0;
  return [(MADAutoAssetJob *)self initForInstance:0 orForSelector:a3 orForDescriptor:0 orForSetInstance:0 withLifetimeOSTransaction:a4 withSetDesire:0 withSchedulerSetPolicy:0 withStagerSetPolicy:a7 usingSetConfiguration:0 usingSetDescriptor:0 withBaseForPatchDescriptor:a9 withAutoAssetUUID:a5 downloadingUserInitiated:v10 asStagerJob:a8 usingCachedAutoAssetCatalog:?];
}

- (id)initForSetConfiguration:(id)a3 withLifetimeOSTransaction:(id)a4 withAutoAssetUUID:(id)a5 asStagerJob:(BOOL)a6 withStagerSetPolicy:(id)a7
{
  BYTE1(v8) = a6;
  LOBYTE(v8) = 0;
  return [(MADAutoAssetJob *)self initForInstance:0 orForSelector:0 orForDescriptor:0 orForSetInstance:0 withLifetimeOSTransaction:a4 withSetDesire:0 withSchedulerSetPolicy:0 withStagerSetPolicy:a7 usingSetConfiguration:a3 usingSetDescriptor:0 withBaseForPatchDescriptor:0 withAutoAssetUUID:a5 downloadingUserInitiated:v8 asStagerJob:0 usingCachedAutoAssetCatalog:?];
}

- (id)initForInstance:(id)a3 orForSelector:(id)a4 orForDescriptor:(id)a5 orForSetInstance:(id)a6 withLifetimeOSTransaction:(id)a7 withSetDesire:(id)a8 withSchedulerSetPolicy:(id)a9 withStagerSetPolicy:(id)a10 usingSetConfiguration:(id)a11 usingSetDescriptor:(id)a12 withBaseForPatchDescriptor:(id)a13 withAutoAssetUUID:(id)a14 downloadingUserInitiated:(BOOL)a15 asStagerJob:(BOOL)a16 usingCachedAutoAssetCatalog:(id)a17
{
  v243 = a3;
  v235 = a4;
  v224 = a5;
  v245 = a5;
  v244 = a6;
  v222 = a7;
  v22 = a7;
  v236 = a8;
  v233 = a9;
  v232 = a10;
  v239 = a11;
  v237 = a12;
  v231 = a13;
  v238 = a14;
  v234 = a17;
  v246.receiver = self;
  v246.super_class = MADAutoAssetJob;
  v23 = [(MADAutoAssetJob *)&v246 init];
  v24 = v23;
  if (!v23)
  {
LABEL_96:
    v110 = v24;
    v45 = v243;
    v44 = v244;
    goto LABEL_97;
  }

  v226 = v22;
  autoAssetInstance = v23->_autoAssetInstance;
  v23->_autoAssetInstance = 0;

  v24->_autoAssetSetJob = 0;
  clientDomainName = v24->_clientDomainName;
  v24->_clientDomainName = 0;

  autoAssetSetIdentifier = v24->_autoAssetSetIdentifier;
  v24->_autoAssetSetIdentifier = 0;

  autoAssetSelector = v24->_autoAssetSelector;
  v24->_autoAssetSelector = 0;

  location = &v24->_setConfiguration;
  setConfiguration = v24->_setConfiguration;
  v24->_setConfiguration = 0;

  cachedAutoAssetCatalog = v24->_cachedAutoAssetCatalog;
  v24->_cachedAutoAssetCatalog = 0;

  setJobInformation = v24->_setJobInformation;
  v24->_setJobInformation = 0;

  autoAssetSetInstance = v24->_autoAssetSetInstance;
  v24->_autoAssetSetInstance = 0;

  autoAssetSetDesire = v24->_autoAssetSetDesire;
  v24->_autoAssetSetDesire = 0;

  schedulerSetPolicy = v24->_schedulerSetPolicy;
  v24->_schedulerSetPolicy = 0;

  stagerSetPolicy = v24->_stagerSetPolicy;
  v24->_stagerSetPolicy = 0;

  assignedSetDescriptor = v24->_assignedSetDescriptor;
  v24->_assignedSetDescriptor = 0;

  aggregatedClientSetPolicy = v24->_aggregatedClientSetPolicy;
  v24->_aggregatedClientSetPolicy = 0;

  *&v24->_downloadingCellular = 0;
  v24->_aggregatedClientSetPolicySpecified = 0;
  v24->_setCheckAwaitingDownload = 0;
  *&v24->_haveReceivedLookupResponse = 0;
  v24->_downloadingUserInitiated = a15;
  v24->_boostedToExpensive = 0;
  if (v245)
  {
    v38 = [MAAutoAssetSelector alloc];
    v39 = [v245 assetType];
    v40 = [v245 assetSpecifier];
    v41 = [v245 assetVersion];
    v42 = [v38 initForAssetType:v39 withAssetSpecifier:v40 matchingAssetVersion:v41];
    v43 = v24->_autoAssetSelector;
    v24->_autoAssetSelector = v42;

LABEL_4:
    v45 = v243;
    v44 = v244;
LABEL_32:

    goto LABEL_33;
  }

  if (v244)
  {
    p_aggregatedClientSetPolicy = &v24->_aggregatedClientSetPolicy;
    p_schedulerSetPolicy = &v24->_schedulerSetPolicy;
    v24->_autoAssetSetJob = 1;
    objc_storeStrong(&v24->_autoAssetSetDesire, a8);
    objc_storeStrong(&v24->_schedulerSetPolicy, a9);
    v47 = [v237 copy];
    v48 = v24->_assignedSetDescriptor;
    v24->_assignedSetDescriptor = v47;

    v49 = [(MADAutoSetDescriptor *)v24->_assignedSetDescriptor clientDomainName];
    v50 = v24->_clientDomainName;
    v24->_clientDomainName = v49;

    v51 = [(MADAutoSetDescriptor *)v24->_assignedSetDescriptor assetSetIdentifier];
    v52 = v24->_autoAssetSetIdentifier;
    v24->_autoAssetSetIdentifier = v51;

    objc_storeStrong(location, a11);
    v24->_haveReceivedLookupResponse = [v239 haveReceivedLookupResponse];
    v24->_vendingAtomicInstanceForConfiguredEntries = [v239 vendingAtomicInstanceForConfiguredEntries];
    objc_storeStrong(&v24->_cachedAutoAssetCatalog, a17);
    v53 = objc_alloc_init(MADAutoSetJobInformation);
    v54 = v24->_setJobInformation;
    v24->_setJobInformation = v53;

    [(MADAutoSetJobInformation *)v24->_setJobInformation setClientInstance:v244];
    objc_storeStrong(&v24->_autoAssetSetInstance, a6);
    [(MADAutoSetJobInformation *)v24->_setJobInformation setClientDesire:v236];
    [(MADAutoSetJobInformation *)v24->_setJobInformation setAssignedAutoAssetUUID:v238];
    v55 = v24->_autoAssetSetDesire;
    v45 = v243;
    if (v55)
    {
      v56 = [(MANAutoAssetSetInfoDesire *)v55 clientAssetSetPolicy];

      if (v56)
      {
        v57 = [(MANAutoAssetSetInfoDesire *)v24->_autoAssetSetDesire clientAssetSetPolicy];
        v58 = v24->_aggregatedClientSetPolicy;
        v24->_aggregatedClientSetPolicy = v57;

        v24->_aggregatedClientSetPolicySpecified = 1;
        v59 = &v24->_aggregatedClientSetPolicy;
      }

      else
      {
        v77 = objc_alloc_init(MANAutoAssetSetPolicy);
        v59 = &v24->_aggregatedClientSetPolicy;
        v78 = *p_aggregatedClientSetPolicy;
        *p_aggregatedClientSetPolicy = v77;
      }

      if ([(MANAutoAssetSetInfoDesire *)v24->_autoAssetSetDesire awaitDownloadingOfDiscovered])
      {
        v24->_setCheckAwaitingDownload = 1;
      }

      if (![*v59 userInitiated])
      {
        goto LABEL_27;
      }
    }

    else
    {
      v69 = *p_schedulerSetPolicy;
      if (!*p_schedulerSetPolicy)
      {
        v81 = objc_alloc_init(MANAutoAssetSetPolicy);
        v59 = &v24->_aggregatedClientSetPolicy;
        v82 = *p_aggregatedClientSetPolicy;
        *p_aggregatedClientSetPolicy = v81;

        goto LABEL_27;
      }

      v59 = &v24->_aggregatedClientSetPolicy;
      objc_storeStrong(p_aggregatedClientSetPolicy, v69);
      if (![*p_aggregatedClientSetPolicy userInitiated])
      {
        goto LABEL_27;
      }
    }

    v24->_downloadingUserInitiated = 1;
LABEL_27:
    if ([*v59 allowCheckDownloadOverCellular])
    {
      v24->_downloadingCellular = 1;
    }

    if ([*v59 allowCheckDownloadOverExpensive])
    {
      v24->_downloadingExpensive = 1;
    }

    v83 = [MAAutoAssetSelector alloc];
    v39 = [(MADAutoAssetJob *)v24 autoAssetSetAssetType];
    v84 = [v244 assetSetIdentifier];
    v85 = [v83 initForAssetType:v39 withAssetSpecifier:v84 matchingAssetVersion:{@"88.77.66.55.44, 0"}];
    v86 = v24->_autoAssetSelector;
    v24->_autoAssetSelector = v85;

    v44 = v244;
    goto LABEL_32;
  }

  if (v239 && a16)
  {
    v24->_autoAssetSetJob = 1;
    objc_storeStrong(location, a11);
    objc_storeStrong(&v24->_stagerSetPolicy, a10);
    v60 = [(MADAutoSetConfiguration *)v24->_setConfiguration clientDomainName];
    v61 = v24->_clientDomainName;
    v24->_clientDomainName = v60;

    v62 = [(MADAutoSetConfiguration *)v24->_setConfiguration assetSetIdentifier];
    v63 = v24->_autoAssetSetIdentifier;
    v24->_autoAssetSetIdentifier = v62;

    v64 = objc_alloc_init(MADAutoSetJobInformation);
    v65 = v24->_setJobInformation;
    v24->_setJobInformation = v64;

    objc_storeStrong(&v24->_aggregatedClientSetPolicy, v24->_stagerSetPolicy);
    objc_storeStrong(&v24->_cachedAutoAssetCatalog, a17);
    v66 = [MAAutoAssetSelector alloc];
    v39 = [(MADAutoAssetJob *)v24 autoAssetSetAssetType];
    v40 = [(MADAutoSetConfiguration *)v24->_setConfiguration clientDomainName];
    v67 = [v66 initForAssetType:v39 withAssetSpecifier:v40 matchingAssetVersion:{@"88.77.66.55.44, 0"}];
    v68 = v24->_autoAssetSelector;
    v24->_autoAssetSelector = v67;

    goto LABEL_4;
  }

  v44 = 0;
  if (v234 && a16)
  {
    objc_storeStrong(&v24->_stagerSetPolicy, a10);
    v70 = objc_alloc_init(MADAutoSetJobInformation);
    v71 = v24->_setJobInformation;
    v24->_setJobInformation = v70;

    objc_storeStrong(&v24->_aggregatedClientSetPolicy, v24->_stagerSetPolicy);
    objc_storeStrong(&v24->_cachedAutoAssetCatalog, a17);
    v72 = [(MADAutoAssetJob *)v24 _newSelectorForCachedAssetCatalog:v234];
    v73 = v24->_autoAssetSelector;
    v24->_autoAssetSelector = v72;

    v74 = [v234 safeStringForKey:@"SessionId"];
    checkUUID = v24->_checkUUID;
    v24->_checkUUID = v74;

    v45 = v243;
    if (v24->_checkUUID)
    {
      goto LABEL_33;
    }

    v76 = v238;
    v39 = v24->_checkUUID;
    v24->_checkUUID = v76;
    goto LABEL_32;
  }

  v45 = v243;
  v79 = [v243 clientAssetSelector];

  if (v79)
  {
    v80 = [v243 clientAssetSelector];
LABEL_103:
    v39 = v24->_autoAssetSelector;
    v24->_autoAssetSelector = v80;
    goto LABEL_32;
  }

  if (v235)
  {
    v80 = v235;
    goto LABEL_103;
  }

LABEL_33:
  if (v24->_autoAssetSelector)
  {
    objc_storeStrong(&v24->_autoAssetInstance, a3);
    objc_storeStrong(&v24->_autoAssetUUID, a14);
    objc_storeStrong(&v24->_lifetimeOSTransaction, v222);
    queuedRequestsForNewJobOnceCanceled = v24->_queuedRequestsForNewJobOnceCanceled;
    v24->_clientRequestCount = 0;
    v24->_queuedRequestsForNewJobOnceCanceled = 0;
    *&v24->_earlierSchedulerInvolved = 0;

    v24->_earlierPotentialNetworkFailure = 0;
    latestSafeSummary = v24->_latestSafeSummary;
    v24->_latestSafeSummary = @"INIT";

    v24->_schedulerInvolved = 0;
    v24->_potentialNetworkFailure = 0;
    v24->_stagerJob = a16;
    *&v24->_stagerJobDownloadContent = 0;
    stagerAssetTargetOSVersion = v24->_stagerAssetTargetOSVersion;
    v24->_stagerAssetTargetOSVersion = 0;

    stagerAssetTargetBuildVersion = v24->_stagerAssetTargetBuildVersion;
    v24->_stagerAssetTargetBuildVersion = 0;

    stagerAssetTargetTrainName = v24->_stagerAssetTargetTrainName;
    v24->_stagerAssetTargetTrainName = 0;

    stagerAssetTargetRestoreVersion = v24->_stagerAssetTargetRestoreVersion;
    v24->_stagerAssetTargetRestoreVersion = 0;

    stagerJobAutoAssetCatalog = v24->_stagerJobAutoAssetCatalog;
    v24->_stagerJobAutoAssetCatalog = 0;

    p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
    v95 = objc_alloc_init(NSMutableArray);
    activeJobTasks = v24->_activeJobTasks;
    v24->_activeJobTasks = v95;

    v97 = [objc_opt_class() _getAutoAssetJobStateTable];
    stateTable = v24->_stateTable;
    v24->_stateTable = v97;

    bondedWithJob = v24->_bondedWithJob;
    v24->_bondedWithJob = 0;

    activeInstance = v24->_activeInstance;
    v24->_activeInstance = 0;

    activeDesire = v24->_activeDesire;
    v24->_activeDesire = 0;

    activeFound = v24->_activeFound;
    v24->_activeFound = 0;

    activeEnd = v24->_activeEnd;
    v24->_activeEnd = 0;

    activeListen = v24->_activeListen;
    v24->_activeListen = 0;

    autoAssetJobInformation = v24->_autoAssetJobInformation;
    v24->_autoAssetJobInformation = 0;

    v106 = objc_alloc_init(MAAutoAssetPolicy);
    aggregatedClientAssetPolicy = v24->_aggregatedClientAssetPolicy;
    v24->_aggregatedClientAssetPolicy = v106;

    *&v24->_aggregatedClientAssetPolicySpecified = 0;
    if (v24->_autoAssetSetJob)
    {
      v108 = [v44 autoAssetSetClientName];
      if (v108)
      {
        v109 = [v44 autoAssetSetClientName];
LABEL_45:
        firstClientName = v24->_firstClientName;
        v24->_firstClientName = v109;

LABEL_46:
        v113 = @"Stager";
        if (!a16)
        {
          v113 = 0;
        }

        jobCreationTriggeringLayer = v24->_jobCreationTriggeringLayer;
        v24->_jobCreationTriggeringLayer = &v113->isa;

        onFilesystemByVersion = v24->_onFilesystemByVersion;
        v24->_onFilesystemByVersion = 0;

        checkUUIDBasePortion = v24->_checkUUIDBasePortion;
        v24->_checkUUIDBasePortion = 0;

        v117 = v24->_checkUUID;
        v24->_checkUUID = 0;

        *&v24->_holdingLookupGrant = 0;
        v24->_rampingForegroundLatched = 0;
        catalogDownloadOptions = v24->_catalogDownloadOptions;
        v24->_catalogDownloadOptions = 0;

        assetDownloadOptions = v24->_assetDownloadOptions;
        v24->_assetDownloadOptions = 0;

        objc_storeStrong(&v24->_baseForPatch, a13);
        foundNewerPatch = v24->_foundNewerPatch;
        v24->_foundNewerPatch = 0;

        foundNewerFull = v24->_foundNewerFull;
        v24->_foundNewerFull = 0;

        newerFoundAssetDescriptor = v24->_newerFoundAssetDescriptor;
        v24->_newerFoundAssetDescriptor = 0;

        objc_storeStrong(&v24->_downloadingAssetDescriptor, v224);
        v24->_schedulerTriggerReceived = 0;
        downloadingUserInitiated = v24->_downloadingUserInitiated;
        if ((downloadingUserInitiated & 1) == 0)
        {
          downloadingUserInitiated = [v245 downloadUserInitiated];
          v24->_downloadingUserInitiated = downloadingUserInitiated;
        }

        *&v24->_configuredToUserInitiated = 0;
        v24->_configuredToExpensive = 0;
        *&v24->_checkingAssetContent = 0;
        if (downloadingUserInitiated)
        {
          [(MAAutoAssetPolicy *)v24->_aggregatedClientAssetPolicy setUserInitiated:1];
          [(MANAutoAssetSetPolicy *)v24->_aggregatedClientSetPolicy setUserInitiated:1];
        }

        latestInstalledAssetVersion = v24->_latestInstalledAssetVersion;
        v24->_latestInstalledAssetVersion = 0;

        latestInstalledAssetBuild = v24->_latestInstalledAssetBuild;
        v24->_latestInstalledAssetBuild = 0;

        mostRecentlyReceivedCachedAssetSetID = v24->_mostRecentlyReceivedCachedAssetSetID;
        v24->_mostRecentlyReceivedCachedAssetSetID = 0;

        latestToVendCachedAssetSetID = v24->_latestToVendCachedAssetSetID;
        v24->_latestToVendCachedAssetSetID = 0;

        if (v24->_autoAssetSetJob)
        {
          currentStatus = v24->_currentStatus;
          v24->_currentStatus = 0;

          if (v44)
          {
            v229 = [MANAutoAssetSetStatus alloc];
            v227 = [v44 clientDomainName];
            v225 = [v44 assetSetIdentifier];
            v223 = [v239 autoAssetEntries];
            v221 = [v237 catalogCachedAssetSetID];
            v219 = [v237 catalogDownloadedFromLive];
            v240 = [v237 catalogLastTimeChecked];
            v129 = [v237 catalogPostedDate];
            v218 = [v237 downloadedCatalogCachedAssetSetID];
            obj = [v237 downloadedCatalogDownloadedFromLive];
            v216 = [v237 downloadedCatalogLastTimeChecked];
            v213 = [v237 downloadedCatalogPostedDate];
            v130 = objc_alloc_init(MANAutoAssetSetNotifications);
            v131 = v24->_aggregatedClientSetPolicy;
            v132 = *&v24->_haveReceivedLookupResponse;
            v133 = v24->_downloadingUserInitiated;
            v134 = objc_alloc_init(MANAutoAssetSetProgress);
            BYTE2(v212) = v133;
            LOWORD(v212) = v132;
            LOBYTE(v210) = 0;
            v135 = [MANAutoAssetSetStatus initStatusForClientDomain:v229 forAssetSetIdentifier:"initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDownloadedAtomicInstanceFromPreSUStaging:withLatestDowloadedAtomicInstanceEntries:withPreviouslyVendedLockedAtomicInstance:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:" withConfiguredAssetEntries:v227 withAtomicInstancesDownloaded:v225 withCatalogCachedAssetSetID:v223 withCatalogDownloadedFromLive:0 withCatalogLastTimeChecked:v221 withCatalogPostedDate:v219 withNewerAtomicInstanceDiscovered:v240 withNewerDiscoveredAtomicEntries:v129 withLatestDownloadedAtomicInstance:0 withLatestDownloadedAtomicInstanceFromPreSUStaging:0 withLatestDowloadedAtomicInstanceEntries:0 withPreviouslyVendedLockedAtomicInstance:v210 withDownloadedCatalogCachedAssetSetID:0 withDownloadedCatalogDownloadedFromLive:0 withDownloadedCatalogLastTimeChecked:v218 withDownloadedCatalogPostedDate:obj withCurrentNotifications:v216 withCurrentNeedPolicy:v213 withSchedulerPolicy:v130 withStagerPolicy:v131 havingReceivedLookupResponse:0 vendingAtomicInstanceForConfiguredEntries:0 withDownloadUserInitiated:v212 withDownloadProgress:v134 withDownloadedNetworkBytes:-1 withDownloadedFilesystemBytes:-1 withCurrentLockUsage:0 withSelectorsForStaging:0 withAvailableForUseError:0 withNewerVersionError:0];
            currentSetStatus = v24->_currentSetStatus;
            v24->_currentSetStatus = v135;

            p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
            v137 = [(MANAutoAssetSetStatus *)v24->_currentSetStatus copy];
            [(MADAutoSetJobInformation *)v24->_setJobInformation setCurrentSetStatus:v137];
          }

          else
          {
            v137 = [(SUCoreFSM *)v24->_autoJobFSM diag];
            [v137 trackAnomaly:@"{initForInstance}" forReason:@"Unable to create current set status due to nil auto asset set instance!" withResult:6103 withError:0];
          }

LABEL_69:

          lastReportedPatchProgress = v24->_lastReportedPatchProgress;
          *&v24->_progressReportPhase = 0u;

          resultSelector = v24->_resultSelector;
          v24->_resultSelector = 0;

          resultInstance = v24->_resultInstance;
          v24->_resultInstance = 0;

          resultFound = v24->_resultFound;
          v24->_resultFound = 0;

          resultEnd = v24->_resultEnd;
          v24->_resultEnd = 0;

          resultListen = v24->_resultListen;
          v24->_resultListen = 0;

          firstLookupError = v24->_firstLookupError;
          v24->_firstLookupError = 0;

          simulateDescriptor = v24->_simulateDescriptor;
          *&v24->_simulateOperation = 0u;
          *&v24->_simulateTriggered = 0u;

          simulateBaseForPatch = v24->_simulateBaseForPatch;
          v24->_simulateBaseForPatch = 0;

          currentSetNotifications = v24->_currentSetNotifications;
          v24->_currentSetNotifications = 0;

          *&v24->_setProgressOverallTotalWrittenBytes = 0u;
          objc_storeStrong(&v24->_assignedSetDescriptor, a12);
          latestAssetDescriptorOnFilesystemBySpecifier = v24->_latestAssetDescriptorOnFilesystemBySpecifier;
          v24->_latestAssetDescriptorOnFilesystemBySpecifier = 0;

          foundSetPatchDescriptorsBySpecifier = v24->_foundSetPatchDescriptorsBySpecifier;
          v24->_foundSetPatchDescriptorsBySpecifier = 0;

          foundSetFullDescriptorsBySpecifier = v24->_foundSetFullDescriptorsBySpecifier;
          v24->_foundSetFullDescriptorsBySpecifier = 0;

          foundSetNewerDiscoveredAtomicEntries = v24->_foundSetNewerDiscoveredAtomicEntries;
          v24->_foundSetNewerDiscoveredAtomicEntries = 0;

          v24->_foundSameAtomicInstanceAlreadyDownloaded = 0;
          v172 = objc_alloc_init(p_weak_ivar_lyt[228]);
          prePersonalizedSelectors = v24->_prePersonalizedSelectors;
          v24->_prePersonalizedSelectors = v172;

          v174 = objc_alloc_init(p_weak_ivar_lyt[228]);
          tryPersonalizeDescriptors = v24->_tryPersonalizeDescriptors;
          v24->_tryPersonalizeDescriptors = v174;

          v176 = objc_alloc_init(NSMutableSet);
          tryPersonalizePromoted = v24->_tryPersonalizePromoted;
          v24->_tryPersonalizePromoted = v176;

          tryPersonalizeSelector = v24->_tryPersonalizeSelector;
          v24->_tryPersonalizeSelector = 0;

          *&v24->_tryPersonalizeSuccess = 0;
          v24->_becameLatestToVend = 0;
          newestDownloadedSetStatus = v24->_newestDownloadedSetStatus;
          v24->_newestDownloadedSetStatus = 0;

          v180 = [(MADAutoSetDescriptor *)v24->_assignedSetDescriptor copy];
          autoAssetSetDescriptor = v24->_autoAssetSetDescriptor;
          v24->_autoAssetSetDescriptor = v180;

          setSpaceCheckedUUID = v24->_setSpaceCheckedUUID;
          *&v24->_nextSetSpecifierToDownload = 0u;
          *&v24->_anomalyNoAssignedSetDescriptor = 0;

          v183 = +[MADAnalyticsManager getAnalyticsManager];
          manager = v24->_manager;
          v24->_manager = v183;

          v185 = [[MAAutoAssetSummary alloc] initWithAssetSelector:v24->_autoAssetSelector withAssetRepresentation:0 withAssetWasPatched:0 withAssetIsStaged:0 withJobStatus:v24->_currentStatus withScheduledIntervalSecs:0 withScheduledRemainingSecs:0 withPushDelaySecs:0 withActiveClientCount:0 withActiveMonitorCount:0 withMaximumClientCount:0 withTotalClientCount:0];
          latestAutoAssetSummary = v24->_latestAutoAssetSummary;
          v24->_latestAutoAssetSummary = v185;

          resultSetFound = v24->_resultSetFound;
          v24->_resultSetFound = 0;

          *&v24->_setDescriptorDiscardRamped = 0;
          v24->_progressLogsFilteredCount = 0;
          autoAssetSetJob = v24->_autoAssetSetJob;
          stagerJob = v24->_stagerJob;
          v190 = [NSString alloc];
          autoAssetUUID = v24->_autoAssetUUID;
          if (autoAssetSetJob)
          {
            v22 = v226;
            if (stagerJob)
            {
              v192 = [*location assetSetIdentifier];
              v193 = [*location autoAssetEntries];
              v194 = [v190 initWithFormat:@"[JOB-SET-STAGER][%@]setIdentifier:%@[entries:%ld]", autoAssetUUID, v192, objc_msgSend(v193, "count")];
            }

            else
            {
              v192 = [v244 assetSetIdentifier];
              v193 = [v244 clientDomainName];
              v194 = [v190 initWithFormat:@"[JOB-SET][%@]setIdentifier:%@[%@]", autoAssetUUID, v192, v193];
            }

            autoJobName = v24->_autoJobName;
            v24->_autoJobName = v194;
          }

          else
          {
            v195 = v24->_autoAssetSelector;
            v22 = v226;
            if (stagerJob)
            {
              if (v195)
              {
                v192 = [(MAAutoAssetSelector *)v24->_autoAssetSelector summary];
              }

              else
              {
                v192 = @"byUUID";
              }

              v197 = @"bySelector";
              if (v238)
              {
                v197 = @"byUUID";
              }

              v198 = [v190 initWithFormat:@"[JOB-AUTO-STAGER][%@]selector:%@[%@]", autoAssetUUID, v192, v197];
            }

            else
            {
              if (v195)
              {
                v192 = [(MAAutoAssetSelector *)v24->_autoAssetSelector summary];
              }

              else
              {
                v192 = @"byUUID";
              }

              v199 = @"bySelector";
              if (v238)
              {
                v199 = @"byUUID";
              }

              v198 = [v190 initWithFormat:@"[JOB-AUTO][%@]selector:%@[%@]", autoAssetUUID, v192, v199];
            }

            v200 = v24->_autoJobName;
            v24->_autoJobName = v198;

            if (!v195)
            {
              goto LABEL_89;
            }
          }

LABEL_89:
          v201 = [[SUCoreFSM alloc] initMachine:v24->_autoJobName withTable:v24->_stateTable startingIn:@"ReadyToStartJob" usingDelegate:v24 registeringAllInfoClass:objc_opt_class()];
          autoJobFSM = v24->_autoJobFSM;
          v24->_autoJobFSM = v201;

          if (!v24->_autoJobFSM)
          {
            v203 = _MADLog(@"AutoJob");
            if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
            {
              if (v24->_autoAssetSetJob)
              {
                [v244 assetSetIdentifier];
              }

              else
              {
                [v235 summary];
              }
              v204 = ;
              *buf = 138543362;
              v248 = v204;
              _os_log_impl(&dword_0, v203, OS_LOG_TYPE_ERROR, "%{public}@|{initForInstance} failed to initialize AutoJob FSM", buf, 0xCu);
            }
          }

          goto LABEL_96;
        }

        v138 = [MAAutoAssetStatus alloc];
        v139 = objc_opt_respondsToSelector();

        v140 = [MAAutoAssetStatus alloc];
        if (v139)
        {
          v241 = v24->_autoAssetSelector;
          v141 = objc_alloc_init(MAAutoAssetNotifications);
          v142 = [(MADAutoAssetDescriptor *)v24->_downloadingAssetDescriptor metadata];
          v143 = v24->_downloadingUserInitiated;
          if (v245)
          {
            v144 = v24->_downloadingUserInitiated;
            v145 = [v245 patchingAttempted];
            v146 = [v245 stagedPriorToAvailable];
            v147 = [v245 stagedFromOSVersion];
            v148 = [v245 stagedFromBuildVersion];
            v149 = [v245 patchingAttemptError];
            v143 = v144;
            v150 = v149;
          }

          else
          {
            v148 = 0;
            v146 = 0;
            v145 = 0;
            v147 = 0;
            v150 = 0;
          }

          BYTE1(v211) = v146;
          LOBYTE(v211) = v145;
          LOBYTE(v209) = 0;
          v156 = [v140 initWithAssetSelector:v241 withNotifications:v141 withAvailableForUseAttributes:v142 withNewerVersionAttributes:0 withNeverBeenLocked:1 withDownloadUserInitiated:v143 withDownloadProgress:0 withDownloadedNetworkBytes:-1 withDownloadedFilesystemBytes:-1 withDownloadedAsPatch:v209 withPatchedFromBaseSelector:0 withPatchedFromBaseFilesystemBytes:-1 withPatchingAttempted:v211 withStagedPriorToAvailable:v147 withStagedFromOSVersion:v148 withStagedFromBuildVersion:0 withCurrentLockUsage:0 withAvailableForUseError:v150 withPatchingAttemptError:0 withNewerVersionError:?];
          v157 = v24->_currentStatus;
          v24->_currentStatus = v156;

          if (!v245)
          {
            goto LABEL_67;
          }
        }

        else
        {
          v151 = objc_opt_respondsToSelector();

          if ((v151 & 1) == 0)
          {
            v141 = _MADLog(@"AutoJob");
            if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
            {
              v155 = [v235 summary];
              *buf = 138543362;
              v248 = v155;
              _os_log_impl(&dword_0, v141, OS_LOG_TYPE_ERROR, "%{public}@|{initForInstance} [MA_BRAIN_SHIM_PROTOCOL_SUPPORT] unable to create current status for job", buf, 0xCu);
            }

            goto LABEL_68;
          }

          v242 = [MAAutoAssetStatus alloc];
          v230 = v24->_autoAssetSelector;
          v141 = objc_alloc_init(MAAutoAssetNotifications);
          v142 = [(MADAutoAssetDescriptor *)v24->_downloadingAssetDescriptor metadata];
          v152 = v24->_downloadingUserInitiated;
          if (v245)
          {
            v153 = [v245 patchingAttempted];
            v154 = [v245 stagedPriorToAvailable];
            v147 = [v245 stagedFromOSVersion];
            v148 = [v245 stagedFromBuildVersion];
            v150 = [v245 patchingAttemptError];
          }

          else
          {
            v148 = 0;
            v154 = 0;
            v153 = 0;
            v147 = 0;
            v150 = 0;
          }

          BYTE1(v210) = v154;
          LOBYTE(v210) = v153;
          LOBYTE(v208) = 0;
          v206 = [v242 initWithAssetSelector:v230 withNotifications:v141 withAvailableForUseAttributes:v142 withNewerVersionAttributes:0 withDownloadUserInitiated:v152 withDownloadProgress:0 withDownloadedNetworkBytes:-1 withDownloadedFilesystemBytes:-1 withDownloadedAsPatch:v208 withPatchedFromBaseSelector:0 withPatchedFromBaseFilesystemBytes:-1 withPatchingAttempted:v210 withStagedPriorToAvailable:v147 withStagedFromOSVersion:v148 withStagedFromBuildVersion:0 withCurrentLockUsage:0 withAvailableForUseError:v150 withPatchingAttemptError:0 withNewerVersionError:?];
          v207 = v24->_currentStatus;
          v24->_currentStatus = v206;

          if (!v245)
          {
LABEL_67:

            p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
LABEL_68:

            v137 = v24->_currentSetStatus;
            v24->_currentSetStatus = 0;
            goto LABEL_69;
          }
        }

        goto LABEL_67;
      }

      v111 = v44;
    }

    else
    {
      if (!v45)
      {
        v108 = v24->_firstClientName;
        v24->_firstClientName = 0;
        goto LABEL_46;
      }

      v108 = [v45 autoAssetClientName];
      if (v108)
      {
        v109 = [v45 autoAssetClientName];
        goto LABEL_45;
      }

      v111 = v45;
    }

    v109 = [v111 clientProcessName];
    goto LABEL_45;
  }

  v110 = 0;
LABEL_97:

  return v110;
}

- (void)startHandlingClientRequest:(id)a3 withControlInformation:(id)a4
{
  v6 = a3;
  v7 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:startHandlingClientRequest", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [[MADAutoAssetJobParam alloc] initWithClientRequest:v6 withControlInformation:v7];
  v10 = [v6 clientRequestMessage];
  v11 = [v10 messageName];

  [(MADAutoAssetJobParam *)v9 updateSafeSummary];
  if (([SUCore stringIsEqual:v11 to:@"MA-AUTO:INTEREST_IN_CONTENT"]& 1) != 0)
  {
    v12 = @"ClientRequestInterest";
  }

  else if (([SUCore stringIsEqual:v11 to:@"MA-AUTO:CHECK_FOR_NEWER"]& 1) != 0)
  {
    v12 = @"ClientRequestCheck";
  }

  else if (([SUCore stringIsEqual:v11 to:@"MA-AUTO:DETERMINE_IF_AVAILABLE"]& 1) != 0)
  {
    v12 = @"ClientRequestDetermine";
  }

  else if (([SUCore stringIsEqual:v11 to:@"MA-AUTO:LOCK_CONTENT"]& 1) != 0)
  {
    v12 = @"ClientRequestAddLock";
  }

  else if (([SUCore stringIsEqual:v11 to:@"MA-AUTO:CONTINUE_LOCK_USAGE"]& 1) != 0)
  {
    v12 = @"ClientRequestContinueLock";
  }

  else if (([SUCore stringIsEqual:v11 to:@"MA-AUTO:END_LOCK_USAGE"]& 1) != 0 || ([SUCore stringIsEqual:v11 to:@"MA-AUTO:END_PREVIOUS_LOCKS"]& 1) != 0 || ([SUCore stringIsEqual:v11 to:@"MA-AUTO:END_ALL_PREVIOUS_LOCKS"]& 1) != 0)
  {
    v12 = @"ClientRequestRemoveLock";
  }

  else if (([SUCore stringIsEqual:v11 to:@"MA-AUTO-SET:ALTER_ENTRIES_REPRESENTING_ATOMIC"]& 1) != 0)
  {
    v12 = @"SetClientRequestAlterAtomic";
  }

  else if (([SUCore stringIsEqual:v11 to:@"MA-AUTO-SET:NEED_FOR_ATOMIC"]& 1) != 0)
  {
    v12 = @"SetClientRequestNeedAtomic";
  }

  else if (([SUCore stringIsEqual:v11 to:@"MA-AUTO-SET:CHECK_ATOMIC"]& 1) != 0)
  {
    v12 = @"SetClientRequestCheckAtomic";
  }

  else if (([SUCore stringIsEqual:v11 to:@"MA-AUTO-SET:LOCK_ATOMIC"]& 1) != 0)
  {
    v12 = @"SetClientRequestLockAtomic";
  }

  else if (([SUCore stringIsEqual:v11 to:@"MA-AUTO-SET:CONTINUE_ATOMIC_LOCK"]& 1) != 0)
  {
    v12 = @"SetClientRequestContinueAtomic";
  }

  else
  {
    if (([SUCore stringIsEqual:v11 to:@"MA-AUTO-SET:END_ATOMIC_LOCK"]& 1) == 0 && ([SUCore stringIsEqual:v11 to:@"MA-AUTO-SET:END_ATOMIC_LOCKS_FOR_CLIENT"]& 1) == 0)
    {
      v13 = [[NSString alloc] initWithFormat:@"start requested for invalid command:%@", v11];
      [(MADAutoAssetJob *)self trackAnomaly:6106 forReason:v13];
      goto LABEL_16;
    }

    v12 = @"SetClientRequestEndAtomic";
  }

  v13 = [(MADAutoAssetJob *)self autoJobFSM];
  [v13 postEvent:v12 withInfo:v9];
LABEL_16:

  os_activity_scope_leave(&state);
}

- (void)startScheduleTriggeredSelector:(id)a3 withControlInformation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [[MADAutoAssetJobParam alloc] initWithSelector:v7 withControlInformation:v6];

  v8 = [(MADAutoAssetJob *)self autoJobFSM];
  [v8 postEvent:@"SchedulerTriggered" withInfo:v9];
}

- (void)startScheduleTriggeredSetJob:(id)a3
{
  v4 = a3;
  v6 = [[MADAutoAssetJobParam alloc] initWithSelector:0 withControlInformation:v4];

  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  [v5 postEvent:@"SchedulerTriggered" withInfo:v6];
}

- (void)startResumingInFlightDownload:(id)a3 withControlInformation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [[MADAutoAssetJobParam alloc] initWithDescriptor:v7 withControlInformation:v6];

  v8 = [(MADAutoAssetJob *)self autoJobFSM];
  [v8 postEvent:@"StartupDownloading" withInfo:v9];
}

- (void)clientRequestedStatus:(id)a3
{
  v4 = a3;
  v6 = [[MADAutoAssetJobParam alloc] initWithControlInformation:v4];

  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  [v5 postEvent:@"SimulateClientRequestedStatus" withInfo:v6];
}

- (void)handleSimulateOperation:(id)a3
{
  v4 = a3;
  v6 = [[MADAutoAssetJobParam alloc] initWithControlInformation:v4];

  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  [v5 postEvent:@"SimulateOperation" withInfo:v6];
}

- (void)handleDownloadCatalogJobFinished:(id)a3 withCatalog:(id)a4 downloadError:(id)a5
{
  v12 = a3;
  v8 = a4;
  if (a5)
  {
    a5 = [MAAutoAssetError buildError:6107 fromOperation:@"handleDownloadCatalogJobFinished" underlyingError:a5 withDescription:@"error while downloading catalog (performing auto-asset lookup)"];
    v9 = @"CatalogDownloadFailure";
  }

  else
  {
    v9 = @"CatalogDownloadSuccess";
  }

  v10 = [[MADAutoAssetJobParam alloc] initForFinishedJobID:v12 withCatalog:v8 whereCatalogFromLookupCache:0 withError:a5];
  v11 = [(MADAutoAssetJob *)self autoJobFSM];
  [v11 postEvent:v9 withInfo:v10];
}

- (void)handleDownloadConfigJobFinished:(id)a3 withDownloadOptions:(id)a4 configError:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(MADAutoAssetJob *)self autoJobFSM];
  v10 = v9;
  if (v8)
  {
    v11 = [v9 diag];
    v12 = [v8 checkedCode];
    v13 = [MAAutoAssetError buildError:6107 fromOperation:@"handleDownloadConfigJobFinished" underlyingError:v8 withDescription:@"error while attempting to boost to user-initiated (performing auto-asset content download)"];
    [v11 trackAnomaly:@"{handleDownloadConfigJobFinished} Failed to config download" forReason:@"Error while attempting to config download" withResult:v12 withError:v13];
  }

  else
  {
    v14 = [v9 extendedStateQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __83__MADAutoAssetJob_handleDownloadConfigJobFinished_withDownloadOptions_configError___block_invoke;
    v15[3] = &unk_4B2B18;
    v16 = v7;
    v17 = self;
    dispatch_async(v14, v15);
  }
}

id __83__MADAutoAssetJob_handleDownloadConfigJobFinished_withDownloadOptions_configError___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) allowsCellularAccess] && objc_msgSend(*(a1 + 40), "configuredToCellular"))
  {
    [*(a1 + 40) setBoostedToCellular:1];
  }

  if ([*(a1 + 32) allowsExpensiveAccess] && objc_msgSend(*(a1 + 40), "configuredToExpensive"))
  {
    [*(a1 + 40) setBoostedToExpensive:1];
  }

  if (([*(a1 + 32) discretionary] & 1) == 0 && objc_msgSend(*(a1 + 40), "configuredToUserInitiated"))
  {
    [*(a1 + 40) setBoostedToUserInitiated:1];
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 _updateDownloadOptions:v3];
}

- (void)handleDownloadAssetProgressForJob:(id)a3 withProgress:(id)a4
{
  v5 = a4;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __66__MADAutoAssetJob_handleDownloadAssetProgressForJob_withProgress___block_invoke;
  v9[3] = &unk_4B2B18;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, v9);
}

id __66__MADAutoAssetJob_handleDownloadAssetProgressForJob_withProgress___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) reportingProgress];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 statusChangeDownloadProgress:v4];
  }

  return result;
}

- (void)handleDownloadAssetJobFinished:(id)a3 downloadError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [MAAutoAssetError buildError:6107 fromOperation:@"handleDownloadAssetJobFinished" underlyingError:v7 withDescription:@"error while downloading asset (performing auto-asset content download)"];
  }

  else
  {
    v8 = 0;
  }

  v9 = [[MADAutoAssetJobParam alloc] initForFinishedJobID:v6 withError:v8];
  if ([(MADAutoAssetJob *)self autoAssetSetJob]&& +[MAAIRBEventReporter isAvailable])
  {
    v29 = v6;
    v10 = [MAAIRBMobileAssetOperationMetadata alloc];
    v11 = [MADAutoAssetHistoryTracker operationName:1701];
    v28 = [(MAAIRBMobileAssetOperationMetadata *)v10 initWithCode:1701 name:v11];

    v12 = [MAAIRBMobileAssetAssetSelector alloc];
    v27 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    v13 = [v27 assetType];
    v14 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    v15 = [v14 assetSpecifier];
    v16 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    v17 = [v16 assetVersion];
    v18 = [(MAAIRBMobileAssetAssetSelector *)v12 initWithAssetType:v13 assetSpecifier:v15 assetVersion:v17];

    v19 = [MAAIRBAppleIntelligenceAssetDeliveryEventType typeAssetJob:v28 assetSelector:v18 downloadResult:0];
    v20 = [MAAIRBAppleIntelligenceAssetDeliveryEvent alloc];
    v21 = v20;
    if (v7)
    {
      v30 = v7;
      v22 = [NSArray arrayWithObjects:&v30 count:1];
      v23 = [(MAAIRBAppleIntelligenceAssetDeliveryEvent *)v21 initWithErrors:v22 type:v19];
    }

    else
    {
      v23 = [(MAAIRBAppleIntelligenceAssetDeliveryEvent *)v20 initWithErrors:&__NSArray0__struct type:v19];
    }

    [MAAIRBEventReporter emitAppleIntelligenceEndEvent:v23];

    v6 = v29;
  }

  v24 = [(MADAutoAssetJob *)self autoJobFSM];
  v25 = v24;
  if (v7)
  {
    v26 = @"DownloadFailure";
  }

  else
  {
    v26 = @"DownloadSuccess";
  }

  [v24 postEvent:v26 withInfo:v9];
}

- (void)exclusiveLookupForAssetTypeGranted:(id)a3
{
  v5 = [[MADAutoAssetJobParam alloc] initWithSafeSummary:@"exclusiveLookupForAssetTypeGranted"];
  v4 = [(MADAutoAssetJob *)self autoJobFSM];
  [v4 postEvent:@"LookupGrantObtained" withInfo:v5];
}

- (void)persistedStateForDownloadJob:(id)a3
{
  v5 = [[MADAutoAssetJobParam alloc] initWithSafeSummary:@"persistedStateForDownloadJob"];
  v4 = [(MADAutoAssetJob *)self autoJobFSM];
  [v4 postEvent:@"PersistedAssigned" withInfo:v5];
}

- (void)startStagerDetermineIfAvailable:(id)a3 withAssetTargetBuildVersion:(id)a4 withAssetTargetTrainName:(id)a5 withAssetTargetRestoreVersion:(id)a6 withControlInformation:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v18 = [[MADAutoAssetJobParam alloc] initWithAssetTargetOSVersion:v16 withAssetTargetBuildVersion:v15 withAssetTargetTrainName:v14 withAssetTargetRestoreVersion:v13 usingCachedAutoAssetCatalog:0 withControlInformation:v12];

  v17 = [(MADAutoAssetJob *)self autoJobFSM];
  [v17 postEvent:@"StagerDetermineIfAvailable" withInfo:v18];
}

- (void)startStagerDownloadForStaging:(id)a3 withAssetTargetBuildVersion:(id)a4 usingCachedAutoAssetCatalog:(id)a5 withControlInformation:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v15 = [[MADAutoAssetJobParam alloc] initWithAssetTargetOSVersion:v13 withAssetTargetBuildVersion:v12 withAssetTargetTrainName:0 withAssetTargetRestoreVersion:0 usingCachedAutoAssetCatalog:v11 withControlInformation:v10];

  v14 = [(MADAutoAssetJob *)self autoJobFSM];
  [v14 postEvent:@"StagerDownloadForStaging" withInfo:v15];
}

- (void)cancelAutoAssetJob
{
  v4 = [[MADAutoAssetJobParam alloc] initWithSafeSummary:@"cancelAutoAssetJob"];
  v3 = [(MADAutoAssetJob *)self autoJobFSM];
  [v3 postEvent:@"CancelJob" withInfo:v4];
}

- (void)finishedAcknowledgeAutoAssetJob
{
  v4 = [[MADAutoAssetJobParam alloc] initWithSafeSummary:@"finishedAcknowledgeAutoAssetJob"];
  v3 = [(MADAutoAssetJob *)self autoJobFSM];
  [v3 postEvent:@"FinishAcknowledged" withInfo:v4];
}

- (id)_summary
{
  v3 = [NSString alloc];
  v4 = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];
  if (v4)
  {
    v5 = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];
    v6 = [v3 initWithFormat:@"triggeringLayer:%@", v5];
  }

  else
  {
    v6 = [v3 initWithFormat:@"triggeringLayer:%@", @"N"];
  }

  return v6;
}

- (id)_longSummary
{
  v143 = [NSString alloc];
  [(MADAutoAssetJob *)self autoAssetInstance];
  v160 = v3 = @"N";
  if (v160)
  {
    v4 = @"Y";
  }

  else
  {
    v4 = @"N";
  }

  v142 = v4;
  v159 = [(MADAutoAssetJob *)self autoAssetSelector];
  if (v159)
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  v141 = v5;
  v158 = [(MADAutoAssetJob *)self autoAssetUUID];
  if (v158)
  {
    v6 = @"Y";
  }

  else
  {
    v6 = @"N";
  }

  v140 = v6;
  v157 = [(MADAutoAssetJob *)self activeJobTasks];
  v139 = [v157 count];
  v137 = [(MADAutoAssetJob *)self clientRequestCount];
  v156 = [(MADAutoAssetJob *)self stateTable];
  if (v156)
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  v136 = v7;
  v155 = [(MADAutoAssetJob *)self autoJobFSM];
  if (v155)
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  v134 = v8;
  if ([(MADAutoAssetJob *)self schedulerInvolved])
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  v133 = v9;
  if ([(MADAutoAssetJob *)self potentialNetworkFailure])
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  v132 = v10;
  if ([(MADAutoAssetJob *)self beingCanceled])
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  v130 = v11;
  if ([(MADAutoAssetJob *)self earlierSchedulerInvolved])
  {
    v12 = @"Y";
  }

  else
  {
    v12 = @"N";
  }

  v128 = v12;
  if ([(MADAutoAssetJob *)self earlierPotentialNetworkFailure])
  {
    v13 = @"Y";
  }

  else
  {
    v13 = @"N";
  }

  v127 = v13;
  v154 = [(MADAutoAssetJob *)self bondedWithJob];
  if (v154)
  {
    v14 = @"Y";
  }

  else
  {
    v14 = @"N";
  }

  v125 = v14;
  v153 = [(MADAutoAssetJob *)self activeInstance];
  if (v153)
  {
    v15 = @"Y";
  }

  else
  {
    v15 = @"N";
  }

  v124 = v15;
  v152 = [(MADAutoAssetJob *)self activeDesire];
  if (v152)
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  v123 = v16;
  v151 = [(MADAutoAssetJob *)self autoAssetSetDesire];
  if ([v151 awaitDownloadingOfDiscovered])
  {
    v17 = @"Y";
  }

  else
  {
    v17 = @"N";
  }

  v121 = v17;
  if ([(MADAutoAssetJob *)self setCheckAwaitingDownload])
  {
    v18 = @"Y";
  }

  else
  {
    v18 = @"N";
  }

  v120 = v18;
  v150 = [(MADAutoAssetJob *)self activeFound];
  if (v150)
  {
    v19 = @"Y";
  }

  else
  {
    v19 = @"N";
  }

  v118 = v19;
  v149 = [(MADAutoAssetJob *)self activeEnd];
  if (v149)
  {
    v20 = @"Y";
  }

  else
  {
    v20 = @"N";
  }

  v116 = v20;
  v148 = [(MADAutoAssetJob *)self activeListen];
  if (v148)
  {
    v21 = @"Y";
  }

  else
  {
    v21 = @"N";
  }

  v114 = v21;
  v147 = [(MADAutoAssetJob *)self autoAssetJobInformation];
  if (v147)
  {
    v22 = @"Y";
  }

  else
  {
    v22 = @"N";
  }

  v113 = v22;
  v146 = [(MADAutoAssetJob *)self aggregatedClientAssetPolicySpecified];
  if (v146)
  {
    v67 = [(MADAutoAssetJob *)self aggregatedClientAssetPolicy];
    v23 = [v67 summary];
  }

  else
  {
    v23 = @"N";
  }

  if ([(MADAutoAssetJob *)self clientRequestedOperation])
  {
    v24 = @"Y";
  }

  else
  {
    v24 = @"N";
  }

  v110 = v24;
  v25 = [(MADAutoAssetJob *)self firstClientName];
  if (v25)
  {
    v3 = [(MADAutoAssetJob *)self firstClientName];
  }

  v26 = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];
  v27 = @"N";
  if (v26)
  {
    v135 = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];
  }

  else
  {
    v135 = @"N";
  }

  v131 = [(MADAutoAssetJob *)self onFilesystemByVersion];
  v108 = [v131 count];
  v129 = [(MADAutoAssetJob *)self checkUUIDBasePortion];
  if (v129)
  {
    v28 = @"Y";
  }

  else
  {
    v28 = @"N";
  }

  v107 = v28;
  v126 = [(MADAutoAssetJob *)self checkUUID];
  if (v126)
  {
    v29 = @"Y";
  }

  else
  {
    v29 = @"N";
  }

  v106 = v29;
  if ([(MADAutoAssetJob *)self holdingLookupGrant])
  {
    v30 = @"Y";
  }

  else
  {
    v30 = @"N";
  }

  v105 = v30;
  if ([(MADAutoAssetJob *)self rampingForeground])
  {
    v31 = @"Y";
  }

  else
  {
    v31 = @"N";
  }

  v104 = v31;
  if ([(MADAutoAssetJob *)self rampingForegroundLatched])
  {
    v32 = @"Y";
  }

  else
  {
    v32 = @"N";
  }

  v103 = v32;
  v122 = [(MADAutoAssetJob *)self catalogDownloadOptions];
  if (v122)
  {
    v33 = @"Y";
  }

  else
  {
    v33 = @"N";
  }

  v101 = v33;
  v119 = [(MADAutoAssetJob *)self baseForPatch];
  if (v119)
  {
    v34 = @"Y";
  }

  else
  {
    v34 = @"N";
  }

  v100 = v34;
  v117 = [(MADAutoAssetJob *)self foundNewerPatch];
  if (v117)
  {
    v35 = @"Y";
  }

  else
  {
    v35 = @"N";
  }

  v99 = v35;
  v115 = [(MADAutoAssetJob *)self foundNewerFull];
  if (v115)
  {
    v36 = @"Y";
  }

  else
  {
    v36 = @"N";
  }

  v98 = v36;
  v112 = [(MADAutoAssetJob *)self newerFoundAssetDescriptor];
  if (v112)
  {
    v37 = @"Y";
  }

  else
  {
    v37 = @"N";
  }

  v97 = v37;
  v111 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
  if (v111)
  {
    v38 = @"Y";
  }

  else
  {
    v38 = @"N";
  }

  v95 = v38;
  if ([(MADAutoAssetJob *)self schedulerTriggerReceived])
  {
    v39 = @"Y";
  }

  else
  {
    v39 = @"N";
  }

  v94 = v39;
  if ([(MADAutoAssetJob *)self haveReceivedLookupResponse])
  {
    v40 = @"Y";
  }

  else
  {
    v40 = @"N";
  }

  v93 = v40;
  if ([(MADAutoAssetJob *)self vendingAtomicInstanceForConfiguredEntries])
  {
    v41 = @"Y";
  }

  else
  {
    v41 = @"N";
  }

  v92 = v41;
  if ([(MADAutoAssetJob *)self downloadingUserInitiated])
  {
    v42 = @"Y";
  }

  else
  {
    v42 = @"N";
  }

  v91 = v42;
  if ([(MADAutoAssetJob *)self configuredToUserInitiated])
  {
    v43 = @"Y";
  }

  else
  {
    v43 = @"N";
  }

  v89 = v43;
  if ([(MADAutoAssetJob *)self checkingAssetContent])
  {
    v44 = @"Y";
  }

  else
  {
    v44 = @"N";
  }

  v88 = v44;
  if ([(MADAutoAssetJob *)self determiningAssetContent])
  {
    v45 = @"Y";
  }

  else
  {
    v45 = @"N";
  }

  v86 = v45;
  if ([(MADAutoAssetJob *)self lockingAssetContent])
  {
    v46 = @"Y";
  }

  else
  {
    v46 = @"N";
  }

  v84 = v46;
  if ([(MADAutoAssetJob *)self wasPatched])
  {
    v47 = @"Y";
  }

  else
  {
    v47 = @"N";
  }

  v82 = v47;
  v48 = [(MADAutoAssetJob *)self latestInstalledAssetVersion];
  v144 = v25;
  if (v48)
  {
    v27 = [(MADAutoAssetJob *)self latestInstalledAssetVersion];
  }

  v49 = [(MADAutoAssetJob *)self latestInstalledAssetBuild];
  v50 = @"N";
  if (v49)
  {
    v51 = [(MADAutoAssetJob *)self latestInstalledAssetBuild];
  }

  else
  {
    v51 = @"N";
  }

  v161 = [(MADAutoAssetJob *)self currentStatus];
  if (v161 || ([(MADAutoAssetJob *)self currentSetStatus], (v66 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v70 = [(MADAutoAssetJob *)self currentStatus];
    if (v70)
    {
      v52 = @"Y";
    }

    else
    {
      v52 = @"N";
    }

    v78 = v52;
    v96 = 1;
  }

  else
  {
    v66 = 0;
    v96 = 0;
    v78 = @"N";
  }

  v162 = [(MADAutoAssetJob *)self progressReportPhaseName];
  v90 = [(MADAutoAssetJob *)self lastReportedPatchProgress];
  if (v90)
  {
    v53 = @"Y";
  }

  else
  {
    v53 = @"N";
  }

  v77 = v53;
  v87 = [(MADAutoAssetJob *)self resultSelector];
  if (v87)
  {
    v54 = @"Y";
  }

  else
  {
    v54 = @"N";
  }

  v75 = v54;
  v85 = [(MADAutoAssetJob *)self resultInstance];
  if (v85)
  {
    v55 = @"Y";
  }

  else
  {
    v55 = @"N";
  }

  v74 = v55;
  v83 = [(MADAutoAssetJob *)self resultFound];
  if (v83)
  {
    v56 = @"Y";
  }

  else
  {
    v56 = @"N";
  }

  v73 = v56;
  v81 = [(MADAutoAssetJob *)self resultEnd];
  if (v81)
  {
    v57 = @"Y";
  }

  else
  {
    v57 = @"N";
  }

  v72 = v57;
  v80 = [(MADAutoAssetJob *)self resultListen];
  if (v80)
  {
    v58 = @"Y";
  }

  else
  {
    v58 = @"N";
  }

  v71 = v58;
  v79 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  v145 = v23;
  if (v79)
  {
    v69 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
    v50 = [v69 summary];
  }

  v76 = [(MADAutoAssetJob *)self assignedSetDescriptor];
  v138 = v26;
  v109 = v48;
  v102 = v51;
  if (v76)
  {
    v68 = [(MADAutoAssetJob *)self assignedSetDescriptor];
    v59 = [v68 newIdentityName];
  }

  else
  {
    v59 = @"N";
  }

  v60 = [(MADAutoAssetJob *)self nextSetSpecifierToDownload];
  v61 = [(MADAutoAssetJob *)self resultSetFound];
  if (v61)
  {
    v62 = @"Y";
  }

  else
  {
    v62 = @"N";
  }

  [(MADAutoAssetJob *)self setDescriptorDiscardRamped];
  v63 = [v143 initWithFormat:@"[overall]instance:%@, selector:%@, UUID:%@, tasks:%lu, requests:%ld, table:%@, FSM:%@, sched:%@, NWFail:%@|beingCancled:%@|[earlier]sched:%@, NWFail:%@|bonded:%@|[active]instance:%@, desire:%@(awaitDownload:%@, checkAwait:%@), found:%@, end:%@, listen:%@, jobInfo:%@|[aggregated]policy:%@, clientRequested:%@|firstClientName:%@, triggeringLayer:%@|onFilesystemByVersion:%ld|[check]Base:%@, UUID:%@, lookupGrant:%@, rampFG:%@, rampLatch:%@, options:%@|[asset]base:%@, patch:%@, full:%@, newer:%@, downloading:%@, scheduler:%@, lookupRsp:%@(forConfig:%@), user:%@, boosting:%@, checking:%@, determining:%@, locking:%@, patched:%@|[installed]:version:%@, build:%@|[status]current:%@, progress:%@, lastPatch:%@|[results]selector:%@, instance:%@, found:%@, end:%@, listen:%@, [set]aggregatedPolicy:%@, descriptor:%@, next:%ld, found:%@, discardRampled:%@", v142, v141, v140, v139, v137, v136, v134, v133, v132, v130, v128, v127, v125, v124, v123, v121, v120, v118, v116, v114, v113, v145, v110, v3, v135, v108, v107, v106, v105, v104, v103, v101, v100, v99, v98, v97, v95, v94, v93, v92, v91, v89, v88, v86, v84, v82, v27, v102, v78, v162, v77, v75, v74, v73, v72, v71, v50, v59, v60, v62];

  if (v76)
  {
  }

  if (v79)
  {
  }

  if (v96)
  {
  }

  v64 = v161;
  if (!v161)
  {

    v64 = 0;
  }

  if (v49)
  {
  }

  if (v109)
  {
  }

  if (v138)
  {
  }

  if (v144)
  {
  }

  if (v146)
  {
  }

  return v63;
}

- (id)_updateLatestSummary
{
  v3 = [(MADAutoAssetJob *)self autoJobFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(MADAutoAssetJob *)self _summary];
  [(MADAutoAssetJob *)self setLatestSafeSummary:v5];

  v6 = [MAAutoAssetSummary alloc];
  v7 = [(MADAutoAssetJob *)self mostSpecificSelectorToReport];
  v8 = [(MADAutoAssetJob *)self wasPatched];
  v9 = [(MADAutoAssetJob *)self currentStatus];
  v10 = [v6 initWithAssetSelector:v7 withAssetRepresentation:0 withAssetWasPatched:v8 withAssetIsStaged:0 withJobStatus:v9 withScheduledIntervalSecs:0 withScheduledRemainingSecs:0 withPushDelaySecs:0 withActiveClientCount:0 withActiveMonitorCount:0 withMaximumClientCount:0 withTotalClientCount:0];
  [(MADAutoAssetJob *)self setLatestAutoAssetSummary:v10];

  return [(MADAutoAssetJob *)self latestSafeSummary];
}

- (id)clientName
{
  v3 = [(MADAutoAssetJob *)self activeInstance];

  if (v3)
  {
    v4 = [(MADAutoAssetJob *)self activeInstance];
LABEL_5:
    v6 = v4;
    v7 = [v4 autoAssetClientName];

    goto LABEL_6;
  }

  v5 = [(MADAutoAssetJob *)self autoAssetInstance];

  if (v5)
  {
    v4 = [(MADAutoAssetJob *)self autoAssetInstance];
    goto LABEL_5;
  }

  v7 = @"auto-asset-client";
LABEL_6:

  return v7;
}

- (int64_t)action_AddTaskDecideFilesystem:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AddTaskDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v12);

  v9 = [v5 clientRequest];
  [(MADAutoAssetJob *)self _rememberIfSchedulerInvolved:v9];

  v10 = [v5 clientRequest];
  [(MADAutoAssetJob *)self _setPolicyFromClientRequest:v10];

  [(MADAutoAssetJob *)self addToActiveJobTasks:v5];
  [(MADAutoAssetJob *)self checkFilesystemAndDecidePurgeOrLookup];
  os_activity_scope_leave(&v12);

  return 0;
}

- (int64_t)action_AddTaskSchedulerDecideFilesystem:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AddTaskSchedulerDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self setSchedulerInvolved:1, v10.opaque[0], v10.opaque[1]];
  [(MADAutoAssetJob *)self setSetCheckAwaitingDownload:1];
  [(MADAutoAssetJob *)self addToActiveJobTasks:v5];
  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    [(MADAutoAssetJob *)self clearSetStatusStartingSetJob];
  }

  [(MADAutoAssetJob *)self checkFilesystemAndDecidePurgeOrLookup];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_AddTaskCheckDecideFilesystem:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AddTaskCheckDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v12);

  v9 = [v5 clientRequest];
  [(MADAutoAssetJob *)self _rememberIfSchedulerInvolved:v9];

  v10 = [v5 clientRequest];
  [(MADAutoAssetJob *)self _setPolicyFromClientRequest:v10];

  [(MADAutoAssetJob *)self addToActiveJobTasks:v5];
  [(MADAutoAssetJob *)self setCheckingAssetContent:1];
  [(MADAutoAssetJob *)self checkFilesystemAndDecidePurgeOrLookup];
  os_activity_scope_leave(&v12);

  return 0;
}

- (int64_t)action_AddTaskDetermineDecideFilesystem:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AddTaskDetermineDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self addToActiveJobTasks:v5, v10.opaque[0], v10.opaque[1]];
  [(MADAutoAssetJob *)self setDeterminingAssetContent:1];
  [(MADAutoAssetJob *)self checkFilesystemAndDecidePurgeOrLookup];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_AddTaskInterestDecideFilesystem:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AddTaskInterestDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v12);

  v9 = [v5 clientRequest];
  [(MADAutoAssetJob *)self _rememberIfSchedulerInvolved:v9];

  v10 = [v5 clientRequest];
  [(MADAutoAssetJob *)self _setPolicyFromClientRequest:v10];

  [(MADAutoAssetJob *)self addToActiveJobTasks:v5];
  [(MADAutoAssetJob *)self replyToClientForJobParam:v5 withResponseError:0];
  [(MADAutoAssetJob *)self checkFilesystemAndDecidePurgeOrLookup];
  os_activity_scope_leave(&v12);

  return 0;
}

- (int64_t)action_AddTaskLockDecideFilesystem:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AddTaskLockDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v12);

  v9 = [v5 clientRequest];
  [(MADAutoAssetJob *)self _rememberIfSchedulerInvolved:v9];

  v10 = [v5 clientRequest];
  [(MADAutoAssetJob *)self _setPolicyFromClientRequest:v10];

  [(MADAutoAssetJob *)self addToActiveJobTasks:v5];
  [(MADAutoAssetJob *)self setLockingAssetContent:1];
  [(MADAutoAssetJob *)self checkFilesystemAndDecidePurgeOrLookup];
  os_activity_scope_leave(&v12);

  return 0;
}

- (int64_t)action_RequestLookupGrant:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:RequestLookupGrant", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self obtainLookupGrant:v10.opaque[0]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_DownloadCatalog:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:DownloadCatalog", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self setHoldingLookupGrant:1, v10.opaque[0], v10.opaque[1]];
  [(MADAutoAssetJob *)self downloadCatalog:@"DownloadCatalog"];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_StagerDetermineDecideFilesystem:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:StagerDetermineDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v14);

  [(MADAutoAssetJob *)self simulateSet:v5, v14.opaque[0], v14.opaque[1]];
  if (![(MADAutoAssetJob *)self stagerJob])
  {
    [(MADAutoAssetJob *)self trackAnomaly:6108 forReason:@"{StagerDetermineDecideFilesystem} triggered to start a stager-job when job not created as a stager-job"];
    [(MADAutoAssetJob *)self setStagerJob:1];
  }

  [(MADAutoAssetJob *)self setStagerJobDownloadContent:0];
  [(MADAutoAssetJob *)self setStagerJobResultsReported:0];
  [(MADAutoAssetJob *)self setDeterminingAssetContent:1];
  v9 = [v5 assetTargetOSVersion];
  [(MADAutoAssetJob *)self setStagerAssetTargetOSVersion:v9];

  v10 = [v5 assetTargetBuildVersion];
  [(MADAutoAssetJob *)self setStagerAssetTargetBuildVersion:v10];

  v11 = [v5 assetTargetTrainName];
  [(MADAutoAssetJob *)self setStagerAssetTargetTrainName:v11];

  v12 = [v5 assetTargetRestoreVersion];
  [(MADAutoAssetJob *)self setStagerAssetTargetRestoreVersion:v12];

  [(MADAutoAssetJob *)self setStagerJobAutoAssetCatalog:0];
  [(MADAutoAssetJob *)self checkFilesystemAndDecidePurgeOrLookup];
  os_activity_scope_leave(&v14);

  return 0;
}

- (int64_t)action_StagerDownloadDecideFilesystem:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v28.opaque[0] = 0;
  v28.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:StagerDownloadDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v28);

  [(MADAutoAssetJob *)self simulateSet:v5, v28.opaque[0], v28.opaque[1]];
  if (![(MADAutoAssetJob *)self stagerJob])
  {
    [(MADAutoAssetJob *)self trackAnomaly:6108 forReason:@"{StagerDownloadDecideFilesystem} triggered to start a stager-job when job not created as a stager-job"];
    [(MADAutoAssetJob *)self setStagerJob:1];
  }

  v9 = [(MADAutoAssetJob *)self checkUUID];
  v10 = v9 == 0;

  if (v10)
  {
    v11 = [(MADAutoAssetJob *)self autoAssetUUID];
    [(MADAutoAssetJob *)self setCheckUUID:v11];
  }

  [(MADAutoAssetJob *)self setStagerJobDownloadContent:1];
  [(MADAutoAssetJob *)self setStagerJobResultsReported:0];
  [(MADAutoAssetJob *)self setCheckingAssetContent:1];
  v12 = [v5 assetTargetOSVersion];
  [(MADAutoAssetJob *)self setStagerAssetTargetOSVersion:v12];

  v13 = [v5 assetTargetBuildVersion];
  [(MADAutoAssetJob *)self setStagerAssetTargetBuildVersion:v13];

  v14 = [v5 autoAssetCatalog];
  [(MADAutoAssetJob *)self setStagerJobAutoAssetCatalog:v14];

  [(MADAutoAssetJob *)self setStagerAssetTargetTrainName:0];
  [(MADAutoAssetJob *)self setStagerAssetTargetRestoreVersion:0];
  [(MADAutoAssetJob *)self setConfiguredToUserInitiated:1];
  v15 = [(MADAutoAssetJob *)self refreshOnFilesystemFromManagerPromotingIfStaged:0];
  v16 = [(MADAutoAssetJob *)self autoAssetSelector];
  v17 = [v16 assetVersion];
  v18 = [(MADAutoAssetJob *)self installedOnFilesystemWithVersion:v17 fromLocation:@"StagerDownloadDecideFilesystem"];

  if (v18)
  {
    [(MADAutoAssetJob *)self updateResultPropertiesWithDescriptor:v18];
    v19 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(MADAutoAssetJob *)self autoJobName];
      v21 = [v18 selectorName];
      *buf = 138543618;
      v30 = v20;
      v31 = 2114;
      v32 = v21;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ | {StagerDownloadDecideFilesystem} found already downloaded (on filesystem) asset | selector:%{public}@", buf, 0x16u);
    }

    v22 = @"AlreadyDownloaded";
  }

  else
  {
    v22 = @"FoundCachedLookupResult";
  }

  v23 = [MADAutoAssetJobParam alloc];
  v24 = [(MADAutoAssetJob *)self _updateLatestSummary];
  v25 = [(MADAutoAssetJobParam *)v23 initWithSafeSummary:v24];

  v26 = [(MADAutoAssetJob *)self autoJobFSM];
  [v26 followupEvent:v22 withInfo:v25];

  os_activity_scope_leave(&v28);
  return 0;
}

- (int64_t)action_DecideStartupDownloading:(id)a3 error:(id *)a4
{
  v74 = a3;
  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = _os_activity_create(&dword_0, "MADJob:DecideStartupDownloading", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);

  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {
    [(MADAutoAssetJob *)self simulateSet:v74];
    v8 = [v74 autoAssetDescriptor];
    if (!v8)
    {
      v9 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [(MADAutoAssetJob *)self autoJobName];
        v11 = [(MADAutoAssetJob *)self _updateLatestSummary];
        *buf = 138543618;
        v77 = v10;
        v78 = 2114;
        v79 = v11;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%{public}@ {DecideStartupDownloading} | inFlightDescriptor not provided\nJOB-SUMMARY:%{public}@", buf, 0x16u);
      }

      v12 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
      v13 = v12 == 0;

      if (v13)
      {
        v8 = 0;
        v70 = @"CannotProceed";
LABEL_31:
        v62 = [(MADAutoAssetJob *)self autoJobFSM];
        [v62 followupEvent:v70 withInfo:v74];

        goto LABEL_32;
      }

      v8 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
      v14 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(MADAutoAssetJob *)self autoJobName];
        v16 = [v8 summary];
        *buf = 138543618;
        v77 = v15;
        v78 = 2114;
        v79 = v16;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ {DecideStartupDownloading} | able to deduce in-flight descriptor from params provided on auto-asset-job init | inFlightDescriptor:%{public}@", buf, 0x16u);
      }
    }

    v17 = [v8 isPatch];
    v18 = @"DownloadFull";
    if (v17)
    {
      v18 = @"DownloadPatch";
    }

    v70 = v18;
    [(MADAutoAssetJob *)self setReportingProgress:1];
    v19 = [v8 assetVersion];
    v20 = v19 == 0;

    if (v20)
    {
      v25 = [MAAutoAssetSelector alloc];
      v22 = [v8 assetType];
      v23 = [v8 assetSpecifier];
      v73 = [v25 initForAssetType:v22 withAssetSpecifier:v23];
    }

    else
    {
      v21 = [MAAutoAssetSelector alloc];
      v22 = [v8 assetType];
      v23 = [v8 assetSpecifier];
      v24 = [v8 assetVersion];
      v73 = [v21 initForAssetType:v22 withAssetSpecifier:v23 matchingAssetVersion:v24];
    }

    v26 = [v8 assetType];
    v27 = [v8 assetId];
    v71 = getAutoLocalUrlFromTypeAndIdWithPurpose(v26, v27, 2, @"auto");

    v28 = objc_alloc_init(MAAutoAssetNotifications);
    [v28 setNewerVersionDiscovered:1];
    [v28 setDownloadPending:1];
    v72 = v28;
    v29 = [MAAutoAssetStatus alloc];
    LOBYTE(v27) = objc_opt_respondsToSelector();

    if (v27)
    {
      v68 = [MAAutoAssetStatus alloc];
      v30 = [v8 metadata];
      v31 = [v8 metadata];
      v32 = [(MADAutoAssetJob *)self downloadingUserInitiated];
      v33 = [v8 patchingAttempted];
      v34 = [v8 stagedPriorToAvailable];
      v35 = [v8 stagedFromOSVersion];
      v36 = [v8 stagedFromBuildVersion];
      v37 = [v8 patchingAttemptError];
      BYTE1(v67) = v34;
      LOBYTE(v67) = v33;
      LOBYTE(v65) = 0;
      v38 = [v68 initWithAssetSelector:v73 withNotifications:v72 withAvailableForUseAttributes:v30 withNewerVersionAttributes:v31 withNeverBeenLocked:1 withDownloadUserInitiated:v32 withDownloadProgress:0 withDownloadedNetworkBytes:-1 withDownloadedFilesystemBytes:-1 withDownloadedAsPatch:v65 withPatchedFromBaseSelector:0 withPatchedFromBaseFilesystemBytes:-1 withPatchingAttempted:v67 withStagedPriorToAvailable:v35 withStagedFromOSVersion:v36 withStagedFromBuildVersion:0 withCurrentLockUsage:0 withAvailableForUseError:v37 withPatchingAttemptError:0 withNewerVersionError:?];

      v39 = v30;
    }

    else
    {
      v40 = [MAAutoAssetStatus alloc];
      v41 = objc_opt_respondsToSelector();

      if (v41)
      {
        v69 = [MAAutoAssetStatus alloc];
        v42 = [v8 metadata];
        v43 = [v8 metadata];
        v44 = [(MADAutoAssetJob *)self downloadingUserInitiated];
        v45 = [v8 patchingAttempted];
        v46 = [v8 stagedPriorToAvailable];
        v47 = [v8 stagedFromOSVersion];
        v48 = [v8 stagedFromBuildVersion];
        v49 = [v8 patchingAttemptError];
        BYTE1(v66) = v46;
        LOBYTE(v66) = v45;
        LOBYTE(v64) = 0;
        v38 = [v69 initWithAssetSelector:v73 withNotifications:v72 withAvailableForUseAttributes:v42 withNewerVersionAttributes:v43 withDownloadUserInitiated:v44 withDownloadProgress:0 withDownloadedNetworkBytes:-1 withDownloadedFilesystemBytes:-1 withDownloadedAsPatch:v64 withPatchedFromBaseSelector:0 withPatchedFromBaseFilesystemBytes:-1 withPatchingAttempted:v66 withStagedPriorToAvailable:v47 withStagedFromOSVersion:v48 withStagedFromBuildVersion:0 withCurrentLockUsage:0 withAvailableForUseError:v49 withPatchingAttemptError:0 withNewerVersionError:?];

        v39 = v42;
      }

      else
      {
        v39 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v50 = [(MADAutoAssetJob *)self autoJobName];
          v51 = [(MADAutoAssetJob *)self _updateLatestSummary];
          *buf = 138543618;
          v77 = v50;
          v78 = 2114;
          v79 = v51;
          _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "%{public}@ {DecideStartupDownloading} [MA_BRAIN_SHIM_PROTOCOL_SUPPORT] unable to create current status for job\nJOB-SUMMARY:%{public}@", buf, 0x16u);
        }

        v38 = 0;
      }
    }

    v52 = [MAAutoAssetInfoInstance alloc];
    v53 = [[NSUUID alloc] initWithUUIDString:@"AAAAAAAA-BBBB-CCCC-DDDDD-EEEEEEEEEEEE"];
    v54 = [v52 initForClientName:@"client-name (previously-in-flight)" withProcessName:@"client-process-name (previously-in-flight)" withProcessID:1 usingAssetSelector:v73 associatingFrameworkUUID:v53];
    [(MADAutoAssetJob *)self setAutoAssetInstance:v54];

    v55 = [(MADAutoAssetJob *)self autoAssetInstance];
    [(MADAutoAssetJob *)self setActiveInstance:v55];

    v56 = [[MAAutoAssetInfoDesire alloc] initWithDesiredCategory:0 forClientAssetPolicy:0 reasonDesired:0 withCheckWaitTimeout:-2 withLockWaitTimeout:-2 desiringProgress:0];
    [(MADAutoAssetJob *)self setActiveDesire:v56];

    if (v38)
    {
      v57 = [MAAutoAssetInfoFound alloc];
      v54 = [v8 metadata];
      v58 = [v57 initForSelector:v73 withLocalContentURL:v71 withAssetAttributes:v54 reportingStatus:v38];
    }

    else
    {
      v58 = 0;
    }

    [(MADAutoAssetJob *)self setActiveFound:v58];
    if (v38)
    {
    }

    v59 = [(MADAutoAssetJob *)self autoAssetUUID];
    [(MADAutoAssetJob *)self setCheckUUIDBasePortion:v59];

    v60 = [(MADAutoAssetJob *)self autoAssetUUID];
    [(MADAutoAssetJob *)self setCheckUUID:v60];

    v61 = [(MADAutoAssetJob *)self newAssetDownloadOptions];
    [(MADAutoAssetJob *)self setAssetDownloadOptions:v61];

    if ([v8 isPatch])
    {
      [(MADAutoAssetJob *)self setFoundNewerPatch:v8];
    }

    else
    {
      [(MADAutoAssetJob *)self setFoundNewerFull:v8];
    }

    [(MADAutoAssetJob *)self setNewerFoundAssetDescriptor:v8];
    [(MADAutoAssetJob *)self setDownloadingAssetDescriptor:v8];
    [(MADAutoAssetJob *)self setCurrentStatus:v38];
    [(MADAutoAssetJob *)self setProgressReportPhase:0];

    goto LABEL_31;
  }

  [(MADAutoAssetJob *)self statusChange:@"DecideStartupDownloading" catalogAnomaly:6103 forReason:@"action DecideStartupDownloading requires set-job specific logic"];
LABEL_32:
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_AddTaskScheduler:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AddTaskScheduler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self setSchedulerInvolved:1, v10.opaque[0], v10.opaque[1]];
  [(MADAutoAssetJob *)self addToActiveJobTasks:v5];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_MergeNeeds:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeNeeds", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeNeeds" forJobEvent:v5, v10.opaque[0], v10.opaque[1]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_MergeNeedsDecideLookup:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeNeedsDecideLookup", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeNeedsDecideLookup" forJobEvent:v5, v10.opaque[0], v10.opaque[1]];
  [(MADAutoAssetJob *)self replyToJobsWhenCatalogDownloaded:@"MergeNeedsDecideLookup" discoveredNewer:1];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_MergeNeedsDecideBoost:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeNeedsDecideBoost", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v12);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeNeedsDecideBoost" forJobEvent:v5, v12.opaque[0], v12.opaque[1]];
  [(MADAutoAssetJob *)self replyToJobsWhenCatalogDownloaded:@"MergeNeedsDecideBoost" discoveredNewer:1];
  v9 = [(MADAutoAssetJob *)self decideFollowupBoost:@"MergeNeedsDecideBoost" forJobEvent:v5 boostEvent:@"BoostConfig" noBoostEvent:0];
  if (v9)
  {
    v10 = [(MADAutoAssetJob *)self autoJobFSM];
    [v10 followupEvent:v9 withInfo:v5];
  }

  os_activity_scope_leave(&v12);
  return 0;
}

- (int64_t)action_MergeNeedsDecideLookupBoost:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeNeedsDecideLookupBoost", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v12);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeNeedsDecideLookupBoost" forJobEvent:v5, v12.opaque[0], v12.opaque[1]];
  [(MADAutoAssetJob *)self replyToJobsWhenCatalogDownloaded:@"MergeNeedsDecideLookupBoost" discoveredNewer:1];
  v9 = [(MADAutoAssetJob *)self decideFollowupBoost:@"MergeNeedsDecideLookupBoost" forJobEvent:v5 boostEvent:@"BoostConfig" noBoostEvent:0];
  if (v9)
  {
    v10 = [(MADAutoAssetJob *)self autoJobFSM];
    [v10 followupEvent:v9 withInfo:v5];
  }

  os_activity_scope_leave(&v12);
  return 0;
}

- (int64_t)action_MergeAddLock:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeAddLock", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeAddLock" forJobEvent:v5, v10.opaque[0], v10.opaque[1]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_MergeContinueLock:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeContinueLock", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeContinueLock" forJobEvent:v5, v10.opaque[0], v10.opaque[1]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_MergeRemoveLock:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeRemoveLock", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeRemoveLock" forJobEvent:v5, v10.opaque[0], v10.opaque[1]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_MergeRemoveLockDecideInterest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeRemoveLockDecideInterest", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeRemoveLockDecideInterest" forJobEvent:v5, v11.opaque[0], v11.opaque[1]];
  v9 = [(MADAutoAssetJob *)self autoJobFSM];
  [v9 followupEvent:@"HaveInterest" withInfo:v5];

  os_activity_scope_leave(&v11);
  return 0;
}

- (int64_t)action_MergeAddLockDecideBoost:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeAddLockDecideBoost", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v12);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeAddLockDecideBoost" forJobEvent:v5, v12.opaque[0], v12.opaque[1]];
  v9 = [(MADAutoAssetJob *)self decideFollowupBoost:@"MergeAddLockDecideBoost" forJobEvent:v5 boostEvent:@"BoostConfig" noBoostEvent:0];
  if (v9)
  {
    v10 = [(MADAutoAssetJob *)self autoJobFSM];
    [v10 followupEvent:v9 withInfo:v5];
  }

  os_activity_scope_leave(&v12);
  return 0;
}

- (int64_t)action_MergeContinueLockDecideBoost:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeContinueLockDecideBoost", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v12);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeContinueLockDecideBoost" forJobEvent:v5, v12.opaque[0], v12.opaque[1]];
  v9 = [(MADAutoAssetJob *)self decideFollowupBoost:@"MergeContinueLockDecideBoost" forJobEvent:v5 boostEvent:@"BoostConfig" noBoostEvent:0];
  if (v9)
  {
    v10 = [(MADAutoAssetJob *)self autoJobFSM];
    [v10 followupEvent:v9 withInfo:v5];
  }

  os_activity_scope_leave(&v12);
  return 0;
}

- (int64_t)action_AdoptRegister:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AdoptRegister", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"AdoptRegister" forJobEvent:v5, v10.opaque[0], v10.opaque[1]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_RemoveClient:(id)a3 error:(id *)a4
{
  v4 = [(MADAutoAssetJob *)self autoJobFSM:a3];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  v6 = _os_activity_create(&dword_0, "MADJob:RemoveClient", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &v8);

  os_activity_scope_leave(&v8);
  return 0;
}

- (int64_t)action_RemoveClientDecideInterest:(id)a3 error:(id *)a4
{
  v4 = [(MADAutoAssetJob *)self autoJobFSM:a3];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  v6 = _os_activity_create(&dword_0, "MADJob:RemoveClientDecideInterest", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &v8);

  os_activity_scope_leave(&v8);
  return 0;
}

- (int64_t)action_ReportCatalogDecideFound:(id)a3 error:(id *)a4
{
  v183 = a3;
  v190 = self;
  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = _os_activity_create(&dword_0, "MADJob:ReportCatalogDecideFound", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);

  v184 = [v183 autoAssetCatalog];
  v8 = [(MADAutoAssetJob *)v190 stagerJob];
  if (v184)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  if (v9 == 1)
  {
    v10 = [(MADAutoAssetJob *)v190 stagerJobAutoAssetCatalog];
    v11 = v10 == 0;

    if (v11)
    {
      v81 = [NSString alloc];
      v82 = [(MADAutoAssetJob *)v190 autoJobName];
      v83 = [v81 initWithFormat:@"%@ | {ReportCatalogDecideFound} expecting catalog provided by auto-asset-stager yet no catalog provided", v82];
      [(MADAutoAssetJob *)v190 statusChange:@"ReportCatalogDecideFound" catalogAnomaly:6102 forReason:v83];

      goto LABEL_75;
    }

    v184 = [(MADAutoAssetJob *)v190 stagerJobAutoAssetCatalog];
  }

  else
  {
    [(MADAutoAssetJob *)v190 releaseLookupGrant];
  }

  if (!v184)
  {
LABEL_75:
    v84 = [NSString alloc];
    v184 = [(MADAutoAssetJob *)v190 autoJobName];
    v85 = [v84 initWithFormat:@"%@ | {ReportCatalogDecideFound} successful catalog download yet no catalog provided", v184];
    [(MADAutoAssetJob *)v190 statusChange:@"ReportCatalogDecideFound" catalogAnomaly:6102 forReason:v85];
    v12 = @"CatalogFoundNoNewer";
    goto LABEL_91;
  }

  if ([(MADAutoAssetJob *)v190 autoAssetSetJob])
  {
    if ([(MADAutoAssetJob *)v190 stagerJob])
    {
      [(MADAutoAssetJob *)v190 setStagerJobAutoAssetCatalog:v184];
      v12 = @"SetCatalogDoneDetermine";
    }

    else
    {
      if (([v183 catalogFromLookupCache] & 1) == 0)
      {
        v86 = [(MADAutoAssetJob *)v190 setConfiguration];
        [MADAutoAssetLookupCache recordLookupResult:v184 forSetConfiguration:v86 forStaging:0];
      }

      v87 = [(MADAutoAssetJob *)v190 setConfiguration];
      v88 = v87 == 0;

      if (v88)
      {
        v99 = [NSString alloc];
        v89 = [(MADAutoAssetJob *)v190 autoJobName];
        v90 = [v99 initWithFormat:@"%@ | {ReportCatalogDecideFound} set-job without set-configuration", v89];
        [(MADAutoAssetJob *)v190 statusChange:@"ReportCatalogDecideFound" catalogAnomaly:6102 forReason:v90];
      }

      else
      {
        [(MADAutoAssetJob *)v190 setHaveReceivedLookupResponse:1];
        v89 = [(MADAutoAssetJob *)v190 setConfiguration];
        v90 = [(MADAutoAssetJob *)v190 assignedSetDescriptor];
        [MADAutoAssetControlManager autoAssetJobSetLookupResponseReceived:v89 forAssignedSetDescriptor:v90 withCatalogLookupResponse:v184];
      }

      v12 = [(MADAutoAssetJob *)v190 reportSetCatalogDecideFound:v184 fromLocation:@"ReportCatalogDecideFound"];
    }

    goto LABEL_90;
  }

  if (([v183 catalogFromLookupCache] & 1) == 0 && !-[MADAutoAssetJob stagerJob](v190, "stagerJob"))
  {
    v13 = [(MADAutoAssetJob *)v190 autoAssetSelector];
    [MADAutoAssetLookupCache recordLookupResult:v184 forSelector:v13 forStaging:0];
  }

  v180 = [v184 safeStringForKey:@"AssetType"];
  v179 = [v184 safeObjectForKey:@"Assets" ofClass:objc_opt_class()];
  if (!v180 || !v179)
  {
    v91 = [NSString alloc];
    *(&v181 + 1) = [(MADAutoAssetJob *)v190 autoJobName];
    v92 = @"MISSING";
    v93 = v180;
    if (!v180)
    {
      v93 = @"MISSING";
    }

    if (v179)
    {
      v92 = @"present";
    }

    v94 = [v91 initWithFormat:@"%@ | auto-asset catalog without required fields | catalogAssetType:%@, catalogAssets:%@", *(&v181 + 1), v93, v92];
    [(MADAutoAssetJob *)v190 statusChange:@"ReportCatalogDecideFound" catalogAnomaly:6102 forReason:v94];

    goto LABEL_86;
  }

  v14 = [(MADAutoAssetJob *)v190 autoAssetSelector];
  v15 = [v14 assetType];
  v16 = [SUCore stringIsEqual:v180 to:v15];

  if ((v16 & 1) == 0)
  {
    v95 = [NSString alloc];
    *(&v181 + 1) = [(MADAutoAssetJob *)v190 autoJobName];
    v96 = [(MADAutoAssetJob *)v190 autoAssetSelector];
    v97 = [v96 assetType];
    v98 = [v95 initWithFormat:@"%@ | auto-asset catalog for wrong assetType | catalog:%@, expecting:%@", *(&v181 + 1), v180, v97];
    [(MADAutoAssetJob *)v190 statusChange:@"ReportCatalogDecideFound" catalogAnomaly:6108 forReason:v98];

LABEL_86:
    v12 = @"CatalogFoundNoNewer";
    goto LABEL_87;
  }

  if (![v179 count])
  {
    v104 = [(MADAutoAssetJob *)v190 latestInstalledAssetVersion];
    v105 = v104 == 0;

    if (v105)
    {
      *(&v181 + 1) = _MADLog(@"AutoJob");
      if (os_log_type_enabled(*(&v181 + 1), OS_LOG_TYPE_DEFAULT))
      {
        v122 = [(MADAutoAssetJob *)v190 autoJobName];
        *buf = 138543362;
        v199 = v122;
        _os_log_impl(&dword_0, *(&v181 + 1), OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} no assets provided (and no latest-installed asset-version)", buf, 0xCu);
      }
    }

    else
    {
      *(&v181 + 1) = [(MADAutoAssetJob *)v190 autoAssetSelector];
      v106 = [*(&v181 + 1) assetVersion];
      if (v106)
      {
        v107 = 6110;
      }

      else
      {
        v107 = 6205;
      }

      v108 = [NSString alloc];
      v109 = [(MADAutoAssetJob *)v190 autoJobName];
      v110 = [(MADAutoAssetJob *)v190 latestInstalledAssetVersion];
      v111 = [v108 initWithFormat:@"%@ | successful catalog download yet no assets in catalog | have installed asset-version:%@ | REVOKED", v109, v110];
      [(MADAutoAssetJob *)v190 statusChange:@"ReportCatalogDecideFound" catalogFailure:v107 forReason:v111];
    }

    goto LABEL_86;
  }

  v182 = supportedAssetFormatsArray();
  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  obj = v179;
  v17 = [obj countByEnumeratingWithState:&v193 objects:v206 count:16];
  if (!v17)
  {
    v178 = 0;
    v181 = 0uLL;
    goto LABEL_98;
  }

  v178 = 0;
  v181 = 0uLL;
  v186 = *v194;
  do
  {
    v18 = 0;
    v188 = v17;
    do
    {
      if (*v194 != v186)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v193 + 1) + 8 * v18);
      v20 = objc_autoreleasePoolPush();
      if (![MADAutoAssetDescriptor doesMetatadaIndicateEmptyEntry:v19])
      {
        v24 = [MADAutoAssetDescriptor alloc];
        v25 = [(MADAutoAssetJob *)v190 autoAssetSelector];
        v26 = [v25 assetType];
        v192 = 0;
        v27 = [(MADAutoAssetDescriptor *)v24 initForAssetType:v26 fromMetadata:v19 invalidReasons:&v192];
        v21 = v192;

        if (!v27)
        {
          v34 = [[NSString alloc] initWithFormat:@"%@ | {ReportCatalogDecideFound} auto-asset metadata considered invalid | %@", @"ReportCatalogDecideFound", v21];
          [(MADAutoAssetJob *)v190 trackAnomaly:6108 forReason:v34];
          goto LABEL_69;
        }

        v28 = [(MADAutoAssetJob *)v190 autoAssetSelector];
        v29 = [v28 assetVersion];
        if (v29)
        {
          v30 = [(MADAutoAssetJob *)v190 autoAssetSelector];
          v31 = [v30 assetVersion];
          v32 = [v27 assetVersion];
          v33 = [SUCore stringIsEqual:v31 to:v32];

          if ((v33 & 1) == 0)
          {
            v34 = _MADLog(@"AutoJob");
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v35 = [(MADAutoAssetJob *)v190 autoJobName];
              v36 = [(MADAutoAssetJob *)v190 autoAssetSelector];
              v37 = [v36 assetVersion];
              v38 = [v27 assetVersion];
              v39 = [v27 selectorName];
              *buf = 138544130;
              v199 = v35;
              v200 = 2114;
              v201 = v37;
              v202 = 2114;
              v203 = v38;
              v204 = 2114;
              v205 = v39;
              _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} filtering out asset (version mismatch) | [version]required:%{public}@ != metadata:%{public}@ | filtered:%{public}@", buf, 0x2Au);
            }

            goto LABEL_69;
          }
        }

        else
        {
        }

        v40 = [(MADAutoAssetJob *)v190 autoAssetSelector];
        v41 = [v40 assetSpecifier];
        v42 = [v27 assetSpecifier];
        v43 = [SUCore stringIsEqual:v41 to:v42];

        if (v43)
        {
          if ([v27 isPatch])
          {
            v44 = [(MADAutoAssetJob *)v190 baseForPatch];
            v45 = v44 == 0;

            if (v45)
            {
              v34 = _MADLog(@"AutoJob");
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                v65 = [(MADAutoAssetJob *)v190 autoJobName];
                v66 = [v27 selectorName];
                *buf = 138543618;
                v199 = v65;
                v200 = 2114;
                v201 = v66;
                _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} filtering out asset (patch when no base for patch) | filtered:%{public}@", buf, 0x16u);
              }

              goto LABEL_69;
            }

            v46 = [v27 assetFormat];
            v47 = [v182 containsObject:v46];

            if (!v47)
            {
              v34 = _MADLog(@"AutoJob");
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                v67 = [(MADAutoAssetJob *)v190 autoJobName];
                v68 = [v27 selectorName];
                *buf = 138543618;
                v199 = v67;
                v200 = 2114;
                v201 = v68;
                _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} filtering out asset (patch of unsupported format) | filtered:%{public}@", buf, 0x16u);
              }

              goto LABEL_69;
            }

            if (*(&v181 + 1))
            {
              if ([(MADAutoAssetJob *)v190 isMorePreferredFormat:v27 comparedTo:?])
              {
                v48 = _MADLog(@"AutoJob");
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                {
                  v49 = [(MADAutoAssetJob *)v190 autoJobName];
                  v50 = [v27 selectorName];
                  *buf = 138543618;
                  v199 = v49;
                  v200 = 2114;
                  v201 = v50;
                  _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} more preferred patch provided | now considering:%{public}@", buf, 0x16u);
                }

                v51 = v27;
                goto LABEL_66;
              }

              v34 = _MADLog(@"AutoJob");
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                v79 = [(MADAutoAssetJob *)v190 autoJobName];
                v80 = [v27 selectorName];
                *buf = 138543618;
                v199 = v79;
                v200 = 2114;
                v201 = v80;
                _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} filtering out asset (additional patch of less-preferred format) | filtered:%{public}@", buf, 0x16u);
              }

LABEL_69:
            }

            else
            {
              v75 = _MADLog(@"AutoJob");
              if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
              {
                v76 = [(MADAutoAssetJob *)v190 autoJobName];
                v77 = [v27 selectorName];
                *buf = 138543618;
                v199 = v76;
                v200 = 2114;
                v201 = v77;
                _os_log_impl(&dword_0, v75, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} patch provided | considering:%{public}@", buf, 0x16u);
              }

              v78 = v27;
LABEL_66:
              v178 = -[MADAutoAssetJob preferenceAsIfRampOrUse:](v190, "preferenceAsIfRampOrUse:", [v27 isRamped]);
              *(&v181 + 1) = v27;
            }
          }

          else
          {
            v57 = [v27 assetFormat];
            v58 = [v182 containsObject:v57];

            if (!v58)
            {
              v34 = _MADLog(@"AutoJob");
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                v63 = [(MADAutoAssetJob *)v190 autoJobName];
                v64 = [v27 selectorName];
                *buf = 138543618;
                v199 = v63;
                v200 = 2114;
                v201 = v64;
                _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} filtering out asset (full of unsupported format) | filtered:%{public}@", buf, 0x16u);
              }

              goto LABEL_69;
            }

            if (v181)
            {
              if (![(MADAutoAssetJob *)v190 isMorePreferredFormat:v27 comparedTo:?])
              {
                v34 = _MADLog(@"AutoJob");
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                {
                  v73 = [(MADAutoAssetJob *)v190 autoJobName];
                  v74 = [v27 selectorName];
                  *buf = 138543618;
                  v199 = v73;
                  v200 = 2114;
                  v201 = v74;
                  _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} filtering out asset (additional full of less-preferred format) | filtered:%{public}@", buf, 0x16u);
                }

                goto LABEL_69;
              }

              v59 = _MADLog(@"AutoJob");
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
              {
                v60 = [(MADAutoAssetJob *)v190 autoJobName];
                v61 = [v27 selectorName];
                *buf = 138543618;
                v199 = v60;
                v200 = 2114;
                v201 = v61;
                _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} more preferred full provided | now considering:%{public}@", buf, 0x16u);
              }

              v62 = v27;
            }

            else
            {
              v69 = _MADLog(@"AutoJob");
              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
              {
                v70 = [(MADAutoAssetJob *)v190 autoJobName];
                v71 = [v27 selectorName];
                *buf = 138543618;
                v199 = v70;
                v200 = 2114;
                v201 = v71;
                _os_log_impl(&dword_0, v69, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} full provided | considering:%{public}@", buf, 0x16u);
              }

              v72 = v27;
            }

            v178 = -[MADAutoAssetJob preferenceAsIfRampOrUse:](v190, "preferenceAsIfRampOrUse:", [v27 isRamped]);
            *&v181 = v27;
          }

          goto LABEL_71;
        }

        v34 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v52 = [(MADAutoAssetJob *)v190 autoJobName];
          v53 = [(MADAutoAssetJob *)v190 autoAssetSelector];
          v54 = [v53 assetSpecifier];
          v55 = [v27 assetSpecifier];
          v56 = [v27 selectorName];
          *buf = 138544130;
          v199 = v52;
          v200 = 2114;
          v201 = v54;
          v202 = 2114;
          v203 = v55;
          v204 = 2114;
          v205 = v56;
          _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} filtering out asset (specifier mismatch) | [specifier]required:%{public}@ != metadata:%{public}@ | filtered:%{public}@", buf, 0x2Au);
        }

        goto LABEL_69;
      }

      v21 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [(MADAutoAssetJob *)v190 autoJobName];
        v23 = [v19 safeSummary];
        *buf = 138543618;
        v199 = v22;
        v200 = 2114;
        v201 = v23;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} filtering out asset (empty entry) | metadata:%{public}@", buf, 0x16u);
      }

LABEL_71:

      objc_autoreleasePoolPop(v20);
      v18 = v18 + 1;
    }

    while (v188 != v18);
    v17 = [obj countByEnumeratingWithState:&v193 objects:v206 count:16];
  }

  while (v17);
LABEL_98:

  if (v181 == 0)
  {
    v112 = [NSString alloc];
    v113 = [(MADAutoAssetJob *)v190 autoJobName];
    v114 = [v112 initWithFormat:@"%@ | {ReportCatalogDecideFound} successful catalog download yet no available patch or full asset found", v113];
    [(MADAutoAssetJob *)v190 statusChange:@"ReportCatalogDecideFound" catalogFailure:6110 forReason:v114];

    goto LABEL_100;
  }

  if (*(&v181 + 1))
  {
    if (v181)
    {
      v116 = [*(&v181 + 1) assetVersion];
      v117 = [v181 assetVersion];
      v118 = [SUCore stringIsEqual:v116 to:v117];

      if ((v118 & 1) == 0)
      {
        v123 = [NSString alloc];
        v113 = [(MADAutoAssetJob *)v190 autoJobName];
        v124 = [*(&v181 + 1) assetVersion];
        v125 = [v181 assetVersion];
        v126 = [v123 initWithFormat:@"%@ | {ReportCatalogDecideFound} auto-asset patch and full entries for different versions | patch:%@, full:%@", v113, v124, v125];
        [(MADAutoAssetJob *)v190 statusChange:@"ReportCatalogDecideFound" catalogAnomaly:6109 forReason:v126];

        goto LABEL_100;
      }
    }
  }

  if ((v178 & 1) == 0)
  {
    goto LABEL_119;
  }

  if ([(MADAutoAssetJob *)v190 determiningAssetContent]&& ![(MADAutoAssetJob *)v190 checkingAssetContent]&& ![(MADAutoAssetJob *)v190 lockingAssetContent])
  {
    goto LABEL_110;
  }

  v119 = [(MADAutoAssetJob *)v190 autoAssetSelector];
  v120 = [v119 assetVersion];
  if (v120)
  {

    goto LABEL_110;
  }

  v127 = [(MADAutoAssetJob *)v190 autoAssetSelector];
  v128 = [v127 assetVersion];
  if (v128)
  {

    goto LABEL_119;
  }

  v176 = [(MADAutoAssetJob *)v190 onFilesystemByVersion];
  v177 = [v176 count] == 0;

  if (!v177)
  {
LABEL_110:
    v115 = _MADLog(@"AutoJob");
    if (!os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"CatalogFoundNoNewer";
      goto LABEL_146;
    }

    v121 = [(MADAutoAssetJob *)v190 autoJobName];
    if (v181)
    {
      [v181 selectorName];
    }

    else
    {
      [*(&v181 + 1) selectorName];
    }
    v175 = ;
    *buf = 138543618;
    v199 = v121;
    v200 = 2114;
    v201 = v175;
    v113 = v115;
    _os_log_impl(&dword_0, v115, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} postponing[RAMPED] | selector:%{public}@", buf, 0x16u);

LABEL_100:
    v12 = @"CatalogFoundNoNewer";
    v115 = v113;
    goto LABEL_146;
  }

LABEL_119:
  if (v181)
  {
    [v181 assetVersion];
  }

  else
  {
    [*(&v181 + 1) assetVersion];
  }
  v187 = ;
  v191 = 0;
  v129 = [MAAutoAssetSelector alloc];
  v130 = [(MADAutoAssetJob *)v190 autoAssetSelector];
  v131 = [v130 assetType];
  v132 = [(MADAutoAssetJob *)v190 autoAssetSelector];
  v133 = [v132 assetSpecifier];
  v134 = [(MADAutoAssetJob *)v190 autoAssetSelector];
  v135 = [v134 downloadDecryptionKey];
  v136 = [v129 initForAssetType:v131 withAssetSpecifier:v133 matchingAssetVersion:v187 usingDecryptionKey:v135];
  [(MADAutoAssetJob *)v190 setResultSelector:v136];

  v137 = [MAAutoAssetInfoInstance alloc];
  v189 = [(MADAutoAssetJob *)v190 activeInstance];
  v138 = [v189 autoAssetClientName];
  v139 = [(MADAutoAssetJob *)v190 activeInstance];
  v140 = [v139 clientProcessName];
  v141 = [(MADAutoAssetJob *)v190 activeInstance];
  v142 = [v141 clientProcessID];
  v143 = [(MADAutoAssetJob *)v190 resultSelector];
  v144 = [(MADAutoAssetJob *)v190 activeInstance];
  v145 = [v144 frameworkInstanceUUID];
  v146 = [v137 initForClientName:v138 withProcessName:v140 withProcessID:v142 usingAssetSelector:v143 associatingFrameworkUUID:v145];
  [(MADAutoAssetJob *)v190 setResultInstance:v146];

  [(MADAutoAssetJob *)v190 setFoundNewerPatch:*(&v181 + 1)];
  v147 = [(MADAutoAssetJob *)v190 foundNewerPatch];
  LOBYTE(v145) = v147 == 0;

  if ((v145 & 1) == 0)
  {
    v148 = [(MADAutoAssetJob *)v190 autoAssetSelector];
    v149 = [v148 assetVersion];
    v150 = v149 == 0;

    if (v150)
    {
      v151 = [(MADAutoAssetJob *)v190 foundNewerPatch];
      [v151 setFoundByLookupWithoutAssetVersion:1];
    }

    v152 = [(MADAutoAssetJob *)v190 foundNewerPatch];
    [v152 setIsPatch:1];

    v153 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
    {
      v154 = [(MADAutoAssetJob *)v190 autoJobName];
      v155 = [*(&v181 + 1) selectorName];
      *buf = 138543618;
      v199 = v154;
      v200 = 2114;
      v201 = v155;
      _os_log_impl(&dword_0, v153, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} found newer patch | selector:%{public}@", buf, 0x16u);
    }
  }

  [(MADAutoAssetJob *)v190 setFoundNewerFull:v181];
  v156 = [(MADAutoAssetJob *)v190 foundNewerFull];
  v157 = v156 == 0;

  if (!v157)
  {
    v158 = [(MADAutoAssetJob *)v190 autoAssetSelector];
    v159 = [v158 assetVersion];
    v160 = v159 == 0;

    if (v160)
    {
      v161 = [(MADAutoAssetJob *)v190 foundNewerFull];
      [v161 setFoundByLookupWithoutAssetVersion:1];
    }

    v162 = [(MADAutoAssetJob *)v190 foundNewerFull];
    [v162 setIsPatch:0];

    v163 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
    {
      v164 = [(MADAutoAssetJob *)v190 autoJobName];
      v165 = [v181 selectorName];
      *buf = 138543618;
      v199 = v164;
      v200 = 2114;
      v201 = v165;
      _os_log_impl(&dword_0, v163, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} found newer full | selector:%{public}@", buf, 0x16u);
    }
  }

  [(MADAutoAssetJob *)v190 latchWhetherDownloadingUserInitiated];
  [(MADAutoAssetJob *)v190 refreshFoundToManager];
  if ([(MADAutoAssetJob *)v190 isFoundAlreadyOnFilesystem:&v191])
  {
    if (v191 == 1)
    {
      [(MADAutoAssetJob *)v190 statusChangeCatalogFoundNewer:@"ReportCatalogDecideFound"];
      if (-[MADAutoAssetJob stagerJob](v190, "stagerJob") || (-[MADAutoAssetJob tryPersonalizeDescriptors](v190, "tryPersonalizeDescriptors"), v166 = objc_claimAutoreleasedReturnValue(), v167 = [v166 count] == 0, v166, v167))
      {
        v12 = @"CatalogFoundPromoted";
      }

      else
      {
        v12 = @"CatalogFoundPromotedHeal";
      }
    }

    else
    {
      [(MADAutoAssetJob *)v190 statusChangeCatalogFoundSame:@"ReportCatalogDecideFound"];
      v12 = @"CatalogFoundSameDownloaded";
    }
  }

  else
  {
    [(MADAutoAssetJob *)v190 statusChangeCatalogFoundNewer:@"ReportCatalogDecideFound"];
    v12 = @"CatalogFoundNewer";
    if (![(MADAutoAssetJob *)v190 stagerJob])
    {
      v168 = [(MADAutoAssetJob *)v190 resultSelector];
      v169 = [MADAutoAssetControlManager autoAssetJob:v190 bondWithStagerDownloading:v168];
      [(MADAutoAssetJob *)v190 setBondedWithJob:v169];

      v170 = [(MADAutoAssetJob *)v190 bondedWithJob];
      LODWORD(v168) = v170 == 0;

      if (!v168)
      {
        v12 = @"CatalogFoundNoNewer";
      }

      v171 = [(MADAutoAssetJob *)v190 autoAssetSelector];
      v172 = [v171 assetType];
      v173 = [(MADAutoAssetJob *)v190 autoAssetSelector];
      v174 = [v173 assetSpecifier];
      [MADAutoAssetControlManager postNotificationName:@"ASSET_VERSION_DISCOVERED" forAssetType:v172 forAssetSpecifier:v174 fromModule:@"AUTO-JOB" fromLocation:@"ReportCatalogDecideFound"];
    }
  }

  v115 = v187;
LABEL_146:

LABEL_87:
LABEL_90:
  v85 = [(MADAutoAssetJob *)v190 autoJobFSM];
  v100 = [MADAutoAssetJobParam alloc];
  v101 = [(MADAutoAssetJob *)v190 _updateLatestSummary];
  v102 = [(MADAutoAssetJobParam *)v100 initWithSafeSummary:v101];
  [v85 followupEvent:v12 withInfo:v102];

LABEL_91:
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_DecideDownloadOrPostpone:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:DecideDownloadOrPostpone", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {
    if ([(MADAutoAssetJob *)self rampingForeground])
    {
      [(MADAutoAssetJob *)self setRampingForegroundLatched:1];
    }

    v9 = [(MADAutoAssetJob *)self newAssetDownloadOptions];
    [(MADAutoAssetJob *)self setAssetDownloadOptions:v9];

    v10 = [(MADAutoAssetJob *)self foundNewerPatch];

    if (v10)
    {
      v11 = [(MADAutoAssetJob *)self foundNewerPatch];
      [(MADAutoAssetJob *)self setNewerFoundAssetDescriptor:v11];

      v12 = [(MADAutoAssetJob *)self foundNewerPatch];
      [(MADAutoAssetJob *)self setDownloadingAssetDescriptor:v12];

      [(MADAutoAssetJob *)self latchWhetherDownloadingUserInitiated];
      v13 = [(MADAutoAssetJob *)self autoAssetSelector];
      v14 = [v13 assetVersion];

      if (v14)
      {
        [(MADAutoAssetJob *)self setReportingProgress:1];
        v15 = @"DownloadPatch";
        goto LABEL_11;
      }
    }

    else
    {
      v16 = [(MADAutoAssetJob *)self foundNewerFull];
      [(MADAutoAssetJob *)self setNewerFoundAssetDescriptor:v16];

      v17 = [(MADAutoAssetJob *)self foundNewerFull];
      [(MADAutoAssetJob *)self setDownloadingAssetDescriptor:v17];

      [(MADAutoAssetJob *)self latchWhetherDownloadingUserInitiated];
      v18 = [(MADAutoAssetJob *)self autoAssetSelector];
      v19 = [v18 assetVersion];

      if (v19)
      {
        [(MADAutoAssetJob *)self setReportingProgress:1];
        v15 = @"DownloadFull";
        goto LABEL_11;
      }
    }

    v15 = @"PersistDownload";
LABEL_11:
    v20 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    v21 = [v20 metadata];
    v22 = [(MADAutoAssetJob *)self currentStatus];
    [v22 setNewerVersionAttributes:v21];

    v23 = [MAAutoAssetInfoFound alloc];
    v24 = [(MADAutoAssetJob *)self resultSelector];
    v25 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    v26 = [v25 metadata];
    v27 = [(MADAutoAssetJob *)self currentStatus];
    v28 = [v23 initForSelector:v24 withLocalContentURL:0 withAssetAttributes:v26 reportingStatus:v27];
    [(MADAutoAssetJob *)self setResultFound:v28];

    if ([(MADAutoAssetJob *)self downloadingUserInitiated])
    {
      v29 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
      [v29 setDownloadUserInitiated:1];
    }

    v30 = [(MADAutoAssetJob *)self stagerJobAutoAssetCatalog];

    if (!v30)
    {
      [(MADAutoAssetJob *)self replyToJobsWhenCatalogDownloaded:@"DecideDownloadOrPostpone" discoveredNewer:1];
    }

    if (![(MADAutoAssetJob *)self stagerJob]|| [(MADAutoAssetJob *)self stagerJobDownloadContent])
    {
      if ([(MADAutoAssetJob *)self stagerJob]|| [(MADAutoAssetJob *)self anyJobInterestedInContent])
      {
        goto LABEL_23;
      }

      v31 = [(MADAutoAssetJob *)self getCurrentJobTask];
      if (v31)
      {
        v32 = [NSString alloc];
        v33 = [(MADAutoAssetJob *)self progressReportPhaseName];
        v34 = [v31 summary];
        v35 = [v32 initWithFormat:@"{%@} current job (after catalog lookup has been serviced) | phase:%@ | currentJob:%@", @"DecideDownloadOrPostpone", v33, v34];
        [(MADAutoAssetJob *)self trackAnomaly:6108 forReason:v35];
      }
    }

    v15 = @"PostponedDownload";
LABEL_23:
    v36 = [(MADAutoAssetJob *)self autoJobFSM];
    v37 = [MADAutoAssetJobParam alloc];
    v38 = [(MADAutoAssetJob *)self _updateLatestSummary];
    v39 = [(MADAutoAssetJobParam *)v37 initWithSafeSummary:v38];
    [v36 followupEvent:v15 withInfo:v39];

    goto LABEL_24;
  }

  [(MADAutoAssetJob *)self statusChange:@"DecideDownloadOrPostpone" catalogAnomaly:6103 forReason:@"action DecideDownloadOrPostpone should never execute for set-job"];
LABEL_24:
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_RequestSpecificPersisted:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:RequestSpecificPersisted", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v15);

  v9 = [(MADAutoAssetJob *)self resultSelector:v15.opaque[0]];
  v10 = [(MADAutoAssetJob *)self autoAssetUUID];
  v11 = [(MADAutoAssetJob *)self autoAssetSelector];
  v12 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
  v13 = [(MADAutoAssetJob *)self baseForPatch];
  [MADAutoAssetControlManager autoAssetJobReadyToDownload:v9 withAutoAssetUUID:v10 fromAutoAssetJob:self withOriginalSelector:v11 downloadingDescriptor:v12 baseForPatchDescriptor:v13];

  os_activity_scope_leave(&v15);
  return 0;
}

- (int64_t)action_PersistedDecideDownload:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v19.opaque[0] = 0;
  v19.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:PersistedDecideDownload", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v19);

  v9 = [(MADAutoAssetJob *)self newAssetDownloadOptions:v19.opaque[0]];
  [(MADAutoAssetJob *)self setAssetDownloadOptions:v9];

  [(MADAutoAssetJob *)self setReportingProgress:1];
  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v10 = [(MADAutoAssetJob *)self foundNewerPatch];

    v11 = @"SetDownloadPatch";
    v12 = @"SetDownloadFull";
  }

  else
  {
    v10 = [(MADAutoAssetJob *)self foundNewerPatch];

    v11 = @"DownloadPatch";
    v12 = @"DownloadFull";
  }

  if (v10)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  [(MADAutoAssetJob *)self setReportingProgress:1];
  v14 = [(MADAutoAssetJob *)self autoJobFSM];
  v15 = [MADAutoAssetJobParam alloc];
  v16 = [(MADAutoAssetJob *)self _updateLatestSummary];
  v17 = [(MADAutoAssetJobParam *)v15 initWithSafeSummary:v16];
  [v14 followupEvent:v13 withInfo:v17];

  os_activity_scope_leave(&v19);
  return 0;
}

- (int64_t)action_DownloadNewestPatch:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v19.opaque[0] = 0;
  v19.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:DownloadNewestPatch", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v19);

  v9 = [(MADAutoAssetJob *)self baseForPatch:v19.opaque[0]];
  LODWORD(v8) = v9 == 0;

  if (v8)
  {
    [(MADAutoAssetJob *)self trackAnomaly:6111 forReason:@"downloading patch when no base for patch (unable to provide sourceDirectory)"];
  }

  else
  {
    v10 = [(MADAutoAssetJob *)self baseForPatch];
    v11 = [MADAutoAssetControlManager localAssetURLForDescriptor:v10 fromLocation:@"DownloadNewestPatch"];

    v12 = [(MADAutoAssetJob *)self assetDownloadOptions];
    [v12 setSourceDirectory:v11];

    if (![(MADAutoAssetJob *)self autoAssetSetJob])
    {
      v13 = [(MADAutoAssetJob *)self currentStatus];
      [v13 setPatchingAttempted:1];
    }

    v14 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(MADAutoAssetJob *)self autoJobName];
      *buf = 138543618;
      v21 = v15;
      v22 = 2114;
      v23 = v11;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ | patching | localURLForBaseImage:%{public}@", buf, 0x16u);
    }
  }

  [(MADAutoAssetJob *)self statusChangeStartingAssetDownload:@"DownloadNewestPatch" downloadingPatch:1];
  v16 = [(MADAutoAssetJob *)self foundNewerPatch];
  v17 = [(MADAutoAssetJob *)self baseForPatch];
  [(MADAutoAssetJob *)self requestDownloadManagerAssetDownload:@"DownloadNewestPatch" forDescriptor:v16 withBaseForPatch:v17];

  os_activity_scope_leave(&v19);
  return 0;
}

- (int64_t)action_DownloadNewestFull:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:DownloadNewestFull", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  [(MADAutoAssetJob *)self statusChangeStartingAssetDownload:@"DownloadNewestFull" downloadingPatch:0, v11.opaque[0], v11.opaque[1]];
  v9 = [(MADAutoAssetJob *)self foundNewerFull];
  [(MADAutoAssetJob *)self requestDownloadManagerAssetDownload:@"DownloadNewestFull" forDescriptor:v9 withBaseForPatch:0];

  os_activity_scope_leave(&v11);
  return 0;
}

- (int64_t)action_DownloadSuccessDecideMore:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:DownloadSuccessDecideMore", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v15);

  v9 = [MADAutoAssetJobParam alloc];
  v10 = [(MADAutoAssetJob *)self _updateLatestSummary:v15.opaque[0]];
  v11 = [(MADAutoAssetJobParam *)v9 initWithSafeSummary:v10];

  v12 = [(MADAutoAssetJob *)self decideFollowupMoreAssetsToDownload:@"DownloadSuccessDecideMore" withEventInfo:v11];
  v13 = [(MADAutoAssetJob *)self autoJobFSM];
  [v13 followupEvent:v12 withInfo:v11];

  os_activity_scope_leave(&v15);
  return 0;
}

- (int64_t)action_FailedPatchDecideTryFull:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v38.opaque[0] = 0;
  v38.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:FailedPatchDecideTryFull", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v38);

  if ([(MADAutoAssetJob *)self autoAssetSetJob:v38.opaque[0]])
  {
    v9 = [(MADAutoAssetJob *)self assignedSetDescriptor];
    v10 = [v9 clientDomainName];
    v11 = [(MADAutoAssetJob *)self assignedSetDescriptor];
    v12 = [v11 assetSetIdentifier];
    v13 = [(MADAutoAssetJob *)self assignedSetDescriptor];
    v14 = [v13 discoveredAtomicInstance];
    v15 = [v5 finishedError];
    [MADAutoAssetHistory recordFailedOperation:505 fromLayer:2 forClientDomainName:v10 forAssetSetIdentifier:v12 forAtomicInstance:v14 failingWithError:v15];
  }

  else
  {
    v9 = [(MADAutoAssetJob *)self autoAssetSelector];
    v10 = [v5 finishedError];
    [MADAutoAssetHistory recordFailedOperation:505 fromLayer:2 forAssetID:@"UNKNOWN" withSelector:v9 failingWithError:v10];
  }

  v16 = [(MADAutoAssetJob *)self foundNewerFull];

  if (v16)
  {
    v17 = [v5 finishedError];
    v18 = [(MADAutoAssetJob *)self currentStatus];
    [v18 setPatchingAttemptError:v17];

    v19 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];

    if (v19)
    {
      v20 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
      v21 = [v20 downloadUserInitiated];
      v22 = [(MADAutoAssetJob *)self foundNewerFull];
      [v22 setDownloadUserInitiated:v21];

      v23 = [(MADAutoAssetJob *)self foundNewerFull];
      [v23 setPatchingAttempted:1];

      v24 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
      v25 = [v24 patchingAttemptError];
      v26 = [(MADAutoAssetJob *)self foundNewerFull];
      [v26 setPatchingAttemptError:v25];
    }

    else
    {
      [(MADAutoAssetJob *)self trackAnomaly:6111 forReason:@"{FailedPatchDecideTryFull} failed attempt to download patch yet downloadingAssetDescriptor:nil"];
    }

    v28 = [(MADAutoAssetJob *)self foundNewerFull];
    v29 = [v28 patchingAttemptError];

    if (!v29)
    {
      v30 = [(MADAutoAssetJob *)self currentStatus];
      v31 = [v30 patchingAttemptError];
      v32 = [(MADAutoAssetJob *)self foundNewerFull];
      [v32 setPatchingAttemptError:v31];
    }

    v27 = @"DownloadFailureTryFull";
  }

  else
  {
    v27 = @"DownloadFailureNoFull";
  }

  [(MADAutoAssetJob *)self setDownloadingAssetDescriptor:0];
  v33 = [(MADAutoAssetJob *)self autoJobFSM];
  v34 = [MADAutoAssetJobParam alloc];
  v35 = [(MADAutoAssetJob *)self _updateLatestSummary];
  v36 = [(MADAutoAssetJobParam *)v34 initWithSafeSummary:v35];
  [v33 followupEvent:v27 withInfo:v36];

  os_activity_scope_leave(&v38);
  return 0;
}

- (int64_t)action_BoostConfig:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:BoostConfig", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  v9 = [(MADAutoAssetJob *)self downloadingAssetDescriptor:v11.opaque[0]];
  [(MADAutoAssetJob *)self requestDownloadManagerConfigDownload:@"BoostConfig" forDescriptor:v9];

  os_activity_scope_leave(&v11);
  return 0;
}

- (int64_t)action_BoostAndRequestLookupGrant:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:BoostAndRequestLookupGrant", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  v9 = [(MADAutoAssetJob *)self downloadingAssetDescriptor:v11.opaque[0]];
  [(MADAutoAssetJob *)self requestDownloadManagerConfigDownload:@"BoostConfig" forDescriptor:v9];

  [(MADAutoAssetJob *)self obtainLookupGrant];
  os_activity_scope_leave(&v11);

  return 0;
}

- (int64_t)action_DownloadSuccessDecidePersonalize:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v17.opaque[0] = 0;
  v17.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:DownloadSuccessDecidePersonalize", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v17);

  v9 = [MADAutoAssetJobParam alloc];
  v10 = [(MADAutoAssetJob *)self _updateLatestSummary:v17.opaque[0]];
  v11 = [(MADAutoAssetJobParam *)v9 initWithSafeSummary:v10];

  if ([(MADAutoAssetJob *)self stagerJob]|| [(MADAutoAssetJob *)self tryPersonalizeFailed]|| !+[MADAutoAssetControlManager preferenceSecureSimulateRequireAll]&& ([(MADAutoAssetJob *)self downloadingAssetDescriptor], v15 = objc_claimAutoreleasedReturnValue(), v16 = [MADAutoAssetSecure isPersonalizationRequired:@"DownloadSuccessDecidePersonalize" forDescriptor:v15], v15, !v16))
  {
    v12 = @"DownloadedNoPersonalize";
  }

  else
  {
    v12 = @"DownloadedTryPersonalize";
  }

  v13 = [(MADAutoAssetJob *)self autoJobFSM];
  [v13 followupEvent:v12 withInfo:v11];

  os_activity_scope_leave(&v17);
  return 0;
}

- (int64_t)action_SecureBundlePersonalize:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SecureBundlePersonalize", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [(MADAutoAssetJob *)self autoAssetUUID];
  if ([(MADAutoAssetJob *)self stagerJob])
  {
    [(MADAutoAssetJob *)self trackAnomaly:6103 forReason:@"{SecureBundlePersonalize} [STAGER-JOB] should never perform any secure operations (must be running pre-SU-staging target OS before personalizing)"];
  }

  else
  {
    if ([(MADAutoAssetJob *)self autoAssetSetJob])
    {
      v10 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(MADAutoAssetJob *)self autoJobName];
        v12 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
        v13 = [v12 selectorName];
        *buf = 138543618;
        v26 = v11;
        v27 = 2114;
        v28 = v13;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-SECURE][AUTO-PERSONALIZATION][SET-JOB-PRE] attempting pre-personalization | selector:%{public}@", buf, 0x16u);
      }
    }

    else
    {
      v10 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(MADAutoAssetJob *)self autoJobName];
        v15 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
        v16 = [v15 selectorName];
        *buf = 138543618;
        v26 = v14;
        v27 = 2114;
        v28 = v16;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-SECURE][AUTO-PERSONALIZATION][SIGLETON-JOB] attempting pre-personalization | selector:%{public}@", buf, 0x16u);
      }
    }

    v17 = [(MADAutoAssetJob *)self autoJobName];
    v18 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    v19 = [(MADAutoAssetJob *)self autoAssetSetJob];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __56__MADAutoAssetJob_action_SecureBundlePersonalize_error___block_invoke;
    v21[3] = &unk_4B46A8;
    v22 = v9;
    v23 = self;
    [MADAutoAssetSecure personalizeDownloaded:v17 personalizingDescriptor:v18 allowingNetwork:1 committingPersonalization:v19 ^ 1 completion:v21];
  }

  os_activity_scope_leave(&state);
  return 0;
}

void __56__MADAutoAssetJob_action_SecureBundlePersonalize_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = [[MADAutoAssetJobParam alloc] initForFinishedJobID:*(a1 + 32) withError:v4];

  v5 = @"PersonalizationFailure";
  if (!v4)
  {
    v5 = @"PersonalizationSuccess";
  }

  v6 = *(a1 + 40);
  v7 = v5;
  v8 = [v6 autoJobFSM];
  [v8 postEvent:v7 withInfo:v9];
}

- (int64_t)action_PersonalizeSuccessDecideMore:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v31.opaque[0] = 0;
  v31.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:PersonalizeSuccessDecideMore", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v31);

  [(MADAutoAssetJob *)self setTryPersonalizeSuccess:1, v31.opaque[0], v31.opaque[1]];
  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v9 = [MAAutoAssetSelector alloc];
    v10 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    v11 = [v10 assetType];
    v12 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    v13 = [v12 assetSpecifier];
    v14 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    v15 = [v14 assetVersion];
    v16 = [v9 initForAssetType:v11 withAssetSpecifier:v13 matchingAssetVersion:v15];

    if (v16)
    {
      v17 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(MADAutoAssetJob *)self autoJobName];
        v19 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
        v20 = [v19 selectorName];
        *buf = 138543618;
        v33 = v18;
        v34 = 2114;
        v35 = v20;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-SECURE][AUTO-PERSONALIZATION][SET-JOB-PRE] auto-asset pre-personalization SUCCESS | selector:%{public}@", buf, 0x16u);
      }

      v21 = [(MADAutoAssetJob *)self prePersonalizedSelectors];
      [v21 addObject:v16];
    }

    else
    {
      [(MADAutoAssetJob *)self trackAnomaly:6101 forReason:@"{PersonalizeSuccessDecideMore} unable to initialize prePersonalizedSelector"];
    }
  }

  else
  {
    v16 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(MADAutoAssetJob *)self autoJobName];
      v23 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
      v24 = [v23 selectorName];
      *buf = 138543618;
      v33 = v22;
      v34 = 2114;
      v35 = v24;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-SECURE][AUTO-PERSONALIZATION] auto-asset personalization SUCCESS | selector:%{public}@", buf, 0x16u);
    }
  }

  v25 = [MADAutoAssetJobParam alloc];
  v26 = [(MADAutoAssetJob *)self _updateLatestSummary];
  v27 = [(MADAutoAssetJobParam *)v25 initWithSafeSummary:v26];

  v28 = [(MADAutoAssetJob *)self decideFollowupMoreAssetsToDownload:@"PersonalizeSuccessDecideMore" withEventInfo:v27];
  v29 = [(MADAutoAssetJob *)self autoJobFSM];
  [v29 followupEvent:v28 withInfo:v27];

  os_activity_scope_leave(&v31);
  return 0;
}

- (int64_t)action_PersonalizeFailureDecideMore:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v19.opaque[0] = 0;
  v19.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:PersonalizeFailureDecideMore", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v19);

  [(MADAutoAssetJob *)self setTryPersonalizeFailed:1, v19.opaque[0], v19.opaque[1]];
  v9 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(MADAutoAssetJob *)self autoJobName];
    v11 = [(MADAutoAssetJob *)self tryPersonalizeFailed];
    v12 = @"N";
    if (v11)
    {
      v12 = @"Y";
    }

    *buf = 138543618;
    v21 = v10;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-SECURE][AUTO-PERSONALIZATION] {PersonalizeFailureDecideMore} will not make any additional personalization attempts | tryPersonalizeFailed:%@", buf, 0x16u);
  }

  v13 = [MADAutoAssetJobParam alloc];
  v14 = [(MADAutoAssetJob *)self _updateLatestSummary];
  v15 = [(MADAutoAssetJobParam *)v13 initWithSafeSummary:v14];

  v16 = [(MADAutoAssetJob *)self decideFollowupMoreAssetsToDownload:@"PersonalizeFailureDecideMore" withEventInfo:v15];
  v17 = [(MADAutoAssetJob *)self autoJobFSM];
  [v17 followupEvent:v16 withInfo:v15];

  os_activity_scope_leave(&v19);
  return 0;
}

- (int64_t)action_PersonalizeHealSuccessDecideMore:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v22.opaque[0] = 0;
  v22.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:PersonalizeHealSuccessDecideMore", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v22);

  [(MADAutoAssetJob *)self setTryPersonalizeSuccess:1, v22.opaque[0], v22.opaque[1]];
  if (![(MADAutoAssetJob *)self stagerJob]&& [(MADAutoAssetJob *)self autoAssetSetJob]&& ([(MADAutoAssetJob *)self tryPersonalizeSelector], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = [MADAutoAssetJobParam alloc];
    v11 = [(MADAutoAssetJob *)self _updateLatestSummary];
    v12 = [(MADAutoAssetJobParam *)v10 initWithSafeSummary:v11];

    v13 = [(MADAutoAssetJob *)self prePersonalizedSelectors];
    v14 = [(MADAutoAssetJob *)self tryPersonalizeSelector];
    [v13 addObject:v14];

    [(MADAutoAssetJob *)self setTryPersonalizeSelector:0];
    v15 = [(MADAutoAssetJob *)self tryPersonalizeDescriptors];
    v16 = [v15 count];

    if (v16)
    {
      v17 = @"HealPersonalizeMore";
    }

    else
    {
      v19 = [(MADAutoAssetJob *)self tryPersonalizeFailed];
      v20 = @"HealPersonalizeDoneAvail";
      if (v19)
      {
        v20 = @"HealPersonalizeDoneNotAvail";
      }

      v17 = v20;
    }

    v21 = [(MADAutoAssetJob *)self autoJobFSM];
    [v21 followupEvent:v17 withInfo:v12];
  }

  else
  {
    [(MADAutoAssetJob *)self trackAnomaly:6103 forReason:@"{PersonalizeHealSuccessDecideMore} healing is only valid for set-job"];
  }

  os_activity_scope_leave(&v22);

  return 0;
}

- (int64_t)action_PersonalizeHealFailureDecideMore:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v18.opaque[0] = 0;
  v18.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:PersonalizeHealFailureDecideMore", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v18);

  [(MADAutoAssetJob *)self setTryPersonalizeFailed:1, v18.opaque[0], v18.opaque[1]];
  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v9 = [MADAutoAssetJobParam alloc];
    v10 = [(MADAutoAssetJob *)self _updateLatestSummary];
    v11 = [(MADAutoAssetJobParam *)v9 initWithSafeSummary:v10];

    [(MADAutoAssetJob *)self setTryPersonalizeSelector:0];
    [(MADAutoAssetJob *)self setTryPersonalizeFailed:1];
    v12 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(MADAutoAssetJob *)self autoJobName];
      v14 = [(MADAutoAssetJob *)self tryPersonalizeFailed];
      v15 = @"N";
      if (v14)
      {
        v15 = @"Y";
      }

      *buf = 138543618;
      v20 = v13;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-SECURE][AUTO-PERSONALIZATION] {PersonalizeHealFailureDecideMore} will not make any additional personalization attempts | tryPersonalizeFailed:%@", buf, 0x16u);
    }

    v16 = [(MADAutoAssetJob *)self autoJobFSM];
    [v16 followupEvent:@"HealPersonalizeDoneNotAvail" withInfo:v11];
  }

  else
  {
    [(MADAutoAssetJob *)self trackAnomaly:6103 forReason:@"{PersonalizeHealFailureDecideMore} healing is only valid for set-job"];
  }

  os_activity_scope_leave(&v18);

  return 0;
}

- (int64_t)action_LookupSuccessContinue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:LookupSuccessContinue", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v14);

  [(MADAutoAssetJob *)self releaseLookupGrant:v14.opaque[0]];
  if (![(MADAutoAssetJob *)self autoAssetSetJob]|| [(MADAutoAssetJob *)self autoAssetSetJob]&& ![(MADAutoAssetJob *)self setCheckAwaitingDownload])
  {
    [(MADAutoAssetJob *)self replyToJobsWhenCatalogDownloaded:@"LookupSuccessContinue" discoveredNewer:0];
  }

  v9 = [(MADAutoAssetJob *)self autoJobFSM];
  v10 = [MADAutoAssetJobParam alloc];
  v11 = [(MADAutoAssetJob *)self _updateLatestSummary];
  v12 = [(MADAutoAssetJobParam *)v10 initWithSafeSummary:v11];
  [v9 followupEvent:@"LookupContinue" withInfo:v12];

  os_activity_scope_leave(&v14);
  return 0;
}

- (int64_t)action_LookupNoNewerContinue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:LookupNoNewerContinue", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  [(MADAutoAssetJob *)self releaseLookupGrant];
  v9 = [(MADAutoAssetJob *)self errorCodeForNoNewerContentFound];
  v10 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"LookupNoNewerContinue"];
  v11 = [MAAutoAssetError buildError:v9 fromOperation:v10 underlyingError:0 withDescription:@"no [newer] version (matching auto-asset-selector) was found"];

  [(MADAutoAssetJob *)self replyToJobsWhenLookupFailed:@"LookupFailedContinue" withLookupError:v11];
  v12 = [(MADAutoAssetJob *)self autoJobFSM];
  v13 = [MADAutoAssetJobParam alloc];
  v14 = [(MADAutoAssetJob *)self _updateLatestSummary];
  v15 = [(MADAutoAssetJobParam *)v13 initWithSafeSummary:v14];
  [v12 followupEvent:@"LookupContinue" withInfo:v15];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_LookupRevokedContinue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:LookupRevokedContinue", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  [(MADAutoAssetJob *)self releaseLookupGrant];
  v9 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"LookupRevokedContinue"];
  v10 = [MAAutoAssetError buildError:6203 fromOperation:v9 underlyingError:0 withDescription:@"previously available version (matching auto-asset-selector) has been revoked"];

  v11 = [(MADAutoAssetJob *)self autoAssetSelector];
  [MADAutoAssetHistory recordFailedOperation:506 fromLayer:2 forAssetID:@"UNKNOWN" withSelector:v11 failingWithError:v10];

  [(MADAutoAssetJob *)self replyToJobsWhenLookupFailed:@"LookupRevokedContinue" withLookupError:v10];
  v12 = [(MADAutoAssetJob *)self autoJobFSM];
  v13 = [MADAutoAssetJobParam alloc];
  v14 = [(MADAutoAssetJob *)self _updateLatestSummary];
  v15 = [(MADAutoAssetJobParam *)v13 initWithSafeSummary:v14];
  [v12 followupEvent:@"LookupContinue" withInfo:v15];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_LookupFailedContinue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:LookupFailedContinue", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v15);

  [(MADAutoAssetJob *)self releaseLookupGrant:v15.opaque[0]];
  v9 = [v5 finishedError];
  [(MADAutoAssetJob *)self replyToJobsWhenLookupFailed:@"LookupFailedContinue" withLookupError:v9];

  v10 = [(MADAutoAssetJob *)self autoJobFSM];
  v11 = [MADAutoAssetJobParam alloc];
  v12 = [(MADAutoAssetJob *)self _updateLatestSummary];
  v13 = [(MADAutoAssetJobParam *)v11 initWithSafeSummary:v12];
  [v10 followupEvent:@"LookupContinue" withInfo:v13];

  os_activity_scope_leave(&v15);
  return 0;
}

- (int64_t)action_JobSuccessPatchedAwaiting:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:JobSuccessPatchedAwaiting", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  if ([(MADAutoAssetJob *)self autoAssetSetJob:v10.opaque[0]])
  {
    [(MADAutoAssetJob *)self statusChange:@"JobSuccessPatchedAwaiting" catalogAnomaly:6103 forReason:@"action JobSuccessPatchedAwaiting should never execute for set-job"];
  }

  else
  {
    [(MADAutoAssetJob *)self statusChangeSuccesfullyPatched:@"JobSuccessPatchedAwaiting"];
    [(MADAutoAssetJob *)self foundAndDownloaded:@"JobSuccessPatchedAwaiting" forJobParam:v5 wasPatched:1];
    [(MADAutoAssetJob *)self replyToJobsWhenContentDownloaded:@"JobSuccessPatchedAwaiting"];
  }

  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_JobSuccessDownloadedAwaiting:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:JobSuccessDownloadedAwaiting", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  if ([(MADAutoAssetJob *)self autoAssetSetJob:v10.opaque[0]])
  {
    [(MADAutoAssetJob *)self statusChange:@"JobSuccessDownloadedAwaiting" catalogAnomaly:6103 forReason:@"action JobSuccessDownloadedAwaiting should never execute for set-job"];
  }

  else
  {
    [(MADAutoAssetJob *)self statusChangeSuccessfullyDownloaded:@"JobSuccessDownloadedAwaiting"];
    [(MADAutoAssetJob *)self foundAndDownloaded:@"JobSuccessDownloadedAwaiting" forJobParam:v5 wasPatched:0];
    [(MADAutoAssetJob *)self replyToJobsWhenContentDownloaded:@"JobSuccessDownloadedAwaiting"];
  }

  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_JobFailedAwaiting:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v34.opaque[0] = 0;
  v34.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:JobFailedAwaiting", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v34);

  if (![(MADAutoAssetJob *)self autoAssetSetJob:v34.opaque[0]])
  {
    v18 = [(MADAutoAssetJob *)self autoAssetSelector];
    v26 = [v5 finishedError];
    [MADAutoAssetHistory recordFailedOperation:504 fromLayer:2 forAssetID:@"UNKNOWN" withSelector:v18 failingWithError:v26];
    goto LABEL_5;
  }

  v9 = [(MADAutoAssetJob *)self assignedSetDescriptor];
  v10 = [v9 clientDomainName];
  v11 = [(MADAutoAssetJob *)self assignedSetDescriptor];
  v12 = [v11 assetSetIdentifier];
  v13 = [(MADAutoAssetJob *)self assignedSetDescriptor];
  v14 = [v13 discoveredAtomicInstance];
  v15 = [v5 finishedError];
  [MADAutoAssetHistory recordFailedOperation:504 fromLayer:2 forClientDomainName:v10 forAssetSetIdentifier:v12 forAtomicInstance:v14 failingWithError:v15];

  if (+[MAAIRBEventReporter isAvailable])
  {
    v16 = [MAAIRBMobileAssetOperationMetadata alloc];
    v17 = [MADAutoAssetHistoryTracker operationName:504];
    v18 = [(MAAIRBMobileAssetOperationMetadata *)v16 initWithCode:504 name:v17];

    v19 = [MAAIRBMobileAssetAtomicInstance alloc];
    v20 = [MAAIRBMobileAssetAssetSet alloc];
    v21 = [(MADAutoAssetJob *)self assignedSetDescriptor];
    v22 = [v21 assetSetIdentifier];
    v23 = [(MAAIRBMobileAssetAssetSet *)v20 initWithAssetSetIdentifier:v22];
    v24 = [(MADAutoAssetJob *)self assignedSetDescriptor];
    v25 = [v24 discoveredAtomicInstance];
    v26 = [(MAAIRBMobileAssetAtomicInstance *)v19 initWithAssetSet:v23 atomicInstanceId:v25];

    v27 = [MAAIRBAppleIntelligenceAssetDeliveryEventType typeAtomicInstance:v18 atomicInstance:v26 assetCount:0];
    v28 = [MAAIRBAppleIntelligenceAssetDeliveryEvent alloc];
    v29 = [v5 finishedError];
    v35 = v29;
    v30 = [NSArray arrayWithObjects:&v35 count:1];
    v31 = [(MAAIRBAppleIntelligenceAssetDeliveryEvent *)v28 initWithErrors:v30 type:v27];

    [MAAIRBEventReporter emitAppleIntelligenceEvent:v31];
LABEL_5:
  }

  v32 = [v5 finishedError];
  [(MADAutoAssetJob *)self replyToJobsWhenLookupFailed:@"JobFailedAwaiting" withLookupError:v32];

  os_activity_scope_leave(&v34);
  return 0;
}

- (int64_t)action_JobSuccessFoundSameSchedule:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:JobSuccessFoundSameSchedule", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    [(MADAutoAssetJob *)self statusChange:@"JobSuccessFoundSameSchedule" catalogAnomaly:6103 forReason:@"action JobSuccessFoundSameSchedule should never execute for set-job"];
  }

  else
  {
    if ([(MADAutoAssetJob *)self determiningAssetContent])
    {
      v9 = [(MADAutoAssetJob *)self refreshOnFilesystemFromManagerPromotingIfStaged:0];
      v10 = [(MADAutoAssetJob *)self autoAssetSelector];
      v11 = [v10 assetVersion];
      if (v11)
      {
        v12 = [(MADAutoAssetJob *)self autoAssetSelector];
        v13 = [v12 assetVersion];
        v14 = [(MADAutoAssetJob *)self installedOnFilesystemWithVersion:v13 fromLocation:@"JobSuccessFoundSameSchedule"];
      }

      else
      {
        v14 = [(MADAutoAssetJob *)self latestInstalledOnFilesystem];
      }

      [(MADAutoAssetJob *)self updateResultPropertiesWithDescriptor:v14];
      v17 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(MADAutoAssetJob *)self autoJobName];
        v19 = [v14 selectorName];
        *buf = 138543618;
        v23 = v18;
        v24 = 2114;
        v25 = v19;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ | {JobSuccessFoundSameSchedule} same version found that has already been downloaded to the filesystem | selector:%{public}@", buf, 0x16u);
      }

      v16 = 0;
    }

    else
    {
      if ([(MADAutoAssetJob *)self tryPersonalizeFailed])
      {
        v15 = 6535;
      }

      else
      {
        v15 = 6205;
      }

      v14 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"JobSuccessFoundSameSchedule"];
      v16 = [MAAutoAssetError buildError:v15 fromOperation:v14 underlyingError:0 withDescription:@"same version found that has already been downloaded to the filesystem"];
    }

    [(MADAutoAssetJob *)self doneWithAllJobs:@"JobSuccessFoundSameSchedule" withLookupError:v16];
    [(MADAutoAssetJob *)self autoAssetJobFinished:@"JobSuccessFoundSameSchedule" forJobFinishedReason:@"FOUND_SAME"];
  }

  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_JobSuccessFoundPromoted:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:JobSuccessFoundPromoted", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  if ([(MADAutoAssetJob *)self autoAssetSetJob:v11.opaque[0]])
  {
    [(MADAutoAssetJob *)self statusChange:@"JobSuccessFoundPromoted" catalogAnomaly:6103 forReason:@"action JobSuccessFoundPromoted should never execute for set-job"];
  }

  else
  {
    [(MADAutoAssetJob *)self statusChangeSuccessfullyDownloaded:@"JobSuccessFoundPromoted"];
    v9 = [(MADAutoAssetJob *)self currentStatus];
    -[MADAutoAssetJob foundAndDownloaded:forJobParam:wasPatched:](self, "foundAndDownloaded:forJobParam:wasPatched:", @"JobSuccessFoundPromoted", v5, [v9 downloadedAsPatch]);

    [(MADAutoAssetJob *)self doneWithAllJobs:@"JobSuccessFoundPromoted"];
    [(MADAutoAssetJob *)self autoAssetJobFinished:@"JobSuccessFoundPromoted" forJobFinishedReason:@"SUCCESS(IMMEDIATE_PROMOTED)"];
  }

  os_activity_scope_leave(&v11);

  return 0;
}

- (int64_t)action_JobSuccessPatchedSchedule:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:JobSuccessPatchedSchedule", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  if ([(MADAutoAssetJob *)self autoAssetSetJob:v11.opaque[0]])
  {
    [(MADAutoAssetJob *)self statusChange:@"JobSuccessPatchedSchedule" catalogAnomaly:6103 forReason:@"action JobSuccessPatchedSchedule should never execute for set-job"];
  }

  else
  {
    [(MADAutoAssetJob *)self statusChangeSuccesfullyPatched:@"JobSuccessPatchedSchedule"];
    v9 = [(MADAutoAssetJob *)self currentStatus];
    -[MADAutoAssetJob foundAndDownloaded:forJobParam:wasPatched:](self, "foundAndDownloaded:forJobParam:wasPatched:", @"JobSuccessPatchedSchedule", v5, [v9 downloadedAsPatch]);

    [(MADAutoAssetJob *)self doneWithAllJobs:@"JobSuccessPatchedSchedule"];
    [(MADAutoAssetJob *)self autoAssetJobFinished:@"JobSuccessPatchedSchedule" forJobFinishedReason:@"SUCCESS(PATCHED)"];
  }

  os_activity_scope_leave(&v11);

  return 0;
}

- (int64_t)action_JobSuccessDownloadedSchedule:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:JobSuccessDownloadedSchedule", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  if ([(MADAutoAssetJob *)self autoAssetSetJob:v11.opaque[0]])
  {
    [(MADAutoAssetJob *)self statusChange:@"JobSuccessDownloadedSchedule" catalogAnomaly:6103 forReason:@"action JobSuccessDownloadedSchedule should never execute for set-job"];
  }

  else
  {
    [(MADAutoAssetJob *)self statusChangeSuccessfullyDownloaded:@"JobSuccessDownloadedSchedule"];
    v9 = [(MADAutoAssetJob *)self currentStatus];
    -[MADAutoAssetJob foundAndDownloaded:forJobParam:wasPatched:](self, "foundAndDownloaded:forJobParam:wasPatched:", @"JobSuccessDownloadedSchedule", v5, [v9 downloadedAsPatch]);

    [(MADAutoAssetJob *)self doneWithAllJobs:@"JobSuccessDownloadedSchedule"];
    [(MADAutoAssetJob *)self autoAssetJobFinished:@"JobSuccessDownloadedSchedule" forJobFinishedReason:@"SUCCESS(DOWNLOADED)"];
  }

  os_activity_scope_leave(&v11);

  return 0;
}

- (int64_t)action_JobSuccessAlreadyDownloaded:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:JobSuccessAlreadyDownloaded", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self doneWithAllJobs:@"JobSuccessAlreadyDownloaded", v10.opaque[0], v10.opaque[1]];
  [(MADAutoAssetJob *)self autoAssetJobFinished:@"JobSuccessAlreadyDownloaded" forJobFinishedReason:@"SUCCESS(ALREADY_DOWNLOADED)"];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_JobSuccessPersonalized:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:JobSuccessPersonalized", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  if ([(MADAutoAssetJob *)self autoAssetSetJob:v11.opaque[0]])
  {
    [(MADAutoAssetJob *)self statusChange:@"JobSuccessPersonalized" catalogAnomaly:6103 forReason:@"action JobSuccessPersonalized should never execute for set-job"];
  }

  else
  {
    [(MADAutoAssetJob *)self statusChangeSuccessfullyDownloaded:@"JobSuccessPersonalized"];
    v9 = [(MADAutoAssetJob *)self currentStatus];
    -[MADAutoAssetJob foundAndDownloaded:forJobParam:wasPatched:](self, "foundAndDownloaded:forJobParam:wasPatched:", @"JobSuccessPersonalized", v5, [v9 downloadedAsPatch]);

    [(MADAutoAssetJob *)self doneWithAllJobs:@"JobSuccessPersonalized"];
    [(MADAutoAssetJob *)self autoAssetJobFinished:@"JobSuccessPersonalized" forJobFinishedReason:@"SUCCESS(PATCHED)"];
  }

  os_activity_scope_leave(&v11);

  return 0;
}

- (int64_t)action_JobNoNewerSchedule:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:JobNoNewerSchedule", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [(MADAutoAssetJob *)self errorCodeForNoNewerContentFound];
  v10 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"JobNoNewerSchedule"];
  v11 = [MAAutoAssetError buildError:v9 fromOperation:v10 underlyingError:0 withDescription:@"no [newer] version (matching auto-asset-selector) was found"];

  [(MADAutoAssetJob *)self doneWithAllJobs:@"JobNoNewerSchedule" withLookupError:v11];
  [(MADAutoAssetJob *)self autoAssetJobFinished:@"JobNoNewerSchedule" forJobFinishedReason:@"NO_NEWER"];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_JobRevokedSchedule:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:JobRevokedSchedule", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"JobRevokedSchedule"];
  v10 = [MAAutoAssetError buildError:6203 fromOperation:v9 underlyingError:0 withDescription:@"previously available version (matching auto-asset-selector) has been revoked"];

  [(MADAutoAssetJob *)self doneWithAllJobs:@"JobRevokedSchedule" withLookupError:v10];
  [(MADAutoAssetJob *)self autoAssetJobFinished:@"JobRevokedSchedule" forJobFinishedReason:@"REVOKED"];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_JobFailedSchedule:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:JobFailedSchedule", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v15);

  v9 = [v5 finishedError];
  [(MADAutoAssetJob *)self determineWhetherNetworkConnectivityError:v9];

  v10 = [(MADAutoAssetJob *)self autoAssetSelector];
  v11 = [v5 finishedError];
  [MADAutoAssetHistory recordFailedOperation:504 fromLayer:2 forAssetID:@"UNKNOWN" withSelector:v10 failingWithError:v11];

  v12 = [v5 finishedError];
  [(MADAutoAssetJob *)self doneWithAllJobs:@"JobFailedSchedule" withLookupError:v12];

  v13 = [v5 finishedError];
  [(MADAutoAssetJob *)self autoAssetJobFinished:@"JobFailedSchedule" forJobFinishedReason:@"FAILED" failingWithError:v13];

  os_activity_scope_leave(&v15);
  return 0;
}

- (int64_t)action_ReleaseGrantJobFailedSchedule:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v16.opaque[0] = 0;
  v16.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:ReleaseGrantJobFailedSchedule", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v16);

  [(MADAutoAssetJob *)self releaseLookupGrant:v16.opaque[0]];
  v9 = [v5 finishedError];
  [(MADAutoAssetJob *)self reportIfSetPallasResponseReceived:v9];

  v10 = [v5 finishedError];
  [(MADAutoAssetJob *)self determineWhetherNetworkConnectivityError:v10];

  v11 = [(MADAutoAssetJob *)self autoAssetSelector];
  v12 = [v5 finishedError];
  [MADAutoAssetHistory recordFailedOperation:504 fromLayer:2 forAssetID:@"UNKNOWN" withSelector:v11 failingWithError:v12];

  v13 = [v5 finishedError];
  [(MADAutoAssetJob *)self doneWithAllJobs:@"ReleaseGrantJobFailedSchedule" withLookupError:v13];

  v14 = [v5 finishedError];
  [(MADAutoAssetJob *)self autoAssetJobFinished:@"ReleaseGrantJobFailedSchedule" forJobFinishedReason:@"FAILED(RELEASED_GRANT)" failingWithError:v14];

  os_activity_scope_leave(&v16);
  return 0;
}

- (int64_t)action_JobPostponedSchedule:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:JobPostponedSchedule", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  [(MADAutoAssetJob *)self replyToJobsWhenCatalogDownloaded:@"JobPostponedSchedule" discoveredNewer:0];
  v9 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"JobPostponedSchedule"];
  v10 = [MAAutoAssetError buildError:6401 fromOperation:v9 underlyingError:0 withDescription:@"download of the auto-asset content could not begin (download postponed [scheduled])"];

  [(MADAutoAssetJob *)self doneWithAllJobs:@"JobPostponedSchedule" withLookupError:v10];
  v11 = [v5 finishedError];
  [(MADAutoAssetJob *)self autoAssetJobFinished:@"JobPostponedSchedule" forJobFinishedReason:@"POSTPONED" failingWithError:v11];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_JobEndedSchedule:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:JobEndedSchedule", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"JobEndedSchedule"];
  v10 = [MAAutoAssetError buildError:6108 fromOperation:v9 underlyingError:0 withDescription:@"auto-asset-job ended with unserviced active client request"];

  [(MADAutoAssetJob *)self doneWithAllJobs:@"JobEndedSchedule" withLookupError:v10];
  [(MADAutoAssetJob *)self autoAssetJobFinished:@"JobEndedSchedule" forJobFinishedReason:@"ENDED" failingWithError:v10];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_RecordSimulateOperation:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:RecordSimulateOperation", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self simulateSet:v5, v10.opaque[0], v10.opaque[1]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_CheckSimulateEndStatusRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:CheckSimulateEndStatusRequest", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self simulateSet:v5, v10.opaque[0], v10.opaque[1]];
  [(MADAutoAssetJob *)self simulateEnd:1];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_SimulateSuspendCatalogLookupIssue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SimulateSuspendCatalogLookupIssue", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  if ([(MADAutoAssetJob *)self simulateTriggered:v10.opaque[0]]== &dword_0 + 1)
  {
    [(MADAutoAssetJob *)self simulateEnd:0];
  }

  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_SimulatePostponedCalculateSpace:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SimulatePostponedCalculateSpace", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  if ([(MADAutoAssetJob *)self simulateTriggered:v10.opaque[0]]== &dword_8 + 2)
  {
    [(MADAutoAssetJob *)self simulateEnd:1];
  }

  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_CancelAssetDownload:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:CancelAssetDownload", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  [(MADAutoAssetJob *)self setReportingProgress:0, v11.opaque[0], v11.opaque[1]];
  v9 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
  [(MADAutoAssetJob *)self requestDownloadManagerCancelDownload:@"CancelAssetDownload" forDescriptor:v9];

  os_activity_scope_leave(&v11);
  return 0;
}

- (int64_t)action_ReleaseGrantCanceling:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:ReleaseGrantCanceling", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self setHoldingLookupGrant:1, v10.opaque[0], v10.opaque[1]];
  [(MADAutoAssetJob *)self releaseLookupGrant];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_FailRequestCanceling:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:FailRequestCanceling", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"FailRequestCanceling"];
  v10 = [MAAutoAssetError buildError:6115 fromOperation:v9 underlyingError:0 withDescription:@"previously active job has been canceled"];

  [(MADAutoAssetJob *)self finishJobTaskForJobParam:v5 withResponseError:v10];
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_JobFailedCanceled:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:JobFailedCanceled", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"JobFailedCanceled"];
  v10 = [MAAutoAssetError buildError:6115 fromOperation:v9 underlyingError:0 withDescription:@"previously active job that was canceled has completed all tracked operations - cancel complete"];

  [(MADAutoAssetJob *)self doneWithAllJobs:@"JobFailedCanceled" withLookupError:v10];
  [(MADAutoAssetJob *)self autoAssetJobFinished:@"JobFailedCanceled" forJobFinishedReason:@"CANCELED" failingWithError:v10];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_ReleaseGrantJobFailedCanceled:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:ReleaseGrantJobFailedCanceled", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  [(MADAutoAssetJob *)self setHoldingLookupGrant:1];
  [(MADAutoAssetJob *)self releaseLookupGrant];
  v9 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"JobFailedCanceled"];
  v10 = [MAAutoAssetError buildError:6115 fromOperation:v9 underlyingError:0 withDescription:@"previously active job that was canceled has completed all tracked operations (grant released) - cancel complete"];

  [(MADAutoAssetJob *)self doneWithAllJobs:@"ReleaseGrantJobFailedCanceled" withLookupError:v10];
  [(MADAutoAssetJob *)self autoAssetJobFinished:@"ReleaseGrantJobFailedCanceled" forJobFinishedReason:@"CANCELED(RELEASED_GRANT)" failingWithError:v10];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_DoneReportingProgress:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:DoneReportingProgress", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self setReportingProgress:0, v10.opaque[0], v10.opaque[1]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_AddAtomicAlterDecideFilesystem:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AddAtomicAlterDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  [(MADAutoAssetJob *)self clearSetStatusStartingSetJob:v11.opaque[0]];
  v9 = [v5 clientRequest];
  [(MADAutoAssetJob *)self _rememberIfSchedulerInvolved:v9];

  [(MADAutoAssetJob *)self addToActiveJobTasks:v5];
  [(MADAutoAssetJob *)self replyToClientForJobParam:v5 withResponseError:0];
  [(MADAutoAssetJob *)self checkFilesystemAndDecidePurgeOrLookup];
  os_activity_scope_leave(&v11);

  return 0;
}

- (int64_t)action_AddAtomicNeedDecideFilesystem:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AddAtomicNeedDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  [(MADAutoAssetJob *)self clearSetStatusStartingSetJob:v11.opaque[0]];
  v9 = [v5 clientRequest];
  [(MADAutoAssetJob *)self _rememberIfSchedulerInvolved:v9];

  [(MADAutoAssetJob *)self addToActiveJobTasks:v5];
  [(MADAutoAssetJob *)self replyToClientForJobParam:v5 withResponseError:0];
  [(MADAutoAssetJob *)self checkFilesystemAndDecidePurgeOrLookup];
  os_activity_scope_leave(&v11);

  return 0;
}

- (int64_t)action_AddAtomicCheckDecideFilesystem:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AddAtomicCheckDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  [(MADAutoAssetJob *)self clearSetStatusStartingSetJob:v11.opaque[0]];
  v9 = [v5 clientRequest];
  [(MADAutoAssetJob *)self _rememberIfSchedulerInvolved:v9];

  [(MADAutoAssetJob *)self addToActiveJobTasks:v5];
  [(MADAutoAssetJob *)self checkFilesystemAndDecidePurgeOrLookup];
  os_activity_scope_leave(&v11);

  return 0;
}

- (int64_t)action_AddAtomicLockDecideFilesystem:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AddAtomicLockDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  [(MADAutoAssetJob *)self clearSetStatusStartingSetJob:v11.opaque[0]];
  v9 = [v5 clientRequest];
  [(MADAutoAssetJob *)self _rememberIfSchedulerInvolved:v9];

  [(MADAutoAssetJob *)self addToActiveJobTasks:v5];
  [(MADAutoAssetJob *)self setLockingAssetContent:1];
  [(MADAutoAssetJob *)self checkFilesystemAndDecidePurgeOrLookup];
  os_activity_scope_leave(&v11);

  return 0;
}

- (int64_t)action_AddAtomicContinueDecideFilesystem:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AddAtomicContinueDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  [(MADAutoAssetJob *)self clearSetStatusStartingSetJob];
  v9 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"AddAtomicContinueDecideFilesystem"];
  v10 = [MAAutoAssetError buildError:6801 fromOperation:v9 underlyingError:0 withDescription:@"AddAtomicContinueDecideFilesystem not yet implemented"];

  [(MADAutoAssetJob *)self finishJobTaskForJobParam:v5 withResponseError:v10];
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_AddAtomicEndDecideFilesystem:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AddAtomicEndDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  [(MADAutoAssetJob *)self clearSetStatusStartingSetJob];
  v9 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"AddAtomicEndDecideFilesystem"];
  v10 = [MAAutoAssetError buildError:6801 fromOperation:v9 underlyingError:0 withDescription:@"AddAtomicEndDecideFilesystem not yet implemented"];

  [(MADAutoAssetJob *)self finishJobTaskForJobParam:v5 withResponseError:v10];
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_MergeAtomicAlterNeeds:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeAtomicAlterNeeds", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"MergeAtomicAlterNeeds"];
  v10 = [MAAutoAssetError buildError:6801 fromOperation:v9 underlyingError:0 withDescription:@"MergeAtomicAlterNeeds not yet implemented"];

  [(MADAutoAssetJob *)self finishJobTaskForJobParam:v5 withResponseError:v10];
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_MergeAtomicNeeds:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeAtomicNeeds", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeAtomicNeeds" forJobEvent:v5, v10.opaque[0], v10.opaque[1]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_MergeAtomicAddLock:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeAtomicAddLock", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeAtomicAddLock" forJobEvent:v5, v10.opaque[0], v10.opaque[1]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_MergeAtomicContinueLock:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeAtomicContinueLock", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"MergeAtomicContinueLock"];
  v10 = [MAAutoAssetError buildError:6801 fromOperation:v9 underlyingError:0 withDescription:@"MergeAtomicContinueLock not yet implemented"];

  [(MADAutoAssetJob *)self finishJobTaskForJobParam:v5 withResponseError:v10];
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_MergeAtomicEndLockDecideInterest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeAtomicEndLockDecideInterest", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"MergeAtomicEndLockDecideInterest"];
  v10 = [MAAutoAssetError buildError:6801 fromOperation:v9 underlyingError:0 withDescription:@"MergeAtomicEndLockDecideInterest not yet implemented"];

  [(MADAutoAssetJob *)self finishJobTaskForJobParam:v5 withResponseError:v10];
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_MergeAtomicAlterDecideLookup:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeAtomicAlterDecideLookup", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"MergeAtomicAlterDecideLookup"];
  v10 = [MAAutoAssetError buildError:6801 fromOperation:v9 underlyingError:0 withDescription:@"MergeAtomicAlterDecideLookup not yet implemented"];

  [(MADAutoAssetJob *)self finishJobTaskForJobParam:v5 withResponseError:v10];
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_MergeAtomicNeedsDecideLookup:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeAtomicNeedsDecideLookup", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v12);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeAtomicNeedsDecideLookup" forJobEvent:v5, v12.opaque[0], v12.opaque[1]];
  v9 = [(MADAutoAssetJob *)self decideFollowupBoost:@"MergeAtomicNeedsDecideLookup" forJobEvent:v5 boostEvent:@"BoostConfig" noBoostEvent:0];
  if (v9)
  {
    v10 = [(MADAutoAssetJob *)self autoJobFSM];
    [v10 followupEvent:v9 withInfo:v5];
  }

  os_activity_scope_leave(&v12);
  return 0;
}

- (int64_t)action_MergeAtomicAlterDecideLookupBoost:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeAtomicAlterDecideLookupBoost", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"MergeAtomicAlterDecideLookupBoost"];
  v10 = [MAAutoAssetError buildError:6801 fromOperation:v9 underlyingError:0 withDescription:@"MergeAtomicAlterDecideLookupBoost not yet implemented"];

  [(MADAutoAssetJob *)self finishJobTaskForJobParam:v5 withResponseError:v10];
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_MergeAtomicNeedsDecideLookupBoost:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeAtomicNeedsDecideLookupBoost", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v12);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeAtomicNeedsDecideLookupBoost" forJobEvent:v5, v12.opaque[0], v12.opaque[1]];
  [(MADAutoAssetJob *)self replyToJobsWhenCatalogDownloaded:@"MergeAtomicNeedsDecideLookupBoost" discoveredNewer:1];
  v9 = [(MADAutoAssetJob *)self decideFollowupBoost:@"MergeAtomicNeedsDecideLookupBoost" forJobEvent:v5 boostEvent:@"BoostConfig" noBoostEvent:0];
  if (v9)
  {
    v10 = [(MADAutoAssetJob *)self autoJobFSM];
    [v10 followupEvent:v9 withInfo:v5];
  }

  os_activity_scope_leave(&v12);
  return 0;
}

- (int64_t)action_MergeAtomicLockDecideLookupBoost:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeAtomicLockDecideLookupBoost", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v12);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeAtomicLockDecideLookupBoost" forJobEvent:v5, v12.opaque[0], v12.opaque[1]];
  v9 = [(MADAutoAssetJob *)self decideFollowupBoost:@"MergeAtomicLockDecideLookupBoost" forJobEvent:v5 boostEvent:@"BoostConfig" noBoostEvent:0];
  if (v9)
  {
    v10 = [(MADAutoAssetJob *)self autoJobFSM];
    [v10 followupEvent:v9 withInfo:v5];
  }

  os_activity_scope_leave(&v12);
  return 0;
}

- (int64_t)action_MergeAtomicCntnuDecideLookupBoost:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeAtomicCntnuDecideLookupBoost", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"MergeAtomicCntnuDecideLookupBoost"];
  v10 = [MAAutoAssetError buildError:6801 fromOperation:v9 underlyingError:0 withDescription:@"MergeAtomicCntnuDecideLookupBoost not yet implemented"];

  [(MADAutoAssetJob *)self finishJobTaskForJobParam:v5 withResponseError:v10];
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_SetCalculateDownloadSpace:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetCalculateDownloadSpace", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v15);

  if ([(MADAutoAssetJob *)self simulateOperation:v15.opaque[0]]== &dword_8 + 2)
  {
    [(MADAutoAssetJob *)self setSimulateTriggered:[(MADAutoAssetJob *)self simulateOperation]];
    if (objc_opt_respondsToSelector())
    {
      v9 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(MADAutoAssetJob *)self autoJobName];
        v11 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MADAutoAssetJob *)self simulateOperation]];
        *buf = 138543618;
        v17 = v10;
        v18 = 2114;
        v19 = v11;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ {SetCalculateDownloadSpace} | SIMULATE_OPERATION(%{public}@) | call to _setCalculateDownloadSpace postponed", buf, 0x16u);
      }
    }

    else
    {
      v9 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(MADAutoAssetJob *)self autoJobName];
        v13 = [(MADAutoAssetJob *)self simulateOperation];
        *buf = 138543618;
        v17 = v12;
        v18 = 2048;
        v19 = v13;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ {SetCalculateDownloadSpace} | SIMULATE_OPERATION(%lld) | call to _setCalculateDownloadSpace postponed", buf, 0x16u);
      }
    }
  }

  else
  {
    [(MADAutoAssetJob *)self _setCalculateDownloadSpace:@"SetCalculateDownloadSpace"];
  }

  os_activity_scope_leave(&v15);

  return 0;
}

- (int64_t)action_SetDecideDownload:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v25.opaque[0] = 0;
  v25.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetDecideDownload", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v25);

  if ([(MADAutoAssetJob *)self autoAssetSetJob:v25.opaque[0]])
  {
    if ([(MADAutoAssetJob *)self rampingForeground])
    {
      [(MADAutoAssetJob *)self setRampingForegroundLatched:1];
    }

    v9 = [(MADAutoAssetJob *)self newAssetDownloadOptions];
    [(MADAutoAssetJob *)self setAssetDownloadOptions:v9];

    [(MADAutoAssetJob *)self latchWhetherDownloadingUserInitiated];
    if ([(MADAutoAssetJob *)self placeNextSetAssetDescriptorToDownload:@"SetDecideDownload" restrictToFull:0 error:0])
    {
      v10 = @"SetDownloadPatch";
    }

    else
    {
      v10 = @"SetDownloadFull";
    }

    [(MADAutoAssetJob *)self setReportingProgress:1];
    v11 = [(MADAutoAssetJob *)self assignedSetDescriptor];
    v12 = [v11 discoveredAtomicInstance];
    v13 = [(MADAutoAssetJob *)self currentSetStatus];
    [v13 setNewerAtomicInstanceDiscovered:v12];

    v14 = [(MADAutoAssetJob *)self foundSetNewerDiscoveredAtomicEntries];
    v15 = [(MADAutoAssetJob *)self currentSetStatus];
    [v15 setNewerDiscoveredAtomicEntries:v14];

    v16 = [(MADAutoAssetJob *)self currentSetStatus];
    v17 = [v16 currentNotifications];
    [v17 setAtomicInstanceDiscovered:1];

    v18 = [(MADAutoAssetJob *)self currentSetStatus];
    v19 = [v18 currentNotifications];
    [v19 setDownloadPending:1];

    [(MADAutoAssetJob *)self updateAutoAssetSetDescriptor];
    [(MADAutoAssetJob *)self replyToJobsWhenCatalogDownloaded:@"SetDecideDownload" discoveredNewer:1];
    v20 = [(MADAutoAssetJob *)self autoJobFSM];
    v21 = [MADAutoAssetJobParam alloc];
    v22 = [(MADAutoAssetJob *)self _updateLatestSummary];
    v23 = [(MADAutoAssetJobParam *)v21 initWithSafeSummary:v22];
    [v20 followupEvent:v10 withInfo:v23];
  }

  else
  {
    [(MADAutoAssetJob *)self statusChange:@"SetDecideDownload" catalogAnomaly:6103 forReason:@"action SetDecideDownload should only execute for set-job"];
  }

  os_activity_scope_leave(&v25);

  return 0;
}

- (int64_t)action_SetDoneDetermine:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetDoneDetermine", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v15);

  if ([(MADAutoAssetJob *)self stagerJob:v15.opaque[0]])
  {
    if (![(MADAutoAssetJob *)self stagerJobResultsReported])
    {
      if ([(MADAutoAssetJob *)self simulateOperation]== &dword_4 + 2)
      {
        [(MADAutoAssetJob *)self setSimulateTriggered:[(MADAutoAssetJob *)self simulateOperation]];
        if (objc_opt_respondsToSelector())
        {
          v9 = _MADLog(@"AutoJob");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = [(MADAutoAssetJob *)self autoJobName];
            v11 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MADAutoAssetJob *)self simulateOperation]];
            *buf = 138543618;
            v17 = v10;
            v18 = 2114;
            v19 = v11;
            _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ {SetDoneDetermine} | SIMULATE_OPERATION(%{public}@) | call to stagerJobDetermineDone postponed", buf, 0x16u);
          }
        }

        else
        {
          v9 = _MADLog(@"AutoJob");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [(MADAutoAssetJob *)self autoJobName];
            v14 = [(MADAutoAssetJob *)self simulateOperation];
            *buf = 138543618;
            v17 = v13;
            v18 = 2048;
            v19 = v14;
            _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ {SetDoneDetermine} | SIMULATE_OPERATION(%lld) | call to stagerJobDetermineDone postponed", buf, 0x16u);
          }
        }
      }

      else
      {
        [(MADAutoAssetJob *)self stagerJobDetermineDone:@"SetDoneDetermine" reportingError:0];
      }
    }
  }

  else
  {
    [(MADAutoAssetJob *)self trackAnomaly:6103 forReason:@"{SetDoneDetermine} not a stager-job"];
  }

  os_activity_scope_leave(&v15);

  return 0;
}

- (int64_t)action_SetLookupSuccessContinue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetLookupSuccessContinue", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v14);

  [(MADAutoAssetJob *)self releaseLookupGrant:v14.opaque[0]];
  [(MADAutoAssetJob *)self replyToJobsWhenCatalogDownloaded:@"SetLookupSuccessContinue" discoveredNewer:0];
  v9 = [(MADAutoAssetJob *)self autoJobFSM];
  v10 = [MADAutoAssetJobParam alloc];
  v11 = [(MADAutoAssetJob *)self _updateLatestSummary];
  v12 = [(MADAutoAssetJobParam *)v10 initWithSafeSummary:v11];
  [v9 followupEvent:@"LookupContinue" withInfo:v12];

  os_activity_scope_leave(&v14);
  return 0;
}

- (int64_t)action_SetLookupNoneContinue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetLookupNoneContinue", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v14);

  [(MADAutoAssetJob *)self releaseLookupGrant:v14.opaque[0]];
  [(MADAutoAssetJob *)self replyToJobsWhenCatalogDownloaded:@"SetLookupNoneContinue" discoveredNewer:0];
  v9 = [(MADAutoAssetJob *)self autoJobFSM];
  v10 = [MADAutoAssetJobParam alloc];
  v11 = [(MADAutoAssetJob *)self _updateLatestSummary];
  v12 = [(MADAutoAssetJobParam *)v10 initWithSafeSummary:v11];
  [v9 followupEvent:@"LookupContinue" withInfo:v12];

  os_activity_scope_leave(&v14);
  return 0;
}

- (int64_t)action_SetLookupNoNewerContinue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetLookupNoNewerContinue", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  [(MADAutoAssetJob *)self releaseLookupGrant];
  if ([(MADAutoAssetJob *)self tryPersonalizeFailed])
  {
    v9 = 6535;
  }

  else if ([(MADAutoAssetJob *)self foundSameAtomicInstanceAlreadyDownloaded])
  {
    v9 = 6205;
  }

  else
  {
    v9 = 6201;
  }

  v10 = [[NSString alloc] initWithFormat:@"AUTO-SET-JOB(%@)", @"LookupNoNewerContinue"];
  v11 = [MAAutoAssetError buildError:v9 fromOperation:v10 underlyingError:0 withDescription:@"no [newer] server-side atomic-instance (for auto-asset-set) was found"];

  if ([(MADAutoAssetJob *)self foundSameAtomicInstanceAlreadyDownloaded])
  {
    [(MADAutoAssetJob *)self replyToJobsWhenOperationFoundSame:@"SetLookupNoNewerContinue" forCheckAtomic:1 withLookupError:v11];
  }

  else
  {
    [(MADAutoAssetJob *)self replyToJobsWhenLookupFailed:@"SetLookupNoNewerContinue" withLookupError:v11];
  }

  v12 = [(MADAutoAssetJob *)self autoJobFSM];
  v13 = [MADAutoAssetJobParam alloc];
  v14 = [(MADAutoAssetJob *)self _updateLatestSummary];
  v15 = [(MADAutoAssetJobParam *)v13 initWithSafeSummary:v14];
  [v12 followupEvent:@"LookupContinue" withInfo:v15];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_SetJobNoneSchedule:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetJobNoneSchedule", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  [(MADAutoAssetJob *)self replyToJobsWhenCatalogDownloaded:@"SetJobNoneSchedule" discoveredNewer:0];
  v9 = [(MADAutoAssetJob *)self clientDomainName];
  v10 = [(MADAutoAssetJob *)self autoAssetSetIdentifier];
  v11 = [(MADAutoAssetJob *)self autoAssetUUID];
  [MADAutoAssetControlManager postSetNotificationName:@"ATOMIC_INSTANCE_NO_ENTRIES" forClientDomainName:v9 forAssetSetIdentifier:v10 forAtomicInstanceUUID:v11 fromModule:@"AUTO-JOB" fromLocation:@"SetJobNoneSchedule"];

  v12 = [[NSString alloc] initWithFormat:@"AUTO-SET-JOB(%@)", @"SetJobNoneSchedule"];
  v13 = [MAAutoAssetError buildError:6556 fromOperation:v12 underlyingError:0 withDescription:@"server indicated that none of the auto-asset-entries making up the set are available"];

  [(MADAutoAssetJob *)self doneWithAllJobs:@"SetJobNoneSchedule" withLookupError:v13];
  [(MADAutoAssetJob *)self autoAssetJobFinished:@"SetJobNoneSchedule" forJobFinishedReason:@"NONE" failingWithError:v13];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_SetJobNoNewerSchedule:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetJobNoNewerSchedule", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  if ([(MADAutoAssetJob *)self becameLatestToVend])
  {
    [(MADAutoAssetJob *)self _commitPrePersonalized:@"SetJobSuccessSchedule" error:0];
    [(MADAutoAssetJob *)self finishSetJobDownloadedNewer:@"SetJobSuccessSchedule" forJobFinishedReason:@"SUCCESS(DOWNLOADED)"];
  }

  else
  {
    if ([(MADAutoAssetJob *)self tryPersonalizeFailed])
    {
      v9 = 6535;
    }

    else if ([(MADAutoAssetJob *)self foundSameAtomicInstanceAlreadyDownloaded])
    {
      v9 = 6205;
    }

    else
    {
      v9 = 6201;
    }

    v10 = [[NSString alloc] initWithFormat:@"AUTO-SET-JOB(%@)", @"SetJobNoNewerSchedule"];
    v11 = [MAAutoAssetError buildError:v9 fromOperation:v10 underlyingError:0 withDescription:@"no [newer] atomic-instance of auto-asset-set was found"];

    [(MADAutoAssetJob *)self doneWithAllJobs:@"SetJobNoNewerSchedule" withLookupError:v11];
    [(MADAutoAssetJob *)self autoAssetJobFinished:@"SetJobNoNewerSchedule" forJobFinishedReason:@"NO_NEWER" failingWithError:v11];
  }

  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_SetJobFailedSchedule:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetJobFailedSchedule", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [v5 finishedError];
  [(MADAutoAssetJob *)self determineWhetherNetworkConnectivityError:v9];
  [(MADAutoAssetJob *)self _releaseReservedSpace];
  if (!v9)
  {
    if ([(MADAutoAssetJob *)self tryPersonalizeFailed])
    {
      v10 = @"unable to personalize secure asset(s) of the set";
      v11 = 6535;
    }

    else if ([(MADAutoAssetJob *)self foundSameAtomicInstanceAlreadyDownloaded])
    {
      if ([(MADAutoAssetJob *)self becameLatestToVend])
      {
        v9 = 0;
        goto LABEL_12;
      }

      v10 = @"found same content server-side already downloaded (and available to client)";
      v11 = 6205;
    }

    else
    {
      v10 = @"found no newer content server-side";
      v11 = 6201;
    }

    v12 = [[NSString alloc] initWithFormat:@"AUTO-SET-JOB(%@)", @"JobFailedSchedule"];
    v9 = [MAAutoAssetError buildError:v11 fromOperation:v12 underlyingError:0 withDescription:v10];

    if (!v9)
    {
      goto LABEL_12;
    }
  }

  v13 = [(MADAutoAssetJob *)self assignedSetDescriptor];
  v14 = [v13 clientDomainName];
  v15 = [(MADAutoAssetJob *)self assignedSetDescriptor];
  v16 = [v15 assetSetIdentifier];
  v17 = [(MADAutoAssetJob *)self assignedSetDescriptor];
  v18 = [v17 discoveredAtomicInstance];
  [MADAutoAssetHistory recordFailedOperation:504 fromLayer:2 forClientDomainName:v14 forAssetSetIdentifier:v16 forAtomicInstance:v18 failingWithError:v9];

  if (+[MAAIRBEventReporter isAvailable])
  {
    v19 = [MAAIRBMobileAssetOperationMetadata alloc];
    v20 = [MADAutoAssetHistoryTracker operationName:504];
    v21 = [(MAAIRBMobileAssetOperationMetadata *)v19 initWithCode:504 name:v20];

    v22 = [MAAIRBMobileAssetAtomicInstance alloc];
    v23 = [MAAIRBMobileAssetAssetSet alloc];
    v24 = [(MADAutoAssetJob *)self assignedSetDescriptor];
    v25 = [v24 assetSetIdentifier];
    v26 = [(MAAIRBMobileAssetAssetSet *)v23 initWithAssetSetIdentifier:v25];
    v27 = [(MADAutoAssetJob *)self assignedSetDescriptor];
    v28 = [v27 discoveredAtomicInstance];
    v29 = [(MAAIRBMobileAssetAtomicInstance *)v22 initWithAssetSet:v26 atomicInstanceId:v28];

    v30 = [MAAIRBAppleIntelligenceAssetDeliveryEventType typeAtomicInstance:v21 atomicInstance:v29 assetCount:0];
    v31 = [MAAIRBAppleIntelligenceAssetDeliveryEvent alloc];
    v36 = v9;
    v32 = [NSArray arrayWithObjects:&v36 count:1];
    v33 = [(MAAIRBAppleIntelligenceAssetDeliveryEvent *)v31 initWithErrors:v32 type:v30];

    [MAAIRBEventReporter emitAppleIntelligenceEvent:v33];
  }

LABEL_12:
  [(MADAutoAssetJob *)self doneWithAllJobs:@"SetJobFailedSchedule" withLookupError:v9];
  [(MADAutoAssetJob *)self autoAssetJobFinished:@"SetJobFailedSchedule" forJobFinishedReason:@"FAILED" failingWithError:v9];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_SetJobLookupRevokedContinue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetJobLookupRevokedContinue", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  [(MADAutoAssetJob *)self releaseLookupGrant];
  v9 = [[NSString alloc] initWithFormat:@"AUTO-SET-JOB(%@)", @"SetJobLookupRevokedContinue"];
  v10 = [MAAutoAssetError buildError:6203 fromOperation:v9 underlyingError:0 withDescription:@"previously available atomic-instance of auto-asset-set has been revoked"];

  v11 = [(MADAutoAssetJob *)self autoAssetSelector];
  [MADAutoAssetHistory recordFailedOperation:506 fromLayer:2 forAssetID:@"UNKNOWN" withSelector:v11 failingWithError:v10];

  [(MADAutoAssetJob *)self replyToJobsWhenLookupFailed:@"SetJobLookupRevokedContinue" withLookupError:v10];
  v12 = [(MADAutoAssetJob *)self autoJobFSM];
  v13 = [MADAutoAssetJobParam alloc];
  v14 = [(MADAutoAssetJob *)self _updateLatestSummary];
  v15 = [(MADAutoAssetJobParam *)v13 initWithSafeSummary:v14];
  [v12 followupEvent:@"SetLookupContinue" withInfo:v15];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_SetJobHealPersonalizeNext:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetJobHealPersonalizeNext", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [(MADAutoAssetJob *)self autoAssetUUID];
  if (-[MADAutoAssetJob stagerJob](self, "stagerJob") || (-[MADAutoAssetJob tryPersonalizeDescriptors](self, "tryPersonalizeDescriptors"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, !v11))
  {
    v28 = [[NSString alloc] initWithFormat:@"AUTO-SET-JOB(%@)", @"SetJobHealPersonalizeNext"];
    v13 = [MAAutoAssetError buildError:6108 fromOperation:v28 underlyingError:0 withDescription:@"at point where continuing attempt to heal yet no descriptors to try to personalize"];

    v27 = [[MADAutoAssetJobParam alloc] initForFinishedJobID:v9 withError:v13];
    [(MADAutoAssetJob *)self trackAnomaly:6110 forReason:@"{SetJobHealPersonalizeNext} no tryPersonalizeDescriptors"];
    v29 = [(MADAutoAssetJob *)self autoJobFSM];
    [v29 postEvent:@"PersonalizationFailure" withInfo:v27];
  }

  else
  {
    v12 = [(MADAutoAssetJob *)self tryPersonalizeDescriptors];
    v13 = [v12 objectAtIndex:0];

    v14 = [(MADAutoAssetJob *)self tryPersonalizePromoted];
    v15 = [v13 assetId];
    v16 = [v14 containsObject:v15];

    v17 = [(MADAutoAssetJob *)self tryPersonalizeDescriptors];
    [v17 removeObjectAtIndex:0];

    if (v16)
    {
      v18 = [(MADAutoAssetJob *)self tryPersonalizePromoted];
      v19 = [v13 assetId];
      [v18 removeObject:v19];
    }

    v20 = [MAAutoAssetSelector alloc];
    v21 = [v13 assetType];
    v22 = [v13 assetSpecifier];
    v23 = [v13 assetVersion];
    v24 = [v20 initForAssetType:v21 withAssetSpecifier:v22 matchingAssetVersion:v23];
    [(MADAutoAssetJob *)self setTryPersonalizeSelector:v24];

    v25 = [(MADAutoAssetJob *)self tryPersonalizeSelector];

    if (v25)
    {
      v26 = [(MADAutoAssetJob *)self autoJobName];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = __58__MADAutoAssetJob_action_SetJobHealPersonalizeNext_error___block_invoke;
      v36[3] = &unk_4B4CE8;
      v39 = v16;
      v37 = v9;
      v38 = self;
      [MADAutoAssetSecure personalizeDownloaded:v26 personalizingDescriptor:v13 allowingNetwork:1 committingPersonalization:0 completion:v36];

      v27 = v37;
    }

    else
    {
      v31 = [[NSString alloc] initWithFormat:@"AUTO-SET-JOB(%@)", @"SetJobHealPersonalizeNext"];
      v27 = [MAAutoAssetError buildError:6108 fromOperation:v31 underlyingError:0 withDescription:@"unable to build auto-asset-selector for asset-descriptor to be healed"];

      v32 = [[MADAutoAssetJobParam alloc] initForFinishedJobID:v9 withError:v27];
      [(MADAutoAssetJob *)self trackAnomaly:6101 forReason:@"{SetJobHealPersonalizeNext} unable to build auto-asset-selector for asset-descriptor to be healed"];
      v33 = objc_alloc_init(NSMutableArray);
      [(MADAutoAssetJob *)self setTryPersonalizeDescriptors:v33];

      v34 = objc_alloc_init(NSMutableSet);
      [(MADAutoAssetJob *)self setTryPersonalizePromoted:v34];

      v35 = [(MADAutoAssetJob *)self autoJobFSM];
      [v35 postEvent:@"PersonalizationFailure" withInfo:v32];
    }
  }

  os_activity_scope_leave(&state);
  return 0;
}

void __58__MADAutoAssetJob_action_SetJobHealPersonalizeNext_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v16 = [[MADAutoAssetJobParam alloc] initForFinishedJobID:*(a1 + 32) withError:v4];

  v5 = @"PersonalizationFailure";
  if (!v4)
  {
    v5 = @"PersonalizationSuccess";
  }

  v6 = v5;
  if (v4 && (*(a1 + 48) & 1) != 0)
  {
    v7 = [*(a1 + 40) manager];
    v8 = [*(a1 + 40) tryPersonalizeSelector];
    v9 = [v8 assetSpecifier];
    v10 = [*(a1 + 40) tryPersonalizeSelector];
    v11 = [v10 assetType];
    v12 = [*(a1 + 40) tryPersonalizeSelector];
    v13 = [v12 assetVersion];
    v14 = [v7 recordMobileAssetPromotionAttempt:v9 assetType:v11 assetVersion:v13 osPromotion:1 successfullyPromoted:0 withReason:1];
  }

  v15 = [*(a1 + 40) autoJobFSM];
  [v15 postEvent:v6 withInfo:v16];
}

- (int64_t)action_SetDownloadNewestFull:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetDownloadNewestFull", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  if ([(MADAutoAssetJob *)self remainingSetDescriptorToBeDownloaded])
  {
    v17 = 0;
    [(MADAutoAssetJob *)self placeNextSetAssetDescriptorToDownload:@"SetDownloadNewestFull" restrictToFull:1 error:&v17];
    v9 = v17;
    if (!v9)
    {
      [(MADAutoAssetJob *)self statusChangeStartingAssetDownload:@"SetDownloadNewestFull" downloadingPatch:0];
      v12 = [(MADAutoAssetJob *)self foundNewerFull];
      [(MADAutoAssetJob *)self requestDownloadManagerAssetDownload:@"SetDownloadNewestFull" forDescriptor:v12 withBaseForPatch:0];
      goto LABEL_6;
    }

    v10 = [MADAutoAssetJobParam alloc];
    v11 = [(MADAutoAssetJob *)self autoAssetUUID];
    v12 = [(MADAutoAssetJobParam *)v10 initForFinishedJobID:v11 withError:v9];

    v13 = [(MADAutoAssetJob *)self autoJobFSM];
    [v13 postEvent:@"SetDownloadFailureNoFull" withInfo:v12];
  }

  else
  {
    v9 = [MAAutoAssetError buildError:6108 fromOperation:@"AUTO-SET-JOB(SetDownloadNewestFull)" underlyingError:0 withDescription:@"no next specifier to download (at location SetDownloadNewestFull)"];
    v14 = [MADAutoAssetJobParam alloc];
    v15 = [(MADAutoAssetJob *)self autoAssetUUID];
    v12 = [(MADAutoAssetJobParam *)v14 initForFinishedJobID:v15 withError:v9];

    [(MADAutoAssetJob *)self trackAnomaly:6108 forReason:@"{SetDownloadNewestFull} invalid nextSetSpecifierToDownload value"];
    v13 = [(MADAutoAssetJob *)self autoJobFSM];
    [v13 postEvent:@"SetDownloadFailureNoFull" withInfo:v12];
  }

LABEL_6:
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_SetDownloadNext:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetDownloadNext", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  if (![(MADAutoAssetJob *)self remainingSetDescriptorToBeDownloaded])
  {
    v9 = [MAAutoAssetError buildError:6108 fromOperation:@"AUTO-SET-JOB(SetDownloadNext)" underlyingError:0 withDescription:@"no next specifier to download (at location SetDownloadNext)"];
    v14 = [MADAutoAssetJobParam alloc];
    v15 = [(MADAutoAssetJob *)self autoAssetUUID];
    v12 = [(MADAutoAssetJobParam *)v14 initForFinishedJobID:v15 withError:v9];

    [(MADAutoAssetJob *)self trackAnomaly:6108 forReason:@"{SetDownloadNext} invalid nextSetSpecifierToDownload value"];
    v13 = [(MADAutoAssetJob *)self autoJobFSM];
    [v13 postEvent:@"SetDownloadFailureNoFull" withInfo:v12];
    goto LABEL_5;
  }

  v28 = 0;
  [(MADAutoAssetJob *)self placeNextSetAssetDescriptorToDownload:@"SetDownloadNext" restrictToFull:0 error:&v28];
  v9 = v28;
  if (v9)
  {
    v10 = [MADAutoAssetJobParam alloc];
    v11 = [(MADAutoAssetJob *)self autoAssetUUID];
    v12 = [(MADAutoAssetJobParam *)v10 initForFinishedJobID:v11 withError:v9];

    v13 = [(MADAutoAssetJob *)self autoJobFSM];
    [v13 postEvent:@"SetDownloadFailureNoFull" withInfo:v12];
LABEL_5:

    goto LABEL_6;
  }

  v17 = [(MADAutoAssetJob *)self newAssetDownloadOptions];
  [(MADAutoAssetJob *)self setAssetDownloadOptions:v17];

  v18 = [(MADAutoAssetJob *)self baseForPatch];
  LOBYTE(v17) = v18 == 0;

  if (v17)
  {
    v21 = 0;
  }

  else
  {
    v19 = [(MADAutoAssetJob *)self baseForPatch];
    v20 = [MADAutoAssetControlManager localAssetURLForDescriptor:v19 fromLocation:@"DownloadNewestPatch"];

    v21 = v20 != 0;
    if (v20)
    {
      v22 = [(MADAutoAssetJob *)self assetDownloadOptions];
      [v22 setSourceDirectory:v20];
    }
  }

  v23 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [(MADAutoAssetJob *)self autoJobName];
    if (v21)
    {
      v25 = @"incremental";
    }

    else
    {
      v25 = @"full replacement";
    }

    if (v21)
    {
      [(MADAutoAssetJob *)self foundNewerPatch];
    }

    else
    {
      [(MADAutoAssetJob *)self foundNewerFull];
    }
    v26 = ;
    v27 = [v26 selectorName];
    *buf = 138543874;
    v31 = v24;
    v32 = 2114;
    v33 = v25;
    v34 = 2114;
    v35 = v27;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ | {SetDownloadNext} Starting next download | type:%{public}@ | selector:%{public}@", buf, 0x20u);
  }

  [(MADAutoAssetJob *)self statusChangeStartingAssetDownload:@"SetDownloadNext" downloadingPatch:v21];
  if (v21)
  {
    v12 = [(MADAutoAssetJob *)self foundNewerPatch];
    v13 = [(MADAutoAssetJob *)self baseForPatch];
  }

  else
  {
    v12 = [(MADAutoAssetJob *)self foundNewerFull];
    v13 = 0;
  }

  [(MADAutoAssetJob *)self requestDownloadManagerAssetDownload:@"SetDownloadNext" forDescriptor:v12 withBaseForPatch:v13];
  if (v21)
  {
    goto LABEL_5;
  }

LABEL_6:

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_SetDownloadSameFull:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetDownloadSameFull", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  [(MADAutoAssetJob *)self statusChangeStartingAssetDownload:@"SetDownloadSameFull" downloadingPatch:0, v11.opaque[0], v11.opaque[1]];
  v9 = [(MADAutoAssetJob *)self foundNewerFull];
  [(MADAutoAssetJob *)self requestDownloadManagerAssetDownload:@"SetDownloadSameFull" forDescriptor:v9 withBaseForPatch:0];

  os_activity_scope_leave(&v11);
  return 0;
}

- (int64_t)action_SetJobSuccessSchedule:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetJobSuccessSchedule", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self _releaseReservedSpace:v10.opaque[0]];
  [(MADAutoAssetJob *)self _commitPrePersonalized:@"SetJobSuccessSchedule" error:0];
  [(MADAutoAssetJob *)self finishSetJobDownloadedNewer:@"SetJobSuccessSchedule" forJobFinishedReason:@"SUCCESS(DOWNLOADED)"];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_SetJobSuccessFoundSameSchedule:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetJobSuccessFoundSameSchedule", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self finishedSetSameVersionFound:@"SetJobSuccessFoundSameSchedule", v10.opaque[0], v10.opaque[1]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_SetJobSuccessFoundPromoted:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetJobSuccessFoundPromoted", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self _commitPrePersonalized:@"SetJobSuccessFoundPromoted" error:0, v10.opaque[0], v10.opaque[1]];
  [(MADAutoAssetJob *)self finishSetJobDownloadedNewer:@"SetJobSuccessFoundPromoted" forJobFinishedReason:@"SUCCESS(IMMEDIATE_PROMOTED)"];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_SetJobSuccessAwaiting:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetJobSuccessAwaiting", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  [(MADAutoAssetJob *)self _commitPrePersonalized:@"SetJobSuccessSchedule" error:0];
  v9 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v10 = [MADAutoAssetSecure isPersonalizationRequired:@"SetJobSuccessAwaiting" forSetDescriptor:v9];

  if (v10)
  {
    v11 = [[NSString alloc] initWithFormat:@"AUTO-SET-JOB(%@)", @"SetJobSuccessAwaiting"];
    v12 = [MAAutoAssetError buildError:6101 fromOperation:v11 underlyingError:0 withDescription:@"set-job ended with all content downloaded but not all secure could be personalized"];

    [(MADAutoAssetJob *)self replyToJobsWhenLookupFailed:@"SetJobSuccessAwaiting" withLookupError:v12];
  }

  else
  {
    if (![(MADAutoAssetJob *)self setDescriptorDiscardRamped])
    {
      [(MADAutoAssetJob *)self foundAndDownloadedSet:@"SetJobSuccessAwaiting"];
    }

    [(MADAutoAssetJob *)self replyToJobsWhenContentDownloaded:@"SetJobSuccessAwaiting"];
  }

  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_SetJobFailedAwaiting:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v34.opaque[0] = 0;
  v34.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetJobFailedAwaiting", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v34);

  [(MADAutoAssetJob *)self _releaseReservedSpace:v34.opaque[0]];
  v9 = [(MADAutoAssetJob *)self assignedSetDescriptor];
  v10 = [v9 clientDomainName];
  v11 = [(MADAutoAssetJob *)self assignedSetDescriptor];
  v12 = [v11 assetSetIdentifier];
  v13 = [(MADAutoAssetJob *)self assignedSetDescriptor];
  v14 = [v13 discoveredAtomicInstance];
  v15 = [v5 finishedError];
  [MADAutoAssetHistory recordFailedOperation:504 fromLayer:2 forClientDomainName:v10 forAssetSetIdentifier:v12 forAtomicInstance:v14 failingWithError:v15];

  if (+[MAAIRBEventReporter isAvailable])
  {
    v16 = [MAAIRBMobileAssetOperationMetadata alloc];
    v17 = [MADAutoAssetHistoryTracker operationName:504];
    v18 = [(MAAIRBMobileAssetOperationMetadata *)v16 initWithCode:504 name:v17];

    v19 = [MAAIRBMobileAssetAtomicInstance alloc];
    v20 = [MAAIRBMobileAssetAssetSet alloc];
    v21 = [(MADAutoAssetJob *)self assignedSetDescriptor];
    v22 = [v21 assetSetIdentifier];
    v23 = [(MAAIRBMobileAssetAssetSet *)v20 initWithAssetSetIdentifier:v22];
    v24 = [(MADAutoAssetJob *)self assignedSetDescriptor];
    v25 = [v24 discoveredAtomicInstance];
    v26 = [(MAAIRBMobileAssetAtomicInstance *)v19 initWithAssetSet:v23 atomicInstanceId:v25];

    v27 = [MAAIRBAppleIntelligenceAssetDeliveryEventType typeAtomicInstance:v18 atomicInstance:v26 assetCount:0];
    v28 = [MAAIRBAppleIntelligenceAssetDeliveryEvent alloc];
    v29 = [v5 finishedError];
    v35 = v29;
    v30 = [NSArray arrayWithObjects:&v35 count:1];
    v31 = [(MAAIRBAppleIntelligenceAssetDeliveryEvent *)v28 initWithErrors:v30 type:v27];

    [MAAIRBEventReporter emitAppleIntelligenceEvent:v31];
  }

  v32 = [v5 finishedError];
  [(MADAutoAssetJob *)self replyToJobsWhenLookupFailed:@"SetJobFailedAwaiting" withLookupError:v32];

  os_activity_scope_leave(&v34);
  return 0;
}

- (int64_t)action_SetJobEndedSchedule:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetJobEndedSchedule", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [[NSString alloc] initWithFormat:@"AUTO-SET-JOB(%@)", @"SetJobEndedSchedule"];
  v10 = [MAAutoAssetError buildError:6108 fromOperation:v9 underlyingError:0 withDescription:@"set-job ended with unserviced active client request"];

  [(MADAutoAssetJob *)self _releaseReservedSpace];
  [(MADAutoAssetJob *)self doneWithAllJobs:@"SetJobEndedSchedule" withLookupError:v10];
  [(MADAutoAssetJob *)self autoAssetJobFinished:@"SetJobEndedSchedule" forJobFinishedReason:@"ENDED" failingWithError:v10];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_SetJobTryPersonalizeHeal:(id)a3 error:(id *)a4
{
  v42 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetJobTryPersonalizeHeal", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v41 = [(MADAutoAssetJob *)self autoAssetUUID];
  v9 = getControlManager();
  v40 = [v9 analytics];

  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__13;
  v54 = __Block_byref_object_dispose__13;
  v55 = [v42 autoAssetDescriptor];
  if (![(MADAutoAssetJob *)self stagerJob])
  {
    v10 = [(MADAutoAssetJob *)self tryPersonalizeDescriptors];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [(MADAutoAssetJob *)self tryPersonalizeDescriptors];
      v13 = [v12 objectAtIndex:0];

      v14 = [(MADAutoAssetJob *)self tryPersonalizeDescriptors];
      [v14 removeObjectAtIndex:0];

      v15 = [MAAutoAssetSelector alloc];
      v16 = [v13 assetType];
      v17 = [v13 assetSpecifier];
      v18 = [v13 assetVersion];
      v19 = [v15 initForAssetType:v16 withAssetSpecifier:v17 matchingAssetVersion:v18];
      [(MADAutoAssetJob *)self setTryPersonalizeSelector:v19];

      v20 = [(MADAutoAssetJob *)self tryPersonalizeSelector];

      if (v20)
      {
        v21 = [(MADAutoAssetJob *)self autoJobName];
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = __57__MADAutoAssetJob_action_SetJobTryPersonalizeHeal_error___block_invoke;
        v43[3] = &unk_4B4D10;
        v44 = v41;
        v45 = v40;
        v46 = 0;
        v48 = &v50;
        v49 = &v56;
        v47 = self;
        [MADAutoAssetSecure personalizeDownloaded:v21 personalizingDescriptor:v13 allowingNetwork:1 committingPersonalization:0 completion:v43];

        v22 = 0;
        v23 = v44;
      }

      else
      {
        v32 = [[NSString alloc] initWithFormat:@"AUTO-SET-JOB(%@)", @"SetJobTryPersonalizeHeal"];
        v22 = [MAAutoAssetError buildError:6108 fromOperation:v32 underlyingError:0 withDescription:@"unable to build auto-asset-selector for asset-descriptor to be healed"];

        v33 = [(MADAutoAssetJob *)self autoJobFSM];
        v34 = [v33 diag];
        [v34 trackAnomaly:@"{SetJobTryPersonalizeHeal}" forReason:@"unable to build auto-asset-selector for asset-descriptor to be healed" withResult:6101 withError:v22];

        v23 = objc_alloc_init(NSMutableArray);
        [(MADAutoAssetJob *)self setTryPersonalizeDescriptors:v23];
      }

      goto LABEL_15;
    }
  }

  v24 = [[NSString alloc] initWithFormat:@"AUTO-SET-JOB(%@)", @"SetJobTryPersonalizeHeal"];
  v22 = [MAAutoAssetError buildError:6108 fromOperation:v24 underlyingError:0 withDescription:@"at point where starting attempt to heal yet no descriptors to try to personalize"];

  v13 = [[MADAutoAssetJobParam alloc] initForFinishedJobID:v41 withError:v22];
  [(MADAutoAssetJob *)self trackAnomaly:6110 forReason:@"{SetJobTryPersonalizeHeal} no tryPersonalizeDescriptors"];
  if ((v57[3] & 1) == 0)
  {
    v25 = [v51[5] assetSpecifier];
    v26 = [v51[5] assetType];
    v27 = [v51[5] assetVersion];
    v28 = [v13 clientRequest];
    if (v28)
    {
      v4 = [v13 clientRequest];
      v29 = [v4 clientID];
    }

    else
    {
      v29 = @"N/A";
    }

    v30 = [v22 description];
    LOBYTE(v39) = 0;
    LOBYTE(v38) = 0;
    LOBYTE(v37) = 0;
    LOBYTE(v36) = v22 == 0;
    v31 = [v40 recordMobileAssetSecureAttempt:v25 assetType:v26 assetVersion:v27 clientName:v29 operation:7 secureReason:@"attempting to heal from set job" fromLocation:@"SetJobTryPersonalizeHeal" sucessfullyPersonalized:v36 personalizeFailureReason:v30 sucessfullyMounted:v37 mountingFailureReason:0 successfullyGrafted:v38 graftingFailureReason:0 successfullyMappedToExclave:v39 mapToExclaveFailureReason:0];

    if (v28)
    {
    }
  }

  if (v22)
  {
    v23 = [(MADAutoAssetJob *)self autoJobFSM];
    [v23 postEvent:@"PersonalizationFailure" withInfo:v13];
LABEL_15:
  }

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  os_activity_scope_leave(&state);
  return 0;
}

void __57__MADAutoAssetJob_action_SetJobTryPersonalizeHeal_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v22 = [[MADAutoAssetJobParam alloc] initForFinishedJobID:*(a1 + 32) withError:v5];

  v6 = @"PersonalizationFailure";
  if (!v5)
  {
    v6 = @"PersonalizationSuccess";
  }

  v7 = v6;
  v8 = *(a1 + 40);
  v9 = [*(*(*(a1 + 64) + 8) + 40) assetSpecifier];
  v10 = [*(*(*(a1 + 64) + 8) + 40) assetType];
  v11 = [*(*(*(a1 + 64) + 8) + 40) assetVersion];
  v12 = [v22 clientRequest];
  if (v12)
  {
    v3 = [v22 clientRequest];
    v13 = [v3 clientID];
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = @"N/A";
    if (v5)
    {
LABEL_5:
      v14 = [*(a1 + 48) checkedDescription];
      LOBYTE(v21) = 0;
      LOBYTE(v20) = 0;
      LOBYTE(v19) = 0;
      LOBYTE(v18) = 0;
      v15 = [v8 recordMobileAssetSecureAttempt:v9 assetType:v10 assetVersion:v11 clientName:v13 operation:7 secureReason:@"attempting to heal from set job" fromLocation:@"SetJobTryPersonalizeHeal" sucessfullyPersonalized:v18 personalizeFailureReason:v14 sucessfullyMounted:v19 mountingFailureReason:0 successfullyGrafted:v20 graftingFailureReason:0 successfullyMappedToExclave:v21 mapToExclaveFailureReason:0];

      if (!v12)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  LOBYTE(v21) = 0;
  LOBYTE(v20) = 0;
  LOBYTE(v19) = 0;
  LOBYTE(v18) = 1;
  v17 = [v8 recordMobileAssetSecureAttempt:v9 assetType:v10 assetVersion:v11 clientName:v13 operation:7 secureReason:@"attempting to heal from set job" fromLocation:@"SetJobTryPersonalizeHeal" sucessfullyPersonalized:v18 personalizeFailureReason:0 sucessfullyMounted:v19 mountingFailureReason:0 successfullyGrafted:v20 graftingFailureReason:0 successfullyMappedToExclave:v21 mapToExclaveFailureReason:0];
  if (v12)
  {
LABEL_6:
  }

LABEL_7:

  *(*(*(a1 + 72) + 8) + 24) = 1;
  v16 = [*(a1 + 56) autoJobFSM];
  [v16 postEvent:v7 withInfo:v22];
}

- (int64_t)action_FinishedCoalescedClientReply:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:FinishedCoalescedClientReply", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [(MADAutoAssetJob *)self activeJobTasks];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [NSString alloc];
    v12 = [v5 summary];
    v13 = [v11 initWithFormat:@"{FinishedCoalescedClientReply} already another active job-task | eventInfo:%@", v12];
    [(MADAutoAssetJob *)self trackAnomaly:6109 forReason:v13];
  }

  [(MADAutoAssetJob *)self addToActiveJobTasks:v5];
  v14 = [(MADAutoAssetJob *)self firstLookupError];

  if (v14)
  {
    v15 = [(MADAutoAssetJob *)self firstLookupError];
    [(MADAutoAssetJob *)self doneWithAllJobs:@"FinishedCoalescedClientReply" withLookupError:v15];
  }

  else
  {
    [(MADAutoAssetJob *)self doneWithAllJobs:@"FinishedCoalescedClientReply"];
  }

  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_RerouteSchedulerTrigger:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:RerouteSchedulerTrigger", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  if ([(MADAutoAssetJob *)self autoAssetSetJob:v11.opaque[0]])
  {
    v9 = [(MADAutoAssetJob *)self setConfiguration];
    [MADAutoAssetControlManager autoAssetJobCoalescePostedToFinishedSetSchedulerTrigger:v9];
  }

  else
  {
    v9 = [(MADAutoAssetJob *)self autoAssetSelector];
    [MADAutoAssetControlManager autoAssetJobCoalescePostedToFinishedSingletonSchedulerTrigger:v9];
  }

  os_activity_scope_leave(&v11);
  return 0;
}

- (int64_t)action_NowDeadClear:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:NowDeadClear", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self completeNWActivity:v10.opaque[0]];
  [(MADAutoAssetJob *)self _autoAssetJobDead:@"NowDeadClear"];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)actionUnknownAction:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[NSString alloc] initWithFormat:@"unknown action(%@)", v5];

  v7 = [(MADAutoAssetJob *)self autoJobFSM];
  v8 = [v7 diag];
  [v8 dumpTracked:v6 dumpingTo:5 usingFilename:0 clearingStatistics:0 clearingHistory:0];

  return 0;
}

- (void)clearSetStatusStartingSetJob
{
  v3 = [(MADAutoAssetJob *)self autoJobFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = objc_alloc_init(MANAutoAssetSetNotifications);
  [(MADAutoAssetJob *)self setCurrentSetNotifications:v5];

  v19 = [MANAutoAssetSetStatus alloc];
  v20 = [(MADAutoAssetJob *)self assignedSetDescriptor];
  v6 = [v20 clientDomainName];
  v7 = [(MADAutoAssetJob *)self assignedSetDescriptor];
  v8 = [v7 assetSetIdentifier];
  v9 = [(MADAutoAssetJob *)self setConfiguration];
  v10 = [v9 autoAssetEntries];
  v11 = [(MADAutoAssetJob *)self currentSetNotifications];
  v12 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  v13 = [(MADAutoAssetJob *)self haveReceivedLookupResponse];
  LOBYTE(v5) = [(MADAutoAssetJob *)self vendingAtomicInstanceForConfiguredEntries];
  BYTE2(v18) = [(MADAutoAssetJob *)self downloadingUserInitiated];
  BYTE1(v18) = v5;
  LOBYTE(v18) = v13;
  LOBYTE(v17) = 0;
  v14 = [MANAutoAssetSetStatus initStatusForClientDomain:v19 forAssetSetIdentifier:"initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDownloadedAtomicInstanceFromPreSUStaging:withLatestDowloadedAtomicInstanceEntries:withPreviouslyVendedLockedAtomicInstance:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:" withConfiguredAssetEntries:v6 withAtomicInstancesDownloaded:v8 withCatalogCachedAssetSetID:v10 withCatalogDownloadedFromLive:0 withCatalogLastTimeChecked:0 withCatalogPostedDate:0 withNewerAtomicInstanceDiscovered:0 withNewerDiscoveredAtomicEntries:0 withLatestDownloadedAtomicInstance:0 withLatestDownloadedAtomicInstanceFromPreSUStaging:0 withLatestDowloadedAtomicInstanceEntries:0 withPreviouslyVendedLockedAtomicInstance:v17 withDownloadedCatalogCachedAssetSetID:0 withDownloadedCatalogDownloadedFromLive:0 withDownloadedCatalogLastTimeChecked:0 withDownloadedCatalogPostedDate:0 withCurrentNotifications:0 withCurrentNeedPolicy:0 withSchedulerPolicy:v11 withStagerPolicy:v12 havingReceivedLookupResponse:0 vendingAtomicInstanceForConfiguredEntries:0 withDownloadUserInitiated:v18 withDownloadProgress:0 withDownloadedNetworkBytes:-1 withDownloadedFilesystemBytes:-1 withCurrentLockUsage:0 withSelectorsForStaging:0 withAvailableForUseError:0 withNewerVersionError:0];
  [(MADAutoAssetJob *)self setCurrentSetStatus:v14];

  v21 = [(MADAutoAssetJob *)self currentSetStatus];
  v15 = [v21 copy];
  v16 = [(MADAutoAssetJob *)self setJobInformation];
  [v16 setCurrentSetStatus:v15];
}

- (id)reportSetCatalogDecideFound:(id)a3 fromLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetJob *)self autoJobFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [[NSString alloc] initWithFormat:@"%@:reportSetCatalogDecideFound", v7];
  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = objc_alloc_init(NSMutableDictionary);
  if (!v6)
  {
    v18 = @"successful catalog download yet no catalog provided";
    v19 = self;
    v20 = v10;
    v21 = 6102;
LABEL_9:
    [(MADAutoAssetJob *)v19 statusChange:v20 catalogAnomaly:v21 forReason:v18];
    v22 = @"SetCatalogFoundNoNewer";
    goto LABEL_80;
  }

  v131 = v10;
  v13 = [(MADAutoAssetJob *)self autoAssetSetInstance];

  if (!v13)
  {
    v18 = @"successful catalog download for set-job yet no autoAssetSetInstance";
    v19 = self;
    v10 = v131;
    v20 = v131;
    v21 = 6103;
    goto LABEL_9;
  }

  v133 = self;
  v118 = [(MADAutoAssetJob *)self buildPotentialDescriptors:v131 fromLookupResults:v6 buildingPatchDescriptors:v11 andFullDescriptors:v12];
  v124 = [v6 safeStringForKey:@"AssetType"];
  v14 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(MADAutoAssetJob *)self autoJobName];
    *buf = 138544386;
    v141 = v131;
    v142 = 2114;
    v143 = v15;
    v144 = 2048;
    v145 = [v6 count];
    v146 = 2048;
    v147 = [(__CFString *)v11 count];
    v148 = 2048;
    v149 = [v12 count];
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "{%{public}@} (%{public}@)\n[SET-DECIDE-FOUND] set-catalog lookup summary | catalogCount:%lu | patchDescriptorCount:%lu | fullDescriptorCount:%lu", buf, 0x34u);
  }

  v16 = [v6 safeStringForKey:@"DownloadedFromLive"];
  v120 = v16;
  if (v16)
  {
    v17 = [[NSURL alloc] initWithString:v16];
  }

  else
  {
    v17 = 0;
  }

  v123 = v11;
  v121 = v7;
  v23 = [v6 safeStringForKey:@"CachedAssetSetId"];
  v24 = [(MADAutoAssetJob *)v133 autoAssetSetDescriptor];
  [v24 setCatalogCachedAssetSetID:v23];

  v25 = [(MADAutoAssetJob *)v133 autoAssetSetDescriptor];
  v119 = v17;
  [v25 setCatalogDownloadedFromLive:v17];

  v26 = [v6 safeDateForKey:@"lastTimeChecked"];
  v27 = [(MADAutoAssetJob *)v133 autoAssetSetDescriptor];
  [v27 setCatalogLastTimeChecked:v26];

  v122 = v6;
  v28 = [v6 safeDateForKey:@"postedDate"];
  v29 = [(MADAutoAssetJob *)v133 autoAssetSetDescriptor];
  [v29 setCatalogPostedDate:v28];

  v127 = [[NSMutableString alloc] initWithString:&stru_4BD3F0];
  v126 = [[NSMutableString alloc] initWithString:&stru_4BD3F0];
  v125 = [[NSMutableString alloc] initWithString:&stru_4BD3F0];
  v130 = [[NSMutableString alloc] initWithString:&stru_4BD3F0];
  v129 = objc_alloc_init(NSMutableDictionary);
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  obj = v12;
  v30 = [obj countByEnumeratingWithState:&v136 objects:v154 count:16];
  if (!v30)
  {
    v32 = 0;
    goto LABEL_44;
  }

  v31 = v30;
  v32 = 0;
  v132 = *v137;
  v33 = v131;
  v34 = v133;
  do
  {
    for (i = 0; i != v31; i = i + 1)
    {
      if (*v137 != v132)
      {
        objc_enumerationMutation(obj);
      }

      v36 = [obj safeObjectForKey:*(*(&v136 + 1) + 8 * i) ofClass:objc_opt_class()];
      v37 = [(MADAutoAssetJob *)v34 latestAssetDescriptorOnFilesystemBySpecifier];
      v38 = [v36 assetSpecifier];
      v39 = [v37 safeObjectForKey:v38 ofClass:objc_opt_class()];

      v40 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v41 = [(MADAutoAssetJob *)v34 autoJobName];
        if (v36)
        {
          v11 = [v36 summary];
          v42 = v11;
          if (v39)
          {
            goto LABEL_19;
          }

LABEL_21:
          v43 = @"None";
        }

        else
        {
          v42 = @"None";
          if (!v39)
          {
            goto LABEL_21;
          }

LABEL_19:
          v128 = [v39 summary];
          v43 = v128;
        }

        *buf = 138544130;
        v141 = v33;
        v142 = 2114;
        v143 = v41;
        v144 = 2114;
        v145 = v42;
        v146 = 2114;
        v147 = v43;
        _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEBUG, "(%{public}@)\n[SET-DECIDE-FOUND] potential full selector: %{public}@:potentialDescriptor:%{public}@,onFS:%{public}@", buf, 0x2Au);
        if (v39)
        {
        }

        if (v36)
        {
        }
      }

      if (!v39 || ([v36 assetVersion], v44 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v39, "assetVersion"), v45 = objc_claimAutoreleasedReturnValue(), v46 = +[SUCore stringIsEqual:to:](SUCore, "stringIsEqual:to:", v44, v45), v45, v33 = v131, v44, !v46))
      {
        v54 = [v36 assetSpecifier];
        [v129 setSafeObject:v36 forKey:v54];

        v55 = [v36 selectorNameWithoutAssetType];
        [v130 appendFormat:@"%@|", v55];

        v34 = v133;
        goto LABEL_40;
      }

      if ([MADAutoAssetSecure isSecureAsset:v131 forDescriptor:v39])
      {
        v47 = [MAAutoAssetSelector alloc];
        v48 = [v39 assetType];
        v49 = [v39 assetSpecifier];
        v50 = [v39 assetVersion];
        v51 = [v47 initForAssetType:v48 withAssetSpecifier:v49 matchingAssetVersion:v50];

        if (v51)
        {
          v33 = v131;
          if ([MADAutoAssetSecure isPrePersonalized:v131 forDescriptor:v39])
          {
            v52 = [(MADAutoAssetJob *)v133 prePersonalizedSelectors];
            [v52 addObject:v51];

            v53 = v126;
            goto LABEL_37;
          }

          if ([MADAutoAssetSecure isPersonalizationRequired:v131 forDescriptor:v39])
          {
            v56 = [(MADAutoAssetJob *)v133 tryPersonalizeDescriptors];
            [v56 addObject:v39];

            v53 = v125;
LABEL_37:
            v57 = [v39 selectorNameWithoutAssetType];
            [(__CFString *)v53 appendFormat:@"%@|", v57];
          }

          goto LABEL_39;
        }

        [(MADAutoAssetJob *)v133 trackAnomaly:6101 forReason:@"(%{public}@) unable to initialize alreadyOnFilesystemSelector"];
        v53 = v127;
        v33 = v131;
        goto LABEL_37;
      }

LABEL_39:
      v34 = v133;
      [(MADAutoAssetJob *)v133 updateSetDescriptorDownloaded:v33 forAssetDescriptor:v39 justDownloaded:0];
      v32 = 1;
LABEL_40:
    }

    v31 = [obj countByEnumeratingWithState:&v136 objects:v154 count:16];
  }

  while (v31);
LABEL_44:

  v58 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    v59 = [(MADAutoAssetJob *)v133 autoJobName];
    *buf = 138544898;
    v141 = v131;
    v142 = 2114;
    v143 = v59;
    v144 = 2114;
    v145 = v124;
    v146 = 2114;
    v147 = v127;
    v148 = 2114;
    v149 = v126;
    v150 = 2114;
    v151 = v125;
    v152 = 2114;
    v153 = v130;
    _os_log_impl(&dword_0, v58, OS_LOG_TYPE_DEFAULT, "{%{public}@} (%{public}@)\n[SET-DECIDE-FOUND] filtering of assets to be downloaded | assetType:%{public}@\n>>> Anomaly:%{public}@\n>>> AlreadyPersonalized:%{public}@\n>>> RequiresPersonalization:%{public}@\n>>> toBeDownloaded:%{public}@", buf, 0x48u);
  }

  v11 = v123;
  [(MADAutoAssetJob *)v133 setFoundSetPatchDescriptorsBySpecifier:v123];
  v12 = v129;
  [(MADAutoAssetJob *)v133 setFoundSetFullDescriptorsBySpecifier:v129];
  v60 = [(MADAutoAssetJob *)v133 newFoundSetDescriptorsAsNewerDiscovered];
  [(MADAutoAssetJob *)v133 setFoundSetNewerDiscoveredAtomicEntries:v60];

  v61 = [(MADAutoAssetJob *)v133 foundSetNewerDiscoveredAtomicEntries];
  v62 = [(MADAutoAssetJob *)v133 autoAssetSetDescriptor];
  [v62 setDiscoveredAtomicEntries:v61];

  v135 = 0;
  v63 = [(MADAutoAssetJob *)v133 isSetFoundAlreadyOnFilesystem:v131 justPromotedAnyDescriptor:&v135];
  v7 = v121;
  v6 = v122;
  if ([(MADAutoAssetJob *)v133 stagerJob])
  {
    v64 = 1;
  }

  else
  {
    v65 = [(MADAutoAssetJob *)v133 tryPersonalizeDescriptors];
    v64 = [v65 count] == 0;
  }

  if (v63 || (v118 & 1) == 0 || ([(MADAutoAssetJob *)v133 newestDownloadedSetStatus], v66 = objc_claimAutoreleasedReturnValue(), v66, !v66))
  {
    [(MADAutoAssetJob *)v133 setNextSetSpecifierToDownload:0];
    v77 = objc_alloc_init(MANAutoAssetSetNotifications);
    [(MADAutoAssetJob *)v133 setCurrentSetNotifications:v77];

    v78 = [(MADAutoAssetJob *)v133 currentSetNotifications];
    [v78 setAtomicInstanceDiscovered:1];

    v79 = [(MADAutoAssetJob *)v133 currentSetNotifications];
    [v79 setDownloadPending:v63 ^ 1];

    [(MADAutoAssetJob *)v133 setSetProgressOverallTotalWrittenBytes:0];
    [(MADAutoAssetJob *)v133 setSetProgressAssetTotalWrittenBytes:0];
    [(MADAutoAssetJob *)v133 setProgressReadyToStartDownloads];
    v10 = v131;
    [(MADAutoAssetJob *)v133 updateSetResults:v131 atomicInstanceDiscovered:1 availableForUse:v63 & v64 downloading:0 buildingResultSetFound:v63];
    v80 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      v81 = [(MADAutoAssetJob *)v133 autoJobName];
      v82 = [v129 count];
      v83 = @"N";
      *buf = 138544130;
      v141 = v131;
      v142 = 2114;
      if (v63)
      {
        v83 = @"Y";
      }

      v143 = v81;
      v144 = 2048;
      v145 = v82;
      v146 = 2114;
      v147 = v83;
      _os_log_impl(&dword_0, v80, OS_LOG_TYPE_DEFAULT, "{%{public}@} (%{public}@)\n[SET-DECIDE-FOUND] considering potential descriptors | potentialDescriptorCount:%lu | alreadyOnFilesystem:%{public}@", buf, 0x2Au);

      v10 = v131;
    }

    [(MADAutoAssetJob *)v133 latchWhetherDownloadingUserInitiated];
    [(MADAutoAssetJob *)v133 refreshSetFoundToManager:v63 & v64 fromLocation:v10];
    if (+[MAAIRBEventReporter isAvailable])
    {
      v84 = [MAAIRBMobileAssetOperationMetadata alloc];
      v85 = [MADAutoAssetHistoryTracker operationName:448];
      v86 = [(MAAIRBMobileAssetOperationMetadata *)v84 initWithCode:448 name:v85];

      v87 = [MAAIRBMobileAssetAssetSet alloc];
      v88 = [(MADAutoAssetJob *)v133 setConfiguration];
      v89 = [v88 assetSetIdentifier];
      v90 = [(MAAIRBMobileAssetAssetSet *)v87 initWithAssetSetIdentifier:v89];

      v91 = [(MADAutoAssetJob *)v133 setConfiguration];
      v92 = [v91 autoAssetEntries];
      v93 = [v92 count];

      v12 = v129;
      v94 = [(MADAutoAssetJob *)v133 setConfiguration];
      v95 = [v94 clientDomainName];

      v96 = +[MAAIRBAppleIntelligenceAssetDeliveryEventType typeSetConfiguration:assetSet:configuredCount:requestedCount:fromPallasCount:clientDomainName:](MAAIRBAppleIntelligenceAssetDeliveryEventType, "typeSetConfiguration:assetSet:configuredCount:requestedCount:fromPallasCount:clientDomainName:", v86, v90, v93, v93, [v129 count], v95);
      v97 = [[MAAIRBAppleIntelligenceAssetDeliveryEvent alloc] initWithErrors:&__NSArray0__struct type:v96];
      [MAAIRBEventReporter emitAppleIntelligenceEvent:v97];

      v11 = v123;
      v10 = v131;
    }

    if ([v12 count])
    {
      if (!v63)
      {
        [(MADAutoAssetJob *)v133 statusChangeSetCatalogFoundNewer:v10];
        v107 = [(MADAutoAssetJob *)v133 clientDomainName];
        v108 = [(MADAutoAssetJob *)v133 autoAssetSetIdentifier];
        v109 = [(MADAutoAssetJob *)v133 autoAssetUUID];
        [MADAutoAssetControlManager postSetNotificationName:@"ATOMIC_INSTANCE_DISCOVERED" forClientDomainName:v107 forAssetSetIdentifier:v108 forAtomicInstanceUUID:v109 fromModule:@"AUTO-JOB" fromLocation:v131];

        v110 = [MANAutoAssetSetInfoFound alloc];
        v111 = [(MADAutoAssetJob *)v133 autoAssetSetIdentifier];
        v112 = [(MADAutoAssetJob *)v133 currentSetStatus];
        v113 = [(MANAutoAssetSetInfoFound *)v110 initForAssetSetIdentifier:v111 reportingStatus:v112];
        [(MADAutoAssetJob *)v133 setResultSetFound:v113];

        v114 = [(MADAutoAssetJob *)v133 resultSetFound];
        v115 = [(MADAutoAssetJob *)v133 setJobInformation];
        [v115 setFoundContent:v114];

        v10 = v131;
        v22 = @"SetCatalogFoundNewer";
        goto LABEL_78;
      }

      v98 = v133;
      v99 = v119;
      if ([(MADAutoAssetJob *)v133 stagerJob])
      {
        goto LABEL_73;
      }
    }

    else
    {
      v100 = _MADLog(@"AutoJob");
      v101 = os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT);
      v99 = v119;
      if ((v32 & 1) == 0)
      {
        if (v101)
        {
          v117 = [(MADAutoAssetJob *)v133 autoJobName];
          *buf = 138543618;
          v141 = v131;
          v142 = 2114;
          v143 = v117;
          _os_log_impl(&dword_0, v100, OS_LOG_TYPE_DEFAULT, "{%{public}@} (%{public}@)\n[SET-DECIDE-FOUND] no valid entries in Pallas response", buf, 0x16u);

          v10 = v131;
        }

        v22 = @"SetCatalogFoundNone";
        goto LABEL_79;
      }

      if (v101)
      {
        v102 = [(MADAutoAssetJob *)v133 autoJobName];
        *buf = 138543618;
        v141 = v131;
        v142 = 2114;
        v143 = v102;
        _os_log_impl(&dword_0, v100, OS_LOG_TYPE_DEFAULT, "{%{public}@} (%{public}@)\n[SET-DECIDE-FOUND] some in Pallas response already on filesystem (an no newer available) - treat as catalog finding same", buf, 0x16u);
      }

      v98 = v133;
      if ([(MADAutoAssetJob *)v133 stagerJob])
      {
LABEL_73:
        v10 = v131;
        [(MADAutoAssetJob *)v98 statusChangeSetCatalogFoundSame:v131];
        [(MADAutoAssetJob *)v98 setFoundSameAtomicInstanceAlreadyDownloaded:1];
        if (v135)
        {
          v106 = @"SetCatalogFoundPromoted";
        }

        else
        {
          v106 = @"SetCatalogFoundSame";
        }

        v22 = v106;
        goto LABEL_79;
      }
    }

    v103 = [(MADAutoAssetJob *)v98 tryPersonalizeDescriptors];
    v104 = [v103 count];

    v98 = v133;
    if (v104)
    {
      if (v135)
      {
        v105 = @"SetCatalogFoundPromotedHeal";
      }

      else
      {
        v105 = @"SetCatalogFoundSameHeal";
      }

      v22 = v105;
      v10 = v131;
      goto LABEL_79;
    }

    goto LABEL_73;
  }

  v67 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    v68 = [(MADAutoAssetJob *)v133 autoJobName];
    v69 = [(MADAutoAssetJob *)v133 setConfiguration];
    v70 = [v69 summary];
    *buf = 138543874;
    v141 = v131;
    v142 = 2114;
    v143 = v68;
    v144 = 2114;
    v145 = v70;
    _os_log_impl(&dword_0, v67, OS_LOG_TYPE_DEFAULT, "{%{public}@} (%{public}@)\n[SET-DECIDE-FOUND] postponing[RAMPED] setConfiguration:%{public}@", buf, 0x20u);
  }

  [(MADAutoAssetJob *)v133 setSetDescriptorDiscardRamped:1];
  v71 = [MANAutoAssetSetInfoFound alloc];
  v72 = [(MADAutoAssetJob *)v133 autoAssetSetIdentifier];
  v73 = [(MADAutoAssetJob *)v133 newestDownloadedSetStatus];
  v74 = [(MANAutoAssetSetInfoFound *)v71 initForAssetSetIdentifier:v72 reportingStatus:v73];
  [(MADAutoAssetJob *)v133 setResultSetFound:v74];

  v75 = [(MADAutoAssetJob *)v133 resultSetFound];
  v76 = [(MADAutoAssetJob *)v133 setJobInformation];
  [v76 setFoundContent:v75];

  v22 = @"SetCatalogFoundSame";
  v10 = v131;
LABEL_78:
  v99 = v119;
LABEL_79:

LABEL_80:

  return v22;
}

- (BOOL)wasAssetSetSpecifierRequested:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(MADAutoAssetJob *)self setConfiguration];
  v6 = [v5 autoAssetEntries];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) assetSelector];
        v11 = [v10 assetSpecifier];
        v12 = [SUCore stringIsEqual:v4 to:v11];

        if (v12)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)assetSetEntryForAssetMetadata:(id)a3
{
  v4 = [a3 safeStringForKey:@"AssetSpecifier"];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(MADAutoAssetJob *)self setConfiguration];
  v6 = [v5 autoAssetEntries];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 assetSelector];
        v12 = [v11 assetSpecifier];
        v13 = [SUCore stringIsEqual:v4 to:v12];

        if (v13)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)newFoundSetDescriptorsAsNewerDiscovered
{
  v56 = objc_alloc_init(NSMutableDictionary);
  v48 = objc_alloc_init(NSMutableArray);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = [(MADAutoAssetJob *)self foundSetPatchDescriptorsBySpecifier];
  p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
  v53 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
  v55 = self;
  if (v53)
  {
    v51 = *v62;
    do
    {
      for (i = 0; i != v53; i = i + 1)
      {
        if (*v62 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v61 + 1) + 8 * i);
        v6 = [(MADAutoAssetJob *)self foundSetPatchDescriptorsBySpecifier];
        v7 = [v6 safeObjectForKey:v5 ofClass:objc_opt_class()];

        v8 = [MAAutoAssetSelector alloc];
        v9 = [v7 assetType];
        v10 = [v7 assetSpecifier];
        v11 = [v7 assetVersion];
        v12 = [v8 initForAssetType:v9 withAssetSpecifier:v10 matchingAssetVersion:v11];

        v13 = [v12 persistedEntryID];
        v14 = [v56 safeObjectForKey:v13 ofClass:objc_opt_class()];
        if (v14)
        {
          v15 = [(MADAutoAssetJob *)self autoJobFSM];
          v16 = [v15 diag];
          v17 = [NSString alloc];
          v18 = [v7 summary];
          v19 = [v14 summary];
          v20 = [v17 initWithFormat:@"{newFoundSetDescriptorsAsNewerDiscovered} (patch) already encountered | nextFoundDescriptor:%@ | alreadyAtomicEntry:%@", v18, v19];
          [v16 trackAnomaly:@"AUTO-SET-JOB" forReason:v20 withResult:6101 withError:0];

          p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
        }

        else
        {
          v21 = objc_alloc(p_weak_ivar_lyt[283]);
          v22 = [v7 metadata];
          v15 = [v21 initWithFullAssetSelector:v12 withAssetID:0 withLocalContentURL:0 withAssetAttributes:v22 inhibitedFromEmergencyRemoval:0];

          if (v15)
          {
            [v56 setSafeObject:v15 forKey:v13];
            [v48 addObject:v15];
          }

          else
          {
            v23 = [(MADAutoAssetJob *)v55 autoJobFSM];
            v24 = [v23 diag];
            v25 = [NSString alloc];
            v26 = [v7 summary];
            v27 = [v25 initWithFormat:@"{newFoundSetDescriptorsAsNewerDiscovered} unable to allocate nextDiscoveredAtomicEntry for patch setDescriptor:%@", v26];
            [v24 trackAnomaly:@"AUTO-SET-JOB" forReason:v27 withResult:6101 withError:0];

            p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
          }
        }

        self = v55;
      }

      v53 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
    }

    while (v53);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v28 = [(MADAutoAssetJob *)self foundSetFullDescriptorsBySpecifier];
  v54 = [v28 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v54)
  {
    v52 = *v58;
    do
    {
      for (j = 0; j != v54; j = j + 1)
      {
        if (*v58 != v52)
        {
          objc_enumerationMutation(v28);
        }

        v30 = *(*(&v57 + 1) + 8 * j);
        v31 = objc_autoreleasePoolPush();
        v32 = [(MADAutoAssetJob *)self foundSetFullDescriptorsBySpecifier];
        v33 = [v32 safeObjectForKey:v30 ofClass:objc_opt_class()];

        v34 = [MAAutoAssetSelector alloc];
        v35 = [v33 assetType];
        v36 = [v33 assetSpecifier];
        v37 = [v33 assetVersion];
        v38 = [v34 initForAssetType:v35 withAssetSpecifier:v36 matchingAssetVersion:v37];

        v39 = [v38 persistedEntryID];
        v40 = [v56 safeObjectForKey:v39 ofClass:objc_opt_class()];
        if (!v40)
        {
          v41 = [MANAutoAssetSetAtomicEntry alloc];
          v42 = [v33 metadata];
          v43 = [(MANAutoAssetSetAtomicEntry *)v41 initWithFullAssetSelector:v38 withAssetID:0 withLocalContentURL:0 withAssetAttributes:v42 inhibitedFromEmergencyRemoval:0];

          if (v43)
          {
            [v56 setSafeObject:v43 forKey:v39];
            [v48 addObject:v43];
            self = v55;
          }

          else
          {
            obja = [(MADAutoAssetJob *)v55 autoJobFSM];
            v44 = [obja diag];
            v45 = v28;
            v46 = [[NSString alloc] initWithFormat:@"{newFoundSetDescriptorsAsNewerDiscovered} unable to allocate nextDiscoveredAtomicEntry for full setDescriptor:%@", v33];
            [v44 trackAnomaly:@"AUTO-SET-JOB" forReason:v46 withResult:6101 withError:0];

            v28 = v45;
            self = v55;
          }
        }

        objc_autoreleasePoolPop(v31);
      }

      v54 = [v28 countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v54);
  }

  return v48;
}

- (void)newFoundSetDescriptorsFromCachedLookup:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v11 = objc_alloc_init(NSMutableDictionary);
  v7 = objc_alloc_init(NSMutableDictionary);
  [(MADAutoAssetJob *)self buildPotentialDescriptors:@"newFoundSetDescriptorsFromCachedLookup" fromLookupResults:v4 buildingPatchDescriptors:v11 andFullDescriptors:v7];

  [(MADAutoAssetJob *)self setFoundSetPatchDescriptorsBySpecifier:v11];
  [(MADAutoAssetJob *)self setFoundSetFullDescriptorsBySpecifier:v7];
  v8 = [(MADAutoAssetJob *)self newFoundSetDescriptorsAsNewerDiscovered];
  [(MADAutoAssetJob *)self setFoundSetNewerDiscoveredAtomicEntries:v8];

  v9 = [(MADAutoAssetJob *)self foundSetNewerDiscoveredAtomicEntries];
  v10 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  [v10 setDiscoveredAtomicEntries:v9];

  [(MADAutoAssetJob *)self rebuildLastestDescriptorsOnFilesystem:@"newFoundSetDescriptorsFromCachedLookup"];
}

- (BOOL)buildPotentialDescriptors:(id)a3 fromLookupResults:(id)a4 buildingPatchDescriptors:(id)a5 andFullDescriptors:(id)a6
{
  v89 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(MADAutoAssetJob *)self autoJobFSM];
  v14 = [v13 extendedStateQueue];
  dispatch_assert_queue_V2(v14);

  v15 = [v10 safeStringForKey:@"AssetType"];
  v91 = self;
  v86 = [(MADAutoAssetJob *)self autoAssetSetAssetType];
  v16 = [v10 safeObjectForKey:@"Assets" ofClass:objc_opt_class()];
  v17 = v16;
  if (!v15 || !v16)
  {
    v56 = [NSString alloc];
    v57 = @"MISSING";
    if (v15)
    {
      v58 = v15;
    }

    else
    {
      v58 = @"MISSING";
    }

    if (v17)
    {
      v57 = @"present";
    }

    v59 = [v56 initWithFormat:@"auto-asset catalog without required fields | catalogAssetType:%@, catalogAssets:%@", v58, v57];
    v60 = v91;
    v61 = v89;
    v62 = 6102;
    goto LABEL_51;
  }

  if (([SUCore stringIsEqual:v15 to:v86]& 1) == 0)
  {
    v59 = [[NSString alloc] initWithFormat:@"auto-asset catalog for wrong assetType | catalog:%@, expecting:%@", v15, v86];
    v60 = v91;
    v61 = v89;
    v62 = 6108;
LABEL_51:
    [(MADAutoAssetJob *)v60 statusChange:v61 catalogAnomaly:v62 forReason:v59];
    goto LABEL_52;
  }

  if (![v17 count])
  {
    v64 = [(MADAutoAssetJob *)v91 latestInstalledAssetVersion];

    if (v64)
    {
      v65 = [NSString alloc];
      v66 = [(MADAutoAssetJob *)v91 latestInstalledAssetVersion];
      v67 = [v65 initWithFormat:@"successful catalog download yet no assets in catalog | have installed atomic-instance:%@ | REVOKED", v66];
      [(MADAutoAssetJob *)v91 statusChange:v89 catalogFailure:6110 forReason:v67];

      goto LABEL_53;
    }

    v59 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v71 = [(MADAutoAssetJob *)v91 autoJobName];
      *buf = 138543618;
      v98 = v71;
      v99 = 2114;
      v100 = v89;
      _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEFAULT, "%{public}@ | {%{public}@} no assets provided (and no latest-installed atomic-instance)", buf, 0x16u);
    }

LABEL_52:

LABEL_53:
    v84 = 0;
    goto LABEL_54;
  }

  v73 = v15;
  v74 = v10;
  v82 = v11;
  v83 = [[NSMutableString alloc] initWithString:&stru_4BD3F0];
  v80 = [[NSMutableString alloc] initWithString:&stru_4BD3F0];
  v78 = [[NSMutableString alloc] initWithString:&stru_4BD3F0];
  v79 = [[NSMutableString alloc] initWithString:&stru_4BD3F0];
  v77 = [[NSMutableString alloc] initWithString:&stru_4BD3F0];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v72 = v17;
  obj = v17;
  v18 = [obj countByEnumeratingWithState:&v93 objects:v121 count:16];
  v81 = v12;
  if (!v18)
  {
    v87 = 0;
    v88 = 0;
    v20 = 0;
    v84 = 0;
    goto LABEL_58;
  }

  v19 = v18;
  v87 = 0;
  v88 = 0;
  v20 = 0;
  v84 = 0;
  v21 = *v94;
  v22 = v86;
  v85 = *v94;
  do
  {
    v23 = 0;
    do
    {
      if (*v94 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(*(&v93 + 1) + 8 * v23);
      v25 = objc_autoreleasePoolPush();
      if (![MADAutoAssetDescriptor doesMetatadaIndicateEmptyEntry:v24])
      {
        v29 = [MADAutoAssetDescriptor alloc];
        v92 = 0;
        v30 = [(MADAutoAssetDescriptor *)v29 initForAssetType:v22 fromMetadata:v24 invalidReasons:&v92];
        v26 = v92;
        if (v30)
        {
          v31 = [v30 assetSpecifier];
          v32 = [(MADAutoAssetJob *)v91 wasAssetSetSpecifierRequested:v31];

          if ((v32 & 1) == 0)
          {
            v39 = [v30 selectorNameWithoutAssetType];
            [v83 appendFormat:@"%@|", v39];

            goto LABEL_32;
          }

          v33 = -[MADAutoAssetJob preferenceAsIfRampOrUse:](v91, "preferenceAsIfRampOrUse:", [v30 isRamped]);
          v34 = v87;
          if (v87)
          {
            if ((v84 & 1) != v33)
            {
              v35 = _MADLog(@"AutoJob");
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
              {
                v36 = [(MADAutoAssetJob *)v91 autoJobName];
                v37 = [v30 summary];
                *buf = 138543874;
                v98 = v36;
                v99 = 2114;
                v100 = v89;
                v101 = 2114;
                v102 = v37;
                _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEBUG, "%{public}@ | {%{public}@} mixture of Ramping indications - considering overall set as NOT ramped | nextAsset:%{public}@", buf, 0x20u);

                v34 = v87;
              }

              v84 = 0;
            }
          }

          else
          {
            v84 = v33;
          }

          v87 = v34 + 1;
          v40 = [v30 isPatch];
          v41 = [v30 assetSpecifier];
          v42 = objc_opt_class();
          if (v40)
          {
            v43 = [v82 safeObjectForKey:v41 ofClass:v42];

            if (v43)
            {
              if ([(MADAutoAssetJob *)v91 isMorePreferredFormat:v30 comparedTo:v43])
              {
                v44 = [v30 assetSpecifier];
                [v82 setSafeObject:v30 forKey:v44];

                v45 = [v30 selectorNameWithoutAssetType];
                [v78 appendFormat:@"%@|", v45];
              }

              else
              {
                v45 = _MADLog(@"AutoJob");
                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
                {
                  v75 = [(MADAutoAssetJob *)v91 autoJobName];
                  v51 = [v30 summary];
                  *buf = 138543874;
                  v98 = v75;
                  v99 = 2114;
                  v100 = v89;
                  v101 = 2114;
                  v102 = v51;
                  v52 = v51;
                  _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEBUG, "%{public}@ | {%{public}@} filtering out asset (additional patch of less-preferred format) | filtered:%{public}@", buf, 0x20u);
                }
              }
            }

            else
            {
              v49 = [v30 assetSpecifier];
              [v82 setSafeObject:v30 forKey:v49];

              v45 = [v30 selectorNameWithoutAssetType];
              [v80 appendFormat:@"%@|", v45];
            }

LABEL_32:
            v21 = v85;
            v22 = v86;
          }

          else
          {
            v46 = [v81 safeObjectForKey:v41 ofClass:v42];

            if (v46)
            {
              if ([(MADAutoAssetJob *)v91 isMorePreferredFormat:v30 comparedTo:v46])
              {
                v47 = [v30 assetSpecifier];
                [v81 setSafeObject:v30 forKey:v47];

                v48 = [v30 selectorNameWithoutAssetType];
                [v77 appendFormat:@"%@|", v48];
              }

              else
              {
                v48 = _MADLog(@"AutoJob");
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                {
                  v76 = [(MADAutoAssetJob *)v91 autoJobName];
                  v53 = [v30 summary];
                  *buf = 138543874;
                  v98 = v76;
                  v99 = 2114;
                  v100 = v89;
                  v101 = 2114;
                  v102 = v53;
                  v54 = v53;
                  _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEBUG, "%{public}@ | {%{public}@} filtering out asset (additional full of less-preferred format) | filtered:%{public}@", buf, 0x20u);
                }
              }
            }

            else
            {
              v50 = [v30 assetSpecifier];
              [v81 setSafeObject:v30 forKey:v50];

              v48 = [v30 selectorNameWithoutAssetType];
              [v79 appendFormat:@"%@|", v48];
            }

            v21 = v85;

            v22 = v86;
          }
        }

        else
        {
          v38 = [[NSString alloc] initWithFormat:@"{%@} auto-asset metadata considered invalid | %@", v89, v26];
          [(MADAutoAssetJob *)v91 trackAnomaly:6108 forReason:v38];

          ++v88;
        }

        goto LABEL_36;
      }

      ++v20;
      v26 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = [(MADAutoAssetJob *)v91 autoJobName];
        v28 = [v24 safeSummary];
        *buf = 138543874;
        v98 = v27;
        v99 = 2114;
        v100 = v89;
        v101 = 2114;
        v102 = v28;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEBUG, "%{public}@ | {%{public}@} filtering out asset (empty entry) | metadata:%{public}@", buf, 0x20u);
      }

LABEL_36:

      objc_autoreleasePoolPop(v25);
      v23 = v23 + 1;
    }

    while (v19 != v23);
    v55 = [obj countByEnumeratingWithState:&v93 objects:v121 count:16];
    v19 = v55;
  }

  while (v55);
LABEL_58:

  v68 = _MADLog(@"AutoJob");
  v15 = v73;
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    v69 = [(MADAutoAssetJob *)v91 autoJobName];
    v70 = @"N";
    *buf = 138546178;
    v98 = v69;
    if (v84)
    {
      v70 = @"Y";
    }

    v99 = 2114;
    v100 = v89;
    v101 = 2114;
    v102 = v73;
    v103 = 2114;
    v104 = v70;
    v105 = 2048;
    v106 = v87;
    v107 = 2048;
    v108 = v20;
    v109 = 2048;
    v110 = v88;
    v111 = 2114;
    v112 = v83;
    v113 = 2114;
    v114 = v80;
    v115 = 2114;
    v116 = v78;
    v117 = 2114;
    v118 = v79;
    v119 = 2114;
    v120 = v77;
    _os_log_impl(&dword_0, v68, OS_LOG_TYPE_DEFAULT, "%{public}@ | {%{public}@} built potential descriptors | assetType:%{public}@ | rampedToBePostponed:%{public}@ | considered:%ld | empty:%ld | anomaly:%ld\n>>> NotRequested:%{public}@\n>>> Patch:%{public}@\n>>> PatchPreferred:%{public}@\n>>> Full:%{public}@\n>>> FullPreferred:%{public}@", buf, 0x7Au);
  }

  v10 = v74;
  v12 = v81;
  v11 = v82;
  v17 = v72;
LABEL_54:

  return v84 & 1;
}

- (void)appendUniqueSelectorForDescriptor:(id)a3 toArray:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MAAutoAssetSelector alloc];
  v8 = [v5 assetType];
  v28 = v5;
  v9 = [v5 assetSpecifier];
  v10 = [v7 initForAssetType:v8 withAssetSpecifier:v9];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
    do
    {
      v16 = 0;
      v29 = v13;
      do
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v30 + 1) + 8 * v16);
        v18 = p_weak_ivar_lyt[223];
        v19 = [v10 assetType];
        v20 = [v17 assetType];
        if ([v18 stringIsEqual:v19 to:v20])
        {
          v21 = p_weak_ivar_lyt[223];
          [v10 assetSpecifier];
          v22 = v10;
          v23 = v14;
          v24 = p_weak_ivar_lyt;
          v26 = v25 = v11;
          v27 = [v17 assetSpecifier];
          LOBYTE(v21) = [v21 stringIsEqual:v26 to:v27];

          v11 = v25;
          p_weak_ivar_lyt = v24;
          v14 = v23;
          v10 = v22;
          v13 = v29;

          if (v21)
          {

            goto LABEL_13;
          }
        }

        else
        {
        }

        v16 = v16 + 1;
      }

      while (v13 != v16);
      v13 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v13);
  }

  [v11 addObject:v10];
LABEL_13:
}

- (void)refreshSetFoundToManager:(BOOL)a3 fromLocation:(id)a4
{
  v5 = a4;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [[NSString alloc] initWithFormat:@"%@:refreshSetFoundToManager", v5];
  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v9 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    v10 = [v9 copy];
    v11 = [(MADAutoAssetJob *)self currentSetStatus];
    v12 = [(MADAutoAssetJob *)self firstClientName];
    v13 = [MADAutoAssetControlManager persistSetJobDescriptor:v10 withCurrentSetStatus:v11 withFirstClientName:v12 fromLocation:v8];

    if (v13)
    {
      [(MADAutoAssetJob *)self setBecameLatestToVend:1];
      v14 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(MADAutoAssetJob *)self autoJobName];
        *buf = 138543618;
        v17 = v8;
        v18 = 2114;
        v19 = v15;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "{%{public}@ (%{public}@)\n[SET-FOUND] set-job just became set-configuration's latest-to-vend", buf, 0x16u);
      }
    }
  }

  else
  {
    [(MADAutoAssetJob *)self statusChange:v8 catalogAnomaly:6103 forReason:@"refreshSetFoundToManager should only execute for set-job"];
  }
}

- (void)rebuildLastestDescriptorsOnFilesystem:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v43 = v4;
  v44 = [[NSString alloc] initWithFormat:@"%@:rebuildLastestDescriptorsOnFilesystem", v4];
  v7 = objc_alloc_init(NSMutableDictionary);
  [(MADAutoAssetJob *)self setLatestAssetDescriptorOnFilesystemBySpecifier:v7];

  v8 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(MADAutoAssetJob *)self autoJobName];
    *buf = 138543618;
    v60 = v9;
    v61 = 2114;
    v62 = v44;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@}\n[BUILD-DESCRIPTORS] cleared latestAssetDescriptorOnFilesystemBySpecifier", buf, 0x16u);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = [(MADAutoAssetJob *)self foundSetNewerDiscoveredAtomicEntries];
  v10 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v56;
    p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
    v45 = *v56;
    v46 = self;
    do
    {
      v14 = 0;
      v47 = v11;
      do
      {
        if (*v56 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = p_weak_ivar_lyt[266];
        v16 = [*(*(&v55 + 1) + 8 * v14) fullAssetSelector];
        v17 = [v15 loadDescriptorsForJobSelector:v16 promotingIfCurrentlyStaged:0 immediatelyPromotedDescriptor:0];

        if (![v17 count])
        {
          goto LABEL_34;
        }

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v50 = v17;
        v18 = v17;
        v19 = [v18 countByEnumeratingWithState:&v51 objects:v65 count:16];
        if (!v19)
        {
          v22 = 0;
          v21 = 0;
          goto LABEL_32;
        }

        v20 = v19;
        v49 = v14;
        v21 = 0;
        v22 = 0;
        v23 = *v52;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v52 != v23)
            {
              objc_enumerationMutation(v18);
            }

            v25 = *(*(&v51 + 1) + 8 * i);
            v26 = objc_autoreleasePoolPush();
            v27 = [v18 safeObjectForKey:v25 ofClass:objc_opt_class()];
            v28 = v27;
            if (!v22)
            {
              v34 = v27;
              v35 = [SUCoreRestoreVersion alloc];
              v31 = [v34 assetVersion];
              v33 = [v35 initWithRestoreVersion:v31];
              goto LABEL_19;
            }

            v29 = [SUCoreRestoreVersion alloc];
            v30 = [v28 assetVersion];
            v31 = [v29 initWithRestoreVersion:v30];

            if ([v31 isComparable:v21] && objc_msgSend(v31, "compare:", v21) == &dword_0 + 1)
            {
              v32 = v28;

              v33 = v31;
              v31 = v33;
LABEL_19:
              v36 = v33;

              v21 = v36;
              v22 = v28;
            }

            objc_autoreleasePoolPop(v26);
          }

          v20 = [v18 countByEnumeratingWithState:&v51 objects:v65 count:16];
        }

        while (v20);

        if (v22)
        {
          p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
          v11 = v47;
          v14 = v49;
          if ([MADAutoAssetControlManager jobDescriptorOnFilesystemConfirmed:v22])
          {
            v37 = [(MADAutoAssetJob *)v46 latestAssetDescriptorOnFilesystemBySpecifier];
            v38 = [v22 assetSpecifier];
            [v37 setSafeObject:v22 forKey:v38];

            v18 = _MADLog(@"AutoJob");
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v39 = [(MADAutoAssetJob *)v46 autoJobName];
              v40 = [v22 selectorName];
              *buf = 138543874;
              v60 = v39;
              v61 = 2114;
              v62 = v44;
              v63 = 2114;
              v64 = v40;
              v41 = v18;
              v42 = "%{public}@ {%{public}@}\n[BUILD-DESCRIPTORS] latest version on filesystem | selector:%{public}@";
              goto LABEL_30;
            }
          }

          else
          {
            v18 = _MADLog(@"AutoJob");
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v39 = [(MADAutoAssetJob *)v46 autoJobName];
              v40 = [v22 selectorName];
              *buf = 138543874;
              v60 = v39;
              v61 = 2114;
              v62 = v44;
              v63 = 2114;
              v64 = v40;
              v41 = v18;
              v42 = "%{public}@ {%{public}@}\n[BUILD-DESCRIPTORS] latest downloaded descriptor is not really on the filesystem - not adding to latestAssetDescriptorOnFilesystemBySpecifier list | selector:%{public}@,";
LABEL_30:
              _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, v42, buf, 0x20u);
            }
          }

          v12 = v45;
LABEL_32:
        }

        else
        {
          v12 = v45;
          p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
          v11 = v47;
          v14 = v49;
        }

        v17 = v50;
LABEL_34:

        v14 = v14 + 1;
      }

      while (v14 != v11);
      v11 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
    }

    while (v11);
  }
}

- (BOOL)isSetFoundAlreadyOnFilesystem:(id)a3 justPromotedAnyDescriptor:(BOOL *)a4
{
  v6 = a3;
  v7 = [(MADAutoAssetJob *)self autoJobFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [[NSString alloc] initWithFormat:@"%@:isSetFoundAlreadyOnFilesystem", v6];
  v10 = [(MADAutoAssetJob *)self foundSetNewerDiscoveredAtomicEntries];
  v11 = [v10 count];

  if (!v11)
  {
    v43 = 0;
    if (!a4)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = [(MADAutoAssetJob *)self foundSetNewerDiscoveredAtomicEntries];
  v48 = [obj countByEnumeratingWithState:&v66 objects:v77 count:16];
  LODWORD(v11) = 0;
  if (!v48)
  {
    goto LABEL_35;
  }

  v50 = *v67;
  p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
  v45 = a4;
  v46 = self;
  v47 = v6;
  v49 = v9;
  while (2)
  {
    v51 = v11;
    v13 = 0;
    while (2)
    {
      if (*v67 != v50)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v66 + 1) + 8 * v13);
      v15 = [v14 fullAssetSelector];
      v58 = v14;
      v16 = [v14 fullAssetSelector];
      v65 = 0;
      v17 = [MADAutoAssetControlManager loadDescriptorsForJobSelector:v15 promotingIfCurrentlyStaged:v16 immediatelyPromotedDescriptor:&v65];
      v18 = v65;

      if (v18)
      {
        [(MADAutoAssetJob *)self updateSetDescriptorDownloaded:v9 forAssetDescriptor:v18 justDownloaded:0];
        if (![(MADAutoAssetJob *)self stagerJob]&& [MADAutoAssetSecure isPersonalizationRequired:v47 forDescriptor:v18])
        {
          v19 = [(MADAutoAssetJob *)self tryPersonalizeDescriptors];
          [v19 addObject:v18];

          v20 = [(MADAutoAssetJob *)self tryPersonalizePromoted];
          v21 = [v18 assetId];
          [v20 addObject:v21];

          v22 = _MADLog(@"AutoJob");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [(MADAutoAssetJob *)self autoJobName];
            v24 = [v18 selectorName];
            *buf = 138543874;
            v72 = v23;
            v73 = 2114;
            v74 = v9;
            v75 = 2114;
            v76 = v24;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-SECURE][AUTO-PERSONALIZATION][SET-JOB-TRY] {%{public}@:} secure auto-asset just immediate-promoted from staged (requires personalization) | selector:%{public}@", buf, 0x20u);
          }
        }

        v51 = 1;
      }

      if (!v17 || ![v17 count])
      {

LABEL_41:
        v43 = 0;
        a4 = v45;
        v6 = v47;
LABEL_42:
        LOBYTE(v11) = v51;
        if (!a4)
        {
          goto LABEL_44;
        }

LABEL_43:
        *a4 = v11 & 1;
        goto LABEL_44;
      }

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v57 = v17;
      v25 = [v57 countByEnumeratingWithState:&v61 objects:v70 count:16];
      if (!v25)
      {

        goto LABEL_41;
      }

      v26 = v25;
      v54 = v18;
      v52 = v13;
      v27 = *v62;
      v29 = v57;
      v28 = v58;
      v59 = *v62;
LABEL_18:
      v30 = 0;
      v60 = v26;
      while (1)
      {
        if (*v62 != v27)
        {
          objc_enumerationMutation(v29);
        }

        v31 = [v29 safeObjectForKey:*(*(&v61 + 1) + 8 * v30) ofClass:objc_opt_class()];
        if (![v31 isOnFilesystem])
        {
          goto LABEL_30;
        }

        v32 = p_weak_ivar_lyt[223];
        v33 = [v31 assetType];
        v34 = [v28 fullAssetSelector];
        v35 = [v34 assetType];
        if (![v32 stringIsEqual:v33 to:v35])
        {
          goto LABEL_29;
        }

        v36 = p_weak_ivar_lyt[223];
        v37 = [v31 assetSpecifier];
        v38 = [v28 fullAssetSelector];
        v39 = [v38 assetSpecifier];
        if (![v36 stringIsEqual:v37 to:v39])
        {
          goto LABEL_28;
        }

        v56 = v37;
        v40 = [v31 assetVersion];
        v41 = [v58 fullAssetSelector];
        v42 = [v41 assetVersion];
        if (![SUCore stringIsEqual:v40 to:v42])
        {

          v37 = v56;
LABEL_28:

          p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
          v29 = v57;
          v28 = v58;
LABEL_29:

          v27 = v59;
          v26 = v60;
          goto LABEL_30;
        }

        v55 = [MADAutoAssetControlManager jobDescriptorOnFilesystemConfirmed:v31];

        p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
        v29 = v57;
        v28 = v58;
        v27 = v59;
        v26 = v60;
        if (v55)
        {
          break;
        }

LABEL_30:

        if (v26 == ++v30)
        {
          v26 = [v29 countByEnumeratingWithState:&v61 objects:v70 count:16];
          if (v26)
          {
            goto LABEL_18;
          }

          v43 = 0;
          a4 = v45;
          v6 = v47;
          v9 = v49;
          goto LABEL_42;
        }
      }

      v13 = v52 + 1;
      v9 = v49;
      self = v46;
      if ((v52 + 1) != v48)
      {
        continue;
      }

      break;
    }

    a4 = v45;
    v6 = v47;
    v48 = [obj countByEnumeratingWithState:&v66 objects:v77 count:16];
    LODWORD(v11) = v51;
    if (v48)
    {
      continue;
    }

    break;
  }

LABEL_35:

  [(MADAutoAssetJob *)self rebuildLastestDescriptorsOnFilesystem:v6];
  v43 = 1;
  if (a4)
  {
    goto LABEL_43;
  }

LABEL_44:

  return v43;
}

- (void)statusChangeSetCatalogFoundSame:(id)a3
{
  v4 = [(MADAutoAssetJob *)self autoJobFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {

    [(MADAutoAssetJob *)self statusChange:@"statusChangeSetCatalogFoundSame" catalogAnomaly:6103 forReason:@"statusChangeSetCatalogFoundSame should only execute for set-job"];
  }
}

- (void)updateSetTrackingWithSuccessfulAssetDownload
{
  v4 = [(MADAutoAssetJob *)self autoJobFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v6 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    if (v6 && (v4 = v6, [(MADAutoAssetJob *)self downloadingAssetDescriptor], v7 = objc_claimAutoreleasedReturnValue(), v7, v4, v7))
    {
      v13 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
      [(MADAutoAssetJob *)self updateSetDescriptorDownloaded:@"updateSetTrackingWithSuccessfulAssetDownload" forAssetDescriptor:v13 justDownloaded:1];
    }

    else
    {
      v8 = [NSString alloc];
      v13 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      if (v13)
      {
        v4 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
        v9 = [v4 summary];
      }

      else
      {
        v9 = @"N";
      }

      v10 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
      if (v10)
      {
        v2 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
        v11 = [v2 summary];
      }

      else
      {
        v11 = @"N";
      }

      v12 = [v8 initWithFormat:@"{updateSetTrackingWithSuccessfulAssetDownload} MISSING | autoAssetSetDescriptor:%@, downloadingAssetDescriptor:%@", v9, v11];
      [(MADAutoAssetJob *)self trackAnomaly:6111 forReason:v12];

      if (v10)
      {
      }

      if (v13)
      {
      }
    }
  }

  else
  {

    [(MADAutoAssetJob *)self statusChange:@"updateSetTrackingWithSuccessfulAssetDownload" catalogAnomaly:6103 forReason:@"updateSetTrackingWithSuccessfulAssetDownload should only execute for set-job"];
  }
}

- (void)updateSetDescriptorDownloaded:(id)a3 forAssetDescriptor:(id)a4 justDownloaded:(BOOL)a5
{
  v5 = a5;
  v51 = a4;
  v8 = a3;
  v9 = [[NSString alloc] initWithFormat:@"%@:updateSetDescriptorDownloaded", v8];

  v10 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v11 = [v10 latestDowloadedAtomicInstanceEntries];

  if (v11)
  {
    v12 = [NSMutableArray alloc];
    v13 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    v14 = [v13 latestDowloadedAtomicInstanceEntries];
    v15 = [v12 initWithArray:v14];
  }

  else
  {
    v15 = objc_alloc_init(NSMutableArray);
  }

  v16 = [MAAutoAssetSelector alloc];
  v17 = [v51 assetType];
  v18 = [v51 assetSpecifier];
  v19 = [v51 assetVersion];
  v20 = [v16 initForAssetType:v17 withAssetSpecifier:v18 matchingAssetVersion:v19];

  v21 = [v51 assetType];
  v22 = [v51 assetId];
  v23 = getAutoLocalUrlFromTypeAndIdWithPurpose(v21, v22, 2, @"auto");

  v24 = [MANAutoAssetSetAtomicEntry alloc];
  v25 = [v51 assetId];
  v26 = [v51 metadata];
  v27 = [(MANAutoAssetSetAtomicEntry *)v24 initWithFullAssetSelector:v20 withAssetID:v25 withLocalContentURL:v23 withAssetAttributes:v26 inhibitedFromEmergencyRemoval:0];

  if (v27)
  {
    if ([(MADAutoAssetJob *)self isAtomicEntry:v27 alreadyInAtomicEntries:v15])
    {
      v28 = [NSString alloc];
      v29 = [(MANAutoAssetSetAtomicEntry *)v27 summary];
      v30 = [v51 summary];
      v31 = [v28 initWithFormat:@"{%@} downloaded atomic-entry already tracked (ignoring duplicate) | downloadedAtomicEntry:%@, downloadedAssetDescriptor:%@", v9, v29, v30];
      [(MADAutoAssetJob *)self trackAnomaly:6109 forReason:v31];
    }

    else
    {
      [v15 addObject:v27];
    }

    v32 = [(MADAutoAssetJob *)self dedupAtomicEntries:v15];
    v33 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    [v33 setLatestDowloadedAtomicInstanceEntries:v32];

    if (v5)
    {
      v34 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
      v35 = [v34 metadata];
      v36 = [v35 safeIntegerForKey:@"_UnarchivedSize"];

      if ([v51 downloadedNetworkBytes] <= 0 && v36 >= 1)
      {
        [v51 setDownloadedNetworkBytes:v36];
      }

      if ([v51 downloadedFilesystemBytes] <= 0 && v36 >= 1)
      {
        [v51 setDownloadedFilesystemBytes:v36];
      }

      if ([v51 downloadedNetworkBytes] >= 1)
      {
        v37 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
        v38 = [v37 downloadedNetworkBytes];

        if ((v38 & 0x8000000000000000) != 0)
        {
          v43 = [v51 downloadedNetworkBytes];
          v42 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
          v39 = v42;
          v41 = v43;
        }

        else
        {
          v39 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
          v40 = [v51 downloadedNetworkBytes];
          v41 = &v40[[v39 downloadedNetworkBytes]];
          v42 = v39;
        }

        [v42 setDownloadedNetworkBytes:v41];
      }

      if ([v51 downloadedFilesystemBytes] >= 1)
      {
        v44 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
        v45 = [v44 downloadedFilesystemBytes];

        if ((v45 & 0x8000000000000000) != 0)
        {
          v50 = [v51 downloadedFilesystemBytes];
          v49 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
          v46 = v49;
          v48 = v50;
        }

        else
        {
          v46 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
          v47 = [v51 downloadedFilesystemBytes];
          v48 = &v47[[v46 downloadedFilesystemBytes]];
          v49 = v46;
        }

        [v49 setDownloadedFilesystemBytes:v48];
      }
    }
  }

  [(MADAutoAssetJob *)self updateSetResults:v9 atomicInstanceDiscovered:1 availableForUse:0 downloading:1 buildingResultSetFound:0];
}

- (void)updateAutoAssetSetDescriptor
{
  v3 = [(MADAutoAssetJob *)self autoJobFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v5 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];

    if (v5)
    {
      v6 = [(MADAutoAssetJob *)self currentSetStatus];
      v7 = [v6 latestDownloadedAtomicInstance];
      v8 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      [v8 setIsOnFilesystem:v7 != 0];

      v9 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      [v9 setOnFilesystemIncomplete:0];

      v10 = [(MADAutoAssetJob *)self currentSetStatus];
      v11 = [v10 latestDownloadedAtomicInstance];
      v12 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      [v12 setIsDiscoveredFullyDownloaded:v11 != 0];

      v13 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      [v13 setNeverBeenLocked:0];

      v14 = [(MADAutoAssetJob *)self currentSetStatus];
      v15 = [v14 downloadUserInitiated];
      v16 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      [v16 setDownloadUserInitiated:v15];

      v17 = [(MADAutoAssetJob *)self currentSetStatus];
      v18 = [v17 downloadedNetworkBytes];
      v19 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      [v19 setDownloadedNetworkBytes:v18];

      v20 = [(MADAutoAssetJob *)self currentSetStatus];
      v21 = [v20 downloadedFilesystemBytes];
      v22 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      [v22 setDownloadedFilesystemBytes:v21];

      v23 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      [v23 setStagedPriorToAvailable:0];

      v24 = [MANAutoAssetSetInfoFound alloc];
      v25 = [(MADAutoAssetJob *)self autoAssetSetIdentifier];
      v26 = [(MADAutoAssetJob *)self currentSetStatus];
      v27 = [(MANAutoAssetSetInfoFound *)v24 initForAssetSetIdentifier:v25 reportingStatus:v26];
      [(MADAutoAssetJob *)self setResultSetFound:v27];

      v28 = [(MADAutoAssetJob *)self currentSetStatus];
      v29 = [v28 copy];
      v30 = [(MADAutoAssetJob *)self setJobInformation];
      [v30 setCurrentSetStatus:v29];

      v31 = [(MADAutoAssetJob *)self resultSetFound];
      v32 = [(MADAutoAssetJob *)self setJobInformation];
      [v32 setFoundContent:v31];

      v38 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      v33 = [(MADAutoAssetJob *)self setJobInformation];
      [v33 setSetDescriptor:v38];

      return;
    }

    v37 = [(MADAutoAssetJob *)self assignedSetDescriptor];

    if (v37)
    {
      if ([(MADAutoAssetJob *)self anomalyNoActiveSetDescriptor])
      {
        return;
      }

      [(MADAutoAssetJob *)self setAnomalyNoActiveSetDescriptor:1];
      v34 = @"no auto-asset-set-descriptor for reporting set-job status to auto-control-manager";
      v35 = self;
      v36 = 6101;
      goto LABEL_8;
    }

    if ([(MADAutoAssetJob *)self anomalyNoAssignedSetDescriptor])
    {
      return;
    }

    [(MADAutoAssetJob *)self setAnomalyNoAssignedSetDescriptor:1];
    v34 = @"no assigned auto-asset-set-descriptor";
  }

  else
  {
    v34 = @"updateAutoAssetSetDescriptor should only execute for set-job";
  }

  v35 = self;
  v36 = 6103;
LABEL_8:

  [(MADAutoAssetJob *)v35 statusChange:@"updateAutoAssetSetDescriptor" catalogAnomaly:v36 forReason:v34];
}

- (id)newAtomicInstancesDownloadedForDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 latestDownloadedAtomicInstance];

  if (v7)
  {
    v7 = objc_alloc_init(NSMutableArray);
    v8 = [v4 latestDownloadedAtomicInstance];
    [v7 addObject:v8];
  }

  return v7;
}

- (BOOL)remainingSetDescriptorToBeDownloaded
{
  v3 = [(MADAutoAssetJob *)self autoJobFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(MADAutoAssetJob *)self setConfiguration];
  v6 = [v5 autoAssetEntries];
  v7 = [v6 count];

  v8 = [(MADAutoAssetJob *)self nextSetSpecifierToDownload];
  v10 = v8 < v7;
  if (v8 < v7)
  {
    *&v9 = 138543618;
    v27 = v9;
    while (1)
    {
      v11 = [(MADAutoAssetJob *)self setConfiguration];
      v12 = [v11 autoAssetEntries];
      v13 = [v12 objectAtIndex:{-[MADAutoAssetJob nextSetSpecifierToDownload](self, "nextSetSpecifierToDownload")}];

      v14 = [(MADAutoAssetJob *)self foundSetFullDescriptorsBySpecifier];
      v15 = [v13 assetSelector];
      v16 = [v15 assetSpecifier];
      v17 = [v14 safeObjectForKey:v16 ofClass:objc_opt_class()];

      v18 = [(MADAutoAssetJob *)self foundSetPatchDescriptorsBySpecifier];
      v19 = [v13 assetSelector];
      v20 = [v19 assetSpecifier];
      v21 = [v18 safeObjectForKey:v20 ofClass:objc_opt_class()];

      if (v17 | v21)
      {
        break;
      }

      v22 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [(MADAutoAssetJob *)self autoJobName];
        v24 = [v13 summary];
        *buf = v27;
        v29 = v23;
        v30 = 2114;
        v31 = v24;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ | {remainingSetDescriptorToBeDownloaded} no newer to download | skipping nextEntryToDownload:%{public}@", buf, 0x16u);
      }

      [(MADAutoAssetJob *)self setNextSetSpecifierToDownload:[(MADAutoAssetJob *)self nextSetSpecifierToDownload]+ 1];
      v25 = [(MADAutoAssetJob *)self nextSetSpecifierToDownload];
      v10 = v25 < v7;
      if (v25 >= v7)
      {
        return v10;
      }
    }
  }

  return v10;
}

- (BOOL)placeNextSetAssetDescriptorToDownload:(id)a3 restrictToFull:(BOOL)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [(MADAutoAssetJob *)self autoJobFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(MADAutoAssetJob *)self setConfiguration];
  v11 = [v10 autoAssetEntries];
  v12 = [v11 count];

  if ([(MADAutoAssetJob *)self nextSetSpecifierToDownload]>= v12)
  {
    v73 = a5;
    v34 = [[NSString alloc] initWithFormat:@"AUTO-SET-JOB(%@)", v7];
    v71 = v7;
    v35 = [[NSString alloc] initWithFormat:@"no next specifier to download (at location %@)", v7];
    v36 = [MAAutoAssetError buildError:6108 fromOperation:v34 underlyingError:0 withDescription:v35];

    v37 = [(MADAutoAssetJob *)self assignedSetDescriptor];
    v38 = [v37 clientDomainName];
    v39 = [(MADAutoAssetJob *)self assignedSetDescriptor];
    v40 = [v39 assetSetIdentifier];
    v41 = [(MADAutoAssetJob *)self assignedSetDescriptor];
    v42 = [v41 discoveredAtomicInstance];
    [MADAutoAssetHistory recordFailedOperation:504 fromLayer:2 forClientDomainName:v38 forAssetSetIdentifier:v40 forAtomicInstance:v42 failingWithError:v36];

    if (+[MAAIRBEventReporter isAvailable])
    {
      v43 = [MAAIRBMobileAssetOperationMetadata alloc];
      v44 = [MADAutoAssetHistoryTracker operationName:504];
      v70 = [(MAAIRBMobileAssetOperationMetadata *)v43 initWithCode:504 name:v44];

      v45 = [MAAIRBMobileAssetAtomicInstance alloc];
      v46 = [MAAIRBMobileAssetAssetSet alloc];
      v47 = [(MADAutoAssetJob *)self assignedSetDescriptor];
      v48 = [v47 assetSetIdentifier];
      v49 = [(MAAIRBMobileAssetAssetSet *)v46 initWithAssetSetIdentifier:v48];
      v50 = [(MADAutoAssetJob *)self assignedSetDescriptor];
      v51 = [v50 discoveredAtomicInstance];
      v52 = [(MAAIRBMobileAssetAtomicInstance *)v45 initWithAssetSet:v49 atomicInstanceId:v51];

      v53 = [MAAIRBAppleIntelligenceAssetDeliveryEventType typeAtomicInstance:v70 atomicInstance:v52 assetCount:0];
      v54 = [MAAIRBAppleIntelligenceAssetDeliveryEvent alloc];
      v75 = v36;
      v55 = [NSArray arrayWithObjects:&v75 count:1];
      v56 = [(MAAIRBAppleIntelligenceAssetDeliveryEvent *)v54 initWithErrors:v55 type:v53];

      [MAAIRBEventReporter emitAppleIntelligenceEvent:v56];
    }

    v57 = [(MADAutoAssetJob *)self autoJobFSM];
    v58 = [v57 diag];
    v59 = [[NSString alloc] initWithFormat:@"{placeNextSetAssetDescriptorToDownload} no next to place | nextSetSpecifierToDownload:%ld, autoAssetEntries:%ld", -[MADAutoAssetJob nextSetSpecifierToDownload](self, "nextSetSpecifierToDownload"), v12];
    [v58 trackAnomaly:@"AUTO-SET-JOB" forReason:v59 withResult:6108 withError:v36];

    v29 = 0;
    v7 = v71;
    a5 = v73;
    if (v73)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = [(MADAutoAssetJob *)self setConfiguration];
    v14 = [v13 autoAssetEntries];
    v15 = [v14 objectAtIndex:{-[MADAutoAssetJob nextSetSpecifierToDownload](self, "nextSetSpecifierToDownload")}];

    v16 = [(MADAutoAssetJob *)self foundSetPatchDescriptorsBySpecifier];
    v17 = [v15 assetSelector];
    v18 = [v17 assetSpecifier];
    v19 = [v16 safeObjectForKey:v18 ofClass:objc_opt_class()];
    [(MADAutoAssetJob *)self setFoundNewerPatch:v19];

    v20 = [(MADAutoAssetJob *)self foundSetFullDescriptorsBySpecifier];
    v21 = [v15 assetSelector];
    v22 = [v21 assetSpecifier];
    v23 = [v20 safeObjectForKey:v22 ofClass:objc_opt_class()];
    [(MADAutoAssetJob *)self setFoundNewerFull:v23];

    [(MADAutoAssetJob *)self setWasPatched:0];
    [(MADAutoAssetJob *)self setProgressReportPhase:0];
    [(MADAutoAssetJob *)self setLastReportedPatchProgress:0];
    [(MADAutoAssetJob *)self setBaseForPatch:0];
    [(MADAutoAssetJob *)self setLatestInstalledAssetVersion:0];
    [(MADAutoAssetJob *)self setLatestInstalledAssetBuild:0];
    v24 = [(MADAutoAssetJob *)self foundNewerPatch];

    if (v24)
    {
      v25 = [(MADAutoAssetJob *)self latestAssetDescriptorOnFilesystemBySpecifier];
      v26 = [(MADAutoAssetJob *)self foundNewerPatch];
      v27 = [v26 assetSpecifier];
      v28 = [v25 safeObjectForKey:v27 ofClass:objc_opt_class()];

      v29 = v28 != 0;
      if (v28)
      {
        [(MADAutoAssetJob *)self setBaseForPatch:v28];
        v30 = [(MADAutoAssetJob *)self baseForPatch];
        v31 = [v30 assetVersion];
        [(MADAutoAssetJob *)self setLatestInstalledAssetVersion:v31];

        v32 = [(MADAutoAssetJob *)self baseForPatch];
        v33 = [v32 build];
        [(MADAutoAssetJob *)self setLatestInstalledAssetBuild:v33];
      }

      else
      {
        v74 = a5;
        v61 = [NSString alloc];
        v32 = objc_opt_self();
        v33 = [v32 foundNewerPatch];
        [v33 summary];
        v72 = v15;
        v63 = v62 = v7;
        v64 = [(MADAutoAssetJob *)self foundNewerFull];
        v65 = [v64 summary];
        v66 = [v61 initWithFormat:@"{%@:placeNextSetAssetDescriptorToDownload} no baseAssetDescriptor (downloading full instead of patch) | foundNewerPatch:%@, foundNewerFull:%@", v62, v63, v65];
        [(MADAutoAssetJob *)self trackAnomaly:6111 forReason:v66];

        a5 = v74;
        v7 = v62;
        v15 = v72;
      }

      v60 = [(MADAutoAssetJob *)self foundNewerFull];
      v67 = [(MADAutoAssetJob *)self newCurrentStatusForDescriptor:v60];
      [(MADAutoAssetJob *)self setCurrentStatus:v67];
    }

    else
    {
      v28 = [(MADAutoAssetJob *)self foundNewerFull];
      v60 = [(MADAutoAssetJob *)self newCurrentStatusForDescriptor:v28];
      [(MADAutoAssetJob *)self setCurrentStatus:v60];
      v29 = 0;
    }

    v36 = 0;
    if (a5)
    {
LABEL_13:
      v68 = v36;
      *a5 = v36;
    }
  }

  return v29;
}

- (id)setEntryBeingDownloaded
{
  v3 = [(MADAutoAssetJob *)self autoJobFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  if (-[MADAutoAssetJob nextSetSpecifierToDownload](self, "nextSetSpecifierToDownload") < 0 || (v5 = -[MADAutoAssetJob nextSetSpecifierToDownload](self, "nextSetSpecifierToDownload"), -[MADAutoAssetJob setConfiguration](self, "setConfiguration"), v6 = objc_claimAutoreleasedReturnValue(), [v6 autoAssetEntries], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6, v5 >= v8))
  {
    v11 = 0;
  }

  else
  {
    v9 = [(MADAutoAssetJob *)self setConfiguration];
    v10 = [v9 autoAssetEntries];
    v11 = [v10 objectAtIndex:{-[MADAutoAssetJob nextSetSpecifierToDownload](self, "nextSetSpecifierToDownload")}];
  }

  return v11;
}

- (void)reportJustDownloadedAssetOfSet:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [MADAutoAssetDescriptor alloc];
  v8 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
  v9 = [v8 assetType];
  v10 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
  v11 = [v10 metadata];
  v12 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
  v67 = 0;
  v13 = [(MADAutoAssetDescriptor *)v7 initForAssetType:v9 fromMetadata:v11 fromBaseDescriptor:v12 invalidReasons:&v67];
  v14 = v67;

  if (v13)
  {
    v15 = [(MADAutoAssetJob *)self currentStatus];
    v16 = [v15 downloadedAsPatch];

    v65 = v14;
    v66 = v4;
    if (v16)
    {
      v17 = [(MADAutoAssetJob *)self baseForPatch];

      if (v17)
      {
        v18 = [MAAutoAssetSelector alloc];
        v19 = [(MADAutoAssetJob *)self baseForPatch];
        v20 = [v19 assetType];
        v21 = [(MADAutoAssetJob *)self baseForPatch];
        v22 = [v21 assetSpecifier];
        v23 = [(MADAutoAssetJob *)self baseForPatch];
        v24 = [v23 assetVersion];
        v25 = [v18 initForAssetType:v20 withAssetSpecifier:v22 matchingAssetVersion:v24];

        v26 = v25;
      }

      else
      {
        v19 = [(MADAutoAssetJob *)self autoJobFSM];
        v20 = [v19 diag];
        v21 = [[NSString alloc] initWithFormat:@"{%@:reportJustDownloadedAssetOfSet} downloadedAsPatch yet no baseForPatch", v4];
        [v20 trackAnomaly:@"AUTO-SET-JOB" forReason:v21 withResult:6111 withError:0];
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }

    [v13 setIsOnFilesystem:1];
    [v13 setNeverBeenLocked:1];
    v31 = [(MADAutoAssetJob *)self currentSetStatus];
    [v13 setDownloadUserInitiated:{objc_msgSend(v31, "downloadUserInitiated")}];

    v32 = [(MADAutoAssetJob *)self currentSetStatus];
    [v13 setDownloadedNetworkBytes:{objc_msgSend(v32, "downloadedNetworkBytes")}];

    v33 = [(MADAutoAssetJob *)self currentSetStatus];
    [v13 setDownloadedFilesystemBytes:{objc_msgSend(v33, "downloadedFilesystemBytes")}];

    v34 = [(MADAutoAssetJob *)self currentStatus];
    [v13 setIsPatch:{objc_msgSend(v34, "downloadedAsPatch")}];

    [v13 setPatchedFromBaseSelector:v26];
    v64 = v26;
    if (v26)
    {
      v35 = [(MADAutoAssetJob *)self baseForPatch];
      [v13 setPatchedFromBaseFilesystemBytes:{objc_msgSend(v35, "downloadedFilesystemBytes")}];
    }

    else
    {
      [v13 setPatchedFromBaseFilesystemBytes:0];
    }

    v36 = [(MADAutoAssetJob *)self currentStatus];
    [v13 setPatchingAttempted:{objc_msgSend(v36, "patchingAttempted")}];

    v37 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    [v13 setStagedPriorToAvailable:{objc_msgSend(v37, "stagedPriorToAvailable")}];

    v38 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    v39 = [v38 stagedFromOSVersion];
    [v13 setStagedFromOSVersion:v39];

    v40 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    v41 = [v40 stagedFromBuildVersion];
    [v13 setStagedFromBuildVersion:v41];

    v42 = [(MADAutoAssetJob *)self currentStatus];
    v43 = [v42 patchingAttemptError];
    [v13 setPatchingAttemptError:v43];

    [v13 setFoundByLookupWithoutAssetVersion:1];
    v44 = [MAAutoAssetSelector alloc];
    v45 = [v13 assetType];
    v46 = [v13 assetSpecifier];
    v47 = [v13 assetVersion];
    v63 = [v44 initForAssetType:v45 withAssetSpecifier:v46 matchingAssetVersion:v47];

    v48 = [(MADAutoAssetJob *)self wasPatched];
    v49 = [(MADAutoAssetJob *)self firstClientName];
    [MADAutoAssetControlManager persistForJobSelector:v63 persistingJobDescriptor:v13 justPatched:v48 withJobInformation:0 withFirstClientName:v49];

    v62 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    v50 = [v62 clientDomainName];
    v51 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    v52 = [v51 assetSetIdentifier];
    v53 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    v54 = [v53 discoveredAtomicInstance];
    v55 = [MAAutoAssetSelector alloc];
    v56 = [v13 assetType];
    v57 = [v13 assetSpecifier];
    v58 = [v13 assetVersion];
    v59 = [v55 initForAssetType:v56 withAssetSpecifier:v57 matchingAssetVersion:v58];
    [MADAutoAssetHistory recordOperation:600 toHistoryType:2 fromLayer:2 usageCount:0 forClientDomainName:v50 forAssetSetIdentifier:v52 forAtomicInstance:v54 withSelector:v59 withAddendumMessage:0];

    v60 = [v13 assetType];
    v61 = [v13 assetSpecifier];
    v4 = v66;
    [MADAutoAssetControlManager postNotificationName:@"ASSET_VERSION_DOWNLOADED" forAssetType:v60 forAssetSpecifier:v61 fromModule:@"AUTO-JOB" fromLocation:v66];

    v27 = v64;
    v14 = v65;
  }

  else
  {
    v27 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [(MADAutoAssetJob *)self autoJobName];
      v29 = v28;
      v30 = @"NOT-PROVIDED";
      if (v14)
      {
        v30 = v14;
      }

      *buf = 138543618;
      v69 = v28;
      v70 = 2114;
      v71 = v30;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%{public}@ {reportJustDownloadedAssetOfSet} | unable to create asset-descriptor for just-downloaded asset | invalid:%{public}@", buf, 0x16u);
    }
  }
}

- (void)setProgressReadyToStartDownloads
{
  v3 = [(MADAutoAssetJob *)self autoJobFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = objc_alloc_init(MANAutoAssetSetProgress);
  v6 = [(MADAutoAssetJob *)self currentSetStatus];
  [v6 setDownloadProgress:v5];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [(MADAutoAssetJob *)self setConfiguration];
  v8 = [v7 autoAssetEntries];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v31 = 0;
    v32 = 0;
    v11 = *v34;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        v14 = [(MADAutoAssetJob *)self foundSetFullDescriptorsBySpecifier];
        v15 = [v13 assetSelector];
        v16 = [v15 assetSpecifier];
        v17 = [v14 safeObjectForKey:v16 ofClass:objc_opt_class()];

        v18 = [(MADAutoAssetJob *)self foundSetPatchDescriptorsBySpecifier];
        v19 = [v13 assetSelector];
        v20 = [v19 assetSpecifier];
        v21 = [v18 safeObjectForKey:v20 ofClass:objc_opt_class()];

        if (v17 | v21)
        {
          if (v17)
          {
            v22 = v17;
          }

          else
          {
            v22 = v21;
          }

          v23 = [v22 metadata];
          ++v32;
          v31 += [v23 safeIntegerForKey:@"_DownloadSize"];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v10);
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v24 = [(MADAutoAssetJob *)self currentSetStatus];
  v25 = [v24 downloadProgress];
  [v25 setTotalExpectedBytes:v31];

  v26 = [(MADAutoAssetJob *)self currentSetStatus];
  v27 = [v26 downloadProgress];
  [v27 setExpectedTimeRemainingSecs:{vcvtd_n_f64_s64(v31, 0x11uLL)}];

  v28 = [(MADAutoAssetJob *)self currentSetStatus];
  v29 = [v28 downloadProgress];
  [v29 setRemainingAssetCount:v32];

  [(MADAutoAssetJob *)self setSetProgressOverallTotalWrittenBytes:0];
  [(MADAutoAssetJob *)self setSetProgressAssetTotalWrittenBytes:0];
}

- (void)setProgressAssetDownload:(id)a3
{
  v4 = a3;
  v5 = [v4 isStalled];
  v6 = [(MADAutoAssetJob *)self currentSetStatus];
  v7 = [v6 downloadProgress];
  [v7 setIsStalled:v5];

  v8 = [v4 totalWrittenBytes];
  v9 = [(MADAutoAssetJob *)self setProgressAssetTotalWrittenBytes];
  v10 = v8 - v9;
  if (v8 <= v9)
  {

    [(MADAutoAssetJob *)self setSetProgressAssetTotalWrittenBytes:0];
  }

  else
  {
    v11 = vcvtd_n_f64_u64(v10, 0x11uLL);
    [(MADAutoAssetJob *)self setSetProgressAssetTotalWrittenBytes:[(MADAutoAssetJob *)self setProgressAssetTotalWrittenBytes]+ v10];
    v12 = [(MADAutoAssetJob *)self setProgressOverallTotalWrittenBytes];
    v13 = [(MADAutoAssetJob *)self setProgressAssetTotalWrittenBytes];
    v14 = [(MADAutoAssetJob *)self currentSetStatus];
    v15 = [v14 downloadProgress];
    [v15 setTotalWrittenBytes:v13 + v12];

    if (v11 > 0.0)
    {
      v16 = [(MADAutoAssetJob *)self currentSetStatus];
      v17 = [v16 downloadProgress];
      [v17 expectedTimeRemainingSecs];
      v19 = v18;

      if (v19 > v11)
      {
        v20 = [(MADAutoAssetJob *)self currentSetStatus];
        v21 = [v20 downloadProgress];
        [v21 expectedTimeRemainingSecs];
        [v21 setExpectedTimeRemainingSecs:v22 - v11];
      }
    }

    v23 = [(MADAutoAssetJob *)self currentSetStatus];
    v24 = [v23 downloadProgress];
    v25 = [v24 totalWrittenBytes];
    v26 = [(MADAutoAssetJob *)self setJobInformation];
    v27 = [v26 currentSetStatus];
    v28 = [v27 downloadProgress];
    [v28 setTotalWrittenBytes:v25];

    v29 = [(MADAutoAssetJob *)self currentSetStatus];
    v30 = [v29 downloadProgress];
    v31 = [v30 totalExpectedBytes];
    v32 = [(MADAutoAssetJob *)self setJobInformation];
    v33 = [v32 currentSetStatus];
    v34 = [v33 downloadProgress];
    [v34 setTotalExpectedBytes:v31];

    v41 = [(MADAutoAssetJob *)self currentSetStatus];
    v35 = [v41 downloadProgress];
    [v35 expectedTimeRemainingSecs];
    v37 = v36;
    v38 = [(MADAutoAssetJob *)self setJobInformation];
    v39 = [v38 currentSetStatus];
    v40 = [v39 downloadProgress];
    [v40 setExpectedTimeRemainingSecs:v37];
  }
}

- (void)finishJobTaskForJobParam:(id)a3 withUnderlyingError:(id)a4 fromAction:(id)a5
{
  v18 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MADAutoAssetJob *)self autoJobFSM];
  v11 = [v10 extendedStateQueue];
  dispatch_assert_queue_V2(v11);

  if (v8)
  {
    v12 = [v8 domain];
    v13 = [SUCore stringIsEqual:v12 to:@"com.apple.MobileAssetError.AutoAsset"];

    if (v13)
    {
      v14 = v8;
    }

    else
    {
      v15 = [(MADAutoAssetJob *)self errorCodeFromUnderling:v8];
      v16 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", v9];
      v17 = [[NSString alloc] initWithFormat:@"underlying error resulted in auto-asset job-task failure (at location %@)", v9];
      v14 = [MAAutoAssetError buildError:v15 fromOperation:v16 underlyingError:v8 withDescription:v17];
    }
  }

  else
  {
    v14 = 0;
  }

  [(MADAutoAssetJob *)self finishJobTaskForJobParam:v18 withResponseError:v14];
}

- (void)finishJobTaskForJobParam:(id)a3 withResponseError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetJob *)self autoJobFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  [(MADAutoAssetJob *)self statusChangeJobFinished:v6 withResponseError:v7];
  [(MADAutoAssetJob *)self replyToClientForJobParam:v6 withResponseError:v7];
  v10 = _MADLog(@"AutoJob");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v11)
    {
      v12 = [(MADAutoAssetJob *)self autoJobName];
      v13 = [v6 summary];
      v14 = [MADAutoAssetClientRequest responseErrorSummary:v7];
      v16 = 138543874;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ | job-task finished:%{public}@ | error:%{public}@", &v16, 0x20u);

LABEL_6:
    }
  }

  else if (v11)
  {
    v15 = [(MADAutoAssetJob *)self autoJobName];
    v13 = [v6 summary];
    v16 = 138543618;
    v17 = v15;
    v18 = 2114;
    v19 = v13;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ | job-task finished:%{public}@ | SUCCESS", &v16, 0x16u);

    goto LABEL_6;
  }
}

- (void)autoAssetJobFinished:(id)a3 forJobFinishedReason:(id)a4 failingWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MADAutoAssetJob *)self autoJobFSM];
  v12 = [v11 extendedStateQueue];
  dispatch_assert_queue_V2(v12);

  if ([(MADAutoAssetJob *)self simulateOperation]== &dword_4 + 2)
  {
    [(MADAutoAssetJob *)self setSimulateTriggered:[(MADAutoAssetJob *)self simulateOperation]];
    v13 = objc_opt_respondsToSelector();
    v14 = _MADLog(@"AutoJob");
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        v16 = [(MADAutoAssetJob *)self autoJobName];
        v17 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MADAutoAssetJob *)self simulateOperation]];
        v19 = 138543618;
        v20 = v16;
        v21 = 2114;
        v22 = v17;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ {autoAssetJobFinished} | SIMULATE_OPERATION(%{public}@) | call to _autoAssetJobFinished postponed", &v19, 0x16u);
      }
    }

    else if (v15)
    {
      v18 = [(MADAutoAssetJob *)self autoJobName];
      v19 = 138543618;
      v20 = v18;
      v21 = 2048;
      v22 = [(MADAutoAssetJob *)self simulateOperation];
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ {autoAssetJobFinished} | SIMULATE_OPERATION(%lld) | call to _autoAssetJobFinished postponed", &v19, 0x16u);
    }
  }

  else
  {
    [(MADAutoAssetJob *)self _autoAssetJobFinished:v8 forJobFinishedReason:v9 failingWithError:v10];
  }
}

- (void)completeNWActivity
{
  v3 = [(MADAutoAssetJob *)self autoJobFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {
    goto LABEL_8;
  }

  v5 = [(MADAutoAssetJob *)self latestToVendCachedAssetSetID];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = [(MADAutoAssetJob *)self mostRecentlyReceivedCachedAssetSetID];

  if (!v6)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_16;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  v20 = 0;
  v21 = 0;
  [MADAutoAssetControlManager autoJobAssetSetIDsForJob:self mostRecentlyReceived:&v21 latestToVend:&v20];
  v7 = v21;
  v8 = v20;
  v9 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  if (v9)
  {
    v10 = v9;
    v11 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    v12 = [v11 catalogLastTimeChecked];

    if (v12)
    {
      v13 = objc_alloc_init(NSDateFormatter);
      [v13 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
      v14 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      v15 = [v14 catalogLastTimeChecked];
      v16 = [v13 stringFromDate:v15];

      if (!v8)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  v16 = &stru_4BD3F0;
  if (v8)
  {
LABEL_10:
    xpc_dictionary_set_string(v5, [@"Vend" UTF8String], objc_msgSend(v8, "UTF8String"));
  }

LABEL_11:
  if (v7)
  {
    xpc_dictionary_set_string(v5, [@"Discovered" UTF8String], objc_msgSend(v7, "UTF8String"));
  }

  if (v16)
  {
    xpc_dictionary_set_string(v5, [@"Checked" UTF8String], -[__CFString UTF8String](v16, "UTF8String"));
  }

LABEL_16:
  v17 = getDownloadManager();
  v18 = [(MADAutoAssetJob *)self autoAssetUUID];
  v19 = [(MADAutoAssetJob *)self firstLookupError];
  [v17 completeNWActivity:v18 withParams:v5 andError:v19];
}

- (void)_autoAssetJobFinished:(id)a3 forJobFinishedReason:(id)a4 failingWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MADAutoAssetJob *)self autoJobFSM];
  v12 = [v11 extendedStateQueue];
  dispatch_assert_queue_V2(v12);

  LODWORD(v12) = [(MADAutoAssetJob *)self stagerJob];
  v13 = _MADLog(@"AutoJob");
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (!v14)
    {
      goto LABEL_16;
    }

    v15 = [(MADAutoAssetJob *)self autoJobName];
    *buf = 138543618;
    v40 = v15;
    v41 = 2114;
    v42 = v9;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ | {autoAssetJobFinished} stager-job has finished | %{public}@ | (already implied to auto-contol-manager when staged operation done reported)", buf, 0x16u);
    goto LABEL_15;
  }

  if (v14)
  {
    v16 = [(MADAutoAssetJob *)self autoJobName];
    *buf = 138543618;
    v40 = v16;
    v41 = 2114;
    v42 = v9;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ | {autoAssetJobFinished} job has finished | %{public}@ | MA_MILESTONE", buf, 0x16u);
  }

  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v24 = [(MADAutoAssetJob *)self autoAssetSelector];
    v25 = [v24 assetVersion];
    if (v25)
    {
    }

    else
    {
      v26 = [(MADAutoAssetJob *)self resultFound];

      if (!v26)
      {
        v13 = [(MADAutoAssetJob *)self autoAssetSelector];
        v15 = [(MADAutoAssetJob *)self autoAssetUUID];
        [MADAutoAssetControlManager autoAssetJobFinished:v13 withAutoAssetUUID:v15 schedulerInvolved:[(MADAutoAssetJob *)self schedulerInvolved] potentialNetworkFailure:[(MADAutoAssetJob *)self potentialNetworkFailure]];
        goto LABEL_15;
      }
    }

    v13 = [(MADAutoAssetJob *)self resultFound];
    v15 = [v13 fullAssetSelector];
    v27 = [(MADAutoAssetJob *)self autoAssetUUID];
    [MADAutoAssetControlManager autoAssetJobFinished:v15 withAutoAssetUUID:v27 schedulerInvolved:[(MADAutoAssetJob *)self schedulerInvolved] potentialNetworkFailure:[(MADAutoAssetJob *)self potentialNetworkFailure]];

LABEL_15:
    goto LABEL_16;
  }

  v37 = v9;
  if (!v10)
  {
    v38 = 0;
    [(MADAutoAssetJob *)self _commitPrePersonalized:v8 error:&v38];
    v10 = v38;
    if (v10)
    {
      v17 = [(MADAutoAssetJob *)self currentSetStatus];
      [v17 setAvailableForUseError:v10];

      [(MADAutoAssetJob *)self finishedSetJobFinalizeStatus:@"all content downloaded but failure committing pre-personalized" failingWithError:v10];
    }
  }

  v13 = [(MADAutoAssetJob *)self clientDomainName];
  v18 = [(MADAutoAssetJob *)self autoAssetSetIdentifier];
  v19 = [(MADAutoAssetJob *)self autoAssetUUID];
  [(MADAutoAssetJob *)self setJobInformation];
  v21 = v20 = v8;
  v22 = [v21 copy];
  v23 = [(MADAutoAssetJob *)self schedulerInvolved];
  LOBYTE(v36) = [(MADAutoAssetJob *)self potentialNetworkFailure];
  [MADAutoAssetControlManager autoSetJobFinished:v13 forAssetSetIdentifier:v18 withAutoAssetUUID:v19 fromAutoAssetJob:self withSetJobInformation:v22 schedulerInvolved:v23 potentialNetworkFailure:v36];

  v8 = v20;
  v9 = v37;
LABEL_16:

  v28 = [(MADAutoAssetJob *)self activeJobTasks];
  v29 = [v28 count];

  if (v29)
  {
    v30 = [(MADAutoAssetJob *)self autoJobFSM];
    v31 = [v30 diag];
    v32 = [NSString alloc];
    v33 = [(MADAutoAssetJob *)self activeJobTasks];
    v34 = [v32 initWithFormat:@"{autoAssetJobFinished} %ld job-tasks when should be none (potentially stranded)", objc_msgSend(v33, "count")];
    [v31 trackAnomaly:@"AUTO-JOB" forReason:v34 withResult:6109 withError:0];
  }

  v35 = objc_alloc_init(NSMutableArray);
  [(MADAutoAssetJob *)self setActiveJobTasks:v35];

  [(MADAutoAssetJob *)self releaseLookupGrant];
}

- (void)_autoAssetJobDead:(id)a3
{
  v4 = [(MADAutoAssetJob *)self autoJobFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MADAutoAssetJob *)self activeJobTasks];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(MADAutoAssetJob *)self autoJobFSM];
    v9 = [v8 diag];
    v10 = [NSString alloc];
    v11 = [(MADAutoAssetJob *)self activeJobTasks];
    v12 = [v10 initWithFormat:@"{_autoAssetJobDead} %ld job-tasks when should be none (potentially stranded)", objc_msgSend(v11, "count")];
    [v9 trackAnomaly:@"AUTO-JOB" forReason:v12 withResult:6109 withError:0];
  }

  v13 = objc_alloc_init(NSMutableArray);
  [(MADAutoAssetJob *)self setActiveJobTasks:v13];

  [(MADAutoAssetJob *)self setSchedulerInvolved:0];
  [(MADAutoAssetJob *)self setSetCheckAwaitingDownload:0];
  [(MADAutoAssetJob *)self setPotentialNetworkFailure:0];
  [(MADAutoAssetJob *)self setStagerJobDownloadContent:0];
  [(MADAutoAssetJob *)self setStagerJobResultsReported:0];
  [(MADAutoAssetJob *)self setActiveInstance:0];
  [(MADAutoAssetJob *)self setActiveDesire:0];
  [(MADAutoAssetJob *)self setActiveFound:0];
  [(MADAutoAssetJob *)self setActiveEnd:0];
  [(MADAutoAssetJob *)self setActiveListen:0];
  v14 = objc_alloc_init(MAAutoAssetPolicy);
  [(MADAutoAssetJob *)self setAggregatedClientAssetPolicy:v14];

  [(MADAutoAssetJob *)self setAggregatedClientAssetPolicySpecified:0];
  v15 = objc_alloc_init(MANAutoAssetSetPolicy);
  [(MADAutoAssetJob *)self setAggregatedClientSetPolicy:v15];

  [(MADAutoAssetJob *)self setAggregatedClientSetPolicySpecified:0];
  [(MADAutoAssetJob *)self setOnFilesystemByVersion:0];
  [(MADAutoAssetJob *)self setCheckUUIDBasePortion:0];
  [(MADAutoAssetJob *)self setCheckUUID:0];
  [(MADAutoAssetJob *)self setRampingForeground:0];
  [(MADAutoAssetJob *)self setRampingForegroundLatched:0];
  [(MADAutoAssetJob *)self setCatalogDownloadOptions:0];
  [(MADAutoAssetJob *)self setAssetDownloadOptions:0];
  [(MADAutoAssetJob *)self setBaseForPatch:0];
  [(MADAutoAssetJob *)self setFoundNewerPatch:0];
  [(MADAutoAssetJob *)self setFoundNewerFull:0];
  [(MADAutoAssetJob *)self setNewerFoundAssetDescriptor:0];
  [(MADAutoAssetJob *)self setDownloadingAssetDescriptor:0];
  [(MADAutoAssetJob *)self setSchedulerTriggerReceived:0];
  [(MADAutoAssetJob *)self setDownloadingUserInitiated:0];
  [(MADAutoAssetJob *)self setConfiguredToUserInitiated:0];
  [(MADAutoAssetJob *)self setCheckingAssetContent:0];
  [(MADAutoAssetJob *)self setDeterminingAssetContent:0];
  [(MADAutoAssetJob *)self setLockingAssetContent:0];
  [(MADAutoAssetJob *)self setWasPatched:0];
  [(MADAutoAssetJob *)self setLatestInstalledAssetVersion:0];
  [(MADAutoAssetJob *)self setLatestInstalledAssetBuild:0];
  [(MADAutoAssetJob *)self setLatestAssetDescriptorOnFilesystemBySpecifier:0];
  [(MADAutoAssetJob *)self setFoundSetPatchDescriptorsBySpecifier:0];
  [(MADAutoAssetJob *)self setFoundSetFullDescriptorsBySpecifier:0];
  [(MADAutoAssetJob *)self setSetSpaceCheckedUUID:0];
  [(MADAutoAssetJob *)self setProgressReportPhase:0];
  [(MADAutoAssetJob *)self setLastReportedPatchProgress:0];
  [(MADAutoAssetJob *)self setResultSelector:0];
  [(MADAutoAssetJob *)self setResultInstance:0];
  [(MADAutoAssetJob *)self setResultFound:0];
  [(MADAutoAssetJob *)self setResultEnd:0];
  [(MADAutoAssetJob *)self setResultListen:0];
  [(MADAutoAssetJob *)self setFirstLookupError:0];
  [(MADAutoAssetJob *)self setLatestAssetDescriptorOnFilesystemBySpecifier:0];
  [(MADAutoAssetJob *)self setFoundSetPatchDescriptorsBySpecifier:0];
  [(MADAutoAssetJob *)self setFoundSetFullDescriptorsBySpecifier:0];
  [(MADAutoAssetJob *)self setFoundSetNewerDiscoveredAtomicEntries:0];
  [(MADAutoAssetJob *)self setFoundSameAtomicInstanceAlreadyDownloaded:0];
  v16 = objc_alloc_init(NSMutableArray);
  [(MADAutoAssetJob *)self setPrePersonalizedSelectors:v16];

  v17 = objc_alloc_init(NSMutableArray);
  [(MADAutoAssetJob *)self setTryPersonalizeDescriptors:v17];

  [(MADAutoAssetJob *)self setTryPersonalizeSelector:0];
  [(MADAutoAssetJob *)self setTryPersonalizeSuccess:0];
  [(MADAutoAssetJob *)self setTryPersonalizeFailed:0];
  [(MADAutoAssetJob *)self setBecameLatestToVend:0];
  [(MADAutoAssetJob *)self setNewestDownloadedSetStatus:0];
  [(MADAutoAssetJob *)self setSetSpaceCheckedUUID:0];
  [(MADAutoAssetJob *)self setResultSetFound:0];

  [(MADAutoAssetJob *)self setSetDescriptorDiscardRamped:0];
}

- (void)finishSetJobDownloadedNewer:(id)a3 forJobFinishedReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetJob *)self autoJobFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  LODWORD(v8) = [MADAutoAssetSecure isPersonalizationRequired:v6 forSetDescriptor:v10];

  if (v8)
  {
    v11 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    v12 = [MADAutoAssetControlManager autoSetJobAvailableAtomicInstanceForSetDescriptor:v11];

    if (v12)
    {
      [(MADAutoAssetJob *)self finishedSetSameVersionFound:v6];
    }

    else
    {
      v13 = [[NSString alloc] initWithFormat:@"AUTO-SET-JOB(%@)", v6];
      v37 = v7;
      v14 = [[NSString alloc] initWithFormat:@"set-job ended with all content downloaded but some secure auto-assets require personalization [intended:%@]", v7];
      v15 = [MAAutoAssetError buildError:6535 fromOperation:v13 underlyingError:0 withDescription:v14];

      v16 = [(MADAutoAssetJob *)self assignedSetDescriptor];
      v17 = [v16 clientDomainName];
      v18 = [(MADAutoAssetJob *)self assignedSetDescriptor];
      v19 = [v18 assetSetIdentifier];
      v20 = [(MADAutoAssetJob *)self assignedSetDescriptor];
      v21 = [v20 discoveredAtomicInstance];
      v38 = v15;
      [MADAutoAssetHistory recordFailedOperation:504 fromLayer:2 forClientDomainName:v17 forAssetSetIdentifier:v19 forAtomicInstance:v21 failingWithError:v15];

      if (+[MAAIRBEventReporter isAvailable])
      {
        v22 = [MAAIRBMobileAssetOperationMetadata alloc];
        v23 = [MADAutoAssetHistoryTracker operationName:504];
        v24 = [(MAAIRBMobileAssetOperationMetadata *)v22 initWithCode:504 name:v23];

        v25 = [MAAIRBMobileAssetAtomicInstance alloc];
        v26 = [MAAIRBMobileAssetAssetSet alloc];
        v27 = [(MADAutoAssetJob *)self assignedSetDescriptor];
        v28 = [v27 assetSetIdentifier];
        v29 = [(MAAIRBMobileAssetAssetSet *)v26 initWithAssetSetIdentifier:v28];
        v30 = [(MADAutoAssetJob *)self assignedSetDescriptor];
        v31 = [v30 discoveredAtomicInstance];
        v32 = [(MAAIRBMobileAssetAtomicInstance *)v25 initWithAssetSet:v29 atomicInstanceId:v31];

        v33 = [MAAIRBAppleIntelligenceAssetDeliveryEventType typeAtomicInstance:v24 atomicInstance:v32 assetCount:0];
        v34 = [MAAIRBAppleIntelligenceAssetDeliveryEvent alloc];
        v39 = v38;
        v35 = [NSArray arrayWithObjects:&v39 count:1];
        v36 = [(MAAIRBAppleIntelligenceAssetDeliveryEvent *)v34 initWithErrors:v35 type:v33];

        [MAAIRBEventReporter emitAppleIntelligenceEvent:v36];
      }

      [(MADAutoAssetJob *)self doneWithAllJobs:v6 withLookupError:v38];
      [(MADAutoAssetJob *)self autoAssetJobFinished:v6 forJobFinishedReason:@"SUCCESS(NOT_AVAILABLE)"];

      v7 = v37;
    }
  }

  else
  {
    [(MADAutoAssetJob *)self foundAndDownloadedSet:v6];
    [(MADAutoAssetJob *)self replyToJobsWhenContentDownloaded:v6];
    [(MADAutoAssetJob *)self doneWithAllJobs:v6];
    [(MADAutoAssetJob *)self autoAssetJobFinished:v6 forJobFinishedReason:v7];
  }
}

- (void)finishedSetJobFinalizeStatus:(id)a3 failingWithError:(id)a4
{
  v93 = a3;
  v6 = a4;
  v7 = [(MADAutoAssetJob *)self autoJobFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(MADAutoAssetJob *)self currentSetNotifications];

  if (!v9)
  {
    v10 = objc_alloc_init(MANAutoAssetSetNotifications);
    [(MADAutoAssetJob *)self setCurrentSetNotifications:v10];
  }

  v11 = [(MADAutoAssetJob *)self currentSetNotifications];
  [v11 setDownloadPending:0];

  v12 = [(MADAutoAssetJob *)self currentSetNotifications];
  [v12 setDownloadProgress:0];

  if (([SUCore stringIsEqual:v93 to:@"POSTPONED"]& 1) == 0 && ([SUCore stringIsEqual:v93 to:@"FAILED"]& 1) == 0 && ([SUCore stringIsEqual:v93 to:@"FAILED(RELEASED_GRANT)"]& 1) == 0 && ([SUCore stringIsEqual:v93 to:@"NO_NEWER"]& 1) == 0 && ([SUCore stringIsEqual:v93 to:@"FOUND_SAME"]& 1) == 0 && ([SUCore stringIsEqual:v93 to:@"REVOKED"]& 1) == 0 && ([SUCore stringIsEqual:v93 to:@"ENDED"]& 1) == 0 && ([SUCore stringIsEqual:v93 to:@"CANCELED"]& 1) == 0 && ([SUCore stringIsEqual:v93 to:@"CANCELED(RELEASED_GRANT)"]& 1) == 0 && ([SUCore stringIsEqual:v93 to:@"SIMULATED_POSTPONE_ENDED"]& 1) == 0 && ![SUCore stringIsEqual:v93 to:@"SUCCESS(NOT_AVAILABLE)"])
  {
    if (([SUCore stringIsEqual:v93 to:@"SUCCESS(PATCHED)"]& 1) != 0 || [SUCore stringIsEqual:v93 to:@"SUCCESS(DOWNLOADED)"])
    {
      v42 = [(MADAutoAssetJob *)self currentSetNotifications];
      v43 = v42;
      v44 = 1;
    }

    else
    {
      if (([SUCore stringIsEqual:v93 to:@"SUCCESS(ALREADY_DOWNLOADED)"]& 1) == 0 && ([SUCore stringIsEqual:v93 to:@"SUCCESS(PERSONALIZED)"]& 1) == 0 && ![SUCore stringIsEqual:v93 to:@"SUCCESS(IMMEDIATE_PROMOTED)"])
      {
        if (![SUCore stringIsEqual:v93 to:@"NONE"])
        {
          v46 = [[NSString alloc] initWithFormat:@"{finishedSetJobFinalizeStatus} unable to refresh current-set-notifications | jobFinishedReason:%@", v93];
          [(MADAutoAssetJob *)self trackAnomaly:6108 forReason:v46];
          goto LABEL_55;
        }

        v48 = [(MADAutoAssetJob *)self currentSetNotifications];
        [v48 setAtomicInstanceDiscovered:0];

        v45 = [(MADAutoAssetJob *)self currentSetNotifications];
        v46 = v45;
        v47 = 0;
LABEL_54:
        [v45 setAtomicInstanceAvailableForUse:v47];
LABEL_55:

        goto LABEL_33;
      }

      v42 = [(MADAutoAssetJob *)self currentSetNotifications];
      v43 = v42;
      v44 = 0;
    }

    [v42 setAtomicInstanceDiscovered:v44];

    v45 = [(MADAutoAssetJob *)self currentSetNotifications];
    v46 = v45;
    v47 = 1;
    goto LABEL_54;
  }

  v13 = [(MADAutoAssetJob *)self currentSetNotifications];
  [v13 setAtomicInstanceDiscovered:0];

  v14 = [(MADAutoAssetJob *)self currentSetNotifications];
  [v14 setAtomicInstanceAvailableForUse:0];

  if (([SUCore stringIsEqual:v93 to:@"FAILED"]& 1) != 0 || ([SUCore stringIsEqual:v93 to:@"FAILED(RELEASED_GRANT)"]& 1) != 0 || [SUCore stringIsEqual:v93 to:@"ENDED"])
  {
    v15 = v6;
LABEL_18:
    v91 = v15;
    v92 = 0;
    goto LABEL_19;
  }

  if (![SUCore stringIsEqual:v93 to:@"NO_NEWER"])
  {
    if ([SUCore stringIsEqual:v93 to:@"FOUND_SAME"])
    {
      if (![(MADAutoAssetJob *)self becameLatestToVend])
      {
        if ([(MADAutoAssetJob *)self tryPersonalizeFailed])
        {
          v39 = 6535;
        }

        else
        {
          v39 = 6205;
        }

        v38 = @"set-job catalog lookup found same atomic-instance [server-side] that has already been downloaded as latest for auto-asset-set";
        goto LABEL_29;
      }

LABEL_33:
      v92 = 0;
      goto LABEL_30;
    }

    if ([SUCore stringIsEqual:v93 to:@"REVOKED"])
    {
      v38 = @"set-job catalog lookup found that auto-asset of atomic-instance being downloaded was revoked [server-side]";
      v39 = 6202;
      goto LABEL_29;
    }

    if (([SUCore stringIsEqual:v93 to:@"CANCELED"]& 1) != 0 || [SUCore stringIsEqual:v93 to:@"CANCELED(RELEASED_GRANT)"])
    {
      v40 = @"set-job was canceled";
      v41 = 6115;
    }

    else
    {
      if (![SUCore stringIsEqual:v93 to:@"SUCCESS(NOT_AVAILABLE)"])
      {
        goto LABEL_33;
      }

      v40 = @"set-job was successful but downloaded atomic-instance is not accessible";
      v41 = 6101;
    }

    v15 = [MAAutoAssetError buildError:v41 fromOperation:@"finishedSetJobFinalizeStatus" underlyingError:0 withDescription:v40];
    goto LABEL_18;
  }

  v38 = @"set-job catalog lookup found no newer [server-side] atomic-instance of auto-asset-set";
  v39 = 6201;
LABEL_29:
  v92 = [MAAutoAssetError buildError:v39 fromOperation:@"finishedSetJobFinalizeStatus" underlyingError:0 withDescription:v38];
LABEL_30:
  v91 = 0;
LABEL_19:
  v16 = [(MADAutoAssetJob *)self currentSetStatus];
  v90 = [v16 downloadProgress];

  v68 = [MANAutoAssetSetStatus alloc];
  v78 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v17 = [v78 clientDomainName];
  v77 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v18 = [v77 assetSetIdentifier];
  v76 = [(MADAutoAssetJob *)self setConfiguration];
  v19 = [v76 autoAssetEntries];
  v75 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v86 = [(MADAutoAssetJob *)self newAtomicInstancesDownloadedForDescriptor:?];
  v74 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v85 = [v74 catalogCachedAssetSetID];
  v73 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v84 = [v73 catalogDownloadedFromLive];
  v72 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v83 = [v72 catalogLastTimeChecked];
  v71 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v82 = [v71 catalogPostedDate];
  v70 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v81 = [v70 discoveredAtomicInstance];
  v69 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v67 = [v69 latestDowloadedAtomicInstanceEntries];
  v79 = v6;
  v88 = v18;
  v89 = v17;
  v87 = v19;
  if (v67)
  {
    v51 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    [v51 latestDowloadedAtomicInstanceEntries];
  }

  else
  {
    [(MADAutoAssetJob *)self foundSetNewerDiscoveredAtomicEntries];
  }
  v80 = ;
  v66 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v60 = [v66 discoveredAtomicInstance];
  v65 = [(MADAutoAssetJob *)self setConfiguration];
  v59 = [v65 latestAtomicInstanceToVendFromPreSUStaging];
  v64 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v57 = [v64 latestDowloadedAtomicInstanceEntries];
  v63 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v56 = [v63 downloadedCatalogCachedAssetSetID];
  v62 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v54 = [v62 downloadedCatalogDownloadedFromLive];
  v61 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v55 = [v61 downloadedCatalogLastTimeChecked];
  v58 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v53 = [v58 downloadedCatalogPostedDate];
  v20 = [(MADAutoAssetJob *)self currentSetNotifications];
  v52 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  v21 = [(MADAutoAssetJob *)self haveReceivedLookupResponse];
  v22 = [(MADAutoAssetJob *)self vendingAtomicInstanceForConfiguredEntries];
  v23 = [(MADAutoAssetJob *)self downloadingUserInitiated];
  v24 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v25 = [v24 downloadedNetworkBytes];
  v26 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  BYTE2(v50) = v23;
  BYTE1(v50) = v22;
  LOBYTE(v50) = v21;
  LOBYTE(v49) = v59;
  v27 = -[MANAutoAssetSetStatus initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDownloadedAtomicInstanceFromPreSUStaging:withLatestDowloadedAtomicInstanceEntries:withPreviouslyVendedLockedAtomicInstance:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:](v68, "initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDownloadedAtomicInstanceFromPreSUStaging:withLatestDowloadedAtomicInstanceEntries:withPreviouslyVendedLockedAtomicInstance:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:", v89, v88, v87, v86, v85, v84, v83, v82, v81, v80, v60, v49, v57, 0, v56, v54, v55, v53, v20, v52, 0, 0, v50, v90, v25, [v26 downloadedFilesystemBytes], 0, 0, v91, v92);
  [(MADAutoAssetJob *)self setCurrentSetStatus:v27];

  v28 = v80;
  if (v67)
  {

    v28 = v51;
  }

  v29 = [(MADAutoAssetJob *)self currentSetStatus];
  v30 = [v29 copy];
  v31 = [(MADAutoAssetJob *)self setJobInformation];
  [v31 setCurrentSetStatus:v30];

  v32 = [MANAutoAssetSetInfoFound alloc];
  v33 = [(MADAutoAssetJob *)self autoAssetSetIdentifier];
  v34 = [(MADAutoAssetJob *)self currentSetStatus];
  v35 = [(MANAutoAssetSetInfoFound *)v32 initForAssetSetIdentifier:v33 reportingStatus:v34];
  [(MADAutoAssetJob *)self setResultSetFound:v35];

  v36 = [(MADAutoAssetJob *)self resultSetFound];
  v37 = [(MADAutoAssetJob *)self setJobInformation];
  [v37 setFoundContent:v36];
}

- (void)replyToClientForJobParam:(id)a3 withResponseError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetJob *)self autoJobFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [v6 clientRequest];

  if (v10)
  {
    if ([(MADAutoAssetJob *)self autoAssetSetJob])
    {
      v11 = [v6 clientRequest];
      v12 = [(MADAutoAssetJob *)self clientDomainName];
      v13 = [(MADAutoAssetJob *)self autoAssetSetIdentifier];
      v14 = [(MADAutoAssetJob *)self autoAssetUUID];
      v15 = [(MADAutoAssetJob *)self setJobInformation];
      v16 = [v15 copy];
      [MADAutoAssetControlManager autoSetJobIssueReply:v11 forDomainName:v12 forAssetSetIdentifier:v13 withAutoAssetUUID:v14 fromAutoAssetJob:self withSetJobInformation:v16 withResponseError:v7];
    }

    else
    {
      v23 = v7;
      v17 = [(MADAutoAssetJob *)self currentJobInformation:&v23];
      v18 = v23;

      v19 = [v6 clientRequest];
      v20 = [(MADAutoAssetJob *)self mostSpecificSelectorToReport];
      v21 = [(MADAutoAssetJob *)self autoAssetUUID];
      v22 = [(MADAutoAssetJob *)self autoAssetSelector];
      [MADAutoAssetControlManager autoAssetJobIssueReply:v19 forAutoAssetSelector:v20 withAutoAssetUUID:v21 fromAutoAssetJob:self withOriginalSelector:v22 withJobInformation:v17 withResponseError:v18];

      v7 = v18;
    }

    [v6 setClientRequest:0];
  }
}

- (void)_rememberIfSchedulerInvolved:(id)a3
{
  v23 = a3;
  v4 = [(MADAutoAssetJob *)self autoJobFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v23 clientRequestMessage];
  v7 = [v6 messageName];

  if (([SUCore stringIsEqual:v7 to:@"MA-AUTO:INTEREST_IN_CONTENT"]& 1) != 0 || ([SUCore stringIsEqual:v7 to:@"MA-AUTO:CHECK_FOR_NEWER"]& 1) != 0 || ([SUCore stringIsEqual:v7 to:@"MA-AUTO:LOCK_CONTENT"]& 1) != 0 || ([SUCore stringIsEqual:v7 to:@"MA-AUTO-SET:NEED_FOR_ATOMIC"]& 1) != 0 || ([SUCore stringIsEqual:v7 to:@"MA-AUTO-SET:CHECK_ATOMIC"]& 1) != 0 || [SUCore stringIsEqual:v7 to:@"MA-AUTO-SET:LOCK_ATOMIC"])
  {
    v8 = [v23 clientRequestMessage];
    v9 = [v8 message];

    v10 = [v9 safeObjectForKey:@"instance" ofClass:objc_opt_class()];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 clientAssetSelector];
      if (!v12)
      {
LABEL_18:

        goto LABEL_19;
      }

      v13 = v12;
      v14 = [v11 clientAssetSelector];
      v15 = [v14 assetType];
      if (v15)
      {
        v16 = v15;
        v17 = [v11 clientAssetSelector];
        v18 = [v17 assetSpecifier];
        if (v18)
        {
          v19 = v18;
          [v11 clientAssetSelector];
          v20 = v22 = self;
          v21 = [v20 assetVersion];

          if (!v21)
          {
            [(MADAutoAssetJob *)v22 setSchedulerInvolved:1];
          }

          goto LABEL_18;
        }
      }
    }

    else
    {
      v13 = [MASAutoAssetSetInfoInstance newShimmedFromFrameworkMessage:v9 forKey:@"setInstance"];
      if (v13)
      {
        [(MADAutoAssetJob *)self setSchedulerInvolved:1];
        [(MADAutoAssetJob *)self setSetCheckAwaitingDownload:1];
      }
    }

    goto LABEL_18;
  }

LABEL_19:
}

- (void)_setPolicyFromClientRequest:(id)a3
{
  v16 = a3;
  v4 = [(MADAutoAssetJob *)self autoJobFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v16 clientRequestMessage];
  v7 = [v6 messageName];

  if (([SUCore stringIsEqual:v7 to:@"MA-AUTO:INTEREST_IN_CONTENT"]& 1) != 0 || ([SUCore stringIsEqual:v7 to:@"MA-AUTO:CHECK_FOR_NEWER"]& 1) != 0 || [SUCore stringIsEqual:v7 to:@"MA-AUTO:LOCK_CONTENT"])
  {
    v8 = [v16 clientRequestMessage];
    v9 = [v8 message];

    v10 = [v9 safeObjectForKey:@"desire" ofClass:objc_opt_class()];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 clientAssetPolicy];
      if (v12)
      {
        v13 = objc_alloc_init(MAAutoAssetPolicy);
        [(MADAutoAssetJob *)self setAggregatedClientAssetPolicy:v13];

        if ([v12 userInitiated])
        {
          [(MADAutoAssetJob *)self setDownloadingUserInitiated:1];
          v14 = [(MADAutoAssetJob *)self aggregatedClientAssetPolicy];
          [v14 setUserInitiated:1];

          v15 = [(MADAutoAssetJob *)self currentSetStatus];
          [v15 setDownloadUserInitiated:1];
        }
      }
    }
  }
}

- (void)addToActiveJobTasks:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  if (!v4)
  {
    v12 = [(MADAutoAssetJob *)self autoJobFSM];
    v13 = [v12 diag];
    v14 = [NSString alloc];
    v15 = [(MADAutoAssetJob *)self _updateLatestSummary];
    v16 = [v14 initWithFormat:@"{addToActiveJobTasks} nil jobParam provided by caller | %@", v15];
    [v13 trackAnomaly:@"AUTO-JOB" forReason:v16 withResult:6102 withError:0];

    goto LABEL_73;
  }

  if ([v4 paramType] != &dword_0 + 1)
  {
    if ([v4 paramType] == &dword_4 + 1)
    {
      [(MADAutoAssetJob *)self setSchedulerTriggerReceived:1];
      v17 = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];

      if (!v17)
      {
        [(MADAutoAssetJob *)self setJobCreationTriggeringLayer:@"Scheduler"];
      }
    }

    else
    {
      v18 = [(MADAutoAssetJob *)self autoJobFSM];
      v19 = [v18 diag];
      v20 = [NSString alloc];
      v21 = [v4 paramType];
      v22 = [v4 summary];
      v23 = [v20 initWithFormat:@"job-task of unknown job type:%ld|jobParam:%@", v21, v22];
      [v19 trackAnomaly:@"AUTO-JOB" forReason:v23 withResult:6106 withError:0];
    }

    goto LABEL_70;
  }

  v7 = [v4 clientRequest];
  v8 = [v7 clientRequestMessage];
  v9 = [v8 message];

  v10 = [v9 safeObjectForKey:@"desire" ofClass:objc_opt_class()];
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = [MASAutoAssetSetInfoDesire newShimmedFromFrameworkMessage:v9 forKey:@"setDesire"];
  }

  v24 = [(MADAutoAssetJob *)self firstClientName];

  if (!v24)
  {
    if (v10)
    {
      v25 = [v9 safeObjectForKey:@"instance" ofClass:objc_opt_class()];
      v26 = 0;
    }

    else
    {
      if (v11)
      {
        v26 = [MASAutoAssetSetInfoInstance newShimmedFromFrameworkMessage:v9 forKey:@"setInstance"];
      }

      else
      {
        v26 = 0;
      }

      v25 = 0;
    }

    if (!(v25 | v26))
    {
      v27 = [(MADAutoAssetJob *)self autoJobFSM];
      [v27 diag];
      v77 = v9;
      v28 = v78 = v10;
      v29 = v11;
      v30 = [NSString alloc];
      v31 = [v4 summary];
      v32 = [(MADAutoAssetJob *)self _updateLatestSummary];
      v33 = [v30 initWithFormat:@"{addToActiveJobTasks} CLIENT_REQUEST jobTask with no [set-]instance| jobParam:%@ | %@", v31, v32];
      [v28 trackAnomaly:@"AUTO-JOB" forReason:v33 withResult:6102 withError:0];

      v11 = v29;
      v9 = v77;
      v10 = v78;
LABEL_27:

      goto LABEL_28;
    }

    if (v25)
    {
      v34 = [v25 autoAssetClientName];

      v35 = v25;
      if (v34)
      {
        v36 = [v25 autoAssetClientName];
LABEL_26:
        v27 = v36;
        [(MADAutoAssetJob *)self setFirstClientName:v36];
        goto LABEL_27;
      }
    }

    else
    {
      v37 = [v26 autoAssetSetClientName];

      v35 = v26;
      if (v37)
      {
        v36 = [v26 autoAssetSetClientName];
        goto LABEL_26;
      }
    }

    v36 = [v35 clientProcessName];
    goto LABEL_26;
  }

LABEL_28:
  [(MADAutoAssetJob *)self simulateEnd:1];
  [(MADAutoAssetJob *)self simulateSet:v4];
  v38 = [v10 clientAssetPolicy];

  if (!v38)
  {
    v49 = [v11 clientAssetSetPolicy];

    if (!v49)
    {
      goto LABEL_64;
    }

    v50 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = [(MADAutoAssetJob *)self autoJobName];
      v52 = [v11 clientAssetSetPolicy];
      v53 = [v52 summary];
      v54 = [v4 summary];
      *buf = 138543874;
      v80 = v51;
      v81 = 2114;
      v82 = v53;
      v83 = 2114;
      v84 = v54;
      _os_log_impl(&dword_0, v50, OS_LOG_TYPE_DEFAULT, "%{public}@ | {addToActiveJobTasks} aggregating | clientAssetSetPolicy:%{public}@ | job:%{public}@}", buf, 0x20u);
    }

    v55 = [v11 clientAssetSetPolicy];
    [(MADAutoAssetJob *)self mergeSetPolicyIntoAggregated:v55];

    if ([(MADAutoAssetJob *)self aggregatedClientSetPolicySpecified])
    {
      v56 = [v11 clientAssetSetPolicy];
      if ([v56 userInitiated])
      {
        v57 = [(MADAutoAssetJob *)self configuredToUserInitiated];

        if (v57)
        {
          goto LABEL_61;
        }

        [(MADAutoAssetJob *)self desireChangedToUserInitiated];
        v56 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v58 = [(MADAutoAssetJob *)self autoJobName];
          v59 = [v4 summary];
          *buf = 138543618;
          v80 = v58;
          v81 = 2114;
          v82 = v59;
          v60 = "%{public}@ | {addToActiveJobTasks} additional auto-asset-set-policy | boosted to user-initiated | job:%{public}@}";
LABEL_59:
          _os_log_impl(&dword_0, v56, OS_LOG_TYPE_DEFAULT, v60, buf, 0x16u);

          goto LABEL_60;
        }
      }

      goto LABEL_60;
    }

    [(MADAutoAssetJob *)self setAggregatedClientSetPolicySpecified:1];
    v63 = [v11 clientAssetSetPolicy];
    if ([v63 userInitiated])
    {
      v64 = [(MADAutoAssetJob *)self configuredToUserInitiated];

      if ((v64 & 1) == 0)
      {
        [(MADAutoAssetJob *)self desireChangedToUserInitiated];
        v56 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v58 = [(MADAutoAssetJob *)self autoJobName];
          v59 = [v4 summary];
          *buf = 138543618;
          v80 = v58;
          v81 = 2114;
          v82 = v59;
          v60 = "%{public}@ | {addToActiveJobTasks} first auto-asset-set-policy encountered indicating user-initiated | job:%{public}@}";
          goto LABEL_59;
        }

LABEL_60:

LABEL_61:
        v44 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v65 = [(MADAutoAssetJob *)self autoJobName];
          v66 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
          v67 = [v66 summary];
          v68 = [v4 summary];
          *buf = 138543874;
          v80 = v65;
          v81 = 2114;
          v82 = v67;
          v83 = 2114;
          v84 = v68;
          _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEFAULT, "%{public}@ | {addToActiveJobTasks} SET-POLICY | aggregatedClientSetPolicy:%{public}@ | job:%{public}@}", buf, 0x20u);
        }

        goto LABEL_63;
      }
    }

    else
    {
    }

    v56 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v58 = [(MADAutoAssetJob *)self autoJobName];
      v59 = [v4 summary];
      *buf = 138543618;
      v80 = v58;
      v81 = 2114;
      v82 = v59;
      v60 = "%{public}@ | {addToActiveJobTasks} first auto-asset-set-encountered [remaining] discretionary | job:%{public}@}";
      goto LABEL_59;
    }

    goto LABEL_60;
  }

  v39 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = [(MADAutoAssetJob *)self autoJobName];
    v41 = [v10 clientAssetPolicy];
    v42 = [v41 summary];
    v43 = [v4 summary];
    *buf = 138543874;
    v80 = v40;
    v81 = 2114;
    v82 = v42;
    v83 = 2114;
    v84 = v43;
    _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ | {addToActiveJobTasks} aggregating | clientAssetPolicy:%{public}@ | job:%{public}@}", buf, 0x20u);
  }

  if (![(MADAutoAssetJob *)self aggregatedClientAssetPolicySpecified])
  {
    [(MADAutoAssetJob *)self setAggregatedClientAssetPolicySpecified:1];
    v61 = [v10 clientAssetPolicy];
    if ([v61 userInitiated])
    {
      v62 = [(MADAutoAssetJob *)self configuredToUserInitiated];

      if ((v62 & 1) == 0)
      {
        [(MADAutoAssetJob *)self desireChangedToUserInitiated];
        v44 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v46 = [(MADAutoAssetJob *)self autoJobName];
          v47 = [v4 summary];
          *buf = 138543618;
          v80 = v46;
          v81 = 2114;
          v82 = v47;
          v48 = "%{public}@ | {addToActiveJobTasks} first auto-asset-policy encountered indicating user-initiated | job:%{public}@}";
          goto LABEL_51;
        }

LABEL_63:

        goto LABEL_64;
      }
    }

    else
    {
    }

    v44 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [(MADAutoAssetJob *)self autoJobName];
      v47 = [v4 summary];
      *buf = 138543618;
      v80 = v46;
      v81 = 2114;
      v82 = v47;
      v48 = "%{public}@ | {addToActiveJobTasks} first auto-asset-encountered [remaining] discretionary | job:%{public}@}";
      goto LABEL_51;
    }

    goto LABEL_63;
  }

  v44 = [v10 clientAssetPolicy];
  if (![v44 userInitiated])
  {
    goto LABEL_63;
  }

  v45 = [(MADAutoAssetJob *)self configuredToUserInitiated];

  if ((v45 & 1) == 0)
  {
    [(MADAutoAssetJob *)self desireChangedToUserInitiated];
    v44 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [(MADAutoAssetJob *)self autoJobName];
      v47 = [v4 summary];
      *buf = 138543618;
      v80 = v46;
      v81 = 2114;
      v82 = v47;
      v48 = "%{public}@ | {addToActiveJobTasks} additional auto-asset-policy | boosted to user-initiated | job:%{public}@}";
LABEL_51:
      _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEFAULT, v48, buf, 0x16u);

      goto LABEL_63;
    }

    goto LABEL_63;
  }

LABEL_64:
  [(MADAutoAssetJob *)self setClientRequestedOperation:1];
  v69 = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];

  if (!v69)
  {
    v70 = [v4 clientRequest];
    v71 = [v70 clientRequestMessage];
    v72 = [v71 messageName];

    if (([SUCore stringIsEqual:v72 to:@"MA-AUTO:INTEREST_IN_CONTENT"]& 1) != 0 || ([SUCore stringIsEqual:v72 to:@"MA-AUTO-SET:NEED_FOR_ATOMIC"]& 1) != 0)
    {
      v73 = @"ClientInterest";
    }

    else if (([SUCore stringIsEqual:v72 to:@"MA-AUTO:CHECK_FOR_NEWER"]& 1) != 0 || ([SUCore stringIsEqual:v72 to:@"MA-AUTO-SET:CHECK_ATOMIC"]& 1) != 0)
    {
      v73 = @"ClientCheck";
    }

    else if (([SUCore stringIsEqual:v72 to:@"MA-AUTO:LOCK_CONTENT"]& 1) != 0 || ([SUCore stringIsEqual:v72 to:@"MA-AUTO-SET:LOCK_ATOMIC"]& 1) != 0)
    {
      v73 = @"ClientLock";
    }

    else if ([SUCore stringIsEqual:v72 to:@"MA-AUTO:DETERMINE_IF_AVAILABLE"])
    {
      v73 = @"ClientDetermine";
    }

    else
    {
      v73 = @"Unknown";
    }

    [(MADAutoAssetJob *)self setJobCreationTriggeringLayer:v73];
  }

LABEL_70:
  v74 = [(MADAutoAssetJob *)self activeJobTasks];
  v75 = [v74 count];

  if (!v75)
  {
    [(MADAutoAssetJob *)self setCurrentJobTask:v4];
  }

  v76 = [(MADAutoAssetJob *)self activeJobTasks];
  [v76 addObject:v4];

LABEL_73:
}

- (void)setCurrentJobTask:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  if ([v4 paramType] == &dword_0 + 1)
  {
    v7 = [v4 clientRequest];
    v8 = [v7 clientRequestMessage];
    v9 = [v8 message];

    v10 = [v9 safeObjectForKey:@"instance" ofClass:objc_opt_class()];
    [(MADAutoAssetJob *)self setActiveInstance:v10];

    v11 = [v9 safeObjectForKey:@"desire" ofClass:objc_opt_class()];
    [(MADAutoAssetJob *)self setActiveDesire:v11];

    v12 = [v9 safeObjectForKey:@"found" ofClass:objc_opt_class()];
    [(MADAutoAssetJob *)self setActiveFound:v12];

    v13 = [v9 safeObjectForKey:@"end" ofClass:objc_opt_class()];
    [(MADAutoAssetJob *)self setActiveEnd:v13];

    v14 = [v9 safeObjectForKey:@"listen" ofClass:objc_opt_class()];
    [(MADAutoAssetJob *)self setActiveListen:v14];

    v15 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(MADAutoAssetJob *)self autoJobName];
      v17 = [v4 summary];
      *buf = 138543618;
      v26 = v16;
      v27 = 2114;
      v28 = v17;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ | {setCurrentJobTask} CLIENT_REQUEST | job:%{public}@}", buf, 0x16u);
    }

    goto LABEL_7;
  }

  if ([v4 paramType] != &dword_4 + 1)
  {
    v19 = [(MADAutoAssetJob *)self autoJobFSM];
    v20 = [v19 diag];
    v21 = [NSString alloc];
    v22 = [v4 paramType];
    v23 = [v4 summary];
    v24 = [v21 initWithFormat:@"job-task of unknown job type:%ld|jobParam:%@", v22, v23];
    [v20 trackAnomaly:@"AUTO-JOB" forReason:v24 withResult:6106 withError:0];

    goto LABEL_10;
  }

  v9 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [(MADAutoAssetJob *)self autoJobName];
    v15 = [v4 summary];
    *buf = 138543618;
    v26 = v18;
    v27 = 2114;
    v28 = v15;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ | {setCurrentJobTask} SCHEDULER_TRIGGERED | job:%{public}@}", buf, 0x16u);

LABEL_7:
  }

LABEL_10:
}

- (id)getCurrentJobTask
{
  v3 = [(MADAutoAssetJob *)self autoJobFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(MADAutoAssetJob *)self activeJobTasks];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(MADAutoAssetJob *)self activeJobTasks];
    v8 = [v7 objectAtIndex:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)removeCurrentJobTask
{
  v3 = [(MADAutoAssetJob *)self autoJobFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(MADAutoAssetJob *)self activeJobTasks];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(MADAutoAssetJob *)self activeJobTasks];
    v8 = [v7 objectAtIndex:0];

    v9 = [(MADAutoAssetJob *)self activeJobTasks];
    [v9 removeObjectAtIndex:0];
  }

  else
  {
    v9 = [(MADAutoAssetJob *)self autoJobFSM];
    v10 = [v9 diag];
    v11 = [[NSString alloc] initWithFormat:@"{removeCurrentJobTask} no active job-tasks"];
    [v10 trackAnomaly:@"AUTO-JOB" forReason:v11 withResult:6108 withError:0];

    v8 = 0;
  }

  return v8;
}

- (void)desireChangedToUserInitiated
{
  v3 = [(MADAutoAssetJob *)self autoJobFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(MADAutoAssetJob *)self aggregatedClientAssetPolicy];

  if (!v5)
  {
    v6 = objc_alloc_init(MAAutoAssetPolicy);
    [(MADAutoAssetJob *)self setAggregatedClientAssetPolicy:v6];
  }

  [(MADAutoAssetJob *)self setConfiguredToUserInitiated:1];
  [(MADAutoAssetJob *)self _updateUserInitiatedFields];
  v7 = [(MADAutoAssetJob *)self assetDownloadOptions];

  if (v7)
  {
    v8 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(MADAutoAssetJob *)self autoJobName];
      v10 = [(MADAutoAssetJob *)self assetDownloadOptions];
      v11 = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ | {desireChangedToUserInitiated} active asset download options altered | assetDownloadOptions:%{public}@}", &v11, 0x16u);
    }
  }
}

- (void)_updateUserInitiatedFields
{
  v3 = [(MADAutoAssetJob *)self autoJobFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  [(MADAutoAssetJob *)self setConfiguredToUserInitiated:1];
  v5 = [(MADAutoAssetJob *)self aggregatedClientAssetPolicy];
  [v5 setUserInitiated:1];

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v6 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
    [v6 setUserInitiated:1];
  }

  v7 = [(MADAutoAssetJob *)self assetDownloadOptions];

  if (v7)
  {
    v8 = [(MADAutoAssetJob *)self assetDownloadOptions];
    [v8 setDiscretionary:0];
  }

  v9 = [(MADAutoAssetJob *)self foundNewerPatch];

  if (v9)
  {
    v10 = [(MADAutoAssetJob *)self foundNewerPatch];
    [v10 setDownloadUserInitiated:1];
  }

  v11 = [(MADAutoAssetJob *)self foundNewerFull];

  if (v11)
  {
    v12 = [(MADAutoAssetJob *)self foundNewerFull];
    [v12 setDownloadUserInitiated:1];
  }

  v13 = [(MADAutoAssetJob *)self newerFoundAssetDescriptor];

  if (v13)
  {
    v14 = [(MADAutoAssetJob *)self newerFoundAssetDescriptor];
    [v14 setDownloadUserInitiated:1];
  }

  v15 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];

  if (v15)
  {
    v16 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    [v16 setDownloadUserInitiated:1];
  }

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v17 = [(MADAutoAssetJob *)self currentSetStatus];
    [v17 setDownloadUserInitiated:1];

    v20 = [(MADAutoAssetJob *)self currentSetStatus];
    v18 = [v20 copy];
    v19 = [(MADAutoAssetJob *)self setJobInformation];
    [v19 setCurrentSetStatus:v18];
  }

  else
  {
    v20 = [(MADAutoAssetJob *)self currentStatus];
    [v20 setDownloadUserInitiated:1];
  }
}

- (void)_updateDownloadOptions:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 allowsCellularAccess];
  v8 = [v4 allowsExpensiveAccess];
  v9 = [v4 discretionary];

  v10 = [(MADAutoAssetJob *)self assetDownloadOptions];

  if (!v10)
  {
    v11 = [(MADAutoAssetJob *)self newAssetDownloadOptions];
    [(MADAutoAssetJob *)self setAssetDownloadOptions:v11];
  }

  v12 = [(MADAutoAssetJob *)self downloadingUserInitiated]| v9;
  if ((v12 & 1) == 0)
  {
    [(MADAutoAssetJob *)self setConfiguredToUserInitiated:1];
    [(MADAutoAssetJob *)self _updateUserInitiatedFields];
  }

  if ([(MADAutoAssetJob *)self downloadingCellular]|| v7 != 1)
  {
    if ([(MADAutoAssetJob *)self downloadingExpensive]|| ((v8 ^ 1) & 1) != 0)
    {
      if (v12)
      {
        return;
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

  [(MADAutoAssetJob *)self setConfiguredToCellular:1];
  v13 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  [v13 setAllowCheckDownloadOverCellular:1];

  v14 = [(MADAutoAssetJob *)self assetDownloadOptions];
  [v14 setAllowsCellularAccess:1];

  if (![(MADAutoAssetJob *)self downloadingExpensive]&& ((v8 ^ 1) & 1) == 0)
  {
LABEL_12:
    [(MADAutoAssetJob *)self setConfiguredToExpensive:1];
    v15 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
    [v15 setAllowCheckDownloadOverExpensive:1];

    v16 = [(MADAutoAssetJob *)self assetDownloadOptions];
    [v16 setAllowsExpensiveAccess:1];
  }

LABEL_13:
  v17 = [(MADAutoAssetJob *)self newAssetDownloadOptions];
  [(MADAutoAssetJob *)self setAssetDownloadOptions:v17];
}

- (id)mostSpecificSelectorToReport
{
  v3 = [(MADAutoAssetJob *)self autoAssetSelector];
  if (!v3)
  {
    v4 = [(MADAutoAssetJob *)self autoAssetInstance];
    v3 = [v4 clientAssetSelector];
  }

  v5 = [(MADAutoAssetJob *)self resultSelector];

  if (v5)
  {
    v6 = [(MADAutoAssetJob *)self resultSelector];

    v3 = v6;
  }

  if (v3)
  {
    v7 = [v3 downloadDecryptionKey];

    if (!v7)
    {
      goto LABEL_12;
    }

    v8 = [v3 copyClearingWriteOnlyFields];
    v9 = v8;
    if (v8)
    {
      v9 = v8;
      v10 = v3;
      v3 = v9;
    }

    else
    {
      v10 = [(MADAutoAssetJob *)self autoJobFSM];
      v14 = [v10 diag];
      v15 = [NSString alloc];
      v16 = [(MADAutoAssetJob *)self _longSummary];
      v17 = [v15 initWithFormat:@"{mostSpecificSelectorToReport} unable to create copy-of-selector (returning un-clean selector) | jobSummary:%@", v16];
      [v14 trackAnomaly:@"AUTO-JOB" forReason:v17 withResult:6101 withError:0];
    }
  }

  else
  {
    v9 = [(MADAutoAssetJob *)self autoJobFSM];
    v10 = [v9 diag];
    v11 = [NSString alloc];
    v12 = [(MADAutoAssetJob *)self _longSummary];
    v13 = [v11 initWithFormat:@"{mostSpecificSelectorToReport} no selector reported | jobSummary:%@", v12];
    [v10 trackAnomaly:@"AUTO-JOB" forReason:v13 withResult:6108 withError:0];

    v3 = 0;
  }

LABEL_12:

  return v3;
}

- (void)addClientRequestAndMergeNeeds:(id)a3 forJobEvent:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(MADAutoAssetJob *)self autoJobFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 clientRequest];
  v10 = [v9 clientRequestMessage];

  if (v10)
  {
    v11 = [v6 clientRequest];
    v12 = [v11 clientRequestMessage];
    v13 = [v12 messageName];

    [(MADAutoAssetJob *)self addToActiveJobTasks:v6];
    if (([SUCore stringIsEqual:v13 to:@"MA-AUTO:INTEREST_IN_CONTENT"]& 1) != 0 || [SUCore stringIsEqual:v13 to:@"MA-AUTO-SET:NEED_FOR_ATOMIC"])
    {
      [(MADAutoAssetJob *)self replyToClientForJobParam:v6 withResponseError:0];
    }
  }

  else
  {
    v13 = [[NSString alloc] initWithFormat:@"{A:%@} no client request message provided", v14];
    [(MADAutoAssetJob *)self trackAnomaly:6108 forReason:v13];
  }
}

- (BOOL)anyJobInterestedInContent
{
  v3 = [(MADAutoAssetJob *)self autoJobFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  if ([(MADAutoAssetJob *)self stagerJob])
  {

    return [(MADAutoAssetJob *)self stagerJobDownloadContent];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [(MADAutoAssetJob *)self activeJobTasks];
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v13 = [v11 clientRequest];
          v14 = [v13 clientRequestMessage];

          if (!v14)
          {
            goto LABEL_21;
          }

          v15 = [v11 clientRequest];
          v16 = [v15 clientRequestMessage];
          v17 = [v16 messageName];

          if (([SUCore stringIsEqual:v17 to:@"MA-AUTO:INTEREST_IN_CONTENT"]& 1) != 0 || ([SUCore stringIsEqual:v17 to:@"MA-AUTO:CHECK_FOR_NEWER"]& 1) != 0 || ([SUCore stringIsEqual:v17 to:@"MA-AUTO:LOCK_CONTENT"]& 1) != 0 || ([SUCore stringIsEqual:v17 to:@"MA-AUTO-SET:NEED_FOR_ATOMIC"]& 1) != 0 || ([SUCore stringIsEqual:v17 to:@"MA-AUTO-SET:CHECK_ATOMIC"]& 1) != 0 || [SUCore stringIsEqual:v17 to:@"MA-AUTO-SET:LOCK_ATOMIC"])
          {

LABEL_21:
            objc_autoreleasePoolPop(v12);
            v18 = 1;
            goto LABEL_23;
          }

          objc_autoreleasePoolPop(v12);
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        v18 = 0;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v18 = 0;
    }

LABEL_23:

    return v18;
  }
}

- (void)foundAndDownloaded:(id)a3 forJobParam:(id)a4 wasPatched:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = [(MADAutoAssetJob *)self autoJobFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [[NSString alloc] initWithFormat:@"%@:foundAndDownloaded", v7];
  v11 = [(MADAutoAssetJob *)self autoAssetSelector];
  v12 = [v11 assetType];
  v13 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
  v14 = [v13 assetId];
  v15 = getAutoLocalUrlFromTypeAndIdWithPurpose(v12, v14, 2, @"auto");

  v16 = [MAAutoAssetInfoFound alloc];
  v17 = [(MADAutoAssetJob *)self resultSelector];
  v18 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
  v19 = [v18 metadata];
  v20 = [(MADAutoAssetJob *)self currentStatus];
  v21 = [v16 initForSelector:v17 withLocalContentURL:v15 withAssetAttributes:v19 reportingStatus:v20];
  [(MADAutoAssetJob *)self setResultFound:v21];

  [(MADAutoAssetJob *)self setWasPatched:v5];
  [(MADAutoAssetJob *)self refreshDownloadedToManager:v10];
  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v22 = [(MADAutoAssetJob *)self refreshOnFilesystemFromManagerPromotingIfStaged:0];
    v23 = [(MADAutoAssetJob *)self latestInstalledOnFilesystem];
    v24 = v23;
    if (v23)
    {
      v25 = [v23 assetVersion];
      [(MADAutoAssetJob *)self setLatestInstalledAssetVersion:v25];

      v26 = [v24 build];
      [(MADAutoAssetJob *)self setLatestInstalledAssetBuild:v26];
    }
  }

  v27 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [(MADAutoAssetJob *)self autoJobName];
    v29 = [v15 path];
    *buf = 138543874;
    v31 = v28;
    v32 = 2114;
    v33 = v10;
    v34 = 2114;
    v35 = v29;
    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] {%{public}@} download | SUCCESS | localContentURL:%{public}@", buf, 0x20u);
  }
}

- (void)foundAndDownloadedSet:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [[NSString alloc] initWithFormat:@"%@:foundAndDownloadedSet", v4];
  v8 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  [v8 setIsDiscoveredFullyDownloaded:1];

  v9 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  [v9 setIsOnFilesystem:1];

  v10 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v11 = [v10 discoveredAtomicInstance];
  v12 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  [v12 setLatestDownloadedAtomicInstance:v11];

  v13 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v14 = [v13 latestDowloadedAtomicInstanceEntries];

  if (!v14)
  {
    v15 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    v16 = [v15 discoveredAtomicEntries];
    v17 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    [v17 setLatestDowloadedAtomicInstanceEntries:v16];

    v18 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(MADAutoAssetJob *)self autoJobName];
      v20 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      v21 = [v20 latestDowloadedAtomicInstanceEntries];
      *buf = 138543874;
      v39 = v7;
      v40 = 2114;
      v41 = v19;
      v42 = 2114;
      v43 = v21;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "{%{public}@} (%{public}@)\n[SET-DOWNLOAD] no latest-downloaded-atomic-entries so reporting discovered:\n%{public}@", buf, 0x20u);
    }
  }

  v22 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v23 = [v22 catalogCachedAssetSetID];
  v24 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  [v24 setDownloadedCatalogCachedAssetSetID:v23];

  v25 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v26 = [v25 catalogDownloadedFromLive];
  v27 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  [v27 setDownloadedCatalogDownloadedFromLive:v26];

  v28 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v29 = [v28 catalogLastTimeChecked];
  v30 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  [v30 setDownloadedCatalogLastTimeChecked:v29];

  v31 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v32 = [v31 catalogPostedDate];
  v33 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  [v33 setDownloadedCatalogPostedDate:v32];

  [(MADAutoAssetJob *)self updateSetResults:v4 atomicInstanceDiscovered:1 availableForUse:1 downloading:0 buildingResultSetFound:1];
  [(MADAutoAssetJob *)self refreshSetFoundToManager:1 fromLocation:v7];
  v34 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [(MADAutoAssetJob *)self autoJobName];
    v36 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    v37 = [v36 summary];
    *buf = 138412802;
    v39 = v7;
    v40 = 2114;
    v41 = v35;
    v42 = 2114;
    v43 = v37;
    _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{%{public}@} (%{public}@)\n[SET-DOWNLOAD] set-download | SUCCESS | autoAssetSetDescriptor:%{public}@", buf, 0x20u);
  }
}

- (void)replyToJobsWhenCatalogDownloaded:(id)a3 discoveredNewer:(BOOL)a4
{
  v26 = a4;
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  if (![(MADAutoAssetJob *)self stagerJob])
  {
    v25 = v5;
    v27 = objc_alloc_init(NSMutableArray);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [(MADAutoAssetJob *)self activeJobTasks];
    v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (!v10)
    {
      goto LABEL_28;
    }

    v11 = v10;
    v12 = *v30;
    while (1)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        if (!v14)
        {
          v19 = [(MADAutoAssetJob *)self autoJobFSM];
          v21 = [v19 diag];
          v22 = [NSString alloc];
          v23 = [(MADAutoAssetJob *)self _updateLatestSummary];
          v24 = [v22 initWithFormat:@"{replyToJobsWhenCatalogDownloaded} nil jobParam found on activeJobTasks | %@", v23];
          [v21 trackAnomaly:@"AUTO-JOB" forReason:v24 withResult:6103 withError:0];

LABEL_24:
          goto LABEL_26;
        }

        v16 = [v14 clientRequest];

        if (v16)
        {
          v17 = [v14 clientRequest];
          v18 = [v17 clientRequestMessage];
          v19 = [v18 messageName];

          if (([SUCore stringIsEqual:v19 to:@"MA-AUTO:INTEREST_IN_CONTENT"]& 1) == 0 && ([SUCore stringIsEqual:v19 to:@"MA-AUTO:CHECK_FOR_NEWER"]& 1) == 0 && ([SUCore stringIsEqual:v19 to:@"MA-AUTO:DETERMINE_IF_AVAILABLE"]& 1) == 0 && ([SUCore stringIsEqual:v19 to:@"MA-AUTO-SET:NEED_FOR_ATOMIC"]& 1) == 0 && ![SUCore stringIsEqual:v19 to:@"MA-AUTO-SET:CHECK_ATOMIC"]|| ([SUCore stringIsEqual:v19 to:@"MA-AUTO-SET:CHECK_ATOMIC"]? (v20 = !v26) : (v20 = 1), !v20 && [(MADAutoAssetJob *)self setCheckAwaitingDownload]|| ([(MADAutoAssetJob *)self replyToClientForJobParam:v14 withResponseError:0], ([SUCore stringIsEqual:v19 to:@"MA-AUTO:DETERMINE_IF_AVAILABLE"]& 1) == 0)))
          {
            [v27 addObject:v14];
          }

          goto LABEL_24;
        }

        [v27 addObject:v14];
LABEL_26:
        objc_autoreleasePoolPop(v15);
      }

      v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (!v11)
      {
LABEL_28:

        v8 = v27;
        [(MADAutoAssetJob *)self setActiveJobTasks:v27];
        v5 = v25;
        goto LABEL_29;
      }
    }
  }

  v8 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [(MADAutoAssetJob *)self autoJobName];
    *buf = 138543618;
    v35 = v9;
    v36 = 2114;
    v37 = v5;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%{public}@ | {%{public}@:replyToJobsWhenCatalogDownloaded} stager-job encountering presumed stale trigger to reply on catalog download", buf, 0x16u);
  }

LABEL_29:
}

- (void)replyToJobsWhenLookupFailed:(id)a3 withLookupError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetJob *)self autoJobFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  if (![(MADAutoAssetJob *)self stagerJob])
  {
    v28 = v7;
    v26 = v6;
    v27 = objc_alloc_init(NSMutableArray);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = [(MADAutoAssetJob *)self activeJobTasks];
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (!v11)
    {
      goto LABEL_23;
    }

    v12 = v11;
    v13 = *v30;
    while (1)
    {
      v14 = 0;
      do
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        if (!v15)
        {
          v20 = [(MADAutoAssetJob *)self autoJobFSM];
          v21 = [v20 diag];
          v22 = [NSString alloc];
          v23 = [(MADAutoAssetJob *)self _updateLatestSummary];
          v24 = [v22 initWithFormat:@"{replyToJobsWhenLookupFailed} nil jobParam found on activeJobTasks | %@", v23];
          [v21 trackAnomaly:@"AUTO-JOB" forReason:v24 withResult:6103 withError:0];

LABEL_17:
          goto LABEL_19;
        }

        v17 = [v15 clientRequest];

        if (v17)
        {
          v18 = [v15 clientRequest];
          v19 = [v18 clientRequestMessage];
          v20 = [v19 messageName];

          if (([SUCore stringIsEqual:v20 to:@"MA-AUTO:INTEREST_IN_CONTENT"]& 1) != 0 || ([SUCore stringIsEqual:v20 to:@"MA-AUTO:CHECK_FOR_NEWER"]& 1) != 0 || ([SUCore stringIsEqual:v20 to:@"MA-AUTO:DETERMINE_IF_AVAILABLE"]& 1) != 0 || ([SUCore stringIsEqual:v20 to:@"MA-AUTO-SET:NEED_FOR_ATOMIC"]& 1) != 0 || [SUCore stringIsEqual:v20 to:@"MA-AUTO-SET:CHECK_ATOMIC"])
          {
            [(MADAutoAssetJob *)self replyToClientForJobParam:v15 withResponseError:v28];
          }

          else
          {
            [v27 addObject:v15];
          }

          goto LABEL_17;
        }

        [v27 addObject:v15];
LABEL_19:
        objc_autoreleasePoolPop(v16);
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v25 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
      v12 = v25;
      if (!v25)
      {
LABEL_23:

        [(MADAutoAssetJob *)self setActiveJobTasks:v27];
        v6 = v26;
        v7 = v28;
        goto LABEL_24;
      }
    }
  }

  [(MADAutoAssetJob *)self stagerJobDetermineDone:v6 reportingError:v7];
LABEL_24:
}

- (void)replyToJobsWhenContentDownloaded:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  if ([(MADAutoAssetJob *)self stagerJob])
  {
    [(MADAutoAssetJob *)self stagerJobDownloadDone:v4 reportingError:0];
  }

  else if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v7 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(MADAutoAssetJob *)self autoJobName];
      v9 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      v10 = [v9 summary];
      *buf = 138543874;
      v45 = v8;
      v46 = 2114;
      v47 = v4;
      v48 = 2114;
      v49 = v10;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ | {%{public}@:replyToJobsWhenContentDownloaded} set-download | SUCCESS | autoAssetSetDescriptor:%{public}@", buf, 0x20u);
    }

    [(MADAutoAssetJob *)self replyToSetCheckAtomicDownloadSuccess];
  }

  else
  {
    if ([(MADAutoAssetJob *)self lockingAssetContent])
    {
      v11 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
      if (!v11)
      {
        v11 = [(MADAutoAssetJob *)self latestInstalledOnFilesystem];
      }

      v12 = [(MADAutoAssetJob *)self autoAssetSelector];
      v13 = [v12 assetType];
      v14 = [v11 assetId];
      v15 = getAutoLocalUrlFromTypeAndIdWithPurpose(v13, v14, 2, @"auto");

      v16 = [MAAutoAssetInfoFound alloc];
      v17 = [(MADAutoAssetJob *)self resultSelector];
      v18 = [v11 metadata];
      v19 = [(MADAutoAssetJob *)self currentStatus];
      v20 = [v16 initForSelector:v17 withLocalContentURL:v15 withAssetAttributes:v18 reportingStatus:v19];
      [(MADAutoAssetJob *)self setResultFound:v20];

      v21 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [(MADAutoAssetJob *)self autoJobName];
        v23 = [v15 path];
        *buf = 138543874;
        v45 = v22;
        v46 = 2114;
        v47 = v4;
        v48 = 2114;
        v49 = v23;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ | {%{public}@:replyToJobsWhenContentDownloaded} [locking] | SUCCESS | localContentURL:%{public}@", buf, 0x20u);
      }
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v24 = [(MADAutoAssetJob *)self activeJobTasks];
    v25 = [v24 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = 0;
      v28 = *v40;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v40 != v28)
          {
            objc_enumerationMutation(v24);
          }

          v30 = *(*(&v39 + 1) + 8 * i);
          v31 = objc_autoreleasePoolPush();
          v32 = [v30 clientRequest];

          if (v32)
          {
            [(MADAutoAssetJob *)self replyToClientForJobParam:v30 withResponseError:0];
            [v30 setClientRequest:0];
            v27 = 1;
          }

          objc_autoreleasePoolPop(v31);
        }

        v26 = [v24 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v26);
    }

    else
    {
      v27 = 0;
    }

    if ([(MADAutoAssetJob *)self autoAssetSetJob]&& (v27 & 1) == 0)
    {
      v33 = [(MADAutoAssetJob *)self cachedAutoAssetCatalog];
      v34 = [(MADAutoAssetJob *)self clientDomainName];
      v35 = [(MADAutoAssetJob *)self autoAssetSetIdentifier];
      v36 = [(MADAutoAssetJob *)self autoAssetUUID];
      v37 = [(MADAutoAssetJob *)self setJobInformation];
      v38 = [v37 copy];
      [MADAutoAssetControlManager autoSetJobSchedulerNoClientDownloaded:v33 forDomainName:v34 forAssetSetIdentifier:v35 withAutoAssetUUID:v36 fromAutoAssetJob:self withSetJobInformation:v38 withResponseError:0];
    }
  }
}

- (void)replyToJobsWhenOperationFoundSame:(id)a3 forCheckAtomic:(BOOL)a4 withLookupError:(id)a5
{
  v51 = a4;
  v7 = a3;
  v8 = a5;
  v9 = [(MADAutoAssetJob *)self autoJobFSM];
  v10 = [v9 extendedStateQueue];
  dispatch_assert_queue_V2(v10);

  v11 = self;
  if (![(MADAutoAssetJob *)self stagerJob])
  {
    if (![(MADAutoAssetJob *)self lockingAssetContent]&& !v51)
    {
      goto LABEL_5;
    }

    v48 = self;
    if (![(MADAutoAssetJob *)self autoAssetSetJob])
    {
      v13 = [(MADAutoAssetJob *)self autoAssetSelector];
      v14 = [v13 assetVersion];
      if (v14)
      {
        v15 = [(MADAutoAssetJob *)self autoAssetSelector];
        v16 = [v15 assetVersion];
        v17 = [(MADAutoAssetJob *)self installedOnFilesystemWithVersion:v16 fromLocation:v7];
      }

      else
      {
        v17 = [(MADAutoAssetJob *)self latestInstalledOnFilesystem];
      }

      if (v17)
      {
        v18 = [(MADAutoAssetJob *)self autoAssetSelector];
        v19 = [v18 assetType];
        v20 = [v17 assetId];
        v21 = getAutoLocalUrlFromTypeAndIdWithPurpose(v19, v20, 2, @"auto");

        v22 = [MAAutoAssetInfoFound alloc];
        v23 = [(MADAutoAssetJob *)self resultSelector];
        v24 = [v17 metadata];
        v25 = [(MADAutoAssetJob *)self currentStatus];
        v26 = [v22 initForSelector:v23 withLocalContentURL:v21 withAssetAttributes:v24 reportingStatus:v25];
        [(MADAutoAssetJob *)self setResultFound:v26];
      }

      else
      {
        [(MADAutoAssetJob *)self trackAnomaly:6103 forReason:@"{replyToJobsWhenOperationFoundSame} no associated descriptor on filesystem (should always be there at this point)"];
      }

      v11 = self;
    }

    v49 = v8;
    v47 = v7;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = [(MADAutoAssetJob *)v11 activeJobTasks];
    v27 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (!v27)
    {
      v12 = 0;
      goto LABEL_34;
    }

    v28 = v27;
    v12 = 0;
    v29 = *v53;
LABEL_16:
    v30 = 0;
    while (1)
    {
      if (*v53 != v29)
      {
        objc_enumerationMutation(obj);
      }

      v31 = *(*(&v52 + 1) + 8 * v30);
      v32 = objc_autoreleasePoolPush();
      v33 = [v31 clientRequest];

      if (!v33)
      {
        goto LABEL_30;
      }

      v34 = [v31 clientRequest];
      v35 = [v34 clientRequestMessage];
      v36 = [v35 messageName];

      if (v51)
      {
        v37 = [v49 domain];
        if (([SUCore stringIsEqual:v37 to:@"com.apple.MobileAssetError.AutoAsset"]& 1) != 0)
        {
          v38 = [v49 code];

          v39 = v49;
          v11 = v48;
          if (v38 == "ateCoreConnect.framework/SoftwareUpdateCoreConnect")
          {
            goto LABEL_28;
          }
        }

        else
        {

          v11 = v48;
        }
      }

      if (([SUCore stringIsEqual:v36 to:@"MA-AUTO:LOCK_CONTENT"]& 1) == 0 && ![SUCore stringIsEqual:v36 to:@"MA-AUTO-SET:LOCK_ATOMIC"])
      {
        goto LABEL_29;
      }

      v39 = 0;
LABEL_28:
      [(MADAutoAssetJob *)v11 replyToClientForJobParam:v31 withResponseError:v39];
      [v31 setClientRequest:0];
LABEL_29:

      v12 = 1;
LABEL_30:
      objc_autoreleasePoolPop(v32);
      if (v28 == ++v30)
      {
        v28 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
        if (!v28)
        {
LABEL_34:

          v7 = v47;
          v8 = v49;
          goto LABEL_35;
        }

        goto LABEL_16;
      }
    }
  }

  [(MADAutoAssetJob *)self trackAnomaly:6103 forReason:@"{replyToJobsWhenOperationFoundSame} not valid for a stager-job"];
LABEL_5:
  v12 = 0;
LABEL_35:
  if ([(MADAutoAssetJob *)v11 autoAssetSetJob]&& (v12 & 1) == 0)
  {
    v40 = [(MADAutoAssetJob *)v11 cachedAutoAssetCatalog];
    v41 = [(MADAutoAssetJob *)v11 clientDomainName];
    [(MADAutoAssetJob *)v11 autoAssetSetIdentifier];
    v43 = v42 = v11;
    v44 = [(MADAutoAssetJob *)v42 autoAssetUUID];
    v45 = [(MADAutoAssetJob *)v42 setJobInformation];
    v46 = [v45 copy];
    [MADAutoAssetControlManager autoSetJobSchedulerNoClientFoundSame:v40 forDomainName:v41 forAssetSetIdentifier:v43 withAutoAssetUUID:v44 fromAutoAssetJob:v42 withSetJobInformation:v46 withResponseError:v8];
  }
}

- (void)replyToSetCheckAtomicDownloadSuccess
{
  v3 = [(MADAutoAssetJob *)self autoJobFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v28 = objc_alloc_init(NSMutableArray);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = [(MADAutoAssetJob *)self activeJobTasks];
    v6 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (!v6)
    {
      v27 = 0;
      goto LABEL_23;
    }

    v7 = v6;
    v27 = 0;
    v8 = *v31;
    while (1)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        if (v10)
        {
          v12 = [v10 clientRequest];

          if (!v12)
          {
            [v28 addObject:v10];
            goto LABEL_16;
          }

          v13 = [v10 clientRequest];
          v14 = [v13 clientRequestMessage];
          v15 = [v14 messageName];

          if (([SUCore stringIsEqual:v15 to:@"MA-AUTO-SET:CHECK_ATOMIC"]& 1) != 0 || [SUCore stringIsEqual:v15 to:@"MA-AUTO-SET:LOCK_ATOMIC"])
          {
            [(MADAutoAssetJob *)self replyToClientForJobParam:v10 withResponseError:0];
            v27 = 1;
          }

          else
          {
            [v28 addObject:v10];
          }
        }

        else
        {
          v15 = [(MADAutoAssetJob *)self autoJobFSM];
          v16 = [v15 diag];
          v17 = [NSString alloc];
          v18 = [(MADAutoAssetJob *)self _updateLatestSummary];
          v19 = [v17 initWithFormat:@"{replyToSetCheckAtomicDownloadSuccess} nil jobParam found on activeJobTasks | %@", v18];
          [v16 trackAnomaly:@"AUTO-JOB" forReason:v19 withResult:6103 withError:0];
        }

LABEL_16:
        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (!v7)
      {
LABEL_23:

        [(MADAutoAssetJob *)self setActiveJobTasks:v28];
        if ([(MADAutoAssetJob *)self autoAssetSetJob])
        {
          if ((v27 & 1) == 0)
          {
            v21 = [(MADAutoAssetJob *)self cachedAutoAssetCatalog];
            v22 = [(MADAutoAssetJob *)self clientDomainName];
            v23 = [(MADAutoAssetJob *)self autoAssetSetIdentifier];
            v24 = [(MADAutoAssetJob *)self autoAssetUUID];
            v25 = [(MADAutoAssetJob *)self setJobInformation];
            v26 = [v25 copy];
            [MADAutoAssetControlManager autoSetJobSchedulerNoClientDownloaded:v21 forDomainName:v22 forAssetSetIdentifier:v23 withAutoAssetUUID:v24 fromAutoAssetJob:self withSetJobInformation:v26 withResponseError:0];
          }
        }

        return;
      }
    }
  }

  v29 = [(MADAutoAssetJob *)self autoJobFSM];
  v20 = [v29 diag];
  [v20 trackAnomaly:@"AUTO-SET-JOB:REPLY" forReason:@"replyToSetCheckAtomicDownloadSuccess should only be called for set-job" withResult:6103 withError:0];
}

- (void)finishedSetSameVersionFound:(id)a3
{
  p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
  v5 = a3;
  v6 = [[NSString alloc] initWithFormat:@"%@:finishedSetSameVersionFound", v5];

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    if ([(MADAutoAssetJob *)self determiningAssetContent])
    {
      v7 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(MADAutoAssetJob *)self autoJobName];
        v9 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
        v10 = [v9 summary];
        *buf = 138543874;
        v21 = v8;
        v22 = 2114;
        v23 = v6;
        v24 = 2114;
        v25 = v10;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ | {%{public}@} same version found that has already been downloaded to the filesystem: %{public}@", buf, 0x20u);
      }

LABEL_24:

      goto LABEL_25;
    }

    if ([(MADAutoAssetJob *)self setDescriptorDiscardRamped])
    {
      v7 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(MADAutoAssetJob *)self autoJobName];
        v13 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
        if (v13)
        {
          p_weak_ivar_lyt = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
          v14 = [p_weak_ivar_lyt summary];
        }

        else
        {
          v14 = @"N";
        }

        *buf = 138543874;
        v21 = v12;
        v22 = 2114;
        v23 = v6;
        v24 = 2114;
        v25 = v14;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ | {%{public}@} newer version found that is ramped (and have older atomic-instance) - discarding newer set-descriptor | autoAssetSetDescriptor:%{public}@", buf, 0x20u);
        if (v13)
        {
        }
      }

      goto LABEL_24;
    }

    v15 = [(MADAutoAssetJob *)self prePersonalizedSelectors];
    if ([v15 count])
    {
      v16 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      v17 = [MADAutoAssetSecure readyToCommitPrePersonalized:v6 forSetDescriptor:v16];

      if (v17)
      {
        [(MADAutoAssetJob *)self _commitPrePersonalized:v6 error:0];
LABEL_15:
        [(MADAutoAssetJob *)self foundAndDownloadedSet:v6];
LABEL_25:
        v11 = 0;
LABEL_26:
        [(MADAutoAssetJob *)self doneWithAllJobs:v6 withLookupError:v11];
        [(MADAutoAssetJob *)self autoAssetJobFinished:v6 forJobFinishedReason:@"FOUND_SAME" failingWithError:v11];
        goto LABEL_27;
      }
    }

    else
    {
    }

    if (![(MADAutoAssetJob *)self becameLatestToVend])
    {
      if ([(MADAutoAssetJob *)self tryPersonalizeFailed])
      {
        v18 = 6535;
      }

      else
      {
        v18 = 6205;
      }

      v19 = [[NSString alloc] initWithFormat:@"AUTO-SET-JOB(%@)", v6];
      v11 = [MAAutoAssetError buildError:v18 fromOperation:v19 underlyingError:0 withDescription:@"same version found that has already been downloaded to the filesystem"];

      goto LABEL_26;
    }

    goto LABEL_15;
  }

  v11 = [[NSString alloc] initWithFormat:@"{%@} should only execute for set-job", v6];
  [(MADAutoAssetJob *)self statusChange:v6 catalogAnomaly:6103 forReason:v11];
LABEL_27:
}

- (void)doneWithAllJobs:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  if ([(MADAutoAssetJob *)self stagerJob])
  {
    [(MADAutoAssetJob *)self stagerJobDone:v4 reportingError:0];
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = [(MADAutoAssetJob *)self activeJobTasks];
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    v9 = v8;
    if (v8)
    {
      v10 = *v24;
      v11 = v8;
      do
      {
        v12 = 0;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v23 + 1) + 8 * v12);
          v14 = objc_autoreleasePoolPush();
          [(MADAutoAssetJob *)self replyToClientForJobParam:v13 withResponseError:0];
          objc_autoreleasePoolPop(v14);
          v12 = v12 + 1;
        }

        while (v11 != v12);
        v11 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    v15 = objc_alloc_init(NSMutableArray);
    [(MADAutoAssetJob *)self setActiveJobTasks:v15];

    v16 = [(MADAutoAssetJob *)self autoAssetSetJob];
    if (!v9 && v16)
    {
      v17 = [(MADAutoAssetJob *)self cachedAutoAssetCatalog];
      v18 = [(MADAutoAssetJob *)self clientDomainName];
      v19 = [(MADAutoAssetJob *)self autoAssetSetIdentifier];
      v20 = [(MADAutoAssetJob *)self autoAssetUUID];
      v21 = [(MADAutoAssetJob *)self setJobInformation];
      v22 = [v21 copy];
      [MADAutoAssetControlManager autoSetJobSchedulerNoClientDownloaded:v17 forDomainName:v18 forAssetSetIdentifier:v19 withAutoAssetUUID:v20 fromAutoAssetJob:self withSetJobInformation:v22 withResponseError:0];
    }
  }
}

- (void)doneWithAllJobs:(id)a3 withLookupError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetJob *)self autoJobFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(MADAutoAssetJob *)self firstLookupError];

  if (!v10)
  {
    [(MADAutoAssetJob *)self setFirstLookupError:v7];
  }

  if (![(MADAutoAssetJob *)self stagerJob])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = [(MADAutoAssetJob *)self activeJobTasks];
    v12 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v29 = 0;
      obj = v11;
      v31 = 0;
      v32 = v6;
      v33 = *v35;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v35 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          v17 = [v15 clientRequest];
          v18 = [v17 clientRequestMessage];
          v19 = [v18 messageName];

          v20 = [SUCore stringIsEqual:v19 to:@"MA-AUTO-SET:CHECK_ATOMIC"];
          if ((+[SUCore stringIsEqual:to:](SUCore, "stringIsEqual:to:", v19, @"MA-AUTO:LOCK_CONTENT") & 1) != 0 || ((+[SUCore stringIsEqual:to:](SUCore, "stringIsEqual:to:", v19, @"MA-AUTO-SET:LOCK_ATOMIC") | v20)) && [v7 code] == "ateCoreConnect.framework/SoftwareUpdateCoreConnect")
          {
            if ([(MADAutoAssetJob *)self autoAssetSetJob]&& ![(MADAutoAssetJob *)self setDescriptorDiscardRamped])
            {
              [(MADAutoAssetJob *)self foundAndDownloadedSet:v32];
              LOBYTE(v29) = 1;
            }

            if (![(MADAutoAssetJob *)self autoAssetSetJob]|| [(MADAutoAssetJob *)self autoAssetSetJob]&& ![(MADAutoAssetJob *)self setDescriptorDiscardRamped])
            {
              BYTE4(v29) = 1;
            }

            v31 |= v20;
          }

          else
          {
            if ([v7 code] == "ateCoreConnect.framework/SoftwareUpdateCoreConnect" && -[MADAutoAssetJob autoAssetSetJob](self, "autoAssetSetJob") && !-[MADAutoAssetJob setDescriptorDiscardRamped](self, "setDescriptorDiscardRamped"))
            {
              [(MADAutoAssetJob *)self foundAndDownloadedSet:v32];
            }

            [(MADAutoAssetJob *)self finishJobTaskForJobParam:v15 withUnderlyingError:v7 fromAction:v32];
          }

          objc_autoreleasePoolPop(v16);
        }

        v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v13);

      v6 = v32;
      v21 = v29;
      if ((v29 & 0x100000000) != 0)
      {
        [(MADAutoAssetJob *)self replyToJobsWhenOperationFoundSame:v32 forCheckAtomic:v31 & 1 withLookupError:v7];
LABEL_34:
        v28 = objc_alloc_init(NSMutableArray);
        [(MADAutoAssetJob *)self setActiveJobTasks:v28];

        goto LABEL_35;
      }
    }

    else
    {

      v21 = 0;
    }

    if ([(MADAutoAssetJob *)self autoAssetSetJob]&& (v21 & 1) == 0)
    {
      v22 = [(MADAutoAssetJob *)self cachedAutoAssetCatalog];
      v23 = [(MADAutoAssetJob *)self clientDomainName];
      v24 = [(MADAutoAssetJob *)self autoAssetSetIdentifier];
      v25 = [(MADAutoAssetJob *)self autoAssetUUID];
      v26 = [(MADAutoAssetJob *)self setJobInformation];
      v27 = [v26 copy];
      [MADAutoAssetControlManager autoSetJobSchedulerNoClientFoundSame:v22 forDomainName:v23 forAssetSetIdentifier:v24 withAutoAssetUUID:v25 fromAutoAssetJob:self withSetJobInformation:v27 withResponseError:v7];
    }

    goto LABEL_34;
  }

  [(MADAutoAssetJob *)self stagerJobDone:v6 reportingError:v7];
LABEL_35:
}

- (id)_newSelectorForCachedAssetCatalog:(id)a3
{
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v70 objects:v81 count:16];
  if (!v4)
  {

    v60 = 0;
    goto LABEL_71;
  }

  v6 = v4;
  v60 = 0;
  v7 = 0;
  v8 = *v71;
  *&v5 = 138543618;
  v55 = v5;
  v56 = *v71;
  v57 = v3;
  do
  {
    v9 = 0;
    v63 = v6;
    do
    {
      if (*v71 != v8)
      {
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v70 + 1) + 8 * v9);
      v11 = objc_autoreleasePoolPush();
      v12 = [v3 objectForKey:v10];
      v13 = v12;
      if (v10)
      {
        v14 = v12 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        v15 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = v7;
          if (v10)
          {
            v17 = v10;
          }

          else
          {
            v17 = @"N";
          }

          v14 = v13 == 0;
          v18 = v8;
          v19 = v13;
          v20 = v11;
          v21 = v9;
          if (v14)
          {
            v22 = @"N";
          }

          else
          {
            v22 = @"Y";
          }

          v23 = [v3 safeSummary];
          *buf = 138543874;
          v76 = v17;
          v7 = v16;
          v77 = 2114;
          v78 = v22;
          v9 = v21;
          v11 = v20;
          v13 = v19;
          v8 = v18;
          v6 = v63;
          v79 = 2114;
          v80 = v23;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "{_newSelectorForCachedAssetCatalog} unable to determine key/value from set-catalog | setCatalogKey:%{public}@ | setCatalogValue:%{public}@ | autoAssetSetCatalog:%{public}@", buf, 0x20u);
        }

LABEL_65:

        goto LABEL_66;
      }

      if ([SUCore stringIsEqual:v10 to:@"Assets"])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v61 = v11;
          v59 = v9;
          v25 = [v3 safeObjectForKey:@"Assets" ofClass:objc_opt_class()];
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          obj = v25;
          v26 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
          v58 = v13;
          if (!v26)
          {
            v28 = v60;
            goto LABEL_64;
          }

          v27 = v26;
          v65 = *v67;
          v28 = v60;
          while (1)
          {
            for (i = 0; i != v27; i = i + 1)
            {
              if (*v67 != v65)
              {
                objc_enumerationMutation(obj);
              }

              v30 = *(*(&v66 + 1) + 8 * i);
              v31 = objc_autoreleasePoolPush();
              v32 = [v30 safeStringForKey:@"AssetFormat"];
              v33 = [v30 safeStringForKey:@"AssetType"];
              v34 = [v30 safeStringForKey:@"AssetSpecifier"];
              v35 = [v30 safeStringForKey:@"AssetVersion"];
              v36 = v35;
              if (v32)
              {
                v37 = v33 == 0;
              }

              else
              {
                v37 = 1;
              }

              if (v37 || v34 == 0 || v35 == 0)
              {
                if (v32)
                {
                  v40 = 1;
                }

                else
                {
                  v40 = v33 == 0;
                }

                if (!v40 && v34 != 0 && v35 != 0 && v7 == 0)
                {
                  v44 = [[MAAutoAssetSelector alloc] initForAssetType:v33 withAssetSpecifier:v34 matchingAssetVersion:v35];
LABEL_56:
                  v7 = v44;
                }
              }

              else
              {
                if (!v7)
                {
                  v48 = v32;

                  v44 = [[MAAutoAssetSelector alloc] initForAssetType:v33 withAssetSpecifier:v34 matchingAssetVersion:v36];
                  v28 = v48;
                  goto LABEL_56;
                }

                if ([MADAutoAssetDescriptor isMorePreferredAssetFormat:v32 comparedTo:v28])
                {
                  v45 = v32;

                  v46 = [[MAAutoAssetSelector alloc] initForAssetType:v33 withAssetSpecifier:v34 matchingAssetVersion:v36];
                  v47 = v46;
                  v28 = v45;
                  v7 = v47;
                }
              }

              objc_autoreleasePoolPop(v31);
            }

            v27 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
            if (!v27)
            {
LABEL_64:
              v60 = v28;
              v15 = obj;

              v8 = v56;
              v3 = v57;
              v11 = v61;
              v6 = v63;
              v13 = v58;
              v9 = v59;
              goto LABEL_65;
            }
          }
        }

        v15 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [v3 safeSummary];
          v62 = v11;
          v49 = v9;
          v51 = v50 = v7;
          *buf = v55;
          v76 = v10;
          v77 = 2114;
          v78 = v51;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "{_newSelectorForCachedAssetCatalog} key value is not an array | setCatalogKey:%{public}@ | autoAssetSetCatalog:%{public}@", buf, 0x16u);

          v7 = v50;
          v9 = v49;
          v11 = v62;
        }

        goto LABEL_65;
      }

LABEL_66:

      objc_autoreleasePoolPop(v11);
      v9 = v9 + 1;
    }

    while (v9 != v6);
    v6 = [v3 countByEnumeratingWithState:&v70 objects:v81 count:16];
  }

  while (v6);

  if (!v7)
  {
LABEL_71:
    v52 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = [v3 safeSummary];
      *buf = 138543362;
      v76 = v53;
      _os_log_impl(&dword_0, v52, OS_LOG_TYPE_ERROR, "{_newSelectorForCachedAssetCatalog} Selector could not be determined from set-catalog lookup response | autoAssetSetCatalog:%{public}@", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (void)stagerJobReportProgress:(id)a3 reportingError:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(MADAutoAssetJob *)self autoJobFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  if ([(MADAutoAssetJob *)self stagerJob])
  {
    if (![(MADAutoAssetJob *)self stagerJobResultsReported])
    {
      [MADAutoAssetControlManager autoAssetStagerJobDownloadProgress:v9 withProgressError:v6];
    }
  }

  else
  {
    [(MADAutoAssetJob *)self trackAnomaly:6103 forReason:@"{stagerJobReportProgress} not a stager-job"];
  }
}

- (void)stagerJobDone:(id)a3 reportingError:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(MADAutoAssetJob *)self autoJobFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  if ([(MADAutoAssetJob *)self stagerJob])
  {
    if ([(MADAutoAssetJob *)self stagerJobDownloadContent])
    {
      [(MADAutoAssetJob *)self stagerJobDownloadDone:v10 reportingError:v6];
    }

    else
    {
      [(MADAutoAssetJob *)self stagerJobDetermineDone:v10 reportingError:v6];
    }
  }

  else
  {
    v9 = [[NSString alloc] initWithFormat:@"{%@:stagerJobDone} not a stager-job", v10];
    [(MADAutoAssetJob *)self trackAnomaly:6103 forReason:v9];
  }
}

- (void)stagerJobDetermineDone:(id)a3 reportingError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetJob *)self autoJobFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  if (![(MADAutoAssetJob *)self stagerJob])
  {
    v11 = [[NSString alloc] initWithFormat:@"{%@:stagerJobDetermineDone} not a stager-job", v6];
    [(MADAutoAssetJob *)self trackAnomaly:6103 forReason:v11];

    goto LABEL_18;
  }

  if (![(MADAutoAssetJob *)self stagerJobResultsReported])
  {
    v10 = v7;
    v24 = v7;
    if (!v10)
    {
      v12 = [(MADAutoAssetJob *)self stagerJobAutoAssetCatalog];

      if (v12)
      {
        v22 = [(MADAutoAssetJob *)self stagerJobAutoAssetCatalog];
        v23 = 0;
        goto LABEL_8;
      }

      v10 = [MAAutoAssetError buildError:6111 fromOperation:v6 underlyingError:0 withDescription:@"stager-job determine-if-available done yet no auto-asset-catalog"];
    }

    v22 = 0;
    v23 = v10;
LABEL_8:
    v13 = objc_alloc_init(NSMutableArray);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = [(MADAutoAssetJob *)self latestAssetDescriptorOnFilesystemBySpecifier];
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        v18 = 0;
        do
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v25 + 1) + 8 * v18);
          v20 = [(MADAutoAssetJob *)self latestAssetDescriptorOnFilesystemBySpecifier];
          v21 = [v20 safeObjectForKey:v19 ofClass:objc_opt_class()];

          if (v21)
          {
            [v13 addObject:v21];
          }

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v16);
    }

    [MADAutoAssetControlManager autoAssetStagerSetJobDetermineDone:v22 withBaseForStagingDescriptors:v13 withDetermineError:v23];
    [(MADAutoAssetJob *)self setStagerJobResultsReported:1];

    v7 = v24;
  }

LABEL_18:
}

- (void)stagerJobDownloadDone:(id)a3 reportingError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetJob *)self autoJobFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  if ([(MADAutoAssetJob *)self stagerJob])
  {
    if (![(MADAutoAssetJob *)self stagerJobResultsReported])
    {
      v14 = v7;
      v10 = [(MADAutoAssetJob *)self currentJobInformation:&v14];
      v11 = v14;

      v12 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
      [MADAutoAssetControlManager autoAssetStagerJobDownloadDone:v10 withDownloadedDescriptor:v12 withDownloadError:v11];

      [(MADAutoAssetJob *)self setStagerJobResultsReported:1];
      v7 = v11;
    }
  }

  else
  {
    v13 = [[NSString alloc] initWithFormat:@"{%@:stagerJobDownloadDone} not a stager-job", v6];
    [(MADAutoAssetJob *)self trackAnomaly:6103 forReason:v13];
  }
}

- (id)decideFollowupBoost:(id)a3 forJobEvent:(id)a4 boostEvent:(id)a5 noBoostEvent:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = [(MADAutoAssetJob *)self autoJobFSM];
  v11 = [v10 extendedStateQueue];
  dispatch_assert_queue_V2(v11);

  if ([(MADAutoAssetJob *)self configuredToUserInitiated]&& ![(MADAutoAssetJob *)self boostedToUserInitiated])
  {
    v12 = ![(MADAutoAssetJob *)self downloadingUserInitiated];
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  if ([(MADAutoAssetJob *)self configuredToCellular]&& ![(MADAutoAssetJob *)self boostedToCellular])
  {
    v13 = ![(MADAutoAssetJob *)self downloadingCellular];
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  if ([(MADAutoAssetJob *)self configuredToExpensive]&& ![(MADAutoAssetJob *)self boostedToExpensive])
  {
    v14 = ![(MADAutoAssetJob *)self downloadingExpensive];
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  if (((v12 | v13) | v14))
  {
    v15 = v8;
  }

  else
  {
    v15 = v9;
  }

  v16 = v15;

  return v15;
}

- (id)decideFollowupMoreAssetsToDownload:(id)a3 withEventInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v8 = [(MADAutoAssetJob *)self currentSetStatus];
    v9 = [v8 downloadProgress];
    [v9 setDownloadedAssetCount:{objc_msgSend(v9, "downloadedAssetCount") + 1}];

    v10 = [(MADAutoAssetJob *)self currentSetStatus];
    v11 = [v10 downloadProgress];
    v12 = [v11 remainingAssetCount];

    if (v12 >= 1)
    {
      v13 = [(MADAutoAssetJob *)self currentSetStatus];
      v14 = [v13 downloadProgress];
      [v14 setRemainingAssetCount:{objc_msgSend(v14, "remainingAssetCount") - 1}];
    }

    v15 = [(MADAutoAssetJob *)self baseForPatch];
    v16 = v15 != 0;

    [(MADAutoAssetJob *)self foundAndDownloaded:v6 forJobParam:v7 wasPatched:v16];
    v17 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    v18 = [v17 metadata];
    v19 = [v18 safeIntegerForKey:@"_DownloadSize"];

    if ([(MADAutoAssetJob *)self setProgressAssetTotalWrittenBytes]< v19)
    {
      v20 = [(MADAutoAssetJob *)self currentSetStatus];
      v21 = [v20 downloadProgress];
      [v21 setIsStalled:0];

      if ([(MADAutoAssetJob *)self setProgressAssetTotalWrittenBytes]>= 1)
      {
        v22 = v19 - [(MADAutoAssetJob *)self setProgressAssetTotalWrittenBytes];
        v23 = [(MADAutoAssetJob *)self currentSetStatus];
        v24 = [v23 downloadProgress];
        [v24 setTotalWrittenBytes:{objc_msgSend(v24, "totalWrittenBytes") + v22}];
      }

      [(MADAutoAssetJob *)self setSetProgressAssetTotalWrittenBytes:v19];
      [(MADAutoAssetJob *)self statusChangeReportCurrent:0];
    }

    [(MADAutoAssetJob *)self setSetProgressOverallTotalWrittenBytes:[(MADAutoAssetJob *)self setProgressAssetTotalWrittenBytes]+ [(MADAutoAssetJob *)self setProgressOverallTotalWrittenBytes]];
    [(MADAutoAssetJob *)self setSetProgressAssetTotalWrittenBytes:0];
    [(MADAutoAssetJob *)self updateSetTrackingWithSuccessfulAssetDownload];
    [(MADAutoAssetJob *)self reportJustDownloadedAssetOfSet:v6];
    if ([(MADAutoAssetJob *)self remainingSetDescriptorToBeDownloaded])
    {
      v31 = 0;
      v25 = [(MADAutoAssetJob *)self placeNextSetAssetDescriptorToDownload:v6 restrictToFull:0 error:&v31];
      v26 = @"SetDownloadSuccessMoreFull";
      if (v25)
      {
        v26 = @"SetDownloadSuccessMorePatch";
      }

      if (v31)
      {
        v27 = @"SetDownloadFailureNoFull";
      }

      else
      {
        v27 = v26;
      }
    }

    else if (-[MADAutoAssetJob stagerJob](self, "stagerJob") || (-[MADAutoAssetJob tryPersonalizeDescriptors](self, "tryPersonalizeDescriptors"), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v28 count], v28, !v29))
    {
      v27 = @"SetDownloadSuccessDone";
    }

    else
    {
      v27 = @"SetDownloadSuccessHeal";
    }
  }

  else
  {
    v27 = @"DownloadSuccessDone";
  }

  return v27;
}

- (void)checkFilesystemAndDecidePurgeOrLookup
{
  v3 = [(MADAutoAssetJob *)self autoJobFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  LODWORD(v3) = [(MADAutoAssetJob *)self autoAssetSetJob];
  v5 = [(MADAutoAssetJob *)self refreshOnFilesystemFromManagerPromotingIfStaged:0];
  if (!v3)
  {
    if ([(MADAutoAssetJob *)self lockingAssetContent])
    {
      v10 = [(MADAutoAssetJob *)self latestInstalledOnFilesystem];
    }

    else
    {
      v10 = 0;
    }

    if ([(MADAutoAssetJob *)self lockingAssetContent])
    {
      v17 = [(MADAutoAssetJob *)self autoAssetSelector];
      v18 = [v17 assetVersion];

      if (v18)
      {
        v19 = [(MADAutoAssetJob *)self autoAssetSelector];
        v20 = [v19 assetVersion];
        v21 = [(MADAutoAssetJob *)self installedOnFilesystemWithVersion:v20 fromLocation:@"checkFilesystemAndDecidePurgeOrLookup"];

        v10 = v21;
      }
    }

    if ([(MADAutoAssetJob *)self lockingAssetContent]&& v10)
    {
      [(MADAutoAssetJob *)self updateResultPropertiesWithDescriptor:v10];
      v22 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [(MADAutoAssetJob *)self autoJobName];
        v24 = [v10 selectorName];
        *v47 = 138543618;
        *&v47[4] = v23;
        *&v47[12] = 2114;
        *&v47[14] = v24;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ | {checkFilesystemAndDecidePurgeOrLookup} found already downloaded (on filesystem) asset | selector:%{public}@", v47, 0x16u);
      }

      v25 = @"AlreadyDownloaded";
      goto LABEL_45;
    }

    if (![(MADAutoAssetJob *)self stagerJob])
    {
      v26 = [(MADAutoAssetJob *)self autoAssetSelector];
      v27 = [MADAutoAssetLookupCache cachedLookupResultForSelector:v26 forStaging:0];

      if (v27)
      {
        [(MADAutoAssetJob *)self adoptCachedLookupResult:v27];
        v28 = [MADAutoAssetJobParam alloc];
        v29 = [(MADAutoAssetJob *)self autoAssetUUID];
        v16 = [(MADAutoAssetJobParam *)v28 initForFinishedJobID:v29 withCatalog:v27 whereCatalogFromLookupCache:1 withError:0];

        v30 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [(MADAutoAssetJob *)self autoJobName];
          v32 = [(MADAutoAssetJobParam *)v16 summary];
          *v47 = 138543618;
          *&v47[4] = v31;
          *&v47[12] = 2114;
          *&v47[14] = v32;
          _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ | {checkFilesystemAndDecidePurgeOrLookup} using cached lookup result for asset-selector | followupParam:%{public}@", v47, 0x16u);
        }

        v25 = @"FoundCachedLookupResult";
        if (v16)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }
    }

    v33 = [(MADAutoAssetJob *)self lockingAssetContent];
    v22 = _MADLog(@"AutoJob");
    v34 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v33)
    {
      if (v34)
      {
        v35 = [(MADAutoAssetJob *)self autoJobName];
        *v47 = 138543362;
        *&v47[4] = v35;
        v36 = "%{public}@ | {checkFilesystemAndDecidePurgeOrLookup} no downloaded asset found (on filesystem), will attempt lookup for lock request";
LABEL_43:
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, v36, v47, 0xCu);
      }
    }

    else if (v34)
    {
      v35 = [(MADAutoAssetJob *)self autoJobName];
      *v47 = 138543362;
      *&v47[4] = v35;
      v36 = "%{public}@ | {checkFilesystemAndDecidePurgeOrLookup} will attempt lookup for client request";
      goto LABEL_43;
    }

    v25 = @"PerformLookup";
LABEL_45:

LABEL_46:
    v44 = [MADAutoAssetJobParam alloc];
    v45 = [(MADAutoAssetJob *)self _updateLatestSummary];
    v16 = [(MADAutoAssetJobParam *)v44 initWithSafeSummary:v45];

LABEL_47:
    v46 = [(MADAutoAssetJob *)self autoJobFSM:*v47];
    [v46 followupEvent:v25 withInfo:v16];

    goto LABEL_48;
  }

  if ([(MADAutoAssetJob *)self stagerJob])
  {
    v6 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(MADAutoAssetJob *)self autoJobName];
      *v47 = 138543362;
      *&v47[4] = v7;
      v8 = "%{public}@ | {checkFilesystemAndDecidePurgeOrLookup} will attempt lookup for stager-formed set-configuration";
LABEL_5:
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, v8, v47, 0xCu);
    }
  }

  else
  {
    v11 = [(MADAutoAssetJob *)self foundSetNewerDiscoveredAtomicEntries];
    v12 = [v11 count];

    if (v12)
    {
      if ([(MADAutoAssetJob *)self lockingAssetContent])
      {
        [(MADAutoAssetJob *)self updateSetResults:@"checkFilesystemAndDecidePurgeOrLookup" atomicInstanceDiscovered:1 availableForUse:1 downloading:0 buildingResultSetFound:1];
      }

      v6 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(MADAutoAssetJob *)self autoJobName];
        *v47 = 138543362;
        *&v47[4] = v13;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ | {checkFilesystemAndDecidePurgeOrLookup} found already downloaded (on filesystem) all discovered", v47, 0xCu);
      }

      v9 = @"AlreadyDownloaded";
      goto LABEL_15;
    }

    v37 = [(MADAutoAssetJob *)self setConfiguration];
    v38 = [MADAutoAssetLookupCache cachedLookupResultForSetConfiguration:v37 forStaging:0];

    if (v38)
    {
      [(MADAutoAssetJob *)self adoptCachedLookupResult:v38];
      v39 = [MADAutoAssetJobParam alloc];
      v40 = [(MADAutoAssetJob *)self autoAssetUUID];
      v16 = [(MADAutoAssetJobParam *)v39 initForFinishedJobID:v40 withCatalog:v38 whereCatalogFromLookupCache:1 withError:0];

      v41 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [(MADAutoAssetJob *)self autoJobName];
        v43 = [(MADAutoAssetJobParam *)v16 summary];
        *v47 = 138543618;
        *&v47[4] = v42;
        *&v47[12] = 2114;
        *&v47[14] = v43;
        _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ | {checkFilesystemAndDecidePurgeOrLookup} using cached lookup result for set-configuration | followupParam:%{public}@", v47, 0x16u);
      }

      v9 = @"FoundCachedLookupResult";
      if (v16)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v6 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(MADAutoAssetJob *)self autoJobName];
      *v47 = 138543362;
      *&v47[4] = v7;
      v8 = "%{public}@ | {checkFilesystemAndDecidePurgeOrLookup} will attempt lookup for client request";
      goto LABEL_5;
    }
  }

  v9 = @"PerformLookup";
LABEL_15:

LABEL_16:
  v14 = [MADAutoAssetJobParam alloc];
  v15 = [(MADAutoAssetJob *)self _updateLatestSummary];
  v16 = [(MADAutoAssetJobParam *)v14 initWithSafeSummary:v15];

LABEL_17:
  v10 = [(MADAutoAssetJob *)self autoJobFSM];
  [v10 followupEvent:v9 withInfo:v16];
LABEL_48:
}

- (void)updateResultPropertiesWithDescriptor:(id)a3
{
  v32 = a3;
  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    [(MADAutoAssetJob *)self statusChange:@"updateResultPropertiesWithDescriptor" catalogAnomaly:6103 forReason:@"updateResultPropertiesWithDescriptor should never execute for set-job"];
  }

  else
  {
    v4 = [MAAutoAssetSelector alloc];
    v5 = [(MADAutoAssetJob *)self autoAssetSelector];
    v6 = [v5 assetType];
    v7 = [(MADAutoAssetJob *)self autoAssetSelector];
    v8 = [v7 assetSpecifier];
    v9 = [v32 assetVersion];
    v10 = [(MADAutoAssetJob *)self autoAssetSelector];
    v11 = [v10 downloadDecryptionKey];
    v12 = [v4 initForAssetType:v6 withAssetSpecifier:v8 matchingAssetVersion:v9 usingDecryptionKey:v11];
    [(MADAutoAssetJob *)self setResultSelector:v12];

    v13 = [MAAutoAssetInfoInstance alloc];
    v31 = [(MADAutoAssetJob *)self activeInstance];
    v14 = [v31 autoAssetClientName];
    v15 = [(MADAutoAssetJob *)self activeInstance];
    v16 = [v15 clientProcessName];
    v17 = [(MADAutoAssetJob *)self activeInstance];
    v18 = [v17 clientProcessID];
    v19 = [(MADAutoAssetJob *)self resultSelector];
    v20 = [(MADAutoAssetJob *)self activeInstance];
    v21 = [v20 frameworkInstanceUUID];
    v22 = [v13 initForClientName:v14 withProcessName:v16 withProcessID:v18 usingAssetSelector:v19 associatingFrameworkUUID:v21];
    [(MADAutoAssetJob *)self setResultInstance:v22];

    v23 = [v32 assetType];
    v24 = [v32 assetId];
    v25 = getAutoLocalUrlFromTypeAndIdWithPurpose(v23, v24, 2, @"auto");

    v26 = [MAAutoAssetInfoFound alloc];
    v27 = [(MADAutoAssetJob *)self resultSelector];
    v28 = [v32 metadata];
    v29 = [(MADAutoAssetJob *)self currentStatus];
    v30 = [v26 initForSelector:v27 withLocalContentURL:v25 withAssetAttributes:v28 reportingStatus:v29];
    [(MADAutoAssetJob *)self setResultFound:v30];
  }
}

- (void)updateSetResults:(id)a3 atomicInstanceDiscovered:(BOOL)a4 availableForUse:(BOOL)a5 downloading:(BOOL)a6 buildingResultSetFound:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v84 = a3;
  v12 = [(MADAutoAssetJob *)self autoJobFSM];
  v13 = [v12 extendedStateQueue];
  dispatch_assert_queue_V2(v13);

  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v23 = [(MADAutoAssetJob *)self autoJobFSM];
    v24 = [v23 diag];
    v25 = [[NSString alloc] initWithFormat:@"{%@:updateSetResults} should only be called for set-job", v84];
    [v24 trackAnomaly:@"AUTO-SET-JOB" forReason:v25 withResult:6103 withError:0];
LABEL_22:

    goto LABEL_24;
  }

  v14 = [(MADAutoAssetJob *)self currentSetNotifications];

  if (!v14)
  {
    v15 = objc_alloc_init(MANAutoAssetSetNotifications);
    [(MADAutoAssetJob *)self setCurrentSetNotifications:v15];
  }

  v16 = [(MADAutoAssetJob *)self currentSetNotifications];
  [v16 setAtomicInstanceDiscovered:v10];

  v17 = [(MADAutoAssetJob *)self currentSetNotifications];
  [v17 setAtomicInstanceAvailableForUse:v9];

  v18 = [(MADAutoAssetJob *)self currentSetNotifications];
  [v18 setDownloadPending:v8];

  v19 = [(MADAutoAssetJob *)self currentSetNotifications];
  [v19 setDownloadProgress:v8];

  v20 = [(MADAutoAssetJob *)self currentSetStatus];
  v21 = [v20 downloadProgress];

  v61 = [MANAutoAssetSetStatus alloc];
  v68 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v22 = [v68 clientDomainName];
  v67 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v81 = [v67 assetSetIdentifier];
  v66 = [(MADAutoAssetJob *)self setConfiguration];
  v80 = [v66 autoAssetEntries];
  if (v9)
  {
    v51 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    v75 = [(MADAutoAssetJob *)self newAtomicInstancesDownloadedForDescriptor:?];
  }

  else
  {
    v75 = 0;
  }

  v65 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v79 = [v65 catalogCachedAssetSetID];
  v64 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v78 = [v64 catalogDownloadedFromLive];
  v63 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v77 = [v63 catalogLastTimeChecked];
  v62 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v76 = [v62 catalogPostedDate];
  if (v10)
  {
    v50 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    v74 = [v50 discoveredAtomicInstance];
  }

  else
  {
    v74 = 0;
  }

  v82 = v22;
  v83 = v21;
  v70 = v9;
  v71 = v7;
  v69 = v10;
  if (v9)
  {
    v49 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    v60 = [v49 latestDowloadedAtomicInstanceEntries];
    v48 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    v73 = [v48 latestDownloadedAtomicInstance];
    v47 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    v72 = [v47 latestDowloadedAtomicInstanceEntries];
  }

  else
  {
    v60 = [(MADAutoAssetJob *)self foundSetNewerDiscoveredAtomicEntries];
    v72 = 0;
    v73 = 0;
  }

  v59 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v55 = [v59 downloadedCatalogCachedAssetSetID];
  v58 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v54 = [v58 downloadedCatalogDownloadedFromLive];
  v57 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v53 = [v57 downloadedCatalogLastTimeChecked];
  v56 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v26 = [v56 downloadedCatalogPostedDate];
  v27 = [(MADAutoAssetJob *)self currentSetNotifications];
  v52 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  v28 = [(MADAutoAssetJob *)self haveReceivedLookupResponse];
  v29 = [(MADAutoAssetJob *)self vendingAtomicInstanceForConfiguredEntries];
  v30 = [(MADAutoAssetJob *)self downloadingUserInitiated];
  v31 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v32 = [v31 downloadedNetworkBytes];
  v33 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  BYTE2(v46) = v30;
  BYTE1(v46) = v29;
  LOBYTE(v46) = v28;
  LOBYTE(v45) = 0;
  v34 = v60;
  v35 = -[MANAutoAssetSetStatus initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDownloadedAtomicInstanceFromPreSUStaging:withLatestDowloadedAtomicInstanceEntries:withPreviouslyVendedLockedAtomicInstance:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:](v61, "initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDownloadedAtomicInstanceFromPreSUStaging:withLatestDowloadedAtomicInstanceEntries:withPreviouslyVendedLockedAtomicInstance:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:", v82, v81, v80, v75, v79, v78, v77, v76, v74, v60, v73, v45, v72, 0, v55, v54, v53, v26, v27, v52, 0, 0, v46, v83, v32, [v33 downloadedFilesystemBytes], 0, 0, 0, 0);
  [(MADAutoAssetJob *)self setCurrentSetStatus:v35];

  if (v70)
  {

    v34 = v49;
  }

  if (v69)
  {
  }

  if (v70)
  {
  }

  v36 = [(MADAutoAssetJob *)self currentSetStatus];
  v37 = [v36 copy];
  v38 = [(MADAutoAssetJob *)self setJobInformation];
  [v38 setCurrentSetStatus:v37];

  if (v71)
  {
    v39 = [MANAutoAssetSetInfoFound alloc];
    v40 = [(MADAutoAssetJob *)self autoAssetSetIdentifier];
    v41 = [(MADAutoAssetJob *)self currentSetStatus];
    v42 = [(MANAutoAssetSetInfoFound *)v39 initForAssetSetIdentifier:v40 reportingStatus:v41];
    [(MADAutoAssetJob *)self setResultSetFound:v42];

    v43 = [(MADAutoAssetJob *)self resultSetFound];
    v44 = [(MADAutoAssetJob *)self setJobInformation];
    [v44 setFoundContent:v43];

    v24 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    v25 = [(MADAutoAssetJob *)self setJobInformation];
    [v25 setSetDescriptor:v24];
    v23 = v83;
    goto LABEL_22;
  }

  v23 = v83;
LABEL_24:
}

- (id)installedOnFilesystemWithVersion:(id)a3 fromLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetJob *)self autoJobFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    [(MADAutoAssetJob *)self statusChange:@"installedOnFilesystemWithVersion" catalogAnomaly:6103 forReason:@"installedOnFilesystemWithVersion should never execute for set-job"];
    v10 = 0;
  }

  else
  {
    v11 = [(MADAutoAssetJob *)self onFilesystemByVersion];
    v10 = [v11 safeObjectForKey:v6 ofClass:objc_opt_class()];

    v12 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(MADAutoAssetJob *)self onFilesystemByVersion];
      v14 = [v13 count];
      if (v10)
      {
        v15 = [v10 selectorName];
      }

      else
      {
        v15 = @"N";
      }

      v17 = 138544130;
      v18 = v7;
      v19 = 2048;
      v20 = v14;
      v21 = 2114;
      v22 = v6;
      v23 = 2114;
      v24 = v15;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "{%{public}@:installedOnFilesystemWithVersion} considering by-version | onFilesystem:%ld | assetVersion:%{public}@ | located:%{public}@", &v17, 0x2Au);
      if (v10)
      {
      }
    }
  }

  return v10;
}

- (id)latestInstalledOnFilesystem
{
  v3 = [(MADAutoAssetJob *)self autoJobFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    [(MADAutoAssetJob *)self statusChange:@"latestInstalledOnFilesystem" catalogAnomaly:6103 forReason:@"latestInstalledOnFilesystem should never execute for set-job"];
    v5 = 0;
    goto LABEL_29;
  }

  v6 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(MADAutoAssetJob *)self autoJobName];
    v8 = [(MADAutoAssetJob *)self onFilesystemByVersion];
    *buf = 138543618;
    v43 = v7;
    v44 = 2048;
    v45 = [v8 count];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ | {latestInstalledOnFilesystem} considering by-version | onFilesystem:%ld", buf, 0x16u);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = [(MADAutoAssetJob *)self onFilesystemByVersion];
  v36 = [v9 countByEnumeratingWithState:&v37 objects:v41 count:16];
  v10 = 0;
  v5 = 0;
  if (v36)
  {
    v35 = *v38;
    v34 = v9;
    do
    {
      for (i = 0; i != v36; i = i + 1)
      {
        if (*v38 != v35)
        {
          objc_enumerationMutation(v9);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [(MADAutoAssetJob *)self onFilesystemByVersion];
        v15 = [v14 safeObjectForKey:v12 ofClass:objc_opt_class()];

        v16 = [v15 assetVersion];
        if (v16)
        {
          v17 = v16;
          v18 = [v15 isOnFilesystem];

          if (v18)
          {
            v19 = [SUCoreRestoreVersion alloc];
            v20 = [v15 assetVersion];
            v21 = [v19 initWithRestoreVersion:v20];

            if (v5)
            {
              if (![v21 isComparable:v10])
              {
                goto LABEL_26;
              }

              if ([v21 compare:v10]== &dword_0 + 1)
              {
                v22 = v15;

                v23 = v21;
                v24 = _MADLog(@"AutoJob");
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  v25 = [(MADAutoAssetJob *)self autoJobName];
                  v26 = [v22 selectorName];
                  *buf = 138543618;
                  v43 = v25;
                  v44 = 2114;
                  v45 = v26;
                  v27 = v24;
                  v28 = "%{public}@ | {latestInstalledOnFilesystem} best candidate so far | selector:%{public}@";
                  goto LABEL_21;
                }
              }

              else
              {
                v24 = _MADLog(@"AutoJob");
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  v31 = [(MADAutoAssetJob *)self autoJobName];
                  v32 = [v15 selectorName];
                  *buf = 138543618;
                  v43 = v31;
                  v44 = 2114;
                  v45 = v32;
                  _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ | {latestInstalledOnFilesystem} not newer version | selector:%{public}@", buf, 0x16u);
                }

                v23 = v10;
                v22 = v5;
              }
            }

            else
            {
              v22 = v15;
              v23 = v21;

              v24 = _MADLog(@"AutoJob");
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v25 = [(MADAutoAssetJob *)self autoJobName];
                v26 = [v22 selectorName];
                *buf = 138543618;
                v43 = v25;
                v44 = 2114;
                v45 = v26;
                v27 = v24;
                v28 = "%{public}@ | {latestInstalledOnFilesystem} first candidate:%{public}@";
LABEL_21:
                _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 0x16u);
              }
            }

            v10 = v23;
            v5 = v22;
            v9 = v34;
            goto LABEL_26;
          }
        }

        v21 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [(MADAutoAssetJob *)self autoJobName];
          v30 = [v15 selectorName];
          *buf = 138543618;
          v43 = v29;
          v44 = 2114;
          v45 = v30;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ | {latestInstalledOnFilesystem} descriptor not valid for latest | selector:%{public}@", buf, 0x16u);
        }

LABEL_26:

        objc_autoreleasePoolPop(v13);
      }

      v36 = [v9 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v36);
  }

LABEL_29:

  return v5;
}

- (BOOL)isFoundAlreadyOnFilesystem:(BOOL *)a3
{
  v4 = self;
  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetJob *)v4 foundNewerPatch];
  if (v7)
  {
    v8 = [SUCoreRestoreVersion alloc];
    v9 = [(MADAutoAssetJob *)v4 foundNewerPatch];
    v10 = [v9 assetVersion];
    v103 = [v8 initWithRestoreVersion:v10];
  }

  else
  {
    v103 = 0;
  }

  v11 = [(MADAutoAssetJob *)v4 foundNewerFull];
  if (v11)
  {
    v12 = [SUCoreRestoreVersion alloc];
    v13 = [(MADAutoAssetJob *)v4 foundNewerFull];
    v14 = [v13 assetVersion];
    v102 = [v12 initWithRestoreVersion:v14];
  }

  else
  {
    v102 = 0;
  }

  v15 = [(MADAutoAssetJob *)v4 refreshOnFilesystemFromManagerPromotingIfStaged:1];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 assetVersion];

    if (v17)
    {
      if ([MADAutoAssetSecure doesDescriptorInvolvePersonalization:@"isFoundAlreadyOnFilesystem" forDescriptor:v16]&& [MADAutoAssetSecure isPersonalizationRequired:@"isFoundAlreadyOnFilesystem" forDescriptor:v16]&& ![(MADAutoAssetJob *)v4 stagerJob])
      {
        v18 = [(MADAutoAssetJob *)v4 tryPersonalizeDescriptors];
        [v18 addObject:v16];

        v19 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [(MADAutoAssetJob *)v4 autoJobName];
          v21 = [v16 selectorName];
          *buf = 138543618;
          v110 = v20;
          v111 = 2114;
          v112 = v21;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-SECURE][AUTO-PERSONALIZATION][SET-JOB-TRY] {isFoundAlreadyOnFilesystem} secure auto-asset just immediate-promoted from staged (requires personalization) | selector:%{public}@", buf, 0x16u);
        }
      }

      v22 = [(MADAutoAssetJob *)v4 onFilesystemByVersion];
      v23 = [v16 assetVersion];
      [v22 setSafeObject:v16 forKey:v23];
    }

    else
    {
      v48 = [(MADAutoAssetJob *)v4 autoJobFSM];
      v49 = [v48 diag];
      [v49 trackAnomaly:@"AUTO-JOB" forReason:@"{isFoundAlreadyOnFilesystem} immediatelyPromotedDescriptor without assetVersion" withResult:6111 withError:0];

      manager = v4->_manager;
      v51 = [v16 assetSpecifier];
      v52 = [v16 assetType];
      v53 = [(MADAnalyticsManager *)manager recordMobileAssetPromotionAttempt:v51 assetType:v52 assetVersion:@"N/A" osPromotion:1 successfullyPromoted:0 withReason:4];
    }

    v101 = 0;
    v54 = 0;
    v55 = v16;
LABEL_41:
    v56 = v55;
    v57 = [(MADAutoAssetJob *)v4 autoAssetSelector];
    v58 = [v57 assetType];
    v59 = [v56 assetId];
    v60 = getAutoLocalUrlFromTypeAndIdWithPurpose(v58, v59, 2, @"auto");

    [(MADAutoAssetJob *)v4 setNewerFoundAssetDescriptor:v56];
    [(MADAutoAssetJob *)v4 setDownloadingAssetDescriptor:v56];
    v61 = [(MADAutoAssetJob *)v4 currentStatus];
    v62 = [v61 notifications];
    [v62 setContentAvailableForUse:1];

    v63 = [v56 metadata];
    v64 = [(MADAutoAssetJob *)v4 currentStatus];
    [v64 setAvailableForUseAttributes:v63];

    v65 = [MAAutoAssetInfoFound alloc];
    v66 = [(MADAutoAssetJob *)v4 resultSelector];
    v67 = [v56 metadata];
    v68 = [(MADAutoAssetJob *)v4 currentStatus];
    v69 = [v65 initForSelector:v66 withLocalContentURL:v60 withAssetAttributes:v67 reportingStatus:v68];
    [(MADAutoAssetJob *)v4 setResultFound:v69];

    v70 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      v71 = [(MADAutoAssetJob *)v4 autoJobName];
      v72 = [v56 selectorName];
      *buf = 138543618;
      v110 = v71;
      v111 = 2114;
      v112 = v72;
      _os_log_impl(&dword_0, v70, OS_LOG_TYPE_DEFAULT, "%{public}@ | {isFoundAlreadyOnFilesystem} adopted already on filesystem | selector:%{public}@", buf, 0x16u);
    }

    v73 = 1;
    goto LABEL_44;
  }

  v24 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [(MADAutoAssetJob *)v4 autoJobName];
    v26 = [(MADAutoAssetJob *)v4 onFilesystemByVersion];
    *buf = 138543618;
    v110 = v25;
    v111 = 2048;
    v112 = [v26 count];
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ | {isFoundAlreadyOnFilesystem} considering by-version | onFilesystem:%ld", buf, 0x16u);
  }

  v98 = a3;

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v27 = v4;
  obj = [(MADAutoAssetJob *)v4 onFilesystemByVersion];
  v28 = [obj countByEnumeratingWithState:&v105 objects:v117 count:16];
  if (v28)
  {
    v29 = v28;
    v100 = 0;
    v101 = 0;
    v99 = 0;
    v30 = *v106;
    v31 = v103;
    do
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v106 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v105 + 1) + 8 * i);
        v34 = objc_autoreleasePoolPush();
        v35 = [(MADAutoAssetJob *)v4 onFilesystemByVersion];
        v36 = [v35 safeObjectForKey:v33 ofClass:objc_opt_class()];

        v37 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [(MADAutoAssetJob *)v4 autoJobName];
          v39 = [v36 selectorName];
          *buf = 138543618;
          v110 = v38;
          v111 = 2114;
          v112 = v39;
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ | {isFoundAlreadyOnFilesystem} considering candidate | selector:%{public}@", buf, 0x16u);

          v31 = v103;
        }

        v40 = [v36 assetVersion];
        if (v40)
        {
          v41 = v40;
          v42 = [v36 isOnFilesystem];

          if (v42)
          {
            v43 = [SUCoreRestoreVersion alloc];
            v44 = [v36 assetVersion];
            v45 = [v43 initWithRestoreVersion:v44];

            if (v31 && [v45 isComparable:v31] && !objc_msgSend(v45, "compare:", v31))
            {
              v46 = v36;

              BYTE4(v99) = 1;
              v101 = v46;
            }

            if (v102 && [v45 isComparable:v102] && !objc_msgSend(v45, "compare:", v102))
            {
              v47 = v36;

              LOBYTE(v99) = 1;
              v100 = v47;
            }
          }
        }

        objc_autoreleasePoolPop(v34);
      }

      v29 = [obj countByEnumeratingWithState:&v105 objects:v117 count:16];
    }

    while (v29);
  }

  else
  {
    v100 = 0;
    v101 = 0;
    v99 = 0;
  }

  if (v99 & 0x100000000) != 0 || (v99)
  {
    v84 = _MADLog(@"AutoJob");
    v85 = v84;
    v16 = 0;
    a3 = v98;
    if (BYTE4(v99) & v99)
    {
      if (!os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_69;
      }

      v86 = [(MADAutoAssetJob *)v4 autoJobName];
      v87 = [(MADAutoAssetJob *)v4 foundNewerPatch];
      v88 = [v87 summary];
      v89 = [(MADAutoAssetJob *)v4 foundNewerFull];
      v90 = [v89 summary];
      v91 = [(MADAutoAssetJob *)v4 _updateLatestSummary];
      *buf = 138544130;
      v110 = v86;
      v111 = 2114;
      v112 = v88;
      v113 = 2114;
      v114 = v90;
      v115 = 2114;
      v116 = v91;
      _os_log_impl(&dword_0, v85, OS_LOG_TYPE_ERROR, "%{public}@ | {isFoundAlreadyOnFilesystem} found multiple assets on filesystem that represent the same downloaded content | patch:%{public}@, full:%{public}@\nJOB-SUMMARY:%{public}@", buf, 0x2Au);

      v4 = v27;
    }

    else
    {
      if (!os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_69;
      }

      v88 = [(MADAutoAssetJob *)v4 autoJobName];
      if ((v99 & 0x100000000) != 0)
      {
        v95 = @"patch";
      }

      else
      {
        v95 = @"full";
      }

      if ((v99 & 0x100000000) != 0)
      {
        [(MADAutoAssetJob *)v4 foundNewerPatch];
      }

      else
      {
        [(MADAutoAssetJob *)v4 foundNewerFull];
      }
      v96 = ;
      v97 = [v96 selectorName];
      *buf = 138543874;
      v110 = v88;
      v111 = 2114;
      v112 = v95;
      v113 = 2114;
      v114 = v97;
      _os_log_impl(&dword_0, v85, OS_LOG_TYPE_DEFAULT, "%{public}@ | {isFoundAlreadyOnFilesystem} lookup found asset already on filesystem | type:%{public}@ | selector:%{public}@", buf, 0x20u);
    }

LABEL_69:
    v54 = v100;
    if (v100)
    {
      v55 = v100;
    }

    else
    {
      v55 = v101;
      if (!v101)
      {
        v73 = 1;
        v74 = 0;
        if (!a3)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    goto LABEL_41;
  }

  v76 = [(MADAutoAssetJob *)v4 foundNewerPatch];
  v16 = 0;
  a3 = v98;
  if (v76 && (v77 = v76, [(MADAutoAssetJob *)v4 foundNewerFull], v78 = objc_claimAutoreleasedReturnValue(), v78, v77, v78))
  {
    v56 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v79 = [(MADAutoAssetJob *)v4 autoJobName];
      v80 = [(MADAutoAssetJob *)v4 foundNewerPatch];
      v81 = [v80 selectorName];
      v82 = [(MADAutoAssetJob *)v4 foundNewerFull];
      v83 = [v82 selectorName];
      *buf = 138543874;
      v110 = v79;
      v111 = 2114;
      v112 = v81;
      v113 = 2114;
      v114 = v83;
      _os_log_impl(&dword_0, v56, OS_LOG_TYPE_DEFAULT, "%{public}@ | {isFoundAlreadyOnFilesystem} lookup found asset not already on filesystem | patch:%{public}@, full:%{public}@", buf, 0x20u);
    }
  }

  else
  {
    v56 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v92 = [(MADAutoAssetJob *)v4 autoJobName];
      v93 = [(MADAutoAssetJob *)v4 foundNewerFull];
      v94 = [v93 selectorName];
      *buf = 138543874;
      v110 = v92;
      v111 = 2114;
      v112 = @"full";
      v113 = 2114;
      v114 = v94;
      _os_log_impl(&dword_0, v56, OS_LOG_TYPE_DEFAULT, "%{public}@ | {isFoundAlreadyOnFilesystem} lookup found asset not already on filesystem | type:%{public}@ | selector:%{public}@", buf, 0x20u);
    }
  }

  v73 = 0;
  v54 = v100;
LABEL_44:
  v74 = v54;

  v54 = v101;
  if (a3)
  {
LABEL_45:
    *a3 = v16 != 0;
  }

LABEL_46:

  return v73;
}

- (id)refreshOnFilesystemFromManagerPromotingIfStaged:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  if ([(MADAutoAssetJob *)v4 autoAssetSetJob])
  {
    v7 = [(MADAutoAssetJob *)v4 newestDownloadedSetStatus];

    if (!v7)
    {
      v8 = [(MADAutoAssetJob *)v4 autoAssetSetDescriptor];
      v9 = [MADAutoAssetControlManager newestDownloadedForSetDescriptor:v8];
      [(MADAutoAssetJob *)v4 setNewestDownloadedSetStatus:v9];
    }

    v10 = 0;
  }

  else
  {
    v11 = [MAAutoAssetSelector alloc];
    v12 = [(MADAutoAssetJob *)v4 autoAssetSelector];
    v13 = [v12 assetType];
    v14 = [(MADAutoAssetJob *)v4 autoAssetSelector];
    v15 = [v14 assetSpecifier];
    v16 = [v11 initForAssetType:v13 withAssetSpecifier:v15];

    v17 = [(MADAutoAssetJob *)v4 resultSelector];
    v43 = v17;
    v44 = v16;
    if (v3)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v54 = 0;
    v19 = [MADAutoAssetControlManager loadDescriptorsForJobSelector:v16 promotingIfCurrentlyStaged:v18 immediatelyPromotedDescriptor:&v54];
    v42 = v54;
    v45 = objc_alloc_init(NSMutableDictionary);
    v46 = +[NSFileManager defaultManager];
    v20 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(MADAutoAssetJob *)v4 autoJobName];
      v22 = [v19 count];
      v23 = [v44 summary];
      v24 = [v43 summary];
      *buf = 138544130;
      v57 = v21;
      v58 = 2048;
      v59 = v22;
      v60 = 2114;
      v61 = v23;
      v62 = 2114;
      v63 = v24;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ | {refreshOnFilesystemFromManagerPromotingIfStaged} auto-control-manager known descriptor count:%ld | specifierSelector:%{public}@, versionSelector:%{public}@", buf, 0x2Au);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v25 = v19;
    v26 = [v25 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v51;
      p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
      v47 = *v51;
      v48 = v4;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v51 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v50 + 1) + 8 * i);
          context = objc_autoreleasePoolPush();
          v32 = [v25 safeObjectForKey:v31 ofClass:objc_opt_class()];
          v33 = _MADLog(@"AutoJob");
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = [(MADAutoAssetJob *)v4 autoJobName];
            v35 = v27;
            v36 = p_weak_ivar_lyt;
            v37 = v25;
            if ([v32 isOnFilesystem])
            {
              v38 = @"Y";
            }

            else
            {
              v38 = @"N";
            }

            v39 = [v32 selectorName];
            *buf = 138544130;
            v57 = v34;
            v58 = 2114;
            v59 = v38;
            v25 = v37;
            p_weak_ivar_lyt = v36;
            v27 = v35;
            v60 = 2114;
            v61 = v31;
            v62 = 2114;
            v63 = v39;
            _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ | {refreshOnFilesystemFromManagerPromotingIfStaged} isOnFilesystem:%{public}@ | assetVersion:%{public}@ | candidate:%{public}@", buf, 0x2Au);

            v4 = v48;
            v28 = v47;
          }

          if ([v32 isOnFilesystem])
          {
            v40 = [MADAutoAssetControlManager localAssetURLForDescriptor:v32 fromLocation:@"refreshOnFilesystemFromManagerPromotingIfStaged"];
            if (v40 && [v46 fileExistsAtPath:v40])
            {
              [v45 setSafeObject:v32 forKey:v31];
            }
          }

          objc_autoreleasePoolPop(context);
        }

        v27 = [v25 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v27);
    }

    [(MADAutoAssetJob *)v4 setOnFilesystemByVersion:v45];
    v10 = v42;
  }

  return v10;
}

- (void)refreshFoundToManager
{
  v3 = [(MADAutoAssetJob *)self autoJobFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {

    [(MADAutoAssetJob *)self statusChange:@"refreshFoundToManager" catalogAnomaly:6103 forReason:@"refreshFoundToManager should never execute for set-job"];
    return;
  }

  v5 = [MAAutoAssetSelector alloc];
  v6 = [(MADAutoAssetJob *)self autoAssetSelector];
  v7 = [v6 assetType];
  v8 = [(MADAutoAssetJob *)self autoAssetSelector];
  v9 = [v8 assetSpecifier];
  v44 = [v5 initForAssetType:v7 withAssetSpecifier:v9];

  v10 = [(MADAutoAssetJob *)self foundNewerPatch];

  if (v10)
  {
    v11 = [(MADAutoAssetJob *)self onFilesystemByVersion];
    v12 = [(MADAutoAssetJob *)self foundNewerPatch];
    v13 = [v12 assetVersion];
    v10 = [v11 safeObjectForKey:v13 ofClass:objc_opt_class()];

    if (v10)
    {
      v14 = [(MADAutoAssetJob *)self foundNewerPatch];
      [v14 setIsOnFilesystem:1];

      if ([(MADAutoAssetJob *)self stagerJob])
      {
        goto LABEL_13;
      }

      v15 = [(MADAutoAssetJob *)self foundNewerPatch];
      v16 = [(MADAutoAssetJob *)self currentJobInformation:0];
      v17 = [(MADAutoAssetJob *)self firstClientName];
      [MADAutoAssetControlManager persistForJobSelector:v44 persistingJobDescriptor:v15 withJobInformation:v16 withFirstClientName:v17];
    }

    else
    {
      if ([(MADAutoAssetJob *)self stagerJob])
      {
        v10 = 0;
        goto LABEL_13;
      }

      v18 = [MAAutoAssetSelector alloc];
      v19 = [(MADAutoAssetJob *)self foundNewerPatch];
      v20 = [v19 assetType];
      v21 = [(MADAutoAssetJob *)self foundNewerPatch];
      v22 = [v21 assetSpecifier];
      v23 = [(MADAutoAssetJob *)self foundNewerPatch];
      v24 = [v23 assetVersion];
      v15 = [v18 initForAssetType:v20 withAssetSpecifier:v22 matchingAssetVersion:v24];

      v16 = [(MADAutoAssetJob *)self foundNewerPatch];
      v17 = [(MADAutoAssetJob *)self currentJobInformation:0];
      v25 = [(MADAutoAssetJob *)self firstClientName];
      [MADAutoAssetControlManager persistForJobSelector:v15 persistingJobDescriptor:v16 withJobInformation:v17 withFirstClientName:v25];

      v10 = 0;
    }
  }

LABEL_13:
  v26 = [(MADAutoAssetJob *)self foundNewerFull];

  if (v26)
  {
    v27 = [(MADAutoAssetJob *)self onFilesystemByVersion];
    v28 = [(MADAutoAssetJob *)self foundNewerFull];
    v29 = [v28 assetVersion];
    v30 = [v27 safeObjectForKey:v29 ofClass:objc_opt_class()];

    if (v30)
    {
      v31 = [(MADAutoAssetJob *)self foundNewerFull];
      [v31 setIsOnFilesystem:1];

      if ([(MADAutoAssetJob *)self stagerJob])
      {
LABEL_18:
        v10 = v30;
        goto LABEL_22;
      }

      v32 = [(MADAutoAssetJob *)self foundNewerFull];
      v33 = [(MADAutoAssetJob *)self currentJobInformation:0];
      v34 = [(MADAutoAssetJob *)self firstClientName];
      [MADAutoAssetControlManager persistForJobSelector:v44 persistingJobDescriptor:v32 withJobInformation:v33 withFirstClientName:v34];
    }

    else
    {
      v35 = [(MADAutoAssetJob *)self foundNewerPatch];

      if (v35 || [(MADAutoAssetJob *)self stagerJob])
      {
        v10 = 0;
        goto LABEL_22;
      }

      v36 = [MAAutoAssetSelector alloc];
      v37 = [(MADAutoAssetJob *)self foundNewerFull];
      v38 = [v37 assetType];
      v39 = [(MADAutoAssetJob *)self foundNewerFull];
      v40 = [v39 assetSpecifier];
      v41 = [(MADAutoAssetJob *)self foundNewerFull];
      v42 = [v41 assetVersion];
      v32 = [v36 initForAssetType:v38 withAssetSpecifier:v40 matchingAssetVersion:v42];

      v33 = [(MADAutoAssetJob *)self foundNewerFull];
      v34 = [(MADAutoAssetJob *)self currentJobInformation:0];
      v43 = [(MADAutoAssetJob *)self firstClientName];
      [MADAutoAssetControlManager persistForJobSelector:v32 persistingJobDescriptor:v33 withJobInformation:v34 withFirstClientName:v43];

      v30 = 0;
    }

    goto LABEL_18;
  }

LABEL_22:
}

- (void)refreshDownloadedToManager:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [[NSString alloc] initWithFormat:@"%@:refreshDownloadedToManager", v4];
  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v16 = [(MADAutoAssetJob *)self resultFound];

    if (!v16)
    {
      v14 = _MADLog(@"AutoJob");
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }

      v35 = [(MADAutoAssetJob *)self autoJobName];
      v15 = [(MADAutoAssetJob *)self _updateLatestSummary];
      *buf = 138543874;
      v72 = v7;
      v73 = 2114;
      v74 = v35;
      v75 = 2114;
      v76 = v15;
      v36 = "{%{public}@} (%{public}@)\n[DOWNLOADED-TO-MANAGER] no result-found for just-downloaded asset\nJOB-SUMMARY:%{public}@";
      goto LABEL_16;
    }

    [(MADAutoAssetJob *)self statusChangeReportCurrent:0];
    if ([(MADAutoAssetJob *)self stagerJob])
    {
      goto LABEL_42;
    }

    v17 = [MADAutoAssetDescriptor alloc];
    v18 = [(MADAutoAssetJob *)self autoAssetSelector];
    v19 = [v18 assetType];
    v20 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    v21 = [v20 metadata];
    v22 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    v70 = 0;
    v23 = [(MADAutoAssetDescriptor *)v17 initForAssetType:v19 fromMetadata:v21 fromBaseDescriptor:v22 invalidReasons:&v70];
    v14 = v70;

    if (!v23)
    {
      v33 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v37 = [(MADAutoAssetJob *)self autoJobName];
        v38 = v37;
        v39 = @"NOT-PROVIDED";
        *buf = 138543874;
        v72 = v7;
        if (v14)
        {
          v39 = v14;
        }

        v73 = 2114;
        v74 = v37;
        v75 = 2114;
        v76 = v39;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "{%{public}@} (%{public}@)\n[DOWNLOADED-TO-MANAGER] unable to create asset-descriptor for just-downloaded asset | invalid:%{public}@", buf, 0x20u);
      }

      goto LABEL_40;
    }

    v24 = [(MADAutoAssetJob *)self currentStatus];
    v25 = [v24 downloadedAsPatch];

    if (v25)
    {
      v26 = [(MADAutoAssetJob *)self baseForPatch];

      if (v26)
      {
        v27 = [MAAutoAssetSelector alloc];
        v68 = [(MADAutoAssetJob *)self baseForPatch];
        v28 = [v68 assetType];
        v29 = [(MADAutoAssetJob *)self baseForPatch];
        v30 = [v29 assetSpecifier];
        v31 = [(MADAutoAssetJob *)self baseForPatch];
        v32 = [v31 assetVersion];
        v33 = [v27 initForAssetType:v28 withAssetSpecifier:v30 matchingAssetVersion:v32];

        v34 = v68;
      }

      else
      {
        v34 = [(MADAutoAssetJob *)self autoJobFSM];
        v28 = [v34 diag];
        v40 = [NSString alloc];
        v29 = [(MADAutoAssetJob *)self autoJobName];
        v30 = [v40 initWithFormat:@"{%@} (%@)\n[DOWNLOADED-TO-MANAGER]  downloadedAsPatch yet no baseForPatch", v7, v29];
        [v28 trackAnomaly:@"AUTO-JOB" forReason:v30 withResult:6111 withError:0];
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
    }

    [v23 setIsOnFilesystem:1];
    [v23 setNeverBeenLocked:1];
    [v23 setDownloadUserInitiated:{-[MADAutoAssetJob downloadingUserInitiated](self, "downloadingUserInitiated")}];
    v41 = [(MADAutoAssetJob *)self currentStatus];
    [v23 setDownloadedNetworkBytes:{objc_msgSend(v41, "downloadedNetworkBytes")}];

    v42 = [(MADAutoAssetJob *)self currentStatus];
    [v23 setDownloadedFilesystemBytes:{objc_msgSend(v42, "downloadedFilesystemBytes")}];

    v43 = [(MADAutoAssetJob *)self currentStatus];
    [v23 setIsPatch:{objc_msgSend(v43, "downloadedAsPatch")}];

    [v23 setPatchedFromBaseSelector:v33];
    if (v33)
    {
      v44 = [(MADAutoAssetJob *)self baseForPatch];
      [v23 setPatchedFromBaseFilesystemBytes:{objc_msgSend(v44, "downloadedFilesystemBytes")}];
    }

    else
    {
      [v23 setPatchedFromBaseFilesystemBytes:0];
    }

    v45 = [(MADAutoAssetJob *)self currentStatus];
    [v23 setPatchingAttempted:{objc_msgSend(v45, "patchingAttempted")}];

    v46 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    [v23 setStagedPriorToAvailable:{objc_msgSend(v46, "stagedPriorToAvailable")}];

    v47 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    v48 = [v47 stagedFromOSVersion];
    [v23 setStagedFromOSVersion:v48];

    v49 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    v50 = [v49 stagedFromBuildVersion];
    [v23 setStagedFromBuildVersion:v50];

    v51 = [(MADAutoAssetJob *)self currentStatus];
    v52 = [v51 patchingAttemptError];
    [v23 setPatchingAttemptError:v52];

    v53 = objc_opt_self();
    v69 = v33;
    if ([v53 autoAssetSetJob])
    {
    }

    else
    {
      v54 = [(MADAutoAssetJob *)self autoAssetSelector];
      v55 = [v54 assetVersion];

      if (v55)
      {
LABEL_32:
        v56 = [(MADAutoAssetJob *)self currentStatus];
        v57 = [v56 notifications];
        [v57 setContentAvailableForUse:1];

        v58 = [v23 metadata];
        v59 = [(MADAutoAssetJob *)self currentStatus];
        [v59 setAvailableForUseAttributes:v58];

        if ([MADAutoAssetSecure doesDescriptorInvolvePersonalization:v7 forDescriptor:v23]&& [MADAutoAssetSecure isPersonalizationRequired:v7 forDescriptor:v23])
        {
          goto LABEL_40;
        }

        v60 = [(MADAutoAssetJob *)self resultFound];
        v61 = [v60 fullAssetSelector];
        v62 = [(MADAutoAssetJob *)self wasPatched];
        v63 = [(MADAutoAssetJob *)self currentJobInformation:0];
        v64 = [(MADAutoAssetJob *)self firstClientName];
        [MADAutoAssetControlManager persistForJobSelector:v61 persistingJobDescriptor:v23 justPatched:v62 withJobInformation:v63 withFirstClientName:v64];

        if ([v23 stagedPriorToAvailable])
        {
          v65 = _MADLog(@"AutoJob");
          if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
LABEL_39:
            v33 = v69;

LABEL_40:
            goto LABEL_41;
          }

          v66 = [(MADAutoAssetJob *)self autoJobName];
          v67 = [v23 selectorName];
          *buf = 138543874;
          v72 = v7;
          v73 = 2114;
          v74 = v66;
          v75 = 2114;
          v76 = v67;
          _os_log_impl(&dword_0, v65, OS_LOG_TYPE_DEFAULT, "{%{public}@} (%{public}@)\n[DOWNLOADED-TO-MANAGER] asset-version just immediate-promoted | selector:%{public}@", buf, 0x20u);
        }

        else
        {
          v65 = [v23 assetType];
          v67 = [v23 assetSpecifier];
          [MADAutoAssetControlManager postNotificationName:@"ASSET_VERSION_DOWNLOADED" forAssetType:v65 forAssetSpecifier:v67 fromModule:@"AUTO-JOB" fromLocation:v7];
        }

        goto LABEL_39;
      }
    }

    [v23 setFoundByLookupWithoutAssetVersion:1];
    goto LABEL_32;
  }

  v8 = [(MADAutoAssetJob *)self resultSetFound];

  if (!v8)
  {
    v14 = _MADLog(@"AutoJob");
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    v35 = [(MADAutoAssetJob *)self autoJobName];
    v15 = [(MADAutoAssetJob *)self _updateLatestSummary];
    *buf = 138543874;
    v72 = v7;
    v73 = 2114;
    v74 = v35;
    v75 = 2114;
    v76 = v15;
    v36 = "{%{public}@} (%{public}@)\n[DOWNLOADED-TO-MANAGER] no result-set-found for just-downloaded auto-asset of auto-asset-set\nJOB-SUMMARY:%{public}@";
LABEL_16:
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, v36, buf, 0x20u);

    goto LABEL_17;
  }

  [(MADAutoAssetJob *)self statusChangeReportCurrent:0];
  v9 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v10 = [v9 copy];
  v11 = [(MADAutoAssetJob *)self currentSetStatus];
  v12 = [(MADAutoAssetJob *)self firstClientName];
  v13 = [MADAutoAssetControlManager persistSetJobDescriptor:v10 withCurrentSetStatus:v11 withFirstClientName:v12 fromLocation:v7];

  if (v13)
  {
    [(MADAutoAssetJob *)self setBecameLatestToVend:1];
    v14 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(MADAutoAssetJob *)self autoJobName];
      *buf = 138543618;
      v72 = v7;
      v73 = 2114;
      v74 = v15;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "{%{public}@} (%{public}@)\n[DOWNLOADED-TO-MANAGER] set-job just became set-configuration's latest-to-vend", buf, 0x16u);
LABEL_17:
    }

LABEL_41:
  }

LABEL_42:
}

- (BOOL)isAtomicEntry:(id)a3 alreadyInAtomicEntries:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableDictionary);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v18 = v5;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [v12 fullAssetSelector];
        v15 = [v14 persistedEntryID];

        v16 = [v7 safeObjectForKey:v15 ofClass:objc_opt_class()];
        if (v16)
        {

          objc_autoreleasePoolPop(v13);
          LOBYTE(v9) = 1;
          goto LABEL_11;
        }

        [v7 setSafeObject:v12 forKey:v15];

        objc_autoreleasePoolPop(v13);
      }

      v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

LABEL_11:
    v5 = v18;
  }

  return v9;
}

- (BOOL)_commitPrePersonalized:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MADAutoAssetJob *)self autoJobFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(MADAutoAssetJob *)self prePersonalizedSelectors];
  if (![v9 count])
  {

LABEL_7:
    v12 = 0;
    v13 = 1;
    if (!a4)
    {
      goto LABEL_9;
    }

LABEL_8:
    v20 = v12;
    *a4 = v12;
    goto LABEL_9;
  }

  v10 = [(MADAutoAssetJob *)self tryPersonalizeFailed];

  if (v10)
  {
    goto LABEL_7;
  }

  v11 = [(MADAutoAssetJob *)self prePersonalizedSelectors];
  v12 = [MADAutoAssetSecure commitPrePersonalizedSync:v6 committingSelectors:v11];

  v13 = v12 == 0;
  v14 = _MADLog(@"AutoJob");
  v15 = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = [(MADAutoAssetJob *)self autoJobName];
      v17 = [(MADAutoAssetJob *)self prePersonalizedSelectors];
      v18 = [v17 count];
      v19 = [v12 checkedDescription];
      v25 = 138543874;
      v26 = v16;
      v27 = 2048;
      v28 = v18;
      v29 = 2114;
      v30 = v19;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-SECURE][AUTO-PERSONALIZATION][SET-JOB-PRE] failure committing pre-personalized | prePersonalizedSelectors:%ld | error:%{public}@", &v25, 0x20u);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [(MADAutoAssetJob *)self autoJobName];
    v23 = [(MADAutoAssetJob *)self prePersonalizedSelectors];
    v25 = 138543618;
    v26 = v22;
    v27 = 2048;
    v28 = [v23 count];
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-SECURE][AUTO-PERSONALIZATION][SET-JOB-PRE] committed pre-personalized | prePersonalizedSelectors:%ld", &v25, 0x16u);
  }

  v24 = objc_alloc_init(NSMutableArray);
  [(MADAutoAssetJob *)self setPrePersonalizedSelectors:v24];

  if (a4)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v13;
}

- (void)downloadCatalog:(id)a3
{
  v9 = a3;
  v4 = [(MADAutoAssetJob *)self autoJobFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  if (![(MADAutoAssetJob *)self rampingForeground])
  {
    if (-[MADAutoAssetJob rampingForegroundLatched](self, "rampingForegroundLatched") || (-[MADAutoAssetJob aggregatedClientAssetPolicy](self, "aggregatedClientAssetPolicy"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 userInitiated], v6, v7))
    {
      [(MADAutoAssetJob *)self setRampingForeground:1];
    }
  }

  v8 = [(MADAutoAssetJob *)self newCatalogDownloadOptions];
  [(MADAutoAssetJob *)self setCatalogDownloadOptions:v8];

  [(MADAutoAssetJob *)self requestDownloadManagerCatalogLookup:v9];
}

- (id)newCatalogDownloadOptions
{
  v3 = [(MADAutoAssetJob *)self autoJobFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = objc_alloc_init(MAMsuDownloadOptions);
  v6 = [(MADAutoAssetJob *)self refreshOnFilesystemFromManagerPromotingIfStaged:0];
  v7 = objc_alloc_init(NSMutableDictionary);
  [v5 setAdditionalServerParams:v7];

  v8 = [(MADAutoAssetJob *)self newSessionID];
  [(MADAutoAssetJob *)self setCheckUUID:v8];

  v9 = [(MADAutoAssetJob *)self checkUUID];
  [v5 setSessionId:v9];

  v10 = [v5 additionalServerParams];
  v11 = [(MADAutoAssetJob *)self checkUUID];
  [v10 setSafeObject:v11 forKey:@"SessionId"];

  LODWORD(v10) = [MADAutoAssetControlManager preferenceAsIfBackgroundOrUse:[(MADAutoAssetJob *)self rampingForeground]^ 1];
  v12 = [v5 additionalServerParams];
  v13 = v12;
  if (v10)
  {
    v14 = @"Background";
  }

  else
  {
    v14 = @"Foreground";
  }

  [v12 setSafeObject:v14 forKey:@"DeviceCheck"];

  [v5 setTimeoutIntervalForResource:120];
  [v5 setDiscretionary:0];
  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v15 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
    v16 = ([v15 allowCheckDownloadOverCellular] & 1) != 0 || -[MADAutoAssetJob configuredToCellular](self, "configuredToCellular") || -[MADAutoAssetJob downloadingCellular](self, "downloadingCellular") || -[MADAutoAssetJob boostedToCellular](self, "boostedToCellular");
    [v5 setAllowsCellularAccess:v16];

    v17 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
    v18 = ([v17 allowCheckDownloadOverExpensive] & 1) != 0 || -[MADAutoAssetJob configuredToExpensive](self, "configuredToExpensive") || -[MADAutoAssetJob downloadingExpensive](self, "downloadingExpensive") || -[MADAutoAssetJob boostedToExpensive](self, "boostedToExpensive");
    [v5 setAllowsExpensiveAccess:v18];

    v19 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
    [v5 setRequiresPowerPluggedIn:{objc_msgSend(v19, "allowCheckDownloadOnBattery") ^ 1}];

    v20 = [(MADAutoAssetJob *)self autoAssetSetAssetType];
    [v5 setCanUseLocalCacheServer:isDisallowedFromContentCaching(v20) ^ 1];
  }

  else
  {
    [v5 setAllowsCellularAccess:1];
    [v5 setAllowsExpensiveAccess:1];
    [v5 setRequiresPowerPluggedIn:0];
    v20 = [(MADAutoAssetJob *)self autoAssetSelector];
    v21 = [v20 assetType];
    [v5 setCanUseLocalCacheServer:isDisallowedFromContentCaching(v21) ^ 1];
  }

  [v5 setPrefersInfraWiFi:1];
  [v5 setLiveServerCatalogOnly:0];
  [v5 setLiveServerCatalogOnlyIsOverridden:0];
  [v5 setRequestedProductVersion:0];
  if (__isPlatformVersionAtLeast(2, 18, 4, 0) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 setRequestedBuildVersion:0];
  }

  [v5 setDelayPeriod:0];
  [v5 setSupervised:0];
  [v5 setPrerequisiteBuildVersion:0];
  [v5 setPrerequisiteProductVersion:0];
  [v5 setPrerequisiteReleaseType:0];
  [v5 setPrerequisiteReleaseTypeIsOverridden:0];
  [v5 setLiveAssetAudienceUUID:0];
  [v5 setPurpose:@"auto"];
  v22 = [v5 additionalServerParams];
  [v22 setSafeObject:@"true" forKey:@"RequestingMAAutoAsset"];

  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v23 = [v5 additionalServerParams];
    v24 = [(MADAutoAssetJob *)self autoAssetSelector];
    v25 = [v24 assetSpecifier];
    [v23 setSafeObject:v25 forKey:@"AssetSpecifier"];

    v26 = [(MADAutoAssetJob *)self autoAssetSelector];
    v27 = [v26 assetVersion];

    if (v27)
    {
      v28 = [v5 additionalServerParams];
      v29 = [(MADAutoAssetJob *)self autoAssetSelector];
      v30 = [v29 assetVersion];
      [v28 setSafeObject:v30 forKey:@"RequestedAssetVersion"];
    }

    v31 = [(MADAutoAssetJob *)self latestInstalledOnFilesystem];
    [(MADAutoAssetJob *)self setBaseForPatch:v31];

    v32 = [(MADAutoAssetJob *)self baseForPatch];

    if (v32)
    {
      v33 = [(MADAutoAssetJob *)self baseForPatch];
      v34 = [v33 assetVersion];
      [(MADAutoAssetJob *)self setLatestInstalledAssetVersion:v34];

      v35 = [(MADAutoAssetJob *)self baseForPatch];
      v36 = [v35 build];
      [(MADAutoAssetJob *)self setLatestInstalledAssetBuild:v36];

      v37 = [v5 additionalServerParams];
      v38 = [(MADAutoAssetJob *)self latestInstalledAssetVersion];
      [v37 setSafeObject:v38 forKey:@"InstalledAssetVersion"];

      v39 = [v5 additionalServerParams];
      v40 = [(MADAutoAssetJob *)self latestInstalledAssetBuild];
      [v39 setSafeObject:v40 forKey:@"InstalledAssetBuild"];
    }
  }

  [v5 setAllowSameVersion:{-[MADAutoAssetJob autoAssetSetJob](self, "autoAssetSetJob")}];
  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v41 = [(MADAutoAssetJob *)self baseForPatch];
    if (v41)
    {
      v42 = v41;
      v43 = [(MADAutoAssetJob *)self determiningAssetContent];

      if (v43)
      {
        [v5 setAllowSameVersion:1];
      }
    }
  }

  v44 = [v5 additionalServerParams];
  if ([v5 allowSameVersion])
  {
    v45 = @"true";
  }

  else
  {
    v45 = @"false";
  }

  [v44 setSafeObject:v45 forKey:@"AllowSameBuildVersion"];

  v46 = [v5 additionalServerParams];
  if ([v5 allowSameVersion])
  {
    v47 = @"true";
  }

  else
  {
    v47 = @"false";
  }

  [v46 setSafeObject:v47 forKey:@"AllowSameAssetVersion"];

  v48 = [v5 additionalServerParams];
  v49 = +[SUCoreDevice sharedDevice];
  v50 = [v49 productVersion];
  [v48 setSafeObject:v50 forKey:@"OSVersion"];

  v51 = [v5 additionalServerParams];
  v52 = +[SUCoreDevice sharedDevice];
  v53 = [v52 productVersion];
  [v51 setSafeObject:v53 forKey:@"ProductVersion"];

  if ([(MADAutoAssetJob *)self stagerJob])
  {
    v54 = [v5 additionalServerParams];
    [v54 setSafeObject:@"true" forKey:@"IsPreSoftwareUpdateStaging"];

    v55 = [(MADAutoAssetJob *)self stagerAssetTargetOSVersion];

    if (v55)
    {
      v56 = [v5 additionalServerParams];
      v57 = [(MADAutoAssetJob *)self stagerAssetTargetOSVersion];
      [v56 setSafeObject:v57 forKey:@"OSVersion"];
    }

    else
    {
      v56 = [(MADAutoAssetJob *)self autoJobFSM];
      v57 = [v56 diag];
      [v57 trackAnomaly:@"AUTO-JOB(STAGER)" forReason:@"{newCatalogDownloadOptions} no stagerAssetTargetOSVersion" withResult:6111 withError:0];
    }

    v58 = [(MADAutoAssetJob *)self stagerAssetTargetBuildVersion];

    if (v58)
    {
      v59 = [v5 additionalServerParams];
      v60 = [(MADAutoAssetJob *)self stagerAssetTargetBuildVersion];
      [v59 setSafeObject:v60 forKey:@"BuildVersion"];
    }

    else
    {
      v59 = [(MADAutoAssetJob *)self autoJobFSM];
      v60 = [v59 diag];
      [v60 trackAnomaly:@"AUTO-JOB(STAGER)" forReason:@"{newCatalogDownloadOptions} no stagerAssetTargetBuildVersion" withResult:6111 withError:0];
    }

    v61 = [(MADAutoAssetJob *)self stagerAssetTargetTrainName];

    if (v61)
    {
      v62 = [v5 additionalServerParams];
      v63 = [(MADAutoAssetJob *)self stagerAssetTargetTrainName];
      [v62 setSafeObject:v63 forKey:@"TrainName"];
    }

    v64 = [(MADAutoAssetJob *)self stagerAssetTargetRestoreVersion];

    if (v64)
    {
      v65 = [v5 additionalServerParams];
      v66 = [(MADAutoAssetJob *)self stagerAssetTargetRestoreVersion];
      [v65 setSafeObject:v66 forKey:@"RestoreVersion"];
    }
  }

  v67 = [v5 additionalServerParams];
  v68 = supportedAssetFormatsArray();
  [v67 setSafeObject:v68 forKey:@"SupportedAssetFormats"];

  return v5;
}

- (id)newAssetDownloadOptions
{
  v3 = [(MADAutoAssetJob *)self autoJobFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = objc_alloc_init(MAMsuDownloadOptions);
  v6 = objc_alloc_init(NSMutableDictionary);
  [v5 setAdditionalServerParams:v6];

  v7 = [(MADAutoAssetJob *)self checkUUID];
  [v5 setSessionId:v7];

  v8 = [v5 additionalServerParams];
  v9 = [(MADAutoAssetJob *)self checkUUID];
  [v8 setSafeObject:v9 forKey:@"SessionId"];

  [v5 setDiscretionary:1];
  if ([(MADAutoAssetJob *)self configuredToUserInitiated]|| [(MADAutoAssetJob *)self downloadingUserInitiated]|| [(MADAutoAssetJob *)self boostedToUserInitiated])
  {
    [v5 setDiscretionary:0];
  }

  else
  {
    v15 = [(MADAutoAssetJob *)self aggregatedClientAssetPolicy];

    if (v15)
    {
      v16 = [(MADAutoAssetJob *)self aggregatedClientAssetPolicy];
      [v5 setDiscretionary:{objc_msgSend(v16, "userInitiated") ^ 1}];
    }
  }

  if (-[MADAutoAssetJob schedulerTriggerReceived](self, "schedulerTriggerReceived") && [v5 discretionary] && +[MADAutoAssetControlManager preferenceScheduledAlwaysNonDiscretionary](MADAutoAssetControlManager, "preferenceScheduledAlwaysNonDiscretionary"))
  {
    [v5 setDiscretionary:0];
    v10 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(MADAutoAssetJob *)self autoJobName];
      *buf = 138543362;
      v41 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ | {newAssetDownloadOptions} overriding scheduled job to be non-discretionary", buf, 0xCu);
    }
  }

  if (([v5 discretionary] & 1) == 0)
  {
    [(MADAutoAssetJob *)self setConfiguredToUserInitiated:1];
    [(MADAutoAssetJob *)self latchWhetherDownloadingUserInitiated];
    if ([(MADAutoAssetJob *)self stagerJob])
    {
      if (objc_opt_respondsToSelector())
      {
        if (__isPlatformVersionAtLeast(2, 17, 0, 0))
        {
          [v5 setDisableUI:1];
          v12 = _MADLog(@"AutoJob");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [(MADAutoAssetJob *)self autoJobName];
            *buf = 138543362;
            v41 = v13;
            v14 = "%{public}@ | {newAssetDownloadOptions} pre-SU-staging download | UI disabled";
LABEL_23:
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);
          }
        }

        else
        {
          v12 = _MADLog(@"AutoJob");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [(MADAutoAssetJob *)self autoJobName];
            *buf = 138543362;
            v41 = v13;
            v14 = "%{public}@ | {newAssetDownloadOptions} pre-SU-staging download | support for UI disabled not available";
            goto LABEL_23;
          }
        }
      }

      else
      {
        v12 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [(MADAutoAssetJob *)self autoJobName];
          *buf = 138543362;
          v41 = v13;
          v14 = "%{public}@ | {newAssetDownloadOptions} pre-SU-staging download | no selector (disableUI) so unable to indicate UI disabled";
          goto LABEL_23;
        }
      }
    }
  }

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v17 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
    v18 = ([v17 allowCheckDownloadOverCellular] & 1) != 0 || -[MADAutoAssetJob configuredToCellular](self, "configuredToCellular") || -[MADAutoAssetJob downloadingCellular](self, "downloadingCellular") || -[MADAutoAssetJob boostedToCellular](self, "boostedToCellular");
    [v5 setAllowsCellularAccess:v18];

    v19 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
    v20 = ([v19 allowCheckDownloadOverExpensive] & 1) != 0 || -[MADAutoAssetJob configuredToExpensive](self, "configuredToExpensive") || -[MADAutoAssetJob downloadingExpensive](self, "downloadingExpensive") || -[MADAutoAssetJob boostedToExpensive](self, "boostedToExpensive");
    [v5 setAllowsExpensiveAccess:v20];

    v21 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
    [v5 setRequiresPowerPluggedIn:{objc_msgSend(v21, "allowCheckDownloadOnBattery") ^ 1}];
  }

  else
  {
    [v5 setAllowsCellularAccess:1];
    [v5 setAllowsExpensiveAccess:1];
    [v5 setRequiresPowerPluggedIn:0];
  }

  [v5 setCanUseLocalCacheServer:1];
  [v5 setPrefersInfraWiFi:1];
  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v28 = [(MADAutoAssetJob *)self autoAssetSelector];
    v35 = [v28 downloadDecryptionKey];
    [v5 setDecryptionKey:v35];
LABEL_45:

    goto LABEL_46;
  }

  v22 = [(MADAutoAssetJob *)self nextSetSpecifierToDownload];
  v23 = [(MADAutoAssetJob *)self setConfiguration];
  v24 = [v23 autoAssetEntries];
  v25 = [v24 count];

  if (v22 >= v25)
  {
    v28 = [(MADAutoAssetJob *)self autoJobFSM];
    v35 = [v28 diag];
    v37 = [NSString alloc];
    v36 = [(MADAutoAssetJob *)self autoJobName];
    v38 = [v37 initWithFormat:@"%@ | {newAssetDownloadOptions} set-job yet no nextSetSpecifierToDownload", v36];
    [v35 trackAnomaly:@"AUTO-SET-JOB" forReason:v38 withResult:6103 withError:0];

    goto LABEL_44;
  }

  v26 = [(MADAutoAssetJob *)self setConfiguration];
  v27 = [v26 autoAssetEntries];
  v28 = [v27 objectAtIndex:{-[MADAutoAssetJob nextSetSpecifierToDownload](self, "nextSetSpecifierToDownload")}];

  v29 = [v28 assetSelector];
  v30 = [v29 downloadDecryptionKey];
  [v5 setDecryptionKey:v30];

  v31 = [(MADAutoAssetJob *)self latestInstalledAssetVersion];

  if (v31)
  {
    v32 = [v5 additionalServerParams];
    v33 = [(MADAutoAssetJob *)self latestInstalledAssetVersion];
    [v32 setSafeObject:v33 forKey:@"InstalledAssetVersion"];
  }

  v34 = [(MADAutoAssetJob *)self latestInstalledAssetBuild];

  if (v34)
  {
    v35 = [v5 additionalServerParams];
    v36 = [(MADAutoAssetJob *)self latestInstalledAssetBuild];
    [v35 setSafeObject:v36 forKey:@"InstalledAssetBuild"];
LABEL_44:

    goto LABEL_45;
  }

LABEL_46:

  [v5 setPurpose:@"auto"];
  return v5;
}

- (id)newSessionID
{
  v3 = [(MADAutoAssetJob *)self autoJobFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = +[NSUUID UUID];
  v6 = [v5 UUIDString];

  v7 = [(MADAutoAssetJob *)self checkUUIDBasePortion];

  if (!v7)
  {
    v8 = +[NSUUID UUID];
    v9 = [v8 UUIDString];

    v10 = [v9 substringWithRange:{0, objc_msgSend(v9, "length") - 3}];
    v11 = +[MADAutoAssetControlManager preferenceSessionIDBase];
    v12 = v11;
    if (v11 && [v11 length] == &dword_0 + 3)
    {
      v13 = [[NSString alloc] initWithFormat:@"%@%@", v10, v12];
      [(MADAutoAssetJob *)self setCheckUUIDBasePortion:v13];

      v14 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(MADAutoAssetJob *)self autoJobName];
        v16 = [(MADAutoAssetJob *)self checkUUIDBasePortion];
        *buf = 138543618;
        v34 = v15;
        v35 = 2114;
        v36 = v16;
        v17 = "%{public}@ | {newSessionID} created base portion for session ID (low-order digits from preferences) | basePortion:%{public}@";
LABEL_8:
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, v17, buf, 0x16u);
      }
    }

    else
    {
      [(MADAutoAssetJob *)self setCheckUUIDBasePortion:v9];
      v14 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(MADAutoAssetJob *)self autoJobName];
        v16 = [(MADAutoAssetJob *)self checkUUIDBasePortion];
        *buf = 138543618;
        v34 = v15;
        v35 = 2114;
        v36 = v16;
        v17 = "%{public}@ | {newSessionID} created base portion for session ID | basePortion:%{public}@";
        goto LABEL_8;
      }
    }
  }

  if ([v6 length] < 4 || (-[MADAutoAssetJob checkUUIDBasePortion](self, "checkUUIDBasePortion"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "length"), v18, v19 < 4))
  {
    v25 = [(MADAutoAssetJob *)self autoJobFSM];
    v26 = [v25 diag];
    v27 = [NSString alloc];
    v28 = [(MADAutoAssetJob *)self checkUUIDBasePortion];
    v29 = [v27 initWithFormat:@"unable to blend UUID | potentialUUID:%@|basePortion:%@", v6, v28];
    [v26 trackAnomaly:@"AUTO-JOB:SESSION_ID" forReason:v29 withResult:6103 withError:0];

    v20 = +[NSUUID UUID];
    v24 = [v20 UUIDString];
  }

  else
  {
    v20 = [v6 substringWithRange:{0, objc_msgSend(v6, "length") - 3}];
    v21 = [(MADAutoAssetJob *)self checkUUIDBasePortion];
    v22 = [(MADAutoAssetJob *)self checkUUIDBasePortion];
    v23 = [v21 substringWithRange:{objc_msgSend(v22, "length") - 3, 3}];

    v24 = [[NSString alloc] initWithFormat:@"%@%@", v20, v23];
  }

  v30 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [(MADAutoAssetJob *)self autoJobName];
    *buf = 138543618;
    v34 = v31;
    v35 = 2114;
    v36 = v24;
    _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ | {newSessionID} new sessionID:%{public}@", buf, 0x16u);
  }

  return v24;
}

- (BOOL)isMorePreferredFormat:(id)a3 comparedTo:(id)a4
{
  v5 = a4;
  v6 = [a3 assetFormat];
  v7 = [v5 assetFormat];

  v8 = [MADAutoAssetDescriptor isMorePreferredAssetFormat:v6 comparedTo:v7];
  return v8;
}

- (void)adoptCachedLookupResult:(id)a3
{
  v15 = a3;
  v4 = [(MADAutoAssetJob *)self autoJobFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v6 = [v15 safeStringForKey:@"DownloadedFromLive"];
    if (v6)
    {
      v7 = [[NSURL alloc] initWithString:v6];
    }

    else
    {
      v7 = 0;
    }

    v8 = [v15 safeStringForKey:@"CachedAssetSetId"];
    v9 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    [v9 setCatalogCachedAssetSetID:v8];

    v10 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    [v10 setCatalogDownloadedFromLive:v7];

    v11 = [v15 safeDateForKey:@"lastTimeChecked"];
    v12 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    [v12 setCatalogLastTimeChecked:v11];

    v13 = [v15 safeDateForKey:@"postedDate"];
    v14 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    [v14 setCatalogPostedDate:v13];

    [(MADAutoAssetJob *)self newFoundSetDescriptorsFromCachedLookup:v15];
  }
}

- (void)obtainLookupGrant
{
  v3 = [(MADAutoAssetJob *)self autoJobFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v6 = [(MADAutoAssetJob *)self autoAssetSelector];
  v5 = [(MADAutoAssetJob *)self autoAssetUUID];
  [MADAutoAssetControlManager autoAssetJobObtainLookupGrant:v6 forAutoAssetUUID:v5 fromAutoAssetJob:self];
}

- (void)releaseLookupGrant
{
  v3 = [(MADAutoAssetJob *)self autoJobFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  if ([(MADAutoAssetJob *)self holdingLookupGrant])
  {
    v5 = [(MADAutoAssetJob *)self autoAssetSelector];
    v6 = [(MADAutoAssetJob *)self autoAssetUUID];
    [MADAutoAssetControlManager autoAssetJobReleaseLookupGrant:v5 forAutoAssetUUID:v6 fromAutoAssetJob:self];

    [(MADAutoAssetJob *)self setHoldingLookupGrant:0];
  }
}

- (void)requestDownloadManagerCatalogLookup:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [[NSString alloc] initWithFormat:@"%@:requestDownloadManagerCatalogLookup", v4];
  v98 = self;
  if ([(MADAutoAssetJob *)self simulateOperation]!= &dword_0 + 1)
  {
    v95 = v4;
    v97 = v7;
    [(MADAutoAssetJob *)self _extendCatalogDownloadOptionsWithAnalyticsData:v7];
    v14 = [(MADAutoAssetJob *)self catalogDownloadOptions];
    v15 = [NSString alloc];
    if ([(MADAutoAssetJob *)self rampingForeground])
    {
      v16 = @"Y";
    }

    else
    {
      v16 = @"N";
    }

    v105 = v16;
    if ([v14 discretionary])
    {
      v17 = @"Y";
    }

    else
    {
      v17 = @"N";
    }

    v103 = v17;
    v107 = [MADAutoAssetControlManager allocIntervalString:[v14 timeoutIntervalForResource]];
    if ([v14 allowSameVersion])
    {
      v18 = @"Y";
    }

    else
    {
      v18 = @"N";
    }

    obj = v18;
    v96 = v14;
    if ([v14 canUseLocalCacheServer])
    {
      v19 = @"Y";
    }

    else
    {
      v19 = @"N";
    }

    v20 = [(MADAutoAssetJob *)self latestInstalledAssetBuild];
    if (v20)
    {
      v109 = [(MADAutoAssetJob *)self latestInstalledAssetBuild];
    }

    else
    {
      v109 = @"NONE";
    }

    v22 = [(MADAutoAssetJob *)self latestInstalledAssetVersion];
    if (v22)
    {
      v23 = [(MADAutoAssetJob *)self latestInstalledAssetVersion];
    }

    else
    {
      v23 = @"NONE";
    }

    v24 = [(MADAutoAssetJob *)self catalogDownloadOptions];
    v25 = [v24 analyticsData];
    if (v25)
    {
      v26 = [(MADAutoAssetJob *)self catalogDownloadOptions];
      [v26 analyticsData];
      v28 = v27 = v15;
      v29 = [v28 safeSummary];
      v92 = v19;
      v30 = v107;
      v31 = [v27 initWithFormat:@"rampForeground:%@, discretionary:%@, timeout:%@, allowSame:%@, allowContentCaching:%@ | [installed] build:%@, version:%@ | analyticsData:%@", v105, v103, v107, obj, v92, v109, v23, v29];
    }

    else
    {
      v93 = v19;
      v30 = v107;
      v31 = [v15 initWithFormat:@"rampForeground:%@, discretionary:%@, timeout:%@, allowSame:%@, allowContentCaching:%@ | [installed] build:%@, version:%@ | analyticsData:%@", v105, v103, v107, obj, v93, v109, v23, @"N"];
    }

    if (v22)
    {
    }

    if (v20)
    {
    }

    v32 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [(MADAutoAssetJob *)v98 autoJobName];
      *buf = 138543874;
      v122 = v33;
      v123 = 2114;
      v124 = v97;
      v125 = 2114;
      v126 = v31;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ | {%{public}@} DM:registerCatalogDownloadJob | options:%{public}@", buf, 0x20u);
    }

    v94 = v31;
    if ([(MADAutoAssetJob *)v98 autoAssetSetJob])
    {
      v34 = objc_alloc_init(NSMutableArray);
      p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
      v36 = objc_alloc_init(NSMutableDictionary);
      [(MADAutoAssetJob *)v98 setLatestAssetDescriptorOnFilesystemBySpecifier:v36];

      v37 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [(MADAutoAssetJob *)v98 autoJobName];
        *buf = 138543618;
        v122 = v38;
        v123 = 2114;
        v124 = v97;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@}\n[BUILD-DESCRIPTORS] cleared latestAssetDescriptorOnFilesystemBySpecifier", buf, 0x16u);
      }

      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v39 = [(MADAutoAssetJob *)v98 setConfiguration];
      v40 = [v39 autoAssetEntries];

      obja = v40;
      v104 = [v40 countByEnumeratingWithState:&v115 objects:v120 count:16];
      if (v104)
      {
        v41 = *v116;
        v99 = *v116;
        v100 = v34;
        do
        {
          for (i = 0; i != v104; i = i + 1)
          {
            if (*v116 != v41)
            {
              objc_enumerationMutation(obja);
            }

            v43 = *(*(&v115 + 1) + 8 * i);
            v44 = [v43 assetSelector];
            v45 = [MADAutoAssetControlManager loadDescriptorsForJobSelector:v44 promotingIfCurrentlyStaged:0 immediatelyPromotedDescriptor:0];

            v46 = objc_alloc_init(p_weak_ivar_lyt[229]);
            v47 = [v43 assetSelector];
            v48 = [v47 assetSpecifier];
            [v46 setSafeObject:v48 forKey:@"AssetSpecifier"];

            if (![v45 count])
            {
              goto LABEL_67;
            }

            v108 = i;
            v110 = v46;
            v113 = 0u;
            v114 = 0u;
            v111 = 0u;
            v112 = 0u;
            v106 = v45;
            v49 = v45;
            v50 = [v49 countByEnumeratingWithState:&v111 objects:v119 count:16];
            if (!v50)
            {
              v53 = 0;
              v52 = 0;
              goto LABEL_65;
            }

            v51 = v50;
            v52 = 0;
            v53 = 0;
            v54 = *v112;
            do
            {
              for (j = 0; j != v51; j = j + 1)
              {
                if (*v112 != v54)
                {
                  objc_enumerationMutation(v49);
                }

                v56 = *(*(&v111 + 1) + 8 * j);
                v57 = objc_autoreleasePoolPush();
                v58 = [v49 safeObjectForKey:v56 ofClass:objc_opt_class()];
                v59 = v58;
                if (!v53)
                {
                  v65 = v58;
                  v66 = [SUCoreRestoreVersion alloc];
                  v62 = [v65 assetVersion];
                  v64 = [v66 initWithRestoreVersion:v62];
                  goto LABEL_53;
                }

                v60 = [SUCoreRestoreVersion alloc];
                v61 = [v59 assetVersion];
                v62 = [v60 initWithRestoreVersion:v61];

                if ([v62 isComparable:v52] && objc_msgSend(v62, "compare:", v52) == &dword_0 + 1)
                {
                  v63 = v59;

                  v64 = v62;
                  v62 = v64;
LABEL_53:
                  v67 = v64;

                  v52 = v67;
                  v53 = v59;
                }

                objc_autoreleasePoolPop(v57);
              }

              v51 = [v49 countByEnumeratingWithState:&v111 objects:v119 count:16];
            }

            while (v51);

            if (v53)
            {
              v41 = v99;
              v34 = v100;
              p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
              if ([MADAutoAssetControlManager jobDescriptorOnFilesystemConfirmed:v53])
              {
                v68 = [v53 assetVersion];
                [v110 setSafeObject:v68 forKey:@"InstalledAssetVersion"];

                v69 = [v53 build];
                [v110 setSafeObject:v69 forKey:@"InstalledAssetBuild"];

                v70 = [(MADAutoAssetJob *)v98 latestAssetDescriptorOnFilesystemBySpecifier];
                v71 = [v53 assetSpecifier];
                [v70 setSafeObject:v53 forKey:v71];

                v49 = _MADLog(@"AutoJob");
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  v72 = [(MADAutoAssetJob *)v98 autoJobName];
                  v73 = [v53 selectorName];
                  *buf = 138543874;
                  v122 = v72;
                  v123 = 2114;
                  v124 = v97;
                  v125 = 2114;
                  v126 = v73;
                  _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@}\n[BUILD-DESCRIPTORS] latest version on filesystem | selector:%{public}@", buf, 0x20u);
                }
              }

              else
              {
                v49 = _MADLog(@"AutoJob");
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  v74 = [(MADAutoAssetJob *)v98 autoJobName];
                  v75 = [v53 selectorName];
                  *buf = 138543874;
                  v122 = v74;
                  v123 = 2114;
                  v124 = v97;
                  v125 = 2114;
                  v126 = v75;
                  _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@}\n[BUILD-DESCRIPTORS] downloaded descriptor is not really on the filesystem - not adding to latestAssetDescriptorOnFilesystemBySpecifier list | selector:%{public}@", buf, 0x20u);
                }
              }

LABEL_65:
            }

            else
            {
              v41 = v99;
              v34 = v100;
              p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
            }

            v45 = v106;
            i = v108;
            v46 = v110;
LABEL_67:
            [v34 addObject:v46];
          }

          v104 = [obja countByEnumeratingWithState:&v115 objects:v120 count:16];
        }

        while (v104);
      }

      v76 = [v96 additionalServerParams];
      [v76 setSafeObject:v34 forKey:@"SetElements"];

      v77 = [v96 additionalServerParams];
      v78 = [(MADAutoAssetJob *)v98 setConfiguration];
      v79 = [v78 assetSetIdentifier];
      v80 = simplifySetIdentifier(v79);
      [v77 setSafeObject:v80 forKey:@"SetID"];

      v81 = [(MADAutoAssetJob *)v98 verifyDownloadNotBlockedBySetPolicy:0];
      if (v81)
      {
        v82 = [MADAutoAssetJobParam alloc];
        v83 = [(MADAutoAssetJob *)v98 autoAssetUUID];
        v84 = [(MADAutoAssetJobParam *)v82 initForFinishedJobID:v83 withError:v81];

        v85 = [(MADAutoAssetJob *)v98 autoJobFSM];
        [v85 postEvent:@"PolicyBlockCatalogDownload" withInfo:v84];
LABEL_74:

        v4 = v95;
        v10 = v96;
        v8 = v97;
        goto LABEL_75;
      }

      v84 = getDownloadManager();
      v85 = [(MADAutoAssetJob *)v98 autoAssetUUID];
      v86 = [(MADAutoAssetJob *)v98 autoAssetSetAssetType];
      v87 = [(MADAutoAssetJob *)v98 autoAssetSetIdentifier];
      v88 = v84;
      v89 = v85;
      v90 = v86;
      v91 = v96;
    }

    else
    {
      v34 = getDownloadManager();
      v81 = [(MADAutoAssetJob *)v98 autoAssetUUID];
      v84 = [(MADAutoAssetJob *)v98 autoAssetSelector];
      v85 = [v84 assetType];
      v86 = [(MADAutoAssetJob *)v98 autoAssetSelector];
      v87 = [v86 summary];
      v88 = v34;
      v89 = v81;
      v90 = v85;
      v91 = v96;
    }

    [v88 registerCatalogDownloadJob:v89 forAssetType:v90 withPurpose:@"auto" usingDownloadOptions:v91 forAutoAssetName:v87];

    goto LABEL_74;
  }

  v8 = v7;
  [(MADAutoAssetJob *)self setSimulateTriggered:[(MADAutoAssetJob *)self simulateOperation]];
  v9 = objc_opt_respondsToSelector();
  v10 = _MADLog(@"AutoJob");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v12 = [(MADAutoAssetJob *)self autoJobName];
      v13 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MADAutoAssetJob *)self simulateOperation]];
      *buf = 138543874;
      v122 = v12;
      v123 = 2114;
      v124 = v8;
      v125 = 2114;
      v126 = v13;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@} | SIMULATE_OPERATION(%{public}@) | call to registerCatalogDownloadJob postponed", buf, 0x20u);
    }
  }

  else if (v11)
  {
    v21 = [(MADAutoAssetJob *)self autoJobName];
    *buf = 138543874;
    v122 = v21;
    v123 = 2114;
    v124 = v7;
    v125 = 2048;
    v126 = [(MADAutoAssetJob *)self simulateOperation];
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@} | SIMULATE_OPERATION(%lld) | call to registerCatalogDownloadJob postponed", buf, 0x20u);
  }

LABEL_75:
}

- (id)autoAssetSetAssetType
{
  v3 = [(MADAutoSetConfiguration *)self->_setConfiguration autoAssetEntries];
  v4 = [v3 count];

  if (v4 < 1)
  {
LABEL_11:
    v16 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [(MADAutoSetConfiguration *)self->_setConfiguration summary];
      *buf = 138543618;
      v21 = v17;
      v22 = 2114;
      v23 = @"UNKNOWN_SET_ASSET_TYPE";
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "{autoAssetSetAssetType} no assetType | setConfiguration:%{public}@ | using:%{public}@", buf, 0x16u);
    }

    v6 = @"UNKNOWN_SET_ASSET_TYPE";
    goto LABEL_14;
  }

  v6 = 0;
  v7 = 0;
  *&v5 = 138543618;
  v19 = v5;
  do
  {
    v8 = [(MADAutoSetConfiguration *)self->_setConfiguration autoAssetEntries];
    v9 = [v8 objectAtIndex:v7];

    if (v6)
    {
      v10 = [v9 assetSelector];
      v11 = [v10 assetType];
      v12 = [SUCore stringIsEqual:v11 to:v6];

      if (v12)
      {
        goto LABEL_9;
      }

      v13 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [v9 assetSelector];
        v15 = [v14 assetType];
        *buf = v19;
        v21 = v15;
        v22 = 2114;
        v23 = v6;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "{autoAssetSetAssetType} additional assetType:%{public}@ | using first encountered:%{public}@", buf, 0x16u);
      }
    }

    else
    {
      v13 = [v9 assetSelector];
      v6 = [v13 assetType];
    }

LABEL_9:
    ++v7;
  }

  while (v4 != v7);
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_14:

  return v6;
}

- (void)requestDownloadManagerAssetDownload:(id)a3 forDescriptor:(id)a4 withBaseForPatch:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MADAutoAssetJob *)self autoJobFSM];
  v12 = [v11 extendedStateQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [(MADAutoAssetJob *)self simulateOperation];
  v14 = [(MADAutoAssetJob *)self simulateOperation];
  if (v13 != 2)
  {
    if (v10 && v14 == 5)
    {
      v20 = objc_opt_respondsToSelector();
      v21 = _MADLog(@"AutoJob");
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (v20)
      {
        if (v22)
        {
          v23 = [(MADAutoAssetJob *)self autoJobName];
          v24 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MADAutoAssetJob *)self simulateOperation]];
          *buf = 138543874;
          v79 = v23;
          v80 = 2114;
          v81 = v8;
          v82 = 2114;
          v83 = v24;
          v25 = "%{public}@ {%{public}@:requestDownloadManagerAssetDownload} | SIMULATE_OPERATION(%{public}@) | not starting patch download - immediate simulateEnd";
LABEL_14:
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, v25, buf, 0x20u);

          goto LABEL_31;
        }

        goto LABEL_31;
      }

      if (!v22)
      {
        goto LABEL_31;
      }

      v35 = [(MADAutoAssetJob *)self autoJobName];
      *buf = 138543874;
      v79 = v35;
      v80 = 2114;
      v81 = v8;
      v82 = 2048;
      v83 = [(MADAutoAssetJob *)self simulateOperation];
      v36 = "%{public}@ {%{public}@:requestDownloadManagerAssetDownload} | SIMULATE_OPERATION(%lld) | not starting patch download - immediate simulateEnd";
      goto LABEL_30;
    }

    if ([(MADAutoAssetJob *)self simulateOperation]== &dword_8 + 1)
    {
      v26 = objc_opt_respondsToSelector();
      v21 = _MADLog(@"AutoJob");
      v27 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (v26)
      {
        if (v27)
        {
          v23 = [(MADAutoAssetJob *)self autoJobName];
          v24 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MADAutoAssetJob *)self simulateOperation]];
          *buf = 138543874;
          v79 = v23;
          v80 = 2114;
          v81 = v8;
          v82 = 2114;
          v83 = v24;
          v25 = "%{public}@ {%{public}@:requestDownloadManagerAssetDownload} | SIMULATE_OPERATION(%{public}@) | not starting asset download - immediate simulateEnd";
          goto LABEL_14;
        }

LABEL_31:

        [(MADAutoAssetJob *)self setSimulateTriggered:[(MADAutoAssetJob *)self simulateOperation]];
        [(MADAutoAssetJob *)self simulateEnd:0];
        goto LABEL_51;
      }

      if (!v27)
      {
        goto LABEL_31;
      }

      v35 = [(MADAutoAssetJob *)self autoJobName];
      *buf = 138543874;
      v79 = v35;
      v80 = 2114;
      v81 = v8;
      v82 = 2048;
      v83 = [(MADAutoAssetJob *)self simulateOperation];
      v36 = "%{public}@ {%{public}@:requestDownloadManagerAssetDownload} | SIMULATE_OPERATION(%lld) | not starting asset download - immediate simulateEnd";
LABEL_30:
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, v36, buf, 0x20u);

      goto LABEL_31;
    }

    [(MADAutoAssetJob *)self setDownloadingAssetDescriptor:v9];
    [(MADAutoAssetJob *)self _extendAssetDownloadOptionsWithAnalyticsData:v8 forDescriptor:v9 withBaseForPatch:v10];
    v29 = [(MADAutoAssetJob *)self assetDownloadOptions];
    v30 = [NSString alloc];
    if ([v29 discretionary])
    {
      v31 = @"Y";
    }

    else
    {
      v31 = @"N";
    }

    v71 = v31;
    v76 = +[MADAutoAssetControlManager allocIntervalString:](MADAutoAssetControlManager, "allocIntervalString:", [v29 timeoutIntervalForResource]);
    v75 = [v9 assetId];
    v32 = [v29 decryptionKey];
    if (v32)
    {
      v33 = @"Y";
    }

    else
    {
      v33 = @"N";
    }

    v68 = v33;
    v34 = [v29 sourceDirectory];
    v74 = v29;
    if (v34)
    {
      v73 = [v29 sourceDirectory];
    }

    else
    {
      v73 = @"N";
    }

    v69 = v10;
    v70 = v9;
    v37 = [(MADAutoAssetJob *)self assetDownloadOptions];
    v38 = [v37 analyticsData];
    if (v38)
    {
      v39 = [(MADAutoAssetJob *)self assetDownloadOptions];
      [v39 analyticsData];
      v41 = v40 = v30;
      [v41 safeSummary];
      v42 = v32;
      v44 = v43 = v8;
      v72 = [v40 initWithFormat:@"discretionary:%@, timeout:%@ | assetId:%@ | decrypt:%@, source:%@ | analyticsData:%@", v71, v76, v75, v68, v73, v44];

      v8 = v43;
      v32 = v42;
    }

    else
    {
      v72 = [v30 initWithFormat:@"discretionary:%@, timeout:%@ | assetId:%@ | decrypt:%@, source:%@ | analyticsData:%@", v71, v76, v75, v68, v73, @"N"];
    }

    if (v34)
    {
    }

    v45 = _MADLog(@"AutoJob");
    v10 = v69;
    v9 = v70;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [(MADAutoAssetJob *)self autoJobName];
      *buf = 138543874;
      v79 = v46;
      v80 = 2114;
      v81 = v8;
      v82 = 2114;
      v83 = v72;
      _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "%{public}@ | {%{public}@} DM:registerAssetDownloadJob | options:%{public}@", buf, 0x20u);
    }

    if ([(MADAutoAssetJob *)self autoAssetSetJob])
    {
      v47 = [(MADAutoAssetJob *)self verifyDownloadNotBlockedBySetPolicy:1];
      if (v47)
      {
        v48 = v47;
        v49 = [MADAutoAssetJobParam alloc];
        v50 = [(MADAutoAssetJob *)self autoAssetUUID];
        v51 = [(MADAutoAssetJobParam *)v49 initForFinishedJobID:v50 withError:v48];

        v52 = [(MADAutoAssetJob *)self autoJobFSM];
        [v52 postEvent:@"PolicyBlockCatalogDownload" withInfo:v51];
        v53 = 0;
        goto LABEL_48;
      }

      v77 = v8;
      v53 = [(MADAutoAssetJob *)self autoAssetSetAssetType];
      [(MADAutoAssetJob *)self setNextSetSpecifierToDownload:[(MADAutoAssetJob *)self nextSetSpecifierToDownload]+ 1];
    }

    else
    {
      v77 = v8;
      v54 = [(MADAutoAssetJob *)self autoAssetSelector];
      v53 = [v54 assetType];
    }

    v55 = getDownloadManager();
    v56 = [(MADAutoAssetJob *)self autoAssetUUID];
    v57 = [(MADAutoAssetJob *)self clientName];
    v58 = [v70 assetId];
    v59 = [v70 metadata];
    v60 = [(MADAutoAssetJob *)self setSpaceCheckedUUID];
    [v55 registerAssetDownloadJob:v56 forAssetType:v53 withPurpose:@"auto" clientName:v57 usingDownloadOptions:v74 forAssetId:v58 withCatalogMetadata:v59 withSpaceCheckedUUID:v60];

    if (![(MADAutoAssetJob *)self autoAssetSetJob]|| !+[MAAIRBEventReporter isAvailable])
    {
      v8 = v77;
      goto LABEL_50;
    }

    v61 = [MAAIRBMobileAssetOperationMetadata alloc];
    v62 = [MADAutoAssetHistoryTracker operationName:1700];
    v48 = [(MAAIRBMobileAssetOperationMetadata *)v61 initWithCode:1700 name:v62];

    v63 = [MAAIRBMobileAssetAssetSelector alloc];
    v64 = [v70 assetType];
    v65 = [v70 assetSpecifier];
    v66 = [v70 assetVersion];
    v51 = [(MAAIRBMobileAssetAssetSelector *)v63 initWithAssetType:v64 assetSpecifier:v65 assetVersion:v66];

    v52 = [MAAIRBAppleIntelligenceAssetDeliveryEventType typeAssetJob:v48 assetSelector:v51 downloadResult:0];
    v67 = [[MAAIRBAppleIntelligenceAssetDeliveryEvent alloc] initWithErrors:&__NSArray0__struct type:v52];
    [MAAIRBEventReporter emitAppleIntelligenceStartEvent:v67];

    v8 = v77;
LABEL_48:

LABEL_50:
    goto LABEL_51;
  }

  [(MADAutoAssetJob *)self setSimulateTriggered:v14];
  [(MADAutoAssetJob *)self setSimulateDescriptor:v9];
  [(MADAutoAssetJob *)self setSimulateBaseForPatch:v10];
  v15 = objc_opt_respondsToSelector();
  v16 = _MADLog(@"AutoJob");
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      v18 = [(MADAutoAssetJob *)self autoJobName];
      v19 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MADAutoAssetJob *)self simulateOperation]];
      *buf = 138543874;
      v79 = v18;
      v80 = 2114;
      v81 = v8;
      v82 = 2114;
      v83 = v19;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@:requestDownloadManagerAssetDownload} | SIMULATE_OPERATION(%{public}@) | call to registerAssetDownloadJob postponed", buf, 0x20u);
    }
  }

  else if (v17)
  {
    v28 = [(MADAutoAssetJob *)self autoJobName];
    *buf = 138543874;
    v79 = v28;
    v80 = 2114;
    v81 = v8;
    v82 = 2048;
    v83 = [(MADAutoAssetJob *)self simulateOperation];
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@:requestDownloadManagerAssetDownload} | SIMULATE_OPERATION(%lld) | call to registerAssetDownloadJob postponed", buf, 0x20u);
  }

LABEL_51:
}

- (void)requestDownloadManagerConfigDownload:(id)a3 forDescriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetJob *)self autoJobFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  if ([(MADAutoAssetJob *)self simulateOperation]== &dword_0 + 3)
  {
    [(MADAutoAssetJob *)self setSimulateTriggered:[(MADAutoAssetJob *)self simulateOperation]];
    [(MADAutoAssetJob *)self setSimulateDescriptor:v7];
    v10 = objc_opt_respondsToSelector();
    v11 = _MADLog(@"AutoJob");
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = [(MADAutoAssetJob *)self autoJobName];
        v14 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MADAutoAssetJob *)self simulateOperation]];
        *buf = 138543874;
        v41 = v13;
        v42 = 2114;
        v43 = v6;
        v44 = 2114;
        v45 = v14;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@:requestDownloadManagerConfigDownload} | SIMULATE_OPERATION(%{public}@) | call to configAssetDownloadJob postponed", buf, 0x20u);
      }
    }

    else if (v12)
    {
      v17 = [(MADAutoAssetJob *)self autoJobName];
      *buf = 138543874;
      v41 = v17;
      v42 = 2114;
      v43 = v6;
      v44 = 2048;
      v45 = [(MADAutoAssetJob *)self simulateOperation];
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@:requestDownloadManagerConfigDownload} | SIMULATE_OPERATION(%lld) | call to configAssetDownloadJob postponed", buf, 0x20u);
    }
  }

  else
  {
    v11 = [(MADAutoAssetJob *)self assetDownloadOptions];
    if ([(MADAutoAssetJob *)self configuredToCellular]&& ![(MADAutoAssetJob *)self boostedToCellular])
    {
      [v11 setAllowsCellularAccess:1];
    }

    if ([(MADAutoAssetJob *)self configuredToExpensive]&& ![(MADAutoAssetJob *)self boostedToExpensive])
    {
      [v11 setAllowsExpensiveAccess:1];
    }

    if ([(MADAutoAssetJob *)self configuredToUserInitiated]&& ![(MADAutoAssetJob *)self boostedToUserInitiated])
    {
      [v11 setDiscretionary:0];
    }

    if (__isPlatformVersionAtLeast(2, 18, 3, 0))
    {
      v39 = @"N";
      if (objc_opt_respondsToSelector())
      {
        v15 = [v11 allowsConstrainedAccess];
        v16 = @"N";
        if (v15)
        {
          v16 = @"Y";
        }

        v39 = v16;
      }
    }

    else
    {
      v39 = @"N";
    }

    v36 = [NSString alloc];
    if ([v11 discretionary])
    {
      v18 = @"Y";
    }

    else
    {
      v18 = @"N";
    }

    v35 = v18;
    v37 = [MADAutoAssetControlManager allocIntervalString:[v11 timeoutIntervalForResource]];
    v38 = v7;
    v19 = [v7 assetId];
    v20 = [v11 decryptionKey];
    if (v20)
    {
      v21 = @"Y";
    }

    else
    {
      v21 = @"N";
    }

    v22 = [v11 sourceDirectory];
    if (v22)
    {
      v23 = [v11 sourceDirectory];
    }

    else
    {
      v23 = @"N";
    }

    if ([v11 allowsCellularAccess])
    {
      v24 = @"Y";
    }

    else
    {
      v24 = @"N";
    }

    if ([v11 allowsExpensiveAccess])
    {
      v25 = @"Y";
    }

    else
    {
      v25 = @"N";
    }

    v26 = [v36 initWithFormat:@"discretionary:%@, timeout:%@ | assetId:%@ | decrypt:%@ | source:%@ | cellular:%@ | expensive:%@ | constrained:%@", v35, v37, v19, v21, v23, v24, v25, v39];
    if (v22)
    {
    }

    v27 = _MADLog(@"AutoJob");
    v7 = v38;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [(MADAutoAssetJob *)self autoJobName];
      *buf = 138543874;
      v41 = v28;
      v42 = 2114;
      v43 = v6;
      v44 = 2114;
      v45 = v26;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ | {%{public}@} DM:configAssetDownloadJob | downloadOptions:%{public}@", buf, 0x20u);
    }

    v29 = getDownloadManager();
    v30 = [(MADAutoAssetJob *)self autoAssetUUID];
    v31 = [(MADAutoAssetJob *)self autoAssetSelector];
    v32 = [v31 assetType];
    v33 = [v38 assetId];
    v34 = [(MADAutoAssetJob *)self clientName];
    [v29 configAssetDownloadJob:v30 forAssetType:v32 withPurpose:@"auto" matchingAssetId:v33 usingDownloadOptions:v11 forAutoAssetName:v34];
  }
}

- (void)requestDownloadManagerCancelDownload:(id)a3 forDescriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetJob *)self autoJobFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  if ([(MADAutoAssetJob *)self simulateTriggered]== &dword_0 + 2)
  {
    [(MADAutoAssetJob *)self simulateEnd:0];
  }

  if ([(MADAutoAssetJob *)self simulateOperation]== &dword_4)
  {
    [(MADAutoAssetJob *)self setSimulateTriggered:[(MADAutoAssetJob *)self simulateOperation]];
    [(MADAutoAssetJob *)self setSimulateDescriptor:v7];
    v10 = objc_opt_respondsToSelector();
    v11 = _MADLog(@"AutoJob");
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = [(MADAutoAssetJob *)self autoJobName];
        v14 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MADAutoAssetJob *)self simulateOperation]];
        v24 = 138543874;
        v25 = v13;
        v26 = 2114;
        v27 = v6;
        v28 = 2114;
        v29 = v14;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@:requestDownloadManagerCancelDownload} | SIMULATE_OPERATION(%{public}@) | call to cancelAssetDownloadJob postponed", &v24, 0x20u);
      }
    }

    else if (v12)
    {
      v23 = [(MADAutoAssetJob *)self autoJobName];
      v24 = 138543874;
      v25 = v23;
      v26 = 2114;
      v27 = v6;
      v28 = 2048;
      v29 = [(MADAutoAssetJob *)self simulateOperation];
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@:requestDownloadManagerCancelDownload} | SIMULATE_OPERATION(%lld) | call to cancelAssetDownloadJob postponed", &v24, 0x20u);
    }
  }

  else
  {
    v15 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(MADAutoAssetJob *)self autoJobName];
      v24 = 138543618;
      v25 = v16;
      v26 = 2114;
      v27 = v6;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ | {%{public}@} DM:cancelAssetDownloadJob", &v24, 0x16u);
    }

    v17 = getDownloadManager();
    v18 = [(MADAutoAssetJob *)self autoAssetUUID];
    v19 = [(MADAutoAssetJob *)self autoAssetSelector];
    v20 = [v19 assetType];
    v21 = [v7 assetId];
    v22 = [(MADAutoAssetJob *)self clientName];
    [v17 cancelAssetDownloadJob:v18 forAssetType:v20 withPurpose:@"auto" matchingAssetId:v21 forAutoAssetName:v22];

    [(MADAutoAssetJob *)self _releaseReservedSpace];
  }
}

- (void)mergeSetPolicyIntoAggregated:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  [v7 setLockInhibitsEmergencyRemoval:{objc_msgSend(v4, "lockInhibitsEmergencyRemoval") | objc_msgSend(v7, "lockInhibitsEmergencyRemoval")}];

  v8 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  [v8 setAllowCheckDownloadOnBattery:{objc_msgSend(v4, "allowCheckDownloadOnBattery") | objc_msgSend(v8, "allowCheckDownloadOnBattery")}];

  v9 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  [v9 setAllowCheckDownloadWhenBatteryLow:{objc_msgSend(v4, "allowCheckDownloadWhenBatteryLow") | objc_msgSend(v9, "allowCheckDownloadWhenBatteryLow")}];

  v10 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  [v10 setAllowCheckDownloadWhenCPUHigh:{objc_msgSend(v4, "allowCheckDownloadWhenCPUHigh") | objc_msgSend(v10, "allowCheckDownloadWhenCPUHigh")}];

  v11 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  [v11 setAllowCheckDownloadOverExpensive:{objc_msgSend(v4, "allowCheckDownloadOverExpensive") | objc_msgSend(v11, "allowCheckDownloadOverExpensive")}];

  v12 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  [v12 setAllowCheckDownloadOverCellular:{objc_msgSend(v4, "allowCheckDownloadOverCellular") | objc_msgSend(v12, "allowCheckDownloadOverCellular")}];

  v13 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  LODWORD(v6) = [v4 blockCheckDownload];

  [v13 setBlockCheckDownload:{v6 | objc_msgSend(v13, "blockCheckDownload")}];
  v17 = objc_opt_new();
  v14 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  [v17 setAllowsCellularAccess:{objc_msgSend(v14, "allowCheckDownloadOverCellular")}];

  v15 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  [v17 setAllowsExpensiveAccess:{objc_msgSend(v15, "allowCheckDownloadOverExpensive")}];

  v16 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  [v17 setDiscretionary:{objc_msgSend(v16, "userInitiated") ^ 1}];

  [(MADAutoAssetJob *)self _updateDownloadOptions:v17];
}

- (id)verifyDownloadNotBlockedBySetPolicy:(BOOL)a3
{
  v4 = [(MADAutoAssetJob *)self autoJobFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  if ([v6 userInitiated])
  {
  }

  else
  {
    v7 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
    if (![v7 allowCheckDownloadOnBattery])
    {
LABEL_11:

      goto LABEL_12;
    }

    v10 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
    v11 = [v10 allowCheckDownloadWhenBatteryLow];

    if (!v11)
    {
      return 0;
    }
  }

  v6 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  if ([v6 userInitiated])
  {
    v7 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
    if ([v7 allowCheckDownloadOnBattery])
    {
      v8 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
      if ([v8 allowCheckDownloadWhenBatteryLow])
      {
        v9 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
        [v9 allowCheckDownloadWhenCPUHigh];
      }
    }

    goto LABEL_11;
  }

LABEL_12:

  return 0;
}

- (void)_setCalculateDownloadSpace:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {
    goto LABEL_43;
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v7 = [(MADAutoAssetJob *)self setConfiguration];
  v8 = [v7 autoAssetEntries];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v76 objects:v94 count:16];
  if (v9)
  {
    v11 = v9;
    v66 = 0;
    v65 = -1;
    v70 = *v77;
    *&v10 = 138544898;
    v62 = v10;
    v63 = self;
    do
    {
      v12 = 0;
      v67 = v11;
      do
      {
        if (*v77 != v70)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v76 + 1) + 8 * v12);
        v14 = [(MADAutoAssetJob *)self latestAssetDescriptorOnFilesystemBySpecifier];
        v15 = [v13 assetSelector];
        v16 = [v15 assetSpecifier];
        v17 = [v14 safeObjectForKey:v16 ofClass:objc_opt_class()];

        if (v17)
        {
          v18 = _MADLog(@"AutoJob");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [(MADAutoAssetJob *)self autoJobName];
            v20 = [v17 selectorName];
            *buf = 138543874;
            v81 = v19;
            v82 = 2114;
            v83 = v4;
            v84 = 2114;
            v85 = v20;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@}\n[CALCULATE_DOWNLOAD_SPACE] asset-descriptor already on filesystem - no need to download again | selectorOnFS:%{public}@", buf, 0x20u);
          }
        }

        else
        {
          v21 = [(MADAutoAssetJob *)self foundSetFullDescriptorsBySpecifier];
          v22 = [v13 assetSelector];
          v23 = [v22 assetSpecifier];
          v18 = [v21 safeObjectForKey:v23 ofClass:objc_opt_class()];

          v24 = [(MADAutoAssetJob *)self foundSetPatchDescriptorsBySpecifier];
          v25 = [v13 assetSelector];
          v26 = [v25 assetSpecifier];
          v27 = [v24 safeObjectForKey:v26 ofClass:objc_opt_class()];

          if (v18 | v27)
          {
            if (v27)
            {
              v31 = [v27 metadata];
              v68 = [v31 safeIntegerForKey:@"_UnarchivedSize"];

              v32 = [v27 metadata];
              v33 = @"Y";
            }

            else
            {
              v34 = [v18 metadata];
              v68 = [v34 safeIntegerForKey:@"_UnarchivedSize"];

              v32 = [v18 metadata];
              v33 = @"N";
            }

            v64 = v33;
            v35 = cacheDeleteLevelForPolicyValue([v32 safeIntegerForKey:@"_DownloadPolicy"]);

            if (v35 >= v65)
            {
              v36 = v65;
            }

            else
            {
              v36 = v35;
            }

            if (v65 == -1)
            {
              v36 = v35;
            }

            v65 = v36;
            v37 = v68 + v66;
            v28 = _MADLog(@"AutoJob");
            v66 += v68;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              [(MADAutoAssetJob *)self autoJobName];
              v39 = v38 = v4;
              v40 = [v13 summary];
              *buf = v62;
              v81 = v39;
              v82 = 2114;
              v83 = v38;
              v84 = 2114;
              v85 = v40;
              v86 = 2114;
              v87 = v64;
              v88 = 2048;
              v89 = v68;
              v90 = 1024;
              v91 = v35;
              v92 = 2048;
              v93 = v37;
              _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@}\n[CALCULATE_DOWNLOAD_SPACE] calculating download space | nextEntryToDownload:%{public}@ | willDownloadPatch:%{public}@ | requiredSpace:%lld bytes | downloadPolicy:%d | totalRequiredSpace:%lld bytes", buf, 0x44u);

              v4 = v38;
              self = v63;
            }
          }

          else
          {
            v28 = _MADLog(@"AutoJob");
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = [(MADAutoAssetJob *)self autoJobName];
              v30 = [v13 summary];
              *buf = 138543874;
              v81 = v29;
              v82 = 2114;
              v83 = v4;
              v84 = 2114;
              v85 = v30;
              _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@}\n[CALCULATE_DOWNLOAD_SPACE] no descriptor found - no auto-asset will be downloaded | nextEntryToDownload:%{public}@", buf, 0x20u);
            }
          }

          v11 = v67;
        }

        v12 = v12 + 1;
      }

      while (v11 != v12);
      v11 = [obj countByEnumeratingWithState:&v76 objects:v94 count:16];
    }

    while (v11);
  }

  else
  {
    v66 = 0;
    v65 = -1;
  }

  v41 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [(MADAutoAssetJob *)self autoJobName];
    *buf = 138544130;
    v81 = v42;
    v82 = 2114;
    v83 = v4;
    v84 = 2048;
    v85 = v66;
    v86 = 1024;
    LODWORD(v87) = v65;
    _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@}\n[CALCULATE_DOWNLOAD_SPACE] total required space for downloading set | totalRequiredSpace:%lld bytes | finalDownloadPolicy:%d", buf, 0x26u);
  }

  if (v66 < 1 || v65 != 4)
  {
    v54 = _MADLog(@"AutoJob");
    v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT);
    if (v66)
    {
      if (v55)
      {
        v56 = [(MADAutoAssetJob *)self autoJobName];
        *buf = 138543618;
        v81 = v56;
        v82 = 2114;
        v83 = v4;
        v57 = "%{public}@ {%{public}@}\n[CALCULATE_DOWNLOAD_SPACE] final-download-policy is not system/critical, space check will not be performed";
LABEL_41:
        _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEFAULT, v57, buf, 0x16u);
      }
    }

    else if (v55)
    {
      v56 = [(MADAutoAssetJob *)self autoJobName];
      *buf = 138543618;
      v81 = v56;
      v82 = 2114;
      v83 = v4;
      v57 = "%{public}@ {%{public}@}\n[CALCULATE_DOWNLOAD_SPACE] total-required-free-space is zero (nothing will be downloaded), space check will not be performed";
      goto LABEL_41;
    }

LABEL_43:
    v58 = [(MADAutoAssetJob *)self autoJobFSM];
    v59 = [MADAutoAssetJobParam alloc];
    v60 = [(MADAutoAssetJob *)self _updateLatestSummary];
    v61 = [(MADAutoAssetJobParam *)v59 initWithSafeSummary:v60];
    [v58 postEvent:@"SetEnoughSpaceForDownload" withInfo:v61];

    goto LABEL_44;
  }

  v43 = self;
  v44 = v4;
  v45 = _MADLog(@"V2Control");
  v46 = os_signpost_id_generate(v45);

  v47 = _MADLog(@"V2Control");
  v48 = v47;
  if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
  {
    v49 = mach_continuous_time();
    *buf = 134349056;
    v81 = v49;
    _os_signpost_emit_with_name_impl(&dword_0, v48, OS_SIGNPOST_INTERVAL_BEGIN, v46, "GarbageCollection", "%{public, signpost.description:begin_time}llu  enableTelemetry=YES ", buf, 0xCu);
  }

  v50 = getControlManager();
  v51 = [v50 cacheDeleteManager];
  v52 = [(MADAutoAssetJob *)v43 autoJobFSM];
  v53 = [v52 extendedStateQueue];
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = __46__MADAutoAssetJob__setCalculateDownloadSpace___block_invoke;
  v71[3] = &unk_4B4D38;
  v71[4] = v43;
  v75 = 4;
  v72 = v44;
  v73 = v66;
  v74 = v46;
  [v51 checkAvailableSpace:v66 allowPurgeWithUrgency:4 withCompletionQueue:v53 completion:v71];

  v4 = v44;
LABEL_44:
}

void __46__MADAutoAssetJob__setCalculateDownloadSpace___block_invoke(uint64_t a1, unsigned int a2, unint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    if ([v10 code] == &dword_0 + 3)
    {
      v12 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 32) autoJobName];
        v14 = *(a1 + 40);
        *buf = 138543618;
        v86 = v13;
        v87 = 2114;
        v88 = v14;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@}\n[CALCULATE_DOWNLOAD_SPACE] MobileAsset does not support cache delete - starting set download without regardless of space needed", buf, 0x16u);
      }

      goto LABEL_8;
    }

    v83 = a2;
    v19 = [MAAutoAssetError buildError:6107 fromOperation:*(a1 + 40) underlyingError:v11 withDescription:@"error while verifying there is enough space for download"];
    v20 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [*(a1 + 32) autoJobName];
      v22 = *(a1 + 40);
      v23 = [v11 checkedDescription];
      *buf = 138543874;
      v86 = v21;
      v87 = 2114;
      v88 = v22;
      v89 = 2114;
      v90 = v23;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%{public}@ {%{public}@}\n[CALCULATE_DOWNLOAD_SPACE] error occurred when checking space availability CacheDeleteMgrError:%{public}@", buf, 0x20u);
    }

    v99[0] = @"CacheDeleteLevel";
    v24 = [NSNumber numberWithInt:*(a1 + 64)];
    v100[0] = v24;
    v99[1] = @"AvailableFreeSpace";
    v25 = [NSNumber numberWithUnsignedLongLong:a3 >> 20];
    v100[1] = v25;
    v99[2] = @"TotalRequiredSpace";
    v26 = [NSNumber numberWithUnsignedLongLong:*(a1 + 48) >> 20];
    v100[2] = v26;
    v99[3] = @"StillNeededSpace";
    v27 = *(a1 + 48);
    v28 = v27 >= a3;
    v29 = (v27 - a3) >> 20;
    if (v28)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v31 = [NSNumber numberWithUnsignedLongLong:v30];
    v99[4] = @"IsMAAutoAsset";
    v100[3] = v31;
    v100[4] = @"YES";
    v32 = [NSDictionary dictionaryWithObjects:v100 forKeys:v99 count:5];

    v33 = getDownloadManager();
    v34 = [*(a1 + 32) setConfiguration];
    v35 = [v34 firstEntryAssetType];
    v36 = [*(a1 + 32) firstClientName];
    v37 = [*(a1 + 32) autoAssetUUID];
    [v33 trackDownloadCannotStartResult:37 assetType:v35 connection:0 requestMessage:0 clientName:v36 autoAssetJobID:v37 ofJobType:@"asset_job" underlyingError:v11 additionalData:v32];

    v38 = [MADAutoAssetJobParam alloc];
    v39 = [*(a1 + 32) autoAssetUUID];
    v17 = [(MADAutoAssetJobParam *)v38 initForFinishedJobID:v39 withError:v19];

    v18 = @"SetCheckSpaceFailure";
  }

  else
  {
    if (a2)
    {
      [*(a1 + 32) setSetSpaceCheckedUUID:v9];
LABEL_8:
      v15 = [MADAutoAssetJobParam alloc];
      v16 = [*(a1 + 32) _updateLatestSummary];
      v17 = [(MADAutoAssetJobParam *)v15 initWithSafeSummary:v16];

      v18 = @"SetEnoughSpaceForDownload";
      goto LABEL_19;
    }

    v83 = a2;
    v81 = v9;
    v97[0] = @"TotalRequiredSpaceForSetDownload";
    v40 = [NSNumber numberWithLongLong:*(a1 + 48)];
    v98[0] = v40;
    v97[1] = @"StillNeededSpaceForSetDownload";
    v41 = [NSNumber numberWithUnsignedLongLong:*(a1 + 48) - a3];
    v98[1] = v41;
    v42 = [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:2];

    v43 = [NSString stringWithFormat:@"action_SetCalculateDownloadSpace:NotEnoughSpaceForSetDownload(%lld)", 6209];
    v44 = [NSString alloc];
    v45 = [v42 objectForKeyedSubscript:@"StillNeededSpaceForSetDownload"];
    v77 = v43;
    v46 = [v44 initWithFormat:@"[%@] Not enough space to download the auto asset set.  Space still needed: %@", v43, v45];

    v47 = objc_opt_new();
    v76 = v46;
    [v47 setSafeObject:v46 forKey:NSLocalizedDescriptionKey];
    v79 = v42;
    [v47 setSafeObject:v42 forKey:@"DownloadSpaceDetails"];
    v48 = [NSError errorWithDomain:@"com.apple.MobileAssetError.AutoAsset" code:6209 userInfo:v47];
    v49 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = *(a1 + 48);
      v51 = *(a1 + 64);
      *buf = 134349568;
      v86 = v50;
      v87 = 2050;
      v88 = a3;
      v89 = 1026;
      LODWORD(v90) = v51;
      _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEFAULT, "Not enough space to download the asset.  Required space: %{public}llu.  Available Space: %{public}llu.  CacheDelete level: %{public}d", buf, 0x1Cu);
    }

    v95[0] = @"CacheDeleteLevel";
    v52 = [NSNumber numberWithInt:*(a1 + 64)];
    v96[0] = v52;
    v95[1] = @"AvailableFreeSpace";
    v53 = [NSNumber numberWithUnsignedLongLong:a3 >> 20];
    v96[1] = v53;
    v95[2] = @"TotalRequiredSpace";
    v54 = [NSNumber numberWithUnsignedLongLong:*(a1 + 48) >> 20];
    v96[2] = v54;
    v95[3] = @"StillNeededSpace";
    v55 = [NSNumber numberWithUnsignedLongLong:(*(a1 + 48) - a3) >> 20];
    v95[4] = @"IsMAAutoAsset";
    v96[3] = v55;
    v96[4] = @"YES";
    v56 = [NSDictionary dictionaryWithObjects:v96 forKeys:v95 count:5];

    v57 = getDownloadManager();
    v58 = [*(a1 + 32) setConfiguration];
    v59 = [v58 firstEntryAssetType];
    v60 = [*(a1 + 32) firstClientName];
    v61 = [*(a1 + 32) autoAssetUUID];
    [v57 trackDownloadCannotStartResult:37 assetType:v59 connection:0 requestMessage:0 clientName:v60 autoAssetJobID:v61 ofJobType:@"asset_job" underlyingError:v48 additionalData:v56];

    v62 = [MADAutoAssetJobParam alloc];
    v63 = [*(a1 + 32) autoAssetUUID];
    v17 = [(MADAutoAssetJobParam *)v62 initForFinishedJobID:v63 withError:v48];

    v18 = @"SetNotEnoughSpaceForDownload";
    v9 = v81;
  }

  a2 = v83;
LABEL_19:
  v64 = [*(a1 + 32) autoAssetSelector];

  v65 = _MADLog(@"V2Control");
  v66 = v65;
  v67 = *(a1 + 56);
  if (v64)
  {
    if (v67 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
    {
      v82 = v9;
      v84 = a2;
      v78 = mach_continuous_time();
      v80 = *(a1 + 64);
      v68 = [*(a1 + 32) autoAssetSelector];
      v69 = [v68 summary];
      v70 = [v69 UTF8String];
      if (v11)
      {
        v9 = [v11 checkedDescription];
        v71 = [v9 UTF8String];
      }

      else
      {
        v71 = "";
      }

      *buf = 134350082;
      v86 = v78;
      v87 = 2050;
      v88 = v84;
      v89 = 2050;
      v90 = v80;
      v91 = 2082;
      v92 = v70;
      v93 = 2082;
      v94 = v71;
      _os_signpost_emit_with_name_impl(&dword_0, v66, OS_SIGNPOST_INTERVAL_END, v67, "GarbageCollection", "%{public, signpost.description:end_time}llu EnoughSpace=%{public, signpost.telemetry:number1,name=EnoughSpace}lld Urgency=%{public, signpost.telemetry:number2,name=Urgency}lldAssetType=%{public, signpost.telemetry:string1,name=AssetType}sError=%{public, signpost.telemetry:string2,name=Error}s enableTelemetry=YES ", buf, 0x34u);
      if (v11)
      {
      }

LABEL_35:
      v9 = v82;
    }
  }

  else if (v67 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
  {
    v82 = v9;
    v72 = mach_continuous_time();
    v73 = *(a1 + 64);
    if (v11)
    {
      v64 = [v11 checkedDescription];
      v74 = [v64 UTF8String];
    }

    else
    {
      v74 = "";
    }

    *buf = 134349826;
    v86 = v72;
    v87 = 2050;
    v88 = a2;
    v89 = 2050;
    v90 = v73;
    v91 = 2082;
    v92 = v74;
    _os_signpost_emit_with_name_impl(&dword_0, v66, OS_SIGNPOST_INTERVAL_END, v67, "GarbageCollection", "%{public, signpost.description:end_time}llu EnoughSpace=%{public, signpost.telemetry:number1,name=EnoughSpace}lld Urgency=%{public, signpost.telemetry:number2,name=Urgency}lldError=%{public, signpost.telemetry:string1,name=Error}s enableTelemetry=YES ", buf, 0x2Au);
    if (v11)
    {
    }

    goto LABEL_35;
  }

  v75 = [*(a1 + 32) autoJobFSM];
  [v75 postEvent:v18 withInfo:v17];
}

- (void)_extendCatalogDownloadOptionsWithAnalyticsData:(id)a3
{
  v5 = a3;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(MADAutoAssetJob *)self _baseAnalyticsData:v5];
  if ([v8 count])
  {
    v9 = [(MADAutoAssetJob *)self catalogDownloadOptions];
    [v9 setAnalyticsData:v8];
  }

  v10 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(MADAutoAssetJob *)self autoJobName];
    v12 = [(MADAutoAssetJob *)self catalogDownloadOptions];
    v13 = [v12 analyticsData];
    if (v13)
    {
      self = [(MADAutoAssetJob *)self catalogDownloadOptions];
      v3 = [(MADAutoAssetJob *)self analyticsData];
      v14 = [v3 safeSummary];
    }

    else
    {
      v14 = @"N";
    }

    v15 = 138543874;
    v16 = v11;
    v17 = 2114;
    v18 = v5;
    v19 = 2114;
    v20 = v14;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ | {%{public}@:_extendCatalogDownloadOptionsWithAnalyticsData} analyticsData:%{public}@", &v15, 0x20u);
    if (v13)
    {
    }
  }
}

- (void)_extendAssetDownloadOptionsWithAnalyticsData:(id)a3 forDescriptor:(id)a4 withBaseForPatch:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MADAutoAssetJob *)self autoJobFSM];
  v12 = [v11 extendedStateQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [(MADAutoAssetJob *)self _baseAnalyticsData:v8];
  v14 = [(MADAutoAssetJob *)self autoAssetSelector];
  v15 = [v14 assetType];

  if (!v15 || (-[MADAutoAssetJob autoAssetSelector](self, "autoAssetSelector"), v16 = objc_claimAutoreleasedReturnValue(), [v16 assetType], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "assetType"), v18 = objc_claimAutoreleasedReturnValue(), v19 = +[SUCore stringIsEqual:to:](SUCore, "stringIsEqual:to:", v17, v18), v18, v17, v16, (v19 & 1) == 0))
  {
    v20 = [v9 assetType];
    [v13 setSafeObject:v20 forKey:@"AssetType"];
  }

  v21 = [(MADAutoAssetJob *)self autoAssetSelector];
  v22 = [v21 assetSpecifier];

  if (!v22 || (-[MADAutoAssetJob autoAssetSelector](self, "autoAssetSelector"), v23 = objc_claimAutoreleasedReturnValue(), [v23 assetSpecifier], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "assetSpecifier"), v25 = objc_claimAutoreleasedReturnValue(), v26 = +[SUCore stringIsEqual:to:](SUCore, "stringIsEqual:to:", v24, v25), v25, v24, v23, (v26 & 1) == 0))
  {
    v27 = [v9 assetSpecifier];
    [v13 setSafeObject:v27 forKey:@"AssetSpecifier"];
  }

  v28 = [v9 assetVersion];
  [v13 setSafeObject:v28 forKey:@"AssetVersion"];

  if ([v9 isMAAutoAsset])
  {
    v29 = @"YES";
  }

  else
  {
    v29 = @"NO";
  }

  [v13 setSafeObject:v29 forKey:@"IsMAAutoAsset"];
  v30 = [v9 assetFormat];
  [v13 setSafeObject:v30 forKey:@"AssetFormat"];

  v31 = [v9 metadata];
  v32 = [v31 safeStringForKey:@"Build"];
  [v13 setSafeObject:v32 forKey:@"AssetTargetBuildVersion"];

  v33 = [v9 metadata];
  v34 = [v33 safeStringForKey:@"OSVersion"];
  [v13 setSafeObject:v34 forKey:@"AssetTargetOSVersion"];

  if (v10)
  {
    [v13 setSafeObject:@"YES" forKey:@"IsAssetPatch"];
    v35 = [v10 assetVersion];
    [v13 setSafeObject:v35 forKey:@"BaseAssetVersion"];

    [v13 setSafeObject:@"YES" forKey:@"WasAssetPatchingAttempted"];
    v36 = [v9 patchingAttemptError];

    if (v36)
    {
      v37 = @"FULL_REPLACEMENT_NO_POSSIBLE_PATCH_FROM_BASE";
    }

    else
    {
      v37 = @"PATCH_SUCCESS";
    }

    goto LABEL_19;
  }

  [v13 setSafeObject:@"NO" forKey:@"IsAssetPatch"];
  if (![v9 patchingAttempted])
  {
    v37 = @"FULL_REPLACEMENT_NO_PRIOR";
LABEL_19:
    v43 = @"AssetPatchingPallasResult";
    goto LABEL_20;
  }

  v38 = [v9 patchingAttemptError];

  if (v38)
  {
    v39 = [v9 patchingAttemptError];
    v40 = [v39 checkedSummary];
    [v13 setSafeObject:v40 forKey:@"AssetPatchingFailureReason"];

    v41 = [v9 patchingAttemptError];
    v42 = [v41 checkedDescription];
    [v13 setSafeObject:v42 forKey:@"AssetPatchingFailureError"];

    [v13 setSafeObject:@"FULL_REPLACEMENT_PATCH_ATTEMPT_FAILED" forKey:@"AssetPatchingPallasResult"];
  }

  v37 = @"YES";
  v43 = @"WasAssetPatchingAttempted";
LABEL_20:
  [v13 setSafeObject:v37 forKey:v43];
  if ([v13 count])
  {
    v44 = [(MADAutoAssetJob *)self assetDownloadOptions];
    [v44 setAnalyticsData:v13];
  }

  v45 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v51 = v10;
    v46 = v8;
    v47 = [(MADAutoAssetJob *)self autoJobName];
    v48 = [(MADAutoAssetJob *)self assetDownloadOptions];
    v49 = [v48 analyticsData];
    if (v49)
    {
      self = [(MADAutoAssetJob *)self assetDownloadOptions];
      v8 = [(MADAutoAssetJob *)self analyticsData];
      v50 = [v8 safeSummary];
    }

    else
    {
      v50 = @"N";
    }

    *buf = 138543874;
    v53 = v47;
    v54 = 2114;
    v55 = v46;
    v56 = 2114;
    v57 = v50;
    _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "%{public}@ | {%{public}@:_extendAssetDownloadOptionsWithAnalyticsData} analyticsData:%{public}@", buf, 0x20u);
    if (v49)
    {
    }

    v8 = v46;
    v10 = v51;
  }
}

- (id)_baseAnalyticsData:(id)a3
{
  v4 = [(MADAutoAssetJob *)self autoJobFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_alloc_init(NSMutableDictionary);
  [v6 setSafeObject:@"YES" forKey:@"IsAutoDownload"];
  v7 = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];
  if (v7)
  {
    v8 = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];
    [v6 setSafeObject:v8 forKey:@"TriggeringLayer"];
  }

  else
  {
    [v6 setSafeObject:@"Unknown" forKey:@"TriggeringLayer"];
  }

  v9 = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];

  if (v9)
  {
    v10 = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];
    if (([SUCore stringIsEqual:v10 to:@"ClientInterest"]& 1) != 0)
    {
LABEL_10:

LABEL_11:
      v13 = [(MADAutoAssetJob *)self autoAssetInstance];
      v14 = [v13 autoAssetClientName];
      [v6 setSafeObject:v14 forKey:@"ClientName"];

      goto LABEL_12;
    }

    v11 = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];
    if (([SUCore stringIsEqual:v11 to:@"ClientCheck"]& 1) != 0)
    {
LABEL_9:

      goto LABEL_10;
    }

    v12 = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];
    if ([SUCore stringIsEqual:v12 to:@"ClientDetermine"])
    {

      goto LABEL_9;
    }

    v24 = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];
    v25 = [SUCore stringIsEqual:v24 to:@"ClientLock"];

    if (v25)
    {
      goto LABEL_11;
    }

    v26 = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];
    v27 = [SUCore stringIsEqual:v26 to:@"Scheduler"];

    if (v27)
    {
      v28 = @"AutoAssetScheduler";
    }

    else
    {
      v29 = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];
      v30 = [SUCore stringIsEqual:v29 to:@"Stager"];

      if (!v30)
      {
        goto LABEL_12;
      }

      v28 = @"AutoAssetStager";
    }

    [v6 setSafeObject:v28 forKey:@"ClientName"];
  }

LABEL_12:
  v15 = [(MADAutoAssetJob *)self autoAssetSelector];
  v16 = [v15 assetType];
  [v6 setSafeObject:v16 forKey:@"AssetType"];

  v17 = [(MADAutoAssetJob *)self autoAssetSelector];
  v18 = [v17 assetSpecifier];
  [v6 setSafeObject:v18 forKey:@"AssetSpecifier"];

  v19 = [(MADAutoAssetJob *)self autoAssetSelector];
  v20 = [v19 assetVersion];

  if (v20)
  {
    v21 = [(MADAutoAssetJob *)self autoAssetSelector];
    v22 = [v21 assetVersion];
    [v6 setSafeObject:v22 forKey:@"AssetVersion"];
  }

  return v6;
}

- (id)newCurrentStatusForDescriptor:(id)a3
{
  v4 = a3;
  v5 = [MAAutoAssetStatus alloc];
  v6 = objc_opt_respondsToSelector();

  v7 = [MAAutoAssetStatus alloc];
  if (v6)
  {
    v34 = [(MADAutoAssetJob *)self autoAssetSelector];
    v8 = objc_alloc_init(MAAutoAssetNotifications);
    v9 = [v4 metadata];
    v10 = [(MADAutoAssetJob *)self downloadingUserInitiated];
    v11 = [v4 patchingAttempted];
    v12 = [v4 stagedPriorToAvailable];
    v13 = [v4 stagedFromOSVersion];
    v14 = [v4 stagedFromBuildVersion];
    v15 = [v4 patchingAttemptError];
    BYTE1(v33) = v12;
    LOBYTE(v33) = v11;
    LOBYTE(v31) = 0;
    v16 = [v7 initWithAssetSelector:v34 withNotifications:v8 withAvailableForUseAttributes:0 withNewerVersionAttributes:v9 withNeverBeenLocked:1 withDownloadUserInitiated:v10 withDownloadProgress:0 withDownloadedNetworkBytes:-1 withDownloadedFilesystemBytes:-1 withDownloadedAsPatch:v31 withPatchedFromBaseSelector:0 withPatchedFromBaseFilesystemBytes:-1 withPatchingAttempted:v33 withStagedPriorToAvailable:v13 withStagedFromOSVersion:v14 withStagedFromBuildVersion:0 withCurrentLockUsage:0 withAvailableForUseError:v15 withPatchingAttemptError:0 withNewerVersionError:?];
  }

  else
  {
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v35 = [MAAutoAssetStatus alloc];
      v18 = [(MADAutoAssetJob *)self autoAssetSelector];
      v19 = objc_alloc_init(MAAutoAssetNotifications);
      v20 = [v4 metadata];
      v21 = [(MADAutoAssetJob *)self downloadingUserInitiated];
      v22 = [v4 patchingAttempted];
      v23 = [v4 stagedPriorToAvailable];
      v24 = [v4 stagedFromOSVersion];
      v25 = [v4 stagedFromBuildVersion];
      v26 = [v4 patchingAttemptError];
      BYTE1(v32) = v23;
      LOBYTE(v32) = v22;
      LOBYTE(v30) = 0;
      v16 = [v35 initWithAssetSelector:v18 withNotifications:v19 withAvailableForUseAttributes:0 withNewerVersionAttributes:v20 withDownloadUserInitiated:v21 withDownloadProgress:0 withDownloadedNetworkBytes:-1 withDownloadedFilesystemBytes:-1 withDownloadedAsPatch:v30 withPatchedFromBaseSelector:0 withPatchedFromBaseFilesystemBytes:-1 withPatchingAttempted:v32 withStagedPriorToAvailable:v24 withStagedFromOSVersion:v25 withStagedFromBuildVersion:0 withCurrentLockUsage:0 withAvailableForUseError:v26 withPatchingAttemptError:0 withNewerVersionError:?];
    }

    else
    {
      v27 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = [(MADAutoAssetJob *)self autoJobName];
        *buf = 138543362;
        v37 = v28;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%{public}@ | {autoAssetJobFinished} [MA_BRAIN_SHIM_PROTOCOL_SUPPORT] unable to create current status for job", buf, 0xCu);
      }

      v16 = 0;
    }
  }

  return v16;
}

- (void)statusChange:(id)a3 catalogAnomaly:(int64_t)a4 forReason:(id)a5
{
  v11 = a5;
  v8 = a3;
  v9 = [(MADAutoAssetJob *)self autoJobFSM];
  v10 = [v9 extendedStateQueue];
  dispatch_assert_queue_V2(v10);

  [(MADAutoAssetJob *)self statusChange:v8 catalogFailure:a4 forReason:v11];
  [(MADAutoAssetJob *)self trackAnomaly:a4 forReason:v11];
}

- (void)statusChange:(id)a3 catalogFailure:(int64_t)a4 forReason:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(MADAutoAssetJob *)self autoJobFSM];
  v11 = [v10 extendedStateQueue];
  dispatch_assert_queue_V2(v11);

  LODWORD(v11) = [(MADAutoAssetJob *)self autoAssetSetJob];
  v12 = [NSString alloc];
  if (v11)
  {
    v18 = [v12 initWithFormat:@"AUTO-SET-JOB(%@)", v9];

    v13 = [MAAutoAssetError buildError:a4 fromOperation:v18 underlyingError:0 withDescription:v8];

    v14 = [(MADAutoAssetJob *)self currentSetStatus];
    [v14 setNewerVersionError:v13];
  }

  else
  {
    v15 = [v12 initWithFormat:@"AUTO-JOB(%@)", v9];

    v16 = [MAAutoAssetError buildError:a4 fromOperation:v15 underlyingError:0 withDescription:v8];

    v17 = [(MADAutoAssetJob *)self currentStatus];
    [v17 setNewerVersionError:v16];

    v18 = [(MADAutoAssetJob *)self currentStatus];
    v13 = [v18 notifications];
    [v13 setCheckForNewerFailure:1];
  }
}

- (void)statusChangeCatalogFoundNewer:(id)a3
{
  v4 = [(MADAutoAssetJob *)self autoJobFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {

    [(MADAutoAssetJob *)self statusChange:@"statusChangeCatalogFoundNewer" catalogAnomaly:6103 forReason:@"statusChangeCatalogFoundNewer should never execute for set-job"];
  }

  else
  {
    v6 = [(MADAutoAssetJob *)self resultSelector];
    v7 = [(MADAutoAssetJob *)self currentStatus];
    [v7 setAssetSelector:v6];

    v8 = [(MADAutoAssetJob *)self newerFoundAssetDescriptor];
    v9 = [v8 metadata];
    v10 = [(MADAutoAssetJob *)self currentStatus];
    [v10 setNewerVersionAttributes:v9];

    v12 = [(MADAutoAssetJob *)self currentStatus];
    v11 = [v12 notifications];
    [v11 setNewerVersionDiscovered:1];
  }
}

- (void)statusChangeSetCatalogFoundNewer:(id)a3
{
  v4 = [(MADAutoAssetJob *)self autoJobFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {

    [(MADAutoAssetJob *)self statusChange:@"statusChangeCatalogFoundNewer" catalogAnomaly:6103 forReason:@"statusChangeCatalogFoundNewer should only execute for set-job"];
  }
}

- (void)statusChangeCatalogFoundSame:(id)a3
{
  v4 = [(MADAutoAssetJob *)self autoJobFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {

    [(MADAutoAssetJob *)self statusChange:@"statusChangeCatalogFoundSame" catalogAnomaly:6103 forReason:@"statusChangeCatalogFoundSame should never execute for set-job"];
  }

  else
  {
    v6 = [(MADAutoAssetJob *)self resultSelector];
    v7 = [(MADAutoAssetJob *)self currentStatus];
    [v7 setAssetSelector:v6];

    v8 = [(MADAutoAssetJob *)self currentStatus];
    v9 = [v8 notifications];
    [v9 setContentAvailableForUse:1];

    v12 = [(MADAutoAssetJob *)self resultFound];
    v10 = [v12 assetAttributes];
    v11 = [(MADAutoAssetJob *)self currentStatus];
    [v11 setAvailableForUseAttributes:v10];
  }
}

- (void)statusChangeStartingAssetDownload:(id)a3 downloadingPatch:(BOOL)a4
{
  v4 = a4;
  v6 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    [(MADAutoAssetJob *)self latchWhetherDownloadingUserInitiated];
    v8 = [(MADAutoAssetJob *)self currentSetStatus];
    v9 = [v8 currentNotifications];
    [v9 setDownloadPending:1];

    v10 = [(MADAutoAssetJob *)self currentSetStatus];
    v11 = [v10 currentNotifications];
  }

  else
  {
    if (v4)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    [(MADAutoAssetJob *)self setProgressReportPhase:v12];
    v13 = objc_alloc_init(MAAutoAssetProgress);
    v14 = [(MADAutoAssetJob *)self currentStatus];
    [v14 setDownloadProgress:v13];

    [(MADAutoAssetJob *)self latchWhetherDownloadingUserInitiated];
    v15 = objc_alloc_init(MAAutoAssetProgress);
    v16 = [(MADAutoAssetJob *)self currentStatus];
    [v16 setDownloadProgress:v15];

    v17 = [(MADAutoAssetJob *)self currentStatus];
    v18 = [v17 notifications];
    [v18 setDownloadPending:1];

    v10 = [(MADAutoAssetJob *)self currentStatus];
    v11 = [v10 notifications];
  }

  v19 = v11;
  [v11 setDownloadProgress:1];

  [(MADAutoAssetJob *)self statusChangeReportCurrent:0];
}

- (void)statusChangeDownloadProgress:(id)a3
{
  v31 = a3;
  v4 = [(MADAutoAssetJob *)self autoJobFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  if (!v31)
  {
    v8 = [NSString alloc];
    v9 = [(MADAutoAssetJob *)self progressReportPhaseName];
    v10 = [v8 initWithFormat:@"{statusChangeDownloadProgress} no download progress provided | phase:%@ | no progress change", v9];
    [(MADAutoAssetJob *)self trackAnomaly:6102 forReason:v10];

    goto LABEL_22;
  }

  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v11 = [(MADAutoAssetJob *)self progressReportPhase];
    if (v11 <= 1)
    {
      if (v11)
      {
        if (v11 != 1)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      v15 = [NSString alloc];
      v16 = [(MADAutoAssetJob *)self progressReportPhaseName];
      v17 = [v31 summary];
      v18 = [v15 initWithFormat:@"{statusChangeDownloadProgress} download progress provided when not downloading | phase:%@ | ignored progress:%@", v16, v17];
      [(MADAutoAssetJob *)self trackAnomaly:6108 forReason:v18];

      goto LABEL_20;
    }

    if (v11 == 2)
    {
      v19 = [(MADAutoAssetJob *)self currentStatus];
      [v19 setDownloadProgress:v31];

      [(MADAutoAssetJob *)self setLastReportedPatchProgress:v31];
      goto LABEL_20;
    }

    if (v11 != 3)
    {
LABEL_20:
      v6 = [(MADAutoAssetJob *)self currentStatus];
      v7 = [v6 notifications];
      goto LABEL_21;
    }

    v12 = [(MADAutoAssetJob *)self lastReportedPatchProgress];

    if (v12)
    {
      v13 = [v31 totalExpectedBytes];
      v14 = [(MADAutoAssetJob *)self lastReportedPatchProgress];
      if (v13 < [v14 totalExpectedBytes])
      {

LABEL_17:
        v23 = [v31 isStalled];
        v24 = [(MADAutoAssetJob *)self currentStatus];
        v25 = [v24 downloadProgress];
        [v25 setIsStalled:v23];

        [v31 expectedTimeRemainingSecs];
        v27 = v26;
        v28 = [(MADAutoAssetJob *)self currentStatus];
        v29 = [v28 downloadProgress];
        [v29 setExpectedTimeRemainingSecs:v27];

LABEL_19:
        goto LABEL_20;
      }

      v20 = [v31 totalWrittenBytes];
      v21 = [(MADAutoAssetJob *)self lastReportedPatchProgress];
      v22 = [v21 totalWrittenBytes];

      if (v20 < v22)
      {
        goto LABEL_17;
      }
    }

LABEL_18:
    v28 = [(MADAutoAssetJob *)self currentStatus];
    [v28 setDownloadProgress:v31];
    goto LABEL_19;
  }

  [(MADAutoAssetJob *)self setProgressAssetDownload:v31];
  v6 = [(MADAutoAssetJob *)self currentSetStatus];
  v7 = [v6 currentNotifications];
LABEL_21:
  v30 = v7;
  [v7 setDownloadProgress:1];

  [(MADAutoAssetJob *)self statusChangeReportCurrent:0];
  [(MADAutoAssetJob *)self _statusChangeDownloadProgressDecideLog:v31];
LABEL_22:
}

- (void)_statusChangeDownloadProgressDecideLog:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  if ([(MADAutoAssetJob *)self progressLogsFilteredCount]<= 0)
  {
    v9 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(MADAutoAssetJob *)self autoAssetUUID];
      v11 = [v4 summary];
      v12 = 138543618;
      v13 = v10;
      v14 = 2114;
      v15 = v11;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] (progress) [%{public}@]", &v12, 0x16u);
    }

    v7 = self;
    v8 = 1;
    goto LABEL_7;
  }

  [(MADAutoAssetJob *)self setProgressLogsFilteredCount:[(MADAutoAssetJob *)self progressLogsFilteredCount]+ 1];
  if ([(MADAutoAssetJob *)self progressLogsFilteredCount]>= 10)
  {
    v7 = self;
    v8 = 0;
LABEL_7:
    [(MADAutoAssetJob *)v7 setProgressLogsFilteredCount:v8];
  }
}

- (void)statusChangeSuccesfullyPatched:(id)a3
{
  v21 = a3;
  v4 = [(MADAutoAssetJob *)self autoJobFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MADAutoAssetJob *)self baseForPatch];

  if (v6)
  {
    if ([(MADAutoAssetJob *)self autoAssetSetJob])
    {
      goto LABEL_6;
    }

    v7 = [MAAutoAssetSelector alloc];
    v8 = [(MADAutoAssetJob *)self baseForPatch];
    v9 = [v8 assetType];
    v10 = [(MADAutoAssetJob *)self baseForPatch];
    v11 = [v10 assetSpecifier];
    v12 = [(MADAutoAssetJob *)self baseForPatch];
    v13 = [v12 assetVersion];
    v14 = [v7 initForAssetType:v9 withAssetSpecifier:v11 matchingAssetVersion:v13];

    [(MADAutoAssetJob *)self statusChangeSuccessfullyDownloaded:v21];
    v15 = [(MADAutoAssetJob *)self currentStatus];
    [v15 setPatchedFromBaseSelector:v14];

    v16 = [(MADAutoAssetJob *)self baseForPatch];
    v17 = [v16 downloadedFilesystemBytes];
    v18 = [(MADAutoAssetJob *)self currentStatus];
    [v18 setPatchedFromBaseFilesystemBytes:v17];

    v19 = [(MADAutoAssetJob *)self currentStatus];
    [v19 setDownloadedAsPatch:1];
  }

  else
  {
    v20 = [NSString alloc];
    v14 = [(MADAutoAssetJob *)self progressReportPhaseName];
    v19 = [v20 initWithFormat:@"{%@:statusChangeSuccesfullyPatched} successfully patched yet no baseForPatch | phase:%@ | unable to update currentStatus with patched indications", v21, v14];
    [(MADAutoAssetJob *)self trackAnomaly:6111 forReason:v19];
  }

LABEL_6:
}

- (void)statusChangeSuccessfullyDownloaded:(id)a3
{
  v28 = a3;
  v4 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];

  if (v4)
  {
    if ([(MADAutoAssetJob *)self autoAssetSetJob])
    {
      [(MADAutoAssetJob *)self statusChange:@"statusChangeSuccessfullyDownloaded" catalogAnomaly:6103 forReason:@"statusChangeSuccessfullyDownloaded should never execute for set-job"];
    }

    else
    {
      v8 = [(MADAutoAssetJob *)self currentStatus];
      v9 = [v8 downloadProgress];
      v10 = [v9 totalWrittenBytes];

      v11 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
      v12 = [v11 metadata];
      v13 = [v12 safeIntegerForKey:@"_UnarchivedSize"];

      if (v13 <= 0)
      {
        v14 = [NSString alloc];
        v15 = [(MADAutoAssetJob *)self progressReportPhaseName];
        v16 = [v14 initWithFormat:@"{%@:statusChangeSuccessfullyDownloaded} downloadingAssetDescriptor metadata indicated invalid unarchivedSize:%ld | phase:%@", v28, v13, v15];
        [(MADAutoAssetJob *)self trackAnomaly:6108 forReason:v16];

        v13 = v10;
      }

      v17 = [(MADAutoAssetJob *)self currentStatus];
      [v17 setDownloadedFilesystemBytes:v13];

      v18 = [(MADAutoAssetJob *)self currentStatus];
      v19 = [v18 downloadProgress];
      v20 = [v19 totalWrittenBytes];
      v21 = [(MADAutoAssetJob *)self currentStatus];
      [v21 setDownloadedNetworkBytes:v20];

      v22 = [(MADAutoAssetJob *)self currentStatus];
      v23 = [v22 downloadedNetworkBytes];

      if (v23 <= 0)
      {
        v24 = [(MADAutoAssetJob *)self currentStatus];
        v25 = [v24 downloadedFilesystemBytes];
        v26 = [(MADAutoAssetJob *)self currentStatus];
        [v26 setDownloadedNetworkBytes:v25];
      }

      v27 = [(MADAutoAssetJob *)self currentStatus];
      [v27 setAvailableForUseError:0];
    }
  }

  else
  {
    v5 = [NSString alloc];
    v6 = [(MADAutoAssetJob *)self progressReportPhaseName];
    v7 = [v5 initWithFormat:@"{%@:statusChangeSuccessfullyDownloaded} successfully downloaded yet no downloadingAssetDescriptor | phase:%@ | unable to update currentStatus with downloaded indications", v28, v6];
    [(MADAutoAssetJob *)self trackAnomaly:6111 forReason:v7];
  }
}

- (void)statusChangeJobFinished:(id)a3 withResponseError:(id)a4
{
  v22 = a4;
  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v7 = [(MADAutoAssetJob *)self currentStatus];
    v8 = [v7 notifications];
    [v8 setDownloadPending:0];

    v9 = [(MADAutoAssetJob *)self progressReportPhase];
    v10 = v9;
    v11 = v22;
    if (v22)
    {
      v12 = [(MADAutoAssetJob *)self currentStatus];
      v13 = v12;
      if (v10)
      {
        [v12 setDownloadProgress:0];

        v14 = [(MADAutoAssetJob *)self currentStatus];
        [v14 setAvailableForUseError:v22];

        v15 = [(MADAutoAssetJob *)self currentStatus];
        v16 = [v15 notifications];
        [v16 setContentAvailableForUse:0];
      }

      else
      {
        [v12 setNewerVersionError:v22];

        v15 = [(MADAutoAssetJob *)self currentStatus];
        v16 = [v15 notifications];
        [v16 setCheckForNewerFailure:1];
      }
    }

    else
    {
      if (!v9)
      {
LABEL_11:
        [(MADAutoAssetJob *)self statusChangeReportCurrent:v11];
        goto LABEL_12;
      }

      v17 = [(MADAutoAssetJob *)self currentStatus];
      v18 = [v17 downloadProgress];
      v15 = [v18 copy];

      v19 = [v15 totalExpectedBytes];
      if (v19 != [v15 totalWrittenBytes])
      {
        [v15 setTotalExpectedBytes:{objc_msgSend(v15, "totalWrittenBytes")}];
      }

      [v15 setIsStalled:0];
      [v15 setExpectedTimeRemainingSecs:0.0];
      v20 = [(MADAutoAssetJob *)self currentStatus];
      [v20 setDownloadProgress:v15];

      v16 = [(MADAutoAssetJob *)self currentStatus];
      v21 = [v16 notifications];
      [v21 setContentAvailableForUse:1];
    }

    v11 = v22;
    goto LABEL_11;
  }

LABEL_12:
}

- (void)statusChangeReportCurrent:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  if ([(MADAutoAssetJob *)self stagerJob])
  {
    v39 = v4;
    v7 = [(MADAutoAssetJob *)self currentJobInformation:&v39];
    v8 = v39;

    [(MADAutoAssetJob *)self stagerJobReportProgress:v7 reportingError:v8];
    goto LABEL_19;
  }

  v32 = v4;
  v7 = objc_alloc_init(NSMutableArray);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [(MADAutoAssetJob *)self activeJobTasks];
  v9 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = v9;
  v11 = *v36;
  do
  {
    v12 = 0;
    do
    {
      if (*v36 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v35 + 1) + 8 * v12);
      v14 = objc_autoreleasePoolPush();
      if (v13)
      {
        v15 = [v13 clientRequest];

        if (!v15)
        {
          goto LABEL_13;
        }

        v16 = [v13 clientRequest];
        [v7 addObject:v16];
      }

      else
      {
        v16 = [(MADAutoAssetJob *)self autoJobFSM];
        [v16 diag];
        v18 = v17 = v7;
        v19 = [NSString alloc];
        [(MADAutoAssetJob *)self _updateLatestSummary];
        v21 = v20 = self;
        v22 = [v19 initWithFormat:@"{statusChangeReportCurrent} nil jobParam found on activeJobTasks | %@", v21];
        [v18 trackAnomaly:@"AUTO-JOB" forReason:v22 withResult:6103 withError:0];

        self = v20;
        v7 = v17;
      }

LABEL_13:
      objc_autoreleasePoolPop(v14);
      v12 = v12 + 1;
    }

    while (v10 != v12);
    v10 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  }

  while (v10);
LABEL_15:

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v23 = [(MADAutoAssetJob *)self autoAssetSetIdentifier];
    v24 = [(MADAutoAssetJob *)self autoAssetUUID];
    v25 = self;
    v26 = v24;
    v27 = [(MADAutoAssetJob *)v25 setJobInformation];
    v28 = [v27 copy];
    v8 = v32;
    [MADAutoAssetControlManager autoSetJobIssueProgress:v7 forAssetSetIdentifier:v23 withAutoAssetUUID:v26 withSetJobInformation:v28 withResponseError:v32];
  }

  else
  {
    v23 = [(MADAutoAssetJob *)self mostSpecificSelectorToReport];
    v29 = [(MADAutoAssetJob *)self autoAssetUUID];
    v30 = self;
    v26 = v29;
    v34 = v32;
    v27 = [(MADAutoAssetJob *)v30 currentJobInformation:&v34];
    v31 = v34;

    [MADAutoAssetControlManager autoAssetJobIssueProgress:v7 forAutoAssetSelector:v23 withAutoAssetUUID:v26 withJobInformation:v27 withResponseError:v31];
    v8 = v31;
  }

LABEL_19:
}

- (void)latchWhetherDownloadingUserInitiated
{
  v3 = [(MADAutoAssetJob *)self autoJobFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  if (![(MADAutoAssetJob *)self downloadingUserInitiated])
  {
    if (-[MADAutoAssetJob configuredToUserInitiated](self, "configuredToUserInitiated") || (-[MADAutoAssetJob aggregatedClientAssetPolicy](self, "aggregatedClientAssetPolicy"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 userInitiated], v5, v6))
    {
      [(MADAutoAssetJob *)self _updateUserInitiatedFields];
      v7 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(MADAutoAssetJob *)self autoJobName];
        v9 = 138543362;
        v10 = v8;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ | {latchWhetherDownloadingUserInitiated} now user-initiated for remainder of job lifecycle", &v9, 0xCu);
      }
    }
  }
}

- (id)progressReportPhaseName
{
  v2 = [(MADAutoAssetJob *)self progressReportPhase];
  if (v2 > 3)
  {
    return @"UNKNOWN";
  }

  else
  {
    return *(&off_4B4D58 + v2);
  }
}

- (void)simulateSet:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 controlInformation];

  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = [v4 controlInformation];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_10:
    v15 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = [(MADAutoAssetJob *)self autoJobName];
      v20 = [(MADAutoAssetJob *)self _updateLatestSummary];
      v37 = 138543618;
      v38 = v19;
      v39 = 2114;
      v40 = v20;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%{public}@ {simulateSet} | SIMULATE_SET | older MAAutoAsset framework without support for simulateOperation,simulateEnd\nJOB-SUMMARY:%{public}@", &v37, 0x16u);
    }

    goto LABEL_12;
  }

  v9 = [v4 controlInformation];
  v10 = objc_opt_respondsToSelector();

  if ((v10 & 1) == 0)
  {
    goto LABEL_10;
  }

  v11 = [v4 controlInformation];
  v12 = [v11 simulateOperation];

  if (v12 != &dword_8 + 3)
  {
    v21 = [(MADAutoAssetJob *)self simulateOperation];
    v22 = [v4 controlInformation];
    if (v21 == [v22 simulateOperation])
    {
      v23 = [(MADAutoAssetJob *)self simulateEnd];
      v24 = [v4 controlInformation];
      v25 = [v24 simulateEnd];

      if (v23 == v25)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    if ([(MADAutoAssetJob *)self simulateOperation])
    {
      v15 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v26 = [(MADAutoAssetJob *)self autoJobName];
        v27 = [v4 controlInformation];
        v28 = +[MANAutoAssetInfoControl nameOfSimulateOperation:](MANAutoAssetInfoControl, "nameOfSimulateOperation:", [v27 simulateOperation]);
        v29 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MADAutoAssetJob *)self simulateOperation]];
        v30 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
        v31 = [(MADAutoAssetJob *)self _updateLatestSummary];
        v37 = 138544386;
        v38 = v26;
        v39 = 2114;
        v40 = v28;
        v41 = 2114;
        v42 = v29;
        v43 = 2114;
        v44 = v30;
        v45 = 2114;
        v46 = v31;
        v32 = "%{public}@ {simulateSet} | unable to set new simulate operation(%{public}@) [already have operation] | simulateOperation:%{public}@, simulateEnd:%{public}@\nJOB-SUMMARY:%{public}@";
LABEL_23:
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, v32, &v37, 0x34u);

LABEL_26:
      }
    }

    else
    {
      v33 = [v4 controlInformation];
      -[MADAutoAssetJob setSimulateOperation:](self, "setSimulateOperation:", [v33 simulateOperation]);

      v34 = [v4 controlInformation];
      -[MADAutoAssetJob setSimulateEnd:](self, "setSimulateEnd:", [v34 simulateEnd]);

      [(MADAutoAssetJob *)self setSimulateTriggered:0];
      [(MADAutoAssetJob *)self setSimulateDescriptor:0];
      [(MADAutoAssetJob *)self setSimulateBaseForPatch:0];
      v15 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [(MADAutoAssetJob *)self autoJobName];
        v28 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MADAutoAssetJob *)self simulateOperation]];
        v36 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
        v37 = 138543874;
        v38 = v35;
        v39 = 2114;
        v40 = v28;
        v41 = 2114;
        v42 = v36;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ {simulateSet} | SIMULATE_SET | simulateOperation:%{public}@, simulateEnd:%{public}@", &v37, 0x20u);

        goto LABEL_26;
      }
    }

LABEL_12:

    goto LABEL_13;
  }

  v13 = [(MADAutoAssetJob *)self simulateTriggered];
  v14 = _MADLog(@"AutoJob");
  v15 = v14;
  if (!v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v26 = [(MADAutoAssetJob *)self autoJobName];
      v27 = [v4 controlInformation];
      v28 = +[MANAutoAssetInfoControl nameOfSimulateOperation:](MANAutoAssetInfoControl, "nameOfSimulateOperation:", [v27 simulateOperation]);
      v29 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MADAutoAssetJob *)self simulateOperation]];
      v30 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
      v31 = [(MADAutoAssetJob *)self _updateLatestSummary];
      v37 = 138544386;
      v38 = v26;
      v39 = 2114;
      v40 = v28;
      v41 = 2114;
      v42 = v29;
      v43 = 2114;
      v44 = v30;
      v45 = 2114;
      v46 = v31;
      v32 = "%{public}@ {simulateSet} | unable trigger immediate simulator operation(%{public}@) [- ]not yet triggered] | simulateOperation:%{public}@, simulateEnd:%{public}@\nJOB-SUMMARY:%{public}@";
      goto LABEL_23;
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(MADAutoAssetJob *)self autoJobName];
    v17 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MADAutoAssetJob *)self simulateOperation]];
    v18 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
    v37 = 138543874;
    v38 = v16;
    v39 = 2114;
    v40 = v17;
    v41 = 2114;
    v42 = v18;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ {simulateSet} | SIMULATE_IMMEDIATE | simulateOperation:%{public}@, simulateEnd:%{public}@", &v37, 0x20u);
  }

  [(MADAutoAssetJob *)self stagerJobDetermineDone:@"simulateSet" reportingError:0];
LABEL_13:
}

- (void)simulateEnd:(int64_t)a3
{
  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  if ([(MADAutoAssetJob *)self simulateTriggered]&& [(MADAutoAssetJob *)self simulateEnd]== a3)
  {
    [(MADAutoAssetJob *)self setSimulateOperation:0];
    v7 = objc_opt_respondsToSelector();
    v8 = [(MADAutoAssetJob *)self simulateTriggered];
    if (v7)
    {
      if (v8 <= 5)
      {
        if (v8 <= 2)
        {
          if (v8)
          {
            if (v8 == 1)
            {
              [(MADAutoAssetJob *)self requestDownloadManagerCatalogLookup:@"simulateEnd"];
              v11 = _MADLog(@"AutoJob");
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                v12 = [(MADAutoAssetJob *)self autoJobName];
                v13 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
                *v40 = 138543618;
                *&v40[4] = v12;
                *&v40[12] = 2114;
                *&v40[14] = v13;
                v14 = "%{public}@ {simulateEnd} | SIMULATE_END(%{public}@) | called registerCatalogDownloadJob";
                goto LABEL_80;
              }

              goto LABEL_82;
            }

            if (v8 == 2)
            {
              v9 = [(MADAutoAssetJob *)self simulateDescriptor];
              v10 = [(MADAutoAssetJob *)self simulateBaseForPatch];
              [(MADAutoAssetJob *)self requestDownloadManagerAssetDownload:@"simulateEnd" forDescriptor:v9 withBaseForPatch:v10];

              v11 = _MADLog(@"AutoJob");
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                v12 = [(MADAutoAssetJob *)self autoJobName];
                v13 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
                *v40 = 138543618;
                *&v40[4] = v12;
                *&v40[12] = 2114;
                *&v40[14] = v13;
                v14 = "%{public}@ {simulateEnd} | SIMULATE_END(%{public}@) | called registerAssetDownloadJob";
LABEL_80:
                _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, v14, v40, 0x16u);

                goto LABEL_81;
              }

              goto LABEL_82;
            }

            goto LABEL_83;
          }

          v11 = _MADLog(@"AutoJob");
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_82;
          }

          v30 = [(MADAutoAssetJob *)self autoJobName];
          v13 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
          v31 = [(MADAutoAssetJob *)self _updateLatestSummary];
          *v40 = 138543874;
          *&v40[4] = v30;
          *&v40[12] = 2114;
          *&v40[14] = v13;
          *&v40[22] = 2114;
          v41 = v31;
          v32 = "%{public}@ {simulateEnd} | SIMULATE_END(%{public}@) | no simulateOperation to end\nJOB-SUMMARY:%{public}@";
LABEL_52:
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, v32, v40, 0x20u);

LABEL_81:
          goto LABEL_82;
        }

        if (v8 == 3)
        {
          v34 = [(MADAutoAssetJob *)self simulateDescriptor];
          [(MADAutoAssetJob *)self requestDownloadManagerConfigDownload:@"simulateEnd" forDescriptor:v34];

          v11 = _MADLog(@"AutoJob");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = [(MADAutoAssetJob *)self autoJobName];
            v13 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
            *v40 = 138543618;
            *&v40[4] = v12;
            *&v40[12] = 2114;
            *&v40[14] = v13;
            v14 = "%{public}@ {simulateEnd} | SIMULATE_END(%{public}@) | called configAssetDownloadJob";
            goto LABEL_80;
          }

          goto LABEL_82;
        }

        if (v8 == 4)
        {
          v38 = [(MADAutoAssetJob *)self simulateDescriptor];
          [(MADAutoAssetJob *)self requestDownloadManagerCancelDownload:@"simulateEnd" forDescriptor:v38];

          v11 = _MADLog(@"AutoJob");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = [(MADAutoAssetJob *)self autoJobName];
            v13 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
            *v40 = 138543618;
            *&v40[4] = v12;
            *&v40[12] = 2114;
            *&v40[14] = v13;
            v14 = "%{public}@ {simulateEnd} | SIMULATE_END(%{public}@) | called cancelAssetDownloadJob";
            goto LABEL_80;
          }

          goto LABEL_82;
        }

        v11 = [(MADAutoAssetJob *)self simulatedErrorAtPhase:@"simulateEnd" fromOperation:@"FAIL_PATCH_DOWNLOAD" forAssetDownload:0];
        v23 = [(MADAutoAssetJob *)self autoAssetUUID];
        [(MADAutoAssetJob *)self handleDownloadAssetJobFinished:v23 downloadError:v11];

        v17 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [(MADAutoAssetJob *)self autoJobName];
          v25 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
          *v40 = 138543618;
          *&v40[4] = v24;
          *&v40[12] = 2114;
          *&v40[14] = v25;
          v26 = "%{public}@ {simulateEnd} | SIMULATE_END(%{public}@) | simulated patch download failure";
LABEL_62:
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, v26, v40, 0x16u);

          goto LABEL_75;
        }

        goto LABEL_75;
      }

      if (v8 <= 8)
      {
        if ((v8 - 7) >= 2)
        {
          if (v8 == 6)
          {
            [(MADAutoAssetJob *)self _autoAssetJobFinished:@"simulateEnd" forJobFinishedReason:@"SIMULATED_POSTPONE_ENDED" failingWithError:0];
            v11 = _MADLog(@"AutoJob");
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = [(MADAutoAssetJob *)self autoJobName];
              v13 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
              *v40 = 138543618;
              *&v40[4] = v12;
              *&v40[12] = 2114;
              *&v40[14] = v13;
              v14 = "%{public}@ {simulateEnd} | SIMULATE_END(%{public}@) | called autoAssetJobFinished";
              goto LABEL_80;
            }

LABEL_82:
          }

LABEL_83:
          [(MADAutoAssetJob *)self setSimulateEnd:0, *v40, *&v40[16], v41];
          [(MADAutoAssetJob *)self setSimulateTriggered:0];
          [(MADAutoAssetJob *)self setSimulateDescriptor:0];
          [(MADAutoAssetJob *)self setSimulateBaseForPatch:0];
          return;
        }

        v11 = _MADLog(@"AutoJob");
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_82;
        }

        goto LABEL_21;
      }

      if (v8 == 9)
      {
        v11 = [(MADAutoAssetJob *)self simulatedErrorAtPhase:@"simulateEnd" fromOperation:@"FAIL_ASSET_DOWNLOAD" forAssetDownload:1];
        v36 = [(MADAutoAssetJob *)self autoAssetUUID];
        [(MADAutoAssetJob *)self handleDownloadAssetJobFinished:v36 downloadError:v11];

        v17 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [(MADAutoAssetJob *)self autoJobName];
          v25 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
          *v40 = 138543618;
          *&v40[4] = v24;
          *&v40[12] = 2114;
          *&v40[14] = v25;
          v26 = "%{public}@ {simulateEnd} | SIMULATE_END(%{public}@) | simulated asset download failure";
          goto LABEL_62;
        }

LABEL_75:

        goto LABEL_82;
      }

      if (v8 != 10)
      {
        if (v8 != 11)
        {
          goto LABEL_83;
        }

        v11 = _MADLog(@"AutoJob");
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_82;
        }

        goto LABEL_38;
      }

      [(MADAutoAssetJob *)self _setCalculateDownloadSpace:@"simulateEnd(POSTPONE_JOB_CHECK_SPACE)"];
      v11 = _MADLog(@"AutoJob");
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_82;
      }

      goto LABEL_79;
    }

    if (v8 > 5)
    {
      if (v8 <= 8)
      {
        if ((v8 - 7) < 2)
        {
          v11 = _MADLog(@"AutoJob");
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_82;
          }

LABEL_21:
          v19 = [(MADAutoAssetJob *)self autoJobName];
          v20 = [(MADAutoAssetJob *)self simulateEnd];
          v21 = [(MADAutoAssetJob *)self _updateLatestSummary];
          *v40 = 138543874;
          *&v40[4] = v19;
          *&v40[12] = 2048;
          *&v40[14] = v20;
          *&v40[22] = 2114;
          v41 = v21;
          v22 = "%{public}@ {simulateEnd} | SIMULATE_END(%lld) | not applicable to auto-job\nJOB-SUMMARY:%{public}@";
          goto LABEL_55;
        }

        if (v8 != 6)
        {
          goto LABEL_83;
        }

        [(MADAutoAssetJob *)self _autoAssetJobFinished:@"simulateEnd" forJobFinishedReason:@"SIMULATED_POSTPONE_ENDED" failingWithError:0];
        v11 = _MADLog(@"AutoJob");
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_82;
        }

        v17 = [(MADAutoAssetJob *)self autoJobName];
        *v40 = 138543618;
        *&v40[4] = v17;
        *&v40[12] = 2048;
        *&v40[14] = [(MADAutoAssetJob *)self simulateEnd];
        v18 = "%{public}@ {simulateEnd} | SIMULATE_END(%lld) | called autoAssetJobFinished";
LABEL_74:
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, v18, v40, 0x16u);
        goto LABEL_75;
      }

      if (v8 != 9)
      {
        if (v8 != 10)
        {
          if (v8 != 11)
          {
            goto LABEL_83;
          }

          v11 = _MADLog(@"AutoJob");
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_82;
          }

LABEL_38:
          v30 = [(MADAutoAssetJob *)self autoJobName];
          v13 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
          v31 = [(MADAutoAssetJob *)self _updateLatestSummary];
          *v40 = 138543874;
          *&v40[4] = v30;
          *&v40[12] = 2114;
          *&v40[14] = v13;
          *&v40[22] = 2114;
          v41 = v31;
          v32 = "%{public}@ {simulateEnd} | SIMULATE_END(%{public}@) | immediate operation so no end (ignored)\nJOB-SUMMARY:%{public}@";
          goto LABEL_52;
        }

        [(MADAutoAssetJob *)self _setCalculateDownloadSpace:@"simulateEnd(POSTPONE_JOB_CHECK_SPACE)"];
        v11 = _MADLog(@"AutoJob");
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_82;
        }

LABEL_79:
        v12 = [(MADAutoAssetJob *)self autoJobName];
        v13 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
        *v40 = 138543618;
        *&v40[4] = v12;
        *&v40[12] = 2114;
        *&v40[14] = v13;
        v14 = "%{public}@ {simulateEnd} | SIMULATE_END(%{public}@) | called _setCalculateDownloadSpace";
        goto LABEL_80;
      }

      v11 = [(MADAutoAssetJob *)self simulatedErrorAtPhase:@"simulateEnd" fromOperation:@"FAIL_ASSET_DOWNLOAD" forAssetDownload:1];
      v37 = [(MADAutoAssetJob *)self autoAssetUUID];
      [(MADAutoAssetJob *)self handleDownloadAssetJobFinished:v37 downloadError:v11];

      v17 = _MADLog(@"AutoJob");
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_75;
      }

      v28 = [(MADAutoAssetJob *)self autoJobName];
      *v40 = 138543618;
      *&v40[4] = v28;
      *&v40[12] = 2048;
      *&v40[14] = [(MADAutoAssetJob *)self simulateEnd];
      v29 = "%{public}@ {simulateEnd} | SIMULATE_END(%lld) | simulated asset download failure";
    }

    else
    {
      if (v8 <= 2)
      {
        switch(v8)
        {
          case 0:
            v11 = _MADLog(@"AutoJob");
            if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_82;
            }

            v19 = [(MADAutoAssetJob *)self autoJobName];
            v33 = [(MADAutoAssetJob *)self simulateEnd];
            v21 = [(MADAutoAssetJob *)self _updateLatestSummary];
            *v40 = 138543874;
            *&v40[4] = v19;
            *&v40[12] = 2048;
            *&v40[14] = v33;
            *&v40[22] = 2114;
            v41 = v21;
            v22 = "%{public}@ {simulateEnd} | SIMULATE_END(%lld) | no simulateOperation to end\nJOB-SUMMARY:%{public}@";
LABEL_55:
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, v22, v40, 0x20u);

            goto LABEL_82;
          case 1:
            [(MADAutoAssetJob *)self requestDownloadManagerCatalogLookup:@"simulateEnd"];
            v11 = _MADLog(@"AutoJob");
            if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_82;
            }

            v17 = [(MADAutoAssetJob *)self autoJobName];
            *v40 = 138543618;
            *&v40[4] = v17;
            *&v40[12] = 2048;
            *&v40[14] = [(MADAutoAssetJob *)self simulateEnd];
            v18 = "%{public}@ {simulateEnd} | SIMULATE_END(%lld) | called registerCatalogDownloadJob";
            break;
          case 2:
            v15 = [(MADAutoAssetJob *)self simulateDescriptor];
            v16 = [(MADAutoAssetJob *)self simulateBaseForPatch];
            [(MADAutoAssetJob *)self requestDownloadManagerAssetDownload:@"simulateEnd" forDescriptor:v15 withBaseForPatch:v16];

            v11 = _MADLog(@"AutoJob");
            if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_82;
            }

            v17 = [(MADAutoAssetJob *)self autoJobName];
            *v40 = 138543618;
            *&v40[4] = v17;
            *&v40[12] = 2048;
            *&v40[14] = [(MADAutoAssetJob *)self simulateEnd];
            v18 = "%{public}@ {simulateEnd} | SIMULATE_END(%lld) | called registerAssetDownloadJob";
            break;
          default:
            goto LABEL_83;
        }

        goto LABEL_74;
      }

      if (v8 == 3)
      {
        v35 = [(MADAutoAssetJob *)self simulateDescriptor];
        [(MADAutoAssetJob *)self requestDownloadManagerConfigDownload:@"simulateEnd" forDescriptor:v35];

        v11 = _MADLog(@"AutoJob");
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_82;
        }

        v17 = [(MADAutoAssetJob *)self autoJobName];
        *v40 = 138543618;
        *&v40[4] = v17;
        *&v40[12] = 2048;
        *&v40[14] = [(MADAutoAssetJob *)self simulateEnd];
        v18 = "%{public}@ {simulateEnd} | SIMULATE_END(%lld) | called configAssetDownloadJob";
        goto LABEL_74;
      }

      if (v8 == 4)
      {
        v39 = [(MADAutoAssetJob *)self simulateDescriptor];
        [(MADAutoAssetJob *)self requestDownloadManagerCancelDownload:@"simulateEnd" forDescriptor:v39];

        v11 = _MADLog(@"AutoJob");
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_82;
        }

        v17 = [(MADAutoAssetJob *)self autoJobName];
        *v40 = 138543618;
        *&v40[4] = v17;
        *&v40[12] = 2048;
        *&v40[14] = [(MADAutoAssetJob *)self simulateEnd];
        v18 = "%{public}@ {simulateEnd} | SIMULATE_END(%lld) | called cancelAssetDownloadJob";
        goto LABEL_74;
      }

      v11 = [(MADAutoAssetJob *)self simulatedErrorAtPhase:@"simulateEnd" fromOperation:@"FAIL_PATCH_DOWNLOAD" forAssetDownload:0];
      v27 = [(MADAutoAssetJob *)self autoAssetUUID];
      [(MADAutoAssetJob *)self handleDownloadAssetJobFinished:v27 downloadError:v11];

      v17 = _MADLog(@"AutoJob");
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_75;
      }

      v28 = [(MADAutoAssetJob *)self autoJobName];
      *v40 = 138543618;
      *&v40[4] = v28;
      *&v40[12] = 2048;
      *&v40[14] = [(MADAutoAssetJob *)self simulateEnd];
      v29 = "%{public}@ {simulateEnd} | SIMULATE_END(%lld) | simulated patch download failure";
    }

    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, v29, v40, 0x16u);

    goto LABEL_75;
  }
}

- (id)simulatedErrorAtPhase:(id)a3 fromOperation:(id)a4 forAssetDownload:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  if (v5)
  {
    v9 = +[MADAutoAssetControlManager preferenceSimulatedDownloadFailureResult];
    if (v9 == -1)
    {
      v10 = 3;
    }

    else
    {
      v10 = v9;
    }

    v11 = errorStringForMADownloadResult(v10);
    v12 = [NSString stringWithFormat:@"end of asset download with simulated error: %@(%ld)", v11, v10];

    v18 = MAErrorForDownloadResultWithUnderlying(v10, 0, @"%@", v13, v14, v15, v16, v17, v12);
  }

  else
  {
    v12 = [[NSString alloc] initWithFormat:@"end of simulate operation[%@]", v8];
    v18 = [MAAutoAssetError buildError:6115 fromOperation:v7 underlyingError:0 withDescription:v12];
  }

  v19 = v18;

  return v19;
}

- (void)determineWhetherNetworkConnectivityError:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  if (v4)
  {
    v7 = [v4 domain];
    if (([SUCore stringIsEqual:v7 to:@"com.apple.MobileAssetError.AutoAsset"]& 1) != 0)
    {
      v8 = [v4 code];

      if (v8 == "rk/SoftwareUpdateCoreSupport")
      {
        v9 = [v4 userInfo];
        v10 = [v9 objectForKeyedSubscript:NSUnderlyingErrorKey];

        if (v10)
        {
          v11 = [v10 domain];
          v12 = [SUCore stringIsEqual:v11 to:@"com.apple.MobileAssetError.Download"];

          if (v12)
          {
            v13 = [v10 code];
            if ((isDownloadResultSuggestingCheckTimeoutConditions(v13) & 1) != 0 || (isDownloadResultSuggestingCheckNetwork(v13) & 1) != 0 || isDownloadResultSuggestingCheckClockAndCerts(v13))
            {
              LOBYTE(v14) = 1;
              goto LABEL_21;
            }

            if (!isDownloadResultSuggestingCheckConfiguration(v13))
            {
              LOBYTE(v14) = v13 == &stru_20.segname[7] || v13 == &dword_10;
LABEL_21:
              [(MADAutoAssetJob *)self setPotentialNetworkFailure:v14 & 1];
              v18 = [(MADAutoAssetJob *)self potentialNetworkFailure];
              v17 = _MADLog(@"AutoJob");
              v19 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
              if (v18)
              {
                if (v19)
                {
                  v20 = [(MADAutoAssetJob *)self autoJobName];
                  v21 = [MADAutoAssetClientRequest responseErrorSummary:v10];
                  v24 = 138543618;
                  v25 = v20;
                  v26 = 2114;
                  v27 = v21;
                  v22 = "%{public}@ | {determineWhetherNetworkConnectivityError} potential network failure | underlyingError:%{public}@";
LABEL_26:
                  _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, v22, &v24, 0x16u);
                }
              }

              else if (v19)
              {
                v20 = [(MADAutoAssetJob *)self autoJobName];
                v21 = [MADAutoAssetClientRequest responseErrorSummary:v10];
                v24 = 138543618;
                v25 = v20;
                v26 = 2114;
                v27 = v21;
                v22 = "%{public}@ | {determineWhetherNetworkConnectivityError} non-networking failure | underlyingError:%{public}@";
                goto LABEL_26;
              }

LABEL_15:

              goto LABEL_16;
            }

            if (v13 - 59 < 8)
            {
              v14 = 0x91u >> (v13 - 59);
              goto LABEL_21;
            }
          }

          LOBYTE(v14) = 0;
          goto LABEL_21;
        }
      }
    }

    else
    {
    }

    [(MADAutoAssetJob *)self setPotentialNetworkFailure:0];
    v10 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = [(MADAutoAssetJob *)self autoJobName];
      v17 = [MADAutoAssetClientRequest responseErrorSummary:v4];
      v24 = 138543618;
      v25 = v16;
      v26 = 2114;
      v27 = v17;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%{public}@ | {determineWhetherNetworkConnectivityError} no underlying | jobFinishedError:%{public}@", &v24, 0x16u);

      goto LABEL_15;
    }
  }

  else
  {
    [(MADAutoAssetJob *)self setPotentialNetworkFailure:0];
    v10 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(MADAutoAssetJob *)self autoJobName];
      v24 = 138543362;
      v25 = v15;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ | {determineWhetherNetworkConnectivityError} job completed successfully", &v24, 0xCu);
    }
  }

LABEL_16:
}

- (void)reportIfSetPallasResponseReceived:(id)a3
{
  v16 = a3;
  v4 = [(MADAutoAssetJob *)self autoJobFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    if (![(MADAutoAssetJob *)self stagerJob])
    {
      v6 = [v16 domain];
      v7 = [SUCore stringIsEqual:v6 to:@"com.apple.MobileAssetError.AutoAsset"];

      if (v7)
      {
        if ([v16 code] == "eUpdateCoreConnect.framework/SoftwareUpdateCoreConnect" || objc_msgSend(v16, "code") == "UpdateCoreConnect.framework/SoftwareUpdateCoreConnect" || objc_msgSend(v16, "code") == "pdateCoreConnect.framework/SoftwareUpdateCoreConnect" || objc_msgSend(v16, "code") == "ateCoreConnect.framework/SoftwareUpdateCoreConnect" || objc_msgSend(v16, "code") == "oreConnect.framework/SoftwareUpdateCoreConnect" || objc_msgSend(v16, "code") == "reConnect.framework/SoftwareUpdateCoreConnect")
        {
LABEL_10:
          v8 = [(MADAutoAssetJob *)self setConfiguration];

          if (v8)
          {
            [(MADAutoAssetJob *)self setHaveReceivedLookupResponse:1];
            v9 = [(MADAutoAssetJob *)self setConfiguration];
            v10 = [(MADAutoAssetJob *)self assignedSetDescriptor];
            [MADAutoAssetControlManager autoAssetJobSetLookupResponseReceived:v9 forAssignedSetDescriptor:v10 withCatalogLookupResponse:0];
          }

          else
          {
            [(MADAutoAssetJob *)self statusChange:@"reportIfSetPallasResponseReceived" catalogAnomaly:6102 forReason:@"set-job without set-configuration"];
          }

          goto LABEL_13;
        }

        v11 = [v16 domain];
        if ([SUCore stringIsEqual:v11 to:@"com.apple.MobileAssetError.AutoAsset"])
        {
          v12 = [v16 code];

          if (v12 != "rk/SoftwareUpdateCoreSupport")
          {
            goto LABEL_13;
          }

          v11 = [v16 userInfo];
          v13 = [v11 safeObjectForKey:NSUnderlyingErrorKey ofClass:objc_opt_class()];
          v14 = [v13 domain];
          if ([SUCore stringIsEqual:v14 to:@"com.apple.MobileAssetError.Download"])
          {
            v15 = -[MADAutoAssetJob _maDownloadErrorIndicatesResponseNoContent:](self, "_maDownloadErrorIndicatesResponseNoContent:", [v13 code]);

            if ((v15 & 1) == 0)
            {
              goto LABEL_13;
            }

            goto LABEL_10;
          }
        }
      }
    }
  }

LABEL_13:
}

- (int64_t)errorCodeForNoNewerContentFound
{
  v3 = [(MADAutoAssetJob *)self autoJobFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(MADAutoAssetJob *)self latestInstalledAssetVersion];

  if (!v5)
  {
    return 6201;
  }

  v6 = [(MADAutoAssetJob *)self autoAssetSelector];
  v7 = [v6 assetVersion];

  if (v7)
  {
    return 6201;
  }

  if ([(MADAutoAssetJob *)self tryPersonalizeFailed])
  {
    return 6535;
  }

  return 6205;
}

- (void)trackAnomaly:(int64_t)a3 forReason:(id)a4
{
  v6 = a4;
  v8 = [(MADAutoAssetJob *)self autoJobFSM];
  v7 = [v8 diag];
  [v7 trackAnomaly:@"AUTO-JOB" forReason:v6 withResult:a3 withError:0];
}

- (id)currentJobInformation:(id *)a3
{
  v5 = [(MADAutoAssetJob *)self autoJobFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v10 = [(MADAutoAssetJob *)self stagerJob];
    v11 = [MADAutoAssetJobInformation alloc];
    v12 = [(MADAutoAssetJob *)self autoAssetSelector];
    v13 = v12;
    if (v10)
    {
      v9 = [(MADAutoAssetJobInformation *)v11 initForAssetSelector:v12];

      if (v9)
      {
        v14 = [(MADAutoAssetJob *)self mostSpecificSelectorToReport];
        [v9 setFullAssetSelector:v14];

        v15 = [v9 fullAssetSelector];
        v16 = [(MADAutoAssetJob *)self currentStatus];
        [v16 setAssetSelector:v15];

LABEL_22:
        v25 = [(MADAutoAssetJob *)self resultFound];
        if (v25)
        {
          [(MADAutoAssetJob *)self resultFound];
        }

        else
        {
          [(MADAutoAssetJob *)self activeFound];
        }
        v26 = ;
        [v9 setFoundContent:v26];

        v27 = [(MADAutoAssetJob *)self currentStatus];
        [v9 setCurrentStatus:v27];

        goto LABEL_26;
      }

      if (!a3 || *a3)
      {
        goto LABEL_4;
      }

      v22 = @"unable to provide job-information for intended successful stager-job";
    }

    else
    {
      v17 = [v12 copyClearingWriteOnlyFields];
      v9 = [(MADAutoAssetJobInformation *)v11 initForAssetSelector:v17];

      if (v9)
      {
        v18 = [(MADAutoAssetJob *)self mostSpecificSelectorToReport];
        [v9 setFullAssetSelector:v18];

        v19 = [v9 fullAssetSelector];
        v20 = [(MADAutoAssetJob *)self currentStatus];
        [v20 setAssetSelector:v19];

        v21 = [(MADAutoAssetJob *)self resultInstance];
        if (v21)
        {
          [(MADAutoAssetJob *)self resultInstance];
        }

        else
        {
          [(MADAutoAssetJob *)self activeInstance];
        }
        v24 = ;
        [v9 setClientInstance:v24];

        v15 = [(MADAutoAssetJob *)self activeDesire];
        [v9 setClientDesire:v15];
        goto LABEL_22;
      }

      if (!a3 || *a3)
      {
        goto LABEL_4;
      }

      v22 = @"unable to provide job-information for intended successful reply";
    }

    v23 = 6101;
    goto LABEL_19;
  }

  v7 = [(MADAutoAssetJob *)self autoJobFSM];
  v8 = [v7 diag];
  [v8 trackAnomaly:@"AUTO-JOB:INFO" forReason:@"currentJobInformation should never be used for set-job" withResult:6103 withError:0];

  if (!a3 || *a3)
  {
LABEL_4:
    v9 = 0;
    goto LABEL_26;
  }

  v22 = @"currentJobInformation should never be used for set-job";
  v23 = 6103;
LABEL_19:
  [MAAutoAssetError buildError:v23 fromOperation:@"currentJobInformation" underlyingError:0 withDescription:v22];
  *a3 = v9 = 0;
LABEL_26:
  [(MADAutoAssetJob *)self setAutoAssetJobInformation:v9];

  return v9;
}

@end