@interface MADAutoAssetJob
- (BOOL)_commitPrePersonalized:(id)personalized error:(id *)error;
- (BOOL)anyJobInterestedInContent;
- (BOOL)buildPotentialDescriptors:(id)descriptors fromLookupResults:(id)results buildingPatchDescriptors:(id)patchDescriptors andFullDescriptors:(id)fullDescriptors;
- (BOOL)isAtomicEntry:(id)entry alreadyInAtomicEntries:(id)entries;
- (BOOL)isFoundAlreadyOnFilesystem:(BOOL *)filesystem;
- (BOOL)isMorePreferredFormat:(id)format comparedTo:(id)to;
- (BOOL)isSetFoundAlreadyOnFilesystem:(id)filesystem justPromotedAnyDescriptor:(BOOL *)descriptor;
- (BOOL)placeNextSetAssetDescriptorToDownload:(id)download restrictToFull:(BOOL)full error:(id *)error;
- (BOOL)remainingSetDescriptorToBeDownloaded;
- (BOOL)wasAssetSetSpecifierRequested:(id)requested;
- (id)_baseAnalyticsData:(id)data;
- (id)_longSummary;
- (id)_newSelectorForCachedAssetCatalog:(id)catalog;
- (id)_summary;
- (id)_updateLatestSummary;
- (id)assetSetEntryForAssetMetadata:(id)metadata;
- (id)autoAssetSetAssetType;
- (id)clientName;
- (id)currentJobInformation:(id *)information;
- (id)decideFollowupBoost:(id)boost forJobEvent:(id)event boostEvent:(id)boostEvent noBoostEvent:(id)noBoostEvent;
- (id)decideFollowupMoreAssetsToDownload:(id)download withEventInfo:(id)info;
- (id)getCurrentJobTask;
- (id)initForInstance:(id)instance orForSelector:(id)selector orForDescriptor:(id)descriptor orForSetInstance:(id)setInstance withLifetimeOSTransaction:(id)transaction withSetDesire:(id)desire withSchedulerSetPolicy:(id)policy withStagerSetPolicy:(id)self0 usingSetConfiguration:(id)self1 usingSetDescriptor:(id)self2 withBaseForPatchDescriptor:(id)self3 withAutoAssetUUID:(id)self4 downloadingUserInitiated:(BOOL)self5 asStagerJob:(BOOL)self6 usingCachedAutoAssetCatalog:(id)self7;
- (id)initForSelector:(id)selector withLifetimeOSTransaction:(id)transaction withAutoAssetUUID:(id)d asStagerJob:(BOOL)job withStagerSetPolicy:(id)policy usingCachedAutoAssetCatalog:(id)catalog usingBaseForPatching:(id)patching;
- (id)initForSetConfiguration:(id)configuration withLifetimeOSTransaction:(id)transaction withAutoAssetUUID:(id)d asStagerJob:(BOOL)job withStagerSetPolicy:(id)policy;
- (id)installedOnFilesystemWithVersion:(id)version fromLocation:(id)location;
- (id)latestInstalledOnFilesystem;
- (id)mostSpecificSelectorToReport;
- (id)newAssetDownloadOptions;
- (id)newAtomicInstancesDownloadedForDescriptor:(id)descriptor;
- (id)newCatalogDownloadOptions;
- (id)newCurrentStatusForDescriptor:(id)descriptor;
- (id)newFoundSetDescriptorsAsNewerDiscovered;
- (id)newSessionID;
- (id)progressReportPhaseName;
- (id)refreshOnFilesystemFromManagerPromotingIfStaged:(BOOL)staged;
- (id)removeCurrentJobTask;
- (id)reportSetCatalogDecideFound:(id)found fromLocation:(id)location;
- (id)setEntryBeingDownloaded;
- (id)simulatedErrorAtPhase:(id)phase fromOperation:(id)operation forAssetDownload:(BOOL)download;
- (id)verifyDownloadNotBlockedBySetPolicy:(BOOL)policy;
- (int64_t)actionUnknownAction:(id)action error:(id *)error;
- (int64_t)action_AddAtomicAlterDecideFilesystem:(id)filesystem error:(id *)error;
- (int64_t)action_AddAtomicCheckDecideFilesystem:(id)filesystem error:(id *)error;
- (int64_t)action_AddAtomicContinueDecideFilesystem:(id)filesystem error:(id *)error;
- (int64_t)action_AddAtomicEndDecideFilesystem:(id)filesystem error:(id *)error;
- (int64_t)action_AddAtomicLockDecideFilesystem:(id)filesystem error:(id *)error;
- (int64_t)action_AddAtomicNeedDecideFilesystem:(id)filesystem error:(id *)error;
- (int64_t)action_AddTaskCheckDecideFilesystem:(id)filesystem error:(id *)error;
- (int64_t)action_AddTaskDecideFilesystem:(id)filesystem error:(id *)error;
- (int64_t)action_AddTaskDetermineDecideFilesystem:(id)filesystem error:(id *)error;
- (int64_t)action_AddTaskInterestDecideFilesystem:(id)filesystem error:(id *)error;
- (int64_t)action_AddTaskLockDecideFilesystem:(id)filesystem error:(id *)error;
- (int64_t)action_AddTaskScheduler:(id)scheduler error:(id *)error;
- (int64_t)action_AddTaskSchedulerDecideFilesystem:(id)filesystem error:(id *)error;
- (int64_t)action_AdoptRegister:(id)register error:(id *)error;
- (int64_t)action_BoostAndRequestLookupGrant:(id)grant error:(id *)error;
- (int64_t)action_BoostConfig:(id)config error:(id *)error;
- (int64_t)action_CancelAssetDownload:(id)download error:(id *)error;
- (int64_t)action_CheckSimulateEndStatusRequest:(id)request error:(id *)error;
- (int64_t)action_DecideDownloadOrPostpone:(id)postpone error:(id *)error;
- (int64_t)action_DecideStartupDownloading:(id)downloading error:(id *)error;
- (int64_t)action_DoneReportingProgress:(id)progress error:(id *)error;
- (int64_t)action_DownloadCatalog:(id)catalog error:(id *)error;
- (int64_t)action_DownloadNewestFull:(id)full error:(id *)error;
- (int64_t)action_DownloadNewestPatch:(id)patch error:(id *)error;
- (int64_t)action_DownloadSuccessDecideMore:(id)more error:(id *)error;
- (int64_t)action_DownloadSuccessDecidePersonalize:(id)personalize error:(id *)error;
- (int64_t)action_FailRequestCanceling:(id)canceling error:(id *)error;
- (int64_t)action_FailedPatchDecideTryFull:(id)full error:(id *)error;
- (int64_t)action_FinishedCoalescedClientReply:(id)reply error:(id *)error;
- (int64_t)action_JobEndedSchedule:(id)schedule error:(id *)error;
- (int64_t)action_JobFailedAwaiting:(id)awaiting error:(id *)error;
- (int64_t)action_JobFailedCanceled:(id)canceled error:(id *)error;
- (int64_t)action_JobFailedSchedule:(id)schedule error:(id *)error;
- (int64_t)action_JobNoNewerSchedule:(id)schedule error:(id *)error;
- (int64_t)action_JobPostponedSchedule:(id)schedule error:(id *)error;
- (int64_t)action_JobRevokedSchedule:(id)schedule error:(id *)error;
- (int64_t)action_JobSuccessAlreadyDownloaded:(id)downloaded error:(id *)error;
- (int64_t)action_JobSuccessDownloadedAwaiting:(id)awaiting error:(id *)error;
- (int64_t)action_JobSuccessDownloadedSchedule:(id)schedule error:(id *)error;
- (int64_t)action_JobSuccessFoundPromoted:(id)promoted error:(id *)error;
- (int64_t)action_JobSuccessFoundSameSchedule:(id)schedule error:(id *)error;
- (int64_t)action_JobSuccessPatchedAwaiting:(id)awaiting error:(id *)error;
- (int64_t)action_JobSuccessPatchedSchedule:(id)schedule error:(id *)error;
- (int64_t)action_JobSuccessPersonalized:(id)personalized error:(id *)error;
- (int64_t)action_LookupFailedContinue:(id)continue error:(id *)error;
- (int64_t)action_LookupNoNewerContinue:(id)continue error:(id *)error;
- (int64_t)action_LookupRevokedContinue:(id)continue error:(id *)error;
- (int64_t)action_LookupSuccessContinue:(id)continue error:(id *)error;
- (int64_t)action_MergeAddLock:(id)lock error:(id *)error;
- (int64_t)action_MergeAddLockDecideBoost:(id)boost error:(id *)error;
- (int64_t)action_MergeAtomicAddLock:(id)lock error:(id *)error;
- (int64_t)action_MergeAtomicAlterDecideLookup:(id)lookup error:(id *)error;
- (int64_t)action_MergeAtomicAlterDecideLookupBoost:(id)boost error:(id *)error;
- (int64_t)action_MergeAtomicAlterNeeds:(id)needs error:(id *)error;
- (int64_t)action_MergeAtomicCntnuDecideLookupBoost:(id)boost error:(id *)error;
- (int64_t)action_MergeAtomicContinueLock:(id)lock error:(id *)error;
- (int64_t)action_MergeAtomicEndLockDecideInterest:(id)interest error:(id *)error;
- (int64_t)action_MergeAtomicLockDecideLookupBoost:(id)boost error:(id *)error;
- (int64_t)action_MergeAtomicNeeds:(id)needs error:(id *)error;
- (int64_t)action_MergeAtomicNeedsDecideLookup:(id)lookup error:(id *)error;
- (int64_t)action_MergeAtomicNeedsDecideLookupBoost:(id)boost error:(id *)error;
- (int64_t)action_MergeContinueLock:(id)lock error:(id *)error;
- (int64_t)action_MergeContinueLockDecideBoost:(id)boost error:(id *)error;
- (int64_t)action_MergeNeeds:(id)needs error:(id *)error;
- (int64_t)action_MergeNeedsDecideBoost:(id)boost error:(id *)error;
- (int64_t)action_MergeNeedsDecideLookup:(id)lookup error:(id *)error;
- (int64_t)action_MergeNeedsDecideLookupBoost:(id)boost error:(id *)error;
- (int64_t)action_MergeRemoveLock:(id)lock error:(id *)error;
- (int64_t)action_MergeRemoveLockDecideInterest:(id)interest error:(id *)error;
- (int64_t)action_NowDeadClear:(id)clear error:(id *)error;
- (int64_t)action_PersistedDecideDownload:(id)download error:(id *)error;
- (int64_t)action_PersonalizeFailureDecideMore:(id)more error:(id *)error;
- (int64_t)action_PersonalizeHealFailureDecideMore:(id)more error:(id *)error;
- (int64_t)action_PersonalizeHealSuccessDecideMore:(id)more error:(id *)error;
- (int64_t)action_PersonalizeSuccessDecideMore:(id)more error:(id *)error;
- (int64_t)action_RecordSimulateOperation:(id)operation error:(id *)error;
- (int64_t)action_ReleaseGrantCanceling:(id)canceling error:(id *)error;
- (int64_t)action_ReleaseGrantJobFailedCanceled:(id)canceled error:(id *)error;
- (int64_t)action_ReleaseGrantJobFailedSchedule:(id)schedule error:(id *)error;
- (int64_t)action_RemoveClient:(id)client error:(id *)error;
- (int64_t)action_RemoveClientDecideInterest:(id)interest error:(id *)error;
- (int64_t)action_ReportCatalogDecideFound:(id)found error:(id *)error;
- (int64_t)action_RequestLookupGrant:(id)grant error:(id *)error;
- (int64_t)action_RequestSpecificPersisted:(id)persisted error:(id *)error;
- (int64_t)action_RerouteSchedulerTrigger:(id)trigger error:(id *)error;
- (int64_t)action_SecureBundlePersonalize:(id)personalize error:(id *)error;
- (int64_t)action_SetCalculateDownloadSpace:(id)space error:(id *)error;
- (int64_t)action_SetDecideDownload:(id)download error:(id *)error;
- (int64_t)action_SetDoneDetermine:(id)determine error:(id *)error;
- (int64_t)action_SetDownloadNewestFull:(id)full error:(id *)error;
- (int64_t)action_SetDownloadNext:(id)next error:(id *)error;
- (int64_t)action_SetDownloadSameFull:(id)full error:(id *)error;
- (int64_t)action_SetJobEndedSchedule:(id)schedule error:(id *)error;
- (int64_t)action_SetJobFailedAwaiting:(id)awaiting error:(id *)error;
- (int64_t)action_SetJobFailedSchedule:(id)schedule error:(id *)error;
- (int64_t)action_SetJobHealPersonalizeNext:(id)next error:(id *)error;
- (int64_t)action_SetJobLookupRevokedContinue:(id)continue error:(id *)error;
- (int64_t)action_SetJobNoNewerSchedule:(id)schedule error:(id *)error;
- (int64_t)action_SetJobNoneSchedule:(id)schedule error:(id *)error;
- (int64_t)action_SetJobSuccessAwaiting:(id)awaiting error:(id *)error;
- (int64_t)action_SetJobSuccessFoundPromoted:(id)promoted error:(id *)error;
- (int64_t)action_SetJobSuccessFoundSameSchedule:(id)schedule error:(id *)error;
- (int64_t)action_SetJobSuccessSchedule:(id)schedule error:(id *)error;
- (int64_t)action_SetJobTryPersonalizeHeal:(id)heal error:(id *)error;
- (int64_t)action_SetLookupNoNewerContinue:(id)continue error:(id *)error;
- (int64_t)action_SetLookupNoneContinue:(id)continue error:(id *)error;
- (int64_t)action_SetLookupSuccessContinue:(id)continue error:(id *)error;
- (int64_t)action_SimulatePostponedCalculateSpace:(id)space error:(id *)error;
- (int64_t)action_SimulateSuspendCatalogLookupIssue:(id)issue error:(id *)error;
- (int64_t)action_StagerDetermineDecideFilesystem:(id)filesystem error:(id *)error;
- (int64_t)action_StagerDownloadDecideFilesystem:(id)filesystem error:(id *)error;
- (int64_t)errorCodeForNoNewerContentFound;
- (int64_t)performAction:(id)action onEvent:(id)event inState:(id)state withInfo:(id)info nextState:(id)nextState error:(id *)error;
- (void)_autoAssetJobDead:(id)dead;
- (void)_autoAssetJobFinished:(id)finished forJobFinishedReason:(id)reason failingWithError:(id)error;
- (void)_extendAssetDownloadOptionsWithAnalyticsData:(id)data forDescriptor:(id)descriptor withBaseForPatch:(id)patch;
- (void)_extendCatalogDownloadOptionsWithAnalyticsData:(id)data;
- (void)_rememberIfSchedulerInvolved:(id)involved;
- (void)_setCalculateDownloadSpace:(id)space;
- (void)_setPolicyFromClientRequest:(id)request;
- (void)_statusChangeDownloadProgressDecideLog:(id)log;
- (void)_updateDownloadOptions:(id)options;
- (void)_updateUserInitiatedFields;
- (void)addClientRequestAndMergeNeeds:(id)needs forJobEvent:(id)event;
- (void)addToActiveJobTasks:(id)tasks;
- (void)adoptCachedLookupResult:(id)result;
- (void)appendUniqueSelectorForDescriptor:(id)descriptor toArray:(id)array;
- (void)autoAssetJobFinished:(id)finished forJobFinishedReason:(id)reason failingWithError:(id)error;
- (void)cancelAutoAssetJob;
- (void)checkFilesystemAndDecidePurgeOrLookup;
- (void)clearSetStatusStartingSetJob;
- (void)clientRequestedStatus:(id)status;
- (void)completeNWActivity;
- (void)desireChangedToUserInitiated;
- (void)determineWhetherNetworkConnectivityError:(id)error;
- (void)doneWithAllJobs:(id)jobs;
- (void)doneWithAllJobs:(id)jobs withLookupError:(id)error;
- (void)downloadCatalog:(id)catalog;
- (void)exclusiveLookupForAssetTypeGranted:(id)granted;
- (void)finishJobTaskForJobParam:(id)param withResponseError:(id)error;
- (void)finishJobTaskForJobParam:(id)param withUnderlyingError:(id)error fromAction:(id)action;
- (void)finishSetJobDownloadedNewer:(id)newer forJobFinishedReason:(id)reason;
- (void)finishedAcknowledgeAutoAssetJob;
- (void)finishedSetJobFinalizeStatus:(id)status failingWithError:(id)error;
- (void)finishedSetSameVersionFound:(id)found;
- (void)foundAndDownloaded:(id)downloaded forJobParam:(id)param wasPatched:(BOOL)patched;
- (void)foundAndDownloadedSet:(id)set;
- (void)handleDownloadAssetJobFinished:(id)finished downloadError:(id)error;
- (void)handleDownloadAssetProgressForJob:(id)job withProgress:(id)progress;
- (void)handleDownloadCatalogJobFinished:(id)finished withCatalog:(id)catalog downloadError:(id)error;
- (void)handleDownloadConfigJobFinished:(id)finished withDownloadOptions:(id)options configError:(id)error;
- (void)handleSimulateOperation:(id)operation;
- (void)latchWhetherDownloadingUserInitiated;
- (void)mergeSetPolicyIntoAggregated:(id)aggregated;
- (void)newFoundSetDescriptorsFromCachedLookup:(id)lookup;
- (void)obtainLookupGrant;
- (void)persistedStateForDownloadJob:(id)job;
- (void)rebuildLastestDescriptorsOnFilesystem:(id)filesystem;
- (void)refreshDownloadedToManager:(id)manager;
- (void)refreshFoundToManager;
- (void)refreshSetFoundToManager:(BOOL)manager fromLocation:(id)location;
- (void)releaseLookupGrant;
- (void)replyToClientForJobParam:(id)param withResponseError:(id)error;
- (void)replyToJobsWhenCatalogDownloaded:(id)downloaded discoveredNewer:(BOOL)newer;
- (void)replyToJobsWhenContentDownloaded:(id)downloaded;
- (void)replyToJobsWhenLookupFailed:(id)failed withLookupError:(id)error;
- (void)replyToJobsWhenOperationFoundSame:(id)same forCheckAtomic:(BOOL)atomic withLookupError:(id)error;
- (void)replyToSetCheckAtomicDownloadSuccess;
- (void)reportIfSetPallasResponseReceived:(id)received;
- (void)reportJustDownloadedAssetOfSet:(id)set;
- (void)requestDownloadManagerAssetDownload:(id)download forDescriptor:(id)descriptor withBaseForPatch:(id)patch;
- (void)requestDownloadManagerCancelDownload:(id)download forDescriptor:(id)descriptor;
- (void)requestDownloadManagerCatalogLookup:(id)lookup;
- (void)requestDownloadManagerConfigDownload:(id)download forDescriptor:(id)descriptor;
- (void)setCurrentJobTask:(id)task;
- (void)setProgressAssetDownload:(id)download;
- (void)setProgressReadyToStartDownloads;
- (void)simulateEnd:(int64_t)end;
- (void)simulateSet:(id)set;
- (void)stagerJobDetermineDone:(id)done reportingError:(id)error;
- (void)stagerJobDone:(id)done reportingError:(id)error;
- (void)stagerJobDownloadDone:(id)done reportingError:(id)error;
- (void)stagerJobReportProgress:(id)progress reportingError:(id)error;
- (void)startHandlingClientRequest:(id)request withControlInformation:(id)information;
- (void)startResumingInFlightDownload:(id)download withControlInformation:(id)information;
- (void)startScheduleTriggeredSelector:(id)selector withControlInformation:(id)information;
- (void)startScheduleTriggeredSetJob:(id)job;
- (void)startStagerDetermineIfAvailable:(id)available withAssetTargetBuildVersion:(id)version withAssetTargetTrainName:(id)name withAssetTargetRestoreVersion:(id)restoreVersion withControlInformation:(id)information;
- (void)startStagerDownloadForStaging:(id)staging withAssetTargetBuildVersion:(id)version usingCachedAutoAssetCatalog:(id)catalog withControlInformation:(id)information;
- (void)statusChange:(id)change catalogAnomaly:(int64_t)anomaly forReason:(id)reason;
- (void)statusChange:(id)change catalogFailure:(int64_t)failure forReason:(id)reason;
- (void)statusChangeCatalogFoundNewer:(id)newer;
- (void)statusChangeCatalogFoundSame:(id)same;
- (void)statusChangeDownloadProgress:(id)progress;
- (void)statusChangeJobFinished:(id)finished withResponseError:(id)error;
- (void)statusChangeReportCurrent:(id)current;
- (void)statusChangeSetCatalogFoundNewer:(id)newer;
- (void)statusChangeSetCatalogFoundSame:(id)same;
- (void)statusChangeStartingAssetDownload:(id)download downloadingPatch:(BOOL)patch;
- (void)statusChangeSuccesfullyPatched:(id)patched;
- (void)statusChangeSuccessfullyDownloaded:(id)downloaded;
- (void)trackAnomaly:(int64_t)anomaly forReason:(id)reason;
- (void)updateAutoAssetSetDescriptor;
- (void)updateResultPropertiesWithDescriptor:(id)descriptor;
- (void)updateSetDescriptorDownloaded:(id)downloaded forAssetDescriptor:(id)descriptor justDownloaded:(BOOL)justDownloaded;
- (void)updateSetResults:(id)results atomicInstanceDiscovered:(BOOL)discovered availableForUse:(BOOL)use downloading:(BOOL)downloading buildingResultSetFound:(BOOL)found;
- (void)updateSetTrackingWithSuccessfulAssetDownload;
@end

@implementation MADAutoAssetJob

- (int64_t)performAction:(id)action onEvent:(id)event inState:(id)state withInfo:(id)info nextState:(id)nextState error:(id *)error
{
  actionCopy = action;
  infoCopy = info;
  if (([actionCopy isEqualToString:kSUCoreFSMActionNoOp] & 1) == 0)
  {
    if ([actionCopy isEqualToString:@"AddTaskDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_AddTaskDecideFilesystem:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"AddTaskSchedulerDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_AddTaskSchedulerDecideFilesystem:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"AddTaskCheckDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_AddTaskCheckDecideFilesystem:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"AddTaskDetermineDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_AddTaskDetermineDecideFilesystem:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"AddTaskInterestDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_AddTaskInterestDecideFilesystem:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"AddTaskLockDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_AddTaskLockDecideFilesystem:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"StagerDetermineDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_StagerDetermineDecideFilesystem:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"StagerDownloadDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_StagerDownloadDecideFilesystem:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"DecideStartupDownloading"])
    {
      v14 = [(MADAutoAssetJob *)self action_DecideStartupDownloading:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"AddAtomicAlterDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_AddAtomicAlterDecideFilesystem:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"AddAtomicNeedDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_AddAtomicNeedDecideFilesystem:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"AddAtomicCheckDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_AddAtomicCheckDecideFilesystem:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"AddAtomicLockDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_AddAtomicLockDecideFilesystem:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"AddAtomicContinueDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_AddAtomicContinueDecideFilesystem:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"AddAtomicEndDecideFilesystem"])
    {
      v14 = [(MADAutoAssetJob *)self action_AddAtomicEndDecideFilesystem:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"MergeAtomicAlterNeeds"])
    {
      v14 = [(MADAutoAssetJob *)self action_MergeAtomicAlterNeeds:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"MergeAtomicNeeds"])
    {
      v14 = [(MADAutoAssetJob *)self action_MergeAtomicNeeds:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"MergeAtomicAddLock"])
    {
      v14 = [(MADAutoAssetJob *)self action_MergeAtomicAddLock:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"MergeAtomicContinueLock"])
    {
      v14 = [(MADAutoAssetJob *)self action_MergeAtomicContinueLock:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"MergeAtomicEndLockDecideInterest"])
    {
      v14 = [(MADAutoAssetJob *)self action_MergeAtomicEndLockDecideInterest:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"MergeAtomicAlterDecideLookup"])
    {
      v14 = [(MADAutoAssetJob *)self action_MergeAtomicAlterDecideLookup:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"MergeAtomicNeedsDecideLookup"])
    {
      v14 = [(MADAutoAssetJob *)self action_MergeAtomicNeedsDecideLookup:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"MergeAtomicAlterDecideLookupBoost"])
    {
      v14 = [(MADAutoAssetJob *)self action_MergeAtomicAlterDecideLookupBoost:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"MergeAtomicNeedsDecideLookupBoost"])
    {
      v14 = [(MADAutoAssetJob *)self action_MergeAtomicNeedsDecideLookupBoost:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"MergeAtomicLockDecideLookupBoost"])
    {
      v14 = [(MADAutoAssetJob *)self action_MergeAtomicLockDecideLookupBoost:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"MergeAtomicCntnuDecideLookupBoost"])
    {
      v14 = [(MADAutoAssetJob *)self action_MergeAtomicCntnuDecideLookupBoost:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"SetCalculateDownloadSpace"])
    {
      v14 = [(MADAutoAssetJob *)self action_SetCalculateDownloadSpace:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"SetDecideDownload"])
    {
      v14 = [(MADAutoAssetJob *)self action_SetDecideDownload:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"SetDoneDetermine"])
    {
      v14 = [(MADAutoAssetJob *)self action_SetDoneDetermine:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"SetLookupSuccessContinue"])
    {
      v14 = [(MADAutoAssetJob *)self action_SetLookupSuccessContinue:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"SetLookupNoneContinue"])
    {
      v14 = [(MADAutoAssetJob *)self action_SetLookupNoneContinue:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"SetLookupNoNewerContinue"])
    {
      v14 = [(MADAutoAssetJob *)self action_SetLookupNoNewerContinue:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"SetJobNoneSchedule"])
    {
      v14 = [(MADAutoAssetJob *)self action_SetJobNoneSchedule:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"SetJobNoNewerSchedule"])
    {
      v14 = [(MADAutoAssetJob *)self action_SetJobNoNewerSchedule:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"SetJobFailedSchedule"])
    {
      v14 = [(MADAutoAssetJob *)self action_SetJobFailedSchedule:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"SetJobLookupRevokedContinue"])
    {
      v14 = [(MADAutoAssetJob *)self action_SetJobLookupRevokedContinue:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"SetJobHealPersonalizeNext"])
    {
      v14 = [(MADAutoAssetJob *)self action_SetJobHealPersonalizeNext:infoCopy error:error];
    }

    else
    {
      if (![actionCopy isEqualToString:@"SetDownloadNewestFull"])
      {
        if ([actionCopy isEqualToString:@"SetDownloadNext"])
        {
          v14 = [(MADAutoAssetJob *)self action_SetDownloadNext:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"SetDownloadSameFull"])
        {
          v14 = [(MADAutoAssetJob *)self action_SetDownloadSameFull:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"SetJobSuccessSchedule"])
        {
          v14 = [(MADAutoAssetJob *)self action_SetJobSuccessSchedule:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"SetJobSuccessFoundSameSchedule"])
        {
          v14 = [(MADAutoAssetJob *)self action_SetJobSuccessFoundSameSchedule:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"SetJobSuccessFoundPromoted"])
        {
          v14 = [(MADAutoAssetJob *)self action_SetJobSuccessFoundPromoted:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"SetJobSuccessAwaiting"])
        {
          v14 = [(MADAutoAssetJob *)self action_SetJobSuccessAwaiting:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"SetJobFailedAwaiting"])
        {
          v14 = [(MADAutoAssetJob *)self action_SetJobFailedAwaiting:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"SetJobTryPersonalizeHeal"])
        {
          v14 = [(MADAutoAssetJob *)self action_SetJobTryPersonalizeHeal:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"FinishedCoalescedClientReply"])
        {
          v14 = [(MADAutoAssetJob *)self action_FinishedCoalescedClientReply:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"RerouteSchedulerTrigger"])
        {
          v14 = [(MADAutoAssetJob *)self action_RerouteSchedulerTrigger:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"NowDeadClear"])
        {
          v14 = [(MADAutoAssetJob *)self action_NowDeadClear:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"AddTaskScheduler"])
        {
          v14 = [(MADAutoAssetJob *)self action_AddTaskScheduler:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"MergeNeeds"])
        {
          v14 = [(MADAutoAssetJob *)self action_MergeNeeds:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"MergeNeedsDecideLookup"])
        {
          v14 = [(MADAutoAssetJob *)self action_MergeNeedsDecideLookup:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"MergeNeedsDecideBoost"])
        {
          v14 = [(MADAutoAssetJob *)self action_MergeNeedsDecideBoost:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"MergeNeedsDecideLookupBoost"])
        {
          v14 = [(MADAutoAssetJob *)self action_MergeNeedsDecideLookupBoost:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"MergeAddLock"])
        {
          v14 = [(MADAutoAssetJob *)self action_MergeAddLock:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"MergeContinueLock"])
        {
          v14 = [(MADAutoAssetJob *)self action_MergeContinueLock:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"MergeRemoveLock"])
        {
          v14 = [(MADAutoAssetJob *)self action_MergeRemoveLock:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"MergeRemoveLockDecideInterest"])
        {
          v14 = [(MADAutoAssetJob *)self action_MergeRemoveLockDecideInterest:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"MergeAddLockDecideBoost"])
        {
          v14 = [(MADAutoAssetJob *)self action_MergeAddLockDecideBoost:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"MergeContinueLockDecideBoost"])
        {
          v14 = [(MADAutoAssetJob *)self action_MergeContinueLockDecideBoost:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"AdoptRegister"])
        {
          v14 = [(MADAutoAssetJob *)self action_AdoptRegister:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"RequestLookupGrant"])
        {
          v14 = [(MADAutoAssetJob *)self action_RequestLookupGrant:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"DownloadCatalog"])
        {
          v14 = [(MADAutoAssetJob *)self action_DownloadCatalog:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"RemoveClient"])
        {
          v14 = [(MADAutoAssetJob *)self action_RemoveClient:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"RemoveClientDecideInterest"])
        {
          v14 = [(MADAutoAssetJob *)self action_RemoveClientDecideInterest:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"ReportCatalogDecideFound"])
        {
          v14 = [(MADAutoAssetJob *)self action_ReportCatalogDecideFound:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"DecideDownloadOrPostpone"])
        {
          v14 = [(MADAutoAssetJob *)self action_DecideDownloadOrPostpone:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"RequestSpecificPersisted"])
        {
          v14 = [(MADAutoAssetJob *)self action_RequestSpecificPersisted:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"PersistedDecideDownload"])
        {
          v14 = [(MADAutoAssetJob *)self action_PersistedDecideDownload:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"DownloadNewestPatch"])
        {
          v14 = [(MADAutoAssetJob *)self action_DownloadNewestPatch:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"DownloadNewestFull"])
        {
          v14 = [(MADAutoAssetJob *)self action_DownloadNewestFull:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"DownloadSuccessDecideMore"])
        {
          v14 = [(MADAutoAssetJob *)self action_DownloadSuccessDecideMore:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"FailedPatchDecideTryFull"])
        {
          v14 = [(MADAutoAssetJob *)self action_FailedPatchDecideTryFull:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"BoostConfig"])
        {
          v14 = [(MADAutoAssetJob *)self action_BoostConfig:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"BoostAndRequestLookupGrant"])
        {
          v14 = [(MADAutoAssetJob *)self action_BoostAndRequestLookupGrant:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"DownloadSuccessDecidePersonalize"])
        {
          v14 = [(MADAutoAssetJob *)self action_DownloadSuccessDecidePersonalize:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"SecureBundlePersonalize"])
        {
          v14 = [(MADAutoAssetJob *)self action_SecureBundlePersonalize:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"PersonalizeSuccessDecideMore"])
        {
          v14 = [(MADAutoAssetJob *)self action_PersonalizeSuccessDecideMore:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"PersonalizeFailureDecideMore"])
        {
          v14 = [(MADAutoAssetJob *)self action_PersonalizeFailureDecideMore:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"PersonalizeHealSuccessDecideMore"])
        {
          v14 = [(MADAutoAssetJob *)self action_PersonalizeHealSuccessDecideMore:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"PersonalizeHealFailureDecideMore"])
        {
          v14 = [(MADAutoAssetJob *)self action_PersonalizeHealFailureDecideMore:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"LookupSuccessContinue"])
        {
          v14 = [(MADAutoAssetJob *)self action_LookupSuccessContinue:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"LookupNoNewerContinue"])
        {
          v14 = [(MADAutoAssetJob *)self action_LookupNoNewerContinue:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"LookupRevokedContinue"])
        {
          v14 = [(MADAutoAssetJob *)self action_LookupRevokedContinue:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"LookupFailedContinue"])
        {
          v14 = [(MADAutoAssetJob *)self action_LookupFailedContinue:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"JobSuccessPatchedAwaiting"])
        {
          v14 = [(MADAutoAssetJob *)self action_JobSuccessPatchedAwaiting:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"JobSuccessDownloadedAwaiting"])
        {
          v14 = [(MADAutoAssetJob *)self action_JobSuccessDownloadedAwaiting:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"JobSuccessFoundSameSchedule"])
        {
          v14 = [(MADAutoAssetJob *)self action_JobSuccessFoundSameSchedule:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"JobSuccessFoundPromoted"])
        {
          v14 = [(MADAutoAssetJob *)self action_JobSuccessFoundPromoted:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"JobSuccessPatchedSchedule"])
        {
          v14 = [(MADAutoAssetJob *)self action_JobSuccessPatchedSchedule:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"JobSuccessDownloadedSchedule"])
        {
          v14 = [(MADAutoAssetJob *)self action_JobSuccessDownloadedSchedule:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"JobSuccessAlreadyDownloaded"])
        {
          v14 = [(MADAutoAssetJob *)self action_JobSuccessAlreadyDownloaded:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"JobSuccessPersonalized"])
        {
          v14 = [(MADAutoAssetJob *)self action_JobSuccessPersonalized:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"JobNoNewerSchedule"])
        {
          v14 = [(MADAutoAssetJob *)self action_JobNoNewerSchedule:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"JobRevokedSchedule"])
        {
          v14 = [(MADAutoAssetJob *)self action_JobRevokedSchedule:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"JobFailedSchedule"])
        {
          v14 = [(MADAutoAssetJob *)self action_JobFailedSchedule:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"ReleaseGrantJobFailedSchedule"])
        {
          v14 = [(MADAutoAssetJob *)self action_ReleaseGrantJobFailedSchedule:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"JobPostponedSchedule"])
        {
          v14 = [(MADAutoAssetJob *)self action_JobPostponedSchedule:infoCopy error:error];
          goto LABEL_225;
        }

        if ([actionCopy isEqualToString:@"JobEndedSchedule"])
        {
          v14 = [(MADAutoAssetJob *)self action_JobEndedSchedule:infoCopy error:error];
          goto LABEL_225;
        }

        if (![actionCopy isEqualToString:@"SetDownloadNewestFull"])
        {
          if ([actionCopy isEqualToString:@"SetJobEndedSchedule"])
          {
            v14 = [(MADAutoAssetJob *)self action_SetJobEndedSchedule:infoCopy error:error];
          }

          else if ([actionCopy isEqualToString:@"RecordSimulateOperation"])
          {
            v14 = [(MADAutoAssetJob *)self action_RecordSimulateOperation:infoCopy error:error];
          }

          else if ([actionCopy isEqualToString:@"CheckSimulateEndStatusRequest"])
          {
            v14 = [(MADAutoAssetJob *)self action_CheckSimulateEndStatusRequest:infoCopy error:error];
          }

          else if ([actionCopy isEqualToString:@"SimulateSuspendCatalogLookupIssue"])
          {
            v14 = [(MADAutoAssetJob *)self action_SimulateSuspendCatalogLookupIssue:infoCopy error:error];
          }

          else if ([actionCopy isEqualToString:@"SimulatePostponedCalculateSpace"])
          {
            v14 = [(MADAutoAssetJob *)self action_SimulatePostponedCalculateSpace:infoCopy error:error];
          }

          else if ([actionCopy isEqualToString:@"CancelAssetDownload"])
          {
            v14 = [(MADAutoAssetJob *)self action_CancelAssetDownload:infoCopy error:error];
          }

          else if ([actionCopy isEqualToString:@"ReleaseGrantCanceling"])
          {
            v14 = [(MADAutoAssetJob *)self action_ReleaseGrantCanceling:infoCopy error:error];
          }

          else if ([actionCopy isEqualToString:@"FailRequestCanceling"])
          {
            v14 = [(MADAutoAssetJob *)self action_FailRequestCanceling:infoCopy error:error];
          }

          else if ([actionCopy isEqualToString:@"JobFailedCanceled"])
          {
            v14 = [(MADAutoAssetJob *)self action_JobFailedCanceled:infoCopy error:error];
          }

          else if ([actionCopy isEqualToString:@"ReleaseGrantJobFailedCanceled"])
          {
            v14 = [(MADAutoAssetJob *)self action_ReleaseGrantJobFailedCanceled:infoCopy error:error];
          }

          else if ([actionCopy isEqualToString:@"DoneReportingProgress"])
          {
            v14 = [(MADAutoAssetJob *)self action_DoneReportingProgress:infoCopy error:error];
          }

          else
          {
            v14 = [(MADAutoAssetJob *)self actionUnknownAction:actionCopy error:error];
          }

          goto LABEL_225;
        }
      }

      v14 = [(MADAutoAssetJob *)self action_SetDownloadNewestFull:infoCopy error:error];
    }

LABEL_225:
    v13 = v14;
    goto LABEL_226;
  }

  v13 = 0;
LABEL_226:

  return v13;
}

- (id)initForSelector:(id)selector withLifetimeOSTransaction:(id)transaction withAutoAssetUUID:(id)d asStagerJob:(BOOL)job withStagerSetPolicy:(id)policy usingCachedAutoAssetCatalog:(id)catalog usingBaseForPatching:(id)patching
{
  BYTE1(v10) = job;
  LOBYTE(v10) = 0;
  return [(MADAutoAssetJob *)self initForInstance:0 orForSelector:selector orForDescriptor:0 orForSetInstance:0 withLifetimeOSTransaction:transaction withSetDesire:0 withSchedulerSetPolicy:0 withStagerSetPolicy:policy usingSetConfiguration:0 usingSetDescriptor:0 withBaseForPatchDescriptor:patching withAutoAssetUUID:d downloadingUserInitiated:v10 asStagerJob:catalog usingCachedAutoAssetCatalog:?];
}

- (id)initForSetConfiguration:(id)configuration withLifetimeOSTransaction:(id)transaction withAutoAssetUUID:(id)d asStagerJob:(BOOL)job withStagerSetPolicy:(id)policy
{
  BYTE1(v8) = job;
  LOBYTE(v8) = 0;
  return [(MADAutoAssetJob *)self initForInstance:0 orForSelector:0 orForDescriptor:0 orForSetInstance:0 withLifetimeOSTransaction:transaction withSetDesire:0 withSchedulerSetPolicy:0 withStagerSetPolicy:policy usingSetConfiguration:configuration usingSetDescriptor:0 withBaseForPatchDescriptor:0 withAutoAssetUUID:d downloadingUserInitiated:v8 asStagerJob:0 usingCachedAutoAssetCatalog:?];
}

- (id)initForInstance:(id)instance orForSelector:(id)selector orForDescriptor:(id)descriptor orForSetInstance:(id)setInstance withLifetimeOSTransaction:(id)transaction withSetDesire:(id)desire withSchedulerSetPolicy:(id)policy withStagerSetPolicy:(id)self0 usingSetConfiguration:(id)self1 usingSetDescriptor:(id)self2 withBaseForPatchDescriptor:(id)self3 withAutoAssetUUID:(id)self4 downloadingUserInitiated:(BOOL)self5 asStagerJob:(BOOL)self6 usingCachedAutoAssetCatalog:(id)self7
{
  instanceCopy = instance;
  selectorCopy = selector;
  descriptorCopy = descriptor;
  descriptorCopy2 = descriptor;
  setInstanceCopy = setInstance;
  transactionCopy = transaction;
  transactionCopy2 = transaction;
  desireCopy = desire;
  policyCopy = policy;
  setPolicyCopy = setPolicy;
  configurationCopy = configuration;
  setDescriptorCopy = setDescriptor;
  patchDescriptorCopy = patchDescriptor;
  dCopy = d;
  catalogCopy = catalog;
  v246.receiver = self;
  v246.super_class = MADAutoAssetJob;
  v23 = [(MADAutoAssetJob *)&v246 init];
  v24 = v23;
  if (!v23)
  {
LABEL_96:
    v110 = v24;
    v45 = instanceCopy;
    v44 = setInstanceCopy;
    goto LABEL_97;
  }

  v226 = transactionCopy2;
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
  v24->_downloadingUserInitiated = initiated;
  v24->_boostedToExpensive = 0;
  if (descriptorCopy2)
  {
    v38 = [MAAutoAssetSelector alloc];
    assetType = [descriptorCopy2 assetType];
    assetSpecifier = [descriptorCopy2 assetSpecifier];
    assetVersion = [descriptorCopy2 assetVersion];
    v42 = [v38 initForAssetType:assetType withAssetSpecifier:assetSpecifier matchingAssetVersion:assetVersion];
    v43 = v24->_autoAssetSelector;
    v24->_autoAssetSelector = v42;

LABEL_4:
    v45 = instanceCopy;
    v44 = setInstanceCopy;
LABEL_32:

    goto LABEL_33;
  }

  if (setInstanceCopy)
  {
    p_aggregatedClientSetPolicy = &v24->_aggregatedClientSetPolicy;
    p_schedulerSetPolicy = &v24->_schedulerSetPolicy;
    v24->_autoAssetSetJob = 1;
    objc_storeStrong(&v24->_autoAssetSetDesire, desire);
    objc_storeStrong(&v24->_schedulerSetPolicy, policy);
    v47 = [setDescriptorCopy copy];
    v48 = v24->_assignedSetDescriptor;
    v24->_assignedSetDescriptor = v47;

    clientDomainName = [(MADAutoSetDescriptor *)v24->_assignedSetDescriptor clientDomainName];
    v50 = v24->_clientDomainName;
    v24->_clientDomainName = clientDomainName;

    assetSetIdentifier = [(MADAutoSetDescriptor *)v24->_assignedSetDescriptor assetSetIdentifier];
    v52 = v24->_autoAssetSetIdentifier;
    v24->_autoAssetSetIdentifier = assetSetIdentifier;

    objc_storeStrong(location, configuration);
    v24->_haveReceivedLookupResponse = [configurationCopy haveReceivedLookupResponse];
    v24->_vendingAtomicInstanceForConfiguredEntries = [configurationCopy vendingAtomicInstanceForConfiguredEntries];
    objc_storeStrong(&v24->_cachedAutoAssetCatalog, catalog);
    v53 = objc_alloc_init(MADAutoSetJobInformation);
    v54 = v24->_setJobInformation;
    v24->_setJobInformation = v53;

    [(MADAutoSetJobInformation *)v24->_setJobInformation setClientInstance:setInstanceCopy];
    objc_storeStrong(&v24->_autoAssetSetInstance, setInstance);
    [(MADAutoSetJobInformation *)v24->_setJobInformation setClientDesire:desireCopy];
    [(MADAutoSetJobInformation *)v24->_setJobInformation setAssignedAutoAssetUUID:dCopy];
    v55 = v24->_autoAssetSetDesire;
    v45 = instanceCopy;
    if (v55)
    {
      clientAssetSetPolicy = [(MANAutoAssetSetInfoDesire *)v55 clientAssetSetPolicy];

      if (clientAssetSetPolicy)
      {
        clientAssetSetPolicy2 = [(MANAutoAssetSetInfoDesire *)v24->_autoAssetSetDesire clientAssetSetPolicy];
        v58 = v24->_aggregatedClientSetPolicy;
        v24->_aggregatedClientSetPolicy = clientAssetSetPolicy2;

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
    assetType = [(MADAutoAssetJob *)v24 autoAssetSetAssetType];
    assetSetIdentifier2 = [setInstanceCopy assetSetIdentifier];
    v85 = [v83 initForAssetType:assetType withAssetSpecifier:assetSetIdentifier2 matchingAssetVersion:{@"88.77.66.55.44, 0"}];
    v86 = v24->_autoAssetSelector;
    v24->_autoAssetSelector = v85;

    v44 = setInstanceCopy;
    goto LABEL_32;
  }

  if (configurationCopy && job)
  {
    v24->_autoAssetSetJob = 1;
    objc_storeStrong(location, configuration);
    objc_storeStrong(&v24->_stagerSetPolicy, setPolicy);
    clientDomainName2 = [(MADAutoSetConfiguration *)v24->_setConfiguration clientDomainName];
    v61 = v24->_clientDomainName;
    v24->_clientDomainName = clientDomainName2;

    assetSetIdentifier3 = [(MADAutoSetConfiguration *)v24->_setConfiguration assetSetIdentifier];
    v63 = v24->_autoAssetSetIdentifier;
    v24->_autoAssetSetIdentifier = assetSetIdentifier3;

    v64 = objc_alloc_init(MADAutoSetJobInformation);
    v65 = v24->_setJobInformation;
    v24->_setJobInformation = v64;

    objc_storeStrong(&v24->_aggregatedClientSetPolicy, v24->_stagerSetPolicy);
    objc_storeStrong(&v24->_cachedAutoAssetCatalog, catalog);
    v66 = [MAAutoAssetSelector alloc];
    assetType = [(MADAutoAssetJob *)v24 autoAssetSetAssetType];
    assetSpecifier = [(MADAutoSetConfiguration *)v24->_setConfiguration clientDomainName];
    v67 = [v66 initForAssetType:assetType withAssetSpecifier:assetSpecifier matchingAssetVersion:{@"88.77.66.55.44, 0"}];
    v68 = v24->_autoAssetSelector;
    v24->_autoAssetSelector = v67;

    goto LABEL_4;
  }

  v44 = 0;
  if (catalogCopy && job)
  {
    objc_storeStrong(&v24->_stagerSetPolicy, setPolicy);
    v70 = objc_alloc_init(MADAutoSetJobInformation);
    v71 = v24->_setJobInformation;
    v24->_setJobInformation = v70;

    objc_storeStrong(&v24->_aggregatedClientSetPolicy, v24->_stagerSetPolicy);
    objc_storeStrong(&v24->_cachedAutoAssetCatalog, catalog);
    v72 = [(MADAutoAssetJob *)v24 _newSelectorForCachedAssetCatalog:catalogCopy];
    v73 = v24->_autoAssetSelector;
    v24->_autoAssetSelector = v72;

    v74 = [catalogCopy safeStringForKey:@"SessionId"];
    checkUUID = v24->_checkUUID;
    v24->_checkUUID = v74;

    v45 = instanceCopy;
    if (v24->_checkUUID)
    {
      goto LABEL_33;
    }

    v76 = dCopy;
    assetType = v24->_checkUUID;
    v24->_checkUUID = v76;
    goto LABEL_32;
  }

  v45 = instanceCopy;
  clientAssetSelector = [instanceCopy clientAssetSelector];

  if (clientAssetSelector)
  {
    clientAssetSelector2 = [instanceCopy clientAssetSelector];
LABEL_103:
    assetType = v24->_autoAssetSelector;
    v24->_autoAssetSelector = clientAssetSelector2;
    goto LABEL_32;
  }

  if (selectorCopy)
  {
    clientAssetSelector2 = selectorCopy;
    goto LABEL_103;
  }

LABEL_33:
  if (v24->_autoAssetSelector)
  {
    objc_storeStrong(&v24->_autoAssetInstance, instance);
    objc_storeStrong(&v24->_autoAssetUUID, d);
    objc_storeStrong(&v24->_lifetimeOSTransaction, transactionCopy);
    queuedRequestsForNewJobOnceCanceled = v24->_queuedRequestsForNewJobOnceCanceled;
    v24->_clientRequestCount = 0;
    v24->_queuedRequestsForNewJobOnceCanceled = 0;
    *&v24->_earlierSchedulerInvolved = 0;

    v24->_earlierPotentialNetworkFailure = 0;
    latestSafeSummary = v24->_latestSafeSummary;
    v24->_latestSafeSummary = @"INIT";

    v24->_schedulerInvolved = 0;
    v24->_potentialNetworkFailure = 0;
    v24->_stagerJob = job;
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

    _getAutoAssetJobStateTable = [objc_opt_class() _getAutoAssetJobStateTable];
    stateTable = v24->_stateTable;
    v24->_stateTable = _getAutoAssetJobStateTable;

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
      autoAssetSetClientName = [v44 autoAssetSetClientName];
      if (autoAssetSetClientName)
      {
        autoAssetSetClientName2 = [v44 autoAssetSetClientName];
LABEL_45:
        firstClientName = v24->_firstClientName;
        v24->_firstClientName = autoAssetSetClientName2;

LABEL_46:
        v113 = @"Stager";
        if (!job)
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

        objc_storeStrong(&v24->_baseForPatch, patchDescriptor);
        foundNewerPatch = v24->_foundNewerPatch;
        v24->_foundNewerPatch = 0;

        foundNewerFull = v24->_foundNewerFull;
        v24->_foundNewerFull = 0;

        newerFoundAssetDescriptor = v24->_newerFoundAssetDescriptor;
        v24->_newerFoundAssetDescriptor = 0;

        objc_storeStrong(&v24->_downloadingAssetDescriptor, descriptorCopy);
        v24->_schedulerTriggerReceived = 0;
        downloadingUserInitiated = v24->_downloadingUserInitiated;
        if ((downloadingUserInitiated & 1) == 0)
        {
          downloadingUserInitiated = [descriptorCopy2 downloadUserInitiated];
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
            clientDomainName3 = [v44 clientDomainName];
            assetSetIdentifier4 = [v44 assetSetIdentifier];
            autoAssetEntries = [configurationCopy autoAssetEntries];
            catalogCachedAssetSetID = [setDescriptorCopy catalogCachedAssetSetID];
            catalogDownloadedFromLive = [setDescriptorCopy catalogDownloadedFromLive];
            catalogLastTimeChecked = [setDescriptorCopy catalogLastTimeChecked];
            catalogPostedDate = [setDescriptorCopy catalogPostedDate];
            downloadedCatalogCachedAssetSetID = [setDescriptorCopy downloadedCatalogCachedAssetSetID];
            obj = [setDescriptorCopy downloadedCatalogDownloadedFromLive];
            downloadedCatalogLastTimeChecked = [setDescriptorCopy downloadedCatalogLastTimeChecked];
            downloadedCatalogPostedDate = [setDescriptorCopy downloadedCatalogPostedDate];
            v130 = objc_alloc_init(MANAutoAssetSetNotifications);
            v131 = v24->_aggregatedClientSetPolicy;
            v132 = *&v24->_haveReceivedLookupResponse;
            v133 = v24->_downloadingUserInitiated;
            v134 = objc_alloc_init(MANAutoAssetSetProgress);
            BYTE2(v212) = v133;
            LOWORD(v212) = v132;
            LOBYTE(v210) = 0;
            v135 = [MANAutoAssetSetStatus initStatusForClientDomain:v229 forAssetSetIdentifier:"initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDownloadedAtomicInstanceFromPreSUStaging:withLatestDowloadedAtomicInstanceEntries:withPreviouslyVendedLockedAtomicInstance:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:" withConfiguredAssetEntries:clientDomainName3 withAtomicInstancesDownloaded:assetSetIdentifier4 withCatalogCachedAssetSetID:autoAssetEntries withCatalogDownloadedFromLive:0 withCatalogLastTimeChecked:catalogCachedAssetSetID withCatalogPostedDate:catalogDownloadedFromLive withNewerAtomicInstanceDiscovered:catalogLastTimeChecked withNewerDiscoveredAtomicEntries:catalogPostedDate withLatestDownloadedAtomicInstance:0 withLatestDownloadedAtomicInstanceFromPreSUStaging:0 withLatestDowloadedAtomicInstanceEntries:0 withPreviouslyVendedLockedAtomicInstance:v210 withDownloadedCatalogCachedAssetSetID:0 withDownloadedCatalogDownloadedFromLive:0 withDownloadedCatalogLastTimeChecked:downloadedCatalogCachedAssetSetID withDownloadedCatalogPostedDate:obj withCurrentNotifications:downloadedCatalogLastTimeChecked withCurrentNeedPolicy:downloadedCatalogPostedDate withSchedulerPolicy:v130 withStagerPolicy:v131 havingReceivedLookupResponse:0 vendingAtomicInstanceForConfiguredEntries:0 withDownloadUserInitiated:v212 withDownloadProgress:v134 withDownloadedNetworkBytes:-1 withDownloadedFilesystemBytes:-1 withCurrentLockUsage:0 withSelectorsForStaging:0 withAvailableForUseError:0 withNewerVersionError:0];
            currentSetStatus = v24->_currentSetStatus;
            v24->_currentSetStatus = v135;

            p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
            diag = [(MANAutoAssetSetStatus *)v24->_currentSetStatus copy];
            [(MADAutoSetJobInformation *)v24->_setJobInformation setCurrentSetStatus:diag];
          }

          else
          {
            diag = [(SUCoreFSM *)v24->_autoJobFSM diag];
            [diag trackAnomaly:@"{initForInstance}" forReason:@"Unable to create current set status due to nil auto asset set instance!" withResult:6103 withError:0];
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
          objc_storeStrong(&v24->_assignedSetDescriptor, setDescriptor);
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
            transactionCopy2 = v226;
            if (stagerJob)
            {
              assetSetIdentifier5 = [*location assetSetIdentifier];
              autoAssetEntries2 = [*location autoAssetEntries];
              v193 = [v190 initWithFormat:@"[JOB-SET-STAGER][%@]setIdentifier:%@[entries:%ld]", autoAssetUUID, assetSetIdentifier5, objc_msgSend(autoAssetEntries2, "count")];
            }

            else
            {
              assetSetIdentifier5 = [setInstanceCopy assetSetIdentifier];
              autoAssetEntries2 = [setInstanceCopy clientDomainName];
              v193 = [v190 initWithFormat:@"[JOB-SET][%@]setIdentifier:%@[%@]", autoAssetUUID, assetSetIdentifier5, autoAssetEntries2];
            }

            autoJobName = v24->_autoJobName;
            v24->_autoJobName = v193;
          }

          else
          {
            v195 = v24->_autoAssetSelector;
            transactionCopy2 = v226;
            if (stagerJob)
            {
              if (v195)
              {
                assetSetIdentifier5 = [(MAAutoAssetSelector *)v24->_autoAssetSelector summary];
              }

              else
              {
                assetSetIdentifier5 = @"byUUID";
              }

              v197 = @"bySelector";
              if (dCopy)
              {
                v197 = @"byUUID";
              }

              v197 = [v190 initWithFormat:@"[JOB-AUTO-STAGER][%@]selector:%@[%@]", autoAssetUUID, assetSetIdentifier5, v197];
            }

            else
            {
              if (v195)
              {
                assetSetIdentifier5 = [(MAAutoAssetSelector *)v24->_autoAssetSelector summary];
              }

              else
              {
                assetSetIdentifier5 = @"byUUID";
              }

              v199 = @"bySelector";
              if (dCopy)
              {
                v199 = @"byUUID";
              }

              v197 = [v190 initWithFormat:@"[JOB-AUTO][%@]selector:%@[%@]", autoAssetUUID, assetSetIdentifier5, v199];
            }

            v200 = v24->_autoJobName;
            v24->_autoJobName = v197;

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
                [setInstanceCopy assetSetIdentifier];
              }

              else
              {
                [selectorCopy summary];
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
          metadata = [(MADAutoAssetDescriptor *)v24->_downloadingAssetDescriptor metadata];
          v143 = v24->_downloadingUserInitiated;
          if (descriptorCopy2)
          {
            v144 = v24->_downloadingUserInitiated;
            patchingAttempted = [descriptorCopy2 patchingAttempted];
            stagedPriorToAvailable = [descriptorCopy2 stagedPriorToAvailable];
            stagedFromOSVersion = [descriptorCopy2 stagedFromOSVersion];
            stagedFromBuildVersion = [descriptorCopy2 stagedFromBuildVersion];
            patchingAttemptError = [descriptorCopy2 patchingAttemptError];
            v143 = v144;
            patchingAttemptError2 = patchingAttemptError;
          }

          else
          {
            stagedFromBuildVersion = 0;
            stagedPriorToAvailable = 0;
            patchingAttempted = 0;
            stagedFromOSVersion = 0;
            patchingAttemptError2 = 0;
          }

          BYTE1(v211) = stagedPriorToAvailable;
          LOBYTE(v211) = patchingAttempted;
          LOBYTE(v209) = 0;
          v156 = [v140 initWithAssetSelector:v241 withNotifications:v141 withAvailableForUseAttributes:metadata withNewerVersionAttributes:0 withNeverBeenLocked:1 withDownloadUserInitiated:v143 withDownloadProgress:0 withDownloadedNetworkBytes:-1 withDownloadedFilesystemBytes:-1 withDownloadedAsPatch:v209 withPatchedFromBaseSelector:0 withPatchedFromBaseFilesystemBytes:-1 withPatchingAttempted:v211 withStagedPriorToAvailable:stagedFromOSVersion withStagedFromOSVersion:stagedFromBuildVersion withStagedFromBuildVersion:0 withCurrentLockUsage:0 withAvailableForUseError:patchingAttemptError2 withPatchingAttemptError:0 withNewerVersionError:?];
          v157 = v24->_currentStatus;
          v24->_currentStatus = v156;

          if (!descriptorCopy2)
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
              summary = [selectorCopy summary];
              *buf = 138543362;
              v248 = summary;
              _os_log_impl(&dword_0, v141, OS_LOG_TYPE_ERROR, "%{public}@|{initForInstance} [MA_BRAIN_SHIM_PROTOCOL_SUPPORT] unable to create current status for job", buf, 0xCu);
            }

            goto LABEL_68;
          }

          v242 = [MAAutoAssetStatus alloc];
          v230 = v24->_autoAssetSelector;
          v141 = objc_alloc_init(MAAutoAssetNotifications);
          metadata = [(MADAutoAssetDescriptor *)v24->_downloadingAssetDescriptor metadata];
          v152 = v24->_downloadingUserInitiated;
          if (descriptorCopy2)
          {
            patchingAttempted2 = [descriptorCopy2 patchingAttempted];
            stagedPriorToAvailable2 = [descriptorCopy2 stagedPriorToAvailable];
            stagedFromOSVersion = [descriptorCopy2 stagedFromOSVersion];
            stagedFromBuildVersion = [descriptorCopy2 stagedFromBuildVersion];
            patchingAttemptError2 = [descriptorCopy2 patchingAttemptError];
          }

          else
          {
            stagedFromBuildVersion = 0;
            stagedPriorToAvailable2 = 0;
            patchingAttempted2 = 0;
            stagedFromOSVersion = 0;
            patchingAttemptError2 = 0;
          }

          BYTE1(v210) = stagedPriorToAvailable2;
          LOBYTE(v210) = patchingAttempted2;
          LOBYTE(v208) = 0;
          v206 = [v242 initWithAssetSelector:v230 withNotifications:v141 withAvailableForUseAttributes:metadata withNewerVersionAttributes:0 withDownloadUserInitiated:v152 withDownloadProgress:0 withDownloadedNetworkBytes:-1 withDownloadedFilesystemBytes:-1 withDownloadedAsPatch:v208 withPatchedFromBaseSelector:0 withPatchedFromBaseFilesystemBytes:-1 withPatchingAttempted:v210 withStagedPriorToAvailable:stagedFromOSVersion withStagedFromOSVersion:stagedFromBuildVersion withStagedFromBuildVersion:0 withCurrentLockUsage:0 withAvailableForUseError:patchingAttemptError2 withPatchingAttemptError:0 withNewerVersionError:?];
          v207 = v24->_currentStatus;
          v24->_currentStatus = v206;

          if (!descriptorCopy2)
          {
LABEL_67:

            p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
LABEL_68:

            diag = v24->_currentSetStatus;
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
        autoAssetSetClientName = v24->_firstClientName;
        v24->_firstClientName = 0;
        goto LABEL_46;
      }

      autoAssetSetClientName = [v45 autoAssetClientName];
      if (autoAssetSetClientName)
      {
        autoAssetSetClientName2 = [v45 autoAssetClientName];
        goto LABEL_45;
      }

      v111 = v45;
    }

    autoAssetSetClientName2 = [v111 clientProcessName];
    goto LABEL_45;
  }

  v110 = 0;
LABEL_97:

  return v110;
}

- (void)startHandlingClientRequest:(id)request withControlInformation:(id)information
{
  requestCopy = request;
  informationCopy = information;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:startHandlingClientRequest", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [[MADAutoAssetJobParam alloc] initWithClientRequest:requestCopy withControlInformation:informationCopy];
  clientRequestMessage = [requestCopy clientRequestMessage];
  messageName = [clientRequestMessage messageName];

  [(MADAutoAssetJobParam *)v9 updateSafeSummary];
  if (([SUCore stringIsEqual:messageName to:@"MA-AUTO:INTEREST_IN_CONTENT"]& 1) != 0)
  {
    v12 = @"ClientRequestInterest";
  }

  else if (([SUCore stringIsEqual:messageName to:@"MA-AUTO:CHECK_FOR_NEWER"]& 1) != 0)
  {
    v12 = @"ClientRequestCheck";
  }

  else if (([SUCore stringIsEqual:messageName to:@"MA-AUTO:DETERMINE_IF_AVAILABLE"]& 1) != 0)
  {
    v12 = @"ClientRequestDetermine";
  }

  else if (([SUCore stringIsEqual:messageName to:@"MA-AUTO:LOCK_CONTENT"]& 1) != 0)
  {
    v12 = @"ClientRequestAddLock";
  }

  else if (([SUCore stringIsEqual:messageName to:@"MA-AUTO:CONTINUE_LOCK_USAGE"]& 1) != 0)
  {
    v12 = @"ClientRequestContinueLock";
  }

  else if (([SUCore stringIsEqual:messageName to:@"MA-AUTO:END_LOCK_USAGE"]& 1) != 0 || ([SUCore stringIsEqual:messageName to:@"MA-AUTO:END_PREVIOUS_LOCKS"]& 1) != 0 || ([SUCore stringIsEqual:messageName to:@"MA-AUTO:END_ALL_PREVIOUS_LOCKS"]& 1) != 0)
  {
    v12 = @"ClientRequestRemoveLock";
  }

  else if (([SUCore stringIsEqual:messageName to:@"MA-AUTO-SET:ALTER_ENTRIES_REPRESENTING_ATOMIC"]& 1) != 0)
  {
    v12 = @"SetClientRequestAlterAtomic";
  }

  else if (([SUCore stringIsEqual:messageName to:@"MA-AUTO-SET:NEED_FOR_ATOMIC"]& 1) != 0)
  {
    v12 = @"SetClientRequestNeedAtomic";
  }

  else if (([SUCore stringIsEqual:messageName to:@"MA-AUTO-SET:CHECK_ATOMIC"]& 1) != 0)
  {
    v12 = @"SetClientRequestCheckAtomic";
  }

  else if (([SUCore stringIsEqual:messageName to:@"MA-AUTO-SET:LOCK_ATOMIC"]& 1) != 0)
  {
    v12 = @"SetClientRequestLockAtomic";
  }

  else if (([SUCore stringIsEqual:messageName to:@"MA-AUTO-SET:CONTINUE_ATOMIC_LOCK"]& 1) != 0)
  {
    v12 = @"SetClientRequestContinueAtomic";
  }

  else
  {
    if (([SUCore stringIsEqual:messageName to:@"MA-AUTO-SET:END_ATOMIC_LOCK"]& 1) == 0 && ([SUCore stringIsEqual:messageName to:@"MA-AUTO-SET:END_ATOMIC_LOCKS_FOR_CLIENT"]& 1) == 0)
    {
      autoJobFSM = [[NSString alloc] initWithFormat:@"start requested for invalid command:%@", messageName];
      [(MADAutoAssetJob *)self trackAnomaly:6106 forReason:autoJobFSM];
      goto LABEL_16;
    }

    v12 = @"SetClientRequestEndAtomic";
  }

  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  [autoJobFSM postEvent:v12 withInfo:v9];
LABEL_16:

  os_activity_scope_leave(&state);
}

- (void)startScheduleTriggeredSelector:(id)selector withControlInformation:(id)information
{
  informationCopy = information;
  selectorCopy = selector;
  v9 = [[MADAutoAssetJobParam alloc] initWithSelector:selectorCopy withControlInformation:informationCopy];

  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  [autoJobFSM postEvent:@"SchedulerTriggered" withInfo:v9];
}

- (void)startScheduleTriggeredSetJob:(id)job
{
  jobCopy = job;
  v6 = [[MADAutoAssetJobParam alloc] initWithSelector:0 withControlInformation:jobCopy];

  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  [autoJobFSM postEvent:@"SchedulerTriggered" withInfo:v6];
}

- (void)startResumingInFlightDownload:(id)download withControlInformation:(id)information
{
  informationCopy = information;
  downloadCopy = download;
  v9 = [[MADAutoAssetJobParam alloc] initWithDescriptor:downloadCopy withControlInformation:informationCopy];

  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  [autoJobFSM postEvent:@"StartupDownloading" withInfo:v9];
}

- (void)clientRequestedStatus:(id)status
{
  statusCopy = status;
  v6 = [[MADAutoAssetJobParam alloc] initWithControlInformation:statusCopy];

  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  [autoJobFSM postEvent:@"SimulateClientRequestedStatus" withInfo:v6];
}

- (void)handleSimulateOperation:(id)operation
{
  operationCopy = operation;
  v6 = [[MADAutoAssetJobParam alloc] initWithControlInformation:operationCopy];

  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  [autoJobFSM postEvent:@"SimulateOperation" withInfo:v6];
}

- (void)handleDownloadCatalogJobFinished:(id)finished withCatalog:(id)catalog downloadError:(id)error
{
  finishedCopy = finished;
  catalogCopy = catalog;
  if (error)
  {
    error = [MAAutoAssetError buildError:6107 fromOperation:@"handleDownloadCatalogJobFinished" underlyingError:error withDescription:@"error while downloading catalog (performing auto-asset lookup)"];
    v9 = @"CatalogDownloadFailure";
  }

  else
  {
    v9 = @"CatalogDownloadSuccess";
  }

  v10 = [[MADAutoAssetJobParam alloc] initForFinishedJobID:finishedCopy withCatalog:catalogCopy whereCatalogFromLookupCache:0 withError:error];
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  [autoJobFSM postEvent:v9 withInfo:v10];
}

- (void)handleDownloadConfigJobFinished:(id)finished withDownloadOptions:(id)options configError:(id)error
{
  optionsCopy = options;
  errorCopy = error;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  v10 = autoJobFSM;
  if (errorCopy)
  {
    diag = [autoJobFSM diag];
    checkedCode = [errorCopy checkedCode];
    v13 = [MAAutoAssetError buildError:6107 fromOperation:@"handleDownloadConfigJobFinished" underlyingError:errorCopy withDescription:@"error while attempting to boost to user-initiated (performing auto-asset content download)"];
    [diag trackAnomaly:@"{handleDownloadConfigJobFinished} Failed to config download" forReason:@"Error while attempting to config download" withResult:checkedCode withError:v13];
  }

  else
  {
    extendedStateQueue = [autoJobFSM extendedStateQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __83__MADAutoAssetJob_handleDownloadConfigJobFinished_withDownloadOptions_configError___block_invoke;
    v15[3] = &unk_4B2B18;
    v16 = optionsCopy;
    selfCopy = self;
    dispatch_async(extendedStateQueue, v15);
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

- (void)handleDownloadAssetProgressForJob:(id)job withProgress:(id)progress
{
  progressCopy = progress;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __66__MADAutoAssetJob_handleDownloadAssetProgressForJob_withProgress___block_invoke;
  v9[3] = &unk_4B2B18;
  v9[4] = self;
  v10 = progressCopy;
  v8 = progressCopy;
  dispatch_async(extendedStateQueue, v9);
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

- (void)handleDownloadAssetJobFinished:(id)finished downloadError:(id)error
{
  finishedCopy = finished;
  errorCopy = error;
  if (errorCopy)
  {
    v8 = [MAAutoAssetError buildError:6107 fromOperation:@"handleDownloadAssetJobFinished" underlyingError:errorCopy withDescription:@"error while downloading asset (performing auto-asset content download)"];
  }

  else
  {
    v8 = 0;
  }

  v9 = [[MADAutoAssetJobParam alloc] initForFinishedJobID:finishedCopy withError:v8];
  if ([(MADAutoAssetJob *)self autoAssetSetJob]&& +[MAAIRBEventReporter isAvailable])
  {
    v29 = finishedCopy;
    v10 = [MAAIRBMobileAssetOperationMetadata alloc];
    v11 = [MADAutoAssetHistoryTracker operationName:1701];
    v28 = [(MAAIRBMobileAssetOperationMetadata *)v10 initWithCode:1701 name:v11];

    v12 = [MAAIRBMobileAssetAssetSelector alloc];
    downloadingAssetDescriptor = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    assetType = [downloadingAssetDescriptor assetType];
    downloadingAssetDescriptor2 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    assetSpecifier = [downloadingAssetDescriptor2 assetSpecifier];
    downloadingAssetDescriptor3 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    assetVersion = [downloadingAssetDescriptor3 assetVersion];
    v18 = [(MAAIRBMobileAssetAssetSelector *)v12 initWithAssetType:assetType assetSpecifier:assetSpecifier assetVersion:assetVersion];

    v19 = [MAAIRBAppleIntelligenceAssetDeliveryEventType typeAssetJob:v28 assetSelector:v18 downloadResult:0];
    v20 = [MAAIRBAppleIntelligenceAssetDeliveryEvent alloc];
    v21 = v20;
    if (errorCopy)
    {
      v30 = errorCopy;
      v22 = [NSArray arrayWithObjects:&v30 count:1];
      v23 = [(MAAIRBAppleIntelligenceAssetDeliveryEvent *)v21 initWithErrors:v22 type:v19];
    }

    else
    {
      v23 = [(MAAIRBAppleIntelligenceAssetDeliveryEvent *)v20 initWithErrors:&__NSArray0__struct type:v19];
    }

    [MAAIRBEventReporter emitAppleIntelligenceEndEvent:v23];

    finishedCopy = v29;
  }

  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  v25 = autoJobFSM;
  if (errorCopy)
  {
    v26 = @"DownloadFailure";
  }

  else
  {
    v26 = @"DownloadSuccess";
  }

  [autoJobFSM postEvent:v26 withInfo:v9];
}

- (void)exclusiveLookupForAssetTypeGranted:(id)granted
{
  v5 = [[MADAutoAssetJobParam alloc] initWithSafeSummary:@"exclusiveLookupForAssetTypeGranted"];
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  [autoJobFSM postEvent:@"LookupGrantObtained" withInfo:v5];
}

- (void)persistedStateForDownloadJob:(id)job
{
  v5 = [[MADAutoAssetJobParam alloc] initWithSafeSummary:@"persistedStateForDownloadJob"];
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  [autoJobFSM postEvent:@"PersistedAssigned" withInfo:v5];
}

- (void)startStagerDetermineIfAvailable:(id)available withAssetTargetBuildVersion:(id)version withAssetTargetTrainName:(id)name withAssetTargetRestoreVersion:(id)restoreVersion withControlInformation:(id)information
{
  informationCopy = information;
  restoreVersionCopy = restoreVersion;
  nameCopy = name;
  versionCopy = version;
  availableCopy = available;
  v18 = [[MADAutoAssetJobParam alloc] initWithAssetTargetOSVersion:availableCopy withAssetTargetBuildVersion:versionCopy withAssetTargetTrainName:nameCopy withAssetTargetRestoreVersion:restoreVersionCopy usingCachedAutoAssetCatalog:0 withControlInformation:informationCopy];

  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  [autoJobFSM postEvent:@"StagerDetermineIfAvailable" withInfo:v18];
}

- (void)startStagerDownloadForStaging:(id)staging withAssetTargetBuildVersion:(id)version usingCachedAutoAssetCatalog:(id)catalog withControlInformation:(id)information
{
  informationCopy = information;
  catalogCopy = catalog;
  versionCopy = version;
  stagingCopy = staging;
  v15 = [[MADAutoAssetJobParam alloc] initWithAssetTargetOSVersion:stagingCopy withAssetTargetBuildVersion:versionCopy withAssetTargetTrainName:0 withAssetTargetRestoreVersion:0 usingCachedAutoAssetCatalog:catalogCopy withControlInformation:informationCopy];

  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  [autoJobFSM postEvent:@"StagerDownloadForStaging" withInfo:v15];
}

- (void)cancelAutoAssetJob
{
  v4 = [[MADAutoAssetJobParam alloc] initWithSafeSummary:@"cancelAutoAssetJob"];
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  [autoJobFSM postEvent:@"CancelJob" withInfo:v4];
}

- (void)finishedAcknowledgeAutoAssetJob
{
  v4 = [[MADAutoAssetJobParam alloc] initWithSafeSummary:@"finishedAcknowledgeAutoAssetJob"];
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  [autoJobFSM postEvent:@"FinishAcknowledged" withInfo:v4];
}

- (id)_summary
{
  v3 = [NSString alloc];
  jobCreationTriggeringLayer = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];
  if (jobCreationTriggeringLayer)
  {
    jobCreationTriggeringLayer2 = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];
    v6 = [v3 initWithFormat:@"triggeringLayer:%@", jobCreationTriggeringLayer2];
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
  v160 = firstClientName2 = @"N";
  if (v160)
  {
    v4 = @"Y";
  }

  else
  {
    v4 = @"N";
  }

  v142 = v4;
  autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
  if (autoAssetSelector)
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  v141 = v5;
  autoAssetUUID = [(MADAutoAssetJob *)self autoAssetUUID];
  if (autoAssetUUID)
  {
    v6 = @"Y";
  }

  else
  {
    v6 = @"N";
  }

  v140 = v6;
  activeJobTasks = [(MADAutoAssetJob *)self activeJobTasks];
  v139 = [activeJobTasks count];
  clientRequestCount = [(MADAutoAssetJob *)self clientRequestCount];
  stateTable = [(MADAutoAssetJob *)self stateTable];
  if (stateTable)
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  v136 = v7;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  if (autoJobFSM)
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
  bondedWithJob = [(MADAutoAssetJob *)self bondedWithJob];
  if (bondedWithJob)
  {
    v14 = @"Y";
  }

  else
  {
    v14 = @"N";
  }

  v125 = v14;
  activeInstance = [(MADAutoAssetJob *)self activeInstance];
  if (activeInstance)
  {
    v15 = @"Y";
  }

  else
  {
    v15 = @"N";
  }

  v124 = v15;
  activeDesire = [(MADAutoAssetJob *)self activeDesire];
  if (activeDesire)
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  v123 = v16;
  autoAssetSetDesire = [(MADAutoAssetJob *)self autoAssetSetDesire];
  if ([autoAssetSetDesire awaitDownloadingOfDiscovered])
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
  activeFound = [(MADAutoAssetJob *)self activeFound];
  if (activeFound)
  {
    v19 = @"Y";
  }

  else
  {
    v19 = @"N";
  }

  v118 = v19;
  activeEnd = [(MADAutoAssetJob *)self activeEnd];
  if (activeEnd)
  {
    v20 = @"Y";
  }

  else
  {
    v20 = @"N";
  }

  v116 = v20;
  activeListen = [(MADAutoAssetJob *)self activeListen];
  if (activeListen)
  {
    v21 = @"Y";
  }

  else
  {
    v21 = @"N";
  }

  v114 = v21;
  autoAssetJobInformation = [(MADAutoAssetJob *)self autoAssetJobInformation];
  if (autoAssetJobInformation)
  {
    v22 = @"Y";
  }

  else
  {
    v22 = @"N";
  }

  v113 = v22;
  aggregatedClientAssetPolicySpecified = [(MADAutoAssetJob *)self aggregatedClientAssetPolicySpecified];
  if (aggregatedClientAssetPolicySpecified)
  {
    aggregatedClientAssetPolicy = [(MADAutoAssetJob *)self aggregatedClientAssetPolicy];
    summary = [aggregatedClientAssetPolicy summary];
  }

  else
  {
    summary = @"N";
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
  firstClientName = [(MADAutoAssetJob *)self firstClientName];
  if (firstClientName)
  {
    firstClientName2 = [(MADAutoAssetJob *)self firstClientName];
  }

  jobCreationTriggeringLayer = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];
  latestInstalledAssetVersion2 = @"N";
  if (jobCreationTriggeringLayer)
  {
    jobCreationTriggeringLayer2 = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];
  }

  else
  {
    jobCreationTriggeringLayer2 = @"N";
  }

  onFilesystemByVersion = [(MADAutoAssetJob *)self onFilesystemByVersion];
  v108 = [onFilesystemByVersion count];
  checkUUIDBasePortion = [(MADAutoAssetJob *)self checkUUIDBasePortion];
  if (checkUUIDBasePortion)
  {
    v28 = @"Y";
  }

  else
  {
    v28 = @"N";
  }

  v107 = v28;
  checkUUID = [(MADAutoAssetJob *)self checkUUID];
  if (checkUUID)
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
  catalogDownloadOptions = [(MADAutoAssetJob *)self catalogDownloadOptions];
  if (catalogDownloadOptions)
  {
    v33 = @"Y";
  }

  else
  {
    v33 = @"N";
  }

  v101 = v33;
  baseForPatch = [(MADAutoAssetJob *)self baseForPatch];
  if (baseForPatch)
  {
    v34 = @"Y";
  }

  else
  {
    v34 = @"N";
  }

  v100 = v34;
  foundNewerPatch = [(MADAutoAssetJob *)self foundNewerPatch];
  if (foundNewerPatch)
  {
    v35 = @"Y";
  }

  else
  {
    v35 = @"N";
  }

  v99 = v35;
  foundNewerFull = [(MADAutoAssetJob *)self foundNewerFull];
  if (foundNewerFull)
  {
    v36 = @"Y";
  }

  else
  {
    v36 = @"N";
  }

  v98 = v36;
  newerFoundAssetDescriptor = [(MADAutoAssetJob *)self newerFoundAssetDescriptor];
  if (newerFoundAssetDescriptor)
  {
    v37 = @"Y";
  }

  else
  {
    v37 = @"N";
  }

  v97 = v37;
  downloadingAssetDescriptor = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
  if (downloadingAssetDescriptor)
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
  latestInstalledAssetVersion = [(MADAutoAssetJob *)self latestInstalledAssetVersion];
  v144 = firstClientName;
  if (latestInstalledAssetVersion)
  {
    latestInstalledAssetVersion2 = [(MADAutoAssetJob *)self latestInstalledAssetVersion];
  }

  latestInstalledAssetBuild = [(MADAutoAssetJob *)self latestInstalledAssetBuild];
  summary2 = @"N";
  if (latestInstalledAssetBuild)
  {
    latestInstalledAssetBuild2 = [(MADAutoAssetJob *)self latestInstalledAssetBuild];
  }

  else
  {
    latestInstalledAssetBuild2 = @"N";
  }

  currentStatus = [(MADAutoAssetJob *)self currentStatus];
  if (currentStatus || ([(MADAutoAssetJob *)self currentSetStatus], (v66 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    currentStatus2 = [(MADAutoAssetJob *)self currentStatus];
    if (currentStatus2)
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

  progressReportPhaseName = [(MADAutoAssetJob *)self progressReportPhaseName];
  lastReportedPatchProgress = [(MADAutoAssetJob *)self lastReportedPatchProgress];
  if (lastReportedPatchProgress)
  {
    v53 = @"Y";
  }

  else
  {
    v53 = @"N";
  }

  v77 = v53;
  resultSelector = [(MADAutoAssetJob *)self resultSelector];
  if (resultSelector)
  {
    v54 = @"Y";
  }

  else
  {
    v54 = @"N";
  }

  v75 = v54;
  resultInstance = [(MADAutoAssetJob *)self resultInstance];
  if (resultInstance)
  {
    v55 = @"Y";
  }

  else
  {
    v55 = @"N";
  }

  v74 = v55;
  resultFound = [(MADAutoAssetJob *)self resultFound];
  if (resultFound)
  {
    v56 = @"Y";
  }

  else
  {
    v56 = @"N";
  }

  v73 = v56;
  resultEnd = [(MADAutoAssetJob *)self resultEnd];
  if (resultEnd)
  {
    v57 = @"Y";
  }

  else
  {
    v57 = @"N";
  }

  v72 = v57;
  resultListen = [(MADAutoAssetJob *)self resultListen];
  if (resultListen)
  {
    v58 = @"Y";
  }

  else
  {
    v58 = @"N";
  }

  v71 = v58;
  aggregatedClientSetPolicy = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  v145 = summary;
  if (aggregatedClientSetPolicy)
  {
    aggregatedClientSetPolicy2 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
    summary2 = [aggregatedClientSetPolicy2 summary];
  }

  assignedSetDescriptor = [(MADAutoAssetJob *)self assignedSetDescriptor];
  v138 = jobCreationTriggeringLayer;
  v109 = latestInstalledAssetVersion;
  v102 = latestInstalledAssetBuild2;
  if (assignedSetDescriptor)
  {
    assignedSetDescriptor2 = [(MADAutoAssetJob *)self assignedSetDescriptor];
    newIdentityName = [assignedSetDescriptor2 newIdentityName];
  }

  else
  {
    newIdentityName = @"N";
  }

  nextSetSpecifierToDownload = [(MADAutoAssetJob *)self nextSetSpecifierToDownload];
  resultSetFound = [(MADAutoAssetJob *)self resultSetFound];
  if (resultSetFound)
  {
    v62 = @"Y";
  }

  else
  {
    v62 = @"N";
  }

  [(MADAutoAssetJob *)self setDescriptorDiscardRamped];
  v63 = [v143 initWithFormat:@"[overall]instance:%@, selector:%@, UUID:%@, tasks:%lu, requests:%ld, table:%@, FSM:%@, sched:%@, NWFail:%@|beingCancled:%@|[earlier]sched:%@, NWFail:%@|bonded:%@|[active]instance:%@, desire:%@(awaitDownload:%@, checkAwait:%@), found:%@, end:%@, listen:%@, jobInfo:%@|[aggregated]policy:%@, clientRequested:%@|firstClientName:%@, triggeringLayer:%@|onFilesystemByVersion:%ld|[check]Base:%@, UUID:%@, lookupGrant:%@, rampFG:%@, rampLatch:%@, options:%@|[asset]base:%@, patch:%@, full:%@, newer:%@, downloading:%@, scheduler:%@, lookupRsp:%@(forConfig:%@), user:%@, boosting:%@, checking:%@, determining:%@, locking:%@, patched:%@|[installed]:version:%@, build:%@|[status]current:%@, progress:%@, lastPatch:%@|[results]selector:%@, instance:%@, found:%@, end:%@, listen:%@, [set]aggregatedPolicy:%@, descriptor:%@, next:%ld, found:%@, discardRampled:%@", v142, v141, v140, v139, clientRequestCount, v136, v134, v133, v132, v130, v128, v127, v125, v124, v123, v121, v120, v118, v116, v114, v113, v145, v110, firstClientName2, jobCreationTriggeringLayer2, v108, v107, v106, v105, v104, v103, v101, v100, v99, v98, v97, v95, v94, v93, v92, v91, v89, v88, v86, v84, v82, latestInstalledAssetVersion2, v102, v78, progressReportPhaseName, v77, v75, v74, v73, v72, v71, summary2, newIdentityName, nextSetSpecifierToDownload, v62];

  if (assignedSetDescriptor)
  {
  }

  if (aggregatedClientSetPolicy)
  {
  }

  if (v96)
  {
  }

  v64 = currentStatus;
  if (!currentStatus)
  {

    v64 = 0;
  }

  if (latestInstalledAssetBuild)
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

  if (aggregatedClientAssetPolicySpecified)
  {
  }

  return v63;
}

- (id)_updateLatestSummary
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  _summary = [(MADAutoAssetJob *)self _summary];
  [(MADAutoAssetJob *)self setLatestSafeSummary:_summary];

  v6 = [MAAutoAssetSummary alloc];
  mostSpecificSelectorToReport = [(MADAutoAssetJob *)self mostSpecificSelectorToReport];
  wasPatched = [(MADAutoAssetJob *)self wasPatched];
  currentStatus = [(MADAutoAssetJob *)self currentStatus];
  v10 = [v6 initWithAssetSelector:mostSpecificSelectorToReport withAssetRepresentation:0 withAssetWasPatched:wasPatched withAssetIsStaged:0 withJobStatus:currentStatus withScheduledIntervalSecs:0 withScheduledRemainingSecs:0 withPushDelaySecs:0 withActiveClientCount:0 withActiveMonitorCount:0 withMaximumClientCount:0 withTotalClientCount:0];
  [(MADAutoAssetJob *)self setLatestAutoAssetSummary:v10];

  return [(MADAutoAssetJob *)self latestSafeSummary];
}

- (id)clientName
{
  activeInstance = [(MADAutoAssetJob *)self activeInstance];

  if (activeInstance)
  {
    activeInstance2 = [(MADAutoAssetJob *)self activeInstance];
LABEL_5:
    v6 = activeInstance2;
    autoAssetClientName = [activeInstance2 autoAssetClientName];

    goto LABEL_6;
  }

  autoAssetInstance = [(MADAutoAssetJob *)self autoAssetInstance];

  if (autoAssetInstance)
  {
    activeInstance2 = [(MADAutoAssetJob *)self autoAssetInstance];
    goto LABEL_5;
  }

  autoAssetClientName = @"auto-asset-client";
LABEL_6:

  return autoAssetClientName;
}

- (int64_t)action_AddTaskDecideFilesystem:(id)filesystem error:(id *)error
{
  filesystemCopy = filesystem;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AddTaskDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v12);

  clientRequest = [filesystemCopy clientRequest];
  [(MADAutoAssetJob *)self _rememberIfSchedulerInvolved:clientRequest];

  clientRequest2 = [filesystemCopy clientRequest];
  [(MADAutoAssetJob *)self _setPolicyFromClientRequest:clientRequest2];

  [(MADAutoAssetJob *)self addToActiveJobTasks:filesystemCopy];
  [(MADAutoAssetJob *)self checkFilesystemAndDecidePurgeOrLookup];
  os_activity_scope_leave(&v12);

  return 0;
}

- (int64_t)action_AddTaskSchedulerDecideFilesystem:(id)filesystem error:(id *)error
{
  filesystemCopy = filesystem;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AddTaskSchedulerDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self setSchedulerInvolved:1, v10.opaque[0], v10.opaque[1]];
  [(MADAutoAssetJob *)self setSetCheckAwaitingDownload:1];
  [(MADAutoAssetJob *)self addToActiveJobTasks:filesystemCopy];
  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    [(MADAutoAssetJob *)self clearSetStatusStartingSetJob];
  }

  [(MADAutoAssetJob *)self checkFilesystemAndDecidePurgeOrLookup];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_AddTaskCheckDecideFilesystem:(id)filesystem error:(id *)error
{
  filesystemCopy = filesystem;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AddTaskCheckDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v12);

  clientRequest = [filesystemCopy clientRequest];
  [(MADAutoAssetJob *)self _rememberIfSchedulerInvolved:clientRequest];

  clientRequest2 = [filesystemCopy clientRequest];
  [(MADAutoAssetJob *)self _setPolicyFromClientRequest:clientRequest2];

  [(MADAutoAssetJob *)self addToActiveJobTasks:filesystemCopy];
  [(MADAutoAssetJob *)self setCheckingAssetContent:1];
  [(MADAutoAssetJob *)self checkFilesystemAndDecidePurgeOrLookup];
  os_activity_scope_leave(&v12);

  return 0;
}

- (int64_t)action_AddTaskDetermineDecideFilesystem:(id)filesystem error:(id *)error
{
  filesystemCopy = filesystem;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AddTaskDetermineDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self addToActiveJobTasks:filesystemCopy, v10.opaque[0], v10.opaque[1]];
  [(MADAutoAssetJob *)self setDeterminingAssetContent:1];
  [(MADAutoAssetJob *)self checkFilesystemAndDecidePurgeOrLookup];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_AddTaskInterestDecideFilesystem:(id)filesystem error:(id *)error
{
  filesystemCopy = filesystem;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AddTaskInterestDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v12);

  clientRequest = [filesystemCopy clientRequest];
  [(MADAutoAssetJob *)self _rememberIfSchedulerInvolved:clientRequest];

  clientRequest2 = [filesystemCopy clientRequest];
  [(MADAutoAssetJob *)self _setPolicyFromClientRequest:clientRequest2];

  [(MADAutoAssetJob *)self addToActiveJobTasks:filesystemCopy];
  [(MADAutoAssetJob *)self replyToClientForJobParam:filesystemCopy withResponseError:0];
  [(MADAutoAssetJob *)self checkFilesystemAndDecidePurgeOrLookup];
  os_activity_scope_leave(&v12);

  return 0;
}

- (int64_t)action_AddTaskLockDecideFilesystem:(id)filesystem error:(id *)error
{
  filesystemCopy = filesystem;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AddTaskLockDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v12);

  clientRequest = [filesystemCopy clientRequest];
  [(MADAutoAssetJob *)self _rememberIfSchedulerInvolved:clientRequest];

  clientRequest2 = [filesystemCopy clientRequest];
  [(MADAutoAssetJob *)self _setPolicyFromClientRequest:clientRequest2];

  [(MADAutoAssetJob *)self addToActiveJobTasks:filesystemCopy];
  [(MADAutoAssetJob *)self setLockingAssetContent:1];
  [(MADAutoAssetJob *)self checkFilesystemAndDecidePurgeOrLookup];
  os_activity_scope_leave(&v12);

  return 0;
}

- (int64_t)action_RequestLookupGrant:(id)grant error:(id *)error
{
  grantCopy = grant;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:RequestLookupGrant", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self obtainLookupGrant:v10.opaque[0]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_DownloadCatalog:(id)catalog error:(id *)error
{
  catalogCopy = catalog;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:DownloadCatalog", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self setHoldingLookupGrant:1, v10.opaque[0], v10.opaque[1]];
  [(MADAutoAssetJob *)self downloadCatalog:@"DownloadCatalog"];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_StagerDetermineDecideFilesystem:(id)filesystem error:(id *)error
{
  filesystemCopy = filesystem;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:StagerDetermineDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v14);

  [(MADAutoAssetJob *)self simulateSet:filesystemCopy, v14.opaque[0], v14.opaque[1]];
  if (![(MADAutoAssetJob *)self stagerJob])
  {
    [(MADAutoAssetJob *)self trackAnomaly:6108 forReason:@"{StagerDetermineDecideFilesystem} triggered to start a stager-job when job not created as a stager-job"];
    [(MADAutoAssetJob *)self setStagerJob:1];
  }

  [(MADAutoAssetJob *)self setStagerJobDownloadContent:0];
  [(MADAutoAssetJob *)self setStagerJobResultsReported:0];
  [(MADAutoAssetJob *)self setDeterminingAssetContent:1];
  assetTargetOSVersion = [filesystemCopy assetTargetOSVersion];
  [(MADAutoAssetJob *)self setStagerAssetTargetOSVersion:assetTargetOSVersion];

  assetTargetBuildVersion = [filesystemCopy assetTargetBuildVersion];
  [(MADAutoAssetJob *)self setStagerAssetTargetBuildVersion:assetTargetBuildVersion];

  assetTargetTrainName = [filesystemCopy assetTargetTrainName];
  [(MADAutoAssetJob *)self setStagerAssetTargetTrainName:assetTargetTrainName];

  assetTargetRestoreVersion = [filesystemCopy assetTargetRestoreVersion];
  [(MADAutoAssetJob *)self setStagerAssetTargetRestoreVersion:assetTargetRestoreVersion];

  [(MADAutoAssetJob *)self setStagerJobAutoAssetCatalog:0];
  [(MADAutoAssetJob *)self checkFilesystemAndDecidePurgeOrLookup];
  os_activity_scope_leave(&v14);

  return 0;
}

- (int64_t)action_StagerDownloadDecideFilesystem:(id)filesystem error:(id *)error
{
  filesystemCopy = filesystem;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v28.opaque[0] = 0;
  v28.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:StagerDownloadDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v28);

  [(MADAutoAssetJob *)self simulateSet:filesystemCopy, v28.opaque[0], v28.opaque[1]];
  if (![(MADAutoAssetJob *)self stagerJob])
  {
    [(MADAutoAssetJob *)self trackAnomaly:6108 forReason:@"{StagerDownloadDecideFilesystem} triggered to start a stager-job when job not created as a stager-job"];
    [(MADAutoAssetJob *)self setStagerJob:1];
  }

  checkUUID = [(MADAutoAssetJob *)self checkUUID];
  v10 = checkUUID == 0;

  if (v10)
  {
    autoAssetUUID = [(MADAutoAssetJob *)self autoAssetUUID];
    [(MADAutoAssetJob *)self setCheckUUID:autoAssetUUID];
  }

  [(MADAutoAssetJob *)self setStagerJobDownloadContent:1];
  [(MADAutoAssetJob *)self setStagerJobResultsReported:0];
  [(MADAutoAssetJob *)self setCheckingAssetContent:1];
  assetTargetOSVersion = [filesystemCopy assetTargetOSVersion];
  [(MADAutoAssetJob *)self setStagerAssetTargetOSVersion:assetTargetOSVersion];

  assetTargetBuildVersion = [filesystemCopy assetTargetBuildVersion];
  [(MADAutoAssetJob *)self setStagerAssetTargetBuildVersion:assetTargetBuildVersion];

  autoAssetCatalog = [filesystemCopy autoAssetCatalog];
  [(MADAutoAssetJob *)self setStagerJobAutoAssetCatalog:autoAssetCatalog];

  [(MADAutoAssetJob *)self setStagerAssetTargetTrainName:0];
  [(MADAutoAssetJob *)self setStagerAssetTargetRestoreVersion:0];
  [(MADAutoAssetJob *)self setConfiguredToUserInitiated:1];
  v15 = [(MADAutoAssetJob *)self refreshOnFilesystemFromManagerPromotingIfStaged:0];
  autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
  assetVersion = [autoAssetSelector assetVersion];
  v18 = [(MADAutoAssetJob *)self installedOnFilesystemWithVersion:assetVersion fromLocation:@"StagerDownloadDecideFilesystem"];

  if (v18)
  {
    [(MADAutoAssetJob *)self updateResultPropertiesWithDescriptor:v18];
    v19 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      autoJobName = [(MADAutoAssetJob *)self autoJobName];
      selectorName = [v18 selectorName];
      *buf = 138543618;
      v30 = autoJobName;
      v31 = 2114;
      v32 = selectorName;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ | {StagerDownloadDecideFilesystem} found already downloaded (on filesystem) asset | selector:%{public}@", buf, 0x16u);
    }

    v22 = @"AlreadyDownloaded";
  }

  else
  {
    v22 = @"FoundCachedLookupResult";
  }

  v23 = [MADAutoAssetJobParam alloc];
  _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
  v25 = [(MADAutoAssetJobParam *)v23 initWithSafeSummary:_updateLatestSummary];

  autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
  [autoJobFSM2 followupEvent:v22 withInfo:v25];

  os_activity_scope_leave(&v28);
  return 0;
}

- (int64_t)action_DecideStartupDownloading:(id)downloading error:(id *)error
{
  downloadingCopy = downloading;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = _os_activity_create(&dword_0, "MADJob:DecideStartupDownloading", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);

  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {
    [(MADAutoAssetJob *)self simulateSet:downloadingCopy];
    autoAssetDescriptor = [downloadingCopy autoAssetDescriptor];
    if (!autoAssetDescriptor)
    {
      v9 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        autoJobName = [(MADAutoAssetJob *)self autoJobName];
        _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
        *buf = 138543618;
        v77 = autoJobName;
        v78 = 2114;
        v79 = _updateLatestSummary;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%{public}@ {DecideStartupDownloading} | inFlightDescriptor not provided\nJOB-SUMMARY:%{public}@", buf, 0x16u);
      }

      downloadingAssetDescriptor = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
      v13 = downloadingAssetDescriptor == 0;

      if (v13)
      {
        autoAssetDescriptor = 0;
        v70 = @"CannotProceed";
LABEL_31:
        autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
        [autoJobFSM2 followupEvent:v70 withInfo:downloadingCopy];

        goto LABEL_32;
      }

      autoAssetDescriptor = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
      v14 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
        summary = [autoAssetDescriptor summary];
        *buf = 138543618;
        v77 = autoJobName2;
        v78 = 2114;
        v79 = summary;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ {DecideStartupDownloading} | able to deduce in-flight descriptor from params provided on auto-asset-job init | inFlightDescriptor:%{public}@", buf, 0x16u);
      }
    }

    isPatch = [autoAssetDescriptor isPatch];
    v18 = @"DownloadFull";
    if (isPatch)
    {
      v18 = @"DownloadPatch";
    }

    v70 = v18;
    [(MADAutoAssetJob *)self setReportingProgress:1];
    assetVersion = [autoAssetDescriptor assetVersion];
    v20 = assetVersion == 0;

    if (v20)
    {
      v25 = [MAAutoAssetSelector alloc];
      assetType = [autoAssetDescriptor assetType];
      assetSpecifier = [autoAssetDescriptor assetSpecifier];
      v73 = [v25 initForAssetType:assetType withAssetSpecifier:assetSpecifier];
    }

    else
    {
      v21 = [MAAutoAssetSelector alloc];
      assetType = [autoAssetDescriptor assetType];
      assetSpecifier = [autoAssetDescriptor assetSpecifier];
      assetVersion2 = [autoAssetDescriptor assetVersion];
      v73 = [v21 initForAssetType:assetType withAssetSpecifier:assetSpecifier matchingAssetVersion:assetVersion2];
    }

    assetType2 = [autoAssetDescriptor assetType];
    assetId = [autoAssetDescriptor assetId];
    v71 = getAutoLocalUrlFromTypeAndIdWithPurpose(assetType2, assetId, 2, @"auto");

    v28 = objc_alloc_init(MAAutoAssetNotifications);
    [v28 setNewerVersionDiscovered:1];
    [v28 setDownloadPending:1];
    v72 = v28;
    v29 = [MAAutoAssetStatus alloc];
    LOBYTE(assetId) = objc_opt_respondsToSelector();

    if (assetId)
    {
      v68 = [MAAutoAssetStatus alloc];
      metadata = [autoAssetDescriptor metadata];
      metadata2 = [autoAssetDescriptor metadata];
      downloadingUserInitiated = [(MADAutoAssetJob *)self downloadingUserInitiated];
      patchingAttempted = [autoAssetDescriptor patchingAttempted];
      stagedPriorToAvailable = [autoAssetDescriptor stagedPriorToAvailable];
      stagedFromOSVersion = [autoAssetDescriptor stagedFromOSVersion];
      stagedFromBuildVersion = [autoAssetDescriptor stagedFromBuildVersion];
      patchingAttemptError = [autoAssetDescriptor patchingAttemptError];
      BYTE1(v67) = stagedPriorToAvailable;
      LOBYTE(v67) = patchingAttempted;
      LOBYTE(v65) = 0;
      v38 = [v68 initWithAssetSelector:v73 withNotifications:v72 withAvailableForUseAttributes:metadata withNewerVersionAttributes:metadata2 withNeverBeenLocked:1 withDownloadUserInitiated:downloadingUserInitiated withDownloadProgress:0 withDownloadedNetworkBytes:-1 withDownloadedFilesystemBytes:-1 withDownloadedAsPatch:v65 withPatchedFromBaseSelector:0 withPatchedFromBaseFilesystemBytes:-1 withPatchingAttempted:v67 withStagedPriorToAvailable:stagedFromOSVersion withStagedFromOSVersion:stagedFromBuildVersion withStagedFromBuildVersion:0 withCurrentLockUsage:0 withAvailableForUseError:patchingAttemptError withPatchingAttemptError:0 withNewerVersionError:?];

      v39 = metadata;
    }

    else
    {
      v40 = [MAAutoAssetStatus alloc];
      v41 = objc_opt_respondsToSelector();

      if (v41)
      {
        v69 = [MAAutoAssetStatus alloc];
        metadata3 = [autoAssetDescriptor metadata];
        metadata4 = [autoAssetDescriptor metadata];
        downloadingUserInitiated2 = [(MADAutoAssetJob *)self downloadingUserInitiated];
        patchingAttempted2 = [autoAssetDescriptor patchingAttempted];
        stagedPriorToAvailable2 = [autoAssetDescriptor stagedPriorToAvailable];
        stagedFromOSVersion2 = [autoAssetDescriptor stagedFromOSVersion];
        stagedFromBuildVersion2 = [autoAssetDescriptor stagedFromBuildVersion];
        patchingAttemptError2 = [autoAssetDescriptor patchingAttemptError];
        BYTE1(v66) = stagedPriorToAvailable2;
        LOBYTE(v66) = patchingAttempted2;
        LOBYTE(v64) = 0;
        v38 = [v69 initWithAssetSelector:v73 withNotifications:v72 withAvailableForUseAttributes:metadata3 withNewerVersionAttributes:metadata4 withDownloadUserInitiated:downloadingUserInitiated2 withDownloadProgress:0 withDownloadedNetworkBytes:-1 withDownloadedFilesystemBytes:-1 withDownloadedAsPatch:v64 withPatchedFromBaseSelector:0 withPatchedFromBaseFilesystemBytes:-1 withPatchingAttempted:v66 withStagedPriorToAvailable:stagedFromOSVersion2 withStagedFromOSVersion:stagedFromBuildVersion2 withStagedFromBuildVersion:0 withCurrentLockUsage:0 withAvailableForUseError:patchingAttemptError2 withPatchingAttemptError:0 withNewerVersionError:?];

        v39 = metadata3;
      }

      else
      {
        v39 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          autoJobName3 = [(MADAutoAssetJob *)self autoJobName];
          _updateLatestSummary2 = [(MADAutoAssetJob *)self _updateLatestSummary];
          *buf = 138543618;
          v77 = autoJobName3;
          v78 = 2114;
          v79 = _updateLatestSummary2;
          _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "%{public}@ {DecideStartupDownloading} [MA_BRAIN_SHIM_PROTOCOL_SUPPORT] unable to create current status for job\nJOB-SUMMARY:%{public}@", buf, 0x16u);
        }

        v38 = 0;
      }
    }

    v52 = [MAAutoAssetInfoInstance alloc];
    v53 = [[NSUUID alloc] initWithUUIDString:@"AAAAAAAA-BBBB-CCCC-DDDDD-EEEEEEEEEEEE"];
    metadata5 = [v52 initForClientName:@"client-name (previously-in-flight)" withProcessName:@"client-process-name (previously-in-flight)" withProcessID:1 usingAssetSelector:v73 associatingFrameworkUUID:v53];
    [(MADAutoAssetJob *)self setAutoAssetInstance:metadata5];

    autoAssetInstance = [(MADAutoAssetJob *)self autoAssetInstance];
    [(MADAutoAssetJob *)self setActiveInstance:autoAssetInstance];

    v56 = [[MAAutoAssetInfoDesire alloc] initWithDesiredCategory:0 forClientAssetPolicy:0 reasonDesired:0 withCheckWaitTimeout:-2 withLockWaitTimeout:-2 desiringProgress:0];
    [(MADAutoAssetJob *)self setActiveDesire:v56];

    if (v38)
    {
      v57 = [MAAutoAssetInfoFound alloc];
      metadata5 = [autoAssetDescriptor metadata];
      v58 = [v57 initForSelector:v73 withLocalContentURL:v71 withAssetAttributes:metadata5 reportingStatus:v38];
    }

    else
    {
      v58 = 0;
    }

    [(MADAutoAssetJob *)self setActiveFound:v58];
    if (v38)
    {
    }

    autoAssetUUID = [(MADAutoAssetJob *)self autoAssetUUID];
    [(MADAutoAssetJob *)self setCheckUUIDBasePortion:autoAssetUUID];

    autoAssetUUID2 = [(MADAutoAssetJob *)self autoAssetUUID];
    [(MADAutoAssetJob *)self setCheckUUID:autoAssetUUID2];

    newAssetDownloadOptions = [(MADAutoAssetJob *)self newAssetDownloadOptions];
    [(MADAutoAssetJob *)self setAssetDownloadOptions:newAssetDownloadOptions];

    if ([autoAssetDescriptor isPatch])
    {
      [(MADAutoAssetJob *)self setFoundNewerPatch:autoAssetDescriptor];
    }

    else
    {
      [(MADAutoAssetJob *)self setFoundNewerFull:autoAssetDescriptor];
    }

    [(MADAutoAssetJob *)self setNewerFoundAssetDescriptor:autoAssetDescriptor];
    [(MADAutoAssetJob *)self setDownloadingAssetDescriptor:autoAssetDescriptor];
    [(MADAutoAssetJob *)self setCurrentStatus:v38];
    [(MADAutoAssetJob *)self setProgressReportPhase:0];

    goto LABEL_31;
  }

  [(MADAutoAssetJob *)self statusChange:@"DecideStartupDownloading" catalogAnomaly:6103 forReason:@"action DecideStartupDownloading requires set-job specific logic"];
LABEL_32:
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_AddTaskScheduler:(id)scheduler error:(id *)error
{
  schedulerCopy = scheduler;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AddTaskScheduler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self setSchedulerInvolved:1, v10.opaque[0], v10.opaque[1]];
  [(MADAutoAssetJob *)self addToActiveJobTasks:schedulerCopy];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_MergeNeeds:(id)needs error:(id *)error
{
  needsCopy = needs;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeNeeds", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeNeeds" forJobEvent:needsCopy, v10.opaque[0], v10.opaque[1]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_MergeNeedsDecideLookup:(id)lookup error:(id *)error
{
  lookupCopy = lookup;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeNeedsDecideLookup", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeNeedsDecideLookup" forJobEvent:lookupCopy, v10.opaque[0], v10.opaque[1]];
  [(MADAutoAssetJob *)self replyToJobsWhenCatalogDownloaded:@"MergeNeedsDecideLookup" discoveredNewer:1];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_MergeNeedsDecideBoost:(id)boost error:(id *)error
{
  boostCopy = boost;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeNeedsDecideBoost", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v12);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeNeedsDecideBoost" forJobEvent:boostCopy, v12.opaque[0], v12.opaque[1]];
  [(MADAutoAssetJob *)self replyToJobsWhenCatalogDownloaded:@"MergeNeedsDecideBoost" discoveredNewer:1];
  v9 = [(MADAutoAssetJob *)self decideFollowupBoost:@"MergeNeedsDecideBoost" forJobEvent:boostCopy boostEvent:@"BoostConfig" noBoostEvent:0];
  if (v9)
  {
    autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
    [autoJobFSM2 followupEvent:v9 withInfo:boostCopy];
  }

  os_activity_scope_leave(&v12);
  return 0;
}

- (int64_t)action_MergeNeedsDecideLookupBoost:(id)boost error:(id *)error
{
  boostCopy = boost;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeNeedsDecideLookupBoost", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v12);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeNeedsDecideLookupBoost" forJobEvent:boostCopy, v12.opaque[0], v12.opaque[1]];
  [(MADAutoAssetJob *)self replyToJobsWhenCatalogDownloaded:@"MergeNeedsDecideLookupBoost" discoveredNewer:1];
  v9 = [(MADAutoAssetJob *)self decideFollowupBoost:@"MergeNeedsDecideLookupBoost" forJobEvent:boostCopy boostEvent:@"BoostConfig" noBoostEvent:0];
  if (v9)
  {
    autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
    [autoJobFSM2 followupEvent:v9 withInfo:boostCopy];
  }

  os_activity_scope_leave(&v12);
  return 0;
}

- (int64_t)action_MergeAddLock:(id)lock error:(id *)error
{
  lockCopy = lock;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeAddLock", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeAddLock" forJobEvent:lockCopy, v10.opaque[0], v10.opaque[1]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_MergeContinueLock:(id)lock error:(id *)error
{
  lockCopy = lock;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeContinueLock", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeContinueLock" forJobEvent:lockCopy, v10.opaque[0], v10.opaque[1]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_MergeRemoveLock:(id)lock error:(id *)error
{
  lockCopy = lock;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeRemoveLock", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeRemoveLock" forJobEvent:lockCopy, v10.opaque[0], v10.opaque[1]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_MergeRemoveLockDecideInterest:(id)interest error:(id *)error
{
  interestCopy = interest;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeRemoveLockDecideInterest", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeRemoveLockDecideInterest" forJobEvent:interestCopy, v11.opaque[0], v11.opaque[1]];
  autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
  [autoJobFSM2 followupEvent:@"HaveInterest" withInfo:interestCopy];

  os_activity_scope_leave(&v11);
  return 0;
}

- (int64_t)action_MergeAddLockDecideBoost:(id)boost error:(id *)error
{
  boostCopy = boost;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeAddLockDecideBoost", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v12);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeAddLockDecideBoost" forJobEvent:boostCopy, v12.opaque[0], v12.opaque[1]];
  v9 = [(MADAutoAssetJob *)self decideFollowupBoost:@"MergeAddLockDecideBoost" forJobEvent:boostCopy boostEvent:@"BoostConfig" noBoostEvent:0];
  if (v9)
  {
    autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
    [autoJobFSM2 followupEvent:v9 withInfo:boostCopy];
  }

  os_activity_scope_leave(&v12);
  return 0;
}

- (int64_t)action_MergeContinueLockDecideBoost:(id)boost error:(id *)error
{
  boostCopy = boost;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeContinueLockDecideBoost", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v12);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeContinueLockDecideBoost" forJobEvent:boostCopy, v12.opaque[0], v12.opaque[1]];
  v9 = [(MADAutoAssetJob *)self decideFollowupBoost:@"MergeContinueLockDecideBoost" forJobEvent:boostCopy boostEvent:@"BoostConfig" noBoostEvent:0];
  if (v9)
  {
    autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
    [autoJobFSM2 followupEvent:v9 withInfo:boostCopy];
  }

  os_activity_scope_leave(&v12);
  return 0;
}

- (int64_t)action_AdoptRegister:(id)register error:(id *)error
{
  registerCopy = register;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AdoptRegister", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"AdoptRegister" forJobEvent:registerCopy, v10.opaque[0], v10.opaque[1]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_RemoveClient:(id)client error:(id *)error
{
  v4 = [(MADAutoAssetJob *)self autoJobFSM:client];
  extendedStateQueue = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  v6 = _os_activity_create(&dword_0, "MADJob:RemoveClient", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &v8);

  os_activity_scope_leave(&v8);
  return 0;
}

- (int64_t)action_RemoveClientDecideInterest:(id)interest error:(id *)error
{
  v4 = [(MADAutoAssetJob *)self autoJobFSM:interest];
  extendedStateQueue = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  v6 = _os_activity_create(&dword_0, "MADJob:RemoveClientDecideInterest", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &v8);

  os_activity_scope_leave(&v8);
  return 0;
}

- (int64_t)action_ReportCatalogDecideFound:(id)found error:(id *)error
{
  foundCopy = found;
  selfCopy = self;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = _os_activity_create(&dword_0, "MADJob:ReportCatalogDecideFound", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);

  autoAssetCatalog = [foundCopy autoAssetCatalog];
  stagerJob = [(MADAutoAssetJob *)selfCopy stagerJob];
  if (autoAssetCatalog)
  {
    v9 = 0;
  }

  else
  {
    v9 = stagerJob;
  }

  if (v9 == 1)
  {
    stagerJobAutoAssetCatalog = [(MADAutoAssetJob *)selfCopy stagerJobAutoAssetCatalog];
    v11 = stagerJobAutoAssetCatalog == 0;

    if (v11)
    {
      v81 = [NSString alloc];
      autoJobName = [(MADAutoAssetJob *)selfCopy autoJobName];
      v83 = [v81 initWithFormat:@"%@ | {ReportCatalogDecideFound} expecting catalog provided by auto-asset-stager yet no catalog provided", autoJobName];
      [(MADAutoAssetJob *)selfCopy statusChange:@"ReportCatalogDecideFound" catalogAnomaly:6102 forReason:v83];

      goto LABEL_75;
    }

    autoAssetCatalog = [(MADAutoAssetJob *)selfCopy stagerJobAutoAssetCatalog];
  }

  else
  {
    [(MADAutoAssetJob *)selfCopy releaseLookupGrant];
  }

  if (!autoAssetCatalog)
  {
LABEL_75:
    v84 = [NSString alloc];
    autoAssetCatalog = [(MADAutoAssetJob *)selfCopy autoJobName];
    v184 = [v84 initWithFormat:@"%@ | {ReportCatalogDecideFound} successful catalog download yet no catalog provided", autoAssetCatalog];
    [(MADAutoAssetJob *)selfCopy statusChange:@"ReportCatalogDecideFound" catalogAnomaly:6102 forReason:v184];
    v12 = @"CatalogFoundNoNewer";
    goto LABEL_91;
  }

  if ([(MADAutoAssetJob *)selfCopy autoAssetSetJob])
  {
    if ([(MADAutoAssetJob *)selfCopy stagerJob])
    {
      [(MADAutoAssetJob *)selfCopy setStagerJobAutoAssetCatalog:autoAssetCatalog];
      v12 = @"SetCatalogDoneDetermine";
    }

    else
    {
      if (([foundCopy catalogFromLookupCache] & 1) == 0)
      {
        setConfiguration = [(MADAutoAssetJob *)selfCopy setConfiguration];
        [MADAutoAssetLookupCache recordLookupResult:autoAssetCatalog forSetConfiguration:setConfiguration forStaging:0];
      }

      setConfiguration2 = [(MADAutoAssetJob *)selfCopy setConfiguration];
      v88 = setConfiguration2 == 0;

      if (v88)
      {
        v99 = [NSString alloc];
        autoJobName2 = [(MADAutoAssetJob *)selfCopy autoJobName];
        assignedSetDescriptor = [v99 initWithFormat:@"%@ | {ReportCatalogDecideFound} set-job without set-configuration", autoJobName2];
        [(MADAutoAssetJob *)selfCopy statusChange:@"ReportCatalogDecideFound" catalogAnomaly:6102 forReason:assignedSetDescriptor];
      }

      else
      {
        [(MADAutoAssetJob *)selfCopy setHaveReceivedLookupResponse:1];
        autoJobName2 = [(MADAutoAssetJob *)selfCopy setConfiguration];
        assignedSetDescriptor = [(MADAutoAssetJob *)selfCopy assignedSetDescriptor];
        [MADAutoAssetControlManager autoAssetJobSetLookupResponseReceived:autoJobName2 forAssignedSetDescriptor:assignedSetDescriptor withCatalogLookupResponse:autoAssetCatalog];
      }

      v12 = [(MADAutoAssetJob *)selfCopy reportSetCatalogDecideFound:autoAssetCatalog fromLocation:@"ReportCatalogDecideFound"];
    }

    goto LABEL_90;
  }

  if (([foundCopy catalogFromLookupCache] & 1) == 0 && !-[MADAutoAssetJob stagerJob](selfCopy, "stagerJob"))
  {
    autoAssetSelector = [(MADAutoAssetJob *)selfCopy autoAssetSelector];
    [MADAutoAssetLookupCache recordLookupResult:autoAssetCatalog forSelector:autoAssetSelector forStaging:0];
  }

  v180 = [autoAssetCatalog safeStringForKey:@"AssetType"];
  v179 = [autoAssetCatalog safeObjectForKey:@"Assets" ofClass:objc_opt_class()];
  if (!v180 || !v179)
  {
    v91 = [NSString alloc];
    *(&v181 + 1) = [(MADAutoAssetJob *)selfCopy autoJobName];
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
    [(MADAutoAssetJob *)selfCopy statusChange:@"ReportCatalogDecideFound" catalogAnomaly:6102 forReason:v94];

    goto LABEL_86;
  }

  autoAssetSelector2 = [(MADAutoAssetJob *)selfCopy autoAssetSelector];
  assetType = [autoAssetSelector2 assetType];
  v16 = [SUCore stringIsEqual:v180 to:assetType];

  if ((v16 & 1) == 0)
  {
    v95 = [NSString alloc];
    *(&v181 + 1) = [(MADAutoAssetJob *)selfCopy autoJobName];
    autoAssetSelector3 = [(MADAutoAssetJob *)selfCopy autoAssetSelector];
    assetType2 = [autoAssetSelector3 assetType];
    v98 = [v95 initWithFormat:@"%@ | auto-asset catalog for wrong assetType | catalog:%@, expecting:%@", *(&v181 + 1), v180, assetType2];
    [(MADAutoAssetJob *)selfCopy statusChange:@"ReportCatalogDecideFound" catalogAnomaly:6108 forReason:v98];

LABEL_86:
    v12 = @"CatalogFoundNoNewer";
    goto LABEL_87;
  }

  if (![v179 count])
  {
    latestInstalledAssetVersion = [(MADAutoAssetJob *)selfCopy latestInstalledAssetVersion];
    v105 = latestInstalledAssetVersion == 0;

    if (v105)
    {
      *(&v181 + 1) = _MADLog(@"AutoJob");
      if (os_log_type_enabled(*(&v181 + 1), OS_LOG_TYPE_DEFAULT))
      {
        autoJobName3 = [(MADAutoAssetJob *)selfCopy autoJobName];
        *buf = 138543362;
        v199 = autoJobName3;
        _os_log_impl(&dword_0, *(&v181 + 1), OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} no assets provided (and no latest-installed asset-version)", buf, 0xCu);
      }
    }

    else
    {
      *(&v181 + 1) = [(MADAutoAssetJob *)selfCopy autoAssetSelector];
      assetVersion = [*(&v181 + 1) assetVersion];
      if (assetVersion)
      {
        v107 = 6110;
      }

      else
      {
        v107 = 6205;
      }

      v108 = [NSString alloc];
      autoJobName4 = [(MADAutoAssetJob *)selfCopy autoJobName];
      latestInstalledAssetVersion2 = [(MADAutoAssetJob *)selfCopy latestInstalledAssetVersion];
      v110 = [v108 initWithFormat:@"%@ | successful catalog download yet no assets in catalog | have installed asset-version:%@ | REVOKED", autoJobName4, latestInstalledAssetVersion2];
      [(MADAutoAssetJob *)selfCopy statusChange:@"ReportCatalogDecideFound" catalogFailure:v107 forReason:v110];
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
        autoAssetSelector4 = [(MADAutoAssetJob *)selfCopy autoAssetSelector];
        assetType3 = [autoAssetSelector4 assetType];
        v192 = 0;
        v27 = [(MADAutoAssetDescriptor *)v24 initForAssetType:assetType3 fromMetadata:v19 invalidReasons:&v192];
        v21 = v192;

        if (!v27)
        {
          v34 = [[NSString alloc] initWithFormat:@"%@ | {ReportCatalogDecideFound} auto-asset metadata considered invalid | %@", @"ReportCatalogDecideFound", v21];
          [(MADAutoAssetJob *)selfCopy trackAnomaly:6108 forReason:v34];
          goto LABEL_69;
        }

        autoAssetSelector5 = [(MADAutoAssetJob *)selfCopy autoAssetSelector];
        assetVersion2 = [autoAssetSelector5 assetVersion];
        if (assetVersion2)
        {
          autoAssetSelector6 = [(MADAutoAssetJob *)selfCopy autoAssetSelector];
          assetVersion3 = [autoAssetSelector6 assetVersion];
          assetVersion4 = [v27 assetVersion];
          v33 = [SUCore stringIsEqual:assetVersion3 to:assetVersion4];

          if ((v33 & 1) == 0)
          {
            v34 = _MADLog(@"AutoJob");
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              autoJobName5 = [(MADAutoAssetJob *)selfCopy autoJobName];
              autoAssetSelector7 = [(MADAutoAssetJob *)selfCopy autoAssetSelector];
              assetVersion5 = [autoAssetSelector7 assetVersion];
              assetVersion6 = [v27 assetVersion];
              selectorName = [v27 selectorName];
              *buf = 138544130;
              v199 = autoJobName5;
              v200 = 2114;
              v201 = assetVersion5;
              v202 = 2114;
              v203 = assetVersion6;
              v204 = 2114;
              v205 = selectorName;
              _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} filtering out asset (version mismatch) | [version]required:%{public}@ != metadata:%{public}@ | filtered:%{public}@", buf, 0x2Au);
            }

            goto LABEL_69;
          }
        }

        else
        {
        }

        autoAssetSelector8 = [(MADAutoAssetJob *)selfCopy autoAssetSelector];
        assetSpecifier = [autoAssetSelector8 assetSpecifier];
        assetSpecifier2 = [v27 assetSpecifier];
        v43 = [SUCore stringIsEqual:assetSpecifier to:assetSpecifier2];

        if (v43)
        {
          if ([v27 isPatch])
          {
            baseForPatch = [(MADAutoAssetJob *)selfCopy baseForPatch];
            v45 = baseForPatch == 0;

            if (v45)
            {
              v34 = _MADLog(@"AutoJob");
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                autoJobName6 = [(MADAutoAssetJob *)selfCopy autoJobName];
                selectorName2 = [v27 selectorName];
                *buf = 138543618;
                v199 = autoJobName6;
                v200 = 2114;
                v201 = selectorName2;
                _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} filtering out asset (patch when no base for patch) | filtered:%{public}@", buf, 0x16u);
              }

              goto LABEL_69;
            }

            assetFormat = [v27 assetFormat];
            v47 = [v182 containsObject:assetFormat];

            if (!v47)
            {
              v34 = _MADLog(@"AutoJob");
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                autoJobName7 = [(MADAutoAssetJob *)selfCopy autoJobName];
                selectorName3 = [v27 selectorName];
                *buf = 138543618;
                v199 = autoJobName7;
                v200 = 2114;
                v201 = selectorName3;
                _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} filtering out asset (patch of unsupported format) | filtered:%{public}@", buf, 0x16u);
              }

              goto LABEL_69;
            }

            if (*(&v181 + 1))
            {
              if ([(MADAutoAssetJob *)selfCopy isMorePreferredFormat:v27 comparedTo:?])
              {
                v48 = _MADLog(@"AutoJob");
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                {
                  autoJobName8 = [(MADAutoAssetJob *)selfCopy autoJobName];
                  selectorName4 = [v27 selectorName];
                  *buf = 138543618;
                  v199 = autoJobName8;
                  v200 = 2114;
                  v201 = selectorName4;
                  _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} more preferred patch provided | now considering:%{public}@", buf, 0x16u);
                }

                v51 = v27;
                goto LABEL_66;
              }

              v34 = _MADLog(@"AutoJob");
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                autoJobName9 = [(MADAutoAssetJob *)selfCopy autoJobName];
                selectorName5 = [v27 selectorName];
                *buf = 138543618;
                v199 = autoJobName9;
                v200 = 2114;
                v201 = selectorName5;
                _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} filtering out asset (additional patch of less-preferred format) | filtered:%{public}@", buf, 0x16u);
              }

LABEL_69:
            }

            else
            {
              v75 = _MADLog(@"AutoJob");
              if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
              {
                autoJobName10 = [(MADAutoAssetJob *)selfCopy autoJobName];
                selectorName6 = [v27 selectorName];
                *buf = 138543618;
                v199 = autoJobName10;
                v200 = 2114;
                v201 = selectorName6;
                _os_log_impl(&dword_0, v75, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} patch provided | considering:%{public}@", buf, 0x16u);
              }

              v78 = v27;
LABEL_66:
              v178 = -[MADAutoAssetJob preferenceAsIfRampOrUse:](selfCopy, "preferenceAsIfRampOrUse:", [v27 isRamped]);
              *(&v181 + 1) = v27;
            }
          }

          else
          {
            assetFormat2 = [v27 assetFormat];
            v58 = [v182 containsObject:assetFormat2];

            if (!v58)
            {
              v34 = _MADLog(@"AutoJob");
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                autoJobName11 = [(MADAutoAssetJob *)selfCopy autoJobName];
                selectorName7 = [v27 selectorName];
                *buf = 138543618;
                v199 = autoJobName11;
                v200 = 2114;
                v201 = selectorName7;
                _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} filtering out asset (full of unsupported format) | filtered:%{public}@", buf, 0x16u);
              }

              goto LABEL_69;
            }

            if (v181)
            {
              if (![(MADAutoAssetJob *)selfCopy isMorePreferredFormat:v27 comparedTo:?])
              {
                v34 = _MADLog(@"AutoJob");
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                {
                  autoJobName12 = [(MADAutoAssetJob *)selfCopy autoJobName];
                  selectorName8 = [v27 selectorName];
                  *buf = 138543618;
                  v199 = autoJobName12;
                  v200 = 2114;
                  v201 = selectorName8;
                  _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} filtering out asset (additional full of less-preferred format) | filtered:%{public}@", buf, 0x16u);
                }

                goto LABEL_69;
              }

              v59 = _MADLog(@"AutoJob");
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
              {
                autoJobName13 = [(MADAutoAssetJob *)selfCopy autoJobName];
                selectorName9 = [v27 selectorName];
                *buf = 138543618;
                v199 = autoJobName13;
                v200 = 2114;
                v201 = selectorName9;
                _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} more preferred full provided | now considering:%{public}@", buf, 0x16u);
              }

              v62 = v27;
            }

            else
            {
              v69 = _MADLog(@"AutoJob");
              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
              {
                autoJobName14 = [(MADAutoAssetJob *)selfCopy autoJobName];
                selectorName10 = [v27 selectorName];
                *buf = 138543618;
                v199 = autoJobName14;
                v200 = 2114;
                v201 = selectorName10;
                _os_log_impl(&dword_0, v69, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} full provided | considering:%{public}@", buf, 0x16u);
              }

              v72 = v27;
            }

            v178 = -[MADAutoAssetJob preferenceAsIfRampOrUse:](selfCopy, "preferenceAsIfRampOrUse:", [v27 isRamped]);
            *&v181 = v27;
          }

          goto LABEL_71;
        }

        v34 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          autoJobName15 = [(MADAutoAssetJob *)selfCopy autoJobName];
          autoAssetSelector9 = [(MADAutoAssetJob *)selfCopy autoAssetSelector];
          assetSpecifier3 = [autoAssetSelector9 assetSpecifier];
          assetSpecifier4 = [v27 assetSpecifier];
          selectorName11 = [v27 selectorName];
          *buf = 138544130;
          v199 = autoJobName15;
          v200 = 2114;
          v201 = assetSpecifier3;
          v202 = 2114;
          v203 = assetSpecifier4;
          v204 = 2114;
          v205 = selectorName11;
          _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} filtering out asset (specifier mismatch) | [specifier]required:%{public}@ != metadata:%{public}@ | filtered:%{public}@", buf, 0x2Au);
        }

        goto LABEL_69;
      }

      v21 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        autoJobName16 = [(MADAutoAssetJob *)selfCopy autoJobName];
        safeSummary = [v19 safeSummary];
        *buf = 138543618;
        v199 = autoJobName16;
        v200 = 2114;
        v201 = safeSummary;
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
    autoJobName17 = [(MADAutoAssetJob *)selfCopy autoJobName];
    v113 = [v112 initWithFormat:@"%@ | {ReportCatalogDecideFound} successful catalog download yet no available patch or full asset found", autoJobName17];
    [(MADAutoAssetJob *)selfCopy statusChange:@"ReportCatalogDecideFound" catalogFailure:6110 forReason:v113];

    goto LABEL_100;
  }

  if (*(&v181 + 1))
  {
    if (v181)
    {
      assetVersion7 = [*(&v181 + 1) assetVersion];
      assetVersion8 = [v181 assetVersion];
      v118 = [SUCore stringIsEqual:assetVersion7 to:assetVersion8];

      if ((v118 & 1) == 0)
      {
        v123 = [NSString alloc];
        autoJobName17 = [(MADAutoAssetJob *)selfCopy autoJobName];
        assetVersion9 = [*(&v181 + 1) assetVersion];
        assetVersion10 = [v181 assetVersion];
        v125 = [v123 initWithFormat:@"%@ | {ReportCatalogDecideFound} auto-asset patch and full entries for different versions | patch:%@, full:%@", autoJobName17, assetVersion9, assetVersion10];
        [(MADAutoAssetJob *)selfCopy statusChange:@"ReportCatalogDecideFound" catalogAnomaly:6109 forReason:v125];

        goto LABEL_100;
      }
    }
  }

  if ((v178 & 1) == 0)
  {
    goto LABEL_119;
  }

  if ([(MADAutoAssetJob *)selfCopy determiningAssetContent]&& ![(MADAutoAssetJob *)selfCopy checkingAssetContent]&& ![(MADAutoAssetJob *)selfCopy lockingAssetContent])
  {
    goto LABEL_110;
  }

  autoAssetSelector10 = [(MADAutoAssetJob *)selfCopy autoAssetSelector];
  assetVersion11 = [autoAssetSelector10 assetVersion];
  if (assetVersion11)
  {

    goto LABEL_110;
  }

  autoAssetSelector11 = [(MADAutoAssetJob *)selfCopy autoAssetSelector];
  assetVersion12 = [autoAssetSelector11 assetVersion];
  if (assetVersion12)
  {

    goto LABEL_119;
  }

  onFilesystemByVersion = [(MADAutoAssetJob *)selfCopy onFilesystemByVersion];
  v177 = [onFilesystemByVersion count] == 0;

  if (!v177)
  {
LABEL_110:
    v115 = _MADLog(@"AutoJob");
    if (!os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"CatalogFoundNoNewer";
      goto LABEL_146;
    }

    autoJobName18 = [(MADAutoAssetJob *)selfCopy autoJobName];
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
    v199 = autoJobName18;
    v200 = 2114;
    v201 = v175;
    autoJobName17 = v115;
    _os_log_impl(&dword_0, v115, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} postponing[RAMPED] | selector:%{public}@", buf, 0x16u);

LABEL_100:
    v12 = @"CatalogFoundNoNewer";
    v115 = autoJobName17;
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
  autoAssetSelector12 = [(MADAutoAssetJob *)selfCopy autoAssetSelector];
  assetType4 = [autoAssetSelector12 assetType];
  autoAssetSelector13 = [(MADAutoAssetJob *)selfCopy autoAssetSelector];
  assetSpecifier5 = [autoAssetSelector13 assetSpecifier];
  autoAssetSelector14 = [(MADAutoAssetJob *)selfCopy autoAssetSelector];
  downloadDecryptionKey = [autoAssetSelector14 downloadDecryptionKey];
  v136 = [v129 initForAssetType:assetType4 withAssetSpecifier:assetSpecifier5 matchingAssetVersion:v187 usingDecryptionKey:downloadDecryptionKey];
  [(MADAutoAssetJob *)selfCopy setResultSelector:v136];

  v137 = [MAAutoAssetInfoInstance alloc];
  activeInstance = [(MADAutoAssetJob *)selfCopy activeInstance];
  autoAssetClientName = [activeInstance autoAssetClientName];
  activeInstance2 = [(MADAutoAssetJob *)selfCopy activeInstance];
  clientProcessName = [activeInstance2 clientProcessName];
  activeInstance3 = [(MADAutoAssetJob *)selfCopy activeInstance];
  clientProcessID = [activeInstance3 clientProcessID];
  resultSelector = [(MADAutoAssetJob *)selfCopy resultSelector];
  activeInstance4 = [(MADAutoAssetJob *)selfCopy activeInstance];
  frameworkInstanceUUID = [activeInstance4 frameworkInstanceUUID];
  v146 = [v137 initForClientName:autoAssetClientName withProcessName:clientProcessName withProcessID:clientProcessID usingAssetSelector:resultSelector associatingFrameworkUUID:frameworkInstanceUUID];
  [(MADAutoAssetJob *)selfCopy setResultInstance:v146];

  [(MADAutoAssetJob *)selfCopy setFoundNewerPatch:*(&v181 + 1)];
  foundNewerPatch = [(MADAutoAssetJob *)selfCopy foundNewerPatch];
  LOBYTE(frameworkInstanceUUID) = foundNewerPatch == 0;

  if ((frameworkInstanceUUID & 1) == 0)
  {
    autoAssetSelector15 = [(MADAutoAssetJob *)selfCopy autoAssetSelector];
    assetVersion13 = [autoAssetSelector15 assetVersion];
    v150 = assetVersion13 == 0;

    if (v150)
    {
      foundNewerPatch2 = [(MADAutoAssetJob *)selfCopy foundNewerPatch];
      [foundNewerPatch2 setFoundByLookupWithoutAssetVersion:1];
    }

    foundNewerPatch3 = [(MADAutoAssetJob *)selfCopy foundNewerPatch];
    [foundNewerPatch3 setIsPatch:1];

    v153 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
    {
      autoJobName19 = [(MADAutoAssetJob *)selfCopy autoJobName];
      selectorName12 = [*(&v181 + 1) selectorName];
      *buf = 138543618;
      v199 = autoJobName19;
      v200 = 2114;
      v201 = selectorName12;
      _os_log_impl(&dword_0, v153, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} found newer patch | selector:%{public}@", buf, 0x16u);
    }
  }

  [(MADAutoAssetJob *)selfCopy setFoundNewerFull:v181];
  foundNewerFull = [(MADAutoAssetJob *)selfCopy foundNewerFull];
  v157 = foundNewerFull == 0;

  if (!v157)
  {
    autoAssetSelector16 = [(MADAutoAssetJob *)selfCopy autoAssetSelector];
    assetVersion14 = [autoAssetSelector16 assetVersion];
    v160 = assetVersion14 == 0;

    if (v160)
    {
      foundNewerFull2 = [(MADAutoAssetJob *)selfCopy foundNewerFull];
      [foundNewerFull2 setFoundByLookupWithoutAssetVersion:1];
    }

    foundNewerFull3 = [(MADAutoAssetJob *)selfCopy foundNewerFull];
    [foundNewerFull3 setIsPatch:0];

    v163 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
    {
      autoJobName20 = [(MADAutoAssetJob *)selfCopy autoJobName];
      selectorName13 = [v181 selectorName];
      *buf = 138543618;
      v199 = autoJobName20;
      v200 = 2114;
      v201 = selectorName13;
      _os_log_impl(&dword_0, v163, OS_LOG_TYPE_DEFAULT, "%{public}@ | {ReportCatalogDecideFound} found newer full | selector:%{public}@", buf, 0x16u);
    }
  }

  [(MADAutoAssetJob *)selfCopy latchWhetherDownloadingUserInitiated];
  [(MADAutoAssetJob *)selfCopy refreshFoundToManager];
  if ([(MADAutoAssetJob *)selfCopy isFoundAlreadyOnFilesystem:&v191])
  {
    if (v191 == 1)
    {
      [(MADAutoAssetJob *)selfCopy statusChangeCatalogFoundNewer:@"ReportCatalogDecideFound"];
      if (-[MADAutoAssetJob stagerJob](selfCopy, "stagerJob") || (-[MADAutoAssetJob tryPersonalizeDescriptors](selfCopy, "tryPersonalizeDescriptors"), v166 = objc_claimAutoreleasedReturnValue(), v167 = [v166 count] == 0, v166, v167))
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
      [(MADAutoAssetJob *)selfCopy statusChangeCatalogFoundSame:@"ReportCatalogDecideFound"];
      v12 = @"CatalogFoundSameDownloaded";
    }
  }

  else
  {
    [(MADAutoAssetJob *)selfCopy statusChangeCatalogFoundNewer:@"ReportCatalogDecideFound"];
    v12 = @"CatalogFoundNewer";
    if (![(MADAutoAssetJob *)selfCopy stagerJob])
    {
      resultSelector2 = [(MADAutoAssetJob *)selfCopy resultSelector];
      v169 = [MADAutoAssetControlManager autoAssetJob:selfCopy bondWithStagerDownloading:resultSelector2];
      [(MADAutoAssetJob *)selfCopy setBondedWithJob:v169];

      bondedWithJob = [(MADAutoAssetJob *)selfCopy bondedWithJob];
      LODWORD(resultSelector2) = bondedWithJob == 0;

      if (!resultSelector2)
      {
        v12 = @"CatalogFoundNoNewer";
      }

      autoAssetSelector17 = [(MADAutoAssetJob *)selfCopy autoAssetSelector];
      assetType5 = [autoAssetSelector17 assetType];
      autoAssetSelector18 = [(MADAutoAssetJob *)selfCopy autoAssetSelector];
      assetSpecifier6 = [autoAssetSelector18 assetSpecifier];
      [MADAutoAssetControlManager postNotificationName:@"ASSET_VERSION_DISCOVERED" forAssetType:assetType5 forAssetSpecifier:assetSpecifier6 fromModule:@"AUTO-JOB" fromLocation:@"ReportCatalogDecideFound"];
    }
  }

  v115 = v187;
LABEL_146:

LABEL_87:
LABEL_90:
  v184 = [(MADAutoAssetJob *)selfCopy autoJobFSM];
  v100 = [MADAutoAssetJobParam alloc];
  _updateLatestSummary = [(MADAutoAssetJob *)selfCopy _updateLatestSummary];
  v102 = [(MADAutoAssetJobParam *)v100 initWithSafeSummary:_updateLatestSummary];
  [v184 followupEvent:v12 withInfo:v102];

LABEL_91:
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_DecideDownloadOrPostpone:(id)postpone error:(id *)error
{
  postponeCopy = postpone;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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

    newAssetDownloadOptions = [(MADAutoAssetJob *)self newAssetDownloadOptions];
    [(MADAutoAssetJob *)self setAssetDownloadOptions:newAssetDownloadOptions];

    foundNewerPatch = [(MADAutoAssetJob *)self foundNewerPatch];

    if (foundNewerPatch)
    {
      foundNewerPatch2 = [(MADAutoAssetJob *)self foundNewerPatch];
      [(MADAutoAssetJob *)self setNewerFoundAssetDescriptor:foundNewerPatch2];

      foundNewerPatch3 = [(MADAutoAssetJob *)self foundNewerPatch];
      [(MADAutoAssetJob *)self setDownloadingAssetDescriptor:foundNewerPatch3];

      [(MADAutoAssetJob *)self latchWhetherDownloadingUserInitiated];
      autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
      assetVersion = [autoAssetSelector assetVersion];

      if (assetVersion)
      {
        [(MADAutoAssetJob *)self setReportingProgress:1];
        v15 = @"DownloadPatch";
        goto LABEL_11;
      }
    }

    else
    {
      foundNewerFull = [(MADAutoAssetJob *)self foundNewerFull];
      [(MADAutoAssetJob *)self setNewerFoundAssetDescriptor:foundNewerFull];

      foundNewerFull2 = [(MADAutoAssetJob *)self foundNewerFull];
      [(MADAutoAssetJob *)self setDownloadingAssetDescriptor:foundNewerFull2];

      [(MADAutoAssetJob *)self latchWhetherDownloadingUserInitiated];
      autoAssetSelector2 = [(MADAutoAssetJob *)self autoAssetSelector];
      assetVersion2 = [autoAssetSelector2 assetVersion];

      if (assetVersion2)
      {
        [(MADAutoAssetJob *)self setReportingProgress:1];
        v15 = @"DownloadFull";
        goto LABEL_11;
      }
    }

    v15 = @"PersistDownload";
LABEL_11:
    downloadingAssetDescriptor = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    metadata = [downloadingAssetDescriptor metadata];
    currentStatus = [(MADAutoAssetJob *)self currentStatus];
    [currentStatus setNewerVersionAttributes:metadata];

    v23 = [MAAutoAssetInfoFound alloc];
    resultSelector = [(MADAutoAssetJob *)self resultSelector];
    downloadingAssetDescriptor2 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    metadata2 = [downloadingAssetDescriptor2 metadata];
    currentStatus2 = [(MADAutoAssetJob *)self currentStatus];
    v28 = [v23 initForSelector:resultSelector withLocalContentURL:0 withAssetAttributes:metadata2 reportingStatus:currentStatus2];
    [(MADAutoAssetJob *)self setResultFound:v28];

    if ([(MADAutoAssetJob *)self downloadingUserInitiated])
    {
      downloadingAssetDescriptor3 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
      [downloadingAssetDescriptor3 setDownloadUserInitiated:1];
    }

    stagerJobAutoAssetCatalog = [(MADAutoAssetJob *)self stagerJobAutoAssetCatalog];

    if (!stagerJobAutoAssetCatalog)
    {
      [(MADAutoAssetJob *)self replyToJobsWhenCatalogDownloaded:@"DecideDownloadOrPostpone" discoveredNewer:1];
    }

    if (![(MADAutoAssetJob *)self stagerJob]|| [(MADAutoAssetJob *)self stagerJobDownloadContent])
    {
      if ([(MADAutoAssetJob *)self stagerJob]|| [(MADAutoAssetJob *)self anyJobInterestedInContent])
      {
        goto LABEL_23;
      }

      getCurrentJobTask = [(MADAutoAssetJob *)self getCurrentJobTask];
      if (getCurrentJobTask)
      {
        v32 = [NSString alloc];
        progressReportPhaseName = [(MADAutoAssetJob *)self progressReportPhaseName];
        summary = [getCurrentJobTask summary];
        v35 = [v32 initWithFormat:@"{%@} current job (after catalog lookup has been serviced) | phase:%@ | currentJob:%@", @"DecideDownloadOrPostpone", progressReportPhaseName, summary];
        [(MADAutoAssetJob *)self trackAnomaly:6108 forReason:v35];
      }
    }

    v15 = @"PostponedDownload";
LABEL_23:
    autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
    v37 = [MADAutoAssetJobParam alloc];
    _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
    v39 = [(MADAutoAssetJobParam *)v37 initWithSafeSummary:_updateLatestSummary];
    [autoJobFSM2 followupEvent:v15 withInfo:v39];

    goto LABEL_24;
  }

  [(MADAutoAssetJob *)self statusChange:@"DecideDownloadOrPostpone" catalogAnomaly:6103 forReason:@"action DecideDownloadOrPostpone should never execute for set-job"];
LABEL_24:
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_RequestSpecificPersisted:(id)persisted error:(id *)error
{
  persistedCopy = persisted;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:RequestSpecificPersisted", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v15);

  v9 = [(MADAutoAssetJob *)self resultSelector:v15.opaque[0]];
  autoAssetUUID = [(MADAutoAssetJob *)self autoAssetUUID];
  autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
  downloadingAssetDescriptor = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
  baseForPatch = [(MADAutoAssetJob *)self baseForPatch];
  [MADAutoAssetControlManager autoAssetJobReadyToDownload:v9 withAutoAssetUUID:autoAssetUUID fromAutoAssetJob:self withOriginalSelector:autoAssetSelector downloadingDescriptor:downloadingAssetDescriptor baseForPatchDescriptor:baseForPatch];

  os_activity_scope_leave(&v15);
  return 0;
}

- (int64_t)action_PersistedDecideDownload:(id)download error:(id *)error
{
  downloadCopy = download;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v19.opaque[0] = 0;
  v19.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:PersistedDecideDownload", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v19);

  v9 = [(MADAutoAssetJob *)self newAssetDownloadOptions:v19.opaque[0]];
  [(MADAutoAssetJob *)self setAssetDownloadOptions:v9];

  [(MADAutoAssetJob *)self setReportingProgress:1];
  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    foundNewerPatch = [(MADAutoAssetJob *)self foundNewerPatch];

    v11 = @"SetDownloadPatch";
    v12 = @"SetDownloadFull";
  }

  else
  {
    foundNewerPatch = [(MADAutoAssetJob *)self foundNewerPatch];

    v11 = @"DownloadPatch";
    v12 = @"DownloadFull";
  }

  if (foundNewerPatch)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  [(MADAutoAssetJob *)self setReportingProgress:1];
  autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
  v15 = [MADAutoAssetJobParam alloc];
  _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
  v17 = [(MADAutoAssetJobParam *)v15 initWithSafeSummary:_updateLatestSummary];
  [autoJobFSM2 followupEvent:v13 withInfo:v17];

  os_activity_scope_leave(&v19);
  return 0;
}

- (int64_t)action_DownloadNewestPatch:(id)patch error:(id *)error
{
  patchCopy = patch;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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
    baseForPatch = [(MADAutoAssetJob *)self baseForPatch];
    v11 = [MADAutoAssetControlManager localAssetURLForDescriptor:baseForPatch fromLocation:@"DownloadNewestPatch"];

    assetDownloadOptions = [(MADAutoAssetJob *)self assetDownloadOptions];
    [assetDownloadOptions setSourceDirectory:v11];

    if (![(MADAutoAssetJob *)self autoAssetSetJob])
    {
      currentStatus = [(MADAutoAssetJob *)self currentStatus];
      [currentStatus setPatchingAttempted:1];
    }

    v14 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      autoJobName = [(MADAutoAssetJob *)self autoJobName];
      *buf = 138543618;
      v21 = autoJobName;
      v22 = 2114;
      v23 = v11;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ | patching | localURLForBaseImage:%{public}@", buf, 0x16u);
    }
  }

  [(MADAutoAssetJob *)self statusChangeStartingAssetDownload:@"DownloadNewestPatch" downloadingPatch:1];
  foundNewerPatch = [(MADAutoAssetJob *)self foundNewerPatch];
  baseForPatch2 = [(MADAutoAssetJob *)self baseForPatch];
  [(MADAutoAssetJob *)self requestDownloadManagerAssetDownload:@"DownloadNewestPatch" forDescriptor:foundNewerPatch withBaseForPatch:baseForPatch2];

  os_activity_scope_leave(&v19);
  return 0;
}

- (int64_t)action_DownloadNewestFull:(id)full error:(id *)error
{
  fullCopy = full;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:DownloadNewestFull", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  [(MADAutoAssetJob *)self statusChangeStartingAssetDownload:@"DownloadNewestFull" downloadingPatch:0, v11.opaque[0], v11.opaque[1]];
  foundNewerFull = [(MADAutoAssetJob *)self foundNewerFull];
  [(MADAutoAssetJob *)self requestDownloadManagerAssetDownload:@"DownloadNewestFull" forDescriptor:foundNewerFull withBaseForPatch:0];

  os_activity_scope_leave(&v11);
  return 0;
}

- (int64_t)action_DownloadSuccessDecideMore:(id)more error:(id *)error
{
  moreCopy = more;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:DownloadSuccessDecideMore", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v15);

  v9 = [MADAutoAssetJobParam alloc];
  v10 = [(MADAutoAssetJob *)self _updateLatestSummary:v15.opaque[0]];
  v11 = [(MADAutoAssetJobParam *)v9 initWithSafeSummary:v10];

  v12 = [(MADAutoAssetJob *)self decideFollowupMoreAssetsToDownload:@"DownloadSuccessDecideMore" withEventInfo:v11];
  autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
  [autoJobFSM2 followupEvent:v12 withInfo:v11];

  os_activity_scope_leave(&v15);
  return 0;
}

- (int64_t)action_FailedPatchDecideTryFull:(id)full error:(id *)error
{
  fullCopy = full;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v38.opaque[0] = 0;
  v38.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:FailedPatchDecideTryFull", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v38);

  if ([(MADAutoAssetJob *)self autoAssetSetJob:v38.opaque[0]])
  {
    assignedSetDescriptor = [(MADAutoAssetJob *)self assignedSetDescriptor];
    clientDomainName = [assignedSetDescriptor clientDomainName];
    assignedSetDescriptor2 = [(MADAutoAssetJob *)self assignedSetDescriptor];
    assetSetIdentifier = [assignedSetDescriptor2 assetSetIdentifier];
    assignedSetDescriptor3 = [(MADAutoAssetJob *)self assignedSetDescriptor];
    discoveredAtomicInstance = [assignedSetDescriptor3 discoveredAtomicInstance];
    finishedError = [fullCopy finishedError];
    [MADAutoAssetHistory recordFailedOperation:505 fromLayer:2 forClientDomainName:clientDomainName forAssetSetIdentifier:assetSetIdentifier forAtomicInstance:discoveredAtomicInstance failingWithError:finishedError];
  }

  else
  {
    assignedSetDescriptor = [(MADAutoAssetJob *)self autoAssetSelector];
    clientDomainName = [fullCopy finishedError];
    [MADAutoAssetHistory recordFailedOperation:505 fromLayer:2 forAssetID:@"UNKNOWN" withSelector:assignedSetDescriptor failingWithError:clientDomainName];
  }

  foundNewerFull = [(MADAutoAssetJob *)self foundNewerFull];

  if (foundNewerFull)
  {
    finishedError2 = [fullCopy finishedError];
    currentStatus = [(MADAutoAssetJob *)self currentStatus];
    [currentStatus setPatchingAttemptError:finishedError2];

    downloadingAssetDescriptor = [(MADAutoAssetJob *)self downloadingAssetDescriptor];

    if (downloadingAssetDescriptor)
    {
      downloadingAssetDescriptor2 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
      downloadUserInitiated = [downloadingAssetDescriptor2 downloadUserInitiated];
      foundNewerFull2 = [(MADAutoAssetJob *)self foundNewerFull];
      [foundNewerFull2 setDownloadUserInitiated:downloadUserInitiated];

      foundNewerFull3 = [(MADAutoAssetJob *)self foundNewerFull];
      [foundNewerFull3 setPatchingAttempted:1];

      downloadingAssetDescriptor3 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
      patchingAttemptError = [downloadingAssetDescriptor3 patchingAttemptError];
      foundNewerFull4 = [(MADAutoAssetJob *)self foundNewerFull];
      [foundNewerFull4 setPatchingAttemptError:patchingAttemptError];
    }

    else
    {
      [(MADAutoAssetJob *)self trackAnomaly:6111 forReason:@"{FailedPatchDecideTryFull} failed attempt to download patch yet downloadingAssetDescriptor:nil"];
    }

    foundNewerFull5 = [(MADAutoAssetJob *)self foundNewerFull];
    patchingAttemptError2 = [foundNewerFull5 patchingAttemptError];

    if (!patchingAttemptError2)
    {
      currentStatus2 = [(MADAutoAssetJob *)self currentStatus];
      patchingAttemptError3 = [currentStatus2 patchingAttemptError];
      foundNewerFull6 = [(MADAutoAssetJob *)self foundNewerFull];
      [foundNewerFull6 setPatchingAttemptError:patchingAttemptError3];
    }

    v27 = @"DownloadFailureTryFull";
  }

  else
  {
    v27 = @"DownloadFailureNoFull";
  }

  [(MADAutoAssetJob *)self setDownloadingAssetDescriptor:0];
  autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
  v34 = [MADAutoAssetJobParam alloc];
  _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
  v36 = [(MADAutoAssetJobParam *)v34 initWithSafeSummary:_updateLatestSummary];
  [autoJobFSM2 followupEvent:v27 withInfo:v36];

  os_activity_scope_leave(&v38);
  return 0;
}

- (int64_t)action_BoostConfig:(id)config error:(id *)error
{
  configCopy = config;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:BoostConfig", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  v9 = [(MADAutoAssetJob *)self downloadingAssetDescriptor:v11.opaque[0]];
  [(MADAutoAssetJob *)self requestDownloadManagerConfigDownload:@"BoostConfig" forDescriptor:v9];

  os_activity_scope_leave(&v11);
  return 0;
}

- (int64_t)action_BoostAndRequestLookupGrant:(id)grant error:(id *)error
{
  grantCopy = grant;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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

- (int64_t)action_DownloadSuccessDecidePersonalize:(id)personalize error:(id *)error
{
  personalizeCopy = personalize;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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

  autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
  [autoJobFSM2 followupEvent:v12 withInfo:v11];

  os_activity_scope_leave(&v17);
  return 0;
}

- (int64_t)action_SecureBundlePersonalize:(id)personalize error:(id *)error
{
  personalizeCopy = personalize;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SecureBundlePersonalize", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  autoAssetUUID = [(MADAutoAssetJob *)self autoAssetUUID];
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
        autoJobName = [(MADAutoAssetJob *)self autoJobName];
        downloadingAssetDescriptor = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
        selectorName = [downloadingAssetDescriptor selectorName];
        *buf = 138543618;
        v26 = autoJobName;
        v27 = 2114;
        v28 = selectorName;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-SECURE][AUTO-PERSONALIZATION][SET-JOB-PRE] attempting pre-personalization | selector:%{public}@", buf, 0x16u);
      }
    }

    else
    {
      v10 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
        downloadingAssetDescriptor2 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
        selectorName2 = [downloadingAssetDescriptor2 selectorName];
        *buf = 138543618;
        v26 = autoJobName2;
        v27 = 2114;
        v28 = selectorName2;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-SECURE][AUTO-PERSONALIZATION][SIGLETON-JOB] attempting pre-personalization | selector:%{public}@", buf, 0x16u);
      }
    }

    autoJobName3 = [(MADAutoAssetJob *)self autoJobName];
    downloadingAssetDescriptor3 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    autoAssetSetJob = [(MADAutoAssetJob *)self autoAssetSetJob];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __56__MADAutoAssetJob_action_SecureBundlePersonalize_error___block_invoke;
    v21[3] = &unk_4B46A8;
    v22 = autoAssetUUID;
    selfCopy = self;
    [MADAutoAssetSecure personalizeDownloaded:autoJobName3 personalizingDescriptor:downloadingAssetDescriptor3 allowingNetwork:1 committingPersonalization:autoAssetSetJob ^ 1 completion:v21];
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

- (int64_t)action_PersonalizeSuccessDecideMore:(id)more error:(id *)error
{
  moreCopy = more;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v31.opaque[0] = 0;
  v31.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:PersonalizeSuccessDecideMore", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v31);

  [(MADAutoAssetJob *)self setTryPersonalizeSuccess:1, v31.opaque[0], v31.opaque[1]];
  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v9 = [MAAutoAssetSelector alloc];
    downloadingAssetDescriptor = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    assetType = [downloadingAssetDescriptor assetType];
    downloadingAssetDescriptor2 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    assetSpecifier = [downloadingAssetDescriptor2 assetSpecifier];
    downloadingAssetDescriptor3 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    assetVersion = [downloadingAssetDescriptor3 assetVersion];
    v16 = [v9 initForAssetType:assetType withAssetSpecifier:assetSpecifier matchingAssetVersion:assetVersion];

    if (v16)
    {
      v17 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        autoJobName = [(MADAutoAssetJob *)self autoJobName];
        downloadingAssetDescriptor4 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
        selectorName = [downloadingAssetDescriptor4 selectorName];
        *buf = 138543618;
        v33 = autoJobName;
        v34 = 2114;
        v35 = selectorName;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-SECURE][AUTO-PERSONALIZATION][SET-JOB-PRE] auto-asset pre-personalization SUCCESS | selector:%{public}@", buf, 0x16u);
      }

      prePersonalizedSelectors = [(MADAutoAssetJob *)self prePersonalizedSelectors];
      [prePersonalizedSelectors addObject:v16];
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
      autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
      downloadingAssetDescriptor5 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
      selectorName2 = [downloadingAssetDescriptor5 selectorName];
      *buf = 138543618;
      v33 = autoJobName2;
      v34 = 2114;
      v35 = selectorName2;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-SECURE][AUTO-PERSONALIZATION] auto-asset personalization SUCCESS | selector:%{public}@", buf, 0x16u);
    }
  }

  v25 = [MADAutoAssetJobParam alloc];
  _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
  v27 = [(MADAutoAssetJobParam *)v25 initWithSafeSummary:_updateLatestSummary];

  v28 = [(MADAutoAssetJob *)self decideFollowupMoreAssetsToDownload:@"PersonalizeSuccessDecideMore" withEventInfo:v27];
  autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
  [autoJobFSM2 followupEvent:v28 withInfo:v27];

  os_activity_scope_leave(&v31);
  return 0;
}

- (int64_t)action_PersonalizeFailureDecideMore:(id)more error:(id *)error
{
  moreCopy = more;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v19.opaque[0] = 0;
  v19.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:PersonalizeFailureDecideMore", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v19);

  [(MADAutoAssetJob *)self setTryPersonalizeFailed:1, v19.opaque[0], v19.opaque[1]];
  v9 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    autoJobName = [(MADAutoAssetJob *)self autoJobName];
    tryPersonalizeFailed = [(MADAutoAssetJob *)self tryPersonalizeFailed];
    v12 = @"N";
    if (tryPersonalizeFailed)
    {
      v12 = @"Y";
    }

    *buf = 138543618;
    v21 = autoJobName;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-SECURE][AUTO-PERSONALIZATION] {PersonalizeFailureDecideMore} will not make any additional personalization attempts | tryPersonalizeFailed:%@", buf, 0x16u);
  }

  v13 = [MADAutoAssetJobParam alloc];
  _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
  v15 = [(MADAutoAssetJobParam *)v13 initWithSafeSummary:_updateLatestSummary];

  v16 = [(MADAutoAssetJob *)self decideFollowupMoreAssetsToDownload:@"PersonalizeFailureDecideMore" withEventInfo:v15];
  autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
  [autoJobFSM2 followupEvent:v16 withInfo:v15];

  os_activity_scope_leave(&v19);
  return 0;
}

- (int64_t)action_PersonalizeHealSuccessDecideMore:(id)more error:(id *)error
{
  moreCopy = more;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v22.opaque[0] = 0;
  v22.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:PersonalizeHealSuccessDecideMore", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v22);

  [(MADAutoAssetJob *)self setTryPersonalizeSuccess:1, v22.opaque[0], v22.opaque[1]];
  if (![(MADAutoAssetJob *)self stagerJob]&& [(MADAutoAssetJob *)self autoAssetSetJob]&& ([(MADAutoAssetJob *)self tryPersonalizeSelector], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = [MADAutoAssetJobParam alloc];
    _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
    v12 = [(MADAutoAssetJobParam *)v10 initWithSafeSummary:_updateLatestSummary];

    prePersonalizedSelectors = [(MADAutoAssetJob *)self prePersonalizedSelectors];
    tryPersonalizeSelector = [(MADAutoAssetJob *)self tryPersonalizeSelector];
    [prePersonalizedSelectors addObject:tryPersonalizeSelector];

    [(MADAutoAssetJob *)self setTryPersonalizeSelector:0];
    tryPersonalizeDescriptors = [(MADAutoAssetJob *)self tryPersonalizeDescriptors];
    v16 = [tryPersonalizeDescriptors count];

    if (v16)
    {
      v17 = @"HealPersonalizeMore";
    }

    else
    {
      tryPersonalizeFailed = [(MADAutoAssetJob *)self tryPersonalizeFailed];
      v20 = @"HealPersonalizeDoneAvail";
      if (tryPersonalizeFailed)
      {
        v20 = @"HealPersonalizeDoneNotAvail";
      }

      v17 = v20;
    }

    autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
    [autoJobFSM2 followupEvent:v17 withInfo:v12];
  }

  else
  {
    [(MADAutoAssetJob *)self trackAnomaly:6103 forReason:@"{PersonalizeHealSuccessDecideMore} healing is only valid for set-job"];
  }

  os_activity_scope_leave(&v22);

  return 0;
}

- (int64_t)action_PersonalizeHealFailureDecideMore:(id)more error:(id *)error
{
  moreCopy = more;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v18.opaque[0] = 0;
  v18.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:PersonalizeHealFailureDecideMore", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v18);

  [(MADAutoAssetJob *)self setTryPersonalizeFailed:1, v18.opaque[0], v18.opaque[1]];
  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v9 = [MADAutoAssetJobParam alloc];
    _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
    v11 = [(MADAutoAssetJobParam *)v9 initWithSafeSummary:_updateLatestSummary];

    [(MADAutoAssetJob *)self setTryPersonalizeSelector:0];
    [(MADAutoAssetJob *)self setTryPersonalizeFailed:1];
    v12 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      autoJobName = [(MADAutoAssetJob *)self autoJobName];
      tryPersonalizeFailed = [(MADAutoAssetJob *)self tryPersonalizeFailed];
      v15 = @"N";
      if (tryPersonalizeFailed)
      {
        v15 = @"Y";
      }

      *buf = 138543618;
      v20 = autoJobName;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-SECURE][AUTO-PERSONALIZATION] {PersonalizeHealFailureDecideMore} will not make any additional personalization attempts | tryPersonalizeFailed:%@", buf, 0x16u);
    }

    autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
    [autoJobFSM2 followupEvent:@"HealPersonalizeDoneNotAvail" withInfo:v11];
  }

  else
  {
    [(MADAutoAssetJob *)self trackAnomaly:6103 forReason:@"{PersonalizeHealFailureDecideMore} healing is only valid for set-job"];
  }

  os_activity_scope_leave(&v18);

  return 0;
}

- (int64_t)action_LookupSuccessContinue:(id)continue error:(id *)error
{
  continueCopy = continue;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:LookupSuccessContinue", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v14);

  [(MADAutoAssetJob *)self releaseLookupGrant:v14.opaque[0]];
  if (![(MADAutoAssetJob *)self autoAssetSetJob]|| [(MADAutoAssetJob *)self autoAssetSetJob]&& ![(MADAutoAssetJob *)self setCheckAwaitingDownload])
  {
    [(MADAutoAssetJob *)self replyToJobsWhenCatalogDownloaded:@"LookupSuccessContinue" discoveredNewer:0];
  }

  autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
  v10 = [MADAutoAssetJobParam alloc];
  _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
  v12 = [(MADAutoAssetJobParam *)v10 initWithSafeSummary:_updateLatestSummary];
  [autoJobFSM2 followupEvent:@"LookupContinue" withInfo:v12];

  os_activity_scope_leave(&v14);
  return 0;
}

- (int64_t)action_LookupNoNewerContinue:(id)continue error:(id *)error
{
  continueCopy = continue;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:LookupNoNewerContinue", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  [(MADAutoAssetJob *)self releaseLookupGrant];
  errorCodeForNoNewerContentFound = [(MADAutoAssetJob *)self errorCodeForNoNewerContentFound];
  v10 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"LookupNoNewerContinue"];
  v11 = [MAAutoAssetError buildError:errorCodeForNoNewerContentFound fromOperation:v10 underlyingError:0 withDescription:@"no [newer] version (matching auto-asset-selector) was found"];

  [(MADAutoAssetJob *)self replyToJobsWhenLookupFailed:@"LookupFailedContinue" withLookupError:v11];
  autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
  v13 = [MADAutoAssetJobParam alloc];
  _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
  v15 = [(MADAutoAssetJobParam *)v13 initWithSafeSummary:_updateLatestSummary];
  [autoJobFSM2 followupEvent:@"LookupContinue" withInfo:v15];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_LookupRevokedContinue:(id)continue error:(id *)error
{
  continueCopy = continue;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:LookupRevokedContinue", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  [(MADAutoAssetJob *)self releaseLookupGrant];
  v9 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"LookupRevokedContinue"];
  v10 = [MAAutoAssetError buildError:6203 fromOperation:v9 underlyingError:0 withDescription:@"previously available version (matching auto-asset-selector) has been revoked"];

  autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
  [MADAutoAssetHistory recordFailedOperation:506 fromLayer:2 forAssetID:@"UNKNOWN" withSelector:autoAssetSelector failingWithError:v10];

  [(MADAutoAssetJob *)self replyToJobsWhenLookupFailed:@"LookupRevokedContinue" withLookupError:v10];
  autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
  v13 = [MADAutoAssetJobParam alloc];
  _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
  v15 = [(MADAutoAssetJobParam *)v13 initWithSafeSummary:_updateLatestSummary];
  [autoJobFSM2 followupEvent:@"LookupContinue" withInfo:v15];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_LookupFailedContinue:(id)continue error:(id *)error
{
  continueCopy = continue;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:LookupFailedContinue", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v15);

  [(MADAutoAssetJob *)self releaseLookupGrant:v15.opaque[0]];
  finishedError = [continueCopy finishedError];
  [(MADAutoAssetJob *)self replyToJobsWhenLookupFailed:@"LookupFailedContinue" withLookupError:finishedError];

  autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
  v11 = [MADAutoAssetJobParam alloc];
  _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
  v13 = [(MADAutoAssetJobParam *)v11 initWithSafeSummary:_updateLatestSummary];
  [autoJobFSM2 followupEvent:@"LookupContinue" withInfo:v13];

  os_activity_scope_leave(&v15);
  return 0;
}

- (int64_t)action_JobSuccessPatchedAwaiting:(id)awaiting error:(id *)error
{
  awaitingCopy = awaiting;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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
    [(MADAutoAssetJob *)self foundAndDownloaded:@"JobSuccessPatchedAwaiting" forJobParam:awaitingCopy wasPatched:1];
    [(MADAutoAssetJob *)self replyToJobsWhenContentDownloaded:@"JobSuccessPatchedAwaiting"];
  }

  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_JobSuccessDownloadedAwaiting:(id)awaiting error:(id *)error
{
  awaitingCopy = awaiting;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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
    [(MADAutoAssetJob *)self foundAndDownloaded:@"JobSuccessDownloadedAwaiting" forJobParam:awaitingCopy wasPatched:0];
    [(MADAutoAssetJob *)self replyToJobsWhenContentDownloaded:@"JobSuccessDownloadedAwaiting"];
  }

  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_JobFailedAwaiting:(id)awaiting error:(id *)error
{
  awaitingCopy = awaiting;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v34.opaque[0] = 0;
  v34.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:JobFailedAwaiting", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v34);

  if (![(MADAutoAssetJob *)self autoAssetSetJob:v34.opaque[0]])
  {
    autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
    finishedError = [awaitingCopy finishedError];
    [MADAutoAssetHistory recordFailedOperation:504 fromLayer:2 forAssetID:@"UNKNOWN" withSelector:autoAssetSelector failingWithError:finishedError];
    goto LABEL_5;
  }

  assignedSetDescriptor = [(MADAutoAssetJob *)self assignedSetDescriptor];
  clientDomainName = [assignedSetDescriptor clientDomainName];
  assignedSetDescriptor2 = [(MADAutoAssetJob *)self assignedSetDescriptor];
  assetSetIdentifier = [assignedSetDescriptor2 assetSetIdentifier];
  assignedSetDescriptor3 = [(MADAutoAssetJob *)self assignedSetDescriptor];
  discoveredAtomicInstance = [assignedSetDescriptor3 discoveredAtomicInstance];
  finishedError2 = [awaitingCopy finishedError];
  [MADAutoAssetHistory recordFailedOperation:504 fromLayer:2 forClientDomainName:clientDomainName forAssetSetIdentifier:assetSetIdentifier forAtomicInstance:discoveredAtomicInstance failingWithError:finishedError2];

  if (+[MAAIRBEventReporter isAvailable])
  {
    v16 = [MAAIRBMobileAssetOperationMetadata alloc];
    v17 = [MADAutoAssetHistoryTracker operationName:504];
    autoAssetSelector = [(MAAIRBMobileAssetOperationMetadata *)v16 initWithCode:504 name:v17];

    v19 = [MAAIRBMobileAssetAtomicInstance alloc];
    v20 = [MAAIRBMobileAssetAssetSet alloc];
    assignedSetDescriptor4 = [(MADAutoAssetJob *)self assignedSetDescriptor];
    assetSetIdentifier2 = [assignedSetDescriptor4 assetSetIdentifier];
    v23 = [(MAAIRBMobileAssetAssetSet *)v20 initWithAssetSetIdentifier:assetSetIdentifier2];
    assignedSetDescriptor5 = [(MADAutoAssetJob *)self assignedSetDescriptor];
    discoveredAtomicInstance2 = [assignedSetDescriptor5 discoveredAtomicInstance];
    finishedError = [(MAAIRBMobileAssetAtomicInstance *)v19 initWithAssetSet:v23 atomicInstanceId:discoveredAtomicInstance2];

    v27 = [MAAIRBAppleIntelligenceAssetDeliveryEventType typeAtomicInstance:autoAssetSelector atomicInstance:finishedError assetCount:0];
    v28 = [MAAIRBAppleIntelligenceAssetDeliveryEvent alloc];
    finishedError3 = [awaitingCopy finishedError];
    v35 = finishedError3;
    v30 = [NSArray arrayWithObjects:&v35 count:1];
    v31 = [(MAAIRBAppleIntelligenceAssetDeliveryEvent *)v28 initWithErrors:v30 type:v27];

    [MAAIRBEventReporter emitAppleIntelligenceEvent:v31];
LABEL_5:
  }

  finishedError4 = [awaitingCopy finishedError];
  [(MADAutoAssetJob *)self replyToJobsWhenLookupFailed:@"JobFailedAwaiting" withLookupError:finishedError4];

  os_activity_scope_leave(&v34);
  return 0;
}

- (int64_t)action_JobSuccessFoundSameSchedule:(id)schedule error:(id *)error
{
  scheduleCopy = schedule;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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
      autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
      assetVersion = [autoAssetSelector assetVersion];
      if (assetVersion)
      {
        autoAssetSelector2 = [(MADAutoAssetJob *)self autoAssetSelector];
        assetVersion2 = [autoAssetSelector2 assetVersion];
        latestInstalledOnFilesystem = [(MADAutoAssetJob *)self installedOnFilesystemWithVersion:assetVersion2 fromLocation:@"JobSuccessFoundSameSchedule"];
      }

      else
      {
        latestInstalledOnFilesystem = [(MADAutoAssetJob *)self latestInstalledOnFilesystem];
      }

      [(MADAutoAssetJob *)self updateResultPropertiesWithDescriptor:latestInstalledOnFilesystem];
      v17 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        autoJobName = [(MADAutoAssetJob *)self autoJobName];
        selectorName = [latestInstalledOnFilesystem selectorName];
        *buf = 138543618;
        v23 = autoJobName;
        v24 = 2114;
        v25 = selectorName;
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

      latestInstalledOnFilesystem = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"JobSuccessFoundSameSchedule"];
      v16 = [MAAutoAssetError buildError:v15 fromOperation:latestInstalledOnFilesystem underlyingError:0 withDescription:@"same version found that has already been downloaded to the filesystem"];
    }

    [(MADAutoAssetJob *)self doneWithAllJobs:@"JobSuccessFoundSameSchedule" withLookupError:v16];
    [(MADAutoAssetJob *)self autoAssetJobFinished:@"JobSuccessFoundSameSchedule" forJobFinishedReason:@"FOUND_SAME"];
  }

  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_JobSuccessFoundPromoted:(id)promoted error:(id *)error
{
  promotedCopy = promoted;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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
    currentStatus = [(MADAutoAssetJob *)self currentStatus];
    -[MADAutoAssetJob foundAndDownloaded:forJobParam:wasPatched:](self, "foundAndDownloaded:forJobParam:wasPatched:", @"JobSuccessFoundPromoted", promotedCopy, [currentStatus downloadedAsPatch]);

    [(MADAutoAssetJob *)self doneWithAllJobs:@"JobSuccessFoundPromoted"];
    [(MADAutoAssetJob *)self autoAssetJobFinished:@"JobSuccessFoundPromoted" forJobFinishedReason:@"SUCCESS(IMMEDIATE_PROMOTED)"];
  }

  os_activity_scope_leave(&v11);

  return 0;
}

- (int64_t)action_JobSuccessPatchedSchedule:(id)schedule error:(id *)error
{
  scheduleCopy = schedule;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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
    currentStatus = [(MADAutoAssetJob *)self currentStatus];
    -[MADAutoAssetJob foundAndDownloaded:forJobParam:wasPatched:](self, "foundAndDownloaded:forJobParam:wasPatched:", @"JobSuccessPatchedSchedule", scheduleCopy, [currentStatus downloadedAsPatch]);

    [(MADAutoAssetJob *)self doneWithAllJobs:@"JobSuccessPatchedSchedule"];
    [(MADAutoAssetJob *)self autoAssetJobFinished:@"JobSuccessPatchedSchedule" forJobFinishedReason:@"SUCCESS(PATCHED)"];
  }

  os_activity_scope_leave(&v11);

  return 0;
}

- (int64_t)action_JobSuccessDownloadedSchedule:(id)schedule error:(id *)error
{
  scheduleCopy = schedule;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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
    currentStatus = [(MADAutoAssetJob *)self currentStatus];
    -[MADAutoAssetJob foundAndDownloaded:forJobParam:wasPatched:](self, "foundAndDownloaded:forJobParam:wasPatched:", @"JobSuccessDownloadedSchedule", scheduleCopy, [currentStatus downloadedAsPatch]);

    [(MADAutoAssetJob *)self doneWithAllJobs:@"JobSuccessDownloadedSchedule"];
    [(MADAutoAssetJob *)self autoAssetJobFinished:@"JobSuccessDownloadedSchedule" forJobFinishedReason:@"SUCCESS(DOWNLOADED)"];
  }

  os_activity_scope_leave(&v11);

  return 0;
}

- (int64_t)action_JobSuccessAlreadyDownloaded:(id)downloaded error:(id *)error
{
  downloadedCopy = downloaded;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:JobSuccessAlreadyDownloaded", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self doneWithAllJobs:@"JobSuccessAlreadyDownloaded", v10.opaque[0], v10.opaque[1]];
  [(MADAutoAssetJob *)self autoAssetJobFinished:@"JobSuccessAlreadyDownloaded" forJobFinishedReason:@"SUCCESS(ALREADY_DOWNLOADED)"];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_JobSuccessPersonalized:(id)personalized error:(id *)error
{
  personalizedCopy = personalized;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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
    currentStatus = [(MADAutoAssetJob *)self currentStatus];
    -[MADAutoAssetJob foundAndDownloaded:forJobParam:wasPatched:](self, "foundAndDownloaded:forJobParam:wasPatched:", @"JobSuccessPersonalized", personalizedCopy, [currentStatus downloadedAsPatch]);

    [(MADAutoAssetJob *)self doneWithAllJobs:@"JobSuccessPersonalized"];
    [(MADAutoAssetJob *)self autoAssetJobFinished:@"JobSuccessPersonalized" forJobFinishedReason:@"SUCCESS(PATCHED)"];
  }

  os_activity_scope_leave(&v11);

  return 0;
}

- (int64_t)action_JobNoNewerSchedule:(id)schedule error:(id *)error
{
  scheduleCopy = schedule;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:JobNoNewerSchedule", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  errorCodeForNoNewerContentFound = [(MADAutoAssetJob *)self errorCodeForNoNewerContentFound];
  v10 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"JobNoNewerSchedule"];
  v11 = [MAAutoAssetError buildError:errorCodeForNoNewerContentFound fromOperation:v10 underlyingError:0 withDescription:@"no [newer] version (matching auto-asset-selector) was found"];

  [(MADAutoAssetJob *)self doneWithAllJobs:@"JobNoNewerSchedule" withLookupError:v11];
  [(MADAutoAssetJob *)self autoAssetJobFinished:@"JobNoNewerSchedule" forJobFinishedReason:@"NO_NEWER"];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_JobRevokedSchedule:(id)schedule error:(id *)error
{
  scheduleCopy = schedule;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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

- (int64_t)action_JobFailedSchedule:(id)schedule error:(id *)error
{
  scheduleCopy = schedule;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:JobFailedSchedule", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v15);

  finishedError = [scheduleCopy finishedError];
  [(MADAutoAssetJob *)self determineWhetherNetworkConnectivityError:finishedError];

  autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
  finishedError2 = [scheduleCopy finishedError];
  [MADAutoAssetHistory recordFailedOperation:504 fromLayer:2 forAssetID:@"UNKNOWN" withSelector:autoAssetSelector failingWithError:finishedError2];

  finishedError3 = [scheduleCopy finishedError];
  [(MADAutoAssetJob *)self doneWithAllJobs:@"JobFailedSchedule" withLookupError:finishedError3];

  finishedError4 = [scheduleCopy finishedError];
  [(MADAutoAssetJob *)self autoAssetJobFinished:@"JobFailedSchedule" forJobFinishedReason:@"FAILED" failingWithError:finishedError4];

  os_activity_scope_leave(&v15);
  return 0;
}

- (int64_t)action_ReleaseGrantJobFailedSchedule:(id)schedule error:(id *)error
{
  scheduleCopy = schedule;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v16.opaque[0] = 0;
  v16.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:ReleaseGrantJobFailedSchedule", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v16);

  [(MADAutoAssetJob *)self releaseLookupGrant:v16.opaque[0]];
  finishedError = [scheduleCopy finishedError];
  [(MADAutoAssetJob *)self reportIfSetPallasResponseReceived:finishedError];

  finishedError2 = [scheduleCopy finishedError];
  [(MADAutoAssetJob *)self determineWhetherNetworkConnectivityError:finishedError2];

  autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
  finishedError3 = [scheduleCopy finishedError];
  [MADAutoAssetHistory recordFailedOperation:504 fromLayer:2 forAssetID:@"UNKNOWN" withSelector:autoAssetSelector failingWithError:finishedError3];

  finishedError4 = [scheduleCopy finishedError];
  [(MADAutoAssetJob *)self doneWithAllJobs:@"ReleaseGrantJobFailedSchedule" withLookupError:finishedError4];

  finishedError5 = [scheduleCopy finishedError];
  [(MADAutoAssetJob *)self autoAssetJobFinished:@"ReleaseGrantJobFailedSchedule" forJobFinishedReason:@"FAILED(RELEASED_GRANT)" failingWithError:finishedError5];

  os_activity_scope_leave(&v16);
  return 0;
}

- (int64_t)action_JobPostponedSchedule:(id)schedule error:(id *)error
{
  scheduleCopy = schedule;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:JobPostponedSchedule", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  [(MADAutoAssetJob *)self replyToJobsWhenCatalogDownloaded:@"JobPostponedSchedule" discoveredNewer:0];
  v9 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"JobPostponedSchedule"];
  v10 = [MAAutoAssetError buildError:6401 fromOperation:v9 underlyingError:0 withDescription:@"download of the auto-asset content could not begin (download postponed [scheduled])"];

  [(MADAutoAssetJob *)self doneWithAllJobs:@"JobPostponedSchedule" withLookupError:v10];
  finishedError = [scheduleCopy finishedError];
  [(MADAutoAssetJob *)self autoAssetJobFinished:@"JobPostponedSchedule" forJobFinishedReason:@"POSTPONED" failingWithError:finishedError];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_JobEndedSchedule:(id)schedule error:(id *)error
{
  scheduleCopy = schedule;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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

- (int64_t)action_RecordSimulateOperation:(id)operation error:(id *)error
{
  operationCopy = operation;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:RecordSimulateOperation", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self simulateSet:operationCopy, v10.opaque[0], v10.opaque[1]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_CheckSimulateEndStatusRequest:(id)request error:(id *)error
{
  requestCopy = request;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:CheckSimulateEndStatusRequest", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self simulateSet:requestCopy, v10.opaque[0], v10.opaque[1]];
  [(MADAutoAssetJob *)self simulateEnd:1];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_SimulateSuspendCatalogLookupIssue:(id)issue error:(id *)error
{
  issueCopy = issue;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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

- (int64_t)action_SimulatePostponedCalculateSpace:(id)space error:(id *)error
{
  spaceCopy = space;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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

- (int64_t)action_CancelAssetDownload:(id)download error:(id *)error
{
  downloadCopy = download;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:CancelAssetDownload", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  [(MADAutoAssetJob *)self setReportingProgress:0, v11.opaque[0], v11.opaque[1]];
  downloadingAssetDescriptor = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
  [(MADAutoAssetJob *)self requestDownloadManagerCancelDownload:@"CancelAssetDownload" forDescriptor:downloadingAssetDescriptor];

  os_activity_scope_leave(&v11);
  return 0;
}

- (int64_t)action_ReleaseGrantCanceling:(id)canceling error:(id *)error
{
  cancelingCopy = canceling;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:ReleaseGrantCanceling", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self setHoldingLookupGrant:1, v10.opaque[0], v10.opaque[1]];
  [(MADAutoAssetJob *)self releaseLookupGrant];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_FailRequestCanceling:(id)canceling error:(id *)error
{
  cancelingCopy = canceling;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:FailRequestCanceling", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"FailRequestCanceling"];
  v10 = [MAAutoAssetError buildError:6115 fromOperation:v9 underlyingError:0 withDescription:@"previously active job has been canceled"];

  [(MADAutoAssetJob *)self finishJobTaskForJobParam:cancelingCopy withResponseError:v10];
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_JobFailedCanceled:(id)canceled error:(id *)error
{
  canceledCopy = canceled;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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

- (int64_t)action_ReleaseGrantJobFailedCanceled:(id)canceled error:(id *)error
{
  canceledCopy = canceled;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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

- (int64_t)action_DoneReportingProgress:(id)progress error:(id *)error
{
  progressCopy = progress;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:DoneReportingProgress", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self setReportingProgress:0, v10.opaque[0], v10.opaque[1]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_AddAtomicAlterDecideFilesystem:(id)filesystem error:(id *)error
{
  filesystemCopy = filesystem;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AddAtomicAlterDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  [(MADAutoAssetJob *)self clearSetStatusStartingSetJob:v11.opaque[0]];
  clientRequest = [filesystemCopy clientRequest];
  [(MADAutoAssetJob *)self _rememberIfSchedulerInvolved:clientRequest];

  [(MADAutoAssetJob *)self addToActiveJobTasks:filesystemCopy];
  [(MADAutoAssetJob *)self replyToClientForJobParam:filesystemCopy withResponseError:0];
  [(MADAutoAssetJob *)self checkFilesystemAndDecidePurgeOrLookup];
  os_activity_scope_leave(&v11);

  return 0;
}

- (int64_t)action_AddAtomicNeedDecideFilesystem:(id)filesystem error:(id *)error
{
  filesystemCopy = filesystem;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AddAtomicNeedDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  [(MADAutoAssetJob *)self clearSetStatusStartingSetJob:v11.opaque[0]];
  clientRequest = [filesystemCopy clientRequest];
  [(MADAutoAssetJob *)self _rememberIfSchedulerInvolved:clientRequest];

  [(MADAutoAssetJob *)self addToActiveJobTasks:filesystemCopy];
  [(MADAutoAssetJob *)self replyToClientForJobParam:filesystemCopy withResponseError:0];
  [(MADAutoAssetJob *)self checkFilesystemAndDecidePurgeOrLookup];
  os_activity_scope_leave(&v11);

  return 0;
}

- (int64_t)action_AddAtomicCheckDecideFilesystem:(id)filesystem error:(id *)error
{
  filesystemCopy = filesystem;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AddAtomicCheckDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  [(MADAutoAssetJob *)self clearSetStatusStartingSetJob:v11.opaque[0]];
  clientRequest = [filesystemCopy clientRequest];
  [(MADAutoAssetJob *)self _rememberIfSchedulerInvolved:clientRequest];

  [(MADAutoAssetJob *)self addToActiveJobTasks:filesystemCopy];
  [(MADAutoAssetJob *)self checkFilesystemAndDecidePurgeOrLookup];
  os_activity_scope_leave(&v11);

  return 0;
}

- (int64_t)action_AddAtomicLockDecideFilesystem:(id)filesystem error:(id *)error
{
  filesystemCopy = filesystem;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AddAtomicLockDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  [(MADAutoAssetJob *)self clearSetStatusStartingSetJob:v11.opaque[0]];
  clientRequest = [filesystemCopy clientRequest];
  [(MADAutoAssetJob *)self _rememberIfSchedulerInvolved:clientRequest];

  [(MADAutoAssetJob *)self addToActiveJobTasks:filesystemCopy];
  [(MADAutoAssetJob *)self setLockingAssetContent:1];
  [(MADAutoAssetJob *)self checkFilesystemAndDecidePurgeOrLookup];
  os_activity_scope_leave(&v11);

  return 0;
}

- (int64_t)action_AddAtomicContinueDecideFilesystem:(id)filesystem error:(id *)error
{
  filesystemCopy = filesystem;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AddAtomicContinueDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  [(MADAutoAssetJob *)self clearSetStatusStartingSetJob];
  v9 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"AddAtomicContinueDecideFilesystem"];
  v10 = [MAAutoAssetError buildError:6801 fromOperation:v9 underlyingError:0 withDescription:@"AddAtomicContinueDecideFilesystem not yet implemented"];

  [(MADAutoAssetJob *)self finishJobTaskForJobParam:filesystemCopy withResponseError:v10];
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_AddAtomicEndDecideFilesystem:(id)filesystem error:(id *)error
{
  filesystemCopy = filesystem;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:AddAtomicEndDecideFilesystem", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  [(MADAutoAssetJob *)self clearSetStatusStartingSetJob];
  v9 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"AddAtomicEndDecideFilesystem"];
  v10 = [MAAutoAssetError buildError:6801 fromOperation:v9 underlyingError:0 withDescription:@"AddAtomicEndDecideFilesystem not yet implemented"];

  [(MADAutoAssetJob *)self finishJobTaskForJobParam:filesystemCopy withResponseError:v10];
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_MergeAtomicAlterNeeds:(id)needs error:(id *)error
{
  needsCopy = needs;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeAtomicAlterNeeds", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"MergeAtomicAlterNeeds"];
  v10 = [MAAutoAssetError buildError:6801 fromOperation:v9 underlyingError:0 withDescription:@"MergeAtomicAlterNeeds not yet implemented"];

  [(MADAutoAssetJob *)self finishJobTaskForJobParam:needsCopy withResponseError:v10];
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_MergeAtomicNeeds:(id)needs error:(id *)error
{
  needsCopy = needs;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeAtomicNeeds", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeAtomicNeeds" forJobEvent:needsCopy, v10.opaque[0], v10.opaque[1]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_MergeAtomicAddLock:(id)lock error:(id *)error
{
  lockCopy = lock;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeAtomicAddLock", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeAtomicAddLock" forJobEvent:lockCopy, v10.opaque[0], v10.opaque[1]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_MergeAtomicContinueLock:(id)lock error:(id *)error
{
  lockCopy = lock;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeAtomicContinueLock", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"MergeAtomicContinueLock"];
  v10 = [MAAutoAssetError buildError:6801 fromOperation:v9 underlyingError:0 withDescription:@"MergeAtomicContinueLock not yet implemented"];

  [(MADAutoAssetJob *)self finishJobTaskForJobParam:lockCopy withResponseError:v10];
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_MergeAtomicEndLockDecideInterest:(id)interest error:(id *)error
{
  interestCopy = interest;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeAtomicEndLockDecideInterest", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"MergeAtomicEndLockDecideInterest"];
  v10 = [MAAutoAssetError buildError:6801 fromOperation:v9 underlyingError:0 withDescription:@"MergeAtomicEndLockDecideInterest not yet implemented"];

  [(MADAutoAssetJob *)self finishJobTaskForJobParam:interestCopy withResponseError:v10];
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_MergeAtomicAlterDecideLookup:(id)lookup error:(id *)error
{
  lookupCopy = lookup;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeAtomicAlterDecideLookup", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"MergeAtomicAlterDecideLookup"];
  v10 = [MAAutoAssetError buildError:6801 fromOperation:v9 underlyingError:0 withDescription:@"MergeAtomicAlterDecideLookup not yet implemented"];

  [(MADAutoAssetJob *)self finishJobTaskForJobParam:lookupCopy withResponseError:v10];
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_MergeAtomicNeedsDecideLookup:(id)lookup error:(id *)error
{
  lookupCopy = lookup;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeAtomicNeedsDecideLookup", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v12);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeAtomicNeedsDecideLookup" forJobEvent:lookupCopy, v12.opaque[0], v12.opaque[1]];
  v9 = [(MADAutoAssetJob *)self decideFollowupBoost:@"MergeAtomicNeedsDecideLookup" forJobEvent:lookupCopy boostEvent:@"BoostConfig" noBoostEvent:0];
  if (v9)
  {
    autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
    [autoJobFSM2 followupEvent:v9 withInfo:lookupCopy];
  }

  os_activity_scope_leave(&v12);
  return 0;
}

- (int64_t)action_MergeAtomicAlterDecideLookupBoost:(id)boost error:(id *)error
{
  boostCopy = boost;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeAtomicAlterDecideLookupBoost", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"MergeAtomicAlterDecideLookupBoost"];
  v10 = [MAAutoAssetError buildError:6801 fromOperation:v9 underlyingError:0 withDescription:@"MergeAtomicAlterDecideLookupBoost not yet implemented"];

  [(MADAutoAssetJob *)self finishJobTaskForJobParam:boostCopy withResponseError:v10];
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_MergeAtomicNeedsDecideLookupBoost:(id)boost error:(id *)error
{
  boostCopy = boost;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeAtomicNeedsDecideLookupBoost", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v12);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeAtomicNeedsDecideLookupBoost" forJobEvent:boostCopy, v12.opaque[0], v12.opaque[1]];
  [(MADAutoAssetJob *)self replyToJobsWhenCatalogDownloaded:@"MergeAtomicNeedsDecideLookupBoost" discoveredNewer:1];
  v9 = [(MADAutoAssetJob *)self decideFollowupBoost:@"MergeAtomicNeedsDecideLookupBoost" forJobEvent:boostCopy boostEvent:@"BoostConfig" noBoostEvent:0];
  if (v9)
  {
    autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
    [autoJobFSM2 followupEvent:v9 withInfo:boostCopy];
  }

  os_activity_scope_leave(&v12);
  return 0;
}

- (int64_t)action_MergeAtomicLockDecideLookupBoost:(id)boost error:(id *)error
{
  boostCopy = boost;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeAtomicLockDecideLookupBoost", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v12);

  [(MADAutoAssetJob *)self addClientRequestAndMergeNeeds:@"MergeAtomicLockDecideLookupBoost" forJobEvent:boostCopy, v12.opaque[0], v12.opaque[1]];
  v9 = [(MADAutoAssetJob *)self decideFollowupBoost:@"MergeAtomicLockDecideLookupBoost" forJobEvent:boostCopy boostEvent:@"BoostConfig" noBoostEvent:0];
  if (v9)
  {
    autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
    [autoJobFSM2 followupEvent:v9 withInfo:boostCopy];
  }

  os_activity_scope_leave(&v12);
  return 0;
}

- (int64_t)action_MergeAtomicCntnuDecideLookupBoost:(id)boost error:(id *)error
{
  boostCopy = boost;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:MergeAtomicCntnuDecideLookupBoost", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", @"MergeAtomicCntnuDecideLookupBoost"];
  v10 = [MAAutoAssetError buildError:6801 fromOperation:v9 underlyingError:0 withDescription:@"MergeAtomicCntnuDecideLookupBoost not yet implemented"];

  [(MADAutoAssetJob *)self finishJobTaskForJobParam:boostCopy withResponseError:v10];
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_SetCalculateDownloadSpace:(id)space error:(id *)error
{
  spaceCopy = space;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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
        autoJobName = [(MADAutoAssetJob *)self autoJobName];
        v11 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MADAutoAssetJob *)self simulateOperation]];
        *buf = 138543618;
        v17 = autoJobName;
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
        autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
        simulateOperation = [(MADAutoAssetJob *)self simulateOperation];
        *buf = 138543618;
        v17 = autoJobName2;
        v18 = 2048;
        v19 = simulateOperation;
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

- (int64_t)action_SetDecideDownload:(id)download error:(id *)error
{
  downloadCopy = download;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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

    newAssetDownloadOptions = [(MADAutoAssetJob *)self newAssetDownloadOptions];
    [(MADAutoAssetJob *)self setAssetDownloadOptions:newAssetDownloadOptions];

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
    assignedSetDescriptor = [(MADAutoAssetJob *)self assignedSetDescriptor];
    discoveredAtomicInstance = [assignedSetDescriptor discoveredAtomicInstance];
    currentSetStatus = [(MADAutoAssetJob *)self currentSetStatus];
    [currentSetStatus setNewerAtomicInstanceDiscovered:discoveredAtomicInstance];

    foundSetNewerDiscoveredAtomicEntries = [(MADAutoAssetJob *)self foundSetNewerDiscoveredAtomicEntries];
    currentSetStatus2 = [(MADAutoAssetJob *)self currentSetStatus];
    [currentSetStatus2 setNewerDiscoveredAtomicEntries:foundSetNewerDiscoveredAtomicEntries];

    currentSetStatus3 = [(MADAutoAssetJob *)self currentSetStatus];
    currentNotifications = [currentSetStatus3 currentNotifications];
    [currentNotifications setAtomicInstanceDiscovered:1];

    currentSetStatus4 = [(MADAutoAssetJob *)self currentSetStatus];
    currentNotifications2 = [currentSetStatus4 currentNotifications];
    [currentNotifications2 setDownloadPending:1];

    [(MADAutoAssetJob *)self updateAutoAssetSetDescriptor];
    [(MADAutoAssetJob *)self replyToJobsWhenCatalogDownloaded:@"SetDecideDownload" discoveredNewer:1];
    autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
    v21 = [MADAutoAssetJobParam alloc];
    _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
    v23 = [(MADAutoAssetJobParam *)v21 initWithSafeSummary:_updateLatestSummary];
    [autoJobFSM2 followupEvent:v10 withInfo:v23];
  }

  else
  {
    [(MADAutoAssetJob *)self statusChange:@"SetDecideDownload" catalogAnomaly:6103 forReason:@"action SetDecideDownload should only execute for set-job"];
  }

  os_activity_scope_leave(&v25);

  return 0;
}

- (int64_t)action_SetDoneDetermine:(id)determine error:(id *)error
{
  determineCopy = determine;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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
            autoJobName = [(MADAutoAssetJob *)self autoJobName];
            v11 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MADAutoAssetJob *)self simulateOperation]];
            *buf = 138543618;
            v17 = autoJobName;
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
            autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
            simulateOperation = [(MADAutoAssetJob *)self simulateOperation];
            *buf = 138543618;
            v17 = autoJobName2;
            v18 = 2048;
            v19 = simulateOperation;
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

- (int64_t)action_SetLookupSuccessContinue:(id)continue error:(id *)error
{
  continueCopy = continue;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetLookupSuccessContinue", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v14);

  [(MADAutoAssetJob *)self releaseLookupGrant:v14.opaque[0]];
  [(MADAutoAssetJob *)self replyToJobsWhenCatalogDownloaded:@"SetLookupSuccessContinue" discoveredNewer:0];
  autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
  v10 = [MADAutoAssetJobParam alloc];
  _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
  v12 = [(MADAutoAssetJobParam *)v10 initWithSafeSummary:_updateLatestSummary];
  [autoJobFSM2 followupEvent:@"LookupContinue" withInfo:v12];

  os_activity_scope_leave(&v14);
  return 0;
}

- (int64_t)action_SetLookupNoneContinue:(id)continue error:(id *)error
{
  continueCopy = continue;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetLookupNoneContinue", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v14);

  [(MADAutoAssetJob *)self releaseLookupGrant:v14.opaque[0]];
  [(MADAutoAssetJob *)self replyToJobsWhenCatalogDownloaded:@"SetLookupNoneContinue" discoveredNewer:0];
  autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
  v10 = [MADAutoAssetJobParam alloc];
  _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
  v12 = [(MADAutoAssetJobParam *)v10 initWithSafeSummary:_updateLatestSummary];
  [autoJobFSM2 followupEvent:@"LookupContinue" withInfo:v12];

  os_activity_scope_leave(&v14);
  return 0;
}

- (int64_t)action_SetLookupNoNewerContinue:(id)continue error:(id *)error
{
  continueCopy = continue;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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

  autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
  v13 = [MADAutoAssetJobParam alloc];
  _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
  v15 = [(MADAutoAssetJobParam *)v13 initWithSafeSummary:_updateLatestSummary];
  [autoJobFSM2 followupEvent:@"LookupContinue" withInfo:v15];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_SetJobNoneSchedule:(id)schedule error:(id *)error
{
  scheduleCopy = schedule;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetJobNoneSchedule", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  [(MADAutoAssetJob *)self replyToJobsWhenCatalogDownloaded:@"SetJobNoneSchedule" discoveredNewer:0];
  clientDomainName = [(MADAutoAssetJob *)self clientDomainName];
  autoAssetSetIdentifier = [(MADAutoAssetJob *)self autoAssetSetIdentifier];
  autoAssetUUID = [(MADAutoAssetJob *)self autoAssetUUID];
  [MADAutoAssetControlManager postSetNotificationName:@"ATOMIC_INSTANCE_NO_ENTRIES" forClientDomainName:clientDomainName forAssetSetIdentifier:autoAssetSetIdentifier forAtomicInstanceUUID:autoAssetUUID fromModule:@"AUTO-JOB" fromLocation:@"SetJobNoneSchedule"];

  v12 = [[NSString alloc] initWithFormat:@"AUTO-SET-JOB(%@)", @"SetJobNoneSchedule"];
  v13 = [MAAutoAssetError buildError:6556 fromOperation:v12 underlyingError:0 withDescription:@"server indicated that none of the auto-asset-entries making up the set are available"];

  [(MADAutoAssetJob *)self doneWithAllJobs:@"SetJobNoneSchedule" withLookupError:v13];
  [(MADAutoAssetJob *)self autoAssetJobFinished:@"SetJobNoneSchedule" forJobFinishedReason:@"NONE" failingWithError:v13];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_SetJobNoNewerSchedule:(id)schedule error:(id *)error
{
  scheduleCopy = schedule;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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

- (int64_t)action_SetJobFailedSchedule:(id)schedule error:(id *)error
{
  scheduleCopy = schedule;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetJobFailedSchedule", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  finishedError = [scheduleCopy finishedError];
  [(MADAutoAssetJob *)self determineWhetherNetworkConnectivityError:finishedError];
  [(MADAutoAssetJob *)self _releaseReservedSpace];
  if (!finishedError)
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
        finishedError = 0;
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
    finishedError = [MAAutoAssetError buildError:v11 fromOperation:v12 underlyingError:0 withDescription:v10];

    if (!finishedError)
    {
      goto LABEL_12;
    }
  }

  assignedSetDescriptor = [(MADAutoAssetJob *)self assignedSetDescriptor];
  clientDomainName = [assignedSetDescriptor clientDomainName];
  assignedSetDescriptor2 = [(MADAutoAssetJob *)self assignedSetDescriptor];
  assetSetIdentifier = [assignedSetDescriptor2 assetSetIdentifier];
  assignedSetDescriptor3 = [(MADAutoAssetJob *)self assignedSetDescriptor];
  discoveredAtomicInstance = [assignedSetDescriptor3 discoveredAtomicInstance];
  [MADAutoAssetHistory recordFailedOperation:504 fromLayer:2 forClientDomainName:clientDomainName forAssetSetIdentifier:assetSetIdentifier forAtomicInstance:discoveredAtomicInstance failingWithError:finishedError];

  if (+[MAAIRBEventReporter isAvailable])
  {
    v19 = [MAAIRBMobileAssetOperationMetadata alloc];
    v20 = [MADAutoAssetHistoryTracker operationName:504];
    v21 = [(MAAIRBMobileAssetOperationMetadata *)v19 initWithCode:504 name:v20];

    v22 = [MAAIRBMobileAssetAtomicInstance alloc];
    v23 = [MAAIRBMobileAssetAssetSet alloc];
    assignedSetDescriptor4 = [(MADAutoAssetJob *)self assignedSetDescriptor];
    assetSetIdentifier2 = [assignedSetDescriptor4 assetSetIdentifier];
    v26 = [(MAAIRBMobileAssetAssetSet *)v23 initWithAssetSetIdentifier:assetSetIdentifier2];
    assignedSetDescriptor5 = [(MADAutoAssetJob *)self assignedSetDescriptor];
    discoveredAtomicInstance2 = [assignedSetDescriptor5 discoveredAtomicInstance];
    v29 = [(MAAIRBMobileAssetAtomicInstance *)v22 initWithAssetSet:v26 atomicInstanceId:discoveredAtomicInstance2];

    v30 = [MAAIRBAppleIntelligenceAssetDeliveryEventType typeAtomicInstance:v21 atomicInstance:v29 assetCount:0];
    v31 = [MAAIRBAppleIntelligenceAssetDeliveryEvent alloc];
    v36 = finishedError;
    v32 = [NSArray arrayWithObjects:&v36 count:1];
    v33 = [(MAAIRBAppleIntelligenceAssetDeliveryEvent *)v31 initWithErrors:v32 type:v30];

    [MAAIRBEventReporter emitAppleIntelligenceEvent:v33];
  }

LABEL_12:
  [(MADAutoAssetJob *)self doneWithAllJobs:@"SetJobFailedSchedule" withLookupError:finishedError];
  [(MADAutoAssetJob *)self autoAssetJobFinished:@"SetJobFailedSchedule" forJobFinishedReason:@"FAILED" failingWithError:finishedError];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_SetJobLookupRevokedContinue:(id)continue error:(id *)error
{
  continueCopy = continue;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetJobLookupRevokedContinue", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  [(MADAutoAssetJob *)self releaseLookupGrant];
  v9 = [[NSString alloc] initWithFormat:@"AUTO-SET-JOB(%@)", @"SetJobLookupRevokedContinue"];
  v10 = [MAAutoAssetError buildError:6203 fromOperation:v9 underlyingError:0 withDescription:@"previously available atomic-instance of auto-asset-set has been revoked"];

  autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
  [MADAutoAssetHistory recordFailedOperation:506 fromLayer:2 forAssetID:@"UNKNOWN" withSelector:autoAssetSelector failingWithError:v10];

  [(MADAutoAssetJob *)self replyToJobsWhenLookupFailed:@"SetJobLookupRevokedContinue" withLookupError:v10];
  autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
  v13 = [MADAutoAssetJobParam alloc];
  _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
  v15 = [(MADAutoAssetJobParam *)v13 initWithSafeSummary:_updateLatestSummary];
  [autoJobFSM2 followupEvent:@"SetLookupContinue" withInfo:v15];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_SetJobHealPersonalizeNext:(id)next error:(id *)error
{
  nextCopy = next;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetJobHealPersonalizeNext", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  autoAssetUUID = [(MADAutoAssetJob *)self autoAssetUUID];
  if (-[MADAutoAssetJob stagerJob](self, "stagerJob") || (-[MADAutoAssetJob tryPersonalizeDescriptors](self, "tryPersonalizeDescriptors"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, !v11))
  {
    v28 = [[NSString alloc] initWithFormat:@"AUTO-SET-JOB(%@)", @"SetJobHealPersonalizeNext"];
    v13 = [MAAutoAssetError buildError:6108 fromOperation:v28 underlyingError:0 withDescription:@"at point where continuing attempt to heal yet no descriptors to try to personalize"];

    v27 = [[MADAutoAssetJobParam alloc] initForFinishedJobID:autoAssetUUID withError:v13];
    [(MADAutoAssetJob *)self trackAnomaly:6110 forReason:@"{SetJobHealPersonalizeNext} no tryPersonalizeDescriptors"];
    autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
    [autoJobFSM2 postEvent:@"PersonalizationFailure" withInfo:v27];
  }

  else
  {
    tryPersonalizeDescriptors = [(MADAutoAssetJob *)self tryPersonalizeDescriptors];
    v13 = [tryPersonalizeDescriptors objectAtIndex:0];

    tryPersonalizePromoted = [(MADAutoAssetJob *)self tryPersonalizePromoted];
    assetId = [v13 assetId];
    v16 = [tryPersonalizePromoted containsObject:assetId];

    tryPersonalizeDescriptors2 = [(MADAutoAssetJob *)self tryPersonalizeDescriptors];
    [tryPersonalizeDescriptors2 removeObjectAtIndex:0];

    if (v16)
    {
      tryPersonalizePromoted2 = [(MADAutoAssetJob *)self tryPersonalizePromoted];
      assetId2 = [v13 assetId];
      [tryPersonalizePromoted2 removeObject:assetId2];
    }

    v20 = [MAAutoAssetSelector alloc];
    assetType = [v13 assetType];
    assetSpecifier = [v13 assetSpecifier];
    assetVersion = [v13 assetVersion];
    v24 = [v20 initForAssetType:assetType withAssetSpecifier:assetSpecifier matchingAssetVersion:assetVersion];
    [(MADAutoAssetJob *)self setTryPersonalizeSelector:v24];

    tryPersonalizeSelector = [(MADAutoAssetJob *)self tryPersonalizeSelector];

    if (tryPersonalizeSelector)
    {
      autoJobName = [(MADAutoAssetJob *)self autoJobName];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = __58__MADAutoAssetJob_action_SetJobHealPersonalizeNext_error___block_invoke;
      v36[3] = &unk_4B4CE8;
      v39 = v16;
      v37 = autoAssetUUID;
      selfCopy = self;
      [MADAutoAssetSecure personalizeDownloaded:autoJobName personalizingDescriptor:v13 allowingNetwork:1 committingPersonalization:0 completion:v36];

      v27 = v37;
    }

    else
    {
      v31 = [[NSString alloc] initWithFormat:@"AUTO-SET-JOB(%@)", @"SetJobHealPersonalizeNext"];
      v27 = [MAAutoAssetError buildError:6108 fromOperation:v31 underlyingError:0 withDescription:@"unable to build auto-asset-selector for asset-descriptor to be healed"];

      v32 = [[MADAutoAssetJobParam alloc] initForFinishedJobID:autoAssetUUID withError:v27];
      [(MADAutoAssetJob *)self trackAnomaly:6101 forReason:@"{SetJobHealPersonalizeNext} unable to build auto-asset-selector for asset-descriptor to be healed"];
      v33 = objc_alloc_init(NSMutableArray);
      [(MADAutoAssetJob *)self setTryPersonalizeDescriptors:v33];

      v34 = objc_alloc_init(NSMutableSet);
      [(MADAutoAssetJob *)self setTryPersonalizePromoted:v34];

      autoJobFSM3 = [(MADAutoAssetJob *)self autoJobFSM];
      [autoJobFSM3 postEvent:@"PersonalizationFailure" withInfo:v32];
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

- (int64_t)action_SetDownloadNewestFull:(id)full error:(id *)error
{
  fullCopy = full;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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
      foundNewerFull = [(MADAutoAssetJob *)self foundNewerFull];
      [(MADAutoAssetJob *)self requestDownloadManagerAssetDownload:@"SetDownloadNewestFull" forDescriptor:foundNewerFull withBaseForPatch:0];
      goto LABEL_6;
    }

    v10 = [MADAutoAssetJobParam alloc];
    autoAssetUUID = [(MADAutoAssetJob *)self autoAssetUUID];
    foundNewerFull = [(MADAutoAssetJobParam *)v10 initForFinishedJobID:autoAssetUUID withError:v9];

    autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
    [autoJobFSM2 postEvent:@"SetDownloadFailureNoFull" withInfo:foundNewerFull];
  }

  else
  {
    v9 = [MAAutoAssetError buildError:6108 fromOperation:@"AUTO-SET-JOB(SetDownloadNewestFull)" underlyingError:0 withDescription:@"no next specifier to download (at location SetDownloadNewestFull)"];
    v14 = [MADAutoAssetJobParam alloc];
    autoAssetUUID2 = [(MADAutoAssetJob *)self autoAssetUUID];
    foundNewerFull = [(MADAutoAssetJobParam *)v14 initForFinishedJobID:autoAssetUUID2 withError:v9];

    [(MADAutoAssetJob *)self trackAnomaly:6108 forReason:@"{SetDownloadNewestFull} invalid nextSetSpecifierToDownload value"];
    autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
    [autoJobFSM2 postEvent:@"SetDownloadFailureNoFull" withInfo:foundNewerFull];
  }

LABEL_6:
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_SetDownloadNext:(id)next error:(id *)error
{
  nextCopy = next;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetDownloadNext", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  if (![(MADAutoAssetJob *)self remainingSetDescriptorToBeDownloaded])
  {
    v9 = [MAAutoAssetError buildError:6108 fromOperation:@"AUTO-SET-JOB(SetDownloadNext)" underlyingError:0 withDescription:@"no next specifier to download (at location SetDownloadNext)"];
    v14 = [MADAutoAssetJobParam alloc];
    autoAssetUUID = [(MADAutoAssetJob *)self autoAssetUUID];
    foundNewerPatch = [(MADAutoAssetJobParam *)v14 initForFinishedJobID:autoAssetUUID withError:v9];

    [(MADAutoAssetJob *)self trackAnomaly:6108 forReason:@"{SetDownloadNext} invalid nextSetSpecifierToDownload value"];
    autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
    [autoJobFSM2 postEvent:@"SetDownloadFailureNoFull" withInfo:foundNewerPatch];
    goto LABEL_5;
  }

  v28 = 0;
  [(MADAutoAssetJob *)self placeNextSetAssetDescriptorToDownload:@"SetDownloadNext" restrictToFull:0 error:&v28];
  v9 = v28;
  if (v9)
  {
    v10 = [MADAutoAssetJobParam alloc];
    autoAssetUUID2 = [(MADAutoAssetJob *)self autoAssetUUID];
    foundNewerPatch = [(MADAutoAssetJobParam *)v10 initForFinishedJobID:autoAssetUUID2 withError:v9];

    autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
    [autoJobFSM2 postEvent:@"SetDownloadFailureNoFull" withInfo:foundNewerPatch];
LABEL_5:

    goto LABEL_6;
  }

  newAssetDownloadOptions = [(MADAutoAssetJob *)self newAssetDownloadOptions];
  [(MADAutoAssetJob *)self setAssetDownloadOptions:newAssetDownloadOptions];

  baseForPatch = [(MADAutoAssetJob *)self baseForPatch];
  LOBYTE(newAssetDownloadOptions) = baseForPatch == 0;

  if (newAssetDownloadOptions)
  {
    v21 = 0;
  }

  else
  {
    baseForPatch2 = [(MADAutoAssetJob *)self baseForPatch];
    v20 = [MADAutoAssetControlManager localAssetURLForDescriptor:baseForPatch2 fromLocation:@"DownloadNewestPatch"];

    v21 = v20 != 0;
    if (v20)
    {
      assetDownloadOptions = [(MADAutoAssetJob *)self assetDownloadOptions];
      [assetDownloadOptions setSourceDirectory:v20];
    }
  }

  v23 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    autoJobName = [(MADAutoAssetJob *)self autoJobName];
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
    selectorName = [v26 selectorName];
    *buf = 138543874;
    v31 = autoJobName;
    v32 = 2114;
    v33 = v25;
    v34 = 2114;
    v35 = selectorName;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ | {SetDownloadNext} Starting next download | type:%{public}@ | selector:%{public}@", buf, 0x20u);
  }

  [(MADAutoAssetJob *)self statusChangeStartingAssetDownload:@"SetDownloadNext" downloadingPatch:v21];
  if (v21)
  {
    foundNewerPatch = [(MADAutoAssetJob *)self foundNewerPatch];
    autoJobFSM2 = [(MADAutoAssetJob *)self baseForPatch];
  }

  else
  {
    foundNewerPatch = [(MADAutoAssetJob *)self foundNewerFull];
    autoJobFSM2 = 0;
  }

  [(MADAutoAssetJob *)self requestDownloadManagerAssetDownload:@"SetDownloadNext" forDescriptor:foundNewerPatch withBaseForPatch:autoJobFSM2];
  if (v21)
  {
    goto LABEL_5;
  }

LABEL_6:

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_SetDownloadSameFull:(id)full error:(id *)error
{
  fullCopy = full;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetDownloadSameFull", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  [(MADAutoAssetJob *)self statusChangeStartingAssetDownload:@"SetDownloadSameFull" downloadingPatch:0, v11.opaque[0], v11.opaque[1]];
  foundNewerFull = [(MADAutoAssetJob *)self foundNewerFull];
  [(MADAutoAssetJob *)self requestDownloadManagerAssetDownload:@"SetDownloadSameFull" forDescriptor:foundNewerFull withBaseForPatch:0];

  os_activity_scope_leave(&v11);
  return 0;
}

- (int64_t)action_SetJobSuccessSchedule:(id)schedule error:(id *)error
{
  scheduleCopy = schedule;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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

- (int64_t)action_SetJobSuccessFoundSameSchedule:(id)schedule error:(id *)error
{
  scheduleCopy = schedule;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetJobSuccessFoundSameSchedule", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self finishedSetSameVersionFound:@"SetJobSuccessFoundSameSchedule", v10.opaque[0], v10.opaque[1]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_SetJobSuccessFoundPromoted:(id)promoted error:(id *)error
{
  promotedCopy = promoted;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetJobSuccessFoundPromoted", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self _commitPrePersonalized:@"SetJobSuccessFoundPromoted" error:0, v10.opaque[0], v10.opaque[1]];
  [(MADAutoAssetJob *)self finishSetJobDownloadedNewer:@"SetJobSuccessFoundPromoted" forJobFinishedReason:@"SUCCESS(IMMEDIATE_PROMOTED)"];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_SetJobSuccessAwaiting:(id)awaiting error:(id *)error
{
  awaitingCopy = awaiting;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetJobSuccessAwaiting", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  [(MADAutoAssetJob *)self _commitPrePersonalized:@"SetJobSuccessSchedule" error:0];
  autoAssetSetDescriptor = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v10 = [MADAutoAssetSecure isPersonalizationRequired:@"SetJobSuccessAwaiting" forSetDescriptor:autoAssetSetDescriptor];

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

- (int64_t)action_SetJobFailedAwaiting:(id)awaiting error:(id *)error
{
  awaitingCopy = awaiting;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v34.opaque[0] = 0;
  v34.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetJobFailedAwaiting", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v34);

  [(MADAutoAssetJob *)self _releaseReservedSpace:v34.opaque[0]];
  assignedSetDescriptor = [(MADAutoAssetJob *)self assignedSetDescriptor];
  clientDomainName = [assignedSetDescriptor clientDomainName];
  assignedSetDescriptor2 = [(MADAutoAssetJob *)self assignedSetDescriptor];
  assetSetIdentifier = [assignedSetDescriptor2 assetSetIdentifier];
  assignedSetDescriptor3 = [(MADAutoAssetJob *)self assignedSetDescriptor];
  discoveredAtomicInstance = [assignedSetDescriptor3 discoveredAtomicInstance];
  finishedError = [awaitingCopy finishedError];
  [MADAutoAssetHistory recordFailedOperation:504 fromLayer:2 forClientDomainName:clientDomainName forAssetSetIdentifier:assetSetIdentifier forAtomicInstance:discoveredAtomicInstance failingWithError:finishedError];

  if (+[MAAIRBEventReporter isAvailable])
  {
    v16 = [MAAIRBMobileAssetOperationMetadata alloc];
    v17 = [MADAutoAssetHistoryTracker operationName:504];
    v18 = [(MAAIRBMobileAssetOperationMetadata *)v16 initWithCode:504 name:v17];

    v19 = [MAAIRBMobileAssetAtomicInstance alloc];
    v20 = [MAAIRBMobileAssetAssetSet alloc];
    assignedSetDescriptor4 = [(MADAutoAssetJob *)self assignedSetDescriptor];
    assetSetIdentifier2 = [assignedSetDescriptor4 assetSetIdentifier];
    v23 = [(MAAIRBMobileAssetAssetSet *)v20 initWithAssetSetIdentifier:assetSetIdentifier2];
    assignedSetDescriptor5 = [(MADAutoAssetJob *)self assignedSetDescriptor];
    discoveredAtomicInstance2 = [assignedSetDescriptor5 discoveredAtomicInstance];
    v26 = [(MAAIRBMobileAssetAtomicInstance *)v19 initWithAssetSet:v23 atomicInstanceId:discoveredAtomicInstance2];

    v27 = [MAAIRBAppleIntelligenceAssetDeliveryEventType typeAtomicInstance:v18 atomicInstance:v26 assetCount:0];
    v28 = [MAAIRBAppleIntelligenceAssetDeliveryEvent alloc];
    finishedError2 = [awaitingCopy finishedError];
    v35 = finishedError2;
    v30 = [NSArray arrayWithObjects:&v35 count:1];
    v31 = [(MAAIRBAppleIntelligenceAssetDeliveryEvent *)v28 initWithErrors:v30 type:v27];

    [MAAIRBEventReporter emitAppleIntelligenceEvent:v31];
  }

  finishedError3 = [awaitingCopy finishedError];
  [(MADAutoAssetJob *)self replyToJobsWhenLookupFailed:@"SetJobFailedAwaiting" withLookupError:finishedError3];

  os_activity_scope_leave(&v34);
  return 0;
}

- (int64_t)action_SetJobEndedSchedule:(id)schedule error:(id *)error
{
  scheduleCopy = schedule;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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

- (int64_t)action_SetJobTryPersonalizeHeal:(id)heal error:(id *)error
{
  healCopy = heal;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:SetJobTryPersonalizeHeal", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  autoAssetUUID = [(MADAutoAssetJob *)self autoAssetUUID];
  v9 = getControlManager();
  analytics = [v9 analytics];

  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__13;
  v54 = __Block_byref_object_dispose__13;
  autoAssetDescriptor = [healCopy autoAssetDescriptor];
  if (![(MADAutoAssetJob *)self stagerJob])
  {
    tryPersonalizeDescriptors = [(MADAutoAssetJob *)self tryPersonalizeDescriptors];
    v11 = [tryPersonalizeDescriptors count];

    if (v11)
    {
      tryPersonalizeDescriptors2 = [(MADAutoAssetJob *)self tryPersonalizeDescriptors];
      v13 = [tryPersonalizeDescriptors2 objectAtIndex:0];

      tryPersonalizeDescriptors3 = [(MADAutoAssetJob *)self tryPersonalizeDescriptors];
      [tryPersonalizeDescriptors3 removeObjectAtIndex:0];

      v15 = [MAAutoAssetSelector alloc];
      assetType = [v13 assetType];
      assetSpecifier = [v13 assetSpecifier];
      assetVersion = [v13 assetVersion];
      v19 = [v15 initForAssetType:assetType withAssetSpecifier:assetSpecifier matchingAssetVersion:assetVersion];
      [(MADAutoAssetJob *)self setTryPersonalizeSelector:v19];

      tryPersonalizeSelector = [(MADAutoAssetJob *)self tryPersonalizeSelector];

      if (tryPersonalizeSelector)
      {
        autoJobName = [(MADAutoAssetJob *)self autoJobName];
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = __57__MADAutoAssetJob_action_SetJobTryPersonalizeHeal_error___block_invoke;
        v43[3] = &unk_4B4D10;
        v44 = autoAssetUUID;
        v45 = analytics;
        v46 = 0;
        v48 = &v50;
        v49 = &v56;
        selfCopy = self;
        [MADAutoAssetSecure personalizeDownloaded:autoJobName personalizingDescriptor:v13 allowingNetwork:1 committingPersonalization:0 completion:v43];

        v22 = 0;
        autoJobFSM3 = v44;
      }

      else
      {
        v32 = [[NSString alloc] initWithFormat:@"AUTO-SET-JOB(%@)", @"SetJobTryPersonalizeHeal"];
        v22 = [MAAutoAssetError buildError:6108 fromOperation:v32 underlyingError:0 withDescription:@"unable to build auto-asset-selector for asset-descriptor to be healed"];

        autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
        diag = [autoJobFSM2 diag];
        [diag trackAnomaly:@"{SetJobTryPersonalizeHeal}" forReason:@"unable to build auto-asset-selector for asset-descriptor to be healed" withResult:6101 withError:v22];

        autoJobFSM3 = objc_alloc_init(NSMutableArray);
        [(MADAutoAssetJob *)self setTryPersonalizeDescriptors:autoJobFSM3];
      }

      goto LABEL_15;
    }
  }

  v24 = [[NSString alloc] initWithFormat:@"AUTO-SET-JOB(%@)", @"SetJobTryPersonalizeHeal"];
  v22 = [MAAutoAssetError buildError:6108 fromOperation:v24 underlyingError:0 withDescription:@"at point where starting attempt to heal yet no descriptors to try to personalize"];

  v13 = [[MADAutoAssetJobParam alloc] initForFinishedJobID:autoAssetUUID withError:v22];
  [(MADAutoAssetJob *)self trackAnomaly:6110 forReason:@"{SetJobTryPersonalizeHeal} no tryPersonalizeDescriptors"];
  if ((v57[3] & 1) == 0)
  {
    assetSpecifier2 = [v51[5] assetSpecifier];
    assetType2 = [v51[5] assetType];
    assetVersion2 = [v51[5] assetVersion];
    clientRequest = [v13 clientRequest];
    if (clientRequest)
    {
      clientRequest2 = [v13 clientRequest];
      clientID = [clientRequest2 clientID];
    }

    else
    {
      clientID = @"N/A";
    }

    v30 = [v22 description];
    LOBYTE(v39) = 0;
    LOBYTE(v38) = 0;
    LOBYTE(v37) = 0;
    LOBYTE(v36) = v22 == 0;
    v31 = [analytics recordMobileAssetSecureAttempt:assetSpecifier2 assetType:assetType2 assetVersion:assetVersion2 clientName:clientID operation:7 secureReason:@"attempting to heal from set job" fromLocation:@"SetJobTryPersonalizeHeal" sucessfullyPersonalized:v36 personalizeFailureReason:v30 sucessfullyMounted:v37 mountingFailureReason:0 successfullyGrafted:v38 graftingFailureReason:0 successfullyMappedToExclave:v39 mapToExclaveFailureReason:0];

    if (clientRequest)
    {
    }
  }

  if (v22)
  {
    autoJobFSM3 = [(MADAutoAssetJob *)self autoJobFSM];
    [autoJobFSM3 postEvent:@"PersonalizationFailure" withInfo:v13];
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

- (int64_t)action_FinishedCoalescedClientReply:(id)reply error:(id *)error
{
  replyCopy = reply;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:FinishedCoalescedClientReply", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  activeJobTasks = [(MADAutoAssetJob *)self activeJobTasks];
  v10 = [activeJobTasks count];

  if (v10)
  {
    v11 = [NSString alloc];
    summary = [replyCopy summary];
    v13 = [v11 initWithFormat:@"{FinishedCoalescedClientReply} already another active job-task | eventInfo:%@", summary];
    [(MADAutoAssetJob *)self trackAnomaly:6109 forReason:v13];
  }

  [(MADAutoAssetJob *)self addToActiveJobTasks:replyCopy];
  firstLookupError = [(MADAutoAssetJob *)self firstLookupError];

  if (firstLookupError)
  {
    firstLookupError2 = [(MADAutoAssetJob *)self firstLookupError];
    [(MADAutoAssetJob *)self doneWithAllJobs:@"FinishedCoalescedClientReply" withLookupError:firstLookupError2];
  }

  else
  {
    [(MADAutoAssetJob *)self doneWithAllJobs:@"FinishedCoalescedClientReply"];
  }

  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_RerouteSchedulerTrigger:(id)trigger error:(id *)error
{
  triggerCopy = trigger;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:RerouteSchedulerTrigger", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  if ([(MADAutoAssetJob *)self autoAssetSetJob:v11.opaque[0]])
  {
    setConfiguration = [(MADAutoAssetJob *)self setConfiguration];
    [MADAutoAssetControlManager autoAssetJobCoalescePostedToFinishedSetSchedulerTrigger:setConfiguration];
  }

  else
  {
    setConfiguration = [(MADAutoAssetJob *)self autoAssetSelector];
    [MADAutoAssetControlManager autoAssetJobCoalescePostedToFinishedSingletonSchedulerTrigger:setConfiguration];
  }

  os_activity_scope_leave(&v11);
  return 0;
}

- (int64_t)action_NowDeadClear:(id)clear error:(id *)error
{
  clearCopy = clear;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADJob:NowDeadClear", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetJob *)self completeNWActivity:v10.opaque[0]];
  [(MADAutoAssetJob *)self _autoAssetJobDead:@"NowDeadClear"];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)actionUnknownAction:(id)action error:(id *)error
{
  actionCopy = action;
  actionCopy = [[NSString alloc] initWithFormat:@"unknown action(%@)", actionCopy];

  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  diag = [autoJobFSM diag];
  [diag dumpTracked:actionCopy dumpingTo:5 usingFilename:0 clearingStatistics:0 clearingHistory:0];

  return 0;
}

- (void)clearSetStatusStartingSetJob
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v5 = objc_alloc_init(MANAutoAssetSetNotifications);
  [(MADAutoAssetJob *)self setCurrentSetNotifications:v5];

  v19 = [MANAutoAssetSetStatus alloc];
  assignedSetDescriptor = [(MADAutoAssetJob *)self assignedSetDescriptor];
  clientDomainName = [assignedSetDescriptor clientDomainName];
  assignedSetDescriptor2 = [(MADAutoAssetJob *)self assignedSetDescriptor];
  assetSetIdentifier = [assignedSetDescriptor2 assetSetIdentifier];
  setConfiguration = [(MADAutoAssetJob *)self setConfiguration];
  autoAssetEntries = [setConfiguration autoAssetEntries];
  currentSetNotifications = [(MADAutoAssetJob *)self currentSetNotifications];
  aggregatedClientSetPolicy = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  haveReceivedLookupResponse = [(MADAutoAssetJob *)self haveReceivedLookupResponse];
  LOBYTE(v5) = [(MADAutoAssetJob *)self vendingAtomicInstanceForConfiguredEntries];
  BYTE2(v18) = [(MADAutoAssetJob *)self downloadingUserInitiated];
  BYTE1(v18) = v5;
  LOBYTE(v18) = haveReceivedLookupResponse;
  LOBYTE(v17) = 0;
  v14 = [MANAutoAssetSetStatus initStatusForClientDomain:v19 forAssetSetIdentifier:"initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDownloadedAtomicInstanceFromPreSUStaging:withLatestDowloadedAtomicInstanceEntries:withPreviouslyVendedLockedAtomicInstance:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:" withConfiguredAssetEntries:clientDomainName withAtomicInstancesDownloaded:assetSetIdentifier withCatalogCachedAssetSetID:autoAssetEntries withCatalogDownloadedFromLive:0 withCatalogLastTimeChecked:0 withCatalogPostedDate:0 withNewerAtomicInstanceDiscovered:0 withNewerDiscoveredAtomicEntries:0 withLatestDownloadedAtomicInstance:0 withLatestDownloadedAtomicInstanceFromPreSUStaging:0 withLatestDowloadedAtomicInstanceEntries:0 withPreviouslyVendedLockedAtomicInstance:v17 withDownloadedCatalogCachedAssetSetID:0 withDownloadedCatalogDownloadedFromLive:0 withDownloadedCatalogLastTimeChecked:0 withDownloadedCatalogPostedDate:0 withCurrentNotifications:0 withCurrentNeedPolicy:0 withSchedulerPolicy:currentSetNotifications withStagerPolicy:aggregatedClientSetPolicy havingReceivedLookupResponse:0 vendingAtomicInstanceForConfiguredEntries:0 withDownloadUserInitiated:v18 withDownloadProgress:0 withDownloadedNetworkBytes:-1 withDownloadedFilesystemBytes:-1 withCurrentLockUsage:0 withSelectorsForStaging:0 withAvailableForUseError:0 withNewerVersionError:0];
  [(MADAutoAssetJob *)self setCurrentSetStatus:v14];

  currentSetStatus = [(MADAutoAssetJob *)self currentSetStatus];
  v15 = [currentSetStatus copy];
  setJobInformation = [(MADAutoAssetJob *)self setJobInformation];
  [setJobInformation setCurrentSetStatus:v15];
}

- (id)reportSetCatalogDecideFound:(id)found fromLocation:(id)location
{
  foundCopy = found;
  locationCopy = location;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  locationCopy = [[NSString alloc] initWithFormat:@"%@:reportSetCatalogDecideFound", locationCopy];
  summary = objc_alloc_init(NSMutableDictionary);
  v12 = objc_alloc_init(NSMutableDictionary);
  if (!foundCopy)
  {
    v18 = @"successful catalog download yet no catalog provided";
    selfCopy2 = self;
    v20 = locationCopy;
    v21 = 6102;
LABEL_9:
    [(MADAutoAssetJob *)selfCopy2 statusChange:v20 catalogAnomaly:v21 forReason:v18];
    v22 = @"SetCatalogFoundNoNewer";
    goto LABEL_80;
  }

  v131 = locationCopy;
  autoAssetSetInstance = [(MADAutoAssetJob *)self autoAssetSetInstance];

  if (!autoAssetSetInstance)
  {
    v18 = @"successful catalog download for set-job yet no autoAssetSetInstance";
    selfCopy2 = self;
    locationCopy = v131;
    v20 = v131;
    v21 = 6103;
    goto LABEL_9;
  }

  selfCopy3 = self;
  v118 = [(MADAutoAssetJob *)self buildPotentialDescriptors:v131 fromLookupResults:foundCopy buildingPatchDescriptors:summary andFullDescriptors:v12];
  v124 = [foundCopy safeStringForKey:@"AssetType"];
  v14 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    autoJobName = [(MADAutoAssetJob *)self autoJobName];
    *buf = 138544386;
    v141 = v131;
    v142 = 2114;
    v143 = autoJobName;
    v144 = 2048;
    v145 = [foundCopy count];
    v146 = 2048;
    v147 = [(__CFString *)summary count];
    v148 = 2048;
    v149 = [v12 count];
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "{%{public}@} (%{public}@)\n[SET-DECIDE-FOUND] set-catalog lookup summary | catalogCount:%lu | patchDescriptorCount:%lu | fullDescriptorCount:%lu", buf, 0x34u);
  }

  v16 = [foundCopy safeStringForKey:@"DownloadedFromLive"];
  v120 = v16;
  if (v16)
  {
    v17 = [[NSURL alloc] initWithString:v16];
  }

  else
  {
    v17 = 0;
  }

  v123 = summary;
  v121 = locationCopy;
  v23 = [foundCopy safeStringForKey:@"CachedAssetSetId"];
  autoAssetSetDescriptor = [(MADAutoAssetJob *)selfCopy3 autoAssetSetDescriptor];
  [autoAssetSetDescriptor setCatalogCachedAssetSetID:v23];

  autoAssetSetDescriptor2 = [(MADAutoAssetJob *)selfCopy3 autoAssetSetDescriptor];
  v119 = v17;
  [autoAssetSetDescriptor2 setCatalogDownloadedFromLive:v17];

  v26 = [foundCopy safeDateForKey:@"lastTimeChecked"];
  autoAssetSetDescriptor3 = [(MADAutoAssetJob *)selfCopy3 autoAssetSetDescriptor];
  [autoAssetSetDescriptor3 setCatalogLastTimeChecked:v26];

  v122 = foundCopy;
  v28 = [foundCopy safeDateForKey:@"postedDate"];
  autoAssetSetDescriptor4 = [(MADAutoAssetJob *)selfCopy3 autoAssetSetDescriptor];
  [autoAssetSetDescriptor4 setCatalogPostedDate:v28];

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
  v34 = selfCopy3;
  do
  {
    for (i = 0; i != v31; i = i + 1)
    {
      if (*v137 != v132)
      {
        objc_enumerationMutation(obj);
      }

      v36 = [obj safeObjectForKey:*(*(&v136 + 1) + 8 * i) ofClass:objc_opt_class()];
      latestAssetDescriptorOnFilesystemBySpecifier = [(MADAutoAssetJob *)v34 latestAssetDescriptorOnFilesystemBySpecifier];
      assetSpecifier = [v36 assetSpecifier];
      v39 = [latestAssetDescriptorOnFilesystemBySpecifier safeObjectForKey:assetSpecifier ofClass:objc_opt_class()];

      v40 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        autoJobName2 = [(MADAutoAssetJob *)v34 autoJobName];
        if (v36)
        {
          summary = [v36 summary];
          v42 = summary;
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
          summary2 = [v39 summary];
          v43 = summary2;
        }

        *buf = 138544130;
        v141 = v33;
        v142 = 2114;
        v143 = autoJobName2;
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
        assetSpecifier2 = [v36 assetSpecifier];
        [v129 setSafeObject:v36 forKey:assetSpecifier2];

        selectorNameWithoutAssetType = [v36 selectorNameWithoutAssetType];
        [v130 appendFormat:@"%@|", selectorNameWithoutAssetType];

        v34 = selfCopy3;
        goto LABEL_40;
      }

      if ([MADAutoAssetSecure isSecureAsset:v131 forDescriptor:v39])
      {
        v47 = [MAAutoAssetSelector alloc];
        assetType = [v39 assetType];
        assetSpecifier3 = [v39 assetSpecifier];
        assetVersion = [v39 assetVersion];
        v51 = [v47 initForAssetType:assetType withAssetSpecifier:assetSpecifier3 matchingAssetVersion:assetVersion];

        if (v51)
        {
          v33 = v131;
          if ([MADAutoAssetSecure isPrePersonalized:v131 forDescriptor:v39])
          {
            prePersonalizedSelectors = [(MADAutoAssetJob *)selfCopy3 prePersonalizedSelectors];
            [prePersonalizedSelectors addObject:v51];

            v53 = v126;
            goto LABEL_37;
          }

          if ([MADAutoAssetSecure isPersonalizationRequired:v131 forDescriptor:v39])
          {
            tryPersonalizeDescriptors = [(MADAutoAssetJob *)selfCopy3 tryPersonalizeDescriptors];
            [tryPersonalizeDescriptors addObject:v39];

            v53 = v125;
LABEL_37:
            selectorNameWithoutAssetType2 = [v39 selectorNameWithoutAssetType];
            [(__CFString *)v53 appendFormat:@"%@|", selectorNameWithoutAssetType2];
          }

          goto LABEL_39;
        }

        [(MADAutoAssetJob *)selfCopy3 trackAnomaly:6101 forReason:@"(%{public}@) unable to initialize alreadyOnFilesystemSelector"];
        v53 = v127;
        v33 = v131;
        goto LABEL_37;
      }

LABEL_39:
      v34 = selfCopy3;
      [(MADAutoAssetJob *)selfCopy3 updateSetDescriptorDownloaded:v33 forAssetDescriptor:v39 justDownloaded:0];
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
    autoJobName3 = [(MADAutoAssetJob *)selfCopy3 autoJobName];
    *buf = 138544898;
    v141 = v131;
    v142 = 2114;
    v143 = autoJobName3;
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

  summary = v123;
  [(MADAutoAssetJob *)selfCopy3 setFoundSetPatchDescriptorsBySpecifier:v123];
  v12 = v129;
  [(MADAutoAssetJob *)selfCopy3 setFoundSetFullDescriptorsBySpecifier:v129];
  newFoundSetDescriptorsAsNewerDiscovered = [(MADAutoAssetJob *)selfCopy3 newFoundSetDescriptorsAsNewerDiscovered];
  [(MADAutoAssetJob *)selfCopy3 setFoundSetNewerDiscoveredAtomicEntries:newFoundSetDescriptorsAsNewerDiscovered];

  foundSetNewerDiscoveredAtomicEntries = [(MADAutoAssetJob *)selfCopy3 foundSetNewerDiscoveredAtomicEntries];
  autoAssetSetDescriptor5 = [(MADAutoAssetJob *)selfCopy3 autoAssetSetDescriptor];
  [autoAssetSetDescriptor5 setDiscoveredAtomicEntries:foundSetNewerDiscoveredAtomicEntries];

  v135 = 0;
  v63 = [(MADAutoAssetJob *)selfCopy3 isSetFoundAlreadyOnFilesystem:v131 justPromotedAnyDescriptor:&v135];
  locationCopy = v121;
  foundCopy = v122;
  if ([(MADAutoAssetJob *)selfCopy3 stagerJob])
  {
    v64 = 1;
  }

  else
  {
    tryPersonalizeDescriptors2 = [(MADAutoAssetJob *)selfCopy3 tryPersonalizeDescriptors];
    v64 = [tryPersonalizeDescriptors2 count] == 0;
  }

  if (v63 || (v118 & 1) == 0 || ([(MADAutoAssetJob *)selfCopy3 newestDownloadedSetStatus], v66 = objc_claimAutoreleasedReturnValue(), v66, !v66))
  {
    [(MADAutoAssetJob *)selfCopy3 setNextSetSpecifierToDownload:0];
    v77 = objc_alloc_init(MANAutoAssetSetNotifications);
    [(MADAutoAssetJob *)selfCopy3 setCurrentSetNotifications:v77];

    currentSetNotifications = [(MADAutoAssetJob *)selfCopy3 currentSetNotifications];
    [currentSetNotifications setAtomicInstanceDiscovered:1];

    currentSetNotifications2 = [(MADAutoAssetJob *)selfCopy3 currentSetNotifications];
    [currentSetNotifications2 setDownloadPending:v63 ^ 1];

    [(MADAutoAssetJob *)selfCopy3 setSetProgressOverallTotalWrittenBytes:0];
    [(MADAutoAssetJob *)selfCopy3 setSetProgressAssetTotalWrittenBytes:0];
    [(MADAutoAssetJob *)selfCopy3 setProgressReadyToStartDownloads];
    locationCopy = v131;
    [(MADAutoAssetJob *)selfCopy3 updateSetResults:v131 atomicInstanceDiscovered:1 availableForUse:v63 & v64 downloading:0 buildingResultSetFound:v63];
    v80 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      autoJobName4 = [(MADAutoAssetJob *)selfCopy3 autoJobName];
      v82 = [v129 count];
      v83 = @"N";
      *buf = 138544130;
      v141 = v131;
      v142 = 2114;
      if (v63)
      {
        v83 = @"Y";
      }

      v143 = autoJobName4;
      v144 = 2048;
      v145 = v82;
      v146 = 2114;
      v147 = v83;
      _os_log_impl(&dword_0, v80, OS_LOG_TYPE_DEFAULT, "{%{public}@} (%{public}@)\n[SET-DECIDE-FOUND] considering potential descriptors | potentialDescriptorCount:%lu | alreadyOnFilesystem:%{public}@", buf, 0x2Au);

      locationCopy = v131;
    }

    [(MADAutoAssetJob *)selfCopy3 latchWhetherDownloadingUserInitiated];
    [(MADAutoAssetJob *)selfCopy3 refreshSetFoundToManager:v63 & v64 fromLocation:locationCopy];
    if (+[MAAIRBEventReporter isAvailable])
    {
      v84 = [MAAIRBMobileAssetOperationMetadata alloc];
      v85 = [MADAutoAssetHistoryTracker operationName:448];
      v86 = [(MAAIRBMobileAssetOperationMetadata *)v84 initWithCode:448 name:v85];

      v87 = [MAAIRBMobileAssetAssetSet alloc];
      setConfiguration = [(MADAutoAssetJob *)selfCopy3 setConfiguration];
      assetSetIdentifier = [setConfiguration assetSetIdentifier];
      v90 = [(MAAIRBMobileAssetAssetSet *)v87 initWithAssetSetIdentifier:assetSetIdentifier];

      setConfiguration2 = [(MADAutoAssetJob *)selfCopy3 setConfiguration];
      autoAssetEntries = [setConfiguration2 autoAssetEntries];
      v93 = [autoAssetEntries count];

      v12 = v129;
      setConfiguration3 = [(MADAutoAssetJob *)selfCopy3 setConfiguration];
      clientDomainName = [setConfiguration3 clientDomainName];

      v96 = +[MAAIRBAppleIntelligenceAssetDeliveryEventType typeSetConfiguration:assetSet:configuredCount:requestedCount:fromPallasCount:clientDomainName:](MAAIRBAppleIntelligenceAssetDeliveryEventType, "typeSetConfiguration:assetSet:configuredCount:requestedCount:fromPallasCount:clientDomainName:", v86, v90, v93, v93, [v129 count], clientDomainName);
      v97 = [[MAAIRBAppleIntelligenceAssetDeliveryEvent alloc] initWithErrors:&__NSArray0__struct type:v96];
      [MAAIRBEventReporter emitAppleIntelligenceEvent:v97];

      summary = v123;
      locationCopy = v131;
    }

    if ([v12 count])
    {
      if (!v63)
      {
        [(MADAutoAssetJob *)selfCopy3 statusChangeSetCatalogFoundNewer:locationCopy];
        clientDomainName2 = [(MADAutoAssetJob *)selfCopy3 clientDomainName];
        autoAssetSetIdentifier = [(MADAutoAssetJob *)selfCopy3 autoAssetSetIdentifier];
        autoAssetUUID = [(MADAutoAssetJob *)selfCopy3 autoAssetUUID];
        [MADAutoAssetControlManager postSetNotificationName:@"ATOMIC_INSTANCE_DISCOVERED" forClientDomainName:clientDomainName2 forAssetSetIdentifier:autoAssetSetIdentifier forAtomicInstanceUUID:autoAssetUUID fromModule:@"AUTO-JOB" fromLocation:v131];

        v110 = [MANAutoAssetSetInfoFound alloc];
        autoAssetSetIdentifier2 = [(MADAutoAssetJob *)selfCopy3 autoAssetSetIdentifier];
        currentSetStatus = [(MADAutoAssetJob *)selfCopy3 currentSetStatus];
        v113 = [(MANAutoAssetSetInfoFound *)v110 initForAssetSetIdentifier:autoAssetSetIdentifier2 reportingStatus:currentSetStatus];
        [(MADAutoAssetJob *)selfCopy3 setResultSetFound:v113];

        resultSetFound = [(MADAutoAssetJob *)selfCopy3 resultSetFound];
        setJobInformation = [(MADAutoAssetJob *)selfCopy3 setJobInformation];
        [setJobInformation setFoundContent:resultSetFound];

        locationCopy = v131;
        v22 = @"SetCatalogFoundNewer";
        goto LABEL_78;
      }

      v98 = selfCopy3;
      v99 = v119;
      if ([(MADAutoAssetJob *)selfCopy3 stagerJob])
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
          autoJobName5 = [(MADAutoAssetJob *)selfCopy3 autoJobName];
          *buf = 138543618;
          v141 = v131;
          v142 = 2114;
          v143 = autoJobName5;
          _os_log_impl(&dword_0, v100, OS_LOG_TYPE_DEFAULT, "{%{public}@} (%{public}@)\n[SET-DECIDE-FOUND] no valid entries in Pallas response", buf, 0x16u);

          locationCopy = v131;
        }

        v22 = @"SetCatalogFoundNone";
        goto LABEL_79;
      }

      if (v101)
      {
        autoJobName6 = [(MADAutoAssetJob *)selfCopy3 autoJobName];
        *buf = 138543618;
        v141 = v131;
        v142 = 2114;
        v143 = autoJobName6;
        _os_log_impl(&dword_0, v100, OS_LOG_TYPE_DEFAULT, "{%{public}@} (%{public}@)\n[SET-DECIDE-FOUND] some in Pallas response already on filesystem (an no newer available) - treat as catalog finding same", buf, 0x16u);
      }

      v98 = selfCopy3;
      if ([(MADAutoAssetJob *)selfCopy3 stagerJob])
      {
LABEL_73:
        locationCopy = v131;
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

    tryPersonalizeDescriptors3 = [(MADAutoAssetJob *)v98 tryPersonalizeDescriptors];
    v104 = [tryPersonalizeDescriptors3 count];

    v98 = selfCopy3;
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
      locationCopy = v131;
      goto LABEL_79;
    }

    goto LABEL_73;
  }

  v67 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    autoJobName7 = [(MADAutoAssetJob *)selfCopy3 autoJobName];
    setConfiguration4 = [(MADAutoAssetJob *)selfCopy3 setConfiguration];
    summary3 = [setConfiguration4 summary];
    *buf = 138543874;
    v141 = v131;
    v142 = 2114;
    v143 = autoJobName7;
    v144 = 2114;
    v145 = summary3;
    _os_log_impl(&dword_0, v67, OS_LOG_TYPE_DEFAULT, "{%{public}@} (%{public}@)\n[SET-DECIDE-FOUND] postponing[RAMPED] setConfiguration:%{public}@", buf, 0x20u);
  }

  [(MADAutoAssetJob *)selfCopy3 setSetDescriptorDiscardRamped:1];
  v71 = [MANAutoAssetSetInfoFound alloc];
  autoAssetSetIdentifier3 = [(MADAutoAssetJob *)selfCopy3 autoAssetSetIdentifier];
  newestDownloadedSetStatus = [(MADAutoAssetJob *)selfCopy3 newestDownloadedSetStatus];
  v74 = [(MANAutoAssetSetInfoFound *)v71 initForAssetSetIdentifier:autoAssetSetIdentifier3 reportingStatus:newestDownloadedSetStatus];
  [(MADAutoAssetJob *)selfCopy3 setResultSetFound:v74];

  resultSetFound2 = [(MADAutoAssetJob *)selfCopy3 resultSetFound];
  setJobInformation2 = [(MADAutoAssetJob *)selfCopy3 setJobInformation];
  [setJobInformation2 setFoundContent:resultSetFound2];

  v22 = @"SetCatalogFoundSame";
  locationCopy = v131;
LABEL_78:
  v99 = v119;
LABEL_79:

LABEL_80:

  return v22;
}

- (BOOL)wasAssetSetSpecifierRequested:(id)requested
{
  requestedCopy = requested;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  setConfiguration = [(MADAutoAssetJob *)self setConfiguration];
  autoAssetEntries = [setConfiguration autoAssetEntries];

  v7 = [autoAssetEntries countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(autoAssetEntries);
        }

        assetSelector = [*(*(&v14 + 1) + 8 * i) assetSelector];
        assetSpecifier = [assetSelector assetSpecifier];
        v12 = [SUCore stringIsEqual:requestedCopy to:assetSpecifier];

        if (v12)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [autoAssetEntries countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)assetSetEntryForAssetMetadata:(id)metadata
{
  v4 = [metadata safeStringForKey:@"AssetSpecifier"];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  setConfiguration = [(MADAutoAssetJob *)self setConfiguration];
  autoAssetEntries = [setConfiguration autoAssetEntries];

  v7 = [autoAssetEntries countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(autoAssetEntries);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        assetSelector = [v10 assetSelector];
        assetSpecifier = [assetSelector assetSpecifier];
        v13 = [SUCore stringIsEqual:v4 to:assetSpecifier];

        if (v13)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [autoAssetEntries countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  selfCopy = self;
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
        foundSetPatchDescriptorsBySpecifier = [(MADAutoAssetJob *)self foundSetPatchDescriptorsBySpecifier];
        v7 = [foundSetPatchDescriptorsBySpecifier safeObjectForKey:v5 ofClass:objc_opt_class()];

        v8 = [MAAutoAssetSelector alloc];
        assetType = [v7 assetType];
        assetSpecifier = [v7 assetSpecifier];
        assetVersion = [v7 assetVersion];
        v12 = [v8 initForAssetType:assetType withAssetSpecifier:assetSpecifier matchingAssetVersion:assetVersion];

        persistedEntryID = [v12 persistedEntryID];
        v14 = [v56 safeObjectForKey:persistedEntryID ofClass:objc_opt_class()];
        if (v14)
        {
          autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
          diag = [autoJobFSM diag];
          v17 = [NSString alloc];
          summary = [v7 summary];
          summary2 = [v14 summary];
          v20 = [v17 initWithFormat:@"{newFoundSetDescriptorsAsNewerDiscovered} (patch) already encountered | nextFoundDescriptor:%@ | alreadyAtomicEntry:%@", summary, summary2];
          [diag trackAnomaly:@"AUTO-SET-JOB" forReason:v20 withResult:6101 withError:0];

          p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
        }

        else
        {
          v21 = objc_alloc(p_weak_ivar_lyt[283]);
          metadata = [v7 metadata];
          autoJobFSM = [v21 initWithFullAssetSelector:v12 withAssetID:0 withLocalContentURL:0 withAssetAttributes:metadata inhibitedFromEmergencyRemoval:0];

          if (autoJobFSM)
          {
            [v56 setSafeObject:autoJobFSM forKey:persistedEntryID];
            [v48 addObject:autoJobFSM];
          }

          else
          {
            autoJobFSM2 = [(MADAutoAssetJob *)selfCopy autoJobFSM];
            diag2 = [autoJobFSM2 diag];
            v25 = [NSString alloc];
            summary3 = [v7 summary];
            v27 = [v25 initWithFormat:@"{newFoundSetDescriptorsAsNewerDiscovered} unable to allocate nextDiscoveredAtomicEntry for patch setDescriptor:%@", summary3];
            [diag2 trackAnomaly:@"AUTO-SET-JOB" forReason:v27 withResult:6101 withError:0];

            p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
          }
        }

        self = selfCopy;
      }

      v53 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
    }

    while (v53);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  foundSetFullDescriptorsBySpecifier = [(MADAutoAssetJob *)self foundSetFullDescriptorsBySpecifier];
  v54 = [foundSetFullDescriptorsBySpecifier countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v54)
  {
    v52 = *v58;
    do
    {
      for (j = 0; j != v54; j = j + 1)
      {
        if (*v58 != v52)
        {
          objc_enumerationMutation(foundSetFullDescriptorsBySpecifier);
        }

        v30 = *(*(&v57 + 1) + 8 * j);
        v31 = objc_autoreleasePoolPush();
        foundSetFullDescriptorsBySpecifier2 = [(MADAutoAssetJob *)self foundSetFullDescriptorsBySpecifier];
        v33 = [foundSetFullDescriptorsBySpecifier2 safeObjectForKey:v30 ofClass:objc_opt_class()];

        v34 = [MAAutoAssetSelector alloc];
        assetType2 = [v33 assetType];
        assetSpecifier2 = [v33 assetSpecifier];
        assetVersion2 = [v33 assetVersion];
        v38 = [v34 initForAssetType:assetType2 withAssetSpecifier:assetSpecifier2 matchingAssetVersion:assetVersion2];

        persistedEntryID2 = [v38 persistedEntryID];
        v40 = [v56 safeObjectForKey:persistedEntryID2 ofClass:objc_opt_class()];
        if (!v40)
        {
          v41 = [MANAutoAssetSetAtomicEntry alloc];
          metadata2 = [v33 metadata];
          v43 = [(MANAutoAssetSetAtomicEntry *)v41 initWithFullAssetSelector:v38 withAssetID:0 withLocalContentURL:0 withAssetAttributes:metadata2 inhibitedFromEmergencyRemoval:0];

          if (v43)
          {
            [v56 setSafeObject:v43 forKey:persistedEntryID2];
            [v48 addObject:v43];
            self = selfCopy;
          }

          else
          {
            obja = [(MADAutoAssetJob *)selfCopy autoJobFSM];
            diag3 = [obja diag];
            v45 = foundSetFullDescriptorsBySpecifier;
            v46 = [[NSString alloc] initWithFormat:@"{newFoundSetDescriptorsAsNewerDiscovered} unable to allocate nextDiscoveredAtomicEntry for full setDescriptor:%@", v33];
            [diag3 trackAnomaly:@"AUTO-SET-JOB" forReason:v46 withResult:6101 withError:0];

            foundSetFullDescriptorsBySpecifier = v45;
            self = selfCopy;
          }
        }

        objc_autoreleasePoolPop(v31);
      }

      v54 = [foundSetFullDescriptorsBySpecifier countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v54);
  }

  return v48;
}

- (void)newFoundSetDescriptorsFromCachedLookup:(id)lookup
{
  lookupCopy = lookup;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v11 = objc_alloc_init(NSMutableDictionary);
  v7 = objc_alloc_init(NSMutableDictionary);
  [(MADAutoAssetJob *)self buildPotentialDescriptors:@"newFoundSetDescriptorsFromCachedLookup" fromLookupResults:lookupCopy buildingPatchDescriptors:v11 andFullDescriptors:v7];

  [(MADAutoAssetJob *)self setFoundSetPatchDescriptorsBySpecifier:v11];
  [(MADAutoAssetJob *)self setFoundSetFullDescriptorsBySpecifier:v7];
  newFoundSetDescriptorsAsNewerDiscovered = [(MADAutoAssetJob *)self newFoundSetDescriptorsAsNewerDiscovered];
  [(MADAutoAssetJob *)self setFoundSetNewerDiscoveredAtomicEntries:newFoundSetDescriptorsAsNewerDiscovered];

  foundSetNewerDiscoveredAtomicEntries = [(MADAutoAssetJob *)self foundSetNewerDiscoveredAtomicEntries];
  autoAssetSetDescriptor = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  [autoAssetSetDescriptor setDiscoveredAtomicEntries:foundSetNewerDiscoveredAtomicEntries];

  [(MADAutoAssetJob *)self rebuildLastestDescriptorsOnFilesystem:@"newFoundSetDescriptorsFromCachedLookup"];
}

- (BOOL)buildPotentialDescriptors:(id)descriptors fromLookupResults:(id)results buildingPatchDescriptors:(id)patchDescriptors andFullDescriptors:(id)fullDescriptors
{
  descriptorsCopy = descriptors;
  resultsCopy = results;
  patchDescriptorsCopy = patchDescriptors;
  fullDescriptorsCopy = fullDescriptors;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v15 = [resultsCopy safeStringForKey:@"AssetType"];
  selfCopy = self;
  autoAssetSetAssetType = [(MADAutoAssetJob *)self autoAssetSetAssetType];
  v16 = [resultsCopy safeObjectForKey:@"Assets" ofClass:objc_opt_class()];
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
    v60 = selfCopy;
    v61 = descriptorsCopy;
    v62 = 6102;
    goto LABEL_51;
  }

  if (([SUCore stringIsEqual:v15 to:autoAssetSetAssetType]& 1) == 0)
  {
    v59 = [[NSString alloc] initWithFormat:@"auto-asset catalog for wrong assetType | catalog:%@, expecting:%@", v15, autoAssetSetAssetType];
    v60 = selfCopy;
    v61 = descriptorsCopy;
    v62 = 6108;
LABEL_51:
    [(MADAutoAssetJob *)v60 statusChange:v61 catalogAnomaly:v62 forReason:v59];
    goto LABEL_52;
  }

  if (![v17 count])
  {
    latestInstalledAssetVersion = [(MADAutoAssetJob *)selfCopy latestInstalledAssetVersion];

    if (latestInstalledAssetVersion)
    {
      v65 = [NSString alloc];
      latestInstalledAssetVersion2 = [(MADAutoAssetJob *)selfCopy latestInstalledAssetVersion];
      v67 = [v65 initWithFormat:@"successful catalog download yet no assets in catalog | have installed atomic-instance:%@ | REVOKED", latestInstalledAssetVersion2];
      [(MADAutoAssetJob *)selfCopy statusChange:descriptorsCopy catalogFailure:6110 forReason:v67];

      goto LABEL_53;
    }

    v59 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      autoJobName = [(MADAutoAssetJob *)selfCopy autoJobName];
      *buf = 138543618;
      v98 = autoJobName;
      v99 = 2114;
      v100 = descriptorsCopy;
      _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEFAULT, "%{public}@ | {%{public}@} no assets provided (and no latest-installed atomic-instance)", buf, 0x16u);
    }

LABEL_52:

LABEL_53:
    v84 = 0;
    goto LABEL_54;
  }

  v73 = v15;
  v74 = resultsCopy;
  v82 = patchDescriptorsCopy;
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
  v81 = fullDescriptorsCopy;
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
  v22 = autoAssetSetAssetType;
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
          assetSpecifier = [v30 assetSpecifier];
          v32 = [(MADAutoAssetJob *)selfCopy wasAssetSetSpecifierRequested:assetSpecifier];

          if ((v32 & 1) == 0)
          {
            selectorNameWithoutAssetType = [v30 selectorNameWithoutAssetType];
            [v83 appendFormat:@"%@|", selectorNameWithoutAssetType];

            goto LABEL_32;
          }

          v33 = -[MADAutoAssetJob preferenceAsIfRampOrUse:](selfCopy, "preferenceAsIfRampOrUse:", [v30 isRamped]);
          v34 = v87;
          if (v87)
          {
            if ((v84 & 1) != v33)
            {
              v35 = _MADLog(@"AutoJob");
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
              {
                autoJobName2 = [(MADAutoAssetJob *)selfCopy autoJobName];
                summary = [v30 summary];
                *buf = 138543874;
                v98 = autoJobName2;
                v99 = 2114;
                v100 = descriptorsCopy;
                v101 = 2114;
                v102 = summary;
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
          isPatch = [v30 isPatch];
          assetSpecifier2 = [v30 assetSpecifier];
          v42 = objc_opt_class();
          if (isPatch)
          {
            v43 = [v82 safeObjectForKey:assetSpecifier2 ofClass:v42];

            if (v43)
            {
              if ([(MADAutoAssetJob *)selfCopy isMorePreferredFormat:v30 comparedTo:v43])
              {
                assetSpecifier3 = [v30 assetSpecifier];
                [v82 setSafeObject:v30 forKey:assetSpecifier3];

                selectorNameWithoutAssetType2 = [v30 selectorNameWithoutAssetType];
                [v78 appendFormat:@"%@|", selectorNameWithoutAssetType2];
              }

              else
              {
                selectorNameWithoutAssetType2 = _MADLog(@"AutoJob");
                if (os_log_type_enabled(selectorNameWithoutAssetType2, OS_LOG_TYPE_DEBUG))
                {
                  autoJobName3 = [(MADAutoAssetJob *)selfCopy autoJobName];
                  summary2 = [v30 summary];
                  *buf = 138543874;
                  v98 = autoJobName3;
                  v99 = 2114;
                  v100 = descriptorsCopy;
                  v101 = 2114;
                  v102 = summary2;
                  v52 = summary2;
                  _os_log_impl(&dword_0, selectorNameWithoutAssetType2, OS_LOG_TYPE_DEBUG, "%{public}@ | {%{public}@} filtering out asset (additional patch of less-preferred format) | filtered:%{public}@", buf, 0x20u);
                }
              }
            }

            else
            {
              assetSpecifier4 = [v30 assetSpecifier];
              [v82 setSafeObject:v30 forKey:assetSpecifier4];

              selectorNameWithoutAssetType2 = [v30 selectorNameWithoutAssetType];
              [v80 appendFormat:@"%@|", selectorNameWithoutAssetType2];
            }

LABEL_32:
            v21 = v85;
            v22 = autoAssetSetAssetType;
          }

          else
          {
            v46 = [v81 safeObjectForKey:assetSpecifier2 ofClass:v42];

            if (v46)
            {
              if ([(MADAutoAssetJob *)selfCopy isMorePreferredFormat:v30 comparedTo:v46])
              {
                assetSpecifier5 = [v30 assetSpecifier];
                [v81 setSafeObject:v30 forKey:assetSpecifier5];

                selectorNameWithoutAssetType3 = [v30 selectorNameWithoutAssetType];
                [v77 appendFormat:@"%@|", selectorNameWithoutAssetType3];
              }

              else
              {
                selectorNameWithoutAssetType3 = _MADLog(@"AutoJob");
                if (os_log_type_enabled(selectorNameWithoutAssetType3, OS_LOG_TYPE_DEBUG))
                {
                  autoJobName4 = [(MADAutoAssetJob *)selfCopy autoJobName];
                  summary3 = [v30 summary];
                  *buf = 138543874;
                  v98 = autoJobName4;
                  v99 = 2114;
                  v100 = descriptorsCopy;
                  v101 = 2114;
                  v102 = summary3;
                  v54 = summary3;
                  _os_log_impl(&dword_0, selectorNameWithoutAssetType3, OS_LOG_TYPE_DEBUG, "%{public}@ | {%{public}@} filtering out asset (additional full of less-preferred format) | filtered:%{public}@", buf, 0x20u);
                }
              }
            }

            else
            {
              assetSpecifier6 = [v30 assetSpecifier];
              [v81 setSafeObject:v30 forKey:assetSpecifier6];

              selectorNameWithoutAssetType3 = [v30 selectorNameWithoutAssetType];
              [v79 appendFormat:@"%@|", selectorNameWithoutAssetType3];
            }

            v21 = v85;

            v22 = autoAssetSetAssetType;
          }
        }

        else
        {
          v38 = [[NSString alloc] initWithFormat:@"{%@} auto-asset metadata considered invalid | %@", descriptorsCopy, v26];
          [(MADAutoAssetJob *)selfCopy trackAnomaly:6108 forReason:v38];

          ++v88;
        }

        goto LABEL_36;
      }

      ++v20;
      v26 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        autoJobName5 = [(MADAutoAssetJob *)selfCopy autoJobName];
        safeSummary = [v24 safeSummary];
        *buf = 138543874;
        v98 = autoJobName5;
        v99 = 2114;
        v100 = descriptorsCopy;
        v101 = 2114;
        v102 = safeSummary;
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
    autoJobName6 = [(MADAutoAssetJob *)selfCopy autoJobName];
    v70 = @"N";
    *buf = 138546178;
    v98 = autoJobName6;
    if (v84)
    {
      v70 = @"Y";
    }

    v99 = 2114;
    v100 = descriptorsCopy;
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

  resultsCopy = v74;
  fullDescriptorsCopy = v81;
  patchDescriptorsCopy = v82;
  v17 = v72;
LABEL_54:

  return v84 & 1;
}

- (void)appendUniqueSelectorForDescriptor:(id)descriptor toArray:(id)array
{
  descriptorCopy = descriptor;
  arrayCopy = array;
  v7 = [MAAutoAssetSelector alloc];
  assetType = [descriptorCopy assetType];
  v28 = descriptorCopy;
  assetSpecifier = [descriptorCopy assetSpecifier];
  v10 = [v7 initForAssetType:assetType withAssetSpecifier:assetSpecifier];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = arrayCopy;
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
        assetType2 = [v10 assetType];
        assetType3 = [v17 assetType];
        if ([v18 stringIsEqual:assetType2 to:assetType3])
        {
          v21 = p_weak_ivar_lyt[223];
          [v10 assetSpecifier];
          v22 = v10;
          v23 = v14;
          v24 = p_weak_ivar_lyt;
          v26 = v25 = v11;
          assetSpecifier2 = [v17 assetSpecifier];
          LOBYTE(v21) = [v21 stringIsEqual:v26 to:assetSpecifier2];

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

- (void)refreshSetFoundToManager:(BOOL)manager fromLocation:(id)location
{
  locationCopy = location;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  locationCopy = [[NSString alloc] initWithFormat:@"%@:refreshSetFoundToManager", locationCopy];
  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    autoAssetSetDescriptor = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    v10 = [autoAssetSetDescriptor copy];
    currentSetStatus = [(MADAutoAssetJob *)self currentSetStatus];
    firstClientName = [(MADAutoAssetJob *)self firstClientName];
    v13 = [MADAutoAssetControlManager persistSetJobDescriptor:v10 withCurrentSetStatus:currentSetStatus withFirstClientName:firstClientName fromLocation:locationCopy];

    if (v13)
    {
      [(MADAutoAssetJob *)self setBecameLatestToVend:1];
      v14 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        autoJobName = [(MADAutoAssetJob *)self autoJobName];
        *buf = 138543618;
        v17 = locationCopy;
        v18 = 2114;
        v19 = autoJobName;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "{%{public}@ (%{public}@)\n[SET-FOUND] set-job just became set-configuration's latest-to-vend", buf, 0x16u);
      }
    }
  }

  else
  {
    [(MADAutoAssetJob *)self statusChange:locationCopy catalogAnomaly:6103 forReason:@"refreshSetFoundToManager should only execute for set-job"];
  }
}

- (void)rebuildLastestDescriptorsOnFilesystem:(id)filesystem
{
  filesystemCopy = filesystem;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v43 = filesystemCopy;
  filesystemCopy = [[NSString alloc] initWithFormat:@"%@:rebuildLastestDescriptorsOnFilesystem", filesystemCopy];
  v7 = objc_alloc_init(NSMutableDictionary);
  [(MADAutoAssetJob *)self setLatestAssetDescriptorOnFilesystemBySpecifier:v7];

  v8 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    autoJobName = [(MADAutoAssetJob *)self autoJobName];
    *buf = 138543618;
    v60 = autoJobName;
    v61 = 2114;
    v62 = filesystemCopy;
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
    selfCopy = self;
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
        fullAssetSelector = [*(*(&v55 + 1) + 8 * v14) fullAssetSelector];
        v17 = [v15 loadDescriptorsForJobSelector:fullAssetSelector promotingIfCurrentlyStaged:0 immediatelyPromotedDescriptor:0];

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
              assetVersion = [v34 assetVersion];
              v33 = [v35 initWithRestoreVersion:assetVersion];
              goto LABEL_19;
            }

            v29 = [SUCoreRestoreVersion alloc];
            assetVersion2 = [v28 assetVersion];
            assetVersion = [v29 initWithRestoreVersion:assetVersion2];

            if ([assetVersion isComparable:v21] && objc_msgSend(assetVersion, "compare:", v21) == &dword_0 + 1)
            {
              v32 = v28;

              v33 = assetVersion;
              assetVersion = v33;
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
            latestAssetDescriptorOnFilesystemBySpecifier = [(MADAutoAssetJob *)selfCopy latestAssetDescriptorOnFilesystemBySpecifier];
            assetSpecifier = [v22 assetSpecifier];
            [latestAssetDescriptorOnFilesystemBySpecifier setSafeObject:v22 forKey:assetSpecifier];

            v18 = _MADLog(@"AutoJob");
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              autoJobName2 = [(MADAutoAssetJob *)selfCopy autoJobName];
              selectorName = [v22 selectorName];
              *buf = 138543874;
              v60 = autoJobName2;
              v61 = 2114;
              v62 = filesystemCopy;
              v63 = 2114;
              v64 = selectorName;
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
              autoJobName2 = [(MADAutoAssetJob *)selfCopy autoJobName];
              selectorName = [v22 selectorName];
              *buf = 138543874;
              v60 = autoJobName2;
              v61 = 2114;
              v62 = filesystemCopy;
              v63 = 2114;
              v64 = selectorName;
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

- (BOOL)isSetFoundAlreadyOnFilesystem:(id)filesystem justPromotedAnyDescriptor:(BOOL *)descriptor
{
  filesystemCopy = filesystem;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  filesystemCopy = [[NSString alloc] initWithFormat:@"%@:isSetFoundAlreadyOnFilesystem", filesystemCopy];
  foundSetNewerDiscoveredAtomicEntries = [(MADAutoAssetJob *)self foundSetNewerDiscoveredAtomicEntries];
  v11 = [foundSetNewerDiscoveredAtomicEntries count];

  if (!v11)
  {
    v43 = 0;
    if (!descriptor)
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
  descriptorCopy = descriptor;
  selfCopy = self;
  v47 = filesystemCopy;
  v49 = filesystemCopy;
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
      fullAssetSelector = [v14 fullAssetSelector];
      v58 = v14;
      fullAssetSelector2 = [v14 fullAssetSelector];
      v65 = 0;
      v17 = [MADAutoAssetControlManager loadDescriptorsForJobSelector:fullAssetSelector promotingIfCurrentlyStaged:fullAssetSelector2 immediatelyPromotedDescriptor:&v65];
      v18 = v65;

      if (v18)
      {
        [(MADAutoAssetJob *)self updateSetDescriptorDownloaded:filesystemCopy forAssetDescriptor:v18 justDownloaded:0];
        if (![(MADAutoAssetJob *)self stagerJob]&& [MADAutoAssetSecure isPersonalizationRequired:v47 forDescriptor:v18])
        {
          tryPersonalizeDescriptors = [(MADAutoAssetJob *)self tryPersonalizeDescriptors];
          [tryPersonalizeDescriptors addObject:v18];

          tryPersonalizePromoted = [(MADAutoAssetJob *)self tryPersonalizePromoted];
          assetId = [v18 assetId];
          [tryPersonalizePromoted addObject:assetId];

          v22 = _MADLog(@"AutoJob");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            autoJobName = [(MADAutoAssetJob *)self autoJobName];
            selectorName = [v18 selectorName];
            *buf = 138543874;
            v72 = autoJobName;
            v73 = 2114;
            v74 = filesystemCopy;
            v75 = 2114;
            v76 = selectorName;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-SECURE][AUTO-PERSONALIZATION][SET-JOB-TRY] {%{public}@:} secure auto-asset just immediate-promoted from staged (requires personalization) | selector:%{public}@", buf, 0x20u);
          }
        }

        v51 = 1;
      }

      if (!v17 || ![v17 count])
      {

LABEL_41:
        v43 = 0;
        descriptor = descriptorCopy;
        filesystemCopy = v47;
LABEL_42:
        LOBYTE(v11) = v51;
        if (!descriptor)
        {
          goto LABEL_44;
        }

LABEL_43:
        *descriptor = v11 & 1;
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
        assetType = [v31 assetType];
        fullAssetSelector3 = [v28 fullAssetSelector];
        assetType2 = [fullAssetSelector3 assetType];
        if (![v32 stringIsEqual:assetType to:assetType2])
        {
          goto LABEL_29;
        }

        v36 = p_weak_ivar_lyt[223];
        assetSpecifier = [v31 assetSpecifier];
        fullAssetSelector4 = [v28 fullAssetSelector];
        assetSpecifier2 = [fullAssetSelector4 assetSpecifier];
        if (![v36 stringIsEqual:assetSpecifier to:assetSpecifier2])
        {
          goto LABEL_28;
        }

        v56 = assetSpecifier;
        assetVersion = [v31 assetVersion];
        fullAssetSelector5 = [v58 fullAssetSelector];
        assetVersion2 = [fullAssetSelector5 assetVersion];
        if (![SUCore stringIsEqual:assetVersion to:assetVersion2])
        {

          assetSpecifier = v56;
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
          descriptor = descriptorCopy;
          filesystemCopy = v47;
          filesystemCopy = v49;
          goto LABEL_42;
        }
      }

      v13 = v52 + 1;
      filesystemCopy = v49;
      self = selfCopy;
      if ((v52 + 1) != v48)
      {
        continue;
      }

      break;
    }

    descriptor = descriptorCopy;
    filesystemCopy = v47;
    v48 = [obj countByEnumeratingWithState:&v66 objects:v77 count:16];
    LODWORD(v11) = v51;
    if (v48)
    {
      continue;
    }

    break;
  }

LABEL_35:

  [(MADAutoAssetJob *)self rebuildLastestDescriptorsOnFilesystem:filesystemCopy];
  v43 = 1;
  if (descriptor)
  {
    goto LABEL_43;
  }

LABEL_44:

  return v43;
}

- (void)statusChangeSetCatalogFoundSame:(id)same
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {

    [(MADAutoAssetJob *)self statusChange:@"statusChangeSetCatalogFoundSame" catalogAnomaly:6103 forReason:@"statusChangeSetCatalogFoundSame should only execute for set-job"];
  }
}

- (void)updateSetTrackingWithSuccessfulAssetDownload
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    autoAssetSetDescriptor = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    if (autoAssetSetDescriptor && (autoJobFSM = autoAssetSetDescriptor, [(MADAutoAssetJob *)self downloadingAssetDescriptor], v7 = objc_claimAutoreleasedReturnValue(), v7, autoJobFSM, v7))
    {
      downloadingAssetDescriptor = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
      [(MADAutoAssetJob *)self updateSetDescriptorDownloaded:@"updateSetTrackingWithSuccessfulAssetDownload" forAssetDescriptor:downloadingAssetDescriptor justDownloaded:1];
    }

    else
    {
      v8 = [NSString alloc];
      downloadingAssetDescriptor = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      if (downloadingAssetDescriptor)
      {
        autoJobFSM = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
        summary = [autoJobFSM summary];
      }

      else
      {
        summary = @"N";
      }

      downloadingAssetDescriptor2 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
      if (downloadingAssetDescriptor2)
      {
        downloadingAssetDescriptor3 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
        summary2 = [downloadingAssetDescriptor3 summary];
      }

      else
      {
        summary2 = @"N";
      }

      v12 = [v8 initWithFormat:@"{updateSetTrackingWithSuccessfulAssetDownload} MISSING | autoAssetSetDescriptor:%@, downloadingAssetDescriptor:%@", summary, summary2];
      [(MADAutoAssetJob *)self trackAnomaly:6111 forReason:v12];

      if (downloadingAssetDescriptor2)
      {
      }

      if (downloadingAssetDescriptor)
      {
      }
    }
  }

  else
  {

    [(MADAutoAssetJob *)self statusChange:@"updateSetTrackingWithSuccessfulAssetDownload" catalogAnomaly:6103 forReason:@"updateSetTrackingWithSuccessfulAssetDownload should only execute for set-job"];
  }
}

- (void)updateSetDescriptorDownloaded:(id)downloaded forAssetDescriptor:(id)descriptor justDownloaded:(BOOL)justDownloaded
{
  justDownloadedCopy = justDownloaded;
  descriptorCopy = descriptor;
  downloadedCopy = downloaded;
  downloadedCopy = [[NSString alloc] initWithFormat:@"%@:updateSetDescriptorDownloaded", downloadedCopy];

  autoAssetSetDescriptor = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  latestDowloadedAtomicInstanceEntries = [autoAssetSetDescriptor latestDowloadedAtomicInstanceEntries];

  if (latestDowloadedAtomicInstanceEntries)
  {
    v12 = [NSMutableArray alloc];
    autoAssetSetDescriptor2 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    latestDowloadedAtomicInstanceEntries2 = [autoAssetSetDescriptor2 latestDowloadedAtomicInstanceEntries];
    v15 = [v12 initWithArray:latestDowloadedAtomicInstanceEntries2];
  }

  else
  {
    v15 = objc_alloc_init(NSMutableArray);
  }

  v16 = [MAAutoAssetSelector alloc];
  assetType = [descriptorCopy assetType];
  assetSpecifier = [descriptorCopy assetSpecifier];
  assetVersion = [descriptorCopy assetVersion];
  v20 = [v16 initForAssetType:assetType withAssetSpecifier:assetSpecifier matchingAssetVersion:assetVersion];

  assetType2 = [descriptorCopy assetType];
  assetId = [descriptorCopy assetId];
  v23 = getAutoLocalUrlFromTypeAndIdWithPurpose(assetType2, assetId, 2, @"auto");

  v24 = [MANAutoAssetSetAtomicEntry alloc];
  assetId2 = [descriptorCopy assetId];
  metadata = [descriptorCopy metadata];
  v27 = [(MANAutoAssetSetAtomicEntry *)v24 initWithFullAssetSelector:v20 withAssetID:assetId2 withLocalContentURL:v23 withAssetAttributes:metadata inhibitedFromEmergencyRemoval:0];

  if (v27)
  {
    if ([(MADAutoAssetJob *)self isAtomicEntry:v27 alreadyInAtomicEntries:v15])
    {
      v28 = [NSString alloc];
      summary = [(MANAutoAssetSetAtomicEntry *)v27 summary];
      summary2 = [descriptorCopy summary];
      v31 = [v28 initWithFormat:@"{%@} downloaded atomic-entry already tracked (ignoring duplicate) | downloadedAtomicEntry:%@, downloadedAssetDescriptor:%@", downloadedCopy, summary, summary2];
      [(MADAutoAssetJob *)self trackAnomaly:6109 forReason:v31];
    }

    else
    {
      [v15 addObject:v27];
    }

    v32 = [(MADAutoAssetJob *)self dedupAtomicEntries:v15];
    autoAssetSetDescriptor3 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    [autoAssetSetDescriptor3 setLatestDowloadedAtomicInstanceEntries:v32];

    if (justDownloadedCopy)
    {
      downloadingAssetDescriptor = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
      metadata2 = [downloadingAssetDescriptor metadata];
      v36 = [metadata2 safeIntegerForKey:@"_UnarchivedSize"];

      if ([descriptorCopy downloadedNetworkBytes] <= 0 && v36 >= 1)
      {
        [descriptorCopy setDownloadedNetworkBytes:v36];
      }

      if ([descriptorCopy downloadedFilesystemBytes] <= 0 && v36 >= 1)
      {
        [descriptorCopy setDownloadedFilesystemBytes:v36];
      }

      if ([descriptorCopy downloadedNetworkBytes] >= 1)
      {
        autoAssetSetDescriptor4 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
        downloadedNetworkBytes = [autoAssetSetDescriptor4 downloadedNetworkBytes];

        if ((downloadedNetworkBytes & 0x8000000000000000) != 0)
        {
          downloadedNetworkBytes2 = [descriptorCopy downloadedNetworkBytes];
          autoAssetSetDescriptor5 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
          autoAssetSetDescriptor6 = autoAssetSetDescriptor5;
          v41 = downloadedNetworkBytes2;
        }

        else
        {
          autoAssetSetDescriptor6 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
          downloadedNetworkBytes3 = [descriptorCopy downloadedNetworkBytes];
          v41 = &downloadedNetworkBytes3[[autoAssetSetDescriptor6 downloadedNetworkBytes]];
          autoAssetSetDescriptor5 = autoAssetSetDescriptor6;
        }

        [autoAssetSetDescriptor5 setDownloadedNetworkBytes:v41];
      }

      if ([descriptorCopy downloadedFilesystemBytes] >= 1)
      {
        autoAssetSetDescriptor7 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
        downloadedFilesystemBytes = [autoAssetSetDescriptor7 downloadedFilesystemBytes];

        if ((downloadedFilesystemBytes & 0x8000000000000000) != 0)
        {
          downloadedFilesystemBytes2 = [descriptorCopy downloadedFilesystemBytes];
          autoAssetSetDescriptor8 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
          autoAssetSetDescriptor9 = autoAssetSetDescriptor8;
          v48 = downloadedFilesystemBytes2;
        }

        else
        {
          autoAssetSetDescriptor9 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
          downloadedFilesystemBytes3 = [descriptorCopy downloadedFilesystemBytes];
          v48 = &downloadedFilesystemBytes3[[autoAssetSetDescriptor9 downloadedFilesystemBytes]];
          autoAssetSetDescriptor8 = autoAssetSetDescriptor9;
        }

        [autoAssetSetDescriptor8 setDownloadedFilesystemBytes:v48];
      }
    }
  }

  [(MADAutoAssetJob *)self updateSetResults:downloadedCopy atomicInstanceDiscovered:1 availableForUse:0 downloading:1 buildingResultSetFound:0];
}

- (void)updateAutoAssetSetDescriptor
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    autoAssetSetDescriptor = [(MADAutoAssetJob *)self autoAssetSetDescriptor];

    if (autoAssetSetDescriptor)
    {
      currentSetStatus = [(MADAutoAssetJob *)self currentSetStatus];
      latestDownloadedAtomicInstance = [currentSetStatus latestDownloadedAtomicInstance];
      autoAssetSetDescriptor2 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      [autoAssetSetDescriptor2 setIsOnFilesystem:latestDownloadedAtomicInstance != 0];

      autoAssetSetDescriptor3 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      [autoAssetSetDescriptor3 setOnFilesystemIncomplete:0];

      currentSetStatus2 = [(MADAutoAssetJob *)self currentSetStatus];
      latestDownloadedAtomicInstance2 = [currentSetStatus2 latestDownloadedAtomicInstance];
      autoAssetSetDescriptor4 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      [autoAssetSetDescriptor4 setIsDiscoveredFullyDownloaded:latestDownloadedAtomicInstance2 != 0];

      autoAssetSetDescriptor5 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      [autoAssetSetDescriptor5 setNeverBeenLocked:0];

      currentSetStatus3 = [(MADAutoAssetJob *)self currentSetStatus];
      downloadUserInitiated = [currentSetStatus3 downloadUserInitiated];
      autoAssetSetDescriptor6 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      [autoAssetSetDescriptor6 setDownloadUserInitiated:downloadUserInitiated];

      currentSetStatus4 = [(MADAutoAssetJob *)self currentSetStatus];
      downloadedNetworkBytes = [currentSetStatus4 downloadedNetworkBytes];
      autoAssetSetDescriptor7 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      [autoAssetSetDescriptor7 setDownloadedNetworkBytes:downloadedNetworkBytes];

      currentSetStatus5 = [(MADAutoAssetJob *)self currentSetStatus];
      downloadedFilesystemBytes = [currentSetStatus5 downloadedFilesystemBytes];
      autoAssetSetDescriptor8 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      [autoAssetSetDescriptor8 setDownloadedFilesystemBytes:downloadedFilesystemBytes];

      autoAssetSetDescriptor9 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      [autoAssetSetDescriptor9 setStagedPriorToAvailable:0];

      v24 = [MANAutoAssetSetInfoFound alloc];
      autoAssetSetIdentifier = [(MADAutoAssetJob *)self autoAssetSetIdentifier];
      currentSetStatus6 = [(MADAutoAssetJob *)self currentSetStatus];
      v27 = [(MANAutoAssetSetInfoFound *)v24 initForAssetSetIdentifier:autoAssetSetIdentifier reportingStatus:currentSetStatus6];
      [(MADAutoAssetJob *)self setResultSetFound:v27];

      currentSetStatus7 = [(MADAutoAssetJob *)self currentSetStatus];
      v29 = [currentSetStatus7 copy];
      setJobInformation = [(MADAutoAssetJob *)self setJobInformation];
      [setJobInformation setCurrentSetStatus:v29];

      resultSetFound = [(MADAutoAssetJob *)self resultSetFound];
      setJobInformation2 = [(MADAutoAssetJob *)self setJobInformation];
      [setJobInformation2 setFoundContent:resultSetFound];

      autoAssetSetDescriptor10 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      setJobInformation3 = [(MADAutoAssetJob *)self setJobInformation];
      [setJobInformation3 setSetDescriptor:autoAssetSetDescriptor10];

      return;
    }

    assignedSetDescriptor = [(MADAutoAssetJob *)self assignedSetDescriptor];

    if (assignedSetDescriptor)
    {
      if ([(MADAutoAssetJob *)self anomalyNoActiveSetDescriptor])
      {
        return;
      }

      [(MADAutoAssetJob *)self setAnomalyNoActiveSetDescriptor:1];
      v34 = @"no auto-asset-set-descriptor for reporting set-job status to auto-control-manager";
      selfCopy2 = self;
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

  selfCopy2 = self;
  v36 = 6103;
LABEL_8:

  [(MADAutoAssetJob *)selfCopy2 statusChange:@"updateAutoAssetSetDescriptor" catalogAnomaly:v36 forReason:v34];
}

- (id)newAtomicInstancesDownloadedForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  latestDownloadedAtomicInstance = [descriptorCopy latestDownloadedAtomicInstance];

  if (latestDownloadedAtomicInstance)
  {
    latestDownloadedAtomicInstance = objc_alloc_init(NSMutableArray);
    latestDownloadedAtomicInstance2 = [descriptorCopy latestDownloadedAtomicInstance];
    [latestDownloadedAtomicInstance addObject:latestDownloadedAtomicInstance2];
  }

  return latestDownloadedAtomicInstance;
}

- (BOOL)remainingSetDescriptorToBeDownloaded
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  setConfiguration = [(MADAutoAssetJob *)self setConfiguration];
  autoAssetEntries = [setConfiguration autoAssetEntries];
  v7 = [autoAssetEntries count];

  nextSetSpecifierToDownload = [(MADAutoAssetJob *)self nextSetSpecifierToDownload];
  v10 = nextSetSpecifierToDownload < v7;
  if (nextSetSpecifierToDownload < v7)
  {
    *&v9 = 138543618;
    v27 = v9;
    while (1)
    {
      setConfiguration2 = [(MADAutoAssetJob *)self setConfiguration];
      autoAssetEntries2 = [setConfiguration2 autoAssetEntries];
      v13 = [autoAssetEntries2 objectAtIndex:{-[MADAutoAssetJob nextSetSpecifierToDownload](self, "nextSetSpecifierToDownload")}];

      foundSetFullDescriptorsBySpecifier = [(MADAutoAssetJob *)self foundSetFullDescriptorsBySpecifier];
      assetSelector = [v13 assetSelector];
      assetSpecifier = [assetSelector assetSpecifier];
      v17 = [foundSetFullDescriptorsBySpecifier safeObjectForKey:assetSpecifier ofClass:objc_opt_class()];

      foundSetPatchDescriptorsBySpecifier = [(MADAutoAssetJob *)self foundSetPatchDescriptorsBySpecifier];
      assetSelector2 = [v13 assetSelector];
      assetSpecifier2 = [assetSelector2 assetSpecifier];
      v21 = [foundSetPatchDescriptorsBySpecifier safeObjectForKey:assetSpecifier2 ofClass:objc_opt_class()];

      if (v17 | v21)
      {
        break;
      }

      v22 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        autoJobName = [(MADAutoAssetJob *)self autoJobName];
        summary = [v13 summary];
        *buf = v27;
        v29 = autoJobName;
        v30 = 2114;
        v31 = summary;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ | {remainingSetDescriptorToBeDownloaded} no newer to download | skipping nextEntryToDownload:%{public}@", buf, 0x16u);
      }

      [(MADAutoAssetJob *)self setNextSetSpecifierToDownload:[(MADAutoAssetJob *)self nextSetSpecifierToDownload]+ 1];
      nextSetSpecifierToDownload2 = [(MADAutoAssetJob *)self nextSetSpecifierToDownload];
      v10 = nextSetSpecifierToDownload2 < v7;
      if (nextSetSpecifierToDownload2 >= v7)
      {
        return v10;
      }
    }
  }

  return v10;
}

- (BOOL)placeNextSetAssetDescriptorToDownload:(id)download restrictToFull:(BOOL)full error:(id *)error
{
  downloadCopy = download;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  setConfiguration = [(MADAutoAssetJob *)self setConfiguration];
  autoAssetEntries = [setConfiguration autoAssetEntries];
  v12 = [autoAssetEntries count];

  if ([(MADAutoAssetJob *)self nextSetSpecifierToDownload]>= v12)
  {
    errorCopy = error;
    downloadCopy = [[NSString alloc] initWithFormat:@"AUTO-SET-JOB(%@)", downloadCopy];
    v71 = downloadCopy;
    downloadCopy2 = [[NSString alloc] initWithFormat:@"no next specifier to download (at location %@)", downloadCopy];
    v36 = [MAAutoAssetError buildError:6108 fromOperation:downloadCopy underlyingError:0 withDescription:downloadCopy2];

    assignedSetDescriptor = [(MADAutoAssetJob *)self assignedSetDescriptor];
    clientDomainName = [assignedSetDescriptor clientDomainName];
    assignedSetDescriptor2 = [(MADAutoAssetJob *)self assignedSetDescriptor];
    assetSetIdentifier = [assignedSetDescriptor2 assetSetIdentifier];
    assignedSetDescriptor3 = [(MADAutoAssetJob *)self assignedSetDescriptor];
    discoveredAtomicInstance = [assignedSetDescriptor3 discoveredAtomicInstance];
    [MADAutoAssetHistory recordFailedOperation:504 fromLayer:2 forClientDomainName:clientDomainName forAssetSetIdentifier:assetSetIdentifier forAtomicInstance:discoveredAtomicInstance failingWithError:v36];

    if (+[MAAIRBEventReporter isAvailable])
    {
      v43 = [MAAIRBMobileAssetOperationMetadata alloc];
      v44 = [MADAutoAssetHistoryTracker operationName:504];
      v70 = [(MAAIRBMobileAssetOperationMetadata *)v43 initWithCode:504 name:v44];

      v45 = [MAAIRBMobileAssetAtomicInstance alloc];
      v46 = [MAAIRBMobileAssetAssetSet alloc];
      assignedSetDescriptor4 = [(MADAutoAssetJob *)self assignedSetDescriptor];
      assetSetIdentifier2 = [assignedSetDescriptor4 assetSetIdentifier];
      v49 = [(MAAIRBMobileAssetAssetSet *)v46 initWithAssetSetIdentifier:assetSetIdentifier2];
      assignedSetDescriptor5 = [(MADAutoAssetJob *)self assignedSetDescriptor];
      discoveredAtomicInstance2 = [assignedSetDescriptor5 discoveredAtomicInstance];
      v52 = [(MAAIRBMobileAssetAtomicInstance *)v45 initWithAssetSet:v49 atomicInstanceId:discoveredAtomicInstance2];

      v53 = [MAAIRBAppleIntelligenceAssetDeliveryEventType typeAtomicInstance:v70 atomicInstance:v52 assetCount:0];
      v54 = [MAAIRBAppleIntelligenceAssetDeliveryEvent alloc];
      v75 = v36;
      v55 = [NSArray arrayWithObjects:&v75 count:1];
      v56 = [(MAAIRBAppleIntelligenceAssetDeliveryEvent *)v54 initWithErrors:v55 type:v53];

      [MAAIRBEventReporter emitAppleIntelligenceEvent:v56];
    }

    autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
    diag = [autoJobFSM2 diag];
    v59 = [[NSString alloc] initWithFormat:@"{placeNextSetAssetDescriptorToDownload} no next to place | nextSetSpecifierToDownload:%ld, autoAssetEntries:%ld", -[MADAutoAssetJob nextSetSpecifierToDownload](self, "nextSetSpecifierToDownload"), v12];
    [diag trackAnomaly:@"AUTO-SET-JOB" forReason:v59 withResult:6108 withError:v36];

    v29 = 0;
    downloadCopy = v71;
    error = errorCopy;
    if (errorCopy)
    {
      goto LABEL_13;
    }
  }

  else
  {
    setConfiguration2 = [(MADAutoAssetJob *)self setConfiguration];
    autoAssetEntries2 = [setConfiguration2 autoAssetEntries];
    v15 = [autoAssetEntries2 objectAtIndex:{-[MADAutoAssetJob nextSetSpecifierToDownload](self, "nextSetSpecifierToDownload")}];

    foundSetPatchDescriptorsBySpecifier = [(MADAutoAssetJob *)self foundSetPatchDescriptorsBySpecifier];
    assetSelector = [v15 assetSelector];
    assetSpecifier = [assetSelector assetSpecifier];
    v19 = [foundSetPatchDescriptorsBySpecifier safeObjectForKey:assetSpecifier ofClass:objc_opt_class()];
    [(MADAutoAssetJob *)self setFoundNewerPatch:v19];

    foundSetFullDescriptorsBySpecifier = [(MADAutoAssetJob *)self foundSetFullDescriptorsBySpecifier];
    assetSelector2 = [v15 assetSelector];
    assetSpecifier2 = [assetSelector2 assetSpecifier];
    v23 = [foundSetFullDescriptorsBySpecifier safeObjectForKey:assetSpecifier2 ofClass:objc_opt_class()];
    [(MADAutoAssetJob *)self setFoundNewerFull:v23];

    [(MADAutoAssetJob *)self setWasPatched:0];
    [(MADAutoAssetJob *)self setProgressReportPhase:0];
    [(MADAutoAssetJob *)self setLastReportedPatchProgress:0];
    [(MADAutoAssetJob *)self setBaseForPatch:0];
    [(MADAutoAssetJob *)self setLatestInstalledAssetVersion:0];
    [(MADAutoAssetJob *)self setLatestInstalledAssetBuild:0];
    foundNewerPatch = [(MADAutoAssetJob *)self foundNewerPatch];

    if (foundNewerPatch)
    {
      latestAssetDescriptorOnFilesystemBySpecifier = [(MADAutoAssetJob *)self latestAssetDescriptorOnFilesystemBySpecifier];
      foundNewerPatch2 = [(MADAutoAssetJob *)self foundNewerPatch];
      assetSpecifier3 = [foundNewerPatch2 assetSpecifier];
      foundNewerFull3 = [latestAssetDescriptorOnFilesystemBySpecifier safeObjectForKey:assetSpecifier3 ofClass:objc_opt_class()];

      v29 = foundNewerFull3 != 0;
      if (foundNewerFull3)
      {
        [(MADAutoAssetJob *)self setBaseForPatch:foundNewerFull3];
        baseForPatch = [(MADAutoAssetJob *)self baseForPatch];
        assetVersion = [baseForPatch assetVersion];
        [(MADAutoAssetJob *)self setLatestInstalledAssetVersion:assetVersion];

        baseForPatch2 = [(MADAutoAssetJob *)self baseForPatch];
        build = [baseForPatch2 build];
        [(MADAutoAssetJob *)self setLatestInstalledAssetBuild:build];
      }

      else
      {
        errorCopy2 = error;
        v61 = [NSString alloc];
        baseForPatch2 = objc_opt_self();
        build = [baseForPatch2 foundNewerPatch];
        [build summary];
        v72 = v15;
        v63 = v62 = downloadCopy;
        foundNewerFull = [(MADAutoAssetJob *)self foundNewerFull];
        summary = [foundNewerFull summary];
        v66 = [v61 initWithFormat:@"{%@:placeNextSetAssetDescriptorToDownload} no baseAssetDescriptor (downloading full instead of patch) | foundNewerPatch:%@, foundNewerFull:%@", v62, v63, summary];
        [(MADAutoAssetJob *)self trackAnomaly:6111 forReason:v66];

        error = errorCopy2;
        downloadCopy = v62;
        v15 = v72;
      }

      foundNewerFull2 = [(MADAutoAssetJob *)self foundNewerFull];
      v67 = [(MADAutoAssetJob *)self newCurrentStatusForDescriptor:foundNewerFull2];
      [(MADAutoAssetJob *)self setCurrentStatus:v67];
    }

    else
    {
      foundNewerFull3 = [(MADAutoAssetJob *)self foundNewerFull];
      foundNewerFull2 = [(MADAutoAssetJob *)self newCurrentStatusForDescriptor:foundNewerFull3];
      [(MADAutoAssetJob *)self setCurrentStatus:foundNewerFull2];
      v29 = 0;
    }

    v36 = 0;
    if (error)
    {
LABEL_13:
      v68 = v36;
      *error = v36;
    }
  }

  return v29;
}

- (id)setEntryBeingDownloaded
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (-[MADAutoAssetJob nextSetSpecifierToDownload](self, "nextSetSpecifierToDownload") < 0 || (v5 = -[MADAutoAssetJob nextSetSpecifierToDownload](self, "nextSetSpecifierToDownload"), -[MADAutoAssetJob setConfiguration](self, "setConfiguration"), v6 = objc_claimAutoreleasedReturnValue(), [v6 autoAssetEntries], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6, v5 >= v8))
  {
    v11 = 0;
  }

  else
  {
    setConfiguration = [(MADAutoAssetJob *)self setConfiguration];
    autoAssetEntries = [setConfiguration autoAssetEntries];
    v11 = [autoAssetEntries objectAtIndex:{-[MADAutoAssetJob nextSetSpecifierToDownload](self, "nextSetSpecifierToDownload")}];
  }

  return v11;
}

- (void)reportJustDownloadedAssetOfSet:(id)set
{
  setCopy = set;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v7 = [MADAutoAssetDescriptor alloc];
  downloadingAssetDescriptor = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
  assetType = [downloadingAssetDescriptor assetType];
  downloadingAssetDescriptor2 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
  metadata = [downloadingAssetDescriptor2 metadata];
  downloadingAssetDescriptor3 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
  v67 = 0;
  v13 = [(MADAutoAssetDescriptor *)v7 initForAssetType:assetType fromMetadata:metadata fromBaseDescriptor:downloadingAssetDescriptor3 invalidReasons:&v67];
  v14 = v67;

  if (v13)
  {
    currentStatus = [(MADAutoAssetJob *)self currentStatus];
    downloadedAsPatch = [currentStatus downloadedAsPatch];

    v65 = v14;
    v66 = setCopy;
    if (downloadedAsPatch)
    {
      baseForPatch = [(MADAutoAssetJob *)self baseForPatch];

      if (baseForPatch)
      {
        v18 = [MAAutoAssetSelector alloc];
        baseForPatch2 = [(MADAutoAssetJob *)self baseForPatch];
        assetType2 = [baseForPatch2 assetType];
        baseForPatch3 = [(MADAutoAssetJob *)self baseForPatch];
        assetSpecifier = [baseForPatch3 assetSpecifier];
        baseForPatch4 = [(MADAutoAssetJob *)self baseForPatch];
        assetVersion = [baseForPatch4 assetVersion];
        v25 = [v18 initForAssetType:assetType2 withAssetSpecifier:assetSpecifier matchingAssetVersion:assetVersion];

        v26 = v25;
      }

      else
      {
        baseForPatch2 = [(MADAutoAssetJob *)self autoJobFSM];
        assetType2 = [baseForPatch2 diag];
        baseForPatch3 = [[NSString alloc] initWithFormat:@"{%@:reportJustDownloadedAssetOfSet} downloadedAsPatch yet no baseForPatch", setCopy];
        [assetType2 trackAnomaly:@"AUTO-SET-JOB" forReason:baseForPatch3 withResult:6111 withError:0];
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }

    [v13 setIsOnFilesystem:1];
    [v13 setNeverBeenLocked:1];
    currentSetStatus = [(MADAutoAssetJob *)self currentSetStatus];
    [v13 setDownloadUserInitiated:{objc_msgSend(currentSetStatus, "downloadUserInitiated")}];

    currentSetStatus2 = [(MADAutoAssetJob *)self currentSetStatus];
    [v13 setDownloadedNetworkBytes:{objc_msgSend(currentSetStatus2, "downloadedNetworkBytes")}];

    currentSetStatus3 = [(MADAutoAssetJob *)self currentSetStatus];
    [v13 setDownloadedFilesystemBytes:{objc_msgSend(currentSetStatus3, "downloadedFilesystemBytes")}];

    currentStatus2 = [(MADAutoAssetJob *)self currentStatus];
    [v13 setIsPatch:{objc_msgSend(currentStatus2, "downloadedAsPatch")}];

    [v13 setPatchedFromBaseSelector:v26];
    v64 = v26;
    if (v26)
    {
      baseForPatch5 = [(MADAutoAssetJob *)self baseForPatch];
      [v13 setPatchedFromBaseFilesystemBytes:{objc_msgSend(baseForPatch5, "downloadedFilesystemBytes")}];
    }

    else
    {
      [v13 setPatchedFromBaseFilesystemBytes:0];
    }

    currentStatus3 = [(MADAutoAssetJob *)self currentStatus];
    [v13 setPatchingAttempted:{objc_msgSend(currentStatus3, "patchingAttempted")}];

    downloadingAssetDescriptor4 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    [v13 setStagedPriorToAvailable:{objc_msgSend(downloadingAssetDescriptor4, "stagedPriorToAvailable")}];

    downloadingAssetDescriptor5 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    stagedFromOSVersion = [downloadingAssetDescriptor5 stagedFromOSVersion];
    [v13 setStagedFromOSVersion:stagedFromOSVersion];

    downloadingAssetDescriptor6 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    stagedFromBuildVersion = [downloadingAssetDescriptor6 stagedFromBuildVersion];
    [v13 setStagedFromBuildVersion:stagedFromBuildVersion];

    currentStatus4 = [(MADAutoAssetJob *)self currentStatus];
    patchingAttemptError = [currentStatus4 patchingAttemptError];
    [v13 setPatchingAttemptError:patchingAttemptError];

    [v13 setFoundByLookupWithoutAssetVersion:1];
    v44 = [MAAutoAssetSelector alloc];
    assetType3 = [v13 assetType];
    assetSpecifier2 = [v13 assetSpecifier];
    assetVersion2 = [v13 assetVersion];
    v63 = [v44 initForAssetType:assetType3 withAssetSpecifier:assetSpecifier2 matchingAssetVersion:assetVersion2];

    wasPatched = [(MADAutoAssetJob *)self wasPatched];
    firstClientName = [(MADAutoAssetJob *)self firstClientName];
    [MADAutoAssetControlManager persistForJobSelector:v63 persistingJobDescriptor:v13 justPatched:wasPatched withJobInformation:0 withFirstClientName:firstClientName];

    autoAssetSetDescriptor = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    clientDomainName = [autoAssetSetDescriptor clientDomainName];
    autoAssetSetDescriptor2 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    assetSetIdentifier = [autoAssetSetDescriptor2 assetSetIdentifier];
    autoAssetSetDescriptor3 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    discoveredAtomicInstance = [autoAssetSetDescriptor3 discoveredAtomicInstance];
    v55 = [MAAutoAssetSelector alloc];
    assetType4 = [v13 assetType];
    assetSpecifier3 = [v13 assetSpecifier];
    assetVersion3 = [v13 assetVersion];
    v59 = [v55 initForAssetType:assetType4 withAssetSpecifier:assetSpecifier3 matchingAssetVersion:assetVersion3];
    [MADAutoAssetHistory recordOperation:600 toHistoryType:2 fromLayer:2 usageCount:0 forClientDomainName:clientDomainName forAssetSetIdentifier:assetSetIdentifier forAtomicInstance:discoveredAtomicInstance withSelector:v59 withAddendumMessage:0];

    assetType5 = [v13 assetType];
    assetSpecifier4 = [v13 assetSpecifier];
    setCopy = v66;
    [MADAutoAssetControlManager postNotificationName:@"ASSET_VERSION_DOWNLOADED" forAssetType:assetType5 forAssetSpecifier:assetSpecifier4 fromModule:@"AUTO-JOB" fromLocation:v66];

    v27 = v64;
    v14 = v65;
  }

  else
  {
    v27 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      autoJobName = [(MADAutoAssetJob *)self autoJobName];
      v29 = autoJobName;
      v30 = @"NOT-PROVIDED";
      if (v14)
      {
        v30 = v14;
      }

      *buf = 138543618;
      v69 = autoJobName;
      v70 = 2114;
      v71 = v30;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%{public}@ {reportJustDownloadedAssetOfSet} | unable to create asset-descriptor for just-downloaded asset | invalid:%{public}@", buf, 0x16u);
    }
  }
}

- (void)setProgressReadyToStartDownloads
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v5 = objc_alloc_init(MANAutoAssetSetProgress);
  currentSetStatus = [(MADAutoAssetJob *)self currentSetStatus];
  [currentSetStatus setDownloadProgress:v5];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  setConfiguration = [(MADAutoAssetJob *)self setConfiguration];
  autoAssetEntries = [setConfiguration autoAssetEntries];

  obj = autoAssetEntries;
  v9 = [autoAssetEntries countByEnumeratingWithState:&v33 objects:v37 count:16];
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
        foundSetFullDescriptorsBySpecifier = [(MADAutoAssetJob *)self foundSetFullDescriptorsBySpecifier];
        assetSelector = [v13 assetSelector];
        assetSpecifier = [assetSelector assetSpecifier];
        v17 = [foundSetFullDescriptorsBySpecifier safeObjectForKey:assetSpecifier ofClass:objc_opt_class()];

        foundSetPatchDescriptorsBySpecifier = [(MADAutoAssetJob *)self foundSetPatchDescriptorsBySpecifier];
        assetSelector2 = [v13 assetSelector];
        assetSpecifier2 = [assetSelector2 assetSpecifier];
        v21 = [foundSetPatchDescriptorsBySpecifier safeObjectForKey:assetSpecifier2 ofClass:objc_opt_class()];

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

          metadata = [v22 metadata];
          ++v32;
          v31 += [metadata safeIntegerForKey:@"_DownloadSize"];
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

  currentSetStatus2 = [(MADAutoAssetJob *)self currentSetStatus];
  downloadProgress = [currentSetStatus2 downloadProgress];
  [downloadProgress setTotalExpectedBytes:v31];

  currentSetStatus3 = [(MADAutoAssetJob *)self currentSetStatus];
  downloadProgress2 = [currentSetStatus3 downloadProgress];
  [downloadProgress2 setExpectedTimeRemainingSecs:{vcvtd_n_f64_s64(v31, 0x11uLL)}];

  currentSetStatus4 = [(MADAutoAssetJob *)self currentSetStatus];
  downloadProgress3 = [currentSetStatus4 downloadProgress];
  [downloadProgress3 setRemainingAssetCount:v32];

  [(MADAutoAssetJob *)self setSetProgressOverallTotalWrittenBytes:0];
  [(MADAutoAssetJob *)self setSetProgressAssetTotalWrittenBytes:0];
}

- (void)setProgressAssetDownload:(id)download
{
  downloadCopy = download;
  isStalled = [downloadCopy isStalled];
  currentSetStatus = [(MADAutoAssetJob *)self currentSetStatus];
  downloadProgress = [currentSetStatus downloadProgress];
  [downloadProgress setIsStalled:isStalled];

  totalWrittenBytes = [downloadCopy totalWrittenBytes];
  setProgressAssetTotalWrittenBytes = [(MADAutoAssetJob *)self setProgressAssetTotalWrittenBytes];
  v10 = totalWrittenBytes - setProgressAssetTotalWrittenBytes;
  if (totalWrittenBytes <= setProgressAssetTotalWrittenBytes)
  {

    [(MADAutoAssetJob *)self setSetProgressAssetTotalWrittenBytes:0];
  }

  else
  {
    v11 = vcvtd_n_f64_u64(v10, 0x11uLL);
    [(MADAutoAssetJob *)self setSetProgressAssetTotalWrittenBytes:[(MADAutoAssetJob *)self setProgressAssetTotalWrittenBytes]+ v10];
    setProgressOverallTotalWrittenBytes = [(MADAutoAssetJob *)self setProgressOverallTotalWrittenBytes];
    setProgressAssetTotalWrittenBytes2 = [(MADAutoAssetJob *)self setProgressAssetTotalWrittenBytes];
    currentSetStatus2 = [(MADAutoAssetJob *)self currentSetStatus];
    downloadProgress2 = [currentSetStatus2 downloadProgress];
    [downloadProgress2 setTotalWrittenBytes:setProgressAssetTotalWrittenBytes2 + setProgressOverallTotalWrittenBytes];

    if (v11 > 0.0)
    {
      currentSetStatus3 = [(MADAutoAssetJob *)self currentSetStatus];
      downloadProgress3 = [currentSetStatus3 downloadProgress];
      [downloadProgress3 expectedTimeRemainingSecs];
      v19 = v18;

      if (v19 > v11)
      {
        currentSetStatus4 = [(MADAutoAssetJob *)self currentSetStatus];
        downloadProgress4 = [currentSetStatus4 downloadProgress];
        [downloadProgress4 expectedTimeRemainingSecs];
        [downloadProgress4 setExpectedTimeRemainingSecs:v22 - v11];
      }
    }

    currentSetStatus5 = [(MADAutoAssetJob *)self currentSetStatus];
    downloadProgress5 = [currentSetStatus5 downloadProgress];
    totalWrittenBytes2 = [downloadProgress5 totalWrittenBytes];
    setJobInformation = [(MADAutoAssetJob *)self setJobInformation];
    currentSetStatus6 = [setJobInformation currentSetStatus];
    downloadProgress6 = [currentSetStatus6 downloadProgress];
    [downloadProgress6 setTotalWrittenBytes:totalWrittenBytes2];

    currentSetStatus7 = [(MADAutoAssetJob *)self currentSetStatus];
    downloadProgress7 = [currentSetStatus7 downloadProgress];
    totalExpectedBytes = [downloadProgress7 totalExpectedBytes];
    setJobInformation2 = [(MADAutoAssetJob *)self setJobInformation];
    currentSetStatus8 = [setJobInformation2 currentSetStatus];
    downloadProgress8 = [currentSetStatus8 downloadProgress];
    [downloadProgress8 setTotalExpectedBytes:totalExpectedBytes];

    currentSetStatus9 = [(MADAutoAssetJob *)self currentSetStatus];
    downloadProgress9 = [currentSetStatus9 downloadProgress];
    [downloadProgress9 expectedTimeRemainingSecs];
    v37 = v36;
    setJobInformation3 = [(MADAutoAssetJob *)self setJobInformation];
    currentSetStatus10 = [setJobInformation3 currentSetStatus];
    downloadProgress10 = [currentSetStatus10 downloadProgress];
    [downloadProgress10 setExpectedTimeRemainingSecs:v37];
  }
}

- (void)finishJobTaskForJobParam:(id)param withUnderlyingError:(id)error fromAction:(id)action
{
  paramCopy = param;
  errorCopy = error;
  actionCopy = action;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (errorCopy)
  {
    domain = [errorCopy domain];
    v13 = [SUCore stringIsEqual:domain to:@"com.apple.MobileAssetError.AutoAsset"];

    if (v13)
    {
      v14 = errorCopy;
    }

    else
    {
      v15 = [(MADAutoAssetJob *)self errorCodeFromUnderling:errorCopy];
      actionCopy = [[NSString alloc] initWithFormat:@"AUTO-JOB(%@)", actionCopy];
      actionCopy2 = [[NSString alloc] initWithFormat:@"underlying error resulted in auto-asset job-task failure (at location %@)", actionCopy];
      v14 = [MAAutoAssetError buildError:v15 fromOperation:actionCopy underlyingError:errorCopy withDescription:actionCopy2];
    }
  }

  else
  {
    v14 = 0;
  }

  [(MADAutoAssetJob *)self finishJobTaskForJobParam:paramCopy withResponseError:v14];
}

- (void)finishJobTaskForJobParam:(id)param withResponseError:(id)error
{
  paramCopy = param;
  errorCopy = error;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(MADAutoAssetJob *)self statusChangeJobFinished:paramCopy withResponseError:errorCopy];
  [(MADAutoAssetJob *)self replyToClientForJobParam:paramCopy withResponseError:errorCopy];
  v10 = _MADLog(@"AutoJob");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (errorCopy)
  {
    if (v11)
    {
      autoJobName = [(MADAutoAssetJob *)self autoJobName];
      summary = [paramCopy summary];
      v14 = [MADAutoAssetClientRequest responseErrorSummary:errorCopy];
      v16 = 138543874;
      v17 = autoJobName;
      v18 = 2114;
      v19 = summary;
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ | job-task finished:%{public}@ | error:%{public}@", &v16, 0x20u);

LABEL_6:
    }
  }

  else if (v11)
  {
    autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
    summary = [paramCopy summary];
    v16 = 138543618;
    v17 = autoJobName2;
    v18 = 2114;
    v19 = summary;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ | job-task finished:%{public}@ | SUCCESS", &v16, 0x16u);

    goto LABEL_6;
  }
}

- (void)autoAssetJobFinished:(id)finished forJobFinishedReason:(id)reason failingWithError:(id)error
{
  finishedCopy = finished;
  reasonCopy = reason;
  errorCopy = error;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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
        autoJobName = [(MADAutoAssetJob *)self autoJobName];
        v17 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MADAutoAssetJob *)self simulateOperation]];
        v19 = 138543618;
        v20 = autoJobName;
        v21 = 2114;
        simulateOperation = v17;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ {autoAssetJobFinished} | SIMULATE_OPERATION(%{public}@) | call to _autoAssetJobFinished postponed", &v19, 0x16u);
      }
    }

    else if (v15)
    {
      autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
      v19 = 138543618;
      v20 = autoJobName2;
      v21 = 2048;
      simulateOperation = [(MADAutoAssetJob *)self simulateOperation];
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ {autoAssetJobFinished} | SIMULATE_OPERATION(%lld) | call to _autoAssetJobFinished postponed", &v19, 0x16u);
    }
  }

  else
  {
    [(MADAutoAssetJob *)self _autoAssetJobFinished:finishedCopy forJobFinishedReason:reasonCopy failingWithError:errorCopy];
  }
}

- (void)completeNWActivity
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {
    goto LABEL_8;
  }

  latestToVendCachedAssetSetID = [(MADAutoAssetJob *)self latestToVendCachedAssetSetID];
  if (!latestToVendCachedAssetSetID)
  {
    goto LABEL_16;
  }

  mostRecentlyReceivedCachedAssetSetID = [(MADAutoAssetJob *)self mostRecentlyReceivedCachedAssetSetID];

  if (!mostRecentlyReceivedCachedAssetSetID)
  {
LABEL_8:
    latestToVendCachedAssetSetID = 0;
    goto LABEL_16;
  }

  latestToVendCachedAssetSetID = xpc_dictionary_create(0, 0, 0);
  v20 = 0;
  v21 = 0;
  [MADAutoAssetControlManager autoJobAssetSetIDsForJob:self mostRecentlyReceived:&v21 latestToVend:&v20];
  v7 = v21;
  v8 = v20;
  autoAssetSetDescriptor = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  if (autoAssetSetDescriptor)
  {
    v10 = autoAssetSetDescriptor;
    autoAssetSetDescriptor2 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    catalogLastTimeChecked = [autoAssetSetDescriptor2 catalogLastTimeChecked];

    if (catalogLastTimeChecked)
    {
      v13 = objc_alloc_init(NSDateFormatter);
      [v13 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
      autoAssetSetDescriptor3 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      catalogLastTimeChecked2 = [autoAssetSetDescriptor3 catalogLastTimeChecked];
      v16 = [v13 stringFromDate:catalogLastTimeChecked2];

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
    xpc_dictionary_set_string(latestToVendCachedAssetSetID, [@"Vend" UTF8String], objc_msgSend(v8, "UTF8String"));
  }

LABEL_11:
  if (v7)
  {
    xpc_dictionary_set_string(latestToVendCachedAssetSetID, [@"Discovered" UTF8String], objc_msgSend(v7, "UTF8String"));
  }

  if (v16)
  {
    xpc_dictionary_set_string(latestToVendCachedAssetSetID, [@"Checked" UTF8String], -[__CFString UTF8String](v16, "UTF8String"));
  }

LABEL_16:
  v17 = getDownloadManager();
  autoAssetUUID = [(MADAutoAssetJob *)self autoAssetUUID];
  firstLookupError = [(MADAutoAssetJob *)self firstLookupError];
  [v17 completeNWActivity:autoAssetUUID withParams:latestToVendCachedAssetSetID andError:firstLookupError];
}

- (void)_autoAssetJobFinished:(id)finished forJobFinishedReason:(id)reason failingWithError:(id)error
{
  finishedCopy = finished;
  reasonCopy = reason;
  errorCopy = error;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  LODWORD(extendedStateQueue) = [(MADAutoAssetJob *)self stagerJob];
  autoAssetSelector2 = _MADLog(@"AutoJob");
  v14 = os_log_type_enabled(autoAssetSelector2, OS_LOG_TYPE_DEFAULT);
  if (extendedStateQueue)
  {
    if (!v14)
    {
      goto LABEL_16;
    }

    autoJobName = [(MADAutoAssetJob *)self autoJobName];
    *buf = 138543618;
    v40 = autoJobName;
    v41 = 2114;
    v42 = reasonCopy;
    _os_log_impl(&dword_0, autoAssetSelector2, OS_LOG_TYPE_DEFAULT, "%{public}@ | {autoAssetJobFinished} stager-job has finished | %{public}@ | (already implied to auto-contol-manager when staged operation done reported)", buf, 0x16u);
    goto LABEL_15;
  }

  if (v14)
  {
    autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
    *buf = 138543618;
    v40 = autoJobName2;
    v41 = 2114;
    v42 = reasonCopy;
    _os_log_impl(&dword_0, autoAssetSelector2, OS_LOG_TYPE_DEFAULT, "%{public}@ | {autoAssetJobFinished} job has finished | %{public}@ | MA_MILESTONE", buf, 0x16u);
  }

  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {
    autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
    assetVersion = [autoAssetSelector assetVersion];
    if (assetVersion)
    {
    }

    else
    {
      resultFound = [(MADAutoAssetJob *)self resultFound];

      if (!resultFound)
      {
        autoAssetSelector2 = [(MADAutoAssetJob *)self autoAssetSelector];
        autoJobName = [(MADAutoAssetJob *)self autoAssetUUID];
        [MADAutoAssetControlManager autoAssetJobFinished:autoAssetSelector2 withAutoAssetUUID:autoJobName schedulerInvolved:[(MADAutoAssetJob *)self schedulerInvolved] potentialNetworkFailure:[(MADAutoAssetJob *)self potentialNetworkFailure]];
        goto LABEL_15;
      }
    }

    autoAssetSelector2 = [(MADAutoAssetJob *)self resultFound];
    autoJobName = [autoAssetSelector2 fullAssetSelector];
    autoAssetUUID = [(MADAutoAssetJob *)self autoAssetUUID];
    [MADAutoAssetControlManager autoAssetJobFinished:autoJobName withAutoAssetUUID:autoAssetUUID schedulerInvolved:[(MADAutoAssetJob *)self schedulerInvolved] potentialNetworkFailure:[(MADAutoAssetJob *)self potentialNetworkFailure]];

LABEL_15:
    goto LABEL_16;
  }

  v37 = reasonCopy;
  if (!errorCopy)
  {
    v38 = 0;
    [(MADAutoAssetJob *)self _commitPrePersonalized:finishedCopy error:&v38];
    errorCopy = v38;
    if (errorCopy)
    {
      currentSetStatus = [(MADAutoAssetJob *)self currentSetStatus];
      [currentSetStatus setAvailableForUseError:errorCopy];

      [(MADAutoAssetJob *)self finishedSetJobFinalizeStatus:@"all content downloaded but failure committing pre-personalized" failingWithError:errorCopy];
    }
  }

  autoAssetSelector2 = [(MADAutoAssetJob *)self clientDomainName];
  autoAssetSetIdentifier = [(MADAutoAssetJob *)self autoAssetSetIdentifier];
  autoAssetUUID2 = [(MADAutoAssetJob *)self autoAssetUUID];
  [(MADAutoAssetJob *)self setJobInformation];
  v21 = v20 = finishedCopy;
  v22 = [v21 copy];
  schedulerInvolved = [(MADAutoAssetJob *)self schedulerInvolved];
  LOBYTE(v36) = [(MADAutoAssetJob *)self potentialNetworkFailure];
  [MADAutoAssetControlManager autoSetJobFinished:autoAssetSelector2 forAssetSetIdentifier:autoAssetSetIdentifier withAutoAssetUUID:autoAssetUUID2 fromAutoAssetJob:self withSetJobInformation:v22 schedulerInvolved:schedulerInvolved potentialNetworkFailure:v36];

  finishedCopy = v20;
  reasonCopy = v37;
LABEL_16:

  activeJobTasks = [(MADAutoAssetJob *)self activeJobTasks];
  v29 = [activeJobTasks count];

  if (v29)
  {
    autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
    diag = [autoJobFSM2 diag];
    v32 = [NSString alloc];
    activeJobTasks2 = [(MADAutoAssetJob *)self activeJobTasks];
    v34 = [v32 initWithFormat:@"{autoAssetJobFinished} %ld job-tasks when should be none (potentially stranded)", objc_msgSend(activeJobTasks2, "count")];
    [diag trackAnomaly:@"AUTO-JOB" forReason:v34 withResult:6109 withError:0];
  }

  v35 = objc_alloc_init(NSMutableArray);
  [(MADAutoAssetJob *)self setActiveJobTasks:v35];

  [(MADAutoAssetJob *)self releaseLookupGrant];
}

- (void)_autoAssetJobDead:(id)dead
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  activeJobTasks = [(MADAutoAssetJob *)self activeJobTasks];
  v7 = [activeJobTasks count];

  if (v7)
  {
    autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
    diag = [autoJobFSM2 diag];
    v10 = [NSString alloc];
    activeJobTasks2 = [(MADAutoAssetJob *)self activeJobTasks];
    v12 = [v10 initWithFormat:@"{_autoAssetJobDead} %ld job-tasks when should be none (potentially stranded)", objc_msgSend(activeJobTasks2, "count")];
    [diag trackAnomaly:@"AUTO-JOB" forReason:v12 withResult:6109 withError:0];
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

- (void)finishSetJobDownloadedNewer:(id)newer forJobFinishedReason:(id)reason
{
  newerCopy = newer;
  reasonCopy = reason;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  autoAssetSetDescriptor = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  LODWORD(autoJobFSM) = [MADAutoAssetSecure isPersonalizationRequired:newerCopy forSetDescriptor:autoAssetSetDescriptor];

  if (autoJobFSM)
  {
    autoAssetSetDescriptor2 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    v12 = [MADAutoAssetControlManager autoSetJobAvailableAtomicInstanceForSetDescriptor:autoAssetSetDescriptor2];

    if (v12)
    {
      [(MADAutoAssetJob *)self finishedSetSameVersionFound:newerCopy];
    }

    else
    {
      newerCopy = [[NSString alloc] initWithFormat:@"AUTO-SET-JOB(%@)", newerCopy];
      v37 = reasonCopy;
      reasonCopy = [[NSString alloc] initWithFormat:@"set-job ended with all content downloaded but some secure auto-assets require personalization [intended:%@]", reasonCopy];
      v15 = [MAAutoAssetError buildError:6535 fromOperation:newerCopy underlyingError:0 withDescription:reasonCopy];

      assignedSetDescriptor = [(MADAutoAssetJob *)self assignedSetDescriptor];
      clientDomainName = [assignedSetDescriptor clientDomainName];
      assignedSetDescriptor2 = [(MADAutoAssetJob *)self assignedSetDescriptor];
      assetSetIdentifier = [assignedSetDescriptor2 assetSetIdentifier];
      assignedSetDescriptor3 = [(MADAutoAssetJob *)self assignedSetDescriptor];
      discoveredAtomicInstance = [assignedSetDescriptor3 discoveredAtomicInstance];
      v38 = v15;
      [MADAutoAssetHistory recordFailedOperation:504 fromLayer:2 forClientDomainName:clientDomainName forAssetSetIdentifier:assetSetIdentifier forAtomicInstance:discoveredAtomicInstance failingWithError:v15];

      if (+[MAAIRBEventReporter isAvailable])
      {
        v22 = [MAAIRBMobileAssetOperationMetadata alloc];
        v23 = [MADAutoAssetHistoryTracker operationName:504];
        v24 = [(MAAIRBMobileAssetOperationMetadata *)v22 initWithCode:504 name:v23];

        v25 = [MAAIRBMobileAssetAtomicInstance alloc];
        v26 = [MAAIRBMobileAssetAssetSet alloc];
        assignedSetDescriptor4 = [(MADAutoAssetJob *)self assignedSetDescriptor];
        assetSetIdentifier2 = [assignedSetDescriptor4 assetSetIdentifier];
        v29 = [(MAAIRBMobileAssetAssetSet *)v26 initWithAssetSetIdentifier:assetSetIdentifier2];
        assignedSetDescriptor5 = [(MADAutoAssetJob *)self assignedSetDescriptor];
        discoveredAtomicInstance2 = [assignedSetDescriptor5 discoveredAtomicInstance];
        v32 = [(MAAIRBMobileAssetAtomicInstance *)v25 initWithAssetSet:v29 atomicInstanceId:discoveredAtomicInstance2];

        v33 = [MAAIRBAppleIntelligenceAssetDeliveryEventType typeAtomicInstance:v24 atomicInstance:v32 assetCount:0];
        v34 = [MAAIRBAppleIntelligenceAssetDeliveryEvent alloc];
        v39 = v38;
        v35 = [NSArray arrayWithObjects:&v39 count:1];
        v36 = [(MAAIRBAppleIntelligenceAssetDeliveryEvent *)v34 initWithErrors:v35 type:v33];

        [MAAIRBEventReporter emitAppleIntelligenceEvent:v36];
      }

      [(MADAutoAssetJob *)self doneWithAllJobs:newerCopy withLookupError:v38];
      [(MADAutoAssetJob *)self autoAssetJobFinished:newerCopy forJobFinishedReason:@"SUCCESS(NOT_AVAILABLE)"];

      reasonCopy = v37;
    }
  }

  else
  {
    [(MADAutoAssetJob *)self foundAndDownloadedSet:newerCopy];
    [(MADAutoAssetJob *)self replyToJobsWhenContentDownloaded:newerCopy];
    [(MADAutoAssetJob *)self doneWithAllJobs:newerCopy];
    [(MADAutoAssetJob *)self autoAssetJobFinished:newerCopy forJobFinishedReason:reasonCopy];
  }
}

- (void)finishedSetJobFinalizeStatus:(id)status failingWithError:(id)error
{
  statusCopy = status;
  errorCopy = error;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  currentSetNotifications = [(MADAutoAssetJob *)self currentSetNotifications];

  if (!currentSetNotifications)
  {
    v10 = objc_alloc_init(MANAutoAssetSetNotifications);
    [(MADAutoAssetJob *)self setCurrentSetNotifications:v10];
  }

  currentSetNotifications2 = [(MADAutoAssetJob *)self currentSetNotifications];
  [currentSetNotifications2 setDownloadPending:0];

  currentSetNotifications3 = [(MADAutoAssetJob *)self currentSetNotifications];
  [currentSetNotifications3 setDownloadProgress:0];

  if (([SUCore stringIsEqual:statusCopy to:@"POSTPONED"]& 1) == 0 && ([SUCore stringIsEqual:statusCopy to:@"FAILED"]& 1) == 0 && ([SUCore stringIsEqual:statusCopy to:@"FAILED(RELEASED_GRANT)"]& 1) == 0 && ([SUCore stringIsEqual:statusCopy to:@"NO_NEWER"]& 1) == 0 && ([SUCore stringIsEqual:statusCopy to:@"FOUND_SAME"]& 1) == 0 && ([SUCore stringIsEqual:statusCopy to:@"REVOKED"]& 1) == 0 && ([SUCore stringIsEqual:statusCopy to:@"ENDED"]& 1) == 0 && ([SUCore stringIsEqual:statusCopy to:@"CANCELED"]& 1) == 0 && ([SUCore stringIsEqual:statusCopy to:@"CANCELED(RELEASED_GRANT)"]& 1) == 0 && ([SUCore stringIsEqual:statusCopy to:@"SIMULATED_POSTPONE_ENDED"]& 1) == 0 && ![SUCore stringIsEqual:statusCopy to:@"SUCCESS(NOT_AVAILABLE)"])
  {
    if (([SUCore stringIsEqual:statusCopy to:@"SUCCESS(PATCHED)"]& 1) != 0 || [SUCore stringIsEqual:statusCopy to:@"SUCCESS(DOWNLOADED)"])
    {
      currentSetNotifications4 = [(MADAutoAssetJob *)self currentSetNotifications];
      v43 = currentSetNotifications4;
      v44 = 1;
    }

    else
    {
      if (([SUCore stringIsEqual:statusCopy to:@"SUCCESS(ALREADY_DOWNLOADED)"]& 1) == 0 && ([SUCore stringIsEqual:statusCopy to:@"SUCCESS(PERSONALIZED)"]& 1) == 0 && ![SUCore stringIsEqual:statusCopy to:@"SUCCESS(IMMEDIATE_PROMOTED)"])
      {
        if (![SUCore stringIsEqual:statusCopy to:@"NONE"])
        {
          statusCopy = [[NSString alloc] initWithFormat:@"{finishedSetJobFinalizeStatus} unable to refresh current-set-notifications | jobFinishedReason:%@", statusCopy];
          [(MADAutoAssetJob *)self trackAnomaly:6108 forReason:statusCopy];
          goto LABEL_55;
        }

        currentSetNotifications5 = [(MADAutoAssetJob *)self currentSetNotifications];
        [currentSetNotifications5 setAtomicInstanceDiscovered:0];

        currentSetNotifications6 = [(MADAutoAssetJob *)self currentSetNotifications];
        statusCopy = currentSetNotifications6;
        v47 = 0;
LABEL_54:
        [currentSetNotifications6 setAtomicInstanceAvailableForUse:v47];
LABEL_55:

        goto LABEL_33;
      }

      currentSetNotifications4 = [(MADAutoAssetJob *)self currentSetNotifications];
      v43 = currentSetNotifications4;
      v44 = 0;
    }

    [currentSetNotifications4 setAtomicInstanceDiscovered:v44];

    currentSetNotifications6 = [(MADAutoAssetJob *)self currentSetNotifications];
    statusCopy = currentSetNotifications6;
    v47 = 1;
    goto LABEL_54;
  }

  currentSetNotifications7 = [(MADAutoAssetJob *)self currentSetNotifications];
  [currentSetNotifications7 setAtomicInstanceDiscovered:0];

  currentSetNotifications8 = [(MADAutoAssetJob *)self currentSetNotifications];
  [currentSetNotifications8 setAtomicInstanceAvailableForUse:0];

  if (([SUCore stringIsEqual:statusCopy to:@"FAILED"]& 1) != 0 || ([SUCore stringIsEqual:statusCopy to:@"FAILED(RELEASED_GRANT)"]& 1) != 0 || [SUCore stringIsEqual:statusCopy to:@"ENDED"])
  {
    v15 = errorCopy;
LABEL_18:
    v91 = v15;
    v92 = 0;
    goto LABEL_19;
  }

  if (![SUCore stringIsEqual:statusCopy to:@"NO_NEWER"])
  {
    if ([SUCore stringIsEqual:statusCopy to:@"FOUND_SAME"])
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

    if ([SUCore stringIsEqual:statusCopy to:@"REVOKED"])
    {
      v38 = @"set-job catalog lookup found that auto-asset of atomic-instance being downloaded was revoked [server-side]";
      v39 = 6202;
      goto LABEL_29;
    }

    if (([SUCore stringIsEqual:statusCopy to:@"CANCELED"]& 1) != 0 || [SUCore stringIsEqual:statusCopy to:@"CANCELED(RELEASED_GRANT)"])
    {
      v40 = @"set-job was canceled";
      v41 = 6115;
    }

    else
    {
      if (![SUCore stringIsEqual:statusCopy to:@"SUCCESS(NOT_AVAILABLE)"])
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
  currentSetStatus = [(MADAutoAssetJob *)self currentSetStatus];
  downloadProgress = [currentSetStatus downloadProgress];

  v68 = [MANAutoAssetSetStatus alloc];
  autoAssetSetDescriptor = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  clientDomainName = [autoAssetSetDescriptor clientDomainName];
  autoAssetSetDescriptor2 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  assetSetIdentifier = [autoAssetSetDescriptor2 assetSetIdentifier];
  setConfiguration = [(MADAutoAssetJob *)self setConfiguration];
  autoAssetEntries = [setConfiguration autoAssetEntries];
  autoAssetSetDescriptor3 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v86 = [(MADAutoAssetJob *)self newAtomicInstancesDownloadedForDescriptor:?];
  autoAssetSetDescriptor4 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  catalogCachedAssetSetID = [autoAssetSetDescriptor4 catalogCachedAssetSetID];
  autoAssetSetDescriptor5 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  catalogDownloadedFromLive = [autoAssetSetDescriptor5 catalogDownloadedFromLive];
  autoAssetSetDescriptor6 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  catalogLastTimeChecked = [autoAssetSetDescriptor6 catalogLastTimeChecked];
  autoAssetSetDescriptor7 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  catalogPostedDate = [autoAssetSetDescriptor7 catalogPostedDate];
  autoAssetSetDescriptor8 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  discoveredAtomicInstance = [autoAssetSetDescriptor8 discoveredAtomicInstance];
  autoAssetSetDescriptor9 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  latestDowloadedAtomicInstanceEntries = [autoAssetSetDescriptor9 latestDowloadedAtomicInstanceEntries];
  v79 = errorCopy;
  v88 = assetSetIdentifier;
  v89 = clientDomainName;
  v87 = autoAssetEntries;
  if (latestDowloadedAtomicInstanceEntries)
  {
    autoAssetSetDescriptor10 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    [autoAssetSetDescriptor10 latestDowloadedAtomicInstanceEntries];
  }

  else
  {
    [(MADAutoAssetJob *)self foundSetNewerDiscoveredAtomicEntries];
  }
  v80 = ;
  autoAssetSetDescriptor11 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  discoveredAtomicInstance2 = [autoAssetSetDescriptor11 discoveredAtomicInstance];
  setConfiguration2 = [(MADAutoAssetJob *)self setConfiguration];
  latestAtomicInstanceToVendFromPreSUStaging = [setConfiguration2 latestAtomicInstanceToVendFromPreSUStaging];
  autoAssetSetDescriptor12 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  latestDowloadedAtomicInstanceEntries2 = [autoAssetSetDescriptor12 latestDowloadedAtomicInstanceEntries];
  autoAssetSetDescriptor13 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  downloadedCatalogCachedAssetSetID = [autoAssetSetDescriptor13 downloadedCatalogCachedAssetSetID];
  autoAssetSetDescriptor14 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  downloadedCatalogDownloadedFromLive = [autoAssetSetDescriptor14 downloadedCatalogDownloadedFromLive];
  autoAssetSetDescriptor15 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  downloadedCatalogLastTimeChecked = [autoAssetSetDescriptor15 downloadedCatalogLastTimeChecked];
  autoAssetSetDescriptor16 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  downloadedCatalogPostedDate = [autoAssetSetDescriptor16 downloadedCatalogPostedDate];
  currentSetNotifications9 = [(MADAutoAssetJob *)self currentSetNotifications];
  aggregatedClientSetPolicy = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  haveReceivedLookupResponse = [(MADAutoAssetJob *)self haveReceivedLookupResponse];
  vendingAtomicInstanceForConfiguredEntries = [(MADAutoAssetJob *)self vendingAtomicInstanceForConfiguredEntries];
  downloadingUserInitiated = [(MADAutoAssetJob *)self downloadingUserInitiated];
  autoAssetSetDescriptor17 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  downloadedNetworkBytes = [autoAssetSetDescriptor17 downloadedNetworkBytes];
  autoAssetSetDescriptor18 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  BYTE2(v50) = downloadingUserInitiated;
  BYTE1(v50) = vendingAtomicInstanceForConfiguredEntries;
  LOBYTE(v50) = haveReceivedLookupResponse;
  LOBYTE(v49) = latestAtomicInstanceToVendFromPreSUStaging;
  v27 = -[MANAutoAssetSetStatus initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDownloadedAtomicInstanceFromPreSUStaging:withLatestDowloadedAtomicInstanceEntries:withPreviouslyVendedLockedAtomicInstance:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:](v68, "initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDownloadedAtomicInstanceFromPreSUStaging:withLatestDowloadedAtomicInstanceEntries:withPreviouslyVendedLockedAtomicInstance:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:", v89, v88, v87, v86, catalogCachedAssetSetID, catalogDownloadedFromLive, catalogLastTimeChecked, catalogPostedDate, discoveredAtomicInstance, v80, discoveredAtomicInstance2, v49, latestDowloadedAtomicInstanceEntries2, 0, downloadedCatalogCachedAssetSetID, downloadedCatalogDownloadedFromLive, downloadedCatalogLastTimeChecked, downloadedCatalogPostedDate, currentSetNotifications9, aggregatedClientSetPolicy, 0, 0, v50, downloadProgress, downloadedNetworkBytes, [autoAssetSetDescriptor18 downloadedFilesystemBytes], 0, 0, v91, v92);
  [(MADAutoAssetJob *)self setCurrentSetStatus:v27];

  v28 = v80;
  if (latestDowloadedAtomicInstanceEntries)
  {

    v28 = autoAssetSetDescriptor10;
  }

  currentSetStatus2 = [(MADAutoAssetJob *)self currentSetStatus];
  v30 = [currentSetStatus2 copy];
  setJobInformation = [(MADAutoAssetJob *)self setJobInformation];
  [setJobInformation setCurrentSetStatus:v30];

  v32 = [MANAutoAssetSetInfoFound alloc];
  autoAssetSetIdentifier = [(MADAutoAssetJob *)self autoAssetSetIdentifier];
  currentSetStatus3 = [(MADAutoAssetJob *)self currentSetStatus];
  v35 = [(MANAutoAssetSetInfoFound *)v32 initForAssetSetIdentifier:autoAssetSetIdentifier reportingStatus:currentSetStatus3];
  [(MADAutoAssetJob *)self setResultSetFound:v35];

  resultSetFound = [(MADAutoAssetJob *)self resultSetFound];
  setJobInformation2 = [(MADAutoAssetJob *)self setJobInformation];
  [setJobInformation2 setFoundContent:resultSetFound];
}

- (void)replyToClientForJobParam:(id)param withResponseError:(id)error
{
  paramCopy = param;
  errorCopy = error;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  clientRequest = [paramCopy clientRequest];

  if (clientRequest)
  {
    if ([(MADAutoAssetJob *)self autoAssetSetJob])
    {
      clientRequest2 = [paramCopy clientRequest];
      clientDomainName = [(MADAutoAssetJob *)self clientDomainName];
      autoAssetSetIdentifier = [(MADAutoAssetJob *)self autoAssetSetIdentifier];
      autoAssetUUID = [(MADAutoAssetJob *)self autoAssetUUID];
      setJobInformation = [(MADAutoAssetJob *)self setJobInformation];
      v16 = [setJobInformation copy];
      [MADAutoAssetControlManager autoSetJobIssueReply:clientRequest2 forDomainName:clientDomainName forAssetSetIdentifier:autoAssetSetIdentifier withAutoAssetUUID:autoAssetUUID fromAutoAssetJob:self withSetJobInformation:v16 withResponseError:errorCopy];
    }

    else
    {
      v23 = errorCopy;
      v17 = [(MADAutoAssetJob *)self currentJobInformation:&v23];
      v18 = v23;

      clientRequest3 = [paramCopy clientRequest];
      mostSpecificSelectorToReport = [(MADAutoAssetJob *)self mostSpecificSelectorToReport];
      autoAssetUUID2 = [(MADAutoAssetJob *)self autoAssetUUID];
      autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
      [MADAutoAssetControlManager autoAssetJobIssueReply:clientRequest3 forAutoAssetSelector:mostSpecificSelectorToReport withAutoAssetUUID:autoAssetUUID2 fromAutoAssetJob:self withOriginalSelector:autoAssetSelector withJobInformation:v17 withResponseError:v18];

      errorCopy = v18;
    }

    [paramCopy setClientRequest:0];
  }
}

- (void)_rememberIfSchedulerInvolved:(id)involved
{
  involvedCopy = involved;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  clientRequestMessage = [involvedCopy clientRequestMessage];
  messageName = [clientRequestMessage messageName];

  if (([SUCore stringIsEqual:messageName to:@"MA-AUTO:INTEREST_IN_CONTENT"]& 1) != 0 || ([SUCore stringIsEqual:messageName to:@"MA-AUTO:CHECK_FOR_NEWER"]& 1) != 0 || ([SUCore stringIsEqual:messageName to:@"MA-AUTO:LOCK_CONTENT"]& 1) != 0 || ([SUCore stringIsEqual:messageName to:@"MA-AUTO-SET:NEED_FOR_ATOMIC"]& 1) != 0 || ([SUCore stringIsEqual:messageName to:@"MA-AUTO-SET:CHECK_ATOMIC"]& 1) != 0 || [SUCore stringIsEqual:messageName to:@"MA-AUTO-SET:LOCK_ATOMIC"])
  {
    clientRequestMessage2 = [involvedCopy clientRequestMessage];
    message = [clientRequestMessage2 message];

    v10 = [message safeObjectForKey:@"instance" ofClass:objc_opt_class()];
    v11 = v10;
    if (v10)
    {
      clientAssetSelector = [v10 clientAssetSelector];
      if (!clientAssetSelector)
      {
LABEL_18:

        goto LABEL_19;
      }

      v13 = clientAssetSelector;
      clientAssetSelector2 = [v11 clientAssetSelector];
      assetType = [clientAssetSelector2 assetType];
      if (assetType)
      {
        v16 = assetType;
        clientAssetSelector3 = [v11 clientAssetSelector];
        assetSpecifier = [clientAssetSelector3 assetSpecifier];
        if (assetSpecifier)
        {
          v19 = assetSpecifier;
          [v11 clientAssetSelector];
          v20 = v22 = self;
          assetVersion = [v20 assetVersion];

          if (!assetVersion)
          {
            [(MADAutoAssetJob *)v22 setSchedulerInvolved:1];
          }

          goto LABEL_18;
        }
      }
    }

    else
    {
      v13 = [MASAutoAssetSetInfoInstance newShimmedFromFrameworkMessage:message forKey:@"setInstance"];
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

- (void)_setPolicyFromClientRequest:(id)request
{
  requestCopy = request;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  clientRequestMessage = [requestCopy clientRequestMessage];
  messageName = [clientRequestMessage messageName];

  if (([SUCore stringIsEqual:messageName to:@"MA-AUTO:INTEREST_IN_CONTENT"]& 1) != 0 || ([SUCore stringIsEqual:messageName to:@"MA-AUTO:CHECK_FOR_NEWER"]& 1) != 0 || [SUCore stringIsEqual:messageName to:@"MA-AUTO:LOCK_CONTENT"])
  {
    clientRequestMessage2 = [requestCopy clientRequestMessage];
    message = [clientRequestMessage2 message];

    v10 = [message safeObjectForKey:@"desire" ofClass:objc_opt_class()];
    v11 = v10;
    if (v10)
    {
      clientAssetPolicy = [v10 clientAssetPolicy];
      if (clientAssetPolicy)
      {
        v13 = objc_alloc_init(MAAutoAssetPolicy);
        [(MADAutoAssetJob *)self setAggregatedClientAssetPolicy:v13];

        if ([clientAssetPolicy userInitiated])
        {
          [(MADAutoAssetJob *)self setDownloadingUserInitiated:1];
          aggregatedClientAssetPolicy = [(MADAutoAssetJob *)self aggregatedClientAssetPolicy];
          [aggregatedClientAssetPolicy setUserInitiated:1];

          currentSetStatus = [(MADAutoAssetJob *)self currentSetStatus];
          [currentSetStatus setDownloadUserInitiated:1];
        }
      }
    }
  }
}

- (void)addToActiveJobTasks:(id)tasks
{
  tasksCopy = tasks;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (!tasksCopy)
  {
    autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
    diag = [autoJobFSM2 diag];
    v14 = [NSString alloc];
    _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
    v16 = [v14 initWithFormat:@"{addToActiveJobTasks} nil jobParam provided by caller | %@", _updateLatestSummary];
    [diag trackAnomaly:@"AUTO-JOB" forReason:v16 withResult:6102 withError:0];

    goto LABEL_73;
  }

  if ([tasksCopy paramType] != &dword_0 + 1)
  {
    if ([tasksCopy paramType] == &dword_4 + 1)
    {
      [(MADAutoAssetJob *)self setSchedulerTriggerReceived:1];
      jobCreationTriggeringLayer = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];

      if (!jobCreationTriggeringLayer)
      {
        [(MADAutoAssetJob *)self setJobCreationTriggeringLayer:@"Scheduler"];
      }
    }

    else
    {
      autoJobFSM3 = [(MADAutoAssetJob *)self autoJobFSM];
      diag2 = [autoJobFSM3 diag];
      v20 = [NSString alloc];
      paramType = [tasksCopy paramType];
      summary = [tasksCopy summary];
      v23 = [v20 initWithFormat:@"job-task of unknown job type:%ld|jobParam:%@", paramType, summary];
      [diag2 trackAnomaly:@"AUTO-JOB" forReason:v23 withResult:6106 withError:0];
    }

    goto LABEL_70;
  }

  clientRequest = [tasksCopy clientRequest];
  clientRequestMessage = [clientRequest clientRequestMessage];
  message = [clientRequestMessage message];

  v10 = [message safeObjectForKey:@"desire" ofClass:objc_opt_class()];
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = [MASAutoAssetSetInfoDesire newShimmedFromFrameworkMessage:message forKey:@"setDesire"];
  }

  firstClientName = [(MADAutoAssetJob *)self firstClientName];

  if (!firstClientName)
  {
    if (v10)
    {
      v25 = [message safeObjectForKey:@"instance" ofClass:objc_opt_class()];
      v26 = 0;
    }

    else
    {
      if (v11)
      {
        v26 = [MASAutoAssetSetInfoInstance newShimmedFromFrameworkMessage:message forKey:@"setInstance"];
      }

      else
      {
        v26 = 0;
      }

      v25 = 0;
    }

    if (!(v25 | v26))
    {
      autoJobFSM4 = [(MADAutoAssetJob *)self autoJobFSM];
      [autoJobFSM4 diag];
      v77 = message;
      v28 = v78 = v10;
      v29 = v11;
      v30 = [NSString alloc];
      summary2 = [tasksCopy summary];
      _updateLatestSummary2 = [(MADAutoAssetJob *)self _updateLatestSummary];
      v33 = [v30 initWithFormat:@"{addToActiveJobTasks} CLIENT_REQUEST jobTask with no [set-]instance| jobParam:%@ | %@", summary2, _updateLatestSummary2];
      [v28 trackAnomaly:@"AUTO-JOB" forReason:v33 withResult:6102 withError:0];

      v11 = v29;
      message = v77;
      v10 = v78;
LABEL_27:

      goto LABEL_28;
    }

    if (v25)
    {
      autoAssetClientName = [v25 autoAssetClientName];

      v35 = v25;
      if (autoAssetClientName)
      {
        autoAssetClientName2 = [v25 autoAssetClientName];
LABEL_26:
        autoJobFSM4 = autoAssetClientName2;
        [(MADAutoAssetJob *)self setFirstClientName:autoAssetClientName2];
        goto LABEL_27;
      }
    }

    else
    {
      autoAssetSetClientName = [v26 autoAssetSetClientName];

      v35 = v26;
      if (autoAssetSetClientName)
      {
        autoAssetClientName2 = [v26 autoAssetSetClientName];
        goto LABEL_26;
      }
    }

    autoAssetClientName2 = [v35 clientProcessName];
    goto LABEL_26;
  }

LABEL_28:
  [(MADAutoAssetJob *)self simulateEnd:1];
  [(MADAutoAssetJob *)self simulateSet:tasksCopy];
  clientAssetPolicy = [v10 clientAssetPolicy];

  if (!clientAssetPolicy)
  {
    clientAssetSetPolicy = [v11 clientAssetSetPolicy];

    if (!clientAssetSetPolicy)
    {
      goto LABEL_64;
    }

    v50 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      autoJobName = [(MADAutoAssetJob *)self autoJobName];
      clientAssetSetPolicy2 = [v11 clientAssetSetPolicy];
      summary3 = [clientAssetSetPolicy2 summary];
      summary4 = [tasksCopy summary];
      *buf = 138543874;
      v80 = autoJobName;
      v81 = 2114;
      v82 = summary3;
      v83 = 2114;
      v84 = summary4;
      _os_log_impl(&dword_0, v50, OS_LOG_TYPE_DEFAULT, "%{public}@ | {addToActiveJobTasks} aggregating | clientAssetSetPolicy:%{public}@ | job:%{public}@}", buf, 0x20u);
    }

    clientAssetSetPolicy3 = [v11 clientAssetSetPolicy];
    [(MADAutoAssetJob *)self mergeSetPolicyIntoAggregated:clientAssetSetPolicy3];

    if ([(MADAutoAssetJob *)self aggregatedClientSetPolicySpecified])
    {
      clientAssetSetPolicy4 = [v11 clientAssetSetPolicy];
      if ([clientAssetSetPolicy4 userInitiated])
      {
        configuredToUserInitiated = [(MADAutoAssetJob *)self configuredToUserInitiated];

        if (configuredToUserInitiated)
        {
          goto LABEL_61;
        }

        [(MADAutoAssetJob *)self desireChangedToUserInitiated];
        clientAssetSetPolicy4 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(clientAssetSetPolicy4, OS_LOG_TYPE_DEFAULT))
        {
          autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
          summary5 = [tasksCopy summary];
          *buf = 138543618;
          v80 = autoJobName2;
          v81 = 2114;
          v82 = summary5;
          v60 = "%{public}@ | {addToActiveJobTasks} additional auto-asset-set-policy | boosted to user-initiated | job:%{public}@}";
LABEL_59:
          _os_log_impl(&dword_0, clientAssetSetPolicy4, OS_LOG_TYPE_DEFAULT, v60, buf, 0x16u);

          goto LABEL_60;
        }
      }

      goto LABEL_60;
    }

    [(MADAutoAssetJob *)self setAggregatedClientSetPolicySpecified:1];
    clientAssetSetPolicy5 = [v11 clientAssetSetPolicy];
    if ([clientAssetSetPolicy5 userInitiated])
    {
      configuredToUserInitiated2 = [(MADAutoAssetJob *)self configuredToUserInitiated];

      if ((configuredToUserInitiated2 & 1) == 0)
      {
        [(MADAutoAssetJob *)self desireChangedToUserInitiated];
        clientAssetSetPolicy4 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(clientAssetSetPolicy4, OS_LOG_TYPE_DEFAULT))
        {
          autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
          summary5 = [tasksCopy summary];
          *buf = 138543618;
          v80 = autoJobName2;
          v81 = 2114;
          v82 = summary5;
          v60 = "%{public}@ | {addToActiveJobTasks} first auto-asset-set-policy encountered indicating user-initiated | job:%{public}@}";
          goto LABEL_59;
        }

LABEL_60:

LABEL_61:
        clientAssetPolicy4 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(clientAssetPolicy4, OS_LOG_TYPE_DEFAULT))
        {
          autoJobName3 = [(MADAutoAssetJob *)self autoJobName];
          aggregatedClientSetPolicy = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
          summary6 = [aggregatedClientSetPolicy summary];
          summary7 = [tasksCopy summary];
          *buf = 138543874;
          v80 = autoJobName3;
          v81 = 2114;
          v82 = summary6;
          v83 = 2114;
          v84 = summary7;
          _os_log_impl(&dword_0, clientAssetPolicy4, OS_LOG_TYPE_DEFAULT, "%{public}@ | {addToActiveJobTasks} SET-POLICY | aggregatedClientSetPolicy:%{public}@ | job:%{public}@}", buf, 0x20u);
        }

        goto LABEL_63;
      }
    }

    else
    {
    }

    clientAssetSetPolicy4 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(clientAssetSetPolicy4, OS_LOG_TYPE_DEFAULT))
    {
      autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
      summary5 = [tasksCopy summary];
      *buf = 138543618;
      v80 = autoJobName2;
      v81 = 2114;
      v82 = summary5;
      v60 = "%{public}@ | {addToActiveJobTasks} first auto-asset-set-encountered [remaining] discretionary | job:%{public}@}";
      goto LABEL_59;
    }

    goto LABEL_60;
  }

  v39 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    autoJobName4 = [(MADAutoAssetJob *)self autoJobName];
    clientAssetPolicy2 = [v10 clientAssetPolicy];
    summary8 = [clientAssetPolicy2 summary];
    summary9 = [tasksCopy summary];
    *buf = 138543874;
    v80 = autoJobName4;
    v81 = 2114;
    v82 = summary8;
    v83 = 2114;
    v84 = summary9;
    _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ | {addToActiveJobTasks} aggregating | clientAssetPolicy:%{public}@ | job:%{public}@}", buf, 0x20u);
  }

  if (![(MADAutoAssetJob *)self aggregatedClientAssetPolicySpecified])
  {
    [(MADAutoAssetJob *)self setAggregatedClientAssetPolicySpecified:1];
    clientAssetPolicy3 = [v10 clientAssetPolicy];
    if ([clientAssetPolicy3 userInitiated])
    {
      configuredToUserInitiated3 = [(MADAutoAssetJob *)self configuredToUserInitiated];

      if ((configuredToUserInitiated3 & 1) == 0)
      {
        [(MADAutoAssetJob *)self desireChangedToUserInitiated];
        clientAssetPolicy4 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(clientAssetPolicy4, OS_LOG_TYPE_DEFAULT))
        {
          autoJobName5 = [(MADAutoAssetJob *)self autoJobName];
          summary10 = [tasksCopy summary];
          *buf = 138543618;
          v80 = autoJobName5;
          v81 = 2114;
          v82 = summary10;
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

    clientAssetPolicy4 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(clientAssetPolicy4, OS_LOG_TYPE_DEFAULT))
    {
      autoJobName5 = [(MADAutoAssetJob *)self autoJobName];
      summary10 = [tasksCopy summary];
      *buf = 138543618;
      v80 = autoJobName5;
      v81 = 2114;
      v82 = summary10;
      v48 = "%{public}@ | {addToActiveJobTasks} first auto-asset-encountered [remaining] discretionary | job:%{public}@}";
      goto LABEL_51;
    }

    goto LABEL_63;
  }

  clientAssetPolicy4 = [v10 clientAssetPolicy];
  if (![clientAssetPolicy4 userInitiated])
  {
    goto LABEL_63;
  }

  configuredToUserInitiated4 = [(MADAutoAssetJob *)self configuredToUserInitiated];

  if ((configuredToUserInitiated4 & 1) == 0)
  {
    [(MADAutoAssetJob *)self desireChangedToUserInitiated];
    clientAssetPolicy4 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(clientAssetPolicy4, OS_LOG_TYPE_DEFAULT))
    {
      autoJobName5 = [(MADAutoAssetJob *)self autoJobName];
      summary10 = [tasksCopy summary];
      *buf = 138543618;
      v80 = autoJobName5;
      v81 = 2114;
      v82 = summary10;
      v48 = "%{public}@ | {addToActiveJobTasks} additional auto-asset-policy | boosted to user-initiated | job:%{public}@}";
LABEL_51:
      _os_log_impl(&dword_0, clientAssetPolicy4, OS_LOG_TYPE_DEFAULT, v48, buf, 0x16u);

      goto LABEL_63;
    }

    goto LABEL_63;
  }

LABEL_64:
  [(MADAutoAssetJob *)self setClientRequestedOperation:1];
  jobCreationTriggeringLayer2 = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];

  if (!jobCreationTriggeringLayer2)
  {
    clientRequest2 = [tasksCopy clientRequest];
    clientRequestMessage2 = [clientRequest2 clientRequestMessage];
    messageName = [clientRequestMessage2 messageName];

    if (([SUCore stringIsEqual:messageName to:@"MA-AUTO:INTEREST_IN_CONTENT"]& 1) != 0 || ([SUCore stringIsEqual:messageName to:@"MA-AUTO-SET:NEED_FOR_ATOMIC"]& 1) != 0)
    {
      v73 = @"ClientInterest";
    }

    else if (([SUCore stringIsEqual:messageName to:@"MA-AUTO:CHECK_FOR_NEWER"]& 1) != 0 || ([SUCore stringIsEqual:messageName to:@"MA-AUTO-SET:CHECK_ATOMIC"]& 1) != 0)
    {
      v73 = @"ClientCheck";
    }

    else if (([SUCore stringIsEqual:messageName to:@"MA-AUTO:LOCK_CONTENT"]& 1) != 0 || ([SUCore stringIsEqual:messageName to:@"MA-AUTO-SET:LOCK_ATOMIC"]& 1) != 0)
    {
      v73 = @"ClientLock";
    }

    else if ([SUCore stringIsEqual:messageName to:@"MA-AUTO:DETERMINE_IF_AVAILABLE"])
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
  activeJobTasks = [(MADAutoAssetJob *)self activeJobTasks];
  v75 = [activeJobTasks count];

  if (!v75)
  {
    [(MADAutoAssetJob *)self setCurrentJobTask:tasksCopy];
  }

  activeJobTasks2 = [(MADAutoAssetJob *)self activeJobTasks];
  [activeJobTasks2 addObject:tasksCopy];

LABEL_73:
}

- (void)setCurrentJobTask:(id)task
{
  taskCopy = task;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([taskCopy paramType] == &dword_0 + 1)
  {
    clientRequest = [taskCopy clientRequest];
    clientRequestMessage = [clientRequest clientRequestMessage];
    message = [clientRequestMessage message];

    v10 = [message safeObjectForKey:@"instance" ofClass:objc_opt_class()];
    [(MADAutoAssetJob *)self setActiveInstance:v10];

    v11 = [message safeObjectForKey:@"desire" ofClass:objc_opt_class()];
    [(MADAutoAssetJob *)self setActiveDesire:v11];

    v12 = [message safeObjectForKey:@"found" ofClass:objc_opt_class()];
    [(MADAutoAssetJob *)self setActiveFound:v12];

    v13 = [message safeObjectForKey:@"end" ofClass:objc_opt_class()];
    [(MADAutoAssetJob *)self setActiveEnd:v13];

    v14 = [message safeObjectForKey:@"listen" ofClass:objc_opt_class()];
    [(MADAutoAssetJob *)self setActiveListen:v14];

    summary3 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(summary3, OS_LOG_TYPE_DEFAULT))
    {
      autoJobName = [(MADAutoAssetJob *)self autoJobName];
      summary = [taskCopy summary];
      *buf = 138543618;
      v26 = autoJobName;
      v27 = 2114;
      v28 = summary;
      _os_log_impl(&dword_0, summary3, OS_LOG_TYPE_DEFAULT, "%{public}@ | {setCurrentJobTask} CLIENT_REQUEST | job:%{public}@}", buf, 0x16u);
    }

    goto LABEL_7;
  }

  if ([taskCopy paramType] != &dword_4 + 1)
  {
    autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
    diag = [autoJobFSM2 diag];
    v21 = [NSString alloc];
    paramType = [taskCopy paramType];
    summary2 = [taskCopy summary];
    v24 = [v21 initWithFormat:@"job-task of unknown job type:%ld|jobParam:%@", paramType, summary2];
    [diag trackAnomaly:@"AUTO-JOB" forReason:v24 withResult:6106 withError:0];

    goto LABEL_10;
  }

  message = _MADLog(@"AutoJob");
  if (os_log_type_enabled(message, OS_LOG_TYPE_DEFAULT))
  {
    autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
    summary3 = [taskCopy summary];
    *buf = 138543618;
    v26 = autoJobName2;
    v27 = 2114;
    v28 = summary3;
    _os_log_impl(&dword_0, message, OS_LOG_TYPE_DEFAULT, "%{public}@ | {setCurrentJobTask} SCHEDULER_TRIGGERED | job:%{public}@}", buf, 0x16u);

LABEL_7:
  }

LABEL_10:
}

- (id)getCurrentJobTask
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  activeJobTasks = [(MADAutoAssetJob *)self activeJobTasks];
  v6 = [activeJobTasks count];

  if (v6)
  {
    activeJobTasks2 = [(MADAutoAssetJob *)self activeJobTasks];
    v8 = [activeJobTasks2 objectAtIndex:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)removeCurrentJobTask
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  activeJobTasks = [(MADAutoAssetJob *)self activeJobTasks];
  v6 = [activeJobTasks count];

  if (v6)
  {
    activeJobTasks2 = [(MADAutoAssetJob *)self activeJobTasks];
    v8 = [activeJobTasks2 objectAtIndex:0];

    activeJobTasks3 = [(MADAutoAssetJob *)self activeJobTasks];
    [activeJobTasks3 removeObjectAtIndex:0];
  }

  else
  {
    activeJobTasks3 = [(MADAutoAssetJob *)self autoJobFSM];
    diag = [activeJobTasks3 diag];
    v11 = [[NSString alloc] initWithFormat:@"{removeCurrentJobTask} no active job-tasks"];
    [diag trackAnomaly:@"AUTO-JOB" forReason:v11 withResult:6108 withError:0];

    v8 = 0;
  }

  return v8;
}

- (void)desireChangedToUserInitiated
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  aggregatedClientAssetPolicy = [(MADAutoAssetJob *)self aggregatedClientAssetPolicy];

  if (!aggregatedClientAssetPolicy)
  {
    v6 = objc_alloc_init(MAAutoAssetPolicy);
    [(MADAutoAssetJob *)self setAggregatedClientAssetPolicy:v6];
  }

  [(MADAutoAssetJob *)self setConfiguredToUserInitiated:1];
  [(MADAutoAssetJob *)self _updateUserInitiatedFields];
  assetDownloadOptions = [(MADAutoAssetJob *)self assetDownloadOptions];

  if (assetDownloadOptions)
  {
    v8 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      autoJobName = [(MADAutoAssetJob *)self autoJobName];
      assetDownloadOptions2 = [(MADAutoAssetJob *)self assetDownloadOptions];
      v11 = 138543618;
      v12 = autoJobName;
      v13 = 2114;
      v14 = assetDownloadOptions2;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ | {desireChangedToUserInitiated} active asset download options altered | assetDownloadOptions:%{public}@}", &v11, 0x16u);
    }
  }
}

- (void)_updateUserInitiatedFields
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(MADAutoAssetJob *)self setConfiguredToUserInitiated:1];
  aggregatedClientAssetPolicy = [(MADAutoAssetJob *)self aggregatedClientAssetPolicy];
  [aggregatedClientAssetPolicy setUserInitiated:1];

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    aggregatedClientSetPolicy = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
    [aggregatedClientSetPolicy setUserInitiated:1];
  }

  assetDownloadOptions = [(MADAutoAssetJob *)self assetDownloadOptions];

  if (assetDownloadOptions)
  {
    assetDownloadOptions2 = [(MADAutoAssetJob *)self assetDownloadOptions];
    [assetDownloadOptions2 setDiscretionary:0];
  }

  foundNewerPatch = [(MADAutoAssetJob *)self foundNewerPatch];

  if (foundNewerPatch)
  {
    foundNewerPatch2 = [(MADAutoAssetJob *)self foundNewerPatch];
    [foundNewerPatch2 setDownloadUserInitiated:1];
  }

  foundNewerFull = [(MADAutoAssetJob *)self foundNewerFull];

  if (foundNewerFull)
  {
    foundNewerFull2 = [(MADAutoAssetJob *)self foundNewerFull];
    [foundNewerFull2 setDownloadUserInitiated:1];
  }

  newerFoundAssetDescriptor = [(MADAutoAssetJob *)self newerFoundAssetDescriptor];

  if (newerFoundAssetDescriptor)
  {
    newerFoundAssetDescriptor2 = [(MADAutoAssetJob *)self newerFoundAssetDescriptor];
    [newerFoundAssetDescriptor2 setDownloadUserInitiated:1];
  }

  downloadingAssetDescriptor = [(MADAutoAssetJob *)self downloadingAssetDescriptor];

  if (downloadingAssetDescriptor)
  {
    downloadingAssetDescriptor2 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    [downloadingAssetDescriptor2 setDownloadUserInitiated:1];
  }

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    currentSetStatus = [(MADAutoAssetJob *)self currentSetStatus];
    [currentSetStatus setDownloadUserInitiated:1];

    currentSetStatus2 = [(MADAutoAssetJob *)self currentSetStatus];
    v18 = [currentSetStatus2 copy];
    setJobInformation = [(MADAutoAssetJob *)self setJobInformation];
    [setJobInformation setCurrentSetStatus:v18];
  }

  else
  {
    currentSetStatus2 = [(MADAutoAssetJob *)self currentStatus];
    [currentSetStatus2 setDownloadUserInitiated:1];
  }
}

- (void)_updateDownloadOptions:(id)options
{
  optionsCopy = options;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  allowsCellularAccess = [optionsCopy allowsCellularAccess];
  allowsExpensiveAccess = [optionsCopy allowsExpensiveAccess];
  discretionary = [optionsCopy discretionary];

  assetDownloadOptions = [(MADAutoAssetJob *)self assetDownloadOptions];

  if (!assetDownloadOptions)
  {
    newAssetDownloadOptions = [(MADAutoAssetJob *)self newAssetDownloadOptions];
    [(MADAutoAssetJob *)self setAssetDownloadOptions:newAssetDownloadOptions];
  }

  v12 = [(MADAutoAssetJob *)self downloadingUserInitiated]| discretionary;
  if ((v12 & 1) == 0)
  {
    [(MADAutoAssetJob *)self setConfiguredToUserInitiated:1];
    [(MADAutoAssetJob *)self _updateUserInitiatedFields];
  }

  if ([(MADAutoAssetJob *)self downloadingCellular]|| allowsCellularAccess != 1)
  {
    if ([(MADAutoAssetJob *)self downloadingExpensive]|| ((allowsExpensiveAccess ^ 1) & 1) != 0)
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
  aggregatedClientSetPolicy = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  [aggregatedClientSetPolicy setAllowCheckDownloadOverCellular:1];

  assetDownloadOptions2 = [(MADAutoAssetJob *)self assetDownloadOptions];
  [assetDownloadOptions2 setAllowsCellularAccess:1];

  if (![(MADAutoAssetJob *)self downloadingExpensive]&& ((allowsExpensiveAccess ^ 1) & 1) == 0)
  {
LABEL_12:
    [(MADAutoAssetJob *)self setConfiguredToExpensive:1];
    aggregatedClientSetPolicy2 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
    [aggregatedClientSetPolicy2 setAllowCheckDownloadOverExpensive:1];

    assetDownloadOptions3 = [(MADAutoAssetJob *)self assetDownloadOptions];
    [assetDownloadOptions3 setAllowsExpensiveAccess:1];
  }

LABEL_13:
  newAssetDownloadOptions2 = [(MADAutoAssetJob *)self newAssetDownloadOptions];
  [(MADAutoAssetJob *)self setAssetDownloadOptions:newAssetDownloadOptions2];
}

- (id)mostSpecificSelectorToReport
{
  autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
  if (!autoAssetSelector)
  {
    autoAssetInstance = [(MADAutoAssetJob *)self autoAssetInstance];
    autoAssetSelector = [autoAssetInstance clientAssetSelector];
  }

  resultSelector = [(MADAutoAssetJob *)self resultSelector];

  if (resultSelector)
  {
    resultSelector2 = [(MADAutoAssetJob *)self resultSelector];

    autoAssetSelector = resultSelector2;
  }

  if (autoAssetSelector)
  {
    downloadDecryptionKey = [autoAssetSelector downloadDecryptionKey];

    if (!downloadDecryptionKey)
    {
      goto LABEL_12;
    }

    copyClearingWriteOnlyFields = [autoAssetSelector copyClearingWriteOnlyFields];
    autoJobFSM2 = copyClearingWriteOnlyFields;
    if (copyClearingWriteOnlyFields)
    {
      autoJobFSM2 = copyClearingWriteOnlyFields;
      autoJobFSM = autoAssetSelector;
      autoAssetSelector = autoJobFSM2;
    }

    else
    {
      autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
      diag = [autoJobFSM diag];
      v15 = [NSString alloc];
      _longSummary = [(MADAutoAssetJob *)self _longSummary];
      v17 = [v15 initWithFormat:@"{mostSpecificSelectorToReport} unable to create copy-of-selector (returning un-clean selector) | jobSummary:%@", _longSummary];
      [diag trackAnomaly:@"AUTO-JOB" forReason:v17 withResult:6101 withError:0];
    }
  }

  else
  {
    autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
    autoJobFSM = [autoJobFSM2 diag];
    v11 = [NSString alloc];
    _longSummary2 = [(MADAutoAssetJob *)self _longSummary];
    v13 = [v11 initWithFormat:@"{mostSpecificSelectorToReport} no selector reported | jobSummary:%@", _longSummary2];
    [autoJobFSM trackAnomaly:@"AUTO-JOB" forReason:v13 withResult:6108 withError:0];

    autoAssetSelector = 0;
  }

LABEL_12:

  return autoAssetSelector;
}

- (void)addClientRequestAndMergeNeeds:(id)needs forJobEvent:(id)event
{
  needsCopy = needs;
  eventCopy = event;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  clientRequest = [eventCopy clientRequest];
  clientRequestMessage = [clientRequest clientRequestMessage];

  if (clientRequestMessage)
  {
    clientRequest2 = [eventCopy clientRequest];
    clientRequestMessage2 = [clientRequest2 clientRequestMessage];
    messageName = [clientRequestMessage2 messageName];

    [(MADAutoAssetJob *)self addToActiveJobTasks:eventCopy];
    if (([SUCore stringIsEqual:messageName to:@"MA-AUTO:INTEREST_IN_CONTENT"]& 1) != 0 || [SUCore stringIsEqual:messageName to:@"MA-AUTO-SET:NEED_FOR_ATOMIC"])
    {
      [(MADAutoAssetJob *)self replyToClientForJobParam:eventCopy withResponseError:0];
    }
  }

  else
  {
    messageName = [[NSString alloc] initWithFormat:@"{A:%@} no client request message provided", needsCopy];
    [(MADAutoAssetJob *)self trackAnomaly:6108 forReason:messageName];
  }
}

- (BOOL)anyJobInterestedInContent
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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
    activeJobTasks = [(MADAutoAssetJob *)self activeJobTasks];
    v7 = [activeJobTasks countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(activeJobTasks);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          clientRequest = [v11 clientRequest];
          clientRequestMessage = [clientRequest clientRequestMessage];

          if (!clientRequestMessage)
          {
            goto LABEL_21;
          }

          clientRequest2 = [v11 clientRequest];
          clientRequestMessage2 = [clientRequest2 clientRequestMessage];
          messageName = [clientRequestMessage2 messageName];

          if (([SUCore stringIsEqual:messageName to:@"MA-AUTO:INTEREST_IN_CONTENT"]& 1) != 0 || ([SUCore stringIsEqual:messageName to:@"MA-AUTO:CHECK_FOR_NEWER"]& 1) != 0 || ([SUCore stringIsEqual:messageName to:@"MA-AUTO:LOCK_CONTENT"]& 1) != 0 || ([SUCore stringIsEqual:messageName to:@"MA-AUTO-SET:NEED_FOR_ATOMIC"]& 1) != 0 || ([SUCore stringIsEqual:messageName to:@"MA-AUTO-SET:CHECK_ATOMIC"]& 1) != 0 || [SUCore stringIsEqual:messageName to:@"MA-AUTO-SET:LOCK_ATOMIC"])
          {

LABEL_21:
            objc_autoreleasePoolPop(v12);
            v18 = 1;
            goto LABEL_23;
          }

          objc_autoreleasePoolPop(v12);
        }

        v8 = [activeJobTasks countByEnumeratingWithState:&v19 objects:v23 count:16];
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

- (void)foundAndDownloaded:(id)downloaded forJobParam:(id)param wasPatched:(BOOL)patched
{
  patchedCopy = patched;
  downloadedCopy = downloaded;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  downloadedCopy = [[NSString alloc] initWithFormat:@"%@:foundAndDownloaded", downloadedCopy];
  autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
  assetType = [autoAssetSelector assetType];
  downloadingAssetDescriptor = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
  assetId = [downloadingAssetDescriptor assetId];
  v15 = getAutoLocalUrlFromTypeAndIdWithPurpose(assetType, assetId, 2, @"auto");

  v16 = [MAAutoAssetInfoFound alloc];
  resultSelector = [(MADAutoAssetJob *)self resultSelector];
  downloadingAssetDescriptor2 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
  metadata = [downloadingAssetDescriptor2 metadata];
  currentStatus = [(MADAutoAssetJob *)self currentStatus];
  v21 = [v16 initForSelector:resultSelector withLocalContentURL:v15 withAssetAttributes:metadata reportingStatus:currentStatus];
  [(MADAutoAssetJob *)self setResultFound:v21];

  [(MADAutoAssetJob *)self setWasPatched:patchedCopy];
  [(MADAutoAssetJob *)self refreshDownloadedToManager:downloadedCopy];
  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v22 = [(MADAutoAssetJob *)self refreshOnFilesystemFromManagerPromotingIfStaged:0];
    latestInstalledOnFilesystem = [(MADAutoAssetJob *)self latestInstalledOnFilesystem];
    v24 = latestInstalledOnFilesystem;
    if (latestInstalledOnFilesystem)
    {
      assetVersion = [latestInstalledOnFilesystem assetVersion];
      [(MADAutoAssetJob *)self setLatestInstalledAssetVersion:assetVersion];

      build = [v24 build];
      [(MADAutoAssetJob *)self setLatestInstalledAssetBuild:build];
    }
  }

  v27 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    autoJobName = [(MADAutoAssetJob *)self autoJobName];
    path = [v15 path];
    *buf = 138543874;
    v31 = autoJobName;
    v32 = 2114;
    v33 = downloadedCopy;
    v34 = 2114;
    v35 = path;
    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] {%{public}@} download | SUCCESS | localContentURL:%{public}@", buf, 0x20u);
  }
}

- (void)foundAndDownloadedSet:(id)set
{
  setCopy = set;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  setCopy = [[NSString alloc] initWithFormat:@"%@:foundAndDownloadedSet", setCopy];
  autoAssetSetDescriptor = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  [autoAssetSetDescriptor setIsDiscoveredFullyDownloaded:1];

  autoAssetSetDescriptor2 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  [autoAssetSetDescriptor2 setIsOnFilesystem:1];

  autoAssetSetDescriptor3 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  discoveredAtomicInstance = [autoAssetSetDescriptor3 discoveredAtomicInstance];
  autoAssetSetDescriptor4 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  [autoAssetSetDescriptor4 setLatestDownloadedAtomicInstance:discoveredAtomicInstance];

  autoAssetSetDescriptor5 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  latestDowloadedAtomicInstanceEntries = [autoAssetSetDescriptor5 latestDowloadedAtomicInstanceEntries];

  if (!latestDowloadedAtomicInstanceEntries)
  {
    autoAssetSetDescriptor6 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    discoveredAtomicEntries = [autoAssetSetDescriptor6 discoveredAtomicEntries];
    autoAssetSetDescriptor7 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    [autoAssetSetDescriptor7 setLatestDowloadedAtomicInstanceEntries:discoveredAtomicEntries];

    v18 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      autoJobName = [(MADAutoAssetJob *)self autoJobName];
      autoAssetSetDescriptor8 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      latestDowloadedAtomicInstanceEntries2 = [autoAssetSetDescriptor8 latestDowloadedAtomicInstanceEntries];
      *buf = 138543874;
      v39 = setCopy;
      v40 = 2114;
      v41 = autoJobName;
      v42 = 2114;
      v43 = latestDowloadedAtomicInstanceEntries2;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "{%{public}@} (%{public}@)\n[SET-DOWNLOAD] no latest-downloaded-atomic-entries so reporting discovered:\n%{public}@", buf, 0x20u);
    }
  }

  autoAssetSetDescriptor9 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  catalogCachedAssetSetID = [autoAssetSetDescriptor9 catalogCachedAssetSetID];
  autoAssetSetDescriptor10 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  [autoAssetSetDescriptor10 setDownloadedCatalogCachedAssetSetID:catalogCachedAssetSetID];

  autoAssetSetDescriptor11 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  catalogDownloadedFromLive = [autoAssetSetDescriptor11 catalogDownloadedFromLive];
  autoAssetSetDescriptor12 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  [autoAssetSetDescriptor12 setDownloadedCatalogDownloadedFromLive:catalogDownloadedFromLive];

  autoAssetSetDescriptor13 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  catalogLastTimeChecked = [autoAssetSetDescriptor13 catalogLastTimeChecked];
  autoAssetSetDescriptor14 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  [autoAssetSetDescriptor14 setDownloadedCatalogLastTimeChecked:catalogLastTimeChecked];

  autoAssetSetDescriptor15 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  catalogPostedDate = [autoAssetSetDescriptor15 catalogPostedDate];
  autoAssetSetDescriptor16 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  [autoAssetSetDescriptor16 setDownloadedCatalogPostedDate:catalogPostedDate];

  [(MADAutoAssetJob *)self updateSetResults:setCopy atomicInstanceDiscovered:1 availableForUse:1 downloading:0 buildingResultSetFound:1];
  [(MADAutoAssetJob *)self refreshSetFoundToManager:1 fromLocation:setCopy];
  v34 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
    autoAssetSetDescriptor17 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    summary = [autoAssetSetDescriptor17 summary];
    *buf = 138412802;
    v39 = setCopy;
    v40 = 2114;
    v41 = autoJobName2;
    v42 = 2114;
    v43 = summary;
    _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{%{public}@} (%{public}@)\n[SET-DOWNLOAD] set-download | SUCCESS | autoAssetSetDescriptor:%{public}@", buf, 0x20u);
  }
}

- (void)replyToJobsWhenCatalogDownloaded:(id)downloaded discoveredNewer:(BOOL)newer
{
  newerCopy = newer;
  downloadedCopy = downloaded;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (![(MADAutoAssetJob *)self stagerJob])
  {
    v25 = downloadedCopy;
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
          autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
          diag = [autoJobFSM2 diag];
          v22 = [NSString alloc];
          _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
          v24 = [v22 initWithFormat:@"{replyToJobsWhenCatalogDownloaded} nil jobParam found on activeJobTasks | %@", _updateLatestSummary];
          [diag trackAnomaly:@"AUTO-JOB" forReason:v24 withResult:6103 withError:0];

LABEL_24:
          goto LABEL_26;
        }

        clientRequest = [v14 clientRequest];

        if (clientRequest)
        {
          clientRequest2 = [v14 clientRequest];
          clientRequestMessage = [clientRequest2 clientRequestMessage];
          autoJobFSM2 = [clientRequestMessage messageName];

          if (([SUCore stringIsEqual:autoJobFSM2 to:@"MA-AUTO:INTEREST_IN_CONTENT"]& 1) == 0 && ([SUCore stringIsEqual:autoJobFSM2 to:@"MA-AUTO:CHECK_FOR_NEWER"]& 1) == 0 && ([SUCore stringIsEqual:autoJobFSM2 to:@"MA-AUTO:DETERMINE_IF_AVAILABLE"]& 1) == 0 && ([SUCore stringIsEqual:autoJobFSM2 to:@"MA-AUTO-SET:NEED_FOR_ATOMIC"]& 1) == 0 && ![SUCore stringIsEqual:autoJobFSM2 to:@"MA-AUTO-SET:CHECK_ATOMIC"]|| ([SUCore stringIsEqual:autoJobFSM2 to:@"MA-AUTO-SET:CHECK_ATOMIC"]? (v20 = !newerCopy) : (v20 = 1), !v20 && [(MADAutoAssetJob *)self setCheckAwaitingDownload]|| ([(MADAutoAssetJob *)self replyToClientForJobParam:v14 withResponseError:0], ([SUCore stringIsEqual:autoJobFSM2 to:@"MA-AUTO:DETERMINE_IF_AVAILABLE"]& 1) == 0)))
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
        downloadedCopy = v25;
        goto LABEL_29;
      }
    }
  }

  v8 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    autoJobName = [(MADAutoAssetJob *)self autoJobName];
    *buf = 138543618;
    v35 = autoJobName;
    v36 = 2114;
    v37 = downloadedCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%{public}@ | {%{public}@:replyToJobsWhenCatalogDownloaded} stager-job encountering presumed stale trigger to reply on catalog download", buf, 0x16u);
  }

LABEL_29:
}

- (void)replyToJobsWhenLookupFailed:(id)failed withLookupError:(id)error
{
  failedCopy = failed;
  errorCopy = error;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (![(MADAutoAssetJob *)self stagerJob])
  {
    v28 = errorCopy;
    v26 = failedCopy;
    v27 = objc_alloc_init(NSMutableArray);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    activeJobTasks = [(MADAutoAssetJob *)self activeJobTasks];
    v11 = [activeJobTasks countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(activeJobTasks);
        }

        v15 = *(*(&v29 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        if (!v15)
        {
          autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
          diag = [autoJobFSM2 diag];
          v22 = [NSString alloc];
          _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
          v24 = [v22 initWithFormat:@"{replyToJobsWhenLookupFailed} nil jobParam found on activeJobTasks | %@", _updateLatestSummary];
          [diag trackAnomaly:@"AUTO-JOB" forReason:v24 withResult:6103 withError:0];

LABEL_17:
          goto LABEL_19;
        }

        clientRequest = [v15 clientRequest];

        if (clientRequest)
        {
          clientRequest2 = [v15 clientRequest];
          clientRequestMessage = [clientRequest2 clientRequestMessage];
          autoJobFSM2 = [clientRequestMessage messageName];

          if (([SUCore stringIsEqual:autoJobFSM2 to:@"MA-AUTO:INTEREST_IN_CONTENT"]& 1) != 0 || ([SUCore stringIsEqual:autoJobFSM2 to:@"MA-AUTO:CHECK_FOR_NEWER"]& 1) != 0 || ([SUCore stringIsEqual:autoJobFSM2 to:@"MA-AUTO:DETERMINE_IF_AVAILABLE"]& 1) != 0 || ([SUCore stringIsEqual:autoJobFSM2 to:@"MA-AUTO-SET:NEED_FOR_ATOMIC"]& 1) != 0 || [SUCore stringIsEqual:autoJobFSM2 to:@"MA-AUTO-SET:CHECK_ATOMIC"])
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
      v25 = [activeJobTasks countByEnumeratingWithState:&v29 objects:v33 count:16];
      v12 = v25;
      if (!v25)
      {
LABEL_23:

        [(MADAutoAssetJob *)self setActiveJobTasks:v27];
        failedCopy = v26;
        errorCopy = v28;
        goto LABEL_24;
      }
    }
  }

  [(MADAutoAssetJob *)self stagerJobDetermineDone:failedCopy reportingError:errorCopy];
LABEL_24:
}

- (void)replyToJobsWhenContentDownloaded:(id)downloaded
{
  downloadedCopy = downloaded;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(MADAutoAssetJob *)self stagerJob])
  {
    [(MADAutoAssetJob *)self stagerJobDownloadDone:downloadedCopy reportingError:0];
  }

  else if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v7 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      autoJobName = [(MADAutoAssetJob *)self autoJobName];
      autoAssetSetDescriptor = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      summary = [autoAssetSetDescriptor summary];
      *buf = 138543874;
      v45 = autoJobName;
      v46 = 2114;
      v47 = downloadedCopy;
      v48 = 2114;
      v49 = summary;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ | {%{public}@:replyToJobsWhenContentDownloaded} set-download | SUCCESS | autoAssetSetDescriptor:%{public}@", buf, 0x20u);
    }

    [(MADAutoAssetJob *)self replyToSetCheckAtomicDownloadSuccess];
  }

  else
  {
    if ([(MADAutoAssetJob *)self lockingAssetContent])
    {
      downloadingAssetDescriptor = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
      if (!downloadingAssetDescriptor)
      {
        downloadingAssetDescriptor = [(MADAutoAssetJob *)self latestInstalledOnFilesystem];
      }

      autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
      assetType = [autoAssetSelector assetType];
      assetId = [downloadingAssetDescriptor assetId];
      v15 = getAutoLocalUrlFromTypeAndIdWithPurpose(assetType, assetId, 2, @"auto");

      v16 = [MAAutoAssetInfoFound alloc];
      resultSelector = [(MADAutoAssetJob *)self resultSelector];
      metadata = [downloadingAssetDescriptor metadata];
      currentStatus = [(MADAutoAssetJob *)self currentStatus];
      v20 = [v16 initForSelector:resultSelector withLocalContentURL:v15 withAssetAttributes:metadata reportingStatus:currentStatus];
      [(MADAutoAssetJob *)self setResultFound:v20];

      v21 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
        path = [v15 path];
        *buf = 138543874;
        v45 = autoJobName2;
        v46 = 2114;
        v47 = downloadedCopy;
        v48 = 2114;
        v49 = path;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ | {%{public}@:replyToJobsWhenContentDownloaded} [locking] | SUCCESS | localContentURL:%{public}@", buf, 0x20u);
      }
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    activeJobTasks = [(MADAutoAssetJob *)self activeJobTasks];
    v25 = [activeJobTasks countByEnumeratingWithState:&v39 objects:v43 count:16];
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
            objc_enumerationMutation(activeJobTasks);
          }

          v30 = *(*(&v39 + 1) + 8 * i);
          v31 = objc_autoreleasePoolPush();
          clientRequest = [v30 clientRequest];

          if (clientRequest)
          {
            [(MADAutoAssetJob *)self replyToClientForJobParam:v30 withResponseError:0];
            [v30 setClientRequest:0];
            v27 = 1;
          }

          objc_autoreleasePoolPop(v31);
        }

        v26 = [activeJobTasks countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v26);
    }

    else
    {
      v27 = 0;
    }

    if ([(MADAutoAssetJob *)self autoAssetSetJob]&& (v27 & 1) == 0)
    {
      cachedAutoAssetCatalog = [(MADAutoAssetJob *)self cachedAutoAssetCatalog];
      clientDomainName = [(MADAutoAssetJob *)self clientDomainName];
      autoAssetSetIdentifier = [(MADAutoAssetJob *)self autoAssetSetIdentifier];
      autoAssetUUID = [(MADAutoAssetJob *)self autoAssetUUID];
      setJobInformation = [(MADAutoAssetJob *)self setJobInformation];
      v38 = [setJobInformation copy];
      [MADAutoAssetControlManager autoSetJobSchedulerNoClientDownloaded:cachedAutoAssetCatalog forDomainName:clientDomainName forAssetSetIdentifier:autoAssetSetIdentifier withAutoAssetUUID:autoAssetUUID fromAutoAssetJob:self withSetJobInformation:v38 withResponseError:0];
    }
  }
}

- (void)replyToJobsWhenOperationFoundSame:(id)same forCheckAtomic:(BOOL)atomic withLookupError:(id)error
{
  atomicCopy = atomic;
  sameCopy = same;
  errorCopy = error;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  selfCopy3 = self;
  if (![(MADAutoAssetJob *)self stagerJob])
  {
    if (![(MADAutoAssetJob *)self lockingAssetContent]&& !atomicCopy)
    {
      goto LABEL_5;
    }

    selfCopy2 = self;
    if (![(MADAutoAssetJob *)self autoAssetSetJob])
    {
      autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
      assetVersion = [autoAssetSelector assetVersion];
      if (assetVersion)
      {
        autoAssetSelector2 = [(MADAutoAssetJob *)self autoAssetSelector];
        assetVersion2 = [autoAssetSelector2 assetVersion];
        latestInstalledOnFilesystem = [(MADAutoAssetJob *)self installedOnFilesystemWithVersion:assetVersion2 fromLocation:sameCopy];
      }

      else
      {
        latestInstalledOnFilesystem = [(MADAutoAssetJob *)self latestInstalledOnFilesystem];
      }

      if (latestInstalledOnFilesystem)
      {
        autoAssetSelector3 = [(MADAutoAssetJob *)self autoAssetSelector];
        assetType = [autoAssetSelector3 assetType];
        assetId = [latestInstalledOnFilesystem assetId];
        v21 = getAutoLocalUrlFromTypeAndIdWithPurpose(assetType, assetId, 2, @"auto");

        v22 = [MAAutoAssetInfoFound alloc];
        resultSelector = [(MADAutoAssetJob *)self resultSelector];
        metadata = [latestInstalledOnFilesystem metadata];
        currentStatus = [(MADAutoAssetJob *)self currentStatus];
        v26 = [v22 initForSelector:resultSelector withLocalContentURL:v21 withAssetAttributes:metadata reportingStatus:currentStatus];
        [(MADAutoAssetJob *)self setResultFound:v26];
      }

      else
      {
        [(MADAutoAssetJob *)self trackAnomaly:6103 forReason:@"{replyToJobsWhenOperationFoundSame} no associated descriptor on filesystem (should always be there at this point)"];
      }

      selfCopy3 = self;
    }

    v49 = errorCopy;
    v47 = sameCopy;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = [(MADAutoAssetJob *)selfCopy3 activeJobTasks];
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
      clientRequest = [v31 clientRequest];

      if (!clientRequest)
      {
        goto LABEL_30;
      }

      clientRequest2 = [v31 clientRequest];
      clientRequestMessage = [clientRequest2 clientRequestMessage];
      messageName = [clientRequestMessage messageName];

      if (atomicCopy)
      {
        domain = [v49 domain];
        if (([SUCore stringIsEqual:domain to:@"com.apple.MobileAssetError.AutoAsset"]& 1) != 0)
        {
          code = [v49 code];

          v39 = v49;
          selfCopy3 = selfCopy2;
          if (code == "ateCoreConnect.framework/SoftwareUpdateCoreConnect")
          {
            goto LABEL_28;
          }
        }

        else
        {

          selfCopy3 = selfCopy2;
        }
      }

      if (([SUCore stringIsEqual:messageName to:@"MA-AUTO:LOCK_CONTENT"]& 1) == 0 && ![SUCore stringIsEqual:messageName to:@"MA-AUTO-SET:LOCK_ATOMIC"])
      {
        goto LABEL_29;
      }

      v39 = 0;
LABEL_28:
      [(MADAutoAssetJob *)selfCopy3 replyToClientForJobParam:v31 withResponseError:v39];
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

          sameCopy = v47;
          errorCopy = v49;
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
  if ([(MADAutoAssetJob *)selfCopy3 autoAssetSetJob]&& (v12 & 1) == 0)
  {
    cachedAutoAssetCatalog = [(MADAutoAssetJob *)selfCopy3 cachedAutoAssetCatalog];
    clientDomainName = [(MADAutoAssetJob *)selfCopy3 clientDomainName];
    [(MADAutoAssetJob *)selfCopy3 autoAssetSetIdentifier];
    v43 = v42 = selfCopy3;
    autoAssetUUID = [(MADAutoAssetJob *)v42 autoAssetUUID];
    setJobInformation = [(MADAutoAssetJob *)v42 setJobInformation];
    v46 = [setJobInformation copy];
    [MADAutoAssetControlManager autoSetJobSchedulerNoClientFoundSame:cachedAutoAssetCatalog forDomainName:clientDomainName forAssetSetIdentifier:v43 withAutoAssetUUID:autoAssetUUID fromAutoAssetJob:v42 withSetJobInformation:v46 withResponseError:errorCopy];
  }
}

- (void)replyToSetCheckAtomicDownloadSuccess
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v28 = objc_alloc_init(NSMutableArray);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    activeJobTasks = [(MADAutoAssetJob *)self activeJobTasks];
    v6 = [activeJobTasks countByEnumeratingWithState:&v30 objects:v34 count:16];
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
          objc_enumerationMutation(activeJobTasks);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        if (v10)
        {
          clientRequest = [v10 clientRequest];

          if (!clientRequest)
          {
            [v28 addObject:v10];
            goto LABEL_16;
          }

          clientRequest2 = [v10 clientRequest];
          clientRequestMessage = [clientRequest2 clientRequestMessage];
          messageName = [clientRequestMessage messageName];

          if (([SUCore stringIsEqual:messageName to:@"MA-AUTO-SET:CHECK_ATOMIC"]& 1) != 0 || [SUCore stringIsEqual:messageName to:@"MA-AUTO-SET:LOCK_ATOMIC"])
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
          messageName = [(MADAutoAssetJob *)self autoJobFSM];
          diag = [messageName diag];
          v17 = [NSString alloc];
          _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
          v19 = [v17 initWithFormat:@"{replyToSetCheckAtomicDownloadSuccess} nil jobParam found on activeJobTasks | %@", _updateLatestSummary];
          [diag trackAnomaly:@"AUTO-JOB" forReason:v19 withResult:6103 withError:0];
        }

LABEL_16:
        objc_autoreleasePoolPop(v11);
      }

      v7 = [activeJobTasks countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (!v7)
      {
LABEL_23:

        [(MADAutoAssetJob *)self setActiveJobTasks:v28];
        if ([(MADAutoAssetJob *)self autoAssetSetJob])
        {
          if ((v27 & 1) == 0)
          {
            cachedAutoAssetCatalog = [(MADAutoAssetJob *)self cachedAutoAssetCatalog];
            clientDomainName = [(MADAutoAssetJob *)self clientDomainName];
            autoAssetSetIdentifier = [(MADAutoAssetJob *)self autoAssetSetIdentifier];
            autoAssetUUID = [(MADAutoAssetJob *)self autoAssetUUID];
            setJobInformation = [(MADAutoAssetJob *)self setJobInformation];
            v26 = [setJobInformation copy];
            [MADAutoAssetControlManager autoSetJobSchedulerNoClientDownloaded:cachedAutoAssetCatalog forDomainName:clientDomainName forAssetSetIdentifier:autoAssetSetIdentifier withAutoAssetUUID:autoAssetUUID fromAutoAssetJob:self withSetJobInformation:v26 withResponseError:0];
          }
        }

        return;
      }
    }
  }

  autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
  diag2 = [autoJobFSM2 diag];
  [diag2 trackAnomaly:@"AUTO-SET-JOB:REPLY" forReason:@"replyToSetCheckAtomicDownloadSuccess should only be called for set-job" withResult:6103 withError:0];
}

- (void)finishedSetSameVersionFound:(id)found
{
  p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
  foundCopy = found;
  foundCopy = [[NSString alloc] initWithFormat:@"%@:finishedSetSameVersionFound", foundCopy];

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    if ([(MADAutoAssetJob *)self determiningAssetContent])
    {
      v7 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        autoJobName = [(MADAutoAssetJob *)self autoJobName];
        autoAssetSetDescriptor = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
        summary = [autoAssetSetDescriptor summary];
        *buf = 138543874;
        v21 = autoJobName;
        v22 = 2114;
        v23 = foundCopy;
        v24 = 2114;
        v25 = summary;
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
        autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
        autoAssetSetDescriptor2 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
        if (autoAssetSetDescriptor2)
        {
          p_weak_ivar_lyt = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
          summary2 = [p_weak_ivar_lyt summary];
        }

        else
        {
          summary2 = @"N";
        }

        *buf = 138543874;
        v21 = autoJobName2;
        v22 = 2114;
        v23 = foundCopy;
        v24 = 2114;
        v25 = summary2;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ | {%{public}@} newer version found that is ramped (and have older atomic-instance) - discarding newer set-descriptor | autoAssetSetDescriptor:%{public}@", buf, 0x20u);
        if (autoAssetSetDescriptor2)
        {
        }
      }

      goto LABEL_24;
    }

    prePersonalizedSelectors = [(MADAutoAssetJob *)self prePersonalizedSelectors];
    if ([prePersonalizedSelectors count])
    {
      autoAssetSetDescriptor3 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
      v17 = [MADAutoAssetSecure readyToCommitPrePersonalized:foundCopy forSetDescriptor:autoAssetSetDescriptor3];

      if (v17)
      {
        [(MADAutoAssetJob *)self _commitPrePersonalized:foundCopy error:0];
LABEL_15:
        [(MADAutoAssetJob *)self foundAndDownloadedSet:foundCopy];
LABEL_25:
        v11 = 0;
LABEL_26:
        [(MADAutoAssetJob *)self doneWithAllJobs:foundCopy withLookupError:v11];
        [(MADAutoAssetJob *)self autoAssetJobFinished:foundCopy forJobFinishedReason:@"FOUND_SAME" failingWithError:v11];
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

      v19 = [[NSString alloc] initWithFormat:@"AUTO-SET-JOB(%@)", foundCopy];
      v11 = [MAAutoAssetError buildError:v18 fromOperation:v19 underlyingError:0 withDescription:@"same version found that has already been downloaded to the filesystem"];

      goto LABEL_26;
    }

    goto LABEL_15;
  }

  v11 = [[NSString alloc] initWithFormat:@"{%@} should only execute for set-job", foundCopy];
  [(MADAutoAssetJob *)self statusChange:foundCopy catalogAnomaly:6103 forReason:v11];
LABEL_27:
}

- (void)doneWithAllJobs:(id)jobs
{
  jobsCopy = jobs;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(MADAutoAssetJob *)self stagerJob])
  {
    [(MADAutoAssetJob *)self stagerJobDone:jobsCopy reportingError:0];
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    activeJobTasks = [(MADAutoAssetJob *)self activeJobTasks];
    v8 = [activeJobTasks countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(activeJobTasks);
          }

          v13 = *(*(&v23 + 1) + 8 * v12);
          v14 = objc_autoreleasePoolPush();
          [(MADAutoAssetJob *)self replyToClientForJobParam:v13 withResponseError:0];
          objc_autoreleasePoolPop(v14);
          v12 = v12 + 1;
        }

        while (v11 != v12);
        v11 = [activeJobTasks countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    v15 = objc_alloc_init(NSMutableArray);
    [(MADAutoAssetJob *)self setActiveJobTasks:v15];

    autoAssetSetJob = [(MADAutoAssetJob *)self autoAssetSetJob];
    if (!v9 && autoAssetSetJob)
    {
      cachedAutoAssetCatalog = [(MADAutoAssetJob *)self cachedAutoAssetCatalog];
      clientDomainName = [(MADAutoAssetJob *)self clientDomainName];
      autoAssetSetIdentifier = [(MADAutoAssetJob *)self autoAssetSetIdentifier];
      autoAssetUUID = [(MADAutoAssetJob *)self autoAssetUUID];
      setJobInformation = [(MADAutoAssetJob *)self setJobInformation];
      v22 = [setJobInformation copy];
      [MADAutoAssetControlManager autoSetJobSchedulerNoClientDownloaded:cachedAutoAssetCatalog forDomainName:clientDomainName forAssetSetIdentifier:autoAssetSetIdentifier withAutoAssetUUID:autoAssetUUID fromAutoAssetJob:self withSetJobInformation:v22 withResponseError:0];
    }
  }
}

- (void)doneWithAllJobs:(id)jobs withLookupError:(id)error
{
  jobsCopy = jobs;
  errorCopy = error;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  firstLookupError = [(MADAutoAssetJob *)self firstLookupError];

  if (!firstLookupError)
  {
    [(MADAutoAssetJob *)self setFirstLookupError:errorCopy];
  }

  if (![(MADAutoAssetJob *)self stagerJob])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    activeJobTasks = [(MADAutoAssetJob *)self activeJobTasks];
    v12 = [activeJobTasks countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v29 = 0;
      obj = activeJobTasks;
      v31 = 0;
      v32 = jobsCopy;
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
          clientRequest = [v15 clientRequest];
          clientRequestMessage = [clientRequest clientRequestMessage];
          messageName = [clientRequestMessage messageName];

          v20 = [SUCore stringIsEqual:messageName to:@"MA-AUTO-SET:CHECK_ATOMIC"];
          if ((+[SUCore stringIsEqual:to:](SUCore, "stringIsEqual:to:", messageName, @"MA-AUTO:LOCK_CONTENT") & 1) != 0 || ((+[SUCore stringIsEqual:to:](SUCore, "stringIsEqual:to:", messageName, @"MA-AUTO-SET:LOCK_ATOMIC") | v20)) && [errorCopy code] == "ateCoreConnect.framework/SoftwareUpdateCoreConnect")
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
            if ([errorCopy code] == "ateCoreConnect.framework/SoftwareUpdateCoreConnect" && -[MADAutoAssetJob autoAssetSetJob](self, "autoAssetSetJob") && !-[MADAutoAssetJob setDescriptorDiscardRamped](self, "setDescriptorDiscardRamped"))
            {
              [(MADAutoAssetJob *)self foundAndDownloadedSet:v32];
            }

            [(MADAutoAssetJob *)self finishJobTaskForJobParam:v15 withUnderlyingError:errorCopy fromAction:v32];
          }

          objc_autoreleasePoolPop(v16);
        }

        v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v13);

      jobsCopy = v32;
      v21 = v29;
      if ((v29 & 0x100000000) != 0)
      {
        [(MADAutoAssetJob *)self replyToJobsWhenOperationFoundSame:v32 forCheckAtomic:v31 & 1 withLookupError:errorCopy];
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
      cachedAutoAssetCatalog = [(MADAutoAssetJob *)self cachedAutoAssetCatalog];
      clientDomainName = [(MADAutoAssetJob *)self clientDomainName];
      autoAssetSetIdentifier = [(MADAutoAssetJob *)self autoAssetSetIdentifier];
      autoAssetUUID = [(MADAutoAssetJob *)self autoAssetUUID];
      setJobInformation = [(MADAutoAssetJob *)self setJobInformation];
      v27 = [setJobInformation copy];
      [MADAutoAssetControlManager autoSetJobSchedulerNoClientFoundSame:cachedAutoAssetCatalog forDomainName:clientDomainName forAssetSetIdentifier:autoAssetSetIdentifier withAutoAssetUUID:autoAssetUUID fromAutoAssetJob:self withSetJobInformation:v27 withResponseError:errorCopy];
    }

    goto LABEL_34;
  }

  [(MADAutoAssetJob *)self stagerJobDone:jobsCopy reportingError:errorCopy];
LABEL_35:
}

- (id)_newSelectorForCachedAssetCatalog:(id)catalog
{
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  catalogCopy = catalog;
  v4 = [catalogCopy countByEnumeratingWithState:&v70 objects:v81 count:16];
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
  v57 = catalogCopy;
  do
  {
    v9 = 0;
    v63 = v6;
    do
    {
      if (*v71 != v8)
      {
        objc_enumerationMutation(catalogCopy);
      }

      v10 = *(*(&v70 + 1) + 8 * v9);
      v11 = objc_autoreleasePoolPush();
      v12 = [catalogCopy objectForKey:v10];
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

          safeSummary = [catalogCopy safeSummary];
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
          v80 = safeSummary;
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
          v25 = [catalogCopy safeObjectForKey:@"Assets" ofClass:objc_opt_class()];
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
              catalogCopy = v57;
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
          [catalogCopy safeSummary];
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
    v6 = [catalogCopy countByEnumeratingWithState:&v70 objects:v81 count:16];
  }

  while (v6);

  if (!v7)
  {
LABEL_71:
    v52 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      safeSummary2 = [catalogCopy safeSummary];
      *buf = 138543362;
      v76 = safeSummary2;
      _os_log_impl(&dword_0, v52, OS_LOG_TYPE_ERROR, "{_newSelectorForCachedAssetCatalog} Selector could not be determined from set-catalog lookup response | autoAssetSetCatalog:%{public}@", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (void)stagerJobReportProgress:(id)progress reportingError:(id)error
{
  progressCopy = progress;
  errorCopy = error;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(MADAutoAssetJob *)self stagerJob])
  {
    if (![(MADAutoAssetJob *)self stagerJobResultsReported])
    {
      [MADAutoAssetControlManager autoAssetStagerJobDownloadProgress:progressCopy withProgressError:errorCopy];
    }
  }

  else
  {
    [(MADAutoAssetJob *)self trackAnomaly:6103 forReason:@"{stagerJobReportProgress} not a stager-job"];
  }
}

- (void)stagerJobDone:(id)done reportingError:(id)error
{
  doneCopy = done;
  errorCopy = error;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(MADAutoAssetJob *)self stagerJob])
  {
    if ([(MADAutoAssetJob *)self stagerJobDownloadContent])
    {
      [(MADAutoAssetJob *)self stagerJobDownloadDone:doneCopy reportingError:errorCopy];
    }

    else
    {
      [(MADAutoAssetJob *)self stagerJobDetermineDone:doneCopy reportingError:errorCopy];
    }
  }

  else
  {
    doneCopy = [[NSString alloc] initWithFormat:@"{%@:stagerJobDone} not a stager-job", doneCopy];
    [(MADAutoAssetJob *)self trackAnomaly:6103 forReason:doneCopy];
  }
}

- (void)stagerJobDetermineDone:(id)done reportingError:(id)error
{
  doneCopy = done;
  errorCopy = error;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (![(MADAutoAssetJob *)self stagerJob])
  {
    doneCopy = [[NSString alloc] initWithFormat:@"{%@:stagerJobDetermineDone} not a stager-job", doneCopy];
    [(MADAutoAssetJob *)self trackAnomaly:6103 forReason:doneCopy];

    goto LABEL_18;
  }

  if (![(MADAutoAssetJob *)self stagerJobResultsReported])
  {
    v10 = errorCopy;
    v24 = errorCopy;
    if (!v10)
    {
      stagerJobAutoAssetCatalog = [(MADAutoAssetJob *)self stagerJobAutoAssetCatalog];

      if (stagerJobAutoAssetCatalog)
      {
        stagerJobAutoAssetCatalog2 = [(MADAutoAssetJob *)self stagerJobAutoAssetCatalog];
        v23 = 0;
        goto LABEL_8;
      }

      v10 = [MAAutoAssetError buildError:6111 fromOperation:doneCopy underlyingError:0 withDescription:@"stager-job determine-if-available done yet no auto-asset-catalog"];
    }

    stagerJobAutoAssetCatalog2 = 0;
    v23 = v10;
LABEL_8:
    v13 = objc_alloc_init(NSMutableArray);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    latestAssetDescriptorOnFilesystemBySpecifier = [(MADAutoAssetJob *)self latestAssetDescriptorOnFilesystemBySpecifier];
    v15 = [latestAssetDescriptorOnFilesystemBySpecifier countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(latestAssetDescriptorOnFilesystemBySpecifier);
          }

          v19 = *(*(&v25 + 1) + 8 * v18);
          latestAssetDescriptorOnFilesystemBySpecifier2 = [(MADAutoAssetJob *)self latestAssetDescriptorOnFilesystemBySpecifier];
          v21 = [latestAssetDescriptorOnFilesystemBySpecifier2 safeObjectForKey:v19 ofClass:objc_opt_class()];

          if (v21)
          {
            [v13 addObject:v21];
          }

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [latestAssetDescriptorOnFilesystemBySpecifier countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v16);
    }

    [MADAutoAssetControlManager autoAssetStagerSetJobDetermineDone:stagerJobAutoAssetCatalog2 withBaseForStagingDescriptors:v13 withDetermineError:v23];
    [(MADAutoAssetJob *)self setStagerJobResultsReported:1];

    errorCopy = v24;
  }

LABEL_18:
}

- (void)stagerJobDownloadDone:(id)done reportingError:(id)error
{
  doneCopy = done;
  errorCopy = error;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(MADAutoAssetJob *)self stagerJob])
  {
    if (![(MADAutoAssetJob *)self stagerJobResultsReported])
    {
      v14 = errorCopy;
      v10 = [(MADAutoAssetJob *)self currentJobInformation:&v14];
      v11 = v14;

      downloadingAssetDescriptor = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
      [MADAutoAssetControlManager autoAssetStagerJobDownloadDone:v10 withDownloadedDescriptor:downloadingAssetDescriptor withDownloadError:v11];

      [(MADAutoAssetJob *)self setStagerJobResultsReported:1];
      errorCopy = v11;
    }
  }

  else
  {
    doneCopy = [[NSString alloc] initWithFormat:@"{%@:stagerJobDownloadDone} not a stager-job", doneCopy];
    [(MADAutoAssetJob *)self trackAnomaly:6103 forReason:doneCopy];
  }
}

- (id)decideFollowupBoost:(id)boost forJobEvent:(id)event boostEvent:(id)boostEvent noBoostEvent:(id)noBoostEvent
{
  boostEventCopy = boostEvent;
  noBoostEventCopy = noBoostEvent;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

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
    v15 = boostEventCopy;
  }

  else
  {
    v15 = noBoostEventCopy;
  }

  v16 = v15;

  return v15;
}

- (id)decideFollowupMoreAssetsToDownload:(id)download withEventInfo:(id)info
{
  downloadCopy = download;
  infoCopy = info;
  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    currentSetStatus = [(MADAutoAssetJob *)self currentSetStatus];
    downloadProgress = [currentSetStatus downloadProgress];
    [downloadProgress setDownloadedAssetCount:{objc_msgSend(downloadProgress, "downloadedAssetCount") + 1}];

    currentSetStatus2 = [(MADAutoAssetJob *)self currentSetStatus];
    downloadProgress2 = [currentSetStatus2 downloadProgress];
    remainingAssetCount = [downloadProgress2 remainingAssetCount];

    if (remainingAssetCount >= 1)
    {
      currentSetStatus3 = [(MADAutoAssetJob *)self currentSetStatus];
      downloadProgress3 = [currentSetStatus3 downloadProgress];
      [downloadProgress3 setRemainingAssetCount:{objc_msgSend(downloadProgress3, "remainingAssetCount") - 1}];
    }

    baseForPatch = [(MADAutoAssetJob *)self baseForPatch];
    v16 = baseForPatch != 0;

    [(MADAutoAssetJob *)self foundAndDownloaded:downloadCopy forJobParam:infoCopy wasPatched:v16];
    downloadingAssetDescriptor = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    metadata = [downloadingAssetDescriptor metadata];
    v19 = [metadata safeIntegerForKey:@"_DownloadSize"];

    if ([(MADAutoAssetJob *)self setProgressAssetTotalWrittenBytes]< v19)
    {
      currentSetStatus4 = [(MADAutoAssetJob *)self currentSetStatus];
      downloadProgress4 = [currentSetStatus4 downloadProgress];
      [downloadProgress4 setIsStalled:0];

      if ([(MADAutoAssetJob *)self setProgressAssetTotalWrittenBytes]>= 1)
      {
        v22 = v19 - [(MADAutoAssetJob *)self setProgressAssetTotalWrittenBytes];
        currentSetStatus5 = [(MADAutoAssetJob *)self currentSetStatus];
        downloadProgress5 = [currentSetStatus5 downloadProgress];
        [downloadProgress5 setTotalWrittenBytes:{objc_msgSend(downloadProgress5, "totalWrittenBytes") + v22}];
      }

      [(MADAutoAssetJob *)self setSetProgressAssetTotalWrittenBytes:v19];
      [(MADAutoAssetJob *)self statusChangeReportCurrent:0];
    }

    [(MADAutoAssetJob *)self setSetProgressOverallTotalWrittenBytes:[(MADAutoAssetJob *)self setProgressAssetTotalWrittenBytes]+ [(MADAutoAssetJob *)self setProgressOverallTotalWrittenBytes]];
    [(MADAutoAssetJob *)self setSetProgressAssetTotalWrittenBytes:0];
    [(MADAutoAssetJob *)self updateSetTrackingWithSuccessfulAssetDownload];
    [(MADAutoAssetJob *)self reportJustDownloadedAssetOfSet:downloadCopy];
    if ([(MADAutoAssetJob *)self remainingSetDescriptorToBeDownloaded])
    {
      v31 = 0;
      v25 = [(MADAutoAssetJob *)self placeNextSetAssetDescriptorToDownload:downloadCopy restrictToFull:0 error:&v31];
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
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  LODWORD(autoJobFSM) = [(MADAutoAssetJob *)self autoAssetSetJob];
  v5 = [(MADAutoAssetJob *)self refreshOnFilesystemFromManagerPromotingIfStaged:0];
  if (!autoJobFSM)
  {
    if ([(MADAutoAssetJob *)self lockingAssetContent])
    {
      latestInstalledOnFilesystem = [(MADAutoAssetJob *)self latestInstalledOnFilesystem];
    }

    else
    {
      latestInstalledOnFilesystem = 0;
    }

    if ([(MADAutoAssetJob *)self lockingAssetContent])
    {
      autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
      assetVersion = [autoAssetSelector assetVersion];

      if (assetVersion)
      {
        autoAssetSelector2 = [(MADAutoAssetJob *)self autoAssetSelector];
        assetVersion2 = [autoAssetSelector2 assetVersion];
        v21 = [(MADAutoAssetJob *)self installedOnFilesystemWithVersion:assetVersion2 fromLocation:@"checkFilesystemAndDecidePurgeOrLookup"];

        latestInstalledOnFilesystem = v21;
      }
    }

    if ([(MADAutoAssetJob *)self lockingAssetContent]&& latestInstalledOnFilesystem)
    {
      [(MADAutoAssetJob *)self updateResultPropertiesWithDescriptor:latestInstalledOnFilesystem];
      v22 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        autoJobName = [(MADAutoAssetJob *)self autoJobName];
        selectorName = [latestInstalledOnFilesystem selectorName];
        *v47 = 138543618;
        *&v47[4] = autoJobName;
        *&v47[12] = 2114;
        *&v47[14] = selectorName;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ | {checkFilesystemAndDecidePurgeOrLookup} found already downloaded (on filesystem) asset | selector:%{public}@", v47, 0x16u);
      }

      v25 = @"AlreadyDownloaded";
      goto LABEL_45;
    }

    if (![(MADAutoAssetJob *)self stagerJob])
    {
      autoAssetSelector3 = [(MADAutoAssetJob *)self autoAssetSelector];
      v27 = [MADAutoAssetLookupCache cachedLookupResultForSelector:autoAssetSelector3 forStaging:0];

      if (v27)
      {
        [(MADAutoAssetJob *)self adoptCachedLookupResult:v27];
        v28 = [MADAutoAssetJobParam alloc];
        autoAssetUUID = [(MADAutoAssetJob *)self autoAssetUUID];
        v16 = [(MADAutoAssetJobParam *)v28 initForFinishedJobID:autoAssetUUID withCatalog:v27 whereCatalogFromLookupCache:1 withError:0];

        v30 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
          summary = [(MADAutoAssetJobParam *)v16 summary];
          *v47 = 138543618;
          *&v47[4] = autoJobName2;
          *&v47[12] = 2114;
          *&v47[14] = summary;
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

    lockingAssetContent = [(MADAutoAssetJob *)self lockingAssetContent];
    v22 = _MADLog(@"AutoJob");
    v34 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (lockingAssetContent)
    {
      if (v34)
      {
        autoJobName3 = [(MADAutoAssetJob *)self autoJobName];
        *v47 = 138543362;
        *&v47[4] = autoJobName3;
        v36 = "%{public}@ | {checkFilesystemAndDecidePurgeOrLookup} no downloaded asset found (on filesystem), will attempt lookup for lock request";
LABEL_43:
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, v36, v47, 0xCu);
      }
    }

    else if (v34)
    {
      autoJobName3 = [(MADAutoAssetJob *)self autoJobName];
      *v47 = 138543362;
      *&v47[4] = autoJobName3;
      v36 = "%{public}@ | {checkFilesystemAndDecidePurgeOrLookup} will attempt lookup for client request";
      goto LABEL_43;
    }

    v25 = @"PerformLookup";
LABEL_45:

LABEL_46:
    v44 = [MADAutoAssetJobParam alloc];
    _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
    v16 = [(MADAutoAssetJobParam *)v44 initWithSafeSummary:_updateLatestSummary];

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
      autoJobName4 = [(MADAutoAssetJob *)self autoJobName];
      *v47 = 138543362;
      *&v47[4] = autoJobName4;
      v8 = "%{public}@ | {checkFilesystemAndDecidePurgeOrLookup} will attempt lookup for stager-formed set-configuration";
LABEL_5:
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, v8, v47, 0xCu);
    }
  }

  else
  {
    foundSetNewerDiscoveredAtomicEntries = [(MADAutoAssetJob *)self foundSetNewerDiscoveredAtomicEntries];
    v12 = [foundSetNewerDiscoveredAtomicEntries count];

    if (v12)
    {
      if ([(MADAutoAssetJob *)self lockingAssetContent])
      {
        [(MADAutoAssetJob *)self updateSetResults:@"checkFilesystemAndDecidePurgeOrLookup" atomicInstanceDiscovered:1 availableForUse:1 downloading:0 buildingResultSetFound:1];
      }

      v6 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        autoJobName5 = [(MADAutoAssetJob *)self autoJobName];
        *v47 = 138543362;
        *&v47[4] = autoJobName5;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ | {checkFilesystemAndDecidePurgeOrLookup} found already downloaded (on filesystem) all discovered", v47, 0xCu);
      }

      v9 = @"AlreadyDownloaded";
      goto LABEL_15;
    }

    setConfiguration = [(MADAutoAssetJob *)self setConfiguration];
    v38 = [MADAutoAssetLookupCache cachedLookupResultForSetConfiguration:setConfiguration forStaging:0];

    if (v38)
    {
      [(MADAutoAssetJob *)self adoptCachedLookupResult:v38];
      v39 = [MADAutoAssetJobParam alloc];
      autoAssetUUID2 = [(MADAutoAssetJob *)self autoAssetUUID];
      v16 = [(MADAutoAssetJobParam *)v39 initForFinishedJobID:autoAssetUUID2 withCatalog:v38 whereCatalogFromLookupCache:1 withError:0];

      v41 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        autoJobName6 = [(MADAutoAssetJob *)self autoJobName];
        summary2 = [(MADAutoAssetJobParam *)v16 summary];
        *v47 = 138543618;
        *&v47[4] = autoJobName6;
        *&v47[12] = 2114;
        *&v47[14] = summary2;
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
      autoJobName4 = [(MADAutoAssetJob *)self autoJobName];
      *v47 = 138543362;
      *&v47[4] = autoJobName4;
      v8 = "%{public}@ | {checkFilesystemAndDecidePurgeOrLookup} will attempt lookup for client request";
      goto LABEL_5;
    }
  }

  v9 = @"PerformLookup";
LABEL_15:

LABEL_16:
  v14 = [MADAutoAssetJobParam alloc];
  _updateLatestSummary2 = [(MADAutoAssetJob *)self _updateLatestSummary];
  v16 = [(MADAutoAssetJobParam *)v14 initWithSafeSummary:_updateLatestSummary2];

LABEL_17:
  latestInstalledOnFilesystem = [(MADAutoAssetJob *)self autoJobFSM];
  [latestInstalledOnFilesystem followupEvent:v9 withInfo:v16];
LABEL_48:
}

- (void)updateResultPropertiesWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    [(MADAutoAssetJob *)self statusChange:@"updateResultPropertiesWithDescriptor" catalogAnomaly:6103 forReason:@"updateResultPropertiesWithDescriptor should never execute for set-job"];
  }

  else
  {
    v4 = [MAAutoAssetSelector alloc];
    autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
    assetType = [autoAssetSelector assetType];
    autoAssetSelector2 = [(MADAutoAssetJob *)self autoAssetSelector];
    assetSpecifier = [autoAssetSelector2 assetSpecifier];
    assetVersion = [descriptorCopy assetVersion];
    autoAssetSelector3 = [(MADAutoAssetJob *)self autoAssetSelector];
    downloadDecryptionKey = [autoAssetSelector3 downloadDecryptionKey];
    v12 = [v4 initForAssetType:assetType withAssetSpecifier:assetSpecifier matchingAssetVersion:assetVersion usingDecryptionKey:downloadDecryptionKey];
    [(MADAutoAssetJob *)self setResultSelector:v12];

    v13 = [MAAutoAssetInfoInstance alloc];
    activeInstance = [(MADAutoAssetJob *)self activeInstance];
    autoAssetClientName = [activeInstance autoAssetClientName];
    activeInstance2 = [(MADAutoAssetJob *)self activeInstance];
    clientProcessName = [activeInstance2 clientProcessName];
    activeInstance3 = [(MADAutoAssetJob *)self activeInstance];
    clientProcessID = [activeInstance3 clientProcessID];
    resultSelector = [(MADAutoAssetJob *)self resultSelector];
    activeInstance4 = [(MADAutoAssetJob *)self activeInstance];
    frameworkInstanceUUID = [activeInstance4 frameworkInstanceUUID];
    v22 = [v13 initForClientName:autoAssetClientName withProcessName:clientProcessName withProcessID:clientProcessID usingAssetSelector:resultSelector associatingFrameworkUUID:frameworkInstanceUUID];
    [(MADAutoAssetJob *)self setResultInstance:v22];

    assetType2 = [descriptorCopy assetType];
    assetId = [descriptorCopy assetId];
    v25 = getAutoLocalUrlFromTypeAndIdWithPurpose(assetType2, assetId, 2, @"auto");

    v26 = [MAAutoAssetInfoFound alloc];
    resultSelector2 = [(MADAutoAssetJob *)self resultSelector];
    metadata = [descriptorCopy metadata];
    currentStatus = [(MADAutoAssetJob *)self currentStatus];
    v30 = [v26 initForSelector:resultSelector2 withLocalContentURL:v25 withAssetAttributes:metadata reportingStatus:currentStatus];
    [(MADAutoAssetJob *)self setResultFound:v30];
  }
}

- (void)updateSetResults:(id)results atomicInstanceDiscovered:(BOOL)discovered availableForUse:(BOOL)use downloading:(BOOL)downloading buildingResultSetFound:(BOOL)found
{
  foundCopy = found;
  downloadingCopy = downloading;
  useCopy = use;
  discoveredCopy = discovered;
  resultsCopy = results;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {
    autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
    diag = [autoJobFSM2 diag];
    resultsCopy = [[NSString alloc] initWithFormat:@"{%@:updateSetResults} should only be called for set-job", resultsCopy];
    [diag trackAnomaly:@"AUTO-SET-JOB" forReason:resultsCopy withResult:6103 withError:0];
LABEL_22:

    goto LABEL_24;
  }

  currentSetNotifications = [(MADAutoAssetJob *)self currentSetNotifications];

  if (!currentSetNotifications)
  {
    v15 = objc_alloc_init(MANAutoAssetSetNotifications);
    [(MADAutoAssetJob *)self setCurrentSetNotifications:v15];
  }

  currentSetNotifications2 = [(MADAutoAssetJob *)self currentSetNotifications];
  [currentSetNotifications2 setAtomicInstanceDiscovered:discoveredCopy];

  currentSetNotifications3 = [(MADAutoAssetJob *)self currentSetNotifications];
  [currentSetNotifications3 setAtomicInstanceAvailableForUse:useCopy];

  currentSetNotifications4 = [(MADAutoAssetJob *)self currentSetNotifications];
  [currentSetNotifications4 setDownloadPending:downloadingCopy];

  currentSetNotifications5 = [(MADAutoAssetJob *)self currentSetNotifications];
  [currentSetNotifications5 setDownloadProgress:downloadingCopy];

  currentSetStatus = [(MADAutoAssetJob *)self currentSetStatus];
  downloadProgress = [currentSetStatus downloadProgress];

  v61 = [MANAutoAssetSetStatus alloc];
  autoAssetSetDescriptor = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  clientDomainName = [autoAssetSetDescriptor clientDomainName];
  autoAssetSetDescriptor2 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  assetSetIdentifier = [autoAssetSetDescriptor2 assetSetIdentifier];
  setConfiguration = [(MADAutoAssetJob *)self setConfiguration];
  autoAssetEntries = [setConfiguration autoAssetEntries];
  if (useCopy)
  {
    autoAssetSetDescriptor3 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    v75 = [(MADAutoAssetJob *)self newAtomicInstancesDownloadedForDescriptor:?];
  }

  else
  {
    v75 = 0;
  }

  autoAssetSetDescriptor4 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  catalogCachedAssetSetID = [autoAssetSetDescriptor4 catalogCachedAssetSetID];
  autoAssetSetDescriptor5 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  catalogDownloadedFromLive = [autoAssetSetDescriptor5 catalogDownloadedFromLive];
  autoAssetSetDescriptor6 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  catalogLastTimeChecked = [autoAssetSetDescriptor6 catalogLastTimeChecked];
  autoAssetSetDescriptor7 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  catalogPostedDate = [autoAssetSetDescriptor7 catalogPostedDate];
  if (discoveredCopy)
  {
    autoAssetSetDescriptor8 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    discoveredAtomicInstance = [autoAssetSetDescriptor8 discoveredAtomicInstance];
  }

  else
  {
    discoveredAtomicInstance = 0;
  }

  v82 = clientDomainName;
  v83 = downloadProgress;
  v70 = useCopy;
  v71 = foundCopy;
  v69 = discoveredCopy;
  if (useCopy)
  {
    autoAssetSetDescriptor9 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    latestDowloadedAtomicInstanceEntries = [autoAssetSetDescriptor9 latestDowloadedAtomicInstanceEntries];
    autoAssetSetDescriptor10 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    latestDownloadedAtomicInstance = [autoAssetSetDescriptor10 latestDownloadedAtomicInstance];
    autoAssetSetDescriptor11 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    latestDowloadedAtomicInstanceEntries2 = [autoAssetSetDescriptor11 latestDowloadedAtomicInstanceEntries];
  }

  else
  {
    latestDowloadedAtomicInstanceEntries = [(MADAutoAssetJob *)self foundSetNewerDiscoveredAtomicEntries];
    latestDowloadedAtomicInstanceEntries2 = 0;
    latestDownloadedAtomicInstance = 0;
  }

  autoAssetSetDescriptor12 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  downloadedCatalogCachedAssetSetID = [autoAssetSetDescriptor12 downloadedCatalogCachedAssetSetID];
  autoAssetSetDescriptor13 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  downloadedCatalogDownloadedFromLive = [autoAssetSetDescriptor13 downloadedCatalogDownloadedFromLive];
  autoAssetSetDescriptor14 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  downloadedCatalogLastTimeChecked = [autoAssetSetDescriptor14 downloadedCatalogLastTimeChecked];
  autoAssetSetDescriptor15 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  downloadedCatalogPostedDate = [autoAssetSetDescriptor15 downloadedCatalogPostedDate];
  currentSetNotifications6 = [(MADAutoAssetJob *)self currentSetNotifications];
  aggregatedClientSetPolicy = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  haveReceivedLookupResponse = [(MADAutoAssetJob *)self haveReceivedLookupResponse];
  vendingAtomicInstanceForConfiguredEntries = [(MADAutoAssetJob *)self vendingAtomicInstanceForConfiguredEntries];
  downloadingUserInitiated = [(MADAutoAssetJob *)self downloadingUserInitiated];
  autoAssetSetDescriptor16 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  downloadedNetworkBytes = [autoAssetSetDescriptor16 downloadedNetworkBytes];
  autoAssetSetDescriptor17 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  BYTE2(v46) = downloadingUserInitiated;
  BYTE1(v46) = vendingAtomicInstanceForConfiguredEntries;
  LOBYTE(v46) = haveReceivedLookupResponse;
  LOBYTE(v45) = 0;
  v34 = latestDowloadedAtomicInstanceEntries;
  v35 = -[MANAutoAssetSetStatus initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDownloadedAtomicInstanceFromPreSUStaging:withLatestDowloadedAtomicInstanceEntries:withPreviouslyVendedLockedAtomicInstance:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:](v61, "initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDownloadedAtomicInstanceFromPreSUStaging:withLatestDowloadedAtomicInstanceEntries:withPreviouslyVendedLockedAtomicInstance:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:", v82, assetSetIdentifier, autoAssetEntries, v75, catalogCachedAssetSetID, catalogDownloadedFromLive, catalogLastTimeChecked, catalogPostedDate, discoveredAtomicInstance, latestDowloadedAtomicInstanceEntries, latestDownloadedAtomicInstance, v45, latestDowloadedAtomicInstanceEntries2, 0, downloadedCatalogCachedAssetSetID, downloadedCatalogDownloadedFromLive, downloadedCatalogLastTimeChecked, downloadedCatalogPostedDate, currentSetNotifications6, aggregatedClientSetPolicy, 0, 0, v46, v83, downloadedNetworkBytes, [autoAssetSetDescriptor17 downloadedFilesystemBytes], 0, 0, 0, 0);
  [(MADAutoAssetJob *)self setCurrentSetStatus:v35];

  if (v70)
  {

    v34 = autoAssetSetDescriptor9;
  }

  if (v69)
  {
  }

  if (v70)
  {
  }

  currentSetStatus2 = [(MADAutoAssetJob *)self currentSetStatus];
  v37 = [currentSetStatus2 copy];
  setJobInformation = [(MADAutoAssetJob *)self setJobInformation];
  [setJobInformation setCurrentSetStatus:v37];

  if (v71)
  {
    v39 = [MANAutoAssetSetInfoFound alloc];
    autoAssetSetIdentifier = [(MADAutoAssetJob *)self autoAssetSetIdentifier];
    currentSetStatus3 = [(MADAutoAssetJob *)self currentSetStatus];
    v42 = [(MANAutoAssetSetInfoFound *)v39 initForAssetSetIdentifier:autoAssetSetIdentifier reportingStatus:currentSetStatus3];
    [(MADAutoAssetJob *)self setResultSetFound:v42];

    resultSetFound = [(MADAutoAssetJob *)self resultSetFound];
    setJobInformation2 = [(MADAutoAssetJob *)self setJobInformation];
    [setJobInformation2 setFoundContent:resultSetFound];

    diag = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    resultsCopy = [(MADAutoAssetJob *)self setJobInformation];
    [resultsCopy setSetDescriptor:diag];
    autoJobFSM2 = v83;
    goto LABEL_22;
  }

  autoJobFSM2 = v83;
LABEL_24:
}

- (id)installedOnFilesystemWithVersion:(id)version fromLocation:(id)location
{
  versionCopy = version;
  locationCopy = location;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    [(MADAutoAssetJob *)self statusChange:@"installedOnFilesystemWithVersion" catalogAnomaly:6103 forReason:@"installedOnFilesystemWithVersion should never execute for set-job"];
    v10 = 0;
  }

  else
  {
    onFilesystemByVersion = [(MADAutoAssetJob *)self onFilesystemByVersion];
    v10 = [onFilesystemByVersion safeObjectForKey:versionCopy ofClass:objc_opt_class()];

    v12 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      onFilesystemByVersion2 = [(MADAutoAssetJob *)self onFilesystemByVersion];
      v14 = [onFilesystemByVersion2 count];
      if (v10)
      {
        selectorName = [v10 selectorName];
      }

      else
      {
        selectorName = @"N";
      }

      v17 = 138544130;
      v18 = locationCopy;
      v19 = 2048;
      v20 = v14;
      v21 = 2114;
      v22 = versionCopy;
      v23 = 2114;
      v24 = selectorName;
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
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    [(MADAutoAssetJob *)self statusChange:@"latestInstalledOnFilesystem" catalogAnomaly:6103 forReason:@"latestInstalledOnFilesystem should never execute for set-job"];
    v5 = 0;
    goto LABEL_29;
  }

  v6 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    autoJobName = [(MADAutoAssetJob *)self autoJobName];
    onFilesystemByVersion = [(MADAutoAssetJob *)self onFilesystemByVersion];
    *buf = 138543618;
    v43 = autoJobName;
    v44 = 2048;
    v45 = [onFilesystemByVersion count];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ | {latestInstalledOnFilesystem} considering by-version | onFilesystem:%ld", buf, 0x16u);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  onFilesystemByVersion2 = [(MADAutoAssetJob *)self onFilesystemByVersion];
  v36 = [onFilesystemByVersion2 countByEnumeratingWithState:&v37 objects:v41 count:16];
  v10 = 0;
  v5 = 0;
  if (v36)
  {
    v35 = *v38;
    v34 = onFilesystemByVersion2;
    do
    {
      for (i = 0; i != v36; i = i + 1)
      {
        if (*v38 != v35)
        {
          objc_enumerationMutation(onFilesystemByVersion2);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        onFilesystemByVersion3 = [(MADAutoAssetJob *)self onFilesystemByVersion];
        v15 = [onFilesystemByVersion3 safeObjectForKey:v12 ofClass:objc_opt_class()];

        assetVersion = [v15 assetVersion];
        if (assetVersion)
        {
          v17 = assetVersion;
          isOnFilesystem = [v15 isOnFilesystem];

          if (isOnFilesystem)
          {
            v19 = [SUCoreRestoreVersion alloc];
            assetVersion2 = [v15 assetVersion];
            v21 = [v19 initWithRestoreVersion:assetVersion2];

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
                  autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
                  selectorName = [v22 selectorName];
                  *buf = 138543618;
                  v43 = autoJobName2;
                  v44 = 2114;
                  v45 = selectorName;
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
                  autoJobName3 = [(MADAutoAssetJob *)self autoJobName];
                  selectorName2 = [v15 selectorName];
                  *buf = 138543618;
                  v43 = autoJobName3;
                  v44 = 2114;
                  v45 = selectorName2;
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
                autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
                selectorName = [v22 selectorName];
                *buf = 138543618;
                v43 = autoJobName2;
                v44 = 2114;
                v45 = selectorName;
                v27 = v24;
                v28 = "%{public}@ | {latestInstalledOnFilesystem} first candidate:%{public}@";
LABEL_21:
                _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 0x16u);
              }
            }

            v10 = v23;
            v5 = v22;
            onFilesystemByVersion2 = v34;
            goto LABEL_26;
          }
        }

        v21 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          autoJobName4 = [(MADAutoAssetJob *)self autoJobName];
          selectorName3 = [v15 selectorName];
          *buf = 138543618;
          v43 = autoJobName4;
          v44 = 2114;
          v45 = selectorName3;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ | {latestInstalledOnFilesystem} descriptor not valid for latest | selector:%{public}@", buf, 0x16u);
        }

LABEL_26:

        objc_autoreleasePoolPop(v13);
      }

      v36 = [onFilesystemByVersion2 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v36);
  }

LABEL_29:

  return v5;
}

- (BOOL)isFoundAlreadyOnFilesystem:(BOOL *)filesystem
{
  selfCopy = self;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  foundNewerPatch = [(MADAutoAssetJob *)selfCopy foundNewerPatch];
  if (foundNewerPatch)
  {
    v8 = [SUCoreRestoreVersion alloc];
    foundNewerPatch2 = [(MADAutoAssetJob *)selfCopy foundNewerPatch];
    assetVersion = [foundNewerPatch2 assetVersion];
    v103 = [v8 initWithRestoreVersion:assetVersion];
  }

  else
  {
    v103 = 0;
  }

  foundNewerFull = [(MADAutoAssetJob *)selfCopy foundNewerFull];
  if (foundNewerFull)
  {
    v12 = [SUCoreRestoreVersion alloc];
    foundNewerFull2 = [(MADAutoAssetJob *)selfCopy foundNewerFull];
    assetVersion2 = [foundNewerFull2 assetVersion];
    v102 = [v12 initWithRestoreVersion:assetVersion2];
  }

  else
  {
    v102 = 0;
  }

  v15 = [(MADAutoAssetJob *)selfCopy refreshOnFilesystemFromManagerPromotingIfStaged:1];
  v16 = v15;
  if (v15)
  {
    assetVersion3 = [v15 assetVersion];

    if (assetVersion3)
    {
      if ([MADAutoAssetSecure doesDescriptorInvolvePersonalization:@"isFoundAlreadyOnFilesystem" forDescriptor:v16]&& [MADAutoAssetSecure isPersonalizationRequired:@"isFoundAlreadyOnFilesystem" forDescriptor:v16]&& ![(MADAutoAssetJob *)selfCopy stagerJob])
      {
        tryPersonalizeDescriptors = [(MADAutoAssetJob *)selfCopy tryPersonalizeDescriptors];
        [tryPersonalizeDescriptors addObject:v16];

        v19 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          autoJobName = [(MADAutoAssetJob *)selfCopy autoJobName];
          selectorName = [v16 selectorName];
          *buf = 138543618;
          v110 = autoJobName;
          v111 = 2114;
          v112 = selectorName;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-SECURE][AUTO-PERSONALIZATION][SET-JOB-TRY] {isFoundAlreadyOnFilesystem} secure auto-asset just immediate-promoted from staged (requires personalization) | selector:%{public}@", buf, 0x16u);
        }
      }

      onFilesystemByVersion = [(MADAutoAssetJob *)selfCopy onFilesystemByVersion];
      assetVersion4 = [v16 assetVersion];
      [onFilesystemByVersion setSafeObject:v16 forKey:assetVersion4];
    }

    else
    {
      autoJobFSM2 = [(MADAutoAssetJob *)selfCopy autoJobFSM];
      diag = [autoJobFSM2 diag];
      [diag trackAnomaly:@"AUTO-JOB" forReason:@"{isFoundAlreadyOnFilesystem} immediatelyPromotedDescriptor without assetVersion" withResult:6111 withError:0];

      manager = selfCopy->_manager;
      assetSpecifier = [v16 assetSpecifier];
      assetType = [v16 assetType];
      v53 = [(MADAnalyticsManager *)manager recordMobileAssetPromotionAttempt:assetSpecifier assetType:assetType assetVersion:@"N/A" osPromotion:1 successfullyPromoted:0 withReason:4];
    }

    v101 = 0;
    v54 = 0;
    v55 = v16;
LABEL_41:
    v56 = v55;
    autoAssetSelector = [(MADAutoAssetJob *)selfCopy autoAssetSelector];
    assetType2 = [autoAssetSelector assetType];
    assetId = [v56 assetId];
    v60 = getAutoLocalUrlFromTypeAndIdWithPurpose(assetType2, assetId, 2, @"auto");

    [(MADAutoAssetJob *)selfCopy setNewerFoundAssetDescriptor:v56];
    [(MADAutoAssetJob *)selfCopy setDownloadingAssetDescriptor:v56];
    currentStatus = [(MADAutoAssetJob *)selfCopy currentStatus];
    notifications = [currentStatus notifications];
    [notifications setContentAvailableForUse:1];

    metadata = [v56 metadata];
    currentStatus2 = [(MADAutoAssetJob *)selfCopy currentStatus];
    [currentStatus2 setAvailableForUseAttributes:metadata];

    v65 = [MAAutoAssetInfoFound alloc];
    resultSelector = [(MADAutoAssetJob *)selfCopy resultSelector];
    metadata2 = [v56 metadata];
    currentStatus3 = [(MADAutoAssetJob *)selfCopy currentStatus];
    v69 = [v65 initForSelector:resultSelector withLocalContentURL:v60 withAssetAttributes:metadata2 reportingStatus:currentStatus3];
    [(MADAutoAssetJob *)selfCopy setResultFound:v69];

    v70 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      autoJobName2 = [(MADAutoAssetJob *)selfCopy autoJobName];
      selectorName2 = [v56 selectorName];
      *buf = 138543618;
      v110 = autoJobName2;
      v111 = 2114;
      v112 = selectorName2;
      _os_log_impl(&dword_0, v70, OS_LOG_TYPE_DEFAULT, "%{public}@ | {isFoundAlreadyOnFilesystem} adopted already on filesystem | selector:%{public}@", buf, 0x16u);
    }

    v73 = 1;
    goto LABEL_44;
  }

  v24 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    autoJobName3 = [(MADAutoAssetJob *)selfCopy autoJobName];
    onFilesystemByVersion2 = [(MADAutoAssetJob *)selfCopy onFilesystemByVersion];
    *buf = 138543618;
    v110 = autoJobName3;
    v111 = 2048;
    v112 = [onFilesystemByVersion2 count];
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ | {isFoundAlreadyOnFilesystem} considering by-version | onFilesystem:%ld", buf, 0x16u);
  }

  filesystemCopy = filesystem;

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v27 = selfCopy;
  obj = [(MADAutoAssetJob *)selfCopy onFilesystemByVersion];
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
        onFilesystemByVersion3 = [(MADAutoAssetJob *)selfCopy onFilesystemByVersion];
        v36 = [onFilesystemByVersion3 safeObjectForKey:v33 ofClass:objc_opt_class()];

        v37 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          autoJobName4 = [(MADAutoAssetJob *)selfCopy autoJobName];
          selectorName3 = [v36 selectorName];
          *buf = 138543618;
          v110 = autoJobName4;
          v111 = 2114;
          v112 = selectorName3;
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ | {isFoundAlreadyOnFilesystem} considering candidate | selector:%{public}@", buf, 0x16u);

          v31 = v103;
        }

        assetVersion5 = [v36 assetVersion];
        if (assetVersion5)
        {
          v41 = assetVersion5;
          isOnFilesystem = [v36 isOnFilesystem];

          if (isOnFilesystem)
          {
            v43 = [SUCoreRestoreVersion alloc];
            assetVersion6 = [v36 assetVersion];
            v45 = [v43 initWithRestoreVersion:assetVersion6];

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
    filesystem = filesystemCopy;
    if (BYTE4(v99) & v99)
    {
      if (!os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_69;
      }

      autoJobName5 = [(MADAutoAssetJob *)selfCopy autoJobName];
      foundNewerPatch3 = [(MADAutoAssetJob *)selfCopy foundNewerPatch];
      summary = [foundNewerPatch3 summary];
      foundNewerFull3 = [(MADAutoAssetJob *)selfCopy foundNewerFull];
      summary2 = [foundNewerFull3 summary];
      _updateLatestSummary = [(MADAutoAssetJob *)selfCopy _updateLatestSummary];
      *buf = 138544130;
      v110 = autoJobName5;
      v111 = 2114;
      v112 = summary;
      v113 = 2114;
      v114 = summary2;
      v115 = 2114;
      v116 = _updateLatestSummary;
      _os_log_impl(&dword_0, v85, OS_LOG_TYPE_ERROR, "%{public}@ | {isFoundAlreadyOnFilesystem} found multiple assets on filesystem that represent the same downloaded content | patch:%{public}@, full:%{public}@\nJOB-SUMMARY:%{public}@", buf, 0x2Au);

      selfCopy = v27;
    }

    else
    {
      if (!os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_69;
      }

      summary = [(MADAutoAssetJob *)selfCopy autoJobName];
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
        [(MADAutoAssetJob *)selfCopy foundNewerPatch];
      }

      else
      {
        [(MADAutoAssetJob *)selfCopy foundNewerFull];
      }
      v96 = ;
      selectorName4 = [v96 selectorName];
      *buf = 138543874;
      v110 = summary;
      v111 = 2114;
      v112 = v95;
      v113 = 2114;
      v114 = selectorName4;
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
        if (!filesystem)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    goto LABEL_41;
  }

  foundNewerPatch4 = [(MADAutoAssetJob *)selfCopy foundNewerPatch];
  v16 = 0;
  filesystem = filesystemCopy;
  if (foundNewerPatch4 && (v77 = foundNewerPatch4, [(MADAutoAssetJob *)selfCopy foundNewerFull], v78 = objc_claimAutoreleasedReturnValue(), v78, v77, v78))
  {
    v56 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      autoJobName6 = [(MADAutoAssetJob *)selfCopy autoJobName];
      foundNewerPatch5 = [(MADAutoAssetJob *)selfCopy foundNewerPatch];
      selectorName5 = [foundNewerPatch5 selectorName];
      foundNewerFull4 = [(MADAutoAssetJob *)selfCopy foundNewerFull];
      selectorName6 = [foundNewerFull4 selectorName];
      *buf = 138543874;
      v110 = autoJobName6;
      v111 = 2114;
      v112 = selectorName5;
      v113 = 2114;
      v114 = selectorName6;
      _os_log_impl(&dword_0, v56, OS_LOG_TYPE_DEFAULT, "%{public}@ | {isFoundAlreadyOnFilesystem} lookup found asset not already on filesystem | patch:%{public}@, full:%{public}@", buf, 0x20u);
    }
  }

  else
  {
    v56 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      autoJobName7 = [(MADAutoAssetJob *)selfCopy autoJobName];
      foundNewerFull5 = [(MADAutoAssetJob *)selfCopy foundNewerFull];
      selectorName7 = [foundNewerFull5 selectorName];
      *buf = 138543874;
      v110 = autoJobName7;
      v111 = 2114;
      v112 = @"full";
      v113 = 2114;
      v114 = selectorName7;
      _os_log_impl(&dword_0, v56, OS_LOG_TYPE_DEFAULT, "%{public}@ | {isFoundAlreadyOnFilesystem} lookup found asset not already on filesystem | type:%{public}@ | selector:%{public}@", buf, 0x20u);
    }
  }

  v73 = 0;
  v54 = v100;
LABEL_44:
  v74 = v54;

  v54 = v101;
  if (filesystem)
  {
LABEL_45:
    *filesystem = v16 != 0;
  }

LABEL_46:

  return v73;
}

- (id)refreshOnFilesystemFromManagerPromotingIfStaged:(BOOL)staged
{
  stagedCopy = staged;
  selfCopy = self;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(MADAutoAssetJob *)selfCopy autoAssetSetJob])
  {
    newestDownloadedSetStatus = [(MADAutoAssetJob *)selfCopy newestDownloadedSetStatus];

    if (!newestDownloadedSetStatus)
    {
      autoAssetSetDescriptor = [(MADAutoAssetJob *)selfCopy autoAssetSetDescriptor];
      v9 = [MADAutoAssetControlManager newestDownloadedForSetDescriptor:autoAssetSetDescriptor];
      [(MADAutoAssetJob *)selfCopy setNewestDownloadedSetStatus:v9];
    }

    v10 = 0;
  }

  else
  {
    v11 = [MAAutoAssetSelector alloc];
    autoAssetSelector = [(MADAutoAssetJob *)selfCopy autoAssetSelector];
    assetType = [autoAssetSelector assetType];
    autoAssetSelector2 = [(MADAutoAssetJob *)selfCopy autoAssetSelector];
    assetSpecifier = [autoAssetSelector2 assetSpecifier];
    v16 = [v11 initForAssetType:assetType withAssetSpecifier:assetSpecifier];

    resultSelector = [(MADAutoAssetJob *)selfCopy resultSelector];
    v43 = resultSelector;
    v44 = v16;
    if (stagedCopy)
    {
      v18 = resultSelector;
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
      autoJobName = [(MADAutoAssetJob *)selfCopy autoJobName];
      v22 = [v19 count];
      summary = [v44 summary];
      summary2 = [v43 summary];
      *buf = 138544130;
      v57 = autoJobName;
      v58 = 2048;
      v59 = v22;
      v60 = 2114;
      v61 = summary;
      v62 = 2114;
      v63 = summary2;
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
      v48 = selfCopy;
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
            autoJobName2 = [(MADAutoAssetJob *)selfCopy autoJobName];
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

            selectorName = [v32 selectorName];
            *buf = 138544130;
            v57 = autoJobName2;
            v58 = 2114;
            v59 = v38;
            v25 = v37;
            p_weak_ivar_lyt = v36;
            v27 = v35;
            v60 = 2114;
            v61 = v31;
            v62 = 2114;
            v63 = selectorName;
            _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ | {refreshOnFilesystemFromManagerPromotingIfStaged} isOnFilesystem:%{public}@ | assetVersion:%{public}@ | candidate:%{public}@", buf, 0x2Au);

            selfCopy = v48;
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

    [(MADAutoAssetJob *)selfCopy setOnFilesystemByVersion:v45];
    v10 = v42;
  }

  return v10;
}

- (void)refreshFoundToManager
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {

    [(MADAutoAssetJob *)self statusChange:@"refreshFoundToManager" catalogAnomaly:6103 forReason:@"refreshFoundToManager should never execute for set-job"];
    return;
  }

  v5 = [MAAutoAssetSelector alloc];
  autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
  assetType = [autoAssetSelector assetType];
  autoAssetSelector2 = [(MADAutoAssetJob *)self autoAssetSelector];
  assetSpecifier = [autoAssetSelector2 assetSpecifier];
  v44 = [v5 initForAssetType:assetType withAssetSpecifier:assetSpecifier];

  foundNewerPatch = [(MADAutoAssetJob *)self foundNewerPatch];

  if (foundNewerPatch)
  {
    onFilesystemByVersion = [(MADAutoAssetJob *)self onFilesystemByVersion];
    foundNewerPatch2 = [(MADAutoAssetJob *)self foundNewerPatch];
    assetVersion = [foundNewerPatch2 assetVersion];
    foundNewerPatch = [onFilesystemByVersion safeObjectForKey:assetVersion ofClass:objc_opt_class()];

    if (foundNewerPatch)
    {
      foundNewerPatch3 = [(MADAutoAssetJob *)self foundNewerPatch];
      [foundNewerPatch3 setIsOnFilesystem:1];

      if ([(MADAutoAssetJob *)self stagerJob])
      {
        goto LABEL_13;
      }

      foundNewerPatch4 = [(MADAutoAssetJob *)self foundNewerPatch];
      foundNewerPatch8 = [(MADAutoAssetJob *)self currentJobInformation:0];
      firstClientName = [(MADAutoAssetJob *)self firstClientName];
      [MADAutoAssetControlManager persistForJobSelector:v44 persistingJobDescriptor:foundNewerPatch4 withJobInformation:foundNewerPatch8 withFirstClientName:firstClientName];
    }

    else
    {
      if ([(MADAutoAssetJob *)self stagerJob])
      {
        foundNewerPatch = 0;
        goto LABEL_13;
      }

      v18 = [MAAutoAssetSelector alloc];
      foundNewerPatch5 = [(MADAutoAssetJob *)self foundNewerPatch];
      assetType2 = [foundNewerPatch5 assetType];
      foundNewerPatch6 = [(MADAutoAssetJob *)self foundNewerPatch];
      assetSpecifier2 = [foundNewerPatch6 assetSpecifier];
      foundNewerPatch7 = [(MADAutoAssetJob *)self foundNewerPatch];
      assetVersion2 = [foundNewerPatch7 assetVersion];
      foundNewerPatch4 = [v18 initForAssetType:assetType2 withAssetSpecifier:assetSpecifier2 matchingAssetVersion:assetVersion2];

      foundNewerPatch8 = [(MADAutoAssetJob *)self foundNewerPatch];
      firstClientName = [(MADAutoAssetJob *)self currentJobInformation:0];
      firstClientName2 = [(MADAutoAssetJob *)self firstClientName];
      [MADAutoAssetControlManager persistForJobSelector:foundNewerPatch4 persistingJobDescriptor:foundNewerPatch8 withJobInformation:firstClientName withFirstClientName:firstClientName2];

      foundNewerPatch = 0;
    }
  }

LABEL_13:
  foundNewerFull = [(MADAutoAssetJob *)self foundNewerFull];

  if (foundNewerFull)
  {
    onFilesystemByVersion2 = [(MADAutoAssetJob *)self onFilesystemByVersion];
    foundNewerFull2 = [(MADAutoAssetJob *)self foundNewerFull];
    assetVersion3 = [foundNewerFull2 assetVersion];
    v30 = [onFilesystemByVersion2 safeObjectForKey:assetVersion3 ofClass:objc_opt_class()];

    if (v30)
    {
      foundNewerFull3 = [(MADAutoAssetJob *)self foundNewerFull];
      [foundNewerFull3 setIsOnFilesystem:1];

      if ([(MADAutoAssetJob *)self stagerJob])
      {
LABEL_18:
        foundNewerPatch = v30;
        goto LABEL_22;
      }

      foundNewerFull4 = [(MADAutoAssetJob *)self foundNewerFull];
      foundNewerFull8 = [(MADAutoAssetJob *)self currentJobInformation:0];
      firstClientName3 = [(MADAutoAssetJob *)self firstClientName];
      [MADAutoAssetControlManager persistForJobSelector:v44 persistingJobDescriptor:foundNewerFull4 withJobInformation:foundNewerFull8 withFirstClientName:firstClientName3];
    }

    else
    {
      foundNewerPatch9 = [(MADAutoAssetJob *)self foundNewerPatch];

      if (foundNewerPatch9 || [(MADAutoAssetJob *)self stagerJob])
      {
        foundNewerPatch = 0;
        goto LABEL_22;
      }

      v36 = [MAAutoAssetSelector alloc];
      foundNewerFull5 = [(MADAutoAssetJob *)self foundNewerFull];
      assetType3 = [foundNewerFull5 assetType];
      foundNewerFull6 = [(MADAutoAssetJob *)self foundNewerFull];
      assetSpecifier3 = [foundNewerFull6 assetSpecifier];
      foundNewerFull7 = [(MADAutoAssetJob *)self foundNewerFull];
      assetVersion4 = [foundNewerFull7 assetVersion];
      foundNewerFull4 = [v36 initForAssetType:assetType3 withAssetSpecifier:assetSpecifier3 matchingAssetVersion:assetVersion4];

      foundNewerFull8 = [(MADAutoAssetJob *)self foundNewerFull];
      firstClientName3 = [(MADAutoAssetJob *)self currentJobInformation:0];
      firstClientName4 = [(MADAutoAssetJob *)self firstClientName];
      [MADAutoAssetControlManager persistForJobSelector:foundNewerFull4 persistingJobDescriptor:foundNewerFull8 withJobInformation:firstClientName3 withFirstClientName:firstClientName4];

      v30 = 0;
    }

    goto LABEL_18;
  }

LABEL_22:
}

- (void)refreshDownloadedToManager:(id)manager
{
  managerCopy = manager;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  managerCopy = [[NSString alloc] initWithFormat:@"%@:refreshDownloadedToManager", managerCopy];
  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {
    resultFound = [(MADAutoAssetJob *)self resultFound];

    if (!resultFound)
    {
      v14 = _MADLog(@"AutoJob");
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }

      autoJobName = [(MADAutoAssetJob *)self autoJobName];
      _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
      *buf = 138543874;
      v72 = managerCopy;
      v73 = 2114;
      v74 = autoJobName;
      v75 = 2114;
      v76 = _updateLatestSummary;
      v36 = "{%{public}@} (%{public}@)\n[DOWNLOADED-TO-MANAGER] no result-found for just-downloaded asset\nJOB-SUMMARY:%{public}@";
      goto LABEL_16;
    }

    [(MADAutoAssetJob *)self statusChangeReportCurrent:0];
    if ([(MADAutoAssetJob *)self stagerJob])
    {
      goto LABEL_42;
    }

    v17 = [MADAutoAssetDescriptor alloc];
    autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
    assetType = [autoAssetSelector assetType];
    downloadingAssetDescriptor = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    metadata = [downloadingAssetDescriptor metadata];
    downloadingAssetDescriptor2 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    v70 = 0;
    v23 = [(MADAutoAssetDescriptor *)v17 initForAssetType:assetType fromMetadata:metadata fromBaseDescriptor:downloadingAssetDescriptor2 invalidReasons:&v70];
    v14 = v70;

    if (!v23)
    {
      v33 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
        v38 = autoJobName2;
        v39 = @"NOT-PROVIDED";
        *buf = 138543874;
        v72 = managerCopy;
        if (v14)
        {
          v39 = v14;
        }

        v73 = 2114;
        v74 = autoJobName2;
        v75 = 2114;
        v76 = v39;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "{%{public}@} (%{public}@)\n[DOWNLOADED-TO-MANAGER] unable to create asset-descriptor for just-downloaded asset | invalid:%{public}@", buf, 0x20u);
      }

      goto LABEL_40;
    }

    currentStatus = [(MADAutoAssetJob *)self currentStatus];
    downloadedAsPatch = [currentStatus downloadedAsPatch];

    if (downloadedAsPatch)
    {
      baseForPatch = [(MADAutoAssetJob *)self baseForPatch];

      if (baseForPatch)
      {
        v27 = [MAAutoAssetSelector alloc];
        baseForPatch2 = [(MADAutoAssetJob *)self baseForPatch];
        assetType2 = [baseForPatch2 assetType];
        baseForPatch3 = [(MADAutoAssetJob *)self baseForPatch];
        assetSpecifier = [baseForPatch3 assetSpecifier];
        baseForPatch4 = [(MADAutoAssetJob *)self baseForPatch];
        assetVersion = [baseForPatch4 assetVersion];
        v33 = [v27 initForAssetType:assetType2 withAssetSpecifier:assetSpecifier matchingAssetVersion:assetVersion];

        autoJobFSM2 = baseForPatch2;
      }

      else
      {
        autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
        assetType2 = [autoJobFSM2 diag];
        v40 = [NSString alloc];
        baseForPatch3 = [(MADAutoAssetJob *)self autoJobName];
        assetSpecifier = [v40 initWithFormat:@"{%@} (%@)\n[DOWNLOADED-TO-MANAGER]  downloadedAsPatch yet no baseForPatch", managerCopy, baseForPatch3];
        [assetType2 trackAnomaly:@"AUTO-JOB" forReason:assetSpecifier withResult:6111 withError:0];
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
    currentStatus2 = [(MADAutoAssetJob *)self currentStatus];
    [v23 setDownloadedNetworkBytes:{objc_msgSend(currentStatus2, "downloadedNetworkBytes")}];

    currentStatus3 = [(MADAutoAssetJob *)self currentStatus];
    [v23 setDownloadedFilesystemBytes:{objc_msgSend(currentStatus3, "downloadedFilesystemBytes")}];

    currentStatus4 = [(MADAutoAssetJob *)self currentStatus];
    [v23 setIsPatch:{objc_msgSend(currentStatus4, "downloadedAsPatch")}];

    [v23 setPatchedFromBaseSelector:v33];
    if (v33)
    {
      baseForPatch5 = [(MADAutoAssetJob *)self baseForPatch];
      [v23 setPatchedFromBaseFilesystemBytes:{objc_msgSend(baseForPatch5, "downloadedFilesystemBytes")}];
    }

    else
    {
      [v23 setPatchedFromBaseFilesystemBytes:0];
    }

    currentStatus5 = [(MADAutoAssetJob *)self currentStatus];
    [v23 setPatchingAttempted:{objc_msgSend(currentStatus5, "patchingAttempted")}];

    downloadingAssetDescriptor3 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    [v23 setStagedPriorToAvailable:{objc_msgSend(downloadingAssetDescriptor3, "stagedPriorToAvailable")}];

    downloadingAssetDescriptor4 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    stagedFromOSVersion = [downloadingAssetDescriptor4 stagedFromOSVersion];
    [v23 setStagedFromOSVersion:stagedFromOSVersion];

    downloadingAssetDescriptor5 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
    stagedFromBuildVersion = [downloadingAssetDescriptor5 stagedFromBuildVersion];
    [v23 setStagedFromBuildVersion:stagedFromBuildVersion];

    currentStatus6 = [(MADAutoAssetJob *)self currentStatus];
    patchingAttemptError = [currentStatus6 patchingAttemptError];
    [v23 setPatchingAttemptError:patchingAttemptError];

    v53 = objc_opt_self();
    v69 = v33;
    if ([v53 autoAssetSetJob])
    {
    }

    else
    {
      autoAssetSelector2 = [(MADAutoAssetJob *)self autoAssetSelector];
      assetVersion2 = [autoAssetSelector2 assetVersion];

      if (assetVersion2)
      {
LABEL_32:
        currentStatus7 = [(MADAutoAssetJob *)self currentStatus];
        notifications = [currentStatus7 notifications];
        [notifications setContentAvailableForUse:1];

        metadata2 = [v23 metadata];
        currentStatus8 = [(MADAutoAssetJob *)self currentStatus];
        [currentStatus8 setAvailableForUseAttributes:metadata2];

        if ([MADAutoAssetSecure doesDescriptorInvolvePersonalization:managerCopy forDescriptor:v23]&& [MADAutoAssetSecure isPersonalizationRequired:managerCopy forDescriptor:v23])
        {
          goto LABEL_40;
        }

        resultFound2 = [(MADAutoAssetJob *)self resultFound];
        fullAssetSelector = [resultFound2 fullAssetSelector];
        wasPatched = [(MADAutoAssetJob *)self wasPatched];
        v63 = [(MADAutoAssetJob *)self currentJobInformation:0];
        firstClientName = [(MADAutoAssetJob *)self firstClientName];
        [MADAutoAssetControlManager persistForJobSelector:fullAssetSelector persistingJobDescriptor:v23 justPatched:wasPatched withJobInformation:v63 withFirstClientName:firstClientName];

        if ([v23 stagedPriorToAvailable])
        {
          assetType3 = _MADLog(@"AutoJob");
          if (!os_log_type_enabled(assetType3, OS_LOG_TYPE_DEFAULT))
          {
LABEL_39:
            v33 = v69;

LABEL_40:
            goto LABEL_41;
          }

          autoJobName3 = [(MADAutoAssetJob *)self autoJobName];
          selectorName = [v23 selectorName];
          *buf = 138543874;
          v72 = managerCopy;
          v73 = 2114;
          v74 = autoJobName3;
          v75 = 2114;
          v76 = selectorName;
          _os_log_impl(&dword_0, assetType3, OS_LOG_TYPE_DEFAULT, "{%{public}@} (%{public}@)\n[DOWNLOADED-TO-MANAGER] asset-version just immediate-promoted | selector:%{public}@", buf, 0x20u);
        }

        else
        {
          assetType3 = [v23 assetType];
          selectorName = [v23 assetSpecifier];
          [MADAutoAssetControlManager postNotificationName:@"ASSET_VERSION_DOWNLOADED" forAssetType:assetType3 forAssetSpecifier:selectorName fromModule:@"AUTO-JOB" fromLocation:managerCopy];
        }

        goto LABEL_39;
      }
    }

    [v23 setFoundByLookupWithoutAssetVersion:1];
    goto LABEL_32;
  }

  resultSetFound = [(MADAutoAssetJob *)self resultSetFound];

  if (!resultSetFound)
  {
    v14 = _MADLog(@"AutoJob");
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    autoJobName = [(MADAutoAssetJob *)self autoJobName];
    _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
    *buf = 138543874;
    v72 = managerCopy;
    v73 = 2114;
    v74 = autoJobName;
    v75 = 2114;
    v76 = _updateLatestSummary;
    v36 = "{%{public}@} (%{public}@)\n[DOWNLOADED-TO-MANAGER] no result-set-found for just-downloaded auto-asset of auto-asset-set\nJOB-SUMMARY:%{public}@";
LABEL_16:
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, v36, buf, 0x20u);

    goto LABEL_17;
  }

  [(MADAutoAssetJob *)self statusChangeReportCurrent:0];
  autoAssetSetDescriptor = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
  v10 = [autoAssetSetDescriptor copy];
  currentSetStatus = [(MADAutoAssetJob *)self currentSetStatus];
  firstClientName2 = [(MADAutoAssetJob *)self firstClientName];
  v13 = [MADAutoAssetControlManager persistSetJobDescriptor:v10 withCurrentSetStatus:currentSetStatus withFirstClientName:firstClientName2 fromLocation:managerCopy];

  if (v13)
  {
    [(MADAutoAssetJob *)self setBecameLatestToVend:1];
    v14 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      _updateLatestSummary = [(MADAutoAssetJob *)self autoJobName];
      *buf = 138543618;
      v72 = managerCopy;
      v73 = 2114;
      v74 = _updateLatestSummary;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "{%{public}@} (%{public}@)\n[DOWNLOADED-TO-MANAGER] set-job just became set-configuration's latest-to-vend", buf, 0x16u);
LABEL_17:
    }

LABEL_41:
  }

LABEL_42:
}

- (BOOL)isAtomicEntry:(id)entry alreadyInAtomicEntries:(id)entries
{
  entryCopy = entry;
  entriesCopy = entries;
  v7 = objc_alloc_init(NSMutableDictionary);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = entriesCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v18 = entryCopy;
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
        fullAssetSelector = [v12 fullAssetSelector];
        persistedEntryID = [fullAssetSelector persistedEntryID];

        v16 = [v7 safeObjectForKey:persistedEntryID ofClass:objc_opt_class()];
        if (v16)
        {

          objc_autoreleasePoolPop(v13);
          LOBYTE(v9) = 1;
          goto LABEL_11;
        }

        [v7 setSafeObject:v12 forKey:persistedEntryID];

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
    entryCopy = v18;
  }

  return v9;
}

- (BOOL)_commitPrePersonalized:(id)personalized error:(id *)error
{
  personalizedCopy = personalized;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  prePersonalizedSelectors = [(MADAutoAssetJob *)self prePersonalizedSelectors];
  if (![prePersonalizedSelectors count])
  {

LABEL_7:
    v12 = 0;
    v13 = 1;
    if (!error)
    {
      goto LABEL_9;
    }

LABEL_8:
    v20 = v12;
    *error = v12;
    goto LABEL_9;
  }

  tryPersonalizeFailed = [(MADAutoAssetJob *)self tryPersonalizeFailed];

  if (tryPersonalizeFailed)
  {
    goto LABEL_7;
  }

  prePersonalizedSelectors2 = [(MADAutoAssetJob *)self prePersonalizedSelectors];
  v12 = [MADAutoAssetSecure commitPrePersonalizedSync:personalizedCopy committingSelectors:prePersonalizedSelectors2];

  v13 = v12 == 0;
  v14 = _MADLog(@"AutoJob");
  v15 = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      autoJobName = [(MADAutoAssetJob *)self autoJobName];
      prePersonalizedSelectors3 = [(MADAutoAssetJob *)self prePersonalizedSelectors];
      v18 = [prePersonalizedSelectors3 count];
      checkedDescription = [v12 checkedDescription];
      v25 = 138543874;
      v26 = autoJobName;
      v27 = 2048;
      v28 = v18;
      v29 = 2114;
      v30 = checkedDescription;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-SECURE][AUTO-PERSONALIZATION][SET-JOB-PRE] failure committing pre-personalized | prePersonalizedSelectors:%ld | error:%{public}@", &v25, 0x20u);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
    prePersonalizedSelectors4 = [(MADAutoAssetJob *)self prePersonalizedSelectors];
    v25 = 138543618;
    v26 = autoJobName2;
    v27 = 2048;
    v28 = [prePersonalizedSelectors4 count];
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-SECURE][AUTO-PERSONALIZATION][SET-JOB-PRE] committed pre-personalized | prePersonalizedSelectors:%ld", &v25, 0x16u);
  }

  v24 = objc_alloc_init(NSMutableArray);
  [(MADAutoAssetJob *)self setPrePersonalizedSelectors:v24];

  if (error)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v13;
}

- (void)downloadCatalog:(id)catalog
{
  catalogCopy = catalog;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (![(MADAutoAssetJob *)self rampingForeground])
  {
    if (-[MADAutoAssetJob rampingForegroundLatched](self, "rampingForegroundLatched") || (-[MADAutoAssetJob aggregatedClientAssetPolicy](self, "aggregatedClientAssetPolicy"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 userInitiated], v6, v7))
    {
      [(MADAutoAssetJob *)self setRampingForeground:1];
    }
  }

  newCatalogDownloadOptions = [(MADAutoAssetJob *)self newCatalogDownloadOptions];
  [(MADAutoAssetJob *)self setCatalogDownloadOptions:newCatalogDownloadOptions];

  [(MADAutoAssetJob *)self requestDownloadManagerCatalogLookup:catalogCopy];
}

- (id)newCatalogDownloadOptions
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v5 = objc_alloc_init(MAMsuDownloadOptions);
  v6 = [(MADAutoAssetJob *)self refreshOnFilesystemFromManagerPromotingIfStaged:0];
  v7 = objc_alloc_init(NSMutableDictionary);
  [v5 setAdditionalServerParams:v7];

  newSessionID = [(MADAutoAssetJob *)self newSessionID];
  [(MADAutoAssetJob *)self setCheckUUID:newSessionID];

  checkUUID = [(MADAutoAssetJob *)self checkUUID];
  [v5 setSessionId:checkUUID];

  additionalServerParams = [v5 additionalServerParams];
  checkUUID2 = [(MADAutoAssetJob *)self checkUUID];
  [additionalServerParams setSafeObject:checkUUID2 forKey:@"SessionId"];

  LODWORD(additionalServerParams) = [MADAutoAssetControlManager preferenceAsIfBackgroundOrUse:[(MADAutoAssetJob *)self rampingForeground]^ 1];
  additionalServerParams2 = [v5 additionalServerParams];
  v13 = additionalServerParams2;
  if (additionalServerParams)
  {
    v14 = @"Background";
  }

  else
  {
    v14 = @"Foreground";
  }

  [additionalServerParams2 setSafeObject:v14 forKey:@"DeviceCheck"];

  [v5 setTimeoutIntervalForResource:120];
  [v5 setDiscretionary:0];
  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    aggregatedClientSetPolicy = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
    v16 = ([aggregatedClientSetPolicy allowCheckDownloadOverCellular] & 1) != 0 || -[MADAutoAssetJob configuredToCellular](self, "configuredToCellular") || -[MADAutoAssetJob downloadingCellular](self, "downloadingCellular") || -[MADAutoAssetJob boostedToCellular](self, "boostedToCellular");
    [v5 setAllowsCellularAccess:v16];

    aggregatedClientSetPolicy2 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
    v18 = ([aggregatedClientSetPolicy2 allowCheckDownloadOverExpensive] & 1) != 0 || -[MADAutoAssetJob configuredToExpensive](self, "configuredToExpensive") || -[MADAutoAssetJob downloadingExpensive](self, "downloadingExpensive") || -[MADAutoAssetJob boostedToExpensive](self, "boostedToExpensive");
    [v5 setAllowsExpensiveAccess:v18];

    aggregatedClientSetPolicy3 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
    [v5 setRequiresPowerPluggedIn:{objc_msgSend(aggregatedClientSetPolicy3, "allowCheckDownloadOnBattery") ^ 1}];

    autoAssetSetAssetType = [(MADAutoAssetJob *)self autoAssetSetAssetType];
    [v5 setCanUseLocalCacheServer:isDisallowedFromContentCaching(autoAssetSetAssetType) ^ 1];
  }

  else
  {
    [v5 setAllowsCellularAccess:1];
    [v5 setAllowsExpensiveAccess:1];
    [v5 setRequiresPowerPluggedIn:0];
    autoAssetSetAssetType = [(MADAutoAssetJob *)self autoAssetSelector];
    assetType = [autoAssetSetAssetType assetType];
    [v5 setCanUseLocalCacheServer:isDisallowedFromContentCaching(assetType) ^ 1];
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
  additionalServerParams3 = [v5 additionalServerParams];
  [additionalServerParams3 setSafeObject:@"true" forKey:@"RequestingMAAutoAsset"];

  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {
    additionalServerParams4 = [v5 additionalServerParams];
    autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
    assetSpecifier = [autoAssetSelector assetSpecifier];
    [additionalServerParams4 setSafeObject:assetSpecifier forKey:@"AssetSpecifier"];

    autoAssetSelector2 = [(MADAutoAssetJob *)self autoAssetSelector];
    assetVersion = [autoAssetSelector2 assetVersion];

    if (assetVersion)
    {
      additionalServerParams5 = [v5 additionalServerParams];
      autoAssetSelector3 = [(MADAutoAssetJob *)self autoAssetSelector];
      assetVersion2 = [autoAssetSelector3 assetVersion];
      [additionalServerParams5 setSafeObject:assetVersion2 forKey:@"RequestedAssetVersion"];
    }

    latestInstalledOnFilesystem = [(MADAutoAssetJob *)self latestInstalledOnFilesystem];
    [(MADAutoAssetJob *)self setBaseForPatch:latestInstalledOnFilesystem];

    baseForPatch = [(MADAutoAssetJob *)self baseForPatch];

    if (baseForPatch)
    {
      baseForPatch2 = [(MADAutoAssetJob *)self baseForPatch];
      assetVersion3 = [baseForPatch2 assetVersion];
      [(MADAutoAssetJob *)self setLatestInstalledAssetVersion:assetVersion3];

      baseForPatch3 = [(MADAutoAssetJob *)self baseForPatch];
      build = [baseForPatch3 build];
      [(MADAutoAssetJob *)self setLatestInstalledAssetBuild:build];

      additionalServerParams6 = [v5 additionalServerParams];
      latestInstalledAssetVersion = [(MADAutoAssetJob *)self latestInstalledAssetVersion];
      [additionalServerParams6 setSafeObject:latestInstalledAssetVersion forKey:@"InstalledAssetVersion"];

      additionalServerParams7 = [v5 additionalServerParams];
      latestInstalledAssetBuild = [(MADAutoAssetJob *)self latestInstalledAssetBuild];
      [additionalServerParams7 setSafeObject:latestInstalledAssetBuild forKey:@"InstalledAssetBuild"];
    }
  }

  [v5 setAllowSameVersion:{-[MADAutoAssetJob autoAssetSetJob](self, "autoAssetSetJob")}];
  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {
    baseForPatch4 = [(MADAutoAssetJob *)self baseForPatch];
    if (baseForPatch4)
    {
      v42 = baseForPatch4;
      determiningAssetContent = [(MADAutoAssetJob *)self determiningAssetContent];

      if (determiningAssetContent)
      {
        [v5 setAllowSameVersion:1];
      }
    }
  }

  additionalServerParams8 = [v5 additionalServerParams];
  if ([v5 allowSameVersion])
  {
    v45 = @"true";
  }

  else
  {
    v45 = @"false";
  }

  [additionalServerParams8 setSafeObject:v45 forKey:@"AllowSameBuildVersion"];

  additionalServerParams9 = [v5 additionalServerParams];
  if ([v5 allowSameVersion])
  {
    v47 = @"true";
  }

  else
  {
    v47 = @"false";
  }

  [additionalServerParams9 setSafeObject:v47 forKey:@"AllowSameAssetVersion"];

  additionalServerParams10 = [v5 additionalServerParams];
  v49 = +[SUCoreDevice sharedDevice];
  productVersion = [v49 productVersion];
  [additionalServerParams10 setSafeObject:productVersion forKey:@"OSVersion"];

  additionalServerParams11 = [v5 additionalServerParams];
  v52 = +[SUCoreDevice sharedDevice];
  productVersion2 = [v52 productVersion];
  [additionalServerParams11 setSafeObject:productVersion2 forKey:@"ProductVersion"];

  if ([(MADAutoAssetJob *)self stagerJob])
  {
    additionalServerParams12 = [v5 additionalServerParams];
    [additionalServerParams12 setSafeObject:@"true" forKey:@"IsPreSoftwareUpdateStaging"];

    stagerAssetTargetOSVersion = [(MADAutoAssetJob *)self stagerAssetTargetOSVersion];

    if (stagerAssetTargetOSVersion)
    {
      additionalServerParams13 = [v5 additionalServerParams];
      stagerAssetTargetOSVersion2 = [(MADAutoAssetJob *)self stagerAssetTargetOSVersion];
      [additionalServerParams13 setSafeObject:stagerAssetTargetOSVersion2 forKey:@"OSVersion"];
    }

    else
    {
      additionalServerParams13 = [(MADAutoAssetJob *)self autoJobFSM];
      stagerAssetTargetOSVersion2 = [additionalServerParams13 diag];
      [stagerAssetTargetOSVersion2 trackAnomaly:@"AUTO-JOB(STAGER)" forReason:@"{newCatalogDownloadOptions} no stagerAssetTargetOSVersion" withResult:6111 withError:0];
    }

    stagerAssetTargetBuildVersion = [(MADAutoAssetJob *)self stagerAssetTargetBuildVersion];

    if (stagerAssetTargetBuildVersion)
    {
      additionalServerParams14 = [v5 additionalServerParams];
      stagerAssetTargetBuildVersion2 = [(MADAutoAssetJob *)self stagerAssetTargetBuildVersion];
      [additionalServerParams14 setSafeObject:stagerAssetTargetBuildVersion2 forKey:@"BuildVersion"];
    }

    else
    {
      additionalServerParams14 = [(MADAutoAssetJob *)self autoJobFSM];
      stagerAssetTargetBuildVersion2 = [additionalServerParams14 diag];
      [stagerAssetTargetBuildVersion2 trackAnomaly:@"AUTO-JOB(STAGER)" forReason:@"{newCatalogDownloadOptions} no stagerAssetTargetBuildVersion" withResult:6111 withError:0];
    }

    stagerAssetTargetTrainName = [(MADAutoAssetJob *)self stagerAssetTargetTrainName];

    if (stagerAssetTargetTrainName)
    {
      additionalServerParams15 = [v5 additionalServerParams];
      stagerAssetTargetTrainName2 = [(MADAutoAssetJob *)self stagerAssetTargetTrainName];
      [additionalServerParams15 setSafeObject:stagerAssetTargetTrainName2 forKey:@"TrainName"];
    }

    stagerAssetTargetRestoreVersion = [(MADAutoAssetJob *)self stagerAssetTargetRestoreVersion];

    if (stagerAssetTargetRestoreVersion)
    {
      additionalServerParams16 = [v5 additionalServerParams];
      stagerAssetTargetRestoreVersion2 = [(MADAutoAssetJob *)self stagerAssetTargetRestoreVersion];
      [additionalServerParams16 setSafeObject:stagerAssetTargetRestoreVersion2 forKey:@"RestoreVersion"];
    }
  }

  additionalServerParams17 = [v5 additionalServerParams];
  v68 = supportedAssetFormatsArray();
  [additionalServerParams17 setSafeObject:v68 forKey:@"SupportedAssetFormats"];

  return v5;
}

- (id)newAssetDownloadOptions
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v5 = objc_alloc_init(MAMsuDownloadOptions);
  v6 = objc_alloc_init(NSMutableDictionary);
  [v5 setAdditionalServerParams:v6];

  checkUUID = [(MADAutoAssetJob *)self checkUUID];
  [v5 setSessionId:checkUUID];

  additionalServerParams = [v5 additionalServerParams];
  checkUUID2 = [(MADAutoAssetJob *)self checkUUID];
  [additionalServerParams setSafeObject:checkUUID2 forKey:@"SessionId"];

  [v5 setDiscretionary:1];
  if ([(MADAutoAssetJob *)self configuredToUserInitiated]|| [(MADAutoAssetJob *)self downloadingUserInitiated]|| [(MADAutoAssetJob *)self boostedToUserInitiated])
  {
    [v5 setDiscretionary:0];
  }

  else
  {
    aggregatedClientAssetPolicy = [(MADAutoAssetJob *)self aggregatedClientAssetPolicy];

    if (aggregatedClientAssetPolicy)
    {
      aggregatedClientAssetPolicy2 = [(MADAutoAssetJob *)self aggregatedClientAssetPolicy];
      [v5 setDiscretionary:{objc_msgSend(aggregatedClientAssetPolicy2, "userInitiated") ^ 1}];
    }
  }

  if (-[MADAutoAssetJob schedulerTriggerReceived](self, "schedulerTriggerReceived") && [v5 discretionary] && +[MADAutoAssetControlManager preferenceScheduledAlwaysNonDiscretionary](MADAutoAssetControlManager, "preferenceScheduledAlwaysNonDiscretionary"))
  {
    [v5 setDiscretionary:0];
    v10 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      autoJobName = [(MADAutoAssetJob *)self autoJobName];
      *buf = 138543362;
      v41 = autoJobName;
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
            autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
            *buf = 138543362;
            v41 = autoJobName2;
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
            autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
            *buf = 138543362;
            v41 = autoJobName2;
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
          autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
          *buf = 138543362;
          v41 = autoJobName2;
          v14 = "%{public}@ | {newAssetDownloadOptions} pre-SU-staging download | no selector (disableUI) so unable to indicate UI disabled";
          goto LABEL_23;
        }
      }
    }
  }

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    aggregatedClientSetPolicy = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
    v18 = ([aggregatedClientSetPolicy allowCheckDownloadOverCellular] & 1) != 0 || -[MADAutoAssetJob configuredToCellular](self, "configuredToCellular") || -[MADAutoAssetJob downloadingCellular](self, "downloadingCellular") || -[MADAutoAssetJob boostedToCellular](self, "boostedToCellular");
    [v5 setAllowsCellularAccess:v18];

    aggregatedClientSetPolicy2 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
    v20 = ([aggregatedClientSetPolicy2 allowCheckDownloadOverExpensive] & 1) != 0 || -[MADAutoAssetJob configuredToExpensive](self, "configuredToExpensive") || -[MADAutoAssetJob downloadingExpensive](self, "downloadingExpensive") || -[MADAutoAssetJob boostedToExpensive](self, "boostedToExpensive");
    [v5 setAllowsExpensiveAccess:v20];

    aggregatedClientSetPolicy3 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
    [v5 setRequiresPowerPluggedIn:{objc_msgSend(aggregatedClientSetPolicy3, "allowCheckDownloadOnBattery") ^ 1}];
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
    autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
    downloadDecryptionKey = [autoAssetSelector downloadDecryptionKey];
    [v5 setDecryptionKey:downloadDecryptionKey];
LABEL_45:

    goto LABEL_46;
  }

  nextSetSpecifierToDownload = [(MADAutoAssetJob *)self nextSetSpecifierToDownload];
  setConfiguration = [(MADAutoAssetJob *)self setConfiguration];
  autoAssetEntries = [setConfiguration autoAssetEntries];
  v25 = [autoAssetEntries count];

  if (nextSetSpecifierToDownload >= v25)
  {
    autoAssetSelector = [(MADAutoAssetJob *)self autoJobFSM];
    downloadDecryptionKey = [autoAssetSelector diag];
    v37 = [NSString alloc];
    autoJobName3 = [(MADAutoAssetJob *)self autoJobName];
    v38 = [v37 initWithFormat:@"%@ | {newAssetDownloadOptions} set-job yet no nextSetSpecifierToDownload", autoJobName3];
    [downloadDecryptionKey trackAnomaly:@"AUTO-SET-JOB" forReason:v38 withResult:6103 withError:0];

    goto LABEL_44;
  }

  setConfiguration2 = [(MADAutoAssetJob *)self setConfiguration];
  autoAssetEntries2 = [setConfiguration2 autoAssetEntries];
  autoAssetSelector = [autoAssetEntries2 objectAtIndex:{-[MADAutoAssetJob nextSetSpecifierToDownload](self, "nextSetSpecifierToDownload")}];

  assetSelector = [autoAssetSelector assetSelector];
  downloadDecryptionKey2 = [assetSelector downloadDecryptionKey];
  [v5 setDecryptionKey:downloadDecryptionKey2];

  latestInstalledAssetVersion = [(MADAutoAssetJob *)self latestInstalledAssetVersion];

  if (latestInstalledAssetVersion)
  {
    additionalServerParams2 = [v5 additionalServerParams];
    latestInstalledAssetVersion2 = [(MADAutoAssetJob *)self latestInstalledAssetVersion];
    [additionalServerParams2 setSafeObject:latestInstalledAssetVersion2 forKey:@"InstalledAssetVersion"];
  }

  latestInstalledAssetBuild = [(MADAutoAssetJob *)self latestInstalledAssetBuild];

  if (latestInstalledAssetBuild)
  {
    downloadDecryptionKey = [v5 additionalServerParams];
    autoJobName3 = [(MADAutoAssetJob *)self latestInstalledAssetBuild];
    [downloadDecryptionKey setSafeObject:autoJobName3 forKey:@"InstalledAssetBuild"];
LABEL_44:

    goto LABEL_45;
  }

LABEL_46:

  [v5 setPurpose:@"auto"];
  return v5;
}

- (id)newSessionID
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v5 = +[NSUUID UUID];
  uUIDString = [v5 UUIDString];

  checkUUIDBasePortion = [(MADAutoAssetJob *)self checkUUIDBasePortion];

  if (!checkUUIDBasePortion)
  {
    v8 = +[NSUUID UUID];
    uUIDString2 = [v8 UUIDString];

    v10 = [uUIDString2 substringWithRange:{0, objc_msgSend(uUIDString2, "length") - 3}];
    v11 = +[MADAutoAssetControlManager preferenceSessionIDBase];
    v12 = v11;
    if (v11 && [v11 length] == &dword_0 + 3)
    {
      v13 = [[NSString alloc] initWithFormat:@"%@%@", v10, v12];
      [(MADAutoAssetJob *)self setCheckUUIDBasePortion:v13];

      v14 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        autoJobName = [(MADAutoAssetJob *)self autoJobName];
        checkUUIDBasePortion2 = [(MADAutoAssetJob *)self checkUUIDBasePortion];
        *buf = 138543618;
        v34 = autoJobName;
        v35 = 2114;
        v36 = checkUUIDBasePortion2;
        v17 = "%{public}@ | {newSessionID} created base portion for session ID (low-order digits from preferences) | basePortion:%{public}@";
LABEL_8:
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, v17, buf, 0x16u);
      }
    }

    else
    {
      [(MADAutoAssetJob *)self setCheckUUIDBasePortion:uUIDString2];
      v14 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        autoJobName = [(MADAutoAssetJob *)self autoJobName];
        checkUUIDBasePortion2 = [(MADAutoAssetJob *)self checkUUIDBasePortion];
        *buf = 138543618;
        v34 = autoJobName;
        v35 = 2114;
        v36 = checkUUIDBasePortion2;
        v17 = "%{public}@ | {newSessionID} created base portion for session ID | basePortion:%{public}@";
        goto LABEL_8;
      }
    }
  }

  if ([uUIDString length] < 4 || (-[MADAutoAssetJob checkUUIDBasePortion](self, "checkUUIDBasePortion"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "length"), v18, v19 < 4))
  {
    autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
    diag = [autoJobFSM2 diag];
    v27 = [NSString alloc];
    checkUUIDBasePortion3 = [(MADAutoAssetJob *)self checkUUIDBasePortion];
    v29 = [v27 initWithFormat:@"unable to blend UUID | potentialUUID:%@|basePortion:%@", uUIDString, checkUUIDBasePortion3];
    [diag trackAnomaly:@"AUTO-JOB:SESSION_ID" forReason:v29 withResult:6103 withError:0];

    v20 = +[NSUUID UUID];
    uUIDString3 = [v20 UUIDString];
  }

  else
  {
    v20 = [uUIDString substringWithRange:{0, objc_msgSend(uUIDString, "length") - 3}];
    checkUUIDBasePortion4 = [(MADAutoAssetJob *)self checkUUIDBasePortion];
    checkUUIDBasePortion5 = [(MADAutoAssetJob *)self checkUUIDBasePortion];
    v23 = [checkUUIDBasePortion4 substringWithRange:{objc_msgSend(checkUUIDBasePortion5, "length") - 3, 3}];

    uUIDString3 = [[NSString alloc] initWithFormat:@"%@%@", v20, v23];
  }

  v30 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
    *buf = 138543618;
    v34 = autoJobName2;
    v35 = 2114;
    v36 = uUIDString3;
    _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ | {newSessionID} new sessionID:%{public}@", buf, 0x16u);
  }

  return uUIDString3;
}

- (BOOL)isMorePreferredFormat:(id)format comparedTo:(id)to
{
  toCopy = to;
  assetFormat = [format assetFormat];
  assetFormat2 = [toCopy assetFormat];

  v8 = [MADAutoAssetDescriptor isMorePreferredAssetFormat:assetFormat comparedTo:assetFormat2];
  return v8;
}

- (void)adoptCachedLookupResult:(id)result
{
  resultCopy = result;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    v6 = [resultCopy safeStringForKey:@"DownloadedFromLive"];
    if (v6)
    {
      v7 = [[NSURL alloc] initWithString:v6];
    }

    else
    {
      v7 = 0;
    }

    v8 = [resultCopy safeStringForKey:@"CachedAssetSetId"];
    autoAssetSetDescriptor = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    [autoAssetSetDescriptor setCatalogCachedAssetSetID:v8];

    autoAssetSetDescriptor2 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    [autoAssetSetDescriptor2 setCatalogDownloadedFromLive:v7];

    v11 = [resultCopy safeDateForKey:@"lastTimeChecked"];
    autoAssetSetDescriptor3 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    [autoAssetSetDescriptor3 setCatalogLastTimeChecked:v11];

    v13 = [resultCopy safeDateForKey:@"postedDate"];
    autoAssetSetDescriptor4 = [(MADAutoAssetJob *)self autoAssetSetDescriptor];
    [autoAssetSetDescriptor4 setCatalogPostedDate:v13];

    [(MADAutoAssetJob *)self newFoundSetDescriptorsFromCachedLookup:resultCopy];
  }
}

- (void)obtainLookupGrant
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
  autoAssetUUID = [(MADAutoAssetJob *)self autoAssetUUID];
  [MADAutoAssetControlManager autoAssetJobObtainLookupGrant:autoAssetSelector forAutoAssetUUID:autoAssetUUID fromAutoAssetJob:self];
}

- (void)releaseLookupGrant
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(MADAutoAssetJob *)self holdingLookupGrant])
  {
    autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
    autoAssetUUID = [(MADAutoAssetJob *)self autoAssetUUID];
    [MADAutoAssetControlManager autoAssetJobReleaseLookupGrant:autoAssetSelector forAutoAssetUUID:autoAssetUUID fromAutoAssetJob:self];

    [(MADAutoAssetJob *)self setHoldingLookupGrant:0];
  }
}

- (void)requestDownloadManagerCatalogLookup:(id)lookup
{
  lookupCopy = lookup;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  lookupCopy = [[NSString alloc] initWithFormat:@"%@:requestDownloadManagerCatalogLookup", lookupCopy];
  selfCopy = self;
  if ([(MADAutoAssetJob *)self simulateOperation]!= &dword_0 + 1)
  {
    v95 = lookupCopy;
    v97 = lookupCopy;
    [(MADAutoAssetJob *)self _extendCatalogDownloadOptionsWithAnalyticsData:lookupCopy];
    catalogDownloadOptions = [(MADAutoAssetJob *)self catalogDownloadOptions];
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
    if ([catalogDownloadOptions discretionary])
    {
      v17 = @"Y";
    }

    else
    {
      v17 = @"N";
    }

    v103 = v17;
    v107 = [MADAutoAssetControlManager allocIntervalString:[catalogDownloadOptions timeoutIntervalForResource]];
    if ([catalogDownloadOptions allowSameVersion])
    {
      v18 = @"Y";
    }

    else
    {
      v18 = @"N";
    }

    obj = v18;
    v96 = catalogDownloadOptions;
    if ([catalogDownloadOptions canUseLocalCacheServer])
    {
      v19 = @"Y";
    }

    else
    {
      v19 = @"N";
    }

    latestInstalledAssetBuild = [(MADAutoAssetJob *)self latestInstalledAssetBuild];
    if (latestInstalledAssetBuild)
    {
      latestInstalledAssetBuild2 = [(MADAutoAssetJob *)self latestInstalledAssetBuild];
    }

    else
    {
      latestInstalledAssetBuild2 = @"NONE";
    }

    latestInstalledAssetVersion = [(MADAutoAssetJob *)self latestInstalledAssetVersion];
    if (latestInstalledAssetVersion)
    {
      latestInstalledAssetVersion2 = [(MADAutoAssetJob *)self latestInstalledAssetVersion];
    }

    else
    {
      latestInstalledAssetVersion2 = @"NONE";
    }

    catalogDownloadOptions2 = [(MADAutoAssetJob *)self catalogDownloadOptions];
    analyticsData = [catalogDownloadOptions2 analyticsData];
    if (analyticsData)
    {
      catalogDownloadOptions3 = [(MADAutoAssetJob *)self catalogDownloadOptions];
      [catalogDownloadOptions3 analyticsData];
      v28 = v27 = v15;
      safeSummary = [v28 safeSummary];
      v92 = v19;
      v30 = v107;
      v31 = [v27 initWithFormat:@"rampForeground:%@, discretionary:%@, timeout:%@, allowSame:%@, allowContentCaching:%@ | [installed] build:%@, version:%@ | analyticsData:%@", v105, v103, v107, obj, v92, latestInstalledAssetBuild2, latestInstalledAssetVersion2, safeSummary];
    }

    else
    {
      v93 = v19;
      v30 = v107;
      v31 = [v15 initWithFormat:@"rampForeground:%@, discretionary:%@, timeout:%@, allowSame:%@, allowContentCaching:%@ | [installed] build:%@, version:%@ | analyticsData:%@", v105, v103, v107, obj, v93, latestInstalledAssetBuild2, latestInstalledAssetVersion2, @"N"];
    }

    if (latestInstalledAssetVersion)
    {
    }

    if (latestInstalledAssetBuild)
    {
    }

    v32 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      autoJobName = [(MADAutoAssetJob *)selfCopy autoJobName];
      *buf = 138543874;
      v122 = autoJobName;
      v123 = 2114;
      v124 = v97;
      v125 = 2114;
      simulateOperation = v31;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ | {%{public}@} DM:registerCatalogDownloadJob | options:%{public}@", buf, 0x20u);
    }

    v94 = v31;
    if ([(MADAutoAssetJob *)selfCopy autoAssetSetJob])
    {
      v34 = objc_alloc_init(NSMutableArray);
      p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
      v36 = objc_alloc_init(NSMutableDictionary);
      [(MADAutoAssetJob *)selfCopy setLatestAssetDescriptorOnFilesystemBySpecifier:v36];

      v37 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        autoJobName2 = [(MADAutoAssetJob *)selfCopy autoJobName];
        *buf = 138543618;
        v122 = autoJobName2;
        v123 = 2114;
        v124 = v97;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@}\n[BUILD-DESCRIPTORS] cleared latestAssetDescriptorOnFilesystemBySpecifier", buf, 0x16u);
      }

      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      setConfiguration = [(MADAutoAssetJob *)selfCopy setConfiguration];
      autoAssetEntries = [setConfiguration autoAssetEntries];

      obja = autoAssetEntries;
      v104 = [autoAssetEntries countByEnumeratingWithState:&v115 objects:v120 count:16];
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
            assetSelector = [v43 assetSelector];
            v45 = [MADAutoAssetControlManager loadDescriptorsForJobSelector:assetSelector promotingIfCurrentlyStaged:0 immediatelyPromotedDescriptor:0];

            v46 = objc_alloc_init(p_weak_ivar_lyt[229]);
            assetSelector2 = [v43 assetSelector];
            assetSpecifier = [assetSelector2 assetSpecifier];
            [v46 setSafeObject:assetSpecifier forKey:@"AssetSpecifier"];

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
                  assetVersion = [v65 assetVersion];
                  v64 = [v66 initWithRestoreVersion:assetVersion];
                  goto LABEL_53;
                }

                v60 = [SUCoreRestoreVersion alloc];
                assetVersion2 = [v59 assetVersion];
                assetVersion = [v60 initWithRestoreVersion:assetVersion2];

                if ([assetVersion isComparable:v52] && objc_msgSend(assetVersion, "compare:", v52) == &dword_0 + 1)
                {
                  v63 = v59;

                  v64 = assetVersion;
                  assetVersion = v64;
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
                assetVersion3 = [v53 assetVersion];
                [v110 setSafeObject:assetVersion3 forKey:@"InstalledAssetVersion"];

                build = [v53 build];
                [v110 setSafeObject:build forKey:@"InstalledAssetBuild"];

                latestAssetDescriptorOnFilesystemBySpecifier = [(MADAutoAssetJob *)selfCopy latestAssetDescriptorOnFilesystemBySpecifier];
                assetSpecifier2 = [v53 assetSpecifier];
                [latestAssetDescriptorOnFilesystemBySpecifier setSafeObject:v53 forKey:assetSpecifier2];

                v49 = _MADLog(@"AutoJob");
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  autoJobName3 = [(MADAutoAssetJob *)selfCopy autoJobName];
                  selectorName = [v53 selectorName];
                  *buf = 138543874;
                  v122 = autoJobName3;
                  v123 = 2114;
                  v124 = v97;
                  v125 = 2114;
                  simulateOperation = selectorName;
                  _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@}\n[BUILD-DESCRIPTORS] latest version on filesystem | selector:%{public}@", buf, 0x20u);
                }
              }

              else
              {
                v49 = _MADLog(@"AutoJob");
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  autoJobName4 = [(MADAutoAssetJob *)selfCopy autoJobName];
                  selectorName2 = [v53 selectorName];
                  *buf = 138543874;
                  v122 = autoJobName4;
                  v123 = 2114;
                  v124 = v97;
                  v125 = 2114;
                  simulateOperation = selectorName2;
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

      additionalServerParams = [v96 additionalServerParams];
      [additionalServerParams setSafeObject:v34 forKey:@"SetElements"];

      additionalServerParams2 = [v96 additionalServerParams];
      setConfiguration2 = [(MADAutoAssetJob *)selfCopy setConfiguration];
      assetSetIdentifier = [setConfiguration2 assetSetIdentifier];
      v80 = simplifySetIdentifier(assetSetIdentifier);
      [additionalServerParams2 setSafeObject:v80 forKey:@"SetID"];

      autoAssetUUID2 = [(MADAutoAssetJob *)selfCopy verifyDownloadNotBlockedBySetPolicy:0];
      if (autoAssetUUID2)
      {
        v82 = [MADAutoAssetJobParam alloc];
        autoAssetUUID = [(MADAutoAssetJob *)selfCopy autoAssetUUID];
        autoAssetSelector = [(MADAutoAssetJobParam *)v82 initForFinishedJobID:autoAssetUUID withError:autoAssetUUID2];

        autoJobFSM2 = [(MADAutoAssetJob *)selfCopy autoJobFSM];
        [autoJobFSM2 postEvent:@"PolicyBlockCatalogDownload" withInfo:autoAssetSelector];
LABEL_74:

        lookupCopy = v95;
        v10 = v96;
        v8 = v97;
        goto LABEL_75;
      }

      autoAssetSelector = getDownloadManager();
      autoJobFSM2 = [(MADAutoAssetJob *)selfCopy autoAssetUUID];
      autoAssetSetAssetType = [(MADAutoAssetJob *)selfCopy autoAssetSetAssetType];
      autoAssetSetIdentifier = [(MADAutoAssetJob *)selfCopy autoAssetSetIdentifier];
      v88 = autoAssetSelector;
      v89 = autoJobFSM2;
      v90 = autoAssetSetAssetType;
      v91 = v96;
    }

    else
    {
      v34 = getDownloadManager();
      autoAssetUUID2 = [(MADAutoAssetJob *)selfCopy autoAssetUUID];
      autoAssetSelector = [(MADAutoAssetJob *)selfCopy autoAssetSelector];
      autoJobFSM2 = [autoAssetSelector assetType];
      autoAssetSetAssetType = [(MADAutoAssetJob *)selfCopy autoAssetSelector];
      autoAssetSetIdentifier = [autoAssetSetAssetType summary];
      v88 = v34;
      v89 = autoAssetUUID2;
      v90 = autoJobFSM2;
      v91 = v96;
    }

    [v88 registerCatalogDownloadJob:v89 forAssetType:v90 withPurpose:@"auto" usingDownloadOptions:v91 forAutoAssetName:autoAssetSetIdentifier];

    goto LABEL_74;
  }

  v8 = lookupCopy;
  [(MADAutoAssetJob *)self setSimulateTriggered:[(MADAutoAssetJob *)self simulateOperation]];
  v9 = objc_opt_respondsToSelector();
  v10 = _MADLog(@"AutoJob");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      autoJobName5 = [(MADAutoAssetJob *)self autoJobName];
      v13 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MADAutoAssetJob *)self simulateOperation]];
      *buf = 138543874;
      v122 = autoJobName5;
      v123 = 2114;
      v124 = v8;
      v125 = 2114;
      simulateOperation = v13;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@} | SIMULATE_OPERATION(%{public}@) | call to registerCatalogDownloadJob postponed", buf, 0x20u);
    }
  }

  else if (v11)
  {
    autoJobName6 = [(MADAutoAssetJob *)self autoJobName];
    *buf = 138543874;
    v122 = autoJobName6;
    v123 = 2114;
    v124 = lookupCopy;
    v125 = 2048;
    simulateOperation = [(MADAutoAssetJob *)self simulateOperation];
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@} | SIMULATE_OPERATION(%lld) | call to registerCatalogDownloadJob postponed", buf, 0x20u);
  }

LABEL_75:
}

- (id)autoAssetSetAssetType
{
  autoAssetEntries = [(MADAutoSetConfiguration *)self->_setConfiguration autoAssetEntries];
  v4 = [autoAssetEntries count];

  if (v4 < 1)
  {
LABEL_11:
    v16 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      summary = [(MADAutoSetConfiguration *)self->_setConfiguration summary];
      *buf = 138543618;
      v21 = summary;
      v22 = 2114;
      v23 = @"UNKNOWN_SET_ASSET_TYPE";
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "{autoAssetSetAssetType} no assetType | setConfiguration:%{public}@ | using:%{public}@", buf, 0x16u);
    }

    assetType3 = @"UNKNOWN_SET_ASSET_TYPE";
    goto LABEL_14;
  }

  assetType3 = 0;
  v7 = 0;
  *&v5 = 138543618;
  v19 = v5;
  do
  {
    autoAssetEntries2 = [(MADAutoSetConfiguration *)self->_setConfiguration autoAssetEntries];
    v9 = [autoAssetEntries2 objectAtIndex:v7];

    if (assetType3)
    {
      assetSelector = [v9 assetSelector];
      assetType = [assetSelector assetType];
      v12 = [SUCore stringIsEqual:assetType to:assetType3];

      if (v12)
      {
        goto LABEL_9;
      }

      assetSelector3 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(assetSelector3, OS_LOG_TYPE_ERROR))
      {
        assetSelector2 = [v9 assetSelector];
        assetType2 = [assetSelector2 assetType];
        *buf = v19;
        v21 = assetType2;
        v22 = 2114;
        v23 = assetType3;
        _os_log_impl(&dword_0, assetSelector3, OS_LOG_TYPE_ERROR, "{autoAssetSetAssetType} additional assetType:%{public}@ | using first encountered:%{public}@", buf, 0x16u);
      }
    }

    else
    {
      assetSelector3 = [v9 assetSelector];
      assetType3 = [assetSelector3 assetType];
    }

LABEL_9:
    ++v7;
  }

  while (v4 != v7);
  if (!assetType3)
  {
    goto LABEL_11;
  }

LABEL_14:

  return assetType3;
}

- (void)requestDownloadManagerAssetDownload:(id)download forDescriptor:(id)descriptor withBaseForPatch:(id)patch
{
  downloadCopy = download;
  descriptorCopy = descriptor;
  patchCopy = patch;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  simulateOperation = [(MADAutoAssetJob *)self simulateOperation];
  simulateOperation2 = [(MADAutoAssetJob *)self simulateOperation];
  if (simulateOperation != 2)
  {
    if (patchCopy && simulateOperation2 == 5)
    {
      v20 = objc_opt_respondsToSelector();
      v21 = _MADLog(@"AutoJob");
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (v20)
      {
        if (v22)
        {
          autoJobName = [(MADAutoAssetJob *)self autoJobName];
          v24 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MADAutoAssetJob *)self simulateOperation]];
          *buf = 138543874;
          v79 = autoJobName;
          v80 = 2114;
          v81 = downloadCopy;
          v82 = 2114;
          simulateOperation3 = v24;
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

      autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
      *buf = 138543874;
      v79 = autoJobName2;
      v80 = 2114;
      v81 = downloadCopy;
      v82 = 2048;
      simulateOperation3 = [(MADAutoAssetJob *)self simulateOperation];
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
          autoJobName = [(MADAutoAssetJob *)self autoJobName];
          v24 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MADAutoAssetJob *)self simulateOperation]];
          *buf = 138543874;
          v79 = autoJobName;
          v80 = 2114;
          v81 = downloadCopy;
          v82 = 2114;
          simulateOperation3 = v24;
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

      autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
      *buf = 138543874;
      v79 = autoJobName2;
      v80 = 2114;
      v81 = downloadCopy;
      v82 = 2048;
      simulateOperation3 = [(MADAutoAssetJob *)self simulateOperation];
      v36 = "%{public}@ {%{public}@:requestDownloadManagerAssetDownload} | SIMULATE_OPERATION(%lld) | not starting asset download - immediate simulateEnd";
LABEL_30:
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, v36, buf, 0x20u);

      goto LABEL_31;
    }

    [(MADAutoAssetJob *)self setDownloadingAssetDescriptor:descriptorCopy];
    [(MADAutoAssetJob *)self _extendAssetDownloadOptionsWithAnalyticsData:downloadCopy forDescriptor:descriptorCopy withBaseForPatch:patchCopy];
    assetDownloadOptions = [(MADAutoAssetJob *)self assetDownloadOptions];
    v30 = [NSString alloc];
    if ([assetDownloadOptions discretionary])
    {
      v31 = @"Y";
    }

    else
    {
      v31 = @"N";
    }

    v71 = v31;
    v76 = +[MADAutoAssetControlManager allocIntervalString:](MADAutoAssetControlManager, "allocIntervalString:", [assetDownloadOptions timeoutIntervalForResource]);
    assetId = [descriptorCopy assetId];
    decryptionKey = [assetDownloadOptions decryptionKey];
    if (decryptionKey)
    {
      v33 = @"Y";
    }

    else
    {
      v33 = @"N";
    }

    v68 = v33;
    sourceDirectory = [assetDownloadOptions sourceDirectory];
    v74 = assetDownloadOptions;
    if (sourceDirectory)
    {
      sourceDirectory2 = [assetDownloadOptions sourceDirectory];
    }

    else
    {
      sourceDirectory2 = @"N";
    }

    v69 = patchCopy;
    v70 = descriptorCopy;
    assetDownloadOptions2 = [(MADAutoAssetJob *)self assetDownloadOptions];
    analyticsData = [assetDownloadOptions2 analyticsData];
    if (analyticsData)
    {
      assetDownloadOptions3 = [(MADAutoAssetJob *)self assetDownloadOptions];
      [assetDownloadOptions3 analyticsData];
      v41 = v40 = v30;
      [v41 safeSummary];
      v42 = decryptionKey;
      v44 = v43 = downloadCopy;
      v72 = [v40 initWithFormat:@"discretionary:%@, timeout:%@ | assetId:%@ | decrypt:%@, source:%@ | analyticsData:%@", v71, v76, assetId, v68, sourceDirectory2, v44];

      downloadCopy = v43;
      decryptionKey = v42;
    }

    else
    {
      v72 = [v30 initWithFormat:@"discretionary:%@, timeout:%@ | assetId:%@ | decrypt:%@, source:%@ | analyticsData:%@", v71, v76, assetId, v68, sourceDirectory2, @"N"];
    }

    if (sourceDirectory)
    {
    }

    v45 = _MADLog(@"AutoJob");
    patchCopy = v69;
    descriptorCopy = v70;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      autoJobName3 = [(MADAutoAssetJob *)self autoJobName];
      *buf = 138543874;
      v79 = autoJobName3;
      v80 = 2114;
      v81 = downloadCopy;
      v82 = 2114;
      simulateOperation3 = v72;
      _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "%{public}@ | {%{public}@} DM:registerAssetDownloadJob | options:%{public}@", buf, 0x20u);
    }

    if ([(MADAutoAssetJob *)self autoAssetSetJob])
    {
      v47 = [(MADAutoAssetJob *)self verifyDownloadNotBlockedBySetPolicy:1];
      if (v47)
      {
        v48 = v47;
        v49 = [MADAutoAssetJobParam alloc];
        autoAssetUUID = [(MADAutoAssetJob *)self autoAssetUUID];
        v51 = [(MADAutoAssetJobParam *)v49 initForFinishedJobID:autoAssetUUID withError:v48];

        autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
        [autoJobFSM2 postEvent:@"PolicyBlockCatalogDownload" withInfo:v51];
        autoAssetSetAssetType = 0;
        goto LABEL_48;
      }

      v77 = downloadCopy;
      autoAssetSetAssetType = [(MADAutoAssetJob *)self autoAssetSetAssetType];
      [(MADAutoAssetJob *)self setNextSetSpecifierToDownload:[(MADAutoAssetJob *)self nextSetSpecifierToDownload]+ 1];
    }

    else
    {
      v77 = downloadCopy;
      autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
      autoAssetSetAssetType = [autoAssetSelector assetType];
    }

    v55 = getDownloadManager();
    autoAssetUUID2 = [(MADAutoAssetJob *)self autoAssetUUID];
    clientName = [(MADAutoAssetJob *)self clientName];
    assetId2 = [v70 assetId];
    metadata = [v70 metadata];
    setSpaceCheckedUUID = [(MADAutoAssetJob *)self setSpaceCheckedUUID];
    [v55 registerAssetDownloadJob:autoAssetUUID2 forAssetType:autoAssetSetAssetType withPurpose:@"auto" clientName:clientName usingDownloadOptions:v74 forAssetId:assetId2 withCatalogMetadata:metadata withSpaceCheckedUUID:setSpaceCheckedUUID];

    if (![(MADAutoAssetJob *)self autoAssetSetJob]|| !+[MAAIRBEventReporter isAvailable])
    {
      downloadCopy = v77;
      goto LABEL_50;
    }

    v61 = [MAAIRBMobileAssetOperationMetadata alloc];
    v62 = [MADAutoAssetHistoryTracker operationName:1700];
    v48 = [(MAAIRBMobileAssetOperationMetadata *)v61 initWithCode:1700 name:v62];

    v63 = [MAAIRBMobileAssetAssetSelector alloc];
    assetType = [v70 assetType];
    assetSpecifier = [v70 assetSpecifier];
    assetVersion = [v70 assetVersion];
    v51 = [(MAAIRBMobileAssetAssetSelector *)v63 initWithAssetType:assetType assetSpecifier:assetSpecifier assetVersion:assetVersion];

    autoJobFSM2 = [MAAIRBAppleIntelligenceAssetDeliveryEventType typeAssetJob:v48 assetSelector:v51 downloadResult:0];
    v67 = [[MAAIRBAppleIntelligenceAssetDeliveryEvent alloc] initWithErrors:&__NSArray0__struct type:autoJobFSM2];
    [MAAIRBEventReporter emitAppleIntelligenceStartEvent:v67];

    downloadCopy = v77;
LABEL_48:

LABEL_50:
    goto LABEL_51;
  }

  [(MADAutoAssetJob *)self setSimulateTriggered:simulateOperation2];
  [(MADAutoAssetJob *)self setSimulateDescriptor:descriptorCopy];
  [(MADAutoAssetJob *)self setSimulateBaseForPatch:patchCopy];
  v15 = objc_opt_respondsToSelector();
  v16 = _MADLog(@"AutoJob");
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      autoJobName4 = [(MADAutoAssetJob *)self autoJobName];
      v19 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MADAutoAssetJob *)self simulateOperation]];
      *buf = 138543874;
      v79 = autoJobName4;
      v80 = 2114;
      v81 = downloadCopy;
      v82 = 2114;
      simulateOperation3 = v19;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@:requestDownloadManagerAssetDownload} | SIMULATE_OPERATION(%{public}@) | call to registerAssetDownloadJob postponed", buf, 0x20u);
    }
  }

  else if (v17)
  {
    autoJobName5 = [(MADAutoAssetJob *)self autoJobName];
    *buf = 138543874;
    v79 = autoJobName5;
    v80 = 2114;
    v81 = downloadCopy;
    v82 = 2048;
    simulateOperation3 = [(MADAutoAssetJob *)self simulateOperation];
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@:requestDownloadManagerAssetDownload} | SIMULATE_OPERATION(%lld) | call to registerAssetDownloadJob postponed", buf, 0x20u);
  }

LABEL_51:
}

- (void)requestDownloadManagerConfigDownload:(id)download forDescriptor:(id)descriptor
{
  downloadCopy = download;
  descriptorCopy = descriptor;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(MADAutoAssetJob *)self simulateOperation]== &dword_0 + 3)
  {
    [(MADAutoAssetJob *)self setSimulateTriggered:[(MADAutoAssetJob *)self simulateOperation]];
    [(MADAutoAssetJob *)self setSimulateDescriptor:descriptorCopy];
    v10 = objc_opt_respondsToSelector();
    assetDownloadOptions = _MADLog(@"AutoJob");
    v12 = os_log_type_enabled(assetDownloadOptions, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        autoJobName = [(MADAutoAssetJob *)self autoJobName];
        v14 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MADAutoAssetJob *)self simulateOperation]];
        *buf = 138543874;
        v41 = autoJobName;
        v42 = 2114;
        v43 = downloadCopy;
        v44 = 2114;
        simulateOperation = v14;
        _os_log_impl(&dword_0, assetDownloadOptions, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@:requestDownloadManagerConfigDownload} | SIMULATE_OPERATION(%{public}@) | call to configAssetDownloadJob postponed", buf, 0x20u);
      }
    }

    else if (v12)
    {
      autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
      *buf = 138543874;
      v41 = autoJobName2;
      v42 = 2114;
      v43 = downloadCopy;
      v44 = 2048;
      simulateOperation = [(MADAutoAssetJob *)self simulateOperation];
      _os_log_impl(&dword_0, assetDownloadOptions, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@:requestDownloadManagerConfigDownload} | SIMULATE_OPERATION(%lld) | call to configAssetDownloadJob postponed", buf, 0x20u);
    }
  }

  else
  {
    assetDownloadOptions = [(MADAutoAssetJob *)self assetDownloadOptions];
    if ([(MADAutoAssetJob *)self configuredToCellular]&& ![(MADAutoAssetJob *)self boostedToCellular])
    {
      [assetDownloadOptions setAllowsCellularAccess:1];
    }

    if ([(MADAutoAssetJob *)self configuredToExpensive]&& ![(MADAutoAssetJob *)self boostedToExpensive])
    {
      [assetDownloadOptions setAllowsExpensiveAccess:1];
    }

    if ([(MADAutoAssetJob *)self configuredToUserInitiated]&& ![(MADAutoAssetJob *)self boostedToUserInitiated])
    {
      [assetDownloadOptions setDiscretionary:0];
    }

    if (__isPlatformVersionAtLeast(2, 18, 3, 0))
    {
      v39 = @"N";
      if (objc_opt_respondsToSelector())
      {
        allowsConstrainedAccess = [assetDownloadOptions allowsConstrainedAccess];
        v16 = @"N";
        if (allowsConstrainedAccess)
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
    if ([assetDownloadOptions discretionary])
    {
      v18 = @"Y";
    }

    else
    {
      v18 = @"N";
    }

    v35 = v18;
    v37 = [MADAutoAssetControlManager allocIntervalString:[assetDownloadOptions timeoutIntervalForResource]];
    v38 = descriptorCopy;
    assetId = [descriptorCopy assetId];
    decryptionKey = [assetDownloadOptions decryptionKey];
    if (decryptionKey)
    {
      v21 = @"Y";
    }

    else
    {
      v21 = @"N";
    }

    sourceDirectory = [assetDownloadOptions sourceDirectory];
    if (sourceDirectory)
    {
      sourceDirectory2 = [assetDownloadOptions sourceDirectory];
    }

    else
    {
      sourceDirectory2 = @"N";
    }

    if ([assetDownloadOptions allowsCellularAccess])
    {
      v24 = @"Y";
    }

    else
    {
      v24 = @"N";
    }

    if ([assetDownloadOptions allowsExpensiveAccess])
    {
      v25 = @"Y";
    }

    else
    {
      v25 = @"N";
    }

    v26 = [v36 initWithFormat:@"discretionary:%@, timeout:%@ | assetId:%@ | decrypt:%@ | source:%@ | cellular:%@ | expensive:%@ | constrained:%@", v35, v37, assetId, v21, sourceDirectory2, v24, v25, v39];
    if (sourceDirectory)
    {
    }

    v27 = _MADLog(@"AutoJob");
    descriptorCopy = v38;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      autoJobName3 = [(MADAutoAssetJob *)self autoJobName];
      *buf = 138543874;
      v41 = autoJobName3;
      v42 = 2114;
      v43 = downloadCopy;
      v44 = 2114;
      simulateOperation = v26;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ | {%{public}@} DM:configAssetDownloadJob | downloadOptions:%{public}@", buf, 0x20u);
    }

    v29 = getDownloadManager();
    autoAssetUUID = [(MADAutoAssetJob *)self autoAssetUUID];
    autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
    assetType = [autoAssetSelector assetType];
    assetId2 = [v38 assetId];
    clientName = [(MADAutoAssetJob *)self clientName];
    [v29 configAssetDownloadJob:autoAssetUUID forAssetType:assetType withPurpose:@"auto" matchingAssetId:assetId2 usingDownloadOptions:assetDownloadOptions forAutoAssetName:clientName];
  }
}

- (void)requestDownloadManagerCancelDownload:(id)download forDescriptor:(id)descriptor
{
  downloadCopy = download;
  descriptorCopy = descriptor;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(MADAutoAssetJob *)self simulateTriggered]== &dword_0 + 2)
  {
    [(MADAutoAssetJob *)self simulateEnd:0];
  }

  if ([(MADAutoAssetJob *)self simulateOperation]== &dword_4)
  {
    [(MADAutoAssetJob *)self setSimulateTriggered:[(MADAutoAssetJob *)self simulateOperation]];
    [(MADAutoAssetJob *)self setSimulateDescriptor:descriptorCopy];
    v10 = objc_opt_respondsToSelector();
    v11 = _MADLog(@"AutoJob");
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        autoJobName = [(MADAutoAssetJob *)self autoJobName];
        v14 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MADAutoAssetJob *)self simulateOperation]];
        v24 = 138543874;
        v25 = autoJobName;
        v26 = 2114;
        v27 = downloadCopy;
        v28 = 2114;
        simulateOperation = v14;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@:requestDownloadManagerCancelDownload} | SIMULATE_OPERATION(%{public}@) | call to cancelAssetDownloadJob postponed", &v24, 0x20u);
      }
    }

    else if (v12)
    {
      autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
      v24 = 138543874;
      v25 = autoJobName2;
      v26 = 2114;
      v27 = downloadCopy;
      v28 = 2048;
      simulateOperation = [(MADAutoAssetJob *)self simulateOperation];
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@:requestDownloadManagerCancelDownload} | SIMULATE_OPERATION(%lld) | call to cancelAssetDownloadJob postponed", &v24, 0x20u);
    }
  }

  else
  {
    v15 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      autoJobName3 = [(MADAutoAssetJob *)self autoJobName];
      v24 = 138543618;
      v25 = autoJobName3;
      v26 = 2114;
      v27 = downloadCopy;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ | {%{public}@} DM:cancelAssetDownloadJob", &v24, 0x16u);
    }

    v17 = getDownloadManager();
    autoAssetUUID = [(MADAutoAssetJob *)self autoAssetUUID];
    autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
    assetType = [autoAssetSelector assetType];
    assetId = [descriptorCopy assetId];
    clientName = [(MADAutoAssetJob *)self clientName];
    [v17 cancelAssetDownloadJob:autoAssetUUID forAssetType:assetType withPurpose:@"auto" matchingAssetId:assetId forAutoAssetName:clientName];

    [(MADAutoAssetJob *)self _releaseReservedSpace];
  }
}

- (void)mergeSetPolicyIntoAggregated:(id)aggregated
{
  aggregatedCopy = aggregated;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  aggregatedClientSetPolicy = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  [aggregatedClientSetPolicy setLockInhibitsEmergencyRemoval:{objc_msgSend(aggregatedCopy, "lockInhibitsEmergencyRemoval") | objc_msgSend(aggregatedClientSetPolicy, "lockInhibitsEmergencyRemoval")}];

  aggregatedClientSetPolicy2 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  [aggregatedClientSetPolicy2 setAllowCheckDownloadOnBattery:{objc_msgSend(aggregatedCopy, "allowCheckDownloadOnBattery") | objc_msgSend(aggregatedClientSetPolicy2, "allowCheckDownloadOnBattery")}];

  aggregatedClientSetPolicy3 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  [aggregatedClientSetPolicy3 setAllowCheckDownloadWhenBatteryLow:{objc_msgSend(aggregatedCopy, "allowCheckDownloadWhenBatteryLow") | objc_msgSend(aggregatedClientSetPolicy3, "allowCheckDownloadWhenBatteryLow")}];

  aggregatedClientSetPolicy4 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  [aggregatedClientSetPolicy4 setAllowCheckDownloadWhenCPUHigh:{objc_msgSend(aggregatedCopy, "allowCheckDownloadWhenCPUHigh") | objc_msgSend(aggregatedClientSetPolicy4, "allowCheckDownloadWhenCPUHigh")}];

  aggregatedClientSetPolicy5 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  [aggregatedClientSetPolicy5 setAllowCheckDownloadOverExpensive:{objc_msgSend(aggregatedCopy, "allowCheckDownloadOverExpensive") | objc_msgSend(aggregatedClientSetPolicy5, "allowCheckDownloadOverExpensive")}];

  aggregatedClientSetPolicy6 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  [aggregatedClientSetPolicy6 setAllowCheckDownloadOverCellular:{objc_msgSend(aggregatedCopy, "allowCheckDownloadOverCellular") | objc_msgSend(aggregatedClientSetPolicy6, "allowCheckDownloadOverCellular")}];

  aggregatedClientSetPolicy7 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  LODWORD(extendedStateQueue) = [aggregatedCopy blockCheckDownload];

  [aggregatedClientSetPolicy7 setBlockCheckDownload:{extendedStateQueue | objc_msgSend(aggregatedClientSetPolicy7, "blockCheckDownload")}];
  v17 = objc_opt_new();
  aggregatedClientSetPolicy8 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  [v17 setAllowsCellularAccess:{objc_msgSend(aggregatedClientSetPolicy8, "allowCheckDownloadOverCellular")}];

  aggregatedClientSetPolicy9 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  [v17 setAllowsExpensiveAccess:{objc_msgSend(aggregatedClientSetPolicy9, "allowCheckDownloadOverExpensive")}];

  aggregatedClientSetPolicy10 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  [v17 setDiscretionary:{objc_msgSend(aggregatedClientSetPolicy10, "userInitiated") ^ 1}];

  [(MADAutoAssetJob *)self _updateDownloadOptions:v17];
}

- (id)verifyDownloadNotBlockedBySetPolicy:(BOOL)policy
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  aggregatedClientSetPolicy = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  if ([aggregatedClientSetPolicy userInitiated])
  {
  }

  else
  {
    aggregatedClientSetPolicy2 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
    if (![aggregatedClientSetPolicy2 allowCheckDownloadOnBattery])
    {
LABEL_11:

      goto LABEL_12;
    }

    aggregatedClientSetPolicy3 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
    allowCheckDownloadWhenBatteryLow = [aggregatedClientSetPolicy3 allowCheckDownloadWhenBatteryLow];

    if (!allowCheckDownloadWhenBatteryLow)
    {
      return 0;
    }
  }

  aggregatedClientSetPolicy = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
  if ([aggregatedClientSetPolicy userInitiated])
  {
    aggregatedClientSetPolicy2 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
    if ([aggregatedClientSetPolicy2 allowCheckDownloadOnBattery])
    {
      aggregatedClientSetPolicy4 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
      if ([aggregatedClientSetPolicy4 allowCheckDownloadWhenBatteryLow])
      {
        aggregatedClientSetPolicy5 = [(MADAutoAssetJob *)self aggregatedClientSetPolicy];
        [aggregatedClientSetPolicy5 allowCheckDownloadWhenCPUHigh];
      }
    }

    goto LABEL_11;
  }

LABEL_12:

  return 0;
}

- (void)_setCalculateDownloadSpace:(id)space
{
  spaceCopy = space;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {
    goto LABEL_43;
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  setConfiguration = [(MADAutoAssetJob *)self setConfiguration];
  autoAssetEntries = [setConfiguration autoAssetEntries];

  obj = autoAssetEntries;
  v9 = [autoAssetEntries countByEnumeratingWithState:&v76 objects:v94 count:16];
  if (v9)
  {
    v11 = v9;
    v66 = 0;
    v65 = -1;
    v70 = *v77;
    *&v10 = 138544898;
    v62 = v10;
    selfCopy = self;
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
        latestAssetDescriptorOnFilesystemBySpecifier = [(MADAutoAssetJob *)self latestAssetDescriptorOnFilesystemBySpecifier];
        assetSelector = [v13 assetSelector];
        assetSpecifier = [assetSelector assetSpecifier];
        v17 = [latestAssetDescriptorOnFilesystemBySpecifier safeObjectForKey:assetSpecifier ofClass:objc_opt_class()];

        if (v17)
        {
          v18 = _MADLog(@"AutoJob");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            autoJobName = [(MADAutoAssetJob *)self autoJobName];
            selectorName = [v17 selectorName];
            *buf = 138543874;
            v81 = autoJobName;
            v82 = 2114;
            v83 = spaceCopy;
            v84 = 2114;
            v85 = selectorName;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@}\n[CALCULATE_DOWNLOAD_SPACE] asset-descriptor already on filesystem - no need to download again | selectorOnFS:%{public}@", buf, 0x20u);
          }
        }

        else
        {
          foundSetFullDescriptorsBySpecifier = [(MADAutoAssetJob *)self foundSetFullDescriptorsBySpecifier];
          assetSelector2 = [v13 assetSelector];
          assetSpecifier2 = [assetSelector2 assetSpecifier];
          v18 = [foundSetFullDescriptorsBySpecifier safeObjectForKey:assetSpecifier2 ofClass:objc_opt_class()];

          foundSetPatchDescriptorsBySpecifier = [(MADAutoAssetJob *)self foundSetPatchDescriptorsBySpecifier];
          assetSelector3 = [v13 assetSelector];
          assetSpecifier3 = [assetSelector3 assetSpecifier];
          v27 = [foundSetPatchDescriptorsBySpecifier safeObjectForKey:assetSpecifier3 ofClass:objc_opt_class()];

          if (v18 | v27)
          {
            if (v27)
            {
              metadata = [v27 metadata];
              v68 = [metadata safeIntegerForKey:@"_UnarchivedSize"];

              metadata2 = [v27 metadata];
              v33 = @"Y";
            }

            else
            {
              metadata3 = [v18 metadata];
              v68 = [metadata3 safeIntegerForKey:@"_UnarchivedSize"];

              metadata2 = [v18 metadata];
              v33 = @"N";
            }

            v64 = v33;
            v35 = cacheDeleteLevelForPolicyValue([metadata2 safeIntegerForKey:@"_DownloadPolicy"]);

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
              v39 = v38 = spaceCopy;
              summary = [v13 summary];
              *buf = v62;
              v81 = v39;
              v82 = 2114;
              v83 = v38;
              v84 = 2114;
              v85 = summary;
              v86 = 2114;
              v87 = v64;
              v88 = 2048;
              v89 = v68;
              v90 = 1024;
              v91 = v35;
              v92 = 2048;
              v93 = v37;
              _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@}\n[CALCULATE_DOWNLOAD_SPACE] calculating download space | nextEntryToDownload:%{public}@ | willDownloadPatch:%{public}@ | requiredSpace:%lld bytes | downloadPolicy:%d | totalRequiredSpace:%lld bytes", buf, 0x44u);

              spaceCopy = v38;
              self = selfCopy;
            }
          }

          else
          {
            v28 = _MADLog(@"AutoJob");
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
              summary2 = [v13 summary];
              *buf = 138543874;
              v81 = autoJobName2;
              v82 = 2114;
              v83 = spaceCopy;
              v84 = 2114;
              v85 = summary2;
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
    autoJobName3 = [(MADAutoAssetJob *)self autoJobName];
    *buf = 138544130;
    v81 = autoJobName3;
    v82 = 2114;
    v83 = spaceCopy;
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
        autoJobName4 = [(MADAutoAssetJob *)self autoJobName];
        *buf = 138543618;
        v81 = autoJobName4;
        v82 = 2114;
        v83 = spaceCopy;
        v57 = "%{public}@ {%{public}@}\n[CALCULATE_DOWNLOAD_SPACE] final-download-policy is not system/critical, space check will not be performed";
LABEL_41:
        _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEFAULT, v57, buf, 0x16u);
      }
    }

    else if (v55)
    {
      autoJobName4 = [(MADAutoAssetJob *)self autoJobName];
      *buf = 138543618;
      v81 = autoJobName4;
      v82 = 2114;
      v83 = spaceCopy;
      v57 = "%{public}@ {%{public}@}\n[CALCULATE_DOWNLOAD_SPACE] total-required-free-space is zero (nothing will be downloaded), space check will not be performed";
      goto LABEL_41;
    }

LABEL_43:
    autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
    v59 = [MADAutoAssetJobParam alloc];
    _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
    v61 = [(MADAutoAssetJobParam *)v59 initWithSafeSummary:_updateLatestSummary];
    [autoJobFSM2 postEvent:@"SetEnoughSpaceForDownload" withInfo:v61];

    goto LABEL_44;
  }

  selfCopy2 = self;
  v44 = spaceCopy;
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
  cacheDeleteManager = [v50 cacheDeleteManager];
  autoJobFSM3 = [(MADAutoAssetJob *)selfCopy2 autoJobFSM];
  extendedStateQueue2 = [autoJobFSM3 extendedStateQueue];
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = __46__MADAutoAssetJob__setCalculateDownloadSpace___block_invoke;
  v71[3] = &unk_4B4D38;
  v71[4] = selfCopy2;
  v75 = 4;
  v72 = v44;
  v73 = v66;
  v74 = v46;
  [cacheDeleteManager checkAvailableSpace:v66 allowPurgeWithUrgency:4 withCompletionQueue:extendedStateQueue2 completion:v71];

  spaceCopy = v44;
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

- (void)_extendCatalogDownloadOptionsWithAnalyticsData:(id)data
{
  dataCopy = data;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v8 = [(MADAutoAssetJob *)self _baseAnalyticsData:dataCopy];
  if ([v8 count])
  {
    catalogDownloadOptions = [(MADAutoAssetJob *)self catalogDownloadOptions];
    [catalogDownloadOptions setAnalyticsData:v8];
  }

  v10 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    autoJobName = [(MADAutoAssetJob *)self autoJobName];
    catalogDownloadOptions2 = [(MADAutoAssetJob *)self catalogDownloadOptions];
    analyticsData = [catalogDownloadOptions2 analyticsData];
    if (analyticsData)
    {
      self = [(MADAutoAssetJob *)self catalogDownloadOptions];
      analyticsData2 = [(MADAutoAssetJob *)self analyticsData];
      safeSummary = [analyticsData2 safeSummary];
    }

    else
    {
      safeSummary = @"N";
    }

    v15 = 138543874;
    v16 = autoJobName;
    v17 = 2114;
    v18 = dataCopy;
    v19 = 2114;
    v20 = safeSummary;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ | {%{public}@:_extendCatalogDownloadOptionsWithAnalyticsData} analyticsData:%{public}@", &v15, 0x20u);
    if (analyticsData)
    {
    }
  }
}

- (void)_extendAssetDownloadOptionsWithAnalyticsData:(id)data forDescriptor:(id)descriptor withBaseForPatch:(id)patch
{
  dataCopy = data;
  descriptorCopy = descriptor;
  patchCopy = patch;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v13 = [(MADAutoAssetJob *)self _baseAnalyticsData:dataCopy];
  autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
  assetType = [autoAssetSelector assetType];

  if (!assetType || (-[MADAutoAssetJob autoAssetSelector](self, "autoAssetSelector"), v16 = objc_claimAutoreleasedReturnValue(), [v16 assetType], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(descriptorCopy, "assetType"), v18 = objc_claimAutoreleasedReturnValue(), v19 = +[SUCore stringIsEqual:to:](SUCore, "stringIsEqual:to:", v17, v18), v18, v17, v16, (v19 & 1) == 0))
  {
    assetType2 = [descriptorCopy assetType];
    [v13 setSafeObject:assetType2 forKey:@"AssetType"];
  }

  autoAssetSelector2 = [(MADAutoAssetJob *)self autoAssetSelector];
  assetSpecifier = [autoAssetSelector2 assetSpecifier];

  if (!assetSpecifier || (-[MADAutoAssetJob autoAssetSelector](self, "autoAssetSelector"), v23 = objc_claimAutoreleasedReturnValue(), [v23 assetSpecifier], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(descriptorCopy, "assetSpecifier"), v25 = objc_claimAutoreleasedReturnValue(), v26 = +[SUCore stringIsEqual:to:](SUCore, "stringIsEqual:to:", v24, v25), v25, v24, v23, (v26 & 1) == 0))
  {
    assetSpecifier2 = [descriptorCopy assetSpecifier];
    [v13 setSafeObject:assetSpecifier2 forKey:@"AssetSpecifier"];
  }

  assetVersion = [descriptorCopy assetVersion];
  [v13 setSafeObject:assetVersion forKey:@"AssetVersion"];

  if ([descriptorCopy isMAAutoAsset])
  {
    v29 = @"YES";
  }

  else
  {
    v29 = @"NO";
  }

  [v13 setSafeObject:v29 forKey:@"IsMAAutoAsset"];
  assetFormat = [descriptorCopy assetFormat];
  [v13 setSafeObject:assetFormat forKey:@"AssetFormat"];

  metadata = [descriptorCopy metadata];
  v32 = [metadata safeStringForKey:@"Build"];
  [v13 setSafeObject:v32 forKey:@"AssetTargetBuildVersion"];

  metadata2 = [descriptorCopy metadata];
  v34 = [metadata2 safeStringForKey:@"OSVersion"];
  [v13 setSafeObject:v34 forKey:@"AssetTargetOSVersion"];

  if (patchCopy)
  {
    [v13 setSafeObject:@"YES" forKey:@"IsAssetPatch"];
    assetVersion2 = [patchCopy assetVersion];
    [v13 setSafeObject:assetVersion2 forKey:@"BaseAssetVersion"];

    [v13 setSafeObject:@"YES" forKey:@"WasAssetPatchingAttempted"];
    patchingAttemptError = [descriptorCopy patchingAttemptError];

    if (patchingAttemptError)
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
  if (![descriptorCopy patchingAttempted])
  {
    v37 = @"FULL_REPLACEMENT_NO_PRIOR";
LABEL_19:
    v43 = @"AssetPatchingPallasResult";
    goto LABEL_20;
  }

  patchingAttemptError2 = [descriptorCopy patchingAttemptError];

  if (patchingAttemptError2)
  {
    patchingAttemptError3 = [descriptorCopy patchingAttemptError];
    checkedSummary = [patchingAttemptError3 checkedSummary];
    [v13 setSafeObject:checkedSummary forKey:@"AssetPatchingFailureReason"];

    patchingAttemptError4 = [descriptorCopy patchingAttemptError];
    checkedDescription = [patchingAttemptError4 checkedDescription];
    [v13 setSafeObject:checkedDescription forKey:@"AssetPatchingFailureError"];

    [v13 setSafeObject:@"FULL_REPLACEMENT_PATCH_ATTEMPT_FAILED" forKey:@"AssetPatchingPallasResult"];
  }

  v37 = @"YES";
  v43 = @"WasAssetPatchingAttempted";
LABEL_20:
  [v13 setSafeObject:v37 forKey:v43];
  if ([v13 count])
  {
    assetDownloadOptions = [(MADAutoAssetJob *)self assetDownloadOptions];
    [assetDownloadOptions setAnalyticsData:v13];
  }

  v45 = _MADLog(@"AutoJob");
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v51 = patchCopy;
    v46 = dataCopy;
    autoJobName = [(MADAutoAssetJob *)self autoJobName];
    assetDownloadOptions2 = [(MADAutoAssetJob *)self assetDownloadOptions];
    analyticsData = [assetDownloadOptions2 analyticsData];
    if (analyticsData)
    {
      self = [(MADAutoAssetJob *)self assetDownloadOptions];
      dataCopy = [(MADAutoAssetJob *)self analyticsData];
      safeSummary = [dataCopy safeSummary];
    }

    else
    {
      safeSummary = @"N";
    }

    *buf = 138543874;
    v53 = autoJobName;
    v54 = 2114;
    v55 = v46;
    v56 = 2114;
    v57 = safeSummary;
    _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "%{public}@ | {%{public}@:_extendAssetDownloadOptionsWithAnalyticsData} analyticsData:%{public}@", buf, 0x20u);
    if (analyticsData)
    {
    }

    dataCopy = v46;
    patchCopy = v51;
  }
}

- (id)_baseAnalyticsData:(id)data
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v6 = objc_alloc_init(NSMutableDictionary);
  [v6 setSafeObject:@"YES" forKey:@"IsAutoDownload"];
  jobCreationTriggeringLayer = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];
  if (jobCreationTriggeringLayer)
  {
    jobCreationTriggeringLayer2 = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];
    [v6 setSafeObject:jobCreationTriggeringLayer2 forKey:@"TriggeringLayer"];
  }

  else
  {
    [v6 setSafeObject:@"Unknown" forKey:@"TriggeringLayer"];
  }

  jobCreationTriggeringLayer3 = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];

  if (jobCreationTriggeringLayer3)
  {
    jobCreationTriggeringLayer4 = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];
    if (([SUCore stringIsEqual:jobCreationTriggeringLayer4 to:@"ClientInterest"]& 1) != 0)
    {
LABEL_10:

LABEL_11:
      autoAssetInstance = [(MADAutoAssetJob *)self autoAssetInstance];
      autoAssetClientName = [autoAssetInstance autoAssetClientName];
      [v6 setSafeObject:autoAssetClientName forKey:@"ClientName"];

      goto LABEL_12;
    }

    jobCreationTriggeringLayer5 = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];
    if (([SUCore stringIsEqual:jobCreationTriggeringLayer5 to:@"ClientCheck"]& 1) != 0)
    {
LABEL_9:

      goto LABEL_10;
    }

    jobCreationTriggeringLayer6 = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];
    if ([SUCore stringIsEqual:jobCreationTriggeringLayer6 to:@"ClientDetermine"])
    {

      goto LABEL_9;
    }

    jobCreationTriggeringLayer7 = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];
    v25 = [SUCore stringIsEqual:jobCreationTriggeringLayer7 to:@"ClientLock"];

    if (v25)
    {
      goto LABEL_11;
    }

    jobCreationTriggeringLayer8 = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];
    v27 = [SUCore stringIsEqual:jobCreationTriggeringLayer8 to:@"Scheduler"];

    if (v27)
    {
      v28 = @"AutoAssetScheduler";
    }

    else
    {
      jobCreationTriggeringLayer9 = [(MADAutoAssetJob *)self jobCreationTriggeringLayer];
      v30 = [SUCore stringIsEqual:jobCreationTriggeringLayer9 to:@"Stager"];

      if (!v30)
      {
        goto LABEL_12;
      }

      v28 = @"AutoAssetStager";
    }

    [v6 setSafeObject:v28 forKey:@"ClientName"];
  }

LABEL_12:
  autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
  assetType = [autoAssetSelector assetType];
  [v6 setSafeObject:assetType forKey:@"AssetType"];

  autoAssetSelector2 = [(MADAutoAssetJob *)self autoAssetSelector];
  assetSpecifier = [autoAssetSelector2 assetSpecifier];
  [v6 setSafeObject:assetSpecifier forKey:@"AssetSpecifier"];

  autoAssetSelector3 = [(MADAutoAssetJob *)self autoAssetSelector];
  assetVersion = [autoAssetSelector3 assetVersion];

  if (assetVersion)
  {
    autoAssetSelector4 = [(MADAutoAssetJob *)self autoAssetSelector];
    assetVersion2 = [autoAssetSelector4 assetVersion];
    [v6 setSafeObject:assetVersion2 forKey:@"AssetVersion"];
  }

  return v6;
}

- (id)newCurrentStatusForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [MAAutoAssetStatus alloc];
  v6 = objc_opt_respondsToSelector();

  v7 = [MAAutoAssetStatus alloc];
  if (v6)
  {
    autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
    v8 = objc_alloc_init(MAAutoAssetNotifications);
    metadata = [descriptorCopy metadata];
    downloadingUserInitiated = [(MADAutoAssetJob *)self downloadingUserInitiated];
    patchingAttempted = [descriptorCopy patchingAttempted];
    stagedPriorToAvailable = [descriptorCopy stagedPriorToAvailable];
    stagedFromOSVersion = [descriptorCopy stagedFromOSVersion];
    stagedFromBuildVersion = [descriptorCopy stagedFromBuildVersion];
    patchingAttemptError = [descriptorCopy patchingAttemptError];
    BYTE1(v33) = stagedPriorToAvailable;
    LOBYTE(v33) = patchingAttempted;
    LOBYTE(v31) = 0;
    v16 = [v7 initWithAssetSelector:autoAssetSelector withNotifications:v8 withAvailableForUseAttributes:0 withNewerVersionAttributes:metadata withNeverBeenLocked:1 withDownloadUserInitiated:downloadingUserInitiated withDownloadProgress:0 withDownloadedNetworkBytes:-1 withDownloadedFilesystemBytes:-1 withDownloadedAsPatch:v31 withPatchedFromBaseSelector:0 withPatchedFromBaseFilesystemBytes:-1 withPatchingAttempted:v33 withStagedPriorToAvailable:stagedFromOSVersion withStagedFromOSVersion:stagedFromBuildVersion withStagedFromBuildVersion:0 withCurrentLockUsage:0 withAvailableForUseError:patchingAttemptError withPatchingAttemptError:0 withNewerVersionError:?];
  }

  else
  {
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v35 = [MAAutoAssetStatus alloc];
      autoAssetSelector2 = [(MADAutoAssetJob *)self autoAssetSelector];
      v19 = objc_alloc_init(MAAutoAssetNotifications);
      metadata2 = [descriptorCopy metadata];
      downloadingUserInitiated2 = [(MADAutoAssetJob *)self downloadingUserInitiated];
      patchingAttempted2 = [descriptorCopy patchingAttempted];
      stagedPriorToAvailable2 = [descriptorCopy stagedPriorToAvailable];
      stagedFromOSVersion2 = [descriptorCopy stagedFromOSVersion];
      stagedFromBuildVersion2 = [descriptorCopy stagedFromBuildVersion];
      patchingAttemptError2 = [descriptorCopy patchingAttemptError];
      BYTE1(v32) = stagedPriorToAvailable2;
      LOBYTE(v32) = patchingAttempted2;
      LOBYTE(v30) = 0;
      v16 = [v35 initWithAssetSelector:autoAssetSelector2 withNotifications:v19 withAvailableForUseAttributes:0 withNewerVersionAttributes:metadata2 withDownloadUserInitiated:downloadingUserInitiated2 withDownloadProgress:0 withDownloadedNetworkBytes:-1 withDownloadedFilesystemBytes:-1 withDownloadedAsPatch:v30 withPatchedFromBaseSelector:0 withPatchedFromBaseFilesystemBytes:-1 withPatchingAttempted:v32 withStagedPriorToAvailable:stagedFromOSVersion2 withStagedFromOSVersion:stagedFromBuildVersion2 withStagedFromBuildVersion:0 withCurrentLockUsage:0 withAvailableForUseError:patchingAttemptError2 withPatchingAttemptError:0 withNewerVersionError:?];
    }

    else
    {
      v27 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        autoJobName = [(MADAutoAssetJob *)self autoJobName];
        *buf = 138543362;
        v37 = autoJobName;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%{public}@ | {autoAssetJobFinished} [MA_BRAIN_SHIM_PROTOCOL_SUPPORT] unable to create current status for job", buf, 0xCu);
      }

      v16 = 0;
    }
  }

  return v16;
}

- (void)statusChange:(id)change catalogAnomaly:(int64_t)anomaly forReason:(id)reason
{
  reasonCopy = reason;
  changeCopy = change;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(MADAutoAssetJob *)self statusChange:changeCopy catalogFailure:anomaly forReason:reasonCopy];
  [(MADAutoAssetJob *)self trackAnomaly:anomaly forReason:reasonCopy];
}

- (void)statusChange:(id)change catalogFailure:(int64_t)failure forReason:(id)reason
{
  reasonCopy = reason;
  changeCopy = change;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  LODWORD(extendedStateQueue) = [(MADAutoAssetJob *)self autoAssetSetJob];
  v12 = [NSString alloc];
  if (extendedStateQueue)
  {
    changeCopy = [v12 initWithFormat:@"AUTO-SET-JOB(%@)", changeCopy];

    notifications = [MAAutoAssetError buildError:failure fromOperation:changeCopy underlyingError:0 withDescription:reasonCopy];

    currentSetStatus = [(MADAutoAssetJob *)self currentSetStatus];
    [currentSetStatus setNewerVersionError:notifications];
  }

  else
  {
    changeCopy2 = [v12 initWithFormat:@"AUTO-JOB(%@)", changeCopy];

    v16 = [MAAutoAssetError buildError:failure fromOperation:changeCopy2 underlyingError:0 withDescription:reasonCopy];

    currentStatus = [(MADAutoAssetJob *)self currentStatus];
    [currentStatus setNewerVersionError:v16];

    changeCopy = [(MADAutoAssetJob *)self currentStatus];
    notifications = [changeCopy notifications];
    [notifications setCheckForNewerFailure:1];
  }
}

- (void)statusChangeCatalogFoundNewer:(id)newer
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {

    [(MADAutoAssetJob *)self statusChange:@"statusChangeCatalogFoundNewer" catalogAnomaly:6103 forReason:@"statusChangeCatalogFoundNewer should never execute for set-job"];
  }

  else
  {
    resultSelector = [(MADAutoAssetJob *)self resultSelector];
    currentStatus = [(MADAutoAssetJob *)self currentStatus];
    [currentStatus setAssetSelector:resultSelector];

    newerFoundAssetDescriptor = [(MADAutoAssetJob *)self newerFoundAssetDescriptor];
    metadata = [newerFoundAssetDescriptor metadata];
    currentStatus2 = [(MADAutoAssetJob *)self currentStatus];
    [currentStatus2 setNewerVersionAttributes:metadata];

    currentStatus3 = [(MADAutoAssetJob *)self currentStatus];
    notifications = [currentStatus3 notifications];
    [notifications setNewerVersionDiscovered:1];
  }
}

- (void)statusChangeSetCatalogFoundNewer:(id)newer
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {

    [(MADAutoAssetJob *)self statusChange:@"statusChangeCatalogFoundNewer" catalogAnomaly:6103 forReason:@"statusChangeCatalogFoundNewer should only execute for set-job"];
  }
}

- (void)statusChangeCatalogFoundSame:(id)same
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {

    [(MADAutoAssetJob *)self statusChange:@"statusChangeCatalogFoundSame" catalogAnomaly:6103 forReason:@"statusChangeCatalogFoundSame should never execute for set-job"];
  }

  else
  {
    resultSelector = [(MADAutoAssetJob *)self resultSelector];
    currentStatus = [(MADAutoAssetJob *)self currentStatus];
    [currentStatus setAssetSelector:resultSelector];

    currentStatus2 = [(MADAutoAssetJob *)self currentStatus];
    notifications = [currentStatus2 notifications];
    [notifications setContentAvailableForUse:1];

    resultFound = [(MADAutoAssetJob *)self resultFound];
    assetAttributes = [resultFound assetAttributes];
    currentStatus3 = [(MADAutoAssetJob *)self currentStatus];
    [currentStatus3 setAvailableForUseAttributes:assetAttributes];
  }
}

- (void)statusChangeStartingAssetDownload:(id)download downloadingPatch:(BOOL)patch
{
  patchCopy = patch;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    [(MADAutoAssetJob *)self latchWhetherDownloadingUserInitiated];
    currentSetStatus = [(MADAutoAssetJob *)self currentSetStatus];
    currentNotifications = [currentSetStatus currentNotifications];
    [currentNotifications setDownloadPending:1];

    currentSetStatus2 = [(MADAutoAssetJob *)self currentSetStatus];
    currentNotifications2 = [currentSetStatus2 currentNotifications];
  }

  else
  {
    if (patchCopy)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    [(MADAutoAssetJob *)self setProgressReportPhase:v12];
    v13 = objc_alloc_init(MAAutoAssetProgress);
    currentStatus = [(MADAutoAssetJob *)self currentStatus];
    [currentStatus setDownloadProgress:v13];

    [(MADAutoAssetJob *)self latchWhetherDownloadingUserInitiated];
    v15 = objc_alloc_init(MAAutoAssetProgress);
    currentStatus2 = [(MADAutoAssetJob *)self currentStatus];
    [currentStatus2 setDownloadProgress:v15];

    currentStatus3 = [(MADAutoAssetJob *)self currentStatus];
    notifications = [currentStatus3 notifications];
    [notifications setDownloadPending:1];

    currentSetStatus2 = [(MADAutoAssetJob *)self currentStatus];
    currentNotifications2 = [currentSetStatus2 notifications];
  }

  v19 = currentNotifications2;
  [currentNotifications2 setDownloadProgress:1];

  [(MADAutoAssetJob *)self statusChangeReportCurrent:0];
}

- (void)statusChangeDownloadProgress:(id)progress
{
  progressCopy = progress;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (!progressCopy)
  {
    v8 = [NSString alloc];
    progressReportPhaseName = [(MADAutoAssetJob *)self progressReportPhaseName];
    v10 = [v8 initWithFormat:@"{statusChangeDownloadProgress} no download progress provided | phase:%@ | no progress change", progressReportPhaseName];
    [(MADAutoAssetJob *)self trackAnomaly:6102 forReason:v10];

    goto LABEL_22;
  }

  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {
    progressReportPhase = [(MADAutoAssetJob *)self progressReportPhase];
    if (progressReportPhase <= 1)
    {
      if (progressReportPhase)
      {
        if (progressReportPhase != 1)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      v15 = [NSString alloc];
      progressReportPhaseName2 = [(MADAutoAssetJob *)self progressReportPhaseName];
      summary = [progressCopy summary];
      v18 = [v15 initWithFormat:@"{statusChangeDownloadProgress} download progress provided when not downloading | phase:%@ | ignored progress:%@", progressReportPhaseName2, summary];
      [(MADAutoAssetJob *)self trackAnomaly:6108 forReason:v18];

      goto LABEL_20;
    }

    if (progressReportPhase == 2)
    {
      currentStatus = [(MADAutoAssetJob *)self currentStatus];
      [currentStatus setDownloadProgress:progressCopy];

      [(MADAutoAssetJob *)self setLastReportedPatchProgress:progressCopy];
      goto LABEL_20;
    }

    if (progressReportPhase != 3)
    {
LABEL_20:
      currentStatus2 = [(MADAutoAssetJob *)self currentStatus];
      notifications = [currentStatus2 notifications];
      goto LABEL_21;
    }

    lastReportedPatchProgress = [(MADAutoAssetJob *)self lastReportedPatchProgress];

    if (lastReportedPatchProgress)
    {
      totalExpectedBytes = [progressCopy totalExpectedBytes];
      lastReportedPatchProgress2 = [(MADAutoAssetJob *)self lastReportedPatchProgress];
      if (totalExpectedBytes < [lastReportedPatchProgress2 totalExpectedBytes])
      {

LABEL_17:
        isStalled = [progressCopy isStalled];
        currentStatus3 = [(MADAutoAssetJob *)self currentStatus];
        downloadProgress = [currentStatus3 downloadProgress];
        [downloadProgress setIsStalled:isStalled];

        [progressCopy expectedTimeRemainingSecs];
        v27 = v26;
        currentStatus4 = [(MADAutoAssetJob *)self currentStatus];
        downloadProgress2 = [currentStatus4 downloadProgress];
        [downloadProgress2 setExpectedTimeRemainingSecs:v27];

LABEL_19:
        goto LABEL_20;
      }

      totalWrittenBytes = [progressCopy totalWrittenBytes];
      lastReportedPatchProgress3 = [(MADAutoAssetJob *)self lastReportedPatchProgress];
      totalWrittenBytes2 = [lastReportedPatchProgress3 totalWrittenBytes];

      if (totalWrittenBytes < totalWrittenBytes2)
      {
        goto LABEL_17;
      }
    }

LABEL_18:
    currentStatus4 = [(MADAutoAssetJob *)self currentStatus];
    [currentStatus4 setDownloadProgress:progressCopy];
    goto LABEL_19;
  }

  [(MADAutoAssetJob *)self setProgressAssetDownload:progressCopy];
  currentStatus2 = [(MADAutoAssetJob *)self currentSetStatus];
  notifications = [currentStatus2 currentNotifications];
LABEL_21:
  v30 = notifications;
  [notifications setDownloadProgress:1];

  [(MADAutoAssetJob *)self statusChangeReportCurrent:0];
  [(MADAutoAssetJob *)self _statusChangeDownloadProgressDecideLog:progressCopy];
LABEL_22:
}

- (void)_statusChangeDownloadProgressDecideLog:(id)log
{
  logCopy = log;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(MADAutoAssetJob *)self progressLogsFilteredCount]<= 0)
  {
    v9 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      autoAssetUUID = [(MADAutoAssetJob *)self autoAssetUUID];
      summary = [logCopy summary];
      v12 = 138543618;
      v13 = autoAssetUUID;
      v14 = 2114;
      v15 = summary;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] (progress) [%{public}@]", &v12, 0x16u);
    }

    selfCopy2 = self;
    v8 = 1;
    goto LABEL_7;
  }

  [(MADAutoAssetJob *)self setProgressLogsFilteredCount:[(MADAutoAssetJob *)self progressLogsFilteredCount]+ 1];
  if ([(MADAutoAssetJob *)self progressLogsFilteredCount]>= 10)
  {
    selfCopy2 = self;
    v8 = 0;
LABEL_7:
    [(MADAutoAssetJob *)selfCopy2 setProgressLogsFilteredCount:v8];
  }
}

- (void)statusChangeSuccesfullyPatched:(id)patched
{
  patchedCopy = patched;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  baseForPatch = [(MADAutoAssetJob *)self baseForPatch];

  if (baseForPatch)
  {
    if ([(MADAutoAssetJob *)self autoAssetSetJob])
    {
      goto LABEL_6;
    }

    v7 = [MAAutoAssetSelector alloc];
    baseForPatch2 = [(MADAutoAssetJob *)self baseForPatch];
    assetType = [baseForPatch2 assetType];
    baseForPatch3 = [(MADAutoAssetJob *)self baseForPatch];
    assetSpecifier = [baseForPatch3 assetSpecifier];
    baseForPatch4 = [(MADAutoAssetJob *)self baseForPatch];
    assetVersion = [baseForPatch4 assetVersion];
    progressReportPhaseName = [v7 initForAssetType:assetType withAssetSpecifier:assetSpecifier matchingAssetVersion:assetVersion];

    [(MADAutoAssetJob *)self statusChangeSuccessfullyDownloaded:patchedCopy];
    currentStatus = [(MADAutoAssetJob *)self currentStatus];
    [currentStatus setPatchedFromBaseSelector:progressReportPhaseName];

    baseForPatch5 = [(MADAutoAssetJob *)self baseForPatch];
    downloadedFilesystemBytes = [baseForPatch5 downloadedFilesystemBytes];
    currentStatus2 = [(MADAutoAssetJob *)self currentStatus];
    [currentStatus2 setPatchedFromBaseFilesystemBytes:downloadedFilesystemBytes];

    currentStatus3 = [(MADAutoAssetJob *)self currentStatus];
    [currentStatus3 setDownloadedAsPatch:1];
  }

  else
  {
    v20 = [NSString alloc];
    progressReportPhaseName = [(MADAutoAssetJob *)self progressReportPhaseName];
    currentStatus3 = [v20 initWithFormat:@"{%@:statusChangeSuccesfullyPatched} successfully patched yet no baseForPatch | phase:%@ | unable to update currentStatus with patched indications", patchedCopy, progressReportPhaseName];
    [(MADAutoAssetJob *)self trackAnomaly:6111 forReason:currentStatus3];
  }

LABEL_6:
}

- (void)statusChangeSuccessfullyDownloaded:(id)downloaded
{
  downloadedCopy = downloaded;
  downloadingAssetDescriptor = [(MADAutoAssetJob *)self downloadingAssetDescriptor];

  if (downloadingAssetDescriptor)
  {
    if ([(MADAutoAssetJob *)self autoAssetSetJob])
    {
      [(MADAutoAssetJob *)self statusChange:@"statusChangeSuccessfullyDownloaded" catalogAnomaly:6103 forReason:@"statusChangeSuccessfullyDownloaded should never execute for set-job"];
    }

    else
    {
      currentStatus = [(MADAutoAssetJob *)self currentStatus];
      downloadProgress = [currentStatus downloadProgress];
      totalWrittenBytes = [downloadProgress totalWrittenBytes];

      downloadingAssetDescriptor2 = [(MADAutoAssetJob *)self downloadingAssetDescriptor];
      metadata = [downloadingAssetDescriptor2 metadata];
      v13 = [metadata safeIntegerForKey:@"_UnarchivedSize"];

      if (v13 <= 0)
      {
        v14 = [NSString alloc];
        progressReportPhaseName = [(MADAutoAssetJob *)self progressReportPhaseName];
        v16 = [v14 initWithFormat:@"{%@:statusChangeSuccessfullyDownloaded} downloadingAssetDescriptor metadata indicated invalid unarchivedSize:%ld | phase:%@", downloadedCopy, v13, progressReportPhaseName];
        [(MADAutoAssetJob *)self trackAnomaly:6108 forReason:v16];

        v13 = totalWrittenBytes;
      }

      currentStatus2 = [(MADAutoAssetJob *)self currentStatus];
      [currentStatus2 setDownloadedFilesystemBytes:v13];

      currentStatus3 = [(MADAutoAssetJob *)self currentStatus];
      downloadProgress2 = [currentStatus3 downloadProgress];
      totalWrittenBytes2 = [downloadProgress2 totalWrittenBytes];
      currentStatus4 = [(MADAutoAssetJob *)self currentStatus];
      [currentStatus4 setDownloadedNetworkBytes:totalWrittenBytes2];

      currentStatus5 = [(MADAutoAssetJob *)self currentStatus];
      downloadedNetworkBytes = [currentStatus5 downloadedNetworkBytes];

      if (downloadedNetworkBytes <= 0)
      {
        currentStatus6 = [(MADAutoAssetJob *)self currentStatus];
        downloadedFilesystemBytes = [currentStatus6 downloadedFilesystemBytes];
        currentStatus7 = [(MADAutoAssetJob *)self currentStatus];
        [currentStatus7 setDownloadedNetworkBytes:downloadedFilesystemBytes];
      }

      currentStatus8 = [(MADAutoAssetJob *)self currentStatus];
      [currentStatus8 setAvailableForUseError:0];
    }
  }

  else
  {
    v5 = [NSString alloc];
    progressReportPhaseName2 = [(MADAutoAssetJob *)self progressReportPhaseName];
    v7 = [v5 initWithFormat:@"{%@:statusChangeSuccessfullyDownloaded} successfully downloaded yet no downloadingAssetDescriptor | phase:%@ | unable to update currentStatus with downloaded indications", downloadedCopy, progressReportPhaseName2];
    [(MADAutoAssetJob *)self trackAnomaly:6111 forReason:v7];
  }
}

- (void)statusChangeJobFinished:(id)finished withResponseError:(id)error
{
  errorCopy = error;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {
    currentStatus = [(MADAutoAssetJob *)self currentStatus];
    notifications = [currentStatus notifications];
    [notifications setDownloadPending:0];

    progressReportPhase = [(MADAutoAssetJob *)self progressReportPhase];
    v10 = progressReportPhase;
    v11 = errorCopy;
    if (errorCopy)
    {
      currentStatus2 = [(MADAutoAssetJob *)self currentStatus];
      v13 = currentStatus2;
      if (v10)
      {
        [currentStatus2 setDownloadProgress:0];

        currentStatus3 = [(MADAutoAssetJob *)self currentStatus];
        [currentStatus3 setAvailableForUseError:errorCopy];

        currentStatus4 = [(MADAutoAssetJob *)self currentStatus];
        notifications2 = [currentStatus4 notifications];
        [notifications2 setContentAvailableForUse:0];
      }

      else
      {
        [currentStatus2 setNewerVersionError:errorCopy];

        currentStatus4 = [(MADAutoAssetJob *)self currentStatus];
        notifications2 = [currentStatus4 notifications];
        [notifications2 setCheckForNewerFailure:1];
      }
    }

    else
    {
      if (!progressReportPhase)
      {
LABEL_11:
        [(MADAutoAssetJob *)self statusChangeReportCurrent:v11];
        goto LABEL_12;
      }

      currentStatus5 = [(MADAutoAssetJob *)self currentStatus];
      downloadProgress = [currentStatus5 downloadProgress];
      currentStatus4 = [downloadProgress copy];

      totalExpectedBytes = [currentStatus4 totalExpectedBytes];
      if (totalExpectedBytes != [currentStatus4 totalWrittenBytes])
      {
        [currentStatus4 setTotalExpectedBytes:{objc_msgSend(currentStatus4, "totalWrittenBytes")}];
      }

      [currentStatus4 setIsStalled:0];
      [currentStatus4 setExpectedTimeRemainingSecs:0.0];
      currentStatus6 = [(MADAutoAssetJob *)self currentStatus];
      [currentStatus6 setDownloadProgress:currentStatus4];

      notifications2 = [(MADAutoAssetJob *)self currentStatus];
      v16Notifications = [notifications2 notifications];
      [v16Notifications setContentAvailableForUse:1];
    }

    v11 = errorCopy;
    goto LABEL_11;
  }

LABEL_12:
}

- (void)statusChangeReportCurrent:(id)current
{
  currentCopy = current;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(MADAutoAssetJob *)self stagerJob])
  {
    v39 = currentCopy;
    v7 = [(MADAutoAssetJob *)self currentJobInformation:&v39];
    v8 = v39;

    [(MADAutoAssetJob *)self stagerJobReportProgress:v7 reportingError:v8];
    goto LABEL_19;
  }

  v32 = currentCopy;
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
        clientRequest = [v13 clientRequest];

        if (!clientRequest)
        {
          goto LABEL_13;
        }

        clientRequest2 = [v13 clientRequest];
        [v7 addObject:clientRequest2];
      }

      else
      {
        clientRequest2 = [(MADAutoAssetJob *)self autoJobFSM];
        [clientRequest2 diag];
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
    autoAssetSetIdentifier = [(MADAutoAssetJob *)self autoAssetSetIdentifier];
    autoAssetUUID = [(MADAutoAssetJob *)self autoAssetUUID];
    selfCopy = self;
    v26 = autoAssetUUID;
    setJobInformation = [(MADAutoAssetJob *)selfCopy setJobInformation];
    v28 = [setJobInformation copy];
    v8 = v32;
    [MADAutoAssetControlManager autoSetJobIssueProgress:v7 forAssetSetIdentifier:autoAssetSetIdentifier withAutoAssetUUID:v26 withSetJobInformation:v28 withResponseError:v32];
  }

  else
  {
    autoAssetSetIdentifier = [(MADAutoAssetJob *)self mostSpecificSelectorToReport];
    autoAssetUUID2 = [(MADAutoAssetJob *)self autoAssetUUID];
    selfCopy2 = self;
    v26 = autoAssetUUID2;
    v34 = v32;
    setJobInformation = [(MADAutoAssetJob *)selfCopy2 currentJobInformation:&v34];
    v31 = v34;

    [MADAutoAssetControlManager autoAssetJobIssueProgress:v7 forAutoAssetSelector:autoAssetSetIdentifier withAutoAssetUUID:v26 withJobInformation:setJobInformation withResponseError:v31];
    v8 = v31;
  }

LABEL_19:
}

- (void)latchWhetherDownloadingUserInitiated
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (![(MADAutoAssetJob *)self downloadingUserInitiated])
  {
    if (-[MADAutoAssetJob configuredToUserInitiated](self, "configuredToUserInitiated") || (-[MADAutoAssetJob aggregatedClientAssetPolicy](self, "aggregatedClientAssetPolicy"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 userInitiated], v5, v6))
    {
      [(MADAutoAssetJob *)self _updateUserInitiatedFields];
      v7 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        autoJobName = [(MADAutoAssetJob *)self autoJobName];
        v9 = 138543362;
        v10 = autoJobName;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ | {latchWhetherDownloadingUserInitiated} now user-initiated for remainder of job lifecycle", &v9, 0xCu);
      }
    }
  }
}

- (id)progressReportPhaseName
{
  progressReportPhase = [(MADAutoAssetJob *)self progressReportPhase];
  if (progressReportPhase > 3)
  {
    return @"UNKNOWN";
  }

  else
  {
    return *(&off_4B4D58 + progressReportPhase);
  }
}

- (void)simulateSet:(id)set
{
  setCopy = set;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  controlInformation = [setCopy controlInformation];

  if (!controlInformation)
  {
    goto LABEL_13;
  }

  controlInformation2 = [setCopy controlInformation];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_10:
    v15 = _MADLog(@"AutoJob");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      autoJobName = [(MADAutoAssetJob *)self autoJobName];
      _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
      v37 = 138543618;
      v38 = autoJobName;
      v39 = 2114;
      v40 = _updateLatestSummary;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%{public}@ {simulateSet} | SIMULATE_SET | older MAAutoAsset framework without support for simulateOperation,simulateEnd\nJOB-SUMMARY:%{public}@", &v37, 0x16u);
    }

    goto LABEL_12;
  }

  controlInformation3 = [setCopy controlInformation];
  v10 = objc_opt_respondsToSelector();

  if ((v10 & 1) == 0)
  {
    goto LABEL_10;
  }

  controlInformation4 = [setCopy controlInformation];
  simulateOperation = [controlInformation4 simulateOperation];

  if (simulateOperation != &dword_8 + 3)
  {
    simulateOperation2 = [(MADAutoAssetJob *)self simulateOperation];
    controlInformation5 = [setCopy controlInformation];
    if (simulateOperation2 == [controlInformation5 simulateOperation])
    {
      simulateEnd = [(MADAutoAssetJob *)self simulateEnd];
      controlInformation6 = [setCopy controlInformation];
      simulateEnd2 = [controlInformation6 simulateEnd];

      if (simulateEnd == simulateEnd2)
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
        autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
        controlInformation7 = [setCopy controlInformation];
        v28 = +[MANAutoAssetInfoControl nameOfSimulateOperation:](MANAutoAssetInfoControl, "nameOfSimulateOperation:", [controlInformation7 simulateOperation]);
        v29 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MADAutoAssetJob *)self simulateOperation]];
        v30 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
        _updateLatestSummary2 = [(MADAutoAssetJob *)self _updateLatestSummary];
        v37 = 138544386;
        v38 = autoJobName2;
        v39 = 2114;
        v40 = v28;
        v41 = 2114;
        v42 = v29;
        v43 = 2114;
        v44 = v30;
        v45 = 2114;
        v46 = _updateLatestSummary2;
        v32 = "%{public}@ {simulateSet} | unable to set new simulate operation(%{public}@) [already have operation] | simulateOperation:%{public}@, simulateEnd:%{public}@\nJOB-SUMMARY:%{public}@";
LABEL_23:
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, v32, &v37, 0x34u);

LABEL_26:
      }
    }

    else
    {
      controlInformation8 = [setCopy controlInformation];
      -[MADAutoAssetJob setSimulateOperation:](self, "setSimulateOperation:", [controlInformation8 simulateOperation]);

      controlInformation9 = [setCopy controlInformation];
      -[MADAutoAssetJob setSimulateEnd:](self, "setSimulateEnd:", [controlInformation9 simulateEnd]);

      [(MADAutoAssetJob *)self setSimulateTriggered:0];
      [(MADAutoAssetJob *)self setSimulateDescriptor:0];
      [(MADAutoAssetJob *)self setSimulateBaseForPatch:0];
      v15 = _MADLog(@"AutoJob");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        autoJobName3 = [(MADAutoAssetJob *)self autoJobName];
        v28 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MADAutoAssetJob *)self simulateOperation]];
        v36 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
        v37 = 138543874;
        v38 = autoJobName3;
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

  simulateTriggered = [(MADAutoAssetJob *)self simulateTriggered];
  v14 = _MADLog(@"AutoJob");
  v15 = v14;
  if (!simulateTriggered)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
      controlInformation7 = [setCopy controlInformation];
      v28 = +[MANAutoAssetInfoControl nameOfSimulateOperation:](MANAutoAssetInfoControl, "nameOfSimulateOperation:", [controlInformation7 simulateOperation]);
      v29 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MADAutoAssetJob *)self simulateOperation]];
      v30 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
      _updateLatestSummary2 = [(MADAutoAssetJob *)self _updateLatestSummary];
      v37 = 138544386;
      v38 = autoJobName2;
      v39 = 2114;
      v40 = v28;
      v41 = 2114;
      v42 = v29;
      v43 = 2114;
      v44 = v30;
      v45 = 2114;
      v46 = _updateLatestSummary2;
      v32 = "%{public}@ {simulateSet} | unable trigger immediate simulator operation(%{public}@) [- ]not yet triggered] | simulateOperation:%{public}@, simulateEnd:%{public}@\nJOB-SUMMARY:%{public}@";
      goto LABEL_23;
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    autoJobName4 = [(MADAutoAssetJob *)self autoJobName];
    v17 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MADAutoAssetJob *)self simulateOperation]];
    v18 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
    v37 = 138543874;
    v38 = autoJobName4;
    v39 = 2114;
    v40 = v17;
    v41 = 2114;
    v42 = v18;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ {simulateSet} | SIMULATE_IMMEDIATE | simulateOperation:%{public}@, simulateEnd:%{public}@", &v37, 0x20u);
  }

  [(MADAutoAssetJob *)self stagerJobDetermineDone:@"simulateSet" reportingError:0];
LABEL_13:
}

- (void)simulateEnd:(int64_t)end
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(MADAutoAssetJob *)self simulateTriggered]&& [(MADAutoAssetJob *)self simulateEnd]== end)
  {
    [(MADAutoAssetJob *)self setSimulateOperation:0];
    v7 = objc_opt_respondsToSelector();
    simulateTriggered = [(MADAutoAssetJob *)self simulateTriggered];
    if (v7)
    {
      if (simulateTriggered <= 5)
      {
        if (simulateTriggered <= 2)
        {
          if (simulateTriggered)
          {
            if (simulateTriggered == 1)
            {
              [(MADAutoAssetJob *)self requestDownloadManagerCatalogLookup:@"simulateEnd"];
              v11 = _MADLog(@"AutoJob");
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                autoJobName = [(MADAutoAssetJob *)self autoJobName];
                v13 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
                *v40 = 138543618;
                *&v40[4] = autoJobName;
                *&v40[12] = 2114;
                *&v40[14] = v13;
                v14 = "%{public}@ {simulateEnd} | SIMULATE_END(%{public}@) | called registerCatalogDownloadJob";
                goto LABEL_80;
              }

              goto LABEL_82;
            }

            if (simulateTriggered == 2)
            {
              simulateDescriptor = [(MADAutoAssetJob *)self simulateDescriptor];
              simulateBaseForPatch = [(MADAutoAssetJob *)self simulateBaseForPatch];
              [(MADAutoAssetJob *)self requestDownloadManagerAssetDownload:@"simulateEnd" forDescriptor:simulateDescriptor withBaseForPatch:simulateBaseForPatch];

              v11 = _MADLog(@"AutoJob");
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                autoJobName = [(MADAutoAssetJob *)self autoJobName];
                v13 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
                *v40 = 138543618;
                *&v40[4] = autoJobName;
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

          autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
          v13 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
          _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
          *v40 = 138543874;
          *&v40[4] = autoJobName2;
          *&v40[12] = 2114;
          *&v40[14] = v13;
          *&v40[22] = 2114;
          v41 = _updateLatestSummary;
          v32 = "%{public}@ {simulateEnd} | SIMULATE_END(%{public}@) | no simulateOperation to end\nJOB-SUMMARY:%{public}@";
LABEL_52:
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, v32, v40, 0x20u);

LABEL_81:
          goto LABEL_82;
        }

        if (simulateTriggered == 3)
        {
          simulateDescriptor2 = [(MADAutoAssetJob *)self simulateDescriptor];
          [(MADAutoAssetJob *)self requestDownloadManagerConfigDownload:@"simulateEnd" forDescriptor:simulateDescriptor2];

          v11 = _MADLog(@"AutoJob");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            autoJobName = [(MADAutoAssetJob *)self autoJobName];
            v13 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
            *v40 = 138543618;
            *&v40[4] = autoJobName;
            *&v40[12] = 2114;
            *&v40[14] = v13;
            v14 = "%{public}@ {simulateEnd} | SIMULATE_END(%{public}@) | called configAssetDownloadJob";
            goto LABEL_80;
          }

          goto LABEL_82;
        }

        if (simulateTriggered == 4)
        {
          simulateDescriptor3 = [(MADAutoAssetJob *)self simulateDescriptor];
          [(MADAutoAssetJob *)self requestDownloadManagerCancelDownload:@"simulateEnd" forDescriptor:simulateDescriptor3];

          v11 = _MADLog(@"AutoJob");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            autoJobName = [(MADAutoAssetJob *)self autoJobName];
            v13 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
            *v40 = 138543618;
            *&v40[4] = autoJobName;
            *&v40[12] = 2114;
            *&v40[14] = v13;
            v14 = "%{public}@ {simulateEnd} | SIMULATE_END(%{public}@) | called cancelAssetDownloadJob";
            goto LABEL_80;
          }

          goto LABEL_82;
        }

        v11 = [(MADAutoAssetJob *)self simulatedErrorAtPhase:@"simulateEnd" fromOperation:@"FAIL_PATCH_DOWNLOAD" forAssetDownload:0];
        autoAssetUUID = [(MADAutoAssetJob *)self autoAssetUUID];
        [(MADAutoAssetJob *)self handleDownloadAssetJobFinished:autoAssetUUID downloadError:v11];

        autoJobName5 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(autoJobName5, OS_LOG_TYPE_DEFAULT))
        {
          autoJobName3 = [(MADAutoAssetJob *)self autoJobName];
          v25 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
          *v40 = 138543618;
          *&v40[4] = autoJobName3;
          *&v40[12] = 2114;
          *&v40[14] = v25;
          v26 = "%{public}@ {simulateEnd} | SIMULATE_END(%{public}@) | simulated patch download failure";
LABEL_62:
          _os_log_impl(&dword_0, autoJobName5, OS_LOG_TYPE_DEFAULT, v26, v40, 0x16u);

          goto LABEL_75;
        }

        goto LABEL_75;
      }

      if (simulateTriggered <= 8)
      {
        if ((simulateTriggered - 7) >= 2)
        {
          if (simulateTriggered == 6)
          {
            [(MADAutoAssetJob *)self _autoAssetJobFinished:@"simulateEnd" forJobFinishedReason:@"SIMULATED_POSTPONE_ENDED" failingWithError:0];
            v11 = _MADLog(@"AutoJob");
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              autoJobName = [(MADAutoAssetJob *)self autoJobName];
              v13 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
              *v40 = 138543618;
              *&v40[4] = autoJobName;
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

      if (simulateTriggered == 9)
      {
        v11 = [(MADAutoAssetJob *)self simulatedErrorAtPhase:@"simulateEnd" fromOperation:@"FAIL_ASSET_DOWNLOAD" forAssetDownload:1];
        autoAssetUUID2 = [(MADAutoAssetJob *)self autoAssetUUID];
        [(MADAutoAssetJob *)self handleDownloadAssetJobFinished:autoAssetUUID2 downloadError:v11];

        autoJobName5 = _MADLog(@"AutoJob");
        if (os_log_type_enabled(autoJobName5, OS_LOG_TYPE_DEFAULT))
        {
          autoJobName3 = [(MADAutoAssetJob *)self autoJobName];
          v25 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
          *v40 = 138543618;
          *&v40[4] = autoJobName3;
          *&v40[12] = 2114;
          *&v40[14] = v25;
          v26 = "%{public}@ {simulateEnd} | SIMULATE_END(%{public}@) | simulated asset download failure";
          goto LABEL_62;
        }

LABEL_75:

        goto LABEL_82;
      }

      if (simulateTriggered != 10)
      {
        if (simulateTriggered != 11)
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

    if (simulateTriggered > 5)
    {
      if (simulateTriggered <= 8)
      {
        if ((simulateTriggered - 7) < 2)
        {
          v11 = _MADLog(@"AutoJob");
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_82;
          }

LABEL_21:
          autoJobName4 = [(MADAutoAssetJob *)self autoJobName];
          simulateEnd = [(MADAutoAssetJob *)self simulateEnd];
          _updateLatestSummary2 = [(MADAutoAssetJob *)self _updateLatestSummary];
          *v40 = 138543874;
          *&v40[4] = autoJobName4;
          *&v40[12] = 2048;
          *&v40[14] = simulateEnd;
          *&v40[22] = 2114;
          v41 = _updateLatestSummary2;
          v22 = "%{public}@ {simulateEnd} | SIMULATE_END(%lld) | not applicable to auto-job\nJOB-SUMMARY:%{public}@";
          goto LABEL_55;
        }

        if (simulateTriggered != 6)
        {
          goto LABEL_83;
        }

        [(MADAutoAssetJob *)self _autoAssetJobFinished:@"simulateEnd" forJobFinishedReason:@"SIMULATED_POSTPONE_ENDED" failingWithError:0];
        v11 = _MADLog(@"AutoJob");
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_82;
        }

        autoJobName5 = [(MADAutoAssetJob *)self autoJobName];
        *v40 = 138543618;
        *&v40[4] = autoJobName5;
        *&v40[12] = 2048;
        *&v40[14] = [(MADAutoAssetJob *)self simulateEnd];
        v18 = "%{public}@ {simulateEnd} | SIMULATE_END(%lld) | called autoAssetJobFinished";
LABEL_74:
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, v18, v40, 0x16u);
        goto LABEL_75;
      }

      if (simulateTriggered != 9)
      {
        if (simulateTriggered != 10)
        {
          if (simulateTriggered != 11)
          {
            goto LABEL_83;
          }

          v11 = _MADLog(@"AutoJob");
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_82;
          }

LABEL_38:
          autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
          v13 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
          _updateLatestSummary = [(MADAutoAssetJob *)self _updateLatestSummary];
          *v40 = 138543874;
          *&v40[4] = autoJobName2;
          *&v40[12] = 2114;
          *&v40[14] = v13;
          *&v40[22] = 2114;
          v41 = _updateLatestSummary;
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
        autoJobName = [(MADAutoAssetJob *)self autoJobName];
        v13 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MADAutoAssetJob *)self simulateEnd]];
        *v40 = 138543618;
        *&v40[4] = autoJobName;
        *&v40[12] = 2114;
        *&v40[14] = v13;
        v14 = "%{public}@ {simulateEnd} | SIMULATE_END(%{public}@) | called _setCalculateDownloadSpace";
        goto LABEL_80;
      }

      v11 = [(MADAutoAssetJob *)self simulatedErrorAtPhase:@"simulateEnd" fromOperation:@"FAIL_ASSET_DOWNLOAD" forAssetDownload:1];
      autoAssetUUID3 = [(MADAutoAssetJob *)self autoAssetUUID];
      [(MADAutoAssetJob *)self handleDownloadAssetJobFinished:autoAssetUUID3 downloadError:v11];

      autoJobName5 = _MADLog(@"AutoJob");
      if (!os_log_type_enabled(autoJobName5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_75;
      }

      autoJobName6 = [(MADAutoAssetJob *)self autoJobName];
      *v40 = 138543618;
      *&v40[4] = autoJobName6;
      *&v40[12] = 2048;
      *&v40[14] = [(MADAutoAssetJob *)self simulateEnd];
      v29 = "%{public}@ {simulateEnd} | SIMULATE_END(%lld) | simulated asset download failure";
    }

    else
    {
      if (simulateTriggered <= 2)
      {
        switch(simulateTriggered)
        {
          case 0:
            v11 = _MADLog(@"AutoJob");
            if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_82;
            }

            autoJobName4 = [(MADAutoAssetJob *)self autoJobName];
            simulateEnd2 = [(MADAutoAssetJob *)self simulateEnd];
            _updateLatestSummary2 = [(MADAutoAssetJob *)self _updateLatestSummary];
            *v40 = 138543874;
            *&v40[4] = autoJobName4;
            *&v40[12] = 2048;
            *&v40[14] = simulateEnd2;
            *&v40[22] = 2114;
            v41 = _updateLatestSummary2;
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

            autoJobName5 = [(MADAutoAssetJob *)self autoJobName];
            *v40 = 138543618;
            *&v40[4] = autoJobName5;
            *&v40[12] = 2048;
            *&v40[14] = [(MADAutoAssetJob *)self simulateEnd];
            v18 = "%{public}@ {simulateEnd} | SIMULATE_END(%lld) | called registerCatalogDownloadJob";
            break;
          case 2:
            simulateDescriptor4 = [(MADAutoAssetJob *)self simulateDescriptor];
            simulateBaseForPatch2 = [(MADAutoAssetJob *)self simulateBaseForPatch];
            [(MADAutoAssetJob *)self requestDownloadManagerAssetDownload:@"simulateEnd" forDescriptor:simulateDescriptor4 withBaseForPatch:simulateBaseForPatch2];

            v11 = _MADLog(@"AutoJob");
            if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_82;
            }

            autoJobName5 = [(MADAutoAssetJob *)self autoJobName];
            *v40 = 138543618;
            *&v40[4] = autoJobName5;
            *&v40[12] = 2048;
            *&v40[14] = [(MADAutoAssetJob *)self simulateEnd];
            v18 = "%{public}@ {simulateEnd} | SIMULATE_END(%lld) | called registerAssetDownloadJob";
            break;
          default:
            goto LABEL_83;
        }

        goto LABEL_74;
      }

      if (simulateTriggered == 3)
      {
        simulateDescriptor5 = [(MADAutoAssetJob *)self simulateDescriptor];
        [(MADAutoAssetJob *)self requestDownloadManagerConfigDownload:@"simulateEnd" forDescriptor:simulateDescriptor5];

        v11 = _MADLog(@"AutoJob");
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_82;
        }

        autoJobName5 = [(MADAutoAssetJob *)self autoJobName];
        *v40 = 138543618;
        *&v40[4] = autoJobName5;
        *&v40[12] = 2048;
        *&v40[14] = [(MADAutoAssetJob *)self simulateEnd];
        v18 = "%{public}@ {simulateEnd} | SIMULATE_END(%lld) | called configAssetDownloadJob";
        goto LABEL_74;
      }

      if (simulateTriggered == 4)
      {
        simulateDescriptor6 = [(MADAutoAssetJob *)self simulateDescriptor];
        [(MADAutoAssetJob *)self requestDownloadManagerCancelDownload:@"simulateEnd" forDescriptor:simulateDescriptor6];

        v11 = _MADLog(@"AutoJob");
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_82;
        }

        autoJobName5 = [(MADAutoAssetJob *)self autoJobName];
        *v40 = 138543618;
        *&v40[4] = autoJobName5;
        *&v40[12] = 2048;
        *&v40[14] = [(MADAutoAssetJob *)self simulateEnd];
        v18 = "%{public}@ {simulateEnd} | SIMULATE_END(%lld) | called cancelAssetDownloadJob";
        goto LABEL_74;
      }

      v11 = [(MADAutoAssetJob *)self simulatedErrorAtPhase:@"simulateEnd" fromOperation:@"FAIL_PATCH_DOWNLOAD" forAssetDownload:0];
      autoAssetUUID4 = [(MADAutoAssetJob *)self autoAssetUUID];
      [(MADAutoAssetJob *)self handleDownloadAssetJobFinished:autoAssetUUID4 downloadError:v11];

      autoJobName5 = _MADLog(@"AutoJob");
      if (!os_log_type_enabled(autoJobName5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_75;
      }

      autoJobName6 = [(MADAutoAssetJob *)self autoJobName];
      *v40 = 138543618;
      *&v40[4] = autoJobName6;
      *&v40[12] = 2048;
      *&v40[14] = [(MADAutoAssetJob *)self simulateEnd];
      v29 = "%{public}@ {simulateEnd} | SIMULATE_END(%lld) | simulated patch download failure";
    }

    _os_log_impl(&dword_0, autoJobName5, OS_LOG_TYPE_DEFAULT, v29, v40, 0x16u);

    goto LABEL_75;
  }
}

- (id)simulatedErrorAtPhase:(id)phase fromOperation:(id)operation forAssetDownload:(BOOL)download
{
  downloadCopy = download;
  phaseCopy = phase;
  operationCopy = operation;
  if (downloadCopy)
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
    operationCopy = [NSString stringWithFormat:@"end of asset download with simulated error: %@(%ld)", v11, v10];

    v18 = MAErrorForDownloadResultWithUnderlying(v10, 0, @"%@", v13, v14, v15, v16, v17, operationCopy);
  }

  else
  {
    operationCopy = [[NSString alloc] initWithFormat:@"end of simulate operation[%@]", operationCopy];
    v18 = [MAAutoAssetError buildError:6115 fromOperation:phaseCopy underlyingError:0 withDescription:operationCopy];
  }

  v19 = v18;

  return v19;
}

- (void)determineWhetherNetworkConnectivityError:(id)error
{
  errorCopy = error;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (errorCopy)
  {
    domain = [errorCopy domain];
    if (([SUCore stringIsEqual:domain to:@"com.apple.MobileAssetError.AutoAsset"]& 1) != 0)
    {
      code = [errorCopy code];

      if (code == "rk/SoftwareUpdateCoreSupport")
      {
        userInfo = [errorCopy userInfo];
        v10 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

        if (v10)
        {
          domain2 = [v10 domain];
          v12 = [SUCore stringIsEqual:domain2 to:@"com.apple.MobileAssetError.Download"];

          if (v12)
          {
            code2 = [v10 code];
            if ((isDownloadResultSuggestingCheckTimeoutConditions(code2) & 1) != 0 || (isDownloadResultSuggestingCheckNetwork(code2) & 1) != 0 || isDownloadResultSuggestingCheckClockAndCerts(code2))
            {
              LOBYTE(v14) = 1;
              goto LABEL_21;
            }

            if (!isDownloadResultSuggestingCheckConfiguration(code2))
            {
              LOBYTE(v14) = code2 == &stru_20.segname[7] || code2 == &dword_10;
LABEL_21:
              [(MADAutoAssetJob *)self setPotentialNetworkFailure:v14 & 1];
              potentialNetworkFailure = [(MADAutoAssetJob *)self potentialNetworkFailure];
              v17 = _MADLog(@"AutoJob");
              v19 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
              if (potentialNetworkFailure)
              {
                if (v19)
                {
                  autoJobName = [(MADAutoAssetJob *)self autoJobName];
                  v21 = [MADAutoAssetClientRequest responseErrorSummary:v10];
                  v24 = 138543618;
                  v25 = autoJobName;
                  v26 = 2114;
                  v27 = v21;
                  v22 = "%{public}@ | {determineWhetherNetworkConnectivityError} potential network failure | underlyingError:%{public}@";
LABEL_26:
                  _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, v22, &v24, 0x16u);
                }
              }

              else if (v19)
              {
                autoJobName = [(MADAutoAssetJob *)self autoJobName];
                v21 = [MADAutoAssetClientRequest responseErrorSummary:v10];
                v24 = 138543618;
                v25 = autoJobName;
                v26 = 2114;
                v27 = v21;
                v22 = "%{public}@ | {determineWhetherNetworkConnectivityError} non-networking failure | underlyingError:%{public}@";
                goto LABEL_26;
              }

LABEL_15:

              goto LABEL_16;
            }

            if (code2 - 59 < 8)
            {
              v14 = 0x91u >> (code2 - 59);
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
      autoJobName2 = [(MADAutoAssetJob *)self autoJobName];
      v17 = [MADAutoAssetClientRequest responseErrorSummary:errorCopy];
      v24 = 138543618;
      v25 = autoJobName2;
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
      autoJobName3 = [(MADAutoAssetJob *)self autoJobName];
      v24 = 138543362;
      v25 = autoJobName3;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ | {determineWhetherNetworkConnectivityError} job completed successfully", &v24, 0xCu);
    }
  }

LABEL_16:
}

- (void)reportIfSetPallasResponseReceived:(id)received
{
  receivedCopy = received;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(MADAutoAssetJob *)self autoAssetSetJob])
  {
    if (![(MADAutoAssetJob *)self stagerJob])
    {
      domain = [receivedCopy domain];
      v7 = [SUCore stringIsEqual:domain to:@"com.apple.MobileAssetError.AutoAsset"];

      if (v7)
      {
        if ([receivedCopy code] == "eUpdateCoreConnect.framework/SoftwareUpdateCoreConnect" || objc_msgSend(receivedCopy, "code") == "UpdateCoreConnect.framework/SoftwareUpdateCoreConnect" || objc_msgSend(receivedCopy, "code") == "pdateCoreConnect.framework/SoftwareUpdateCoreConnect" || objc_msgSend(receivedCopy, "code") == "ateCoreConnect.framework/SoftwareUpdateCoreConnect" || objc_msgSend(receivedCopy, "code") == "oreConnect.framework/SoftwareUpdateCoreConnect" || objc_msgSend(receivedCopy, "code") == "reConnect.framework/SoftwareUpdateCoreConnect")
        {
LABEL_10:
          setConfiguration = [(MADAutoAssetJob *)self setConfiguration];

          if (setConfiguration)
          {
            [(MADAutoAssetJob *)self setHaveReceivedLookupResponse:1];
            setConfiguration2 = [(MADAutoAssetJob *)self setConfiguration];
            assignedSetDescriptor = [(MADAutoAssetJob *)self assignedSetDescriptor];
            [MADAutoAssetControlManager autoAssetJobSetLookupResponseReceived:setConfiguration2 forAssignedSetDescriptor:assignedSetDescriptor withCatalogLookupResponse:0];
          }

          else
          {
            [(MADAutoAssetJob *)self statusChange:@"reportIfSetPallasResponseReceived" catalogAnomaly:6102 forReason:@"set-job without set-configuration"];
          }

          goto LABEL_13;
        }

        domain2 = [receivedCopy domain];
        if ([SUCore stringIsEqual:domain2 to:@"com.apple.MobileAssetError.AutoAsset"])
        {
          code = [receivedCopy code];

          if (code != "rk/SoftwareUpdateCoreSupport")
          {
            goto LABEL_13;
          }

          domain2 = [receivedCopy userInfo];
          v13 = [domain2 safeObjectForKey:NSUnderlyingErrorKey ofClass:objc_opt_class()];
          domain3 = [v13 domain];
          if ([SUCore stringIsEqual:domain3 to:@"com.apple.MobileAssetError.Download"])
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
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  latestInstalledAssetVersion = [(MADAutoAssetJob *)self latestInstalledAssetVersion];

  if (!latestInstalledAssetVersion)
  {
    return 6201;
  }

  autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
  assetVersion = [autoAssetSelector assetVersion];

  if (assetVersion)
  {
    return 6201;
  }

  if ([(MADAutoAssetJob *)self tryPersonalizeFailed])
  {
    return 6535;
  }

  return 6205;
}

- (void)trackAnomaly:(int64_t)anomaly forReason:(id)reason
{
  reasonCopy = reason;
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  diag = [autoJobFSM diag];
  [diag trackAnomaly:@"AUTO-JOB" forReason:reasonCopy withResult:anomaly withError:0];
}

- (id)currentJobInformation:(id *)information
{
  autoJobFSM = [(MADAutoAssetJob *)self autoJobFSM];
  extendedStateQueue = [autoJobFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (![(MADAutoAssetJob *)self autoAssetSetJob])
  {
    stagerJob = [(MADAutoAssetJob *)self stagerJob];
    v11 = [MADAutoAssetJobInformation alloc];
    autoAssetSelector = [(MADAutoAssetJob *)self autoAssetSelector];
    v13 = autoAssetSelector;
    if (stagerJob)
    {
      v9 = [(MADAutoAssetJobInformation *)v11 initForAssetSelector:autoAssetSelector];

      if (v9)
      {
        mostSpecificSelectorToReport = [(MADAutoAssetJob *)self mostSpecificSelectorToReport];
        [v9 setFullAssetSelector:mostSpecificSelectorToReport];

        fullAssetSelector = [v9 fullAssetSelector];
        currentStatus = [(MADAutoAssetJob *)self currentStatus];
        [currentStatus setAssetSelector:fullAssetSelector];

LABEL_22:
        resultFound = [(MADAutoAssetJob *)self resultFound];
        if (resultFound)
        {
          [(MADAutoAssetJob *)self resultFound];
        }

        else
        {
          [(MADAutoAssetJob *)self activeFound];
        }
        v26 = ;
        [v9 setFoundContent:v26];

        currentStatus2 = [(MADAutoAssetJob *)self currentStatus];
        [v9 setCurrentStatus:currentStatus2];

        goto LABEL_26;
      }

      if (!information || *information)
      {
        goto LABEL_4;
      }

      v22 = @"unable to provide job-information for intended successful stager-job";
    }

    else
    {
      copyClearingWriteOnlyFields = [autoAssetSelector copyClearingWriteOnlyFields];
      v9 = [(MADAutoAssetJobInformation *)v11 initForAssetSelector:copyClearingWriteOnlyFields];

      if (v9)
      {
        mostSpecificSelectorToReport2 = [(MADAutoAssetJob *)self mostSpecificSelectorToReport];
        [v9 setFullAssetSelector:mostSpecificSelectorToReport2];

        fullAssetSelector2 = [v9 fullAssetSelector];
        currentStatus3 = [(MADAutoAssetJob *)self currentStatus];
        [currentStatus3 setAssetSelector:fullAssetSelector2];

        resultInstance = [(MADAutoAssetJob *)self resultInstance];
        if (resultInstance)
        {
          [(MADAutoAssetJob *)self resultInstance];
        }

        else
        {
          [(MADAutoAssetJob *)self activeInstance];
        }
        v24 = ;
        [v9 setClientInstance:v24];

        fullAssetSelector = [(MADAutoAssetJob *)self activeDesire];
        [v9 setClientDesire:fullAssetSelector];
        goto LABEL_22;
      }

      if (!information || *information)
      {
        goto LABEL_4;
      }

      v22 = @"unable to provide job-information for intended successful reply";
    }

    v23 = 6101;
    goto LABEL_19;
  }

  autoJobFSM2 = [(MADAutoAssetJob *)self autoJobFSM];
  diag = [autoJobFSM2 diag];
  [diag trackAnomaly:@"AUTO-JOB:INFO" forReason:@"currentJobInformation should never be used for set-job" withResult:6103 withError:0];

  if (!information || *information)
  {
LABEL_4:
    v9 = 0;
    goto LABEL_26;
  }

  v22 = @"currentJobInformation should never be used for set-job";
  v23 = 6103;
LABEL_19:
  [MAAutoAssetError buildError:v23 fromOperation:@"currentJobInformation" underlyingError:0 withDescription:v22];
  *information = v9 = 0;
LABEL_26:
  [(MADAutoAssetJob *)self setAutoAssetJobInformation:v9];

  return v9;
}

@end