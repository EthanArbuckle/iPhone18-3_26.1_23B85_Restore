@interface MADAutoAssetStager
+ (id)_getAutoAssetStagerStateTable;
+ (id)autoAssetStager;
+ (id)collectOverviewInformation;
+ (id)controlConvertStagedToDownloaded:(id)a3;
+ (id)controlCopyCurrentStagedDescriptors;
+ (int64_t)previousOTASituation;
+ (void)autoAssetStagerJobDetermineDone:(id)a3 withBaseForStagingDescriptors:(id)a4 withDetermineError:(id)a5;
+ (void)autoAssetStagerJobDownloadDone:(id)a3 withDownloadedDescriptor:(id)a4 withDownloadError:(id)a5;
+ (void)autoAssetStagerJobDownloadProgress:(id)a3 withProgressError:(id)a4;
+ (void)autoAssetStagerJobFailedToStart:(id)a3;
+ (void)clientCancelOperation:(id)a3;
+ (void)clientDetermineAllAvailable:(id)a3;
+ (void)clientDetermineGroupsAvailable:(id)a3;
+ (void)clientDownloadAll:(id)a3;
+ (void)clientDownloadGroups:(id)a3 withAlreadyDownloadedDescriptors:(id)a4;
+ (void)clientEraseAll:(id)a3;
+ (void)clientPurgeAll:(id)a3;
+ (void)controlAlreadyDownloadedDescriptors:(id)a3 withSetConfigurations:(id)a4 withSetTargets:(id)a5 withScheduledJobs:(id)a6;
+ (void)controlAlteredSetConfiguration:(id)a3;
+ (void)controlEliminateSelector:(id)a3;
+ (void)controlEliminateSetConfiguration:(id)a3;
+ (void)controlSetTargetsSpecified:(id)a3;
+ (void)controlStatisticsClientRepliesSuccess:(id *)a3 clientRepliesFailure:(id *)a4 totalStaged:(id *)a5 totalUnstaged:(id *)a6 clearingAfter:(BOOL)a7;
+ (void)extendSummaryWithAvailableForStagingAssets:(id)a3;
+ (void)extendSummaryWithDeterminedAssets:(id)a3 basedOnControl:(id)a4;
+ (void)extendSummaryWithStagedAssets:(id)a3 basedOnControl:(id)a4;
+ (void)extendSummaryWithStagingAssets:(id)a3 basedOnControl:(id)a4;
+ (void)finishSuspendedResumeFromPersisted;
+ (void)garbageCollectEliminateSelector:(id)a3;
+ (void)resumeFromPersisted;
+ (void)setPersistedStateCaching:(BOOL)a3;
+ (void)shutdown;
- (BOOL)_doesSelector:(id)a3 matchDescriptor:(id)a4;
- (BOOL)_doesSelectorMatchCurrentJob:(id)a3;
- (BOOL)_formCandidateSetLookupArray:(id)a3 involvingRequired:(BOOL)a4 involvingOptional:(BOOL)a5 providingOptional:(BOOL)a6;
- (BOOL)_isAssetSetEntry:(id)a3 blockedBySetTarget:(id)a4;
- (BOOL)_isAssetTypeInvolvedInStaging:(id)a3;
- (BOOL)_isAssetTypeManagedAsSet:(id)a3;
- (BOOL)_isDescriptorAssetTypeManagedAsSet:(id)a3;
- (BOOL)_isOtherTargetAvailable;
- (BOOL)_isSetConfigurationApplicableToRequired:(id)a3;
- (BOOL)_isSetTargetWithinRange:(id)a3 asCandidate:(BOOL)a4;
- (BOOL)_isStagingClientRequestForActiveTarget:(id)a3 fromLocation:(id)a4;
- (BOOL)_persistPreviousOTASituationIfTargetMatchesCurrentOS:(id)a3 settingStartupSituation:(BOOL)a4;
- (BOOL)_stagedAllDesiredForCurrentTarget;
- (BOOL)doesStagingInvolveOptional;
- (BOOL)doesStagingInvolveRequired;
- (BOOL)isAnyAvailableForStagingByGroup:(id)a3 withAlreadyDownloadedDescriptors:(id)a4 targetHadBeenDetermined:(BOOL *)a5;
- (BOOL)isAssetType:(id)a3 representedInAssetDescriptors:(id)a4;
- (MADAutoAssetStager)init;
- (id)_adjustPallasResponseBasedOnPreferences:(id)a3;
- (id)_allEliminationSelectors;
- (id)_collectOverviewInformation;
- (id)_controlConvertStagedToDownloaded:(id)a3;
- (id)_fromToName;
- (id)_newStagingInfoAvailable:(id)a3 fromAvailableForStaging:(id)a4 providingTotalExpectedBytes:(unint64_t *)a5;
- (id)_persistRebuildTrackingNewHandedOffDescriptors:(id)a3;
- (id)_setConfigurationAdjustedFrom:(id)a3 basedOnSetTarget:(id)a4;
- (id)_setConfigurationForAssetType:(id)a3 forAssetSpecifier:(id)a4;
- (id)_setTargetForAssetType:(id)a3;
- (id)_setTargetForSetConfiguration:(id)a3;
- (id)_stagingClientMessageDesire:(id)a3 forClientRequest:(id)a4;
- (id)_stagingClientMessageStagingClientProcessName:(id)a3;
- (id)_stagingClientRequestDetermineClear:(id)a3 forStagingTargetName:(id)a4 replyingToCleared:(BOOL)a5;
- (id)_stagingClientRequestDetermineLocate:(id)a3 forStagingTargetName:(id)a4;
- (id)_stagingClientRequestDownloadClear:(id)a3 forStagingTargetName:(id)a4 replyingToCleared:(BOOL)a5;
- (id)_stagingClientRequestDownloadCurrent:(id)a3 forStagingTargetName:(id)a4;
- (id)_stagingClientRequestGeneralClear:(id)a3 replyingToCleared:(BOOL)a4;
- (id)_stagingClientRequestGeneralCurrent:(id)a3;
- (id)_targetName:(id)a3 forOSVersion:(id)a4 forBuildVersion:(id)a5 forTrainName:(id)a6 forRestoreVersion:(id)a7;
- (id)_targetNameActive;
- (id)_targetNameActive:(id)a3;
- (id)_targetNameActiveClient;
- (id)_targetNameActiveOptional;
- (id)_targetNameActiveRequired;
- (id)_targetNameAvailableForStaging:(id)a3;
- (id)_trimConsideringToLatestDownloaded:(id)a3;
- (id)_updateAttributesFromStagingRequest:(id)a3 fromLocation:(id)a4;
- (id)_updateLatestSummary;
- (id)adoptTargetFromUpdateAttributes:(id)a3 fromUpdateAttributes:(id)a4 forGroupDetermine:(BOOL)a5;
- (id)assetMetadataFromAssetCatalog:(id)a3 forAssetype:(id)a4 forAssetSpecifier:(id)a5 preferringBestFormat:(BOOL)a6;
- (id)baseForPatchingToSelector:(id)a3;
- (id)dedupAvailableForStaging:(id)a3 dedupingAssetDescriptors:(id)a4 removingAlreadyDownloaded:(id)a5 ofContainerName:(id)a6;
- (id)description;
- (id)fullSummary;
- (id)getTargetLookupResultsForKey:(id)a3;
- (id)newAssetMetadataFromAssetCatalog:(id)a3 forAssetype:(id)a4 forAssetSpecifier:(id)a5;
- (id)newSetConfigurationForClientDomainName:(id)a3 forAssetSetIdentifier:(id)a4 withAutoAssetEntries:(id)a5;
- (id)newSetLookupResult:(id)a3 forAssetType:(id)a4 forSetCatalog:(id)a5;
- (id)newSetLookupResultsForTargetOS;
- (id)newStagedInfoWithAllSuccessfullyStaged:(id)a3;
- (id)newStagedInfoWithGroupsSuccessfullyStaged:(id)a3 indicatingHaveStaged:(BOOL)a4;
- (id)newStagingInfoWithAllAvailableForStaging:(id)a3;
- (id)newStagingInfoWithGroupsAvailableForStaging:(id)a3 indicatingHaveAvailable:(BOOL)a4 usingTargetLookupKey:(id)a5;
- (id)selectorContainerAsString:(id)a3;
- (id)splitOutAvailableForStagingByGroup:(id)a3 forGroupDetermine:(BOOL)a4;
- (id)targetLookupResultsKeyForTrainName:(id)a3 withRestoreVersion:(id)a4;
- (id)targetLookupResultsKeyForTrainName:(id)a3 withRestoreVersion:(id)a4 withTargetBuildVersion:(id)a5;
- (int64_t)_countOfEntriesDictionaryOfArray:(id)a3;
- (int64_t)_persistDescriptor:(id)a3 operation:(id)a4 persistingDescriptor:(id)a5 withRepresentation:(int64_t)a6 message:(id)a7;
- (int64_t)actionUnknownAction:(id)a3 error:(id *)a4;
- (int64_t)action_AddToAvailableDecideAnyAvailable:(id)a3 error:(id *)a4;
- (int64_t)action_AddToAvailableDecideMoreCandidates:(id)a3 error:(id *)a4;
- (int64_t)action_AddToAvailableDecideRequiredAvailable:(id)a3 error:(id *)a4;
- (int64_t)action_AddToStaged:(id)a3 error:(id *)a4;
- (int64_t)action_AddToStagedDecideMoreAvailable:(id)a3 error:(id *)a4;
- (int64_t)action_AlteredDecideSameSetConfiguration:(id)a3 error:(id *)a4;
- (int64_t)action_AlteredInvalAllAvailable:(id)a3 error:(id *)a4;
- (int64_t)action_AlteredInvalAllAvailableCancelActiveJob:(id)a3 error:(id *)a4;
- (int64_t)action_CancelActiveJob:(id)a3 error:(id *)a4;
- (int64_t)action_ClientAcceptAllDetermine:(id)a3 error:(id *)a4;
- (int64_t)action_ClientAcceptCancelActiveJob:(id)a3 error:(id *)a4;
- (int64_t)action_ClientAcceptEraseActiveJob:(id)a3 error:(id *)a4;
- (int64_t)action_ClientAcceptEraseCancelActiveJob:(id)a3 error:(id *)a4;
- (int64_t)action_ClientAcceptNextAvailableBeginDownload:(id)a3 error:(id *)a4;
- (int64_t)action_ClientAcceptRemoveAllReplyErased:(id)a3 error:(id *)a4;
- (int64_t)action_ClientAcceptRemoveAllReplyPurged:(id)a3 error:(id *)a4;
- (int64_t)action_ClientCancelDesireForCompletion:(id)a3 error:(id *)a4;
- (int64_t)action_ClientCheckGroupsDecideAlreadyDetermined:(id)a3 error:(id *)a4;
- (int64_t)action_ClientCheckGroupsReplyAlreadyDetermined:(id)a3 error:(id *)a4;
- (int64_t)action_ClientCheckLatchGroupsDetermine:(id)a3 error:(id *)a4;
- (int64_t)action_ClientContinueRestartingMaxDetermining:(id)a3 error:(id *)a4;
- (int64_t)action_ClientContinueUsingLatestRequest:(id)a3 error:(id *)a4;
- (int64_t)action_ClientDecideGroupTargetAvailable:(id)a3 error:(id *)a4;
- (int64_t)action_ClientEraseDecideStagingClient:(id)a3 error:(id *)a4;
- (int64_t)action_ClientFailAlreadyDetermining:(id)a3 error:(id *)a4;
- (int64_t)action_ClientFailByGroupAlreadyDownloading:(id)a3 error:(id *)a4;
- (int64_t)action_ClientFailGroupDetermining:(id)a3 error:(id *)a4;
- (int64_t)action_ClientFailNoGroupsStaged:(id)a3 error:(id *)a4;
- (int64_t)action_ClientFailWrongMode:(id)a3 error:(id *)a4;
- (int64_t)action_ClientHaveStagedContent:(id)a3 error:(id *)a4;
- (int64_t)action_ClientInvalidStagingPhase:(id)a3 error:(id *)a4;
- (int64_t)action_ClientNewerReplyEmptyDetermine:(id)a3 error:(id *)a4;
- (int64_t)action_ClientNewerReplyEmptyDownload:(id)a3 error:(id *)a4;
- (int64_t)action_ClientNewerReplySameOrEmptyDetermine:(id)a3 error:(id *)a4;
- (int64_t)action_ClientNewerReplySameOrEmptyDownload:(id)a3 error:(id *)a4;
- (int64_t)action_ClientNothingStaged:(id)a3 error:(id *)a4;
- (int64_t)action_ClientPurgeDecideStagingClient:(id)a3 error:(id *)a4;
- (int64_t)action_ClientRequestAlreadyDownloaded:(id)a3 error:(id *)a4;
- (int64_t)action_ControlUnstagedDecideCancelJob:(id)a3 error:(id *)a4;
- (int64_t)action_ControlUnstagedDecideRemoveAll:(id)a3 error:(id *)a4;
- (int64_t)action_DecideHaveAvailableOtherTargets:(id)a3 error:(id *)a4;
- (int64_t)action_DecideHaveRequiredCandidates:(id)a3 error:(id *)a4;
- (int64_t)action_DecideMoreAvailable:(id)a3 error:(id *)a4;
- (int64_t)action_DecideMoreCandidates:(id)a3 error:(id *)a4;
- (int64_t)action_DecideMoreOptionalAvailable:(id)a3 error:(id *)a4;
- (int64_t)action_DecideMoreRequiredAvailable:(id)a3 error:(id *)a4;
- (int64_t)action_DecideRequiredErrorBlocksOTA:(id)a3 error:(id *)a4;
- (int64_t)action_DecideTimerDeterminingValid:(id)a3 error:(id *)a4;
- (int64_t)action_DoneAvailableDecideAnyStaged:(id)a3 error:(id *)a4;
- (int64_t)action_DoneCandidatesDecideAnyAvailable:(id)a3 error:(id *)a4;
- (int64_t)action_DoneCandidatesRequiredDecideOptional:(id)a3 error:(id *)a4;
- (int64_t)action_EliminateAvailableDecideEmpty:(id)a3 error:(id *)a4;
- (int64_t)action_EliminateCancelActiveJob:(id)a3 error:(id *)a4;
- (int64_t)action_EliminateDecideMatch:(id)a3 error:(id *)a4;
- (int64_t)action_EliminateDeterminingDecideMatch:(id)a3 error:(id *)a4;
- (int64_t)action_EliminateDone:(id)a3 error:(id *)a4;
- (int64_t)action_EliminateDoneDecideMoreDownload:(id)a3 error:(id *)a4;
- (int64_t)action_EliminateDoneStagedDecideEmpty:(id)a3 error:(id *)a4;
- (int64_t)action_FailRequiredDetermineBlocksOTA:(id)a3 error:(id *)a4;
- (int64_t)action_FormCandidatesDecideDetermine:(id)a3 error:(id *)a4;
- (int64_t)action_IgnoreFailureDecideRequiredAvailable:(id)a3 error:(id *)a4;
- (int64_t)action_LoadDecideNewOSPromote:(id)a3 error:(id *)a4;
- (int64_t)action_LoadPersistedDecideResume:(id)a3 error:(id *)a4;
- (int64_t)action_NextAwaitingBeginDownload:(id)a3 error:(id *)a4;
- (int64_t)action_NextCandidateBeginDetermine:(id)a3 error:(id *)a4;
- (int64_t)action_RememberEliminateDone:(id)a3 error:(id *)a4;
- (int64_t)action_RememberSetEliminateDone:(id)a3 error:(id *)a4;
- (int64_t)action_RemoveAllReplyCanceled:(id)a3 error:(id *)a4;
- (int64_t)action_RemoveAllReplyErased:(id)a3 error:(id *)a4;
- (int64_t)action_RemoveAllReplyPurged:(id)a3 error:(id *)a4;
- (int64_t)action_ReplyFailRequiredDownload:(id)a3 error:(id *)a4;
- (int64_t)action_ReplyHaveAvailable:(id)a3 error:(id *)a4;
- (int64_t)action_ReplyHaveStaged:(id)a3 error:(id *)a4;
- (int64_t)action_ReplyNoCandidates:(id)a3 error:(id *)a4;
- (int64_t)action_ReplyNoCandidatesEraseAll:(id)a3 error:(id *)a4;
- (int64_t)action_ReplyNoCandidatesHaveOtherTarget:(id)a3 error:(id *)a4;
- (int64_t)action_ReplyNoCandidatesPurgeAll:(id)a3 error:(id *)a4;
- (int64_t)action_ReplyNothingStaged:(id)a3 error:(id *)a4;
- (int64_t)action_ReplyNothingStagedEraseAll:(id)a3 error:(id *)a4;
- (int64_t)action_ReplyNothingStagedPurgeAll:(id)a3 error:(id *)a4;
- (int64_t)action_ReplyTargetNotAvailable:(id)a3 error:(id *)a4;
- (int64_t)action_ReportStagingProgressToClient:(id)a3 error:(id *)a4;
- (int64_t)action_RequestAlreadyDownloaded:(id)a3 error:(id *)a4;
- (int64_t)action_SetEliminateAvailableDecideEmpty:(id)a3 error:(id *)a4;
- (int64_t)action_SetEliminateDecideMatch:(id)a3 error:(id *)a4;
- (int64_t)action_SetEliminateDeterminingDecideMatch:(id)a3 error:(id *)a4;
- (int64_t)action_SetEliminateDone:(id)a3 error:(id *)a4;
- (int64_t)action_SetEliminateDoneStagedDecideEmpty:(id)a3 error:(id *)a4;
- (int64_t)action_SetTargetDecideSameTarget:(id)a3 error:(id *)a4;
- (int64_t)action_SetTargetInvalAllAvailable:(id)a3 error:(id *)a4;
- (int64_t)action_SetTargetInvalAllAvailableCancelActiveJob:(id)a3 error:(id *)a4;
- (int64_t)action_UpdateStagedSituation:(id)a3 error:(id *)a4;
- (int64_t)indexForAssetType:(id)a3 representedInSetConfigurations:(id)a4;
- (int64_t)performAction:(id)a3 onEvent:(id)a4 inState:(id)a5 withInfo:(id)a6 nextState:(id)a7 error:(id *)a8;
- (void)_acceptStagingClientRequest:(id)a3 fromLocation:(id)a4 adoptingSpecifiedTarget:(BOOL)a5;
- (void)_acknowledgeEliminatedForCurrentJob;
- (void)_acknowlegdeAndClearAllEliminations;
- (void)_addDescriptor:(id)a3 withRepresentation:(int64_t)a4 toSummary:(id)a5;
- (void)_addDescriptor:(id)a3 withRepresentation:(int64_t)a4 toSummary:(id)a5 withStageGroupType:(unint64_t)a6 withTargetOS:(id)a7;
- (void)_addToStaged:(id)a3 addingFromStagerParam:(id)a4;
- (void)_availableForStagingRemove:(id)a3 forTargetTrainName:(id)a4 withRestoreVersion:(id)a5;
- (void)_blendCandidateSetConfigurations:(id)a3 blendingIntoRequiredConfigurations:(id)a4 blendingFromOptionalConfigurations:(id)a5;
- (void)_blendOptionalCandidates:(id)a3 intoRequired:(id)a4;
- (void)_cancelCurrentJob;
- (void)_candidatesRemove:(id)a3 forTargetTrainName:(id)a4 withRestoreVersion:(id)a5;
- (void)_clearAllTrackingOfActiveOperations:(id)a3 alsoPerformingPurgeAll:(BOOL)a4 removingDetermined:(BOOL)a5;
- (void)_clearBeforeDetermineAvailable:(id)a3 removingDetermined:(BOOL)a4;
- (void)_clearRemoveByGroupTargets:(id)a3 removingDetermined:(BOOL)a4;
- (void)_extendLookupByAssetType:(id)a3 fromSource:(id)a4 withAssetType:(id)a5 withAssetSpecifier:(id)a6 withDownloadDecryptionKey:(id)a7 createdClientDefinedSetEntries:(id)a8 createdNoClientSetEntries:(id)a9 appendedSetEntries:(id)a10;
- (void)_extendLookupByAssetTypeWithDownloadedDescriptors:(id)a3 limitingToSetTargets:(id)a4;
- (void)_extendLookupByAssetTypeWithSetConfigurations:(id)a3 limitingToSetTargets:(id)a4;
- (void)_extendSummaryWithAvailableForStagingAssets:(id)a3;
- (void)_extendSummaryWithDeterminedAssets:(id)a3 basedOnControl:(id)a4;
- (void)_extendSummaryWithStagedAssets:(id)a3 basedOnControl:(id)a4;
- (void)_extendSummaryWithStagingAssets:(id)a3 basedOnControl:(id)a4;
- (void)_limitCachePersistResultByGroupToCount:(unsigned int)a3 fromLocation:(id)a4;
- (void)_logMilestoneFromLocation:(id)a3 resultingInEvent:(id)a4 forMilestoneActivity:(id)a5;
- (void)_logPersistedActiveTargetLookupResults:(id)a3;
- (void)_logPersistedAvailableForStagingByTarget:(id)a3 operation:(id)a4 forPersistedEntryID:(id)a5 withAvailableForStaging:(id)a6 message:(id)a7;
- (void)_logPersistedAvailableForStagingByTargetRemoved:(id)a3 removedPersistedEntryID:(id)a4 removedAvailableForStaging:(id)a5 message:(id)a6;
- (void)_logPersistedAvailableForStagingByTargetTableOfContents:(id)a3;
- (void)_logPersistedConfigLoad:(id)a3 message:(id)a4;
- (void)_logPersistedConfigSet:(id)a3 message:(id)a4;
- (void)_logPersistedEntry:(id)a3 operation:(id)a4 persistingDescriptor:(id)a5 withRepresentation:(int64_t)a6 message:(id)a7;
- (void)_logPersistedRemovedEntry:(id)a3 removedDescriptor:(id)a4 message:(id)a5;
- (void)_logPersistedSetLookupResult:(id)a3 operation:(id)a4 forPersistedEntryID:(id)a5 withSetLookupResult:(id)a6 message:(id)a7;
- (void)_logPersistedSetLookupResultRemoved:(id)a3 removedPersistedEntryID:(id)a4 removedSetLookupResult:(id)a5 message:(id)a6;
- (void)_logPersistedSetLookupResultsTableOfContents:(id)a3;
- (void)_logPersistedTableOfContents:(id)a3;
- (void)_logPersistedTargetLookupResults:(id)a3 operation:(id)a4 forPersistedEntryID:(id)a5 withTargetLookupResults:(id)a6 withTargetOTASituation:(int64_t)a7 message:(id)a8;
- (void)_logPersistedTargetLookupResultsRemoved:(id)a3 removedPersistedEntryID:(id)a4 removedTargetLookupResults:(id)a5 message:(id)a6;
- (void)_logPersistedTargetLookupResultsTableOfContents:(id)a3;
- (void)_logStagingDetails:(id)a3 forStagedInfo:(id)a4;
- (void)_logStagingDetails:(id)a3 forStagingInfo:(id)a4;
- (void)_lookupCachePersistResult:(id)a3 fromLocation:(id)a4;
- (void)_lookupCachePersistResultByGroup:(id)a3 fromLocation:(id)a4;
- (void)_lookupCacheRemoveResult:(id)a3 forTargetTrainName:(id)a4 withRestoreVersion:(id)a5;
- (void)_maintainLatestCandidate:(id)a3 candidateDescriptor:(id)a4;
- (void)_persistAllTargetLookupResultsOTASituation:(int64_t)a3 fromLocation:(id)a4;
- (void)_persistEraseLookupResults:(id)a3 forTargetTrainName:(id)a4 forTargetRestoreVersion:(id)a5;
- (void)_persistErasePreviousOTASituation:(id)a3;
- (void)_persistLastStagingFrom:(id)a3;
- (void)_persistRemoveAll:(id)a3 message:(id)a4 removingDetermined:(BOOL)a5 loggingConfig:(BOOL)a6;
- (void)_persistStoredTargetWithOTASituation:(id)a3;
- (void)_persistTargetOTASituation:(int64_t)a3 fromLocation:(id)a4;
- (void)_persistTargetOTASituationForFollowup:(id)a3 fromLocation:(id)a4;
- (void)_recordOperationForStagedAttributes:(id)a3 required:(BOOL)a4;
- (void)_removeAllStagedContent:(id)a3;
- (void)_removeDescriptorFromSuccessfullyStaged:(id)a3 message:(id)a4;
- (void)_removeEliminatedFromCandidatesAndAvaliable;
- (void)_removeEliminatedFromStaged;
- (void)_removeStagedAssetFromFilesystem:(id)a3 forHistoryOperation:(int64_t)a4;
- (void)_replyHaveStagedContent:(id)a3 withEventInfo:(id)a4;
- (void)_replyNoCandidates:(id)a3 replyingToStagingRequest:(id)a4;
- (void)_replyNothingStaged:(id)a3 replyingToStagingRequest:(id)a4;
- (void)_replyToStagingClient:(id)a3 replyingToRequest:(id)a4 withErrorCode:(int64_t)a5 withUnderlyingError:(id)a6 withDescription:(id)a7;
- (void)_replyToStagingClient:(id)a3 withStagedInfo:(id)a4 replyingToStagingRequest:(id)a5 recordingOperation:(int64_t)a6;
- (void)_replyToStagingClient:(id)a3 withStagingInfo:(id)a4 replyingToStagingRequest:(id)a5 recordingOperation:(int64_t)a6;
- (void)_replyToStagingClientOperationSuccess;
- (void)_replyWithAlreadyDetermined:(id)a3 forEventInfo:(id)a4 orFollowupDetermineStart:(BOOL)a5;
- (void)_replyWrongMode:(id)a3;
- (void)_setupAwaitingStagingAndBeginFirstDownload;
- (void)_stagingClientRequestDetermineClearAll:(id)a3;
- (void)_stagingClientRequestDetermineTrack:(id)a3 trackingRequest:(id)a4 forStagingTargetName:(id)a5;
- (void)_stagingClientRequestDownloadPurged:(id)a3;
- (void)_stagingClientRequestDownloadTrack:(id)a3 trackingRequest:(id)a4 forStagingTargetName:(id)a5;
- (void)_stagingClientRequestGeneralTrack:(id)a3 trackingRequest:(id)a4;
- (void)_startDetermineJobForNextCandidate:(id)a3;
- (void)_trackReloadedDescriptorAvailableForStaging:(id)a3;
- (void)_updateDescriptor:(id)a3 withLatestJobStatus:(id)a4;
- (void)_updateLookupResultsJustStagedAllMode:(id)a3;
- (void)_updateLookupResultsJustStagedByGroupMode:(id)a3;
- (void)addToAvailableForStaging:(id)a3;
- (void)availableForStagingLoadedFromPersisted:(id)a3 persistedEntryID:(id)a4;
- (void)considerInjectionIntoAvailableForStaging;
- (void)formAvailableForStagingByCombiningRequiredAndOptional:(id)a3;
- (void)loadPersistedAvailableForStagingByTarget;
- (void)loadPersistedSetLookupResults;
- (void)loadPersistedTargetLookupResults:(id)a3;
- (void)lookupCacheUpdateWithDetermineResult:(id)a3 fromLocation:(id)a4;
- (void)notifyControlManagerEliminateDone:(id)a3 forAssetSelector:(id)a4;
- (void)notifyControlManagerEliminateDone:(id)a3 forSetConfiguration:(id)a4;
- (void)purgeAlreadyStagedNotApplicableForRequiredByTarget:(id)a3 andNotApplicableForOptionalByTarget:(id)a4;
- (void)setLookupResultLoadedFromPersisted:(id)a3 persistedEntryID:(id)a4;
- (void)startMaxTimeSpentDeterminingTimer;
- (void)storeAvailableForStaging:(id)a3 fromLocation:(id)a4;
- (void)targetLookupResultsLoadedFromPersisted:(id)a3 targetLookupResultsKey:(id)a4 persistedEntryID:(id)a5 withTargetOTASituation:(int64_t)a6;
- (void)trackSelectorForDescriptor:(id)a3 inContainer:(id)a4;
- (void)trackSelectorForSetEntry:(id)a3 inContainer:(id)a4;
- (void)trackSelectorInContainer:(id)a3 forAssetType:(id)a4 forAssetSpecifier:(id)a5 forAssetVersion:(id)a6;
- (void)updateLookupResultsJustStaged:(id)a3;
@end

@implementation MADAutoAssetStager

+ (id)_getAutoAssetStagerStateTable
{
  v2012[0] = @"ReadyToLoad";
  v2010[0] = @"ControlResumeFromPersisted";
  v2 = kSUCoreActionKey;
  v2008 = kSUCoreActionKey;
  v2009 = @"LoadDecideNewOSPromote";
  v675 = [NSDictionary dictionaryWithObjects:&v2009 forKeys:&v2008 count:1];
  v2011[0] = v675;
  v2010[1] = @"ResumePostponeNoPromote";
  v3 = kSUCoreNextStateKey;
  v2006 = kSUCoreNextStateKey;
  v2007 = @"ResumedPostponedLoad";
  v674 = [NSDictionary dictionaryWithObjects:&v2007 forKeys:&v2006 count:1];
  v2011[1] = v674;
  v2010[2] = @"ResumeNewOSPromote";
  v2004 = v2;
  v2005 = @"LoadPersistedDecideResume";
  v673 = [NSDictionary dictionaryWithObjects:&v2005 forKeys:&v2004 count:1];
  v2011[2] = v673;
  v2010[3] = @"ResumeNothingAvailable";
  v2002 = v3;
  v2003 = @"NothingAvailable";
  v672 = [NSDictionary dictionaryWithObjects:&v2003 forKeys:&v2002 count:1];
  v2011[3] = v672;
  v2010[4] = @"ResumeGroupsAvailable";
  v2000 = v3;
  v2001 = @"GroupsAvailableContent";
  v671 = [NSDictionary dictionaryWithObjects:&v2001 forKeys:&v2000 count:1];
  v2011[4] = v671;
  v2010[5] = @"ResumeAllAvailable";
  v1998 = v3;
  v1999 = @"AllAvailableContent";
  v670 = [NSDictionary dictionaryWithObjects:&v1999 forKeys:&v1998 count:1];
  v2011[5] = v670;
  v2010[6] = @"ResumeStaged";
  v1996 = v3;
  v1997 = @"StagedContent";
  v669 = [NSDictionary dictionaryWithObjects:&v1997 forKeys:&v1996 count:1];
  v2011[6] = v669;
  v2010[7] = @"ResumePurging";
  v1994[0] = v3;
  v1994[1] = v2;
  v1995[0] = @"NothingAvailable";
  v1995[1] = @"RemoveAllReplyPurged";
  v668 = [NSDictionary dictionaryWithObjects:v1995 forKeys:v1994 count:2];
  v2011[7] = v668;
  v2010[8] = @"ResumeRunningTargetVersion";
  v1992[0] = v3;
  v1992[1] = v2;
  v1993[0] = @"NothingAvailable";
  v1993[1] = @"RemoveAllReplyPurged";
  v667 = [NSDictionary dictionaryWithObjects:v1993 forKeys:v1992 count:2];
  v2011[8] = v667;
  v2010[9] = @"ResumePromotingAllStaged";
  v1990[0] = v3;
  v1990[1] = v2;
  v1991[0] = @"NothingAvailable";
  v1991[1] = @"RemoveAllReplyPurged";
  v666 = [NSDictionary dictionaryWithObjects:v1991 forKeys:v1990 count:2];
  v2011[9] = v666;
  v665 = [NSDictionary dictionaryWithObjects:v2011 forKeys:v2010 count:10];
  v2013[0] = v665;
  v2012[1] = @"ResumedPostponedLoad";
  v1988[0] = @"ControlFinishResumeFromPersisted";
  v1986 = v2;
  v1987 = @"LoadPersistedDecideResume";
  v664 = [NSDictionary dictionaryWithObjects:&v1987 forKeys:&v1986 count:1];
  v1989[0] = v664;
  v1988[1] = @"ResumeNothingAvailable";
  v1984 = v3;
  v1985 = @"NothingAvailable";
  v663 = [NSDictionary dictionaryWithObjects:&v1985 forKeys:&v1984 count:1];
  v1989[1] = v663;
  v1988[2] = @"ResumeGroupsAvailable";
  v1982 = v3;
  v1983 = @"GroupsAvailableContent";
  v662 = [NSDictionary dictionaryWithObjects:&v1983 forKeys:&v1982 count:1];
  v1989[2] = v662;
  v1988[3] = @"ResumeAllAvailable";
  v1980 = v3;
  v1981 = @"AllAvailableContent";
  v661 = [NSDictionary dictionaryWithObjects:&v1981 forKeys:&v1980 count:1];
  v1989[3] = v661;
  v1988[4] = @"ResumeStaged";
  v1978 = v3;
  v1979 = @"StagedContent";
  v660 = [NSDictionary dictionaryWithObjects:&v1979 forKeys:&v1978 count:1];
  v1989[4] = v660;
  v1988[5] = @"ResumePurging";
  v1976[0] = v3;
  v1976[1] = v2;
  v1977[0] = @"NothingAvailable";
  v1977[1] = @"RemoveAllReplyErased";
  v659 = [NSDictionary dictionaryWithObjects:v1977 forKeys:v1976 count:2];
  v1989[5] = v659;
  v1988[6] = @"ResumeRunningTargetVersion";
  v1974[0] = v3;
  v1974[1] = v2;
  v1975[0] = @"NothingAvailable";
  v1975[1] = @"RemoveAllReplyErased";
  v658 = [NSDictionary dictionaryWithObjects:v1975 forKeys:v1974 count:2];
  v1989[6] = v658;
  v1988[7] = @"ResumePromotingAllStaged";
  v1972[0] = v3;
  v1972[1] = v2;
  v1973[0] = @"NothingAvailable";
  v1973[1] = @"RemoveAllReplyErased";
  v657 = [NSDictionary dictionaryWithObjects:v1973 forKeys:v1972 count:2];
  v1989[7] = v657;
  v656 = [NSDictionary dictionaryWithObjects:v1989 forKeys:v1988 count:8];
  v2013[1] = v656;
  v2012[2] = @"NothingAvailable";
  v1970[0] = @"ControlForceUnstage";
  v1968 = v2;
  v4 = kSUCoreFSMActionNoOp;
  v1969 = kSUCoreFSMActionNoOp;
  v655 = [NSDictionary dictionaryWithObjects:&v1969 forKeys:&v1968 count:1];
  v1971[0] = v655;
  v1970[1] = @"ControlEliminateAssetSelector";
  v1966 = v2;
  v1967 = @"EliminateDone";
  v654 = [NSDictionary dictionaryWithObjects:&v1967 forKeys:&v1966 count:1];
  v1971[1] = v654;
  v1970[2] = @"ControlEliminateSetIdentifier";
  v1964 = v2;
  v1965 = @"SetEliminateDone";
  v653 = [NSDictionary dictionaryWithObjects:&v1965 forKeys:&v1964 count:1];
  v1971[2] = v653;
  v1970[3] = @"ControlAlteredSetConfiguration";
  v1962 = v2;
  v1963 = v4;
  v652 = [NSDictionary dictionaryWithObjects:&v1963 forKeys:&v1962 count:1];
  v1971[3] = v652;
  v1970[4] = @"ControlSetTargetsSpecified";
  v1960 = v2;
  v1961 = v4;
  v651 = [NSDictionary dictionaryWithObjects:&v1961 forKeys:&v1960 count:1];
  v1971[4] = v651;
  v1970[5] = @"ClientDetermineGroupsAvailable";
  v1958 = v2;
  v1959 = @"ClientCheckLatchGroupsDetermine";
  v650 = [NSDictionary dictionaryWithObjects:&v1959 forKeys:&v1958 count:1];
  v1971[5] = v650;
  v1970[6] = @"ClientDetermineAllAvailable";
  v1956 = v2;
  v1957 = @"ClientAcceptAllDetermine";
  v649 = [NSDictionary dictionaryWithObjects:&v1957 forKeys:&v1956 count:1];
  v1971[6] = v649;
  v1970[7] = @"ClientDownloadAlreadyStaged";
  v1954 = v2;
  v1955 = @"ClientNothingStaged";
  v648 = [NSDictionary dictionaryWithObjects:&v1955 forKeys:&v1954 count:1];
  v1971[7] = v648;
  v1970[8] = @"ClientDownloadGroupsAvailable";
  v1952 = v2;
  v1953 = @"ClientNothingStaged";
  v647 = [NSDictionary dictionaryWithObjects:&v1953 forKeys:&v1952 count:1];
  v1971[8] = v647;
  v1970[9] = @"ClientDownloadAllAvailable";
  v1950 = v2;
  v1951 = @"ClientNothingStaged";
  v646 = [NSDictionary dictionaryWithObjects:&v1951 forKeys:&v1950 count:1];
  v1971[9] = v646;
  v1970[10] = @"ClientCancelCompletion";
  v1948 = v2;
  v1949 = @"ClientCancelDesireForCompletion";
  v645 = [NSDictionary dictionaryWithObjects:&v1949 forKeys:&v1948 count:1];
  v1971[10] = v645;
  v1970[11] = @"ClientPurgeAll";
  v1946 = v2;
  v1947 = @"ClientAcceptRemoveAllReplyPurged";
  v644 = [NSDictionary dictionaryWithObjects:&v1947 forKeys:&v1946 count:1];
  v1971[11] = v644;
  v1970[12] = @"ClientEraseAll";
  v1944 = v2;
  v1945 = @"ClientAcceptRemoveAllReplyErased";
  v643 = [NSDictionary dictionaryWithObjects:&v1945 forKeys:&v1944 count:1];
  v1971[12] = v643;
  v1970[13] = @"TimerFiredDetermining";
  v1942 = v2;
  v1943 = v4;
  v642 = [NSDictionary dictionaryWithObjects:&v1943 forKeys:&v1942 count:1];
  v1971[13] = v642;
  v1970[14] = @"ModeGroupsDetermineStart";
  v1940[0] = v3;
  v1940[1] = v2;
  v1941[0] = @"GroupsRequestingDownloaded";
  v1941[1] = @"RequestAlreadyDownloaded";
  v641 = [NSDictionary dictionaryWithObjects:v1941 forKeys:v1940 count:2];
  v1971[14] = v641;
  v1970[15] = @"ModeAllDetermineStart";
  v1938[0] = v3;
  v1938[1] = v2;
  v1939[0] = @"AllRequestingDownloaded";
  v1939[1] = @"RequestAlreadyDownloaded";
  v640 = [NSDictionary dictionaryWithObjects:v1939 forKeys:v1938 count:2];
  v1971[15] = v640;
  v639 = [NSDictionary dictionaryWithObjects:v1971 forKeys:v1970 count:16];
  v2013[2] = v639;
  v2012[3] = @"GroupsRequestingDownloaded";
  v1936[0] = @"ControlForceUnstage";
  v1934 = v3;
  v1935 = @"CancelingRequestDownloaded";
  v638 = [NSDictionary dictionaryWithObjects:&v1935 forKeys:&v1934 count:1];
  v1937[0] = v638;
  v1936[1] = @"ControlAlreadyDownloaded";
  v1932 = v2;
  v1933 = @"FormCandidatesDecideDetermine";
  v637 = [NSDictionary dictionaryWithObjects:&v1933 forKeys:&v1932 count:1];
  v1937[1] = v637;
  v1936[2] = @"ControlEliminateAssetSelector";
  v1930 = v2;
  v1931 = @"RememberEliminateDone";
  v636 = [NSDictionary dictionaryWithObjects:&v1931 forKeys:&v1930 count:1];
  v1937[2] = v636;
  v1936[3] = @"ControlEliminateSetIdentifier";
  v1928 = v2;
  v1929 = @"RememberSetEliminateDone";
  v635 = [NSDictionary dictionaryWithObjects:&v1929 forKeys:&v1928 count:1];
  v1937[3] = v635;
  v1936[4] = @"ControlAlteredSetConfiguration";
  v1926 = v2;
  v1927 = v4;
  v634 = [NSDictionary dictionaryWithObjects:&v1927 forKeys:&v1926 count:1];
  v1937[4] = v634;
  v1936[5] = @"ControlSetTargetsSpecified";
  v1924 = v2;
  v1925 = v4;
  v633 = [NSDictionary dictionaryWithObjects:&v1925 forKeys:&v1924 count:1];
  v1937[5] = v633;
  v1936[6] = @"ClientDetermineGroupsAvailable";
  v1922 = v2;
  v1923 = @"ClientNewerReplySameOrEmptyDetermine";
  v632 = [NSDictionary dictionaryWithObjects:&v1923 forKeys:&v1922 count:1];
  v1937[6] = v632;
  v1936[7] = @"ClientDetermineAllAvailable";
  v1920 = v2;
  v1921 = @"ClientFailWrongMode";
  v631 = [NSDictionary dictionaryWithObjects:&v1921 forKeys:&v1920 count:1];
  v1937[7] = v631;
  v1936[8] = @"ClientDownloadAlreadyStaged";
  v1918 = v2;
  v1919 = @"ClientNothingStaged";
  v630 = [NSDictionary dictionaryWithObjects:&v1919 forKeys:&v1918 count:1];
  v1937[8] = v630;
  v1936[9] = @"ClientDownloadGroupsAvailable";
  v1916 = v2;
  v1917 = @"ClientNewerReplyEmptyDownload";
  v629 = [NSDictionary dictionaryWithObjects:&v1917 forKeys:&v1916 count:1];
  v1937[9] = v629;
  v1936[10] = @"ClientDownloadAllAvailable";
  v1914 = v2;
  v1915 = @"ClientNothingStaged";
  v628 = [NSDictionary dictionaryWithObjects:&v1915 forKeys:&v1914 count:1];
  v1937[10] = v628;
  v1936[11] = @"ClientCancelCompletion";
  v1912 = v2;
  v1913 = @"ClientCancelDesireForCompletion";
  v627 = [NSDictionary dictionaryWithObjects:&v1913 forKeys:&v1912 count:1];
  v1937[11] = v627;
  v1936[12] = @"ClientPurgeAll";
  v1910 = v2;
  v1911 = @"ClientPurgeDecideStagingClient";
  v626 = [NSDictionary dictionaryWithObjects:&v1911 forKeys:&v1910 count:1];
  v1937[12] = v626;
  v1936[13] = @"ClientEraseAll";
  v1908 = v2;
  v1909 = @"ClientEraseDecideStagingClient";
  v625 = [NSDictionary dictionaryWithObjects:&v1909 forKeys:&v1908 count:1];
  v1937[13] = v625;
  v1936[14] = @"TimerFiredDetermining";
  v1906 = v2;
  v1907 = v4;
  v624 = [NSDictionary dictionaryWithObjects:&v1907 forKeys:&v1906 count:1];
  v1937[14] = v624;
  v1936[15] = @"DetermineHaveCandidates";
  v1904 = v2;
  v1905 = @"DecideHaveRequiredCandidates";
  v623 = [NSDictionary dictionaryWithObjects:&v1905 forKeys:&v1904 count:1];
  v1937[15] = v623;
  v1936[16] = @"DetermineHaveRequired";
  v1902[0] = v3;
  v1902[1] = v2;
  v1903[0] = @"RequiredDeterminingAvailable";
  v1903[1] = @"NextCandidateBeginDetermine";
  v622 = [NSDictionary dictionaryWithObjects:v1903 forKeys:v1902 count:2];
  v1937[16] = v622;
  v1936[17] = @"DetermineHaveOptional";
  v1900[0] = v3;
  v1900[1] = v2;
  v1901[0] = @"OptionalDeterminingAvailable";
  v1901[1] = @"NextCandidateBeginDetermine";
  v621 = [NSDictionary dictionaryWithObjects:v1901 forKeys:v1900 count:2];
  v1937[17] = v621;
  v1936[18] = @"DetermineNoCandidates";
  v1898 = v2;
  v1899 = @"DecideHaveAvailableOtherTargets";
  v620 = [NSDictionary dictionaryWithObjects:&v1899 forKeys:&v1898 count:1];
  v1937[18] = v620;
  v1936[19] = @"TargetHaveOtherAvailable";
  v1896[0] = v3;
  v1896[1] = v2;
  v1897[0] = @"GroupsAvailableContent";
  v1897[1] = @"ReplyNoCandidatesHaveOtherTarget";
  v619 = [NSDictionary dictionaryWithObjects:v1897 forKeys:v1896 count:2];
  v1937[19] = v619;
  v1936[20] = @"TargetNoOtherAvailable";
  v1894[0] = v3;
  v1894[1] = v2;
  v1895[0] = @"NothingAvailable";
  v1895[1] = @"ReplyNoCandidatesEraseAll";
  v618 = [NSDictionary dictionaryWithObjects:v1895 forKeys:v1894 count:2];
  v1937[20] = v618;
  v1936[21] = @"PurgeAcceptedRemoveDownloaded";
  v1892 = v2;
  v1893 = @"RemoveAllReplyPurged";
  v617 = [NSDictionary dictionaryWithObjects:&v1893 forKeys:&v1892 count:1];
  v1937[21] = v617;
  v1936[22] = @"PurgeAcceptedRemoveAll";
  v1890 = v2;
  v1891 = @"RemoveAllReplyPurged";
  v616 = [NSDictionary dictionaryWithObjects:&v1891 forKeys:&v1890 count:1];
  v1937[22] = v616;
  v1936[23] = @"PurgeEraseAcceptedRemoveAll";
  v1888[0] = v3;
  v1888[1] = v2;
  v1889[0] = @"ErasingRequestDownloaded";
  v1889[1] = @"CancelActiveJob";
  v615 = [NSDictionary dictionaryWithObjects:v1889 forKeys:v1888 count:2];
  v1937[23] = v615;
  v614 = [NSDictionary dictionaryWithObjects:v1937 forKeys:v1936 count:24];
  v2013[3] = v614;
  v2012[4] = @"AllRequestingDownloaded";
  v1886[0] = @"ControlForceUnstage";
  v1884 = v3;
  v1885 = @"CancelingRequestDownloaded";
  v613 = [NSDictionary dictionaryWithObjects:&v1885 forKeys:&v1884 count:1];
  v1887[0] = v613;
  v1886[1] = @"ControlAlreadyDownloaded";
  v1882 = v2;
  v1883 = @"FormCandidatesDecideDetermine";
  v612 = [NSDictionary dictionaryWithObjects:&v1883 forKeys:&v1882 count:1];
  v1887[1] = v612;
  v1886[2] = @"ControlEliminateAssetSelector";
  v1880 = v2;
  v1881 = @"RememberEliminateDone";
  v611 = [NSDictionary dictionaryWithObjects:&v1881 forKeys:&v1880 count:1];
  v1887[2] = v611;
  v1886[3] = @"ControlEliminateSetIdentifier";
  v1878 = v2;
  v1879 = @"RememberSetEliminateDone";
  v610 = [NSDictionary dictionaryWithObjects:&v1879 forKeys:&v1878 count:1];
  v1887[3] = v610;
  v1886[4] = @"ControlAlteredSetConfiguration";
  v1876[0] = v3;
  v1876[1] = v2;
  v1877[0] = @"CancelingRequestDownloaded";
  v1877[1] = @"AlteredInvalAllAvailable";
  v609 = [NSDictionary dictionaryWithObjects:v1877 forKeys:v1876 count:2];
  v1887[4] = v609;
  v1886[5] = @"ControlSetTargetsSpecified";
  v1874[0] = v3;
  v1874[1] = v2;
  v1875[0] = @"CancelingRequestDownloaded";
  v1875[1] = @"SetTargetInvalAllAvailable";
  v608 = [NSDictionary dictionaryWithObjects:v1875 forKeys:v1874 count:2];
  v1887[5] = v608;
  v1886[6] = @"ClientDetermineGroupsAvailable";
  v1872 = v2;
  v1873 = @"ClientNewerReplySameOrEmptyDetermine";
  v607 = [NSDictionary dictionaryWithObjects:&v1873 forKeys:&v1872 count:1];
  v1887[6] = v607;
  v1886[7] = @"ClientDetermineAllAvailable";
  v1870 = v2;
  v1871 = @"ClientContinueUsingLatestRequest";
  v606 = [NSDictionary dictionaryWithObjects:&v1871 forKeys:&v1870 count:1];
  v1887[7] = v606;
  v1886[8] = @"ClientDownloadAlreadyStaged";
  v1868 = v2;
  v1869 = @"ClientNothingStaged";
  v605 = [NSDictionary dictionaryWithObjects:&v1869 forKeys:&v1868 count:1];
  v1887[8] = v605;
  v1886[9] = @"ClientDownloadGroupsAvailable";
  v1866 = v2;
  v1867 = @"ClientNewerReplyEmptyDownload";
  v604 = [NSDictionary dictionaryWithObjects:&v1867 forKeys:&v1866 count:1];
  v1887[9] = v604;
  v1886[10] = @"ClientDownloadAllAvailable";
  v1864 = v2;
  v1865 = @"ClientInvalidStagingPhase";
  v603 = [NSDictionary dictionaryWithObjects:&v1865 forKeys:&v1864 count:1];
  v1887[10] = v603;
  v1886[11] = @"ClientCancelCompletion";
  v1862 = v2;
  v1863 = @"ClientCancelDesireForCompletion";
  v602 = [NSDictionary dictionaryWithObjects:&v1863 forKeys:&v1862 count:1];
  v1887[11] = v602;
  v1886[12] = @"ClientPurgeAll";
  v1860[0] = v3;
  v1860[1] = v2;
  v1861[0] = @"CancelingRequestDownloaded";
  v1861[1] = @"ClientAcceptCancelActiveJob";
  v601 = [NSDictionary dictionaryWithObjects:v1861 forKeys:v1860 count:2];
  v1887[12] = v601;
  v1886[13] = @"ClientEraseAll";
  v1858[0] = v3;
  v1858[1] = v2;
  v1859[0] = @"ErasingRequestDownloaded";
  v1859[1] = @"ClientAcceptEraseActiveJob";
  v600 = [NSDictionary dictionaryWithObjects:v1859 forKeys:v1858 count:2];
  v1887[13] = v600;
  v1886[14] = @"TimerFiredDetermining";
  v1856 = v2;
  v1857 = v4;
  v599 = [NSDictionary dictionaryWithObjects:&v1857 forKeys:&v1856 count:1];
  v1887[14] = v599;
  v1886[15] = @"DetermineHaveCandidates";
  v1854[0] = v3;
  v1854[1] = v2;
  v1855[0] = @"AllDeterminingAvailable";
  v1855[1] = @"NextCandidateBeginDetermine";
  v598 = [NSDictionary dictionaryWithObjects:v1855 forKeys:v1854 count:2];
  v1887[15] = v598;
  v1886[16] = @"DetermineNoCandidates";
  v1852[0] = v3;
  v1852[1] = v2;
  v1853[0] = @"NothingAvailable";
  v1853[1] = @"ReplyNoCandidatesPurgeAll";
  v597 = [NSDictionary dictionaryWithObjects:v1853 forKeys:v1852 count:2];
  v1887[16] = v597;
  v596 = [NSDictionary dictionaryWithObjects:v1887 forKeys:v1886 count:17];
  v2013[4] = v596;
  v2012[5] = @"RequiredDeterminingAvailable";
  v1850[0] = @"ControlForceUnstage";
  v1848 = v2;
  v1849 = @"ControlUnstagedDecideCancelJob";
  v595 = [NSDictionary dictionaryWithObjects:&v1849 forKeys:&v1848 count:1];
  v1851[0] = v595;
  v1850[1] = @"ControlEliminateAssetSelector";
  v1846 = v2;
  v1847 = @"EliminateDeterminingDecideMatch";
  v594 = [NSDictionary dictionaryWithObjects:&v1847 forKeys:&v1846 count:1];
  v1851[1] = v594;
  v1850[2] = @"ControlEliminateSetIdentifier";
  v1844 = v2;
  v1845 = @"SetEliminateDeterminingDecideMatch";
  v593 = [NSDictionary dictionaryWithObjects:&v1845 forKeys:&v1844 count:1];
  v1851[2] = v593;
  v1850[3] = @"ControlAlteredSetConfiguration";
  v1842 = v2;
  v1843 = @"AlteredDecideSameSetConfiguration";
  v592 = [NSDictionary dictionaryWithObjects:&v1843 forKeys:&v1842 count:1];
  v1851[3] = v592;
  v1850[4] = @"ControlSetTargetsSpecified";
  v1840 = v2;
  v1841 = @"SetTargetDecideSameTarget";
  v591 = [NSDictionary dictionaryWithObjects:&v1841 forKeys:&v1840 count:1];
  v1851[4] = v591;
  v1850[5] = @"ClientDetermineGroupsAvailable";
  v1838 = v2;
  v1839 = @"ClientNewerReplySameOrEmptyDetermine";
  v590 = [NSDictionary dictionaryWithObjects:&v1839 forKeys:&v1838 count:1];
  v1851[5] = v590;
  v1850[6] = @"ClientDetermineAllAvailable";
  v1836 = v2;
  v1837 = @"ClientFailWrongMode";
  v589 = [NSDictionary dictionaryWithObjects:&v1837 forKeys:&v1836 count:1];
  v1851[6] = v589;
  v1850[7] = @"ClientDownloadAlreadyStaged";
  v1834 = v2;
  v1835 = @"ClientNothingStaged";
  v588 = [NSDictionary dictionaryWithObjects:&v1835 forKeys:&v1834 count:1];
  v1851[7] = v588;
  v1850[8] = @"ClientDownloadGroupsAvailable";
  v1832 = v2;
  v1833 = @"ClientNewerReplyEmptyDownload";
  v587 = [NSDictionary dictionaryWithObjects:&v1833 forKeys:&v1832 count:1];
  v1851[8] = v587;
  v1850[9] = @"ClientDownloadAllAvailable";
  v1830 = v2;
  v1831 = @"ClientInvalidStagingPhase";
  v586 = [NSDictionary dictionaryWithObjects:&v1831 forKeys:&v1830 count:1];
  v1851[9] = v586;
  v1850[10] = @"ClientCancelCompletion";
  v1828 = v2;
  v1829 = @"ClientCancelDesireForCompletion";
  v585 = [NSDictionary dictionaryWithObjects:&v1829 forKeys:&v1828 count:1];
  v1851[10] = v585;
  v1850[11] = @"ClientPurgeAll";
  v1826 = v2;
  v1827 = @"ClientPurgeDecideStagingClient";
  v584 = [NSDictionary dictionaryWithObjects:&v1827 forKeys:&v1826 count:1];
  v1851[11] = v584;
  v1850[12] = @"ClientEraseAll";
  v1824[0] = v3;
  v1824[1] = v2;
  v1825[0] = @"ErasingDetermine";
  v1825[1] = @"ClientAcceptEraseActiveJob";
  v583 = [NSDictionary dictionaryWithObjects:v1825 forKeys:v1824 count:2];
  v1851[12] = v583;
  v1850[13] = @"JobFailedToStart";
  v1822 = v2;
  v1823 = @"FailRequiredDetermineBlocksOTA";
  v582 = [NSDictionary dictionaryWithObjects:&v1823 forKeys:&v1822 count:1];
  v1851[13] = v582;
  v1850[14] = @"JobDetermineAvailableSuccess";
  v1820 = v2;
  v1821 = @"AddToAvailableDecideMoreCandidates";
  v581 = [NSDictionary dictionaryWithObjects:&v1821 forKeys:&v1820 count:1];
  v1851[14] = v581;
  v1850[15] = @"JobDetermineAvailableFailure";
  v1818 = v2;
  v1819 = @"DecideRequiredErrorBlocksOTA";
  v580 = [NSDictionary dictionaryWithObjects:&v1819 forKeys:&v1818 count:1];
  v1851[15] = v580;
  v1850[16] = @"TimerFiredDetermining";
  v1816 = v2;
  v1817 = @"DecideTimerDeterminingValid";
  v579 = [NSDictionary dictionaryWithObjects:&v1817 forKeys:&v1816 count:1];
  v1851[16] = v579;
  v1850[17] = @"DetermineMoreCandidates";
  v1814 = v2;
  v1815 = @"NextCandidateBeginDetermine";
  v578 = [NSDictionary dictionaryWithObjects:&v1815 forKeys:&v1814 count:1];
  v1851[17] = v578;
  v1850[18] = @"DetermineDoneCandidates";
  v1812 = v2;
  v1813 = @"DoneCandidatesRequiredDecideOptional";
  v577 = [NSDictionary dictionaryWithObjects:&v1813 forKeys:&v1812 count:1];
  v1851[18] = v577;
  v1850[19] = @"DeterminedRequiredWithOptional";
  v1810 = v3;
  v1811 = @"OptionalDeterminingAvailable";
  v576 = [NSDictionary dictionaryWithObjects:&v1811 forKeys:&v1810 count:1];
  v1851[19] = v576;
  v1850[20] = @"DetermineNothingAvailable";
  v1808[0] = v3;
  v1808[1] = v2;
  v1809[0] = @"GroupsAvailableContent";
  v1809[1] = @"ReplyNoCandidatesPurgeAll";
  v575 = [NSDictionary dictionaryWithObjects:v1809 forKeys:v1808 count:2];
  v1851[20] = v575;
  v1850[21] = @"DetermineNothingOtherAvailable";
  v1806[0] = v3;
  v1806[1] = v2;
  v1807[0] = @"GroupsAvailableContent";
  v1807[1] = @"ReplyNoCandidatesHaveOtherTarget";
  v574 = [NSDictionary dictionaryWithObjects:v1807 forKeys:v1806 count:2];
  v1851[21] = v574;
  v1850[22] = @"DetermineHaveAvailable";
  v1804[0] = v3;
  v1804[1] = v2;
  v1805[0] = @"GroupsAvailableContent";
  v1805[1] = @"ReplyHaveAvailable";
  v573 = [NSDictionary dictionaryWithObjects:v1805 forKeys:v1804 count:2];
  v1851[22] = v573;
  v1850[23] = @"RequiredErrorNonFatal";
  v1802 = v2;
  v1803 = @"DecideMoreCandidates";
  v572 = [NSDictionary dictionaryWithObjects:&v1803 forKeys:&v1802 count:1];
  v1851[23] = v572;
  v1850[24] = @"RequiredErrorBlocksOTA";
  v1800 = v2;
  v1801 = @"FailRequiredDetermineBlocksOTA";
  v571 = [NSDictionary dictionaryWithObjects:&v1801 forKeys:&v1800 count:1];
  v1851[24] = v571;
  v1850[25] = @"ClientAlteredForgetDetermine";
  v1798[0] = v3;
  v1798[1] = v2;
  v1799[0] = @"CancelingIgnoreDetermine";
  v1799[1] = @"CancelActiveJob";
  v570 = [NSDictionary dictionaryWithObjects:v1799 forKeys:v1798 count:2];
  v1851[25] = v570;
  v1850[26] = @"ClientSetTargetsForgetDetermine";
  v1796[0] = v3;
  v1796[1] = v2;
  v1797[0] = @"CancelingIgnoreDetermine";
  v1797[1] = @"CancelActiveJob";
  v569 = [NSDictionary dictionaryWithObjects:v1797 forKeys:v1796 count:2];
  v1851[26] = v569;
  v1850[27] = @"TargetHaveOtherAvailable";
  v1794[0] = v3;
  v1794[1] = v2;
  v1795[0] = @"CancelingDetermine";
  v1795[1] = @"ClientAcceptCancelActiveJob";
  v568 = [NSDictionary dictionaryWithObjects:v1795 forKeys:v1794 count:2];
  v1851[27] = v568;
  v1850[28] = @"TargetNoOtherAvailable";
  v1792[0] = v3;
  v1792[1] = v2;
  v1793[0] = @"CancelingDetermine";
  v1793[1] = @"ClientAcceptCancelActiveJob";
  v567 = [NSDictionary dictionaryWithObjects:v1793 forKeys:v1792 count:2];
  v1851[28] = v567;
  v1850[29] = @"UnstagedFromControlCancelJob";
  v1790[0] = v3;
  v1790[1] = v2;
  v1791[0] = @"CancelingDetermine";
  v1791[1] = @"CancelActiveJob";
  v566 = [NSDictionary dictionaryWithObjects:v1791 forKeys:v1790 count:2];
  v1851[29] = v566;
  v1850[30] = @"TimeoutValidActiveDetermine";
  v1788 = v3;
  v1789 = @"RequiredDeterminingLast";
  v565 = [NSDictionary dictionaryWithObjects:&v1789 forKeys:&v1788 count:1];
  v1851[30] = v565;
  v1850[31] = @"PurgeAcceptedRemoveDownloaded";
  v1786 = v2;
  v1787 = @"RemoveAllReplyPurged";
  v564 = [NSDictionary dictionaryWithObjects:&v1787 forKeys:&v1786 count:1];
  v1851[31] = v564;
  v1850[32] = @"PurgeAcceptedRemoveAll";
  v1784 = v2;
  v1785 = @"RemoveAllReplyPurged";
  v563 = [NSDictionary dictionaryWithObjects:&v1785 forKeys:&v1784 count:1];
  v1851[32] = v563;
  v1850[33] = @"EliminateCurrentJob";
  v1782[0] = v3;
  v1782[1] = v2;
  v1783[0] = @"DetermineEliminating";
  v1783[1] = @"EliminateCancelActiveJob";
  v562 = [NSDictionary dictionaryWithObjects:v1783 forKeys:v1782 count:2];
  v1851[33] = v562;
  v561 = [NSDictionary dictionaryWithObjects:v1851 forKeys:v1850 count:34];
  v2013[5] = v561;
  v2012[6] = @"OptionalDeterminingAvailable";
  v1780[0] = @"ControlForceUnstage";
  v1778 = v2;
  v1779 = @"ControlUnstagedDecideCancelJob";
  v560 = [NSDictionary dictionaryWithObjects:&v1779 forKeys:&v1778 count:1];
  v1781[0] = v560;
  v1780[1] = @"ControlEliminateAssetSelector";
  v1776 = v2;
  v1777 = @"EliminateDeterminingDecideMatch";
  v559 = [NSDictionary dictionaryWithObjects:&v1777 forKeys:&v1776 count:1];
  v1781[1] = v559;
  v1780[2] = @"ControlEliminateSetIdentifier";
  v1774 = v2;
  v1775 = @"SetEliminateDeterminingDecideMatch";
  v558 = [NSDictionary dictionaryWithObjects:&v1775 forKeys:&v1774 count:1];
  v1781[2] = v558;
  v1780[3] = @"ControlAlteredSetConfiguration";
  v1772 = v2;
  v1773 = @"AlteredDecideSameSetConfiguration";
  v557 = [NSDictionary dictionaryWithObjects:&v1773 forKeys:&v1772 count:1];
  v1781[3] = v557;
  v1780[4] = @"ControlSetTargetsSpecified";
  v1770 = v2;
  v1771 = @"SetTargetDecideSameTarget";
  v556 = [NSDictionary dictionaryWithObjects:&v1771 forKeys:&v1770 count:1];
  v1781[4] = v556;
  v1780[5] = @"ClientDetermineGroupsAvailable";
  v1768 = v2;
  v1769 = @"ClientNewerReplySameOrEmptyDetermine";
  v555 = [NSDictionary dictionaryWithObjects:&v1769 forKeys:&v1768 count:1];
  v1781[5] = v555;
  v1780[6] = @"ClientDetermineAllAvailable";
  v1766 = v2;
  v1767 = @"ClientFailWrongMode";
  v554 = [NSDictionary dictionaryWithObjects:&v1767 forKeys:&v1766 count:1];
  v1781[6] = v554;
  v1780[7] = @"ClientDownloadAlreadyStaged";
  v1764 = v2;
  v1765 = @"ClientNothingStaged";
  v553 = [NSDictionary dictionaryWithObjects:&v1765 forKeys:&v1764 count:1];
  v1781[7] = v553;
  v1780[8] = @"ClientDownloadGroupsAvailable";
  v1762 = v2;
  v1763 = @"ClientNewerReplyEmptyDownload";
  v552 = [NSDictionary dictionaryWithObjects:&v1763 forKeys:&v1762 count:1];
  v1781[8] = v552;
  v1780[9] = @"ClientDownloadAllAvailable";
  v1760 = v2;
  v1761 = @"ClientInvalidStagingPhase";
  v551 = [NSDictionary dictionaryWithObjects:&v1761 forKeys:&v1760 count:1];
  v1781[9] = v551;
  v1780[10] = @"ClientCancelCompletion";
  v1758 = v2;
  v1759 = @"ClientCancelDesireForCompletion";
  v550 = [NSDictionary dictionaryWithObjects:&v1759 forKeys:&v1758 count:1];
  v1781[10] = v550;
  v1780[11] = @"ClientPurgeAll";
  v1756 = v2;
  v1757 = @"ClientPurgeDecideStagingClient";
  v549 = [NSDictionary dictionaryWithObjects:&v1757 forKeys:&v1756 count:1];
  v1781[11] = v549;
  v1780[12] = @"ClientEraseAll";
  v1754[0] = v3;
  v1754[1] = v2;
  v1755[0] = @"ErasingDetermine";
  v1755[1] = @"ClientAcceptEraseActiveJob";
  v548 = [NSDictionary dictionaryWithObjects:v1755 forKeys:v1754 count:2];
  v1781[12] = v548;
  v1780[13] = @"JobFailedToStart";
  v1752 = v2;
  v1753 = @"DecideMoreCandidates";
  v547 = [NSDictionary dictionaryWithObjects:&v1753 forKeys:&v1752 count:1];
  v1781[13] = v547;
  v1780[14] = @"JobDetermineAvailableSuccess";
  v1750 = v2;
  v1751 = @"AddToAvailableDecideMoreCandidates";
  v546 = [NSDictionary dictionaryWithObjects:&v1751 forKeys:&v1750 count:1];
  v1781[14] = v546;
  v1780[15] = @"JobDetermineAvailableFailure";
  v1748 = v2;
  v1749 = @"DecideMoreCandidates";
  v545 = [NSDictionary dictionaryWithObjects:&v1749 forKeys:&v1748 count:1];
  v1781[15] = v545;
  v1780[16] = @"TimerFiredDetermining";
  v1746 = v2;
  v1747 = @"DecideTimerDeterminingValid";
  v544 = [NSDictionary dictionaryWithObjects:&v1747 forKeys:&v1746 count:1];
  v1781[16] = v544;
  v1780[17] = @"DetermineMoreCandidates";
  v1744 = v2;
  v1745 = @"NextCandidateBeginDetermine";
  v543 = [NSDictionary dictionaryWithObjects:&v1745 forKeys:&v1744 count:1];
  v1781[17] = v543;
  v1780[18] = @"DetermineDoneCandidates";
  v1742 = v2;
  v1743 = @"DoneCandidatesDecideAnyAvailable";
  v542 = [NSDictionary dictionaryWithObjects:&v1743 forKeys:&v1742 count:1];
  v1781[18] = v542;
  v1780[19] = @"DetermineNothingAvailable";
  v1740[0] = v3;
  v1740[1] = v2;
  v1741[0] = @"GroupsAvailableContent";
  v1741[1] = @"ReplyNoCandidatesPurgeAll";
  v541 = [NSDictionary dictionaryWithObjects:v1741 forKeys:v1740 count:2];
  v1781[19] = v541;
  v1780[20] = @"DetermineNothingOtherAvailable";
  v1738[0] = v3;
  v1738[1] = v2;
  v1739[0] = @"GroupsAvailableContent";
  v1739[1] = @"ReplyNoCandidates";
  v540 = [NSDictionary dictionaryWithObjects:v1739 forKeys:v1738 count:2];
  v1781[20] = v540;
  v1780[21] = @"DetermineHaveAvailable";
  v1736[0] = v3;
  v1736[1] = v2;
  v1737[0] = @"GroupsAvailableContent";
  v1737[1] = @"ReplyHaveAvailable";
  v539 = [NSDictionary dictionaryWithObjects:v1737 forKeys:v1736 count:2];
  v1781[21] = v539;
  v1780[22] = @"ClientAlteredForgetDetermine";
  v1734[0] = v3;
  v1734[1] = v2;
  v1735[0] = @"CancelingIgnoreDetermine";
  v1735[1] = @"CancelActiveJob";
  v538 = [NSDictionary dictionaryWithObjects:v1735 forKeys:v1734 count:2];
  v1781[22] = v538;
  v1780[23] = @"ClientSetTargetsForgetDetermine";
  v1732[0] = v3;
  v1732[1] = v2;
  v1733[0] = @"CancelingIgnoreDetermine";
  v1733[1] = @"CancelActiveJob";
  v537 = [NSDictionary dictionaryWithObjects:v1733 forKeys:v1732 count:2];
  v1781[23] = v537;
  v1780[24] = @"TargetHaveOtherAvailable";
  v1730[0] = v3;
  v1730[1] = v2;
  v1731[0] = @"CancelingDetermine";
  v1731[1] = @"ClientAcceptCancelActiveJob";
  v536 = [NSDictionary dictionaryWithObjects:v1731 forKeys:v1730 count:2];
  v1781[24] = v536;
  v1780[25] = @"TargetNoOtherAvailable";
  v1728[0] = v3;
  v1728[1] = v2;
  v1729[0] = @"CancelingDetermine";
  v1729[1] = @"ClientAcceptCancelActiveJob";
  v535 = [NSDictionary dictionaryWithObjects:v1729 forKeys:v1728 count:2];
  v1781[25] = v535;
  v1780[26] = @"UnstagedFromControlCancelJob";
  v1726[0] = v3;
  v1726[1] = v2;
  v1727[0] = @"CancelingDetermine";
  v1727[1] = @"CancelActiveJob";
  v534 = [NSDictionary dictionaryWithObjects:v1727 forKeys:v1726 count:2];
  v1781[26] = v534;
  v1780[27] = @"TimeoutValidActiveDetermine";
  v1724 = v3;
  v1725 = @"OptionalDeterminingLast";
  v533 = [NSDictionary dictionaryWithObjects:&v1725 forKeys:&v1724 count:1];
  v1781[27] = v533;
  v1780[28] = @"PurgeAcceptedRemoveDownloaded";
  v1722 = v2;
  v1723 = @"RemoveAllReplyPurged";
  v532 = [NSDictionary dictionaryWithObjects:&v1723 forKeys:&v1722 count:1];
  v1781[28] = v532;
  v1780[29] = @"PurgeAcceptedRemoveAll";
  v1720 = v2;
  v1721 = @"RemoveAllReplyPurged";
  v531 = [NSDictionary dictionaryWithObjects:&v1721 forKeys:&v1720 count:1];
  v1781[29] = v531;
  v1780[30] = @"EliminateCurrentJob";
  v1718[0] = v3;
  v1718[1] = v2;
  v1719[0] = @"DetermineEliminating";
  v1719[1] = @"EliminateCancelActiveJob";
  v530 = [NSDictionary dictionaryWithObjects:v1719 forKeys:v1718 count:2];
  v1781[30] = v530;
  v529 = [NSDictionary dictionaryWithObjects:v1781 forKeys:v1780 count:31];
  v2013[6] = v529;
  v2012[7] = @"AllDeterminingAvailable";
  v1716[0] = @"ControlForceUnstage";
  v1714 = v2;
  v1715 = @"ControlUnstagedDecideCancelJob";
  v528 = [NSDictionary dictionaryWithObjects:&v1715 forKeys:&v1714 count:1];
  v1717[0] = v528;
  v1716[1] = @"ControlEliminateAssetSelector";
  v1712 = v2;
  v1713 = @"EliminateDeterminingDecideMatch";
  v527 = [NSDictionary dictionaryWithObjects:&v1713 forKeys:&v1712 count:1];
  v1717[1] = v527;
  v1716[2] = @"ControlEliminateSetIdentifier";
  v1710 = v2;
  v1711 = @"SetEliminateDeterminingDecideMatch";
  v526 = [NSDictionary dictionaryWithObjects:&v1711 forKeys:&v1710 count:1];
  v1717[2] = v526;
  v1716[3] = @"ControlAlteredSetConfiguration";
  v1708[0] = v3;
  v1708[1] = v2;
  v1709[0] = @"CancelingDetermine";
  v1709[1] = @"AlteredInvalAllAvailableCancelActiveJob";
  v525 = [NSDictionary dictionaryWithObjects:v1709 forKeys:v1708 count:2];
  v1717[3] = v525;
  v1716[4] = @"ControlSetTargetsSpecified";
  v1706[0] = v3;
  v1706[1] = v2;
  v1707[0] = @"CancelingDetermine";
  v1707[1] = @"SetTargetInvalAllAvailableCancelActiveJob";
  v524 = [NSDictionary dictionaryWithObjects:v1707 forKeys:v1706 count:2];
  v1717[4] = v524;
  v1716[5] = @"ClientDetermineGroupsAvailable";
  v1704 = v2;
  v1705 = @"ClientNewerReplyEmptyDetermine";
  v523 = [NSDictionary dictionaryWithObjects:&v1705 forKeys:&v1704 count:1];
  v1717[5] = v523;
  v1716[6] = @"ClientDetermineAllAvailable";
  v1702 = v2;
  v1703 = @"ClientContinueUsingLatestRequest";
  v522 = [NSDictionary dictionaryWithObjects:&v1703 forKeys:&v1702 count:1];
  v1717[6] = v522;
  v1716[7] = @"ClientDownloadAlreadyStaged";
  v1700 = v2;
  v1701 = @"ClientNothingStaged";
  v521 = [NSDictionary dictionaryWithObjects:&v1701 forKeys:&v1700 count:1];
  v1717[7] = v521;
  v1716[8] = @"ClientDownloadGroupsAvailable";
  v1698 = v2;
  v1699 = @"ClientNewerReplyEmptyDownload";
  v520 = [NSDictionary dictionaryWithObjects:&v1699 forKeys:&v1698 count:1];
  v1717[8] = v520;
  v1716[9] = @"ClientDownloadAllAvailable";
  v1696 = v2;
  v1697 = @"ClientInvalidStagingPhase";
  v519 = [NSDictionary dictionaryWithObjects:&v1697 forKeys:&v1696 count:1];
  v1717[9] = v519;
  v1716[10] = @"ClientCancelCompletion";
  v1694 = v2;
  v1695 = @"ClientCancelDesireForCompletion";
  v518 = [NSDictionary dictionaryWithObjects:&v1695 forKeys:&v1694 count:1];
  v1717[10] = v518;
  v1716[11] = @"ClientPurgeAll";
  v1692[0] = v3;
  v1692[1] = v2;
  v1693[0] = @"CancelingDetermine";
  v1693[1] = @"ClientAcceptCancelActiveJob";
  v517 = [NSDictionary dictionaryWithObjects:v1693 forKeys:v1692 count:2];
  v1717[11] = v517;
  v1716[12] = @"ClientEraseAll";
  v1690[0] = v3;
  v1690[1] = v2;
  v1691[0] = @"ErasingDetermine";
  v1691[1] = @"ClientAcceptEraseActiveJob";
  v516 = [NSDictionary dictionaryWithObjects:v1691 forKeys:v1690 count:2];
  v1717[12] = v516;
  v1716[13] = @"JobFailedToStart";
  v1688 = v2;
  v1689 = @"DecideMoreCandidates";
  v515 = [NSDictionary dictionaryWithObjects:&v1689 forKeys:&v1688 count:1];
  v1717[13] = v515;
  v1716[14] = @"JobDetermineAvailableSuccess";
  v1686 = v2;
  v1687 = @"AddToAvailableDecideMoreCandidates";
  v514 = [NSDictionary dictionaryWithObjects:&v1687 forKeys:&v1686 count:1];
  v1717[14] = v514;
  v1716[15] = @"JobDetermineAvailableFailure";
  v1684 = v2;
  v1685 = @"DecideMoreCandidates";
  v513 = [NSDictionary dictionaryWithObjects:&v1685 forKeys:&v1684 count:1];
  v1717[15] = v513;
  v1716[16] = @"TimerFiredDetermining";
  v1682 = v2;
  v1683 = @"DecideTimerDeterminingValid";
  v512 = [NSDictionary dictionaryWithObjects:&v1683 forKeys:&v1682 count:1];
  v1717[16] = v512;
  v1716[17] = @"DetermineMoreCandidates";
  v1680 = v2;
  v1681 = @"NextCandidateBeginDetermine";
  v511 = [NSDictionary dictionaryWithObjects:&v1681 forKeys:&v1680 count:1];
  v1717[17] = v511;
  v1716[18] = @"DetermineDoneCandidates";
  v1678 = v2;
  v1679 = @"DoneCandidatesDecideAnyAvailable";
  v510 = [NSDictionary dictionaryWithObjects:&v1679 forKeys:&v1678 count:1];
  v1717[18] = v510;
  v1716[19] = @"DetermineNothingAvailable";
  v1676[0] = v3;
  v1676[1] = v2;
  v1677[0] = @"NothingAvailable";
  v1677[1] = @"ReplyNoCandidatesPurgeAll";
  v509 = [NSDictionary dictionaryWithObjects:v1677 forKeys:v1676 count:2];
  v1717[19] = v509;
  v1716[20] = @"DetermineHaveAvailable";
  v1674[0] = v3;
  v1674[1] = v2;
  v1675[0] = @"AllAvailableContent";
  v1675[1] = @"ReplyHaveAvailable";
  v508 = [NSDictionary dictionaryWithObjects:v1675 forKeys:v1674 count:2];
  v1717[20] = v508;
  v1716[21] = @"UnstagedFromControlCancelJob";
  v1672[0] = v3;
  v1672[1] = v2;
  v1673[0] = @"CancelingDetermine";
  v1673[1] = @"CancelActiveJob";
  v507 = [NSDictionary dictionaryWithObjects:v1673 forKeys:v1672 count:2];
  v1717[21] = v507;
  v1716[22] = @"TimeoutValidActiveDetermine";
  v1670 = v3;
  v1671 = @"AllDeterminingLast";
  v506 = [NSDictionary dictionaryWithObjects:&v1671 forKeys:&v1670 count:1];
  v1717[22] = v506;
  v1716[23] = @"EliminateCurrentJob";
  v1668[0] = v3;
  v1668[1] = v2;
  v1669[0] = @"DetermineEliminating";
  v1669[1] = @"EliminateCancelActiveJob";
  v505 = [NSDictionary dictionaryWithObjects:v1669 forKeys:v1668 count:2];
  v1717[23] = v505;
  v504 = [NSDictionary dictionaryWithObjects:v1717 forKeys:v1716 count:24];
  v2013[7] = v504;
  v2012[8] = @"RequiredDeterminingLast";
  v1666[0] = @"ControlForceUnstage";
  v1664 = v2;
  v1665 = @"ControlUnstagedDecideCancelJob";
  v503 = [NSDictionary dictionaryWithObjects:&v1665 forKeys:&v1664 count:1];
  v1667[0] = v503;
  v1666[1] = @"ControlEliminateAssetSelector";
  v1662 = v2;
  v1663 = @"EliminateDeterminingDecideMatch";
  v502 = [NSDictionary dictionaryWithObjects:&v1663 forKeys:&v1662 count:1];
  v1667[1] = v502;
  v1666[2] = @"ControlEliminateSetIdentifier";
  v1660 = v2;
  v1661 = @"SetEliminateDeterminingDecideMatch";
  v501 = [NSDictionary dictionaryWithObjects:&v1661 forKeys:&v1660 count:1];
  v1667[2] = v501;
  v1666[3] = @"ControlAlteredSetConfiguration";
  v1658 = v2;
  v1659 = @"AlteredDecideSameSetConfiguration";
  v500 = [NSDictionary dictionaryWithObjects:&v1659 forKeys:&v1658 count:1];
  v1667[3] = v500;
  v1666[4] = @"ControlSetTargetsSpecified";
  v1656 = v2;
  v1657 = @"SetTargetDecideSameTarget";
  v499 = [NSDictionary dictionaryWithObjects:&v1657 forKeys:&v1656 count:1];
  v1667[4] = v499;
  v1666[5] = @"ClientDetermineGroupsAvailable";
  v1654 = v2;
  v1655 = @"ClientNewerReplySameOrEmptyDetermine";
  v498 = [NSDictionary dictionaryWithObjects:&v1655 forKeys:&v1654 count:1];
  v1667[5] = v498;
  v1666[6] = @"ClientDetermineAllAvailable";
  v1652 = v2;
  v1653 = @"ClientFailWrongMode";
  v497 = [NSDictionary dictionaryWithObjects:&v1653 forKeys:&v1652 count:1];
  v1667[6] = v497;
  v1666[7] = @"ClientDownloadAlreadyStaged";
  v1650 = v2;
  v1651 = @"ClientNothingStaged";
  v496 = [NSDictionary dictionaryWithObjects:&v1651 forKeys:&v1650 count:1];
  v1667[7] = v496;
  v1666[8] = @"ClientDownloadGroupsAvailable";
  v1648 = v2;
  v1649 = @"ClientNewerReplyEmptyDownload";
  v495 = [NSDictionary dictionaryWithObjects:&v1649 forKeys:&v1648 count:1];
  v1667[8] = v495;
  v1666[9] = @"ClientDownloadAllAvailable";
  v1646 = v2;
  v1647 = @"ClientInvalidStagingPhase";
  v494 = [NSDictionary dictionaryWithObjects:&v1647 forKeys:&v1646 count:1];
  v1667[9] = v494;
  v1666[10] = @"ClientCancelCompletion";
  v1644 = v2;
  v1645 = @"ClientCancelDesireForCompletion";
  v493 = [NSDictionary dictionaryWithObjects:&v1645 forKeys:&v1644 count:1];
  v1667[10] = v493;
  v1666[11] = @"ClientPurgeAll";
  v1642 = v2;
  v1643 = @"ClientPurgeDecideStagingClient";
  v492 = [NSDictionary dictionaryWithObjects:&v1643 forKeys:&v1642 count:1];
  v1667[11] = v492;
  v1666[12] = @"ClientEraseAll";
  v1640[0] = v3;
  v1640[1] = v2;
  v1641[0] = @"ErasingDetermine";
  v1641[1] = @"ClientAcceptEraseActiveJob";
  v491 = [NSDictionary dictionaryWithObjects:v1641 forKeys:v1640 count:2];
  v1667[12] = v491;
  v1666[13] = @"JobFailedToStart";
  v1638 = v2;
  v1639 = @"FailRequiredDetermineBlocksOTA";
  v490 = [NSDictionary dictionaryWithObjects:&v1639 forKeys:&v1638 count:1];
  v1667[13] = v490;
  v1666[14] = @"JobDetermineAvailableSuccess";
  v1636 = v2;
  v1637 = @"AddToAvailableDecideRequiredAvailable";
  v489 = [NSDictionary dictionaryWithObjects:&v1637 forKeys:&v1636 count:1];
  v1667[14] = v489;
  v1666[15] = @"JobDetermineAvailableFailure";
  v1634 = v2;
  v1635 = @"DecideRequiredErrorBlocksOTA";
  v488 = [NSDictionary dictionaryWithObjects:&v1635 forKeys:&v1634 count:1];
  v1667[15] = v488;
  v1666[16] = @"TimerFiredDetermining";
  v1632 = v2;
  v1633 = v4;
  v487 = [NSDictionary dictionaryWithObjects:&v1633 forKeys:&v1632 count:1];
  v1667[16] = v487;
  v1666[17] = @"DetermineDoneCandidates";
  v1630 = v2;
  v1631 = @"DoneCandidatesDecideAnyAvailable";
  v486 = [NSDictionary dictionaryWithObjects:&v1631 forKeys:&v1630 count:1];
  v1667[17] = v486;
  v1666[18] = @"DetermineNothingAvailable";
  v1628[0] = v3;
  v1628[1] = v2;
  v1629[0] = @"GroupsAvailableContent";
  v1629[1] = @"ReplyNoCandidatesPurgeAll";
  v485 = [NSDictionary dictionaryWithObjects:v1629 forKeys:v1628 count:2];
  v1667[18] = v485;
  v1666[19] = @"DetermineNothingOtherAvailable";
  v1626[0] = v3;
  v1626[1] = v2;
  v1627[0] = @"GroupsAvailableContent";
  v1627[1] = @"ReplyNoCandidates";
  v484 = [NSDictionary dictionaryWithObjects:v1627 forKeys:v1626 count:2];
  v1667[19] = v484;
  v1666[20] = @"RequiredErrorNonFatal";
  v1624 = v2;
  v1625 = @"IgnoreFailureDecideRequiredAvailable";
  v483 = [NSDictionary dictionaryWithObjects:&v1625 forKeys:&v1624 count:1];
  v1667[20] = v483;
  v1666[21] = @"RequiredErrorBlocksOTA";
  v1622 = v2;
  v1623 = @"FailRequiredDetermineBlocksOTA";
  v482 = [NSDictionary dictionaryWithObjects:&v1623 forKeys:&v1622 count:1];
  v1667[21] = v482;
  v1666[22] = @"DetermineHaveAvailable";
  v1620[0] = v3;
  v1620[1] = v2;
  v1621[0] = @"GroupsAvailableContent";
  v1621[1] = @"ReplyHaveAvailable";
  v481 = [NSDictionary dictionaryWithObjects:v1621 forKeys:v1620 count:2];
  v1667[22] = v481;
  v1666[23] = @"ClientAlteredForgetDetermine";
  v1618[0] = v3;
  v1618[1] = v2;
  v1619[0] = @"CancelingIgnoreDetermine";
  v1619[1] = @"CancelActiveJob";
  v480 = [NSDictionary dictionaryWithObjects:v1619 forKeys:v1618 count:2];
  v1667[23] = v480;
  v1666[24] = @"ClientSetTargetsForgetDetermine";
  v1616[0] = v3;
  v1616[1] = v2;
  v1617[0] = @"CancelingIgnoreDetermine";
  v1617[1] = @"CancelActiveJob";
  v479 = [NSDictionary dictionaryWithObjects:v1617 forKeys:v1616 count:2];
  v1667[24] = v479;
  v1666[25] = @"TargetHaveOtherAvailable";
  v1614[0] = v3;
  v1614[1] = v2;
  v1615[0] = @"CancelingDetermine";
  v1615[1] = @"ClientAcceptCancelActiveJob";
  v478 = [NSDictionary dictionaryWithObjects:v1615 forKeys:v1614 count:2];
  v1667[25] = v478;
  v1666[26] = @"TargetNoOtherAvailable";
  v1612[0] = v3;
  v1612[1] = v2;
  v1613[0] = @"CancelingDetermine";
  v1613[1] = @"ClientAcceptCancelActiveJob";
  v477 = [NSDictionary dictionaryWithObjects:v1613 forKeys:v1612 count:2];
  v1667[26] = v477;
  v1666[27] = @"UnstagedFromControlCancelJob";
  v1610[0] = v3;
  v1610[1] = v2;
  v1611[0] = @"CancelingDetermine";
  v1611[1] = @"CancelActiveJob";
  v476 = [NSDictionary dictionaryWithObjects:v1611 forKeys:v1610 count:2];
  v1667[27] = v476;
  v1666[28] = @"PurgeAcceptedRemoveDownloaded";
  v1608 = v2;
  v1609 = @"RemoveAllReplyPurged";
  v475 = [NSDictionary dictionaryWithObjects:&v1609 forKeys:&v1608 count:1];
  v1667[28] = v475;
  v1666[29] = @"PurgeAcceptedRemoveAll";
  v1606 = v2;
  v1607 = @"RemoveAllReplyPurged";
  v474 = [NSDictionary dictionaryWithObjects:&v1607 forKeys:&v1606 count:1];
  v1667[29] = v474;
  v1666[30] = @"EliminateCurrentJob";
  v1604[0] = v3;
  v1604[1] = v2;
  v1605[0] = @"DetermineEliminating";
  v1605[1] = @"EliminateCancelActiveJob";
  v473 = [NSDictionary dictionaryWithObjects:v1605 forKeys:v1604 count:2];
  v1667[30] = v473;
  v472 = [NSDictionary dictionaryWithObjects:v1667 forKeys:v1666 count:31];
  v2013[8] = v472;
  v2012[9] = @"OptionalDeterminingLast";
  v1602[0] = @"ControlForceUnstage";
  v1600 = v2;
  v1601 = @"ControlUnstagedDecideCancelJob";
  v471 = [NSDictionary dictionaryWithObjects:&v1601 forKeys:&v1600 count:1];
  v1603[0] = v471;
  v1602[1] = @"ControlEliminateAssetSelector";
  v1598 = v2;
  v1599 = @"EliminateDeterminingDecideMatch";
  v470 = [NSDictionary dictionaryWithObjects:&v1599 forKeys:&v1598 count:1];
  v1603[1] = v470;
  v1602[2] = @"ControlEliminateSetIdentifier";
  v1596 = v2;
  v1597 = @"SetEliminateDeterminingDecideMatch";
  v469 = [NSDictionary dictionaryWithObjects:&v1597 forKeys:&v1596 count:1];
  v1603[2] = v469;
  v1602[3] = @"ControlAlteredSetConfiguration";
  v1594 = v2;
  v1595 = @"AlteredDecideSameSetConfiguration";
  v468 = [NSDictionary dictionaryWithObjects:&v1595 forKeys:&v1594 count:1];
  v1603[3] = v468;
  v1602[4] = @"ControlSetTargetsSpecified";
  v1592 = v2;
  v1593 = @"SetTargetDecideSameTarget";
  v467 = [NSDictionary dictionaryWithObjects:&v1593 forKeys:&v1592 count:1];
  v1603[4] = v467;
  v1602[5] = @"ClientDetermineGroupsAvailable";
  v1590 = v2;
  v1591 = @"ClientNewerReplySameOrEmptyDetermine";
  v466 = [NSDictionary dictionaryWithObjects:&v1591 forKeys:&v1590 count:1];
  v1603[5] = v466;
  v1602[6] = @"ClientDetermineAllAvailable";
  v1588 = v2;
  v1589 = @"ClientFailWrongMode";
  v465 = [NSDictionary dictionaryWithObjects:&v1589 forKeys:&v1588 count:1];
  v1603[6] = v465;
  v1602[7] = @"ClientDownloadAlreadyStaged";
  v1586 = v2;
  v1587 = @"ClientNothingStaged";
  v464 = [NSDictionary dictionaryWithObjects:&v1587 forKeys:&v1586 count:1];
  v1603[7] = v464;
  v1602[8] = @"ClientDownloadGroupsAvailable";
  v1584 = v2;
  v1585 = @"ClientNewerReplyEmptyDownload";
  v463 = [NSDictionary dictionaryWithObjects:&v1585 forKeys:&v1584 count:1];
  v1603[8] = v463;
  v1602[9] = @"ClientDownloadAllAvailable";
  v1582 = v2;
  v1583 = @"ClientInvalidStagingPhase";
  v462 = [NSDictionary dictionaryWithObjects:&v1583 forKeys:&v1582 count:1];
  v1603[9] = v462;
  v1602[10] = @"ClientCancelCompletion";
  v1580 = v2;
  v1581 = @"ClientCancelDesireForCompletion";
  v461 = [NSDictionary dictionaryWithObjects:&v1581 forKeys:&v1580 count:1];
  v1603[10] = v461;
  v1602[11] = @"ClientPurgeAll";
  v1578 = v2;
  v1579 = @"ClientPurgeDecideStagingClient";
  v460 = [NSDictionary dictionaryWithObjects:&v1579 forKeys:&v1578 count:1];
  v1603[11] = v460;
  v1602[12] = @"ClientEraseAll";
  v1576[0] = v3;
  v1576[1] = v2;
  v1577[0] = @"ErasingDetermine";
  v1577[1] = @"ClientAcceptEraseActiveJob";
  v459 = [NSDictionary dictionaryWithObjects:v1577 forKeys:v1576 count:2];
  v1603[12] = v459;
  v1602[13] = @"JobFailedToStart";
  v1574 = v2;
  v1575 = @"DoneCandidatesDecideAnyAvailable";
  v458 = [NSDictionary dictionaryWithObjects:&v1575 forKeys:&v1574 count:1];
  v1603[13] = v458;
  v1602[14] = @"JobDetermineAvailableSuccess";
  v1572 = v2;
  v1573 = @"AddToAvailableDecideAnyAvailable";
  v457 = [NSDictionary dictionaryWithObjects:&v1573 forKeys:&v1572 count:1];
  v1603[14] = v457;
  v1602[15] = @"JobDetermineAvailableFailure";
  v1570 = v2;
  v1571 = @"DoneCandidatesDecideAnyAvailable";
  v456 = [NSDictionary dictionaryWithObjects:&v1571 forKeys:&v1570 count:1];
  v1603[15] = v456;
  v1602[16] = @"TimerFiredDetermining";
  v1568 = v2;
  v1569 = v4;
  v455 = [NSDictionary dictionaryWithObjects:&v1569 forKeys:&v1568 count:1];
  v1603[16] = v455;
  v1602[17] = @"DetermineNothingAvailable";
  v1566[0] = v3;
  v1566[1] = v2;
  v1567[0] = @"GroupsAvailableContent";
  v1567[1] = @"ReplyNoCandidatesPurgeAll";
  v454 = [NSDictionary dictionaryWithObjects:v1567 forKeys:v1566 count:2];
  v1603[17] = v454;
  v1602[18] = @"DetermineNothingOtherAvailable";
  v1564[0] = v3;
  v1564[1] = v2;
  v1565[0] = @"GroupsAvailableContent";
  v1565[1] = @"ReplyNoCandidates";
  v453 = [NSDictionary dictionaryWithObjects:v1565 forKeys:v1564 count:2];
  v1603[18] = v453;
  v1602[19] = @"DetermineHaveAvailable";
  v1562[0] = v3;
  v1562[1] = v2;
  v1563[0] = @"GroupsAvailableContent";
  v1563[1] = @"ReplyHaveAvailable";
  v452 = [NSDictionary dictionaryWithObjects:v1563 forKeys:v1562 count:2];
  v1603[19] = v452;
  v1602[20] = @"ClientAlteredForgetDetermine";
  v1560[0] = v3;
  v1560[1] = v2;
  v1561[0] = @"CancelingIgnoreDetermine";
  v1561[1] = @"CancelActiveJob";
  v451 = [NSDictionary dictionaryWithObjects:v1561 forKeys:v1560 count:2];
  v1603[20] = v451;
  v1602[21] = @"ClientSetTargetsForgetDetermine";
  v1558[0] = v3;
  v1558[1] = v2;
  v1559[0] = @"CancelingIgnoreDetermine";
  v1559[1] = @"CancelActiveJob";
  v450 = [NSDictionary dictionaryWithObjects:v1559 forKeys:v1558 count:2];
  v1603[21] = v450;
  v1602[22] = @"UnstagedFromControlCancelJob";
  v1556[0] = v3;
  v1556[1] = v2;
  v1557[0] = @"CancelingDetermine";
  v1557[1] = @"CancelActiveJob";
  v449 = [NSDictionary dictionaryWithObjects:v1557 forKeys:v1556 count:2];
  v1603[22] = v449;
  v1602[23] = @"PurgeAcceptedRemoveDownloaded";
  v1554 = v2;
  v1555 = @"RemoveAllReplyPurged";
  v448 = [NSDictionary dictionaryWithObjects:&v1555 forKeys:&v1554 count:1];
  v1603[23] = v448;
  v1602[24] = @"PurgeAcceptedRemoveAll";
  v1552 = v2;
  v1553 = @"RemoveAllReplyPurged";
  v447 = [NSDictionary dictionaryWithObjects:&v1553 forKeys:&v1552 count:1];
  v1603[24] = v447;
  v1602[25] = @"EliminateCurrentJob";
  v1550[0] = v3;
  v1550[1] = v2;
  v1551[0] = @"DetermineEliminating";
  v1551[1] = @"EliminateCancelActiveJob";
  v446 = [NSDictionary dictionaryWithObjects:v1551 forKeys:v1550 count:2];
  v1603[25] = v446;
  v445 = [NSDictionary dictionaryWithObjects:v1603 forKeys:v1602 count:26];
  v2013[9] = v445;
  v2012[10] = @"AllDeterminingLast";
  v1548[0] = @"ControlForceUnstage";
  v1546 = v2;
  v1547 = @"ControlUnstagedDecideCancelJob";
  v444 = [NSDictionary dictionaryWithObjects:&v1547 forKeys:&v1546 count:1];
  v1549[0] = v444;
  v1548[1] = @"ControlEliminateAssetSelector";
  v1544 = v2;
  v1545 = @"EliminateDeterminingDecideMatch";
  v443 = [NSDictionary dictionaryWithObjects:&v1545 forKeys:&v1544 count:1];
  v1549[1] = v443;
  v1548[2] = @"ControlEliminateSetIdentifier";
  v1542 = v2;
  v1543 = @"SetEliminateDeterminingDecideMatch";
  v442 = [NSDictionary dictionaryWithObjects:&v1543 forKeys:&v1542 count:1];
  v1549[2] = v442;
  v1548[3] = @"ControlAlteredSetConfiguration";
  v1540[0] = v3;
  v1540[1] = v2;
  v1541[0] = @"CancelingDetermine";
  v1541[1] = @"AlteredInvalAllAvailableCancelActiveJob";
  v441 = [NSDictionary dictionaryWithObjects:v1541 forKeys:v1540 count:2];
  v1549[3] = v441;
  v1548[4] = @"ControlSetTargetsSpecified";
  v1538[0] = v3;
  v1538[1] = v2;
  v1539[0] = @"CancelingDetermine";
  v1539[1] = @"SetTargetInvalAllAvailableCancelActiveJob";
  v440 = [NSDictionary dictionaryWithObjects:v1539 forKeys:v1538 count:2];
  v1549[4] = v440;
  v1548[5] = @"ClientDetermineGroupsAvailable";
  v1536 = v2;
  v1537 = @"ClientNewerReplyEmptyDetermine";
  v439 = [NSDictionary dictionaryWithObjects:&v1537 forKeys:&v1536 count:1];
  v1549[5] = v439;
  v1548[6] = @"ClientDetermineAllAvailable";
  v1534 = v2;
  v1535 = @"ClientContinueRestartingMaxDetermining";
  v438 = [NSDictionary dictionaryWithObjects:&v1535 forKeys:&v1534 count:1];
  v1549[6] = v438;
  v1548[7] = @"ClientDownloadAlreadyStaged";
  v1532 = v2;
  v1533 = @"ClientNothingStaged";
  v437 = [NSDictionary dictionaryWithObjects:&v1533 forKeys:&v1532 count:1];
  v1549[7] = v437;
  v1548[8] = @"ClientDownloadGroupsAvailable";
  v1530 = v2;
  v1531 = @"ClientNewerReplyEmptyDownload";
  v436 = [NSDictionary dictionaryWithObjects:&v1531 forKeys:&v1530 count:1];
  v1549[8] = v436;
  v1548[9] = @"ClientDownloadAllAvailable";
  v1528 = v2;
  v1529 = @"ClientInvalidStagingPhase";
  v435 = [NSDictionary dictionaryWithObjects:&v1529 forKeys:&v1528 count:1];
  v1549[9] = v435;
  v1548[10] = @"ClientCancelCompletion";
  v1526 = v2;
  v1527 = @"ClientCancelDesireForCompletion";
  v434 = [NSDictionary dictionaryWithObjects:&v1527 forKeys:&v1526 count:1];
  v1549[10] = v434;
  v1548[11] = @"ClientPurgeAll";
  v1524[0] = v3;
  v1524[1] = v2;
  v1525[0] = @"CancelingDetermine";
  v1525[1] = @"ClientAcceptCancelActiveJob";
  v433 = [NSDictionary dictionaryWithObjects:v1525 forKeys:v1524 count:2];
  v1549[11] = v433;
  v1548[12] = @"ClientEraseAll";
  v1522[0] = v3;
  v1522[1] = v2;
  v1523[0] = @"ErasingDetermine";
  v1523[1] = @"ClientAcceptEraseActiveJob";
  v432 = [NSDictionary dictionaryWithObjects:v1523 forKeys:v1522 count:2];
  v1549[12] = v432;
  v1548[13] = @"JobFailedToStart";
  v1520 = v2;
  v1521 = @"DoneCandidatesDecideAnyAvailable";
  v431 = [NSDictionary dictionaryWithObjects:&v1521 forKeys:&v1520 count:1];
  v1549[13] = v431;
  v1548[14] = @"JobDetermineAvailableSuccess";
  v1518 = v2;
  v1519 = @"AddToAvailableDecideAnyAvailable";
  v430 = [NSDictionary dictionaryWithObjects:&v1519 forKeys:&v1518 count:1];
  v1549[14] = v430;
  v1548[15] = @"JobDetermineAvailableFailure";
  v1516 = v2;
  v1517 = @"DoneCandidatesDecideAnyAvailable";
  v429 = [NSDictionary dictionaryWithObjects:&v1517 forKeys:&v1516 count:1];
  v1549[15] = v429;
  v1548[16] = @"TimerFiredDetermining";
  v1514 = v2;
  v1515 = v4;
  v428 = [NSDictionary dictionaryWithObjects:&v1515 forKeys:&v1514 count:1];
  v1549[16] = v428;
  v1548[17] = @"DetermineNothingAvailable";
  v1512[0] = v3;
  v1512[1] = v2;
  v1513[0] = @"NothingAvailable";
  v1513[1] = @"ReplyNoCandidatesPurgeAll";
  v427 = [NSDictionary dictionaryWithObjects:v1513 forKeys:v1512 count:2];
  v1549[17] = v427;
  v1548[18] = @"DetermineHaveAvailable";
  v1510[0] = v3;
  v1510[1] = v2;
  v1511[0] = @"AllAvailableContent";
  v1511[1] = @"ReplyHaveAvailable";
  v426 = [NSDictionary dictionaryWithObjects:v1511 forKeys:v1510 count:2];
  v1549[18] = v426;
  v1548[19] = @"ClientAlteredForgetDetermine";
  v1508[0] = v3;
  v1508[1] = v2;
  v1509[0] = @"CancelingDetermine";
  v1509[1] = @"CancelActiveJob";
  v425 = [NSDictionary dictionaryWithObjects:v1509 forKeys:v1508 count:2];
  v1549[19] = v425;
  v1548[20] = @"ClientSetTargetsForgetDetermine";
  v1506[0] = v3;
  v1506[1] = v2;
  v1507[0] = @"CancelingDetermine";
  v1507[1] = @"CancelActiveJob";
  v424 = [NSDictionary dictionaryWithObjects:v1507 forKeys:v1506 count:2];
  v1549[20] = v424;
  v1548[21] = @"UnstagedFromControlCancelJob";
  v1504[0] = v3;
  v1504[1] = v2;
  v1505[0] = @"CancelingDetermine";
  v1505[1] = @"CancelActiveJob";
  v423 = [NSDictionary dictionaryWithObjects:v1505 forKeys:v1504 count:2];
  v1549[21] = v423;
  v1548[22] = @"EliminateCurrentJob";
  v1502[0] = v3;
  v1502[1] = v2;
  v1503[0] = @"DetermineEliminating";
  v1503[1] = @"EliminateCancelActiveJob";
  v422 = [NSDictionary dictionaryWithObjects:v1503 forKeys:v1502 count:2];
  v1549[22] = v422;
  v421 = [NSDictionary dictionaryWithObjects:v1549 forKeys:v1548 count:23];
  v2013[10] = v421;
  v2012[11] = @"DetermineEliminating";
  v1500[0] = @"ControlForceUnstage";
  v1498 = v2;
  v1499 = @"ControlUnstagedDecideCancelJob";
  v420 = [NSDictionary dictionaryWithObjects:&v1499 forKeys:&v1498 count:1];
  v1501[0] = v420;
  v1500[1] = @"ControlEliminateAssetSelector";
  v1496 = v2;
  v1497 = @"EliminateDeterminingDecideMatch";
  v419 = [NSDictionary dictionaryWithObjects:&v1497 forKeys:&v1496 count:1];
  v1501[1] = v419;
  v1500[2] = @"ControlEliminateSetIdentifier";
  v1494 = v2;
  v1495 = @"SetEliminateDeterminingDecideMatch";
  v418 = [NSDictionary dictionaryWithObjects:&v1495 forKeys:&v1494 count:1];
  v1501[2] = v418;
  v1500[3] = @"ControlAlteredSetConfiguration";
  v1492 = v2;
  v1493 = @"AlteredDecideSameSetConfiguration";
  v417 = [NSDictionary dictionaryWithObjects:&v1493 forKeys:&v1492 count:1];
  v1501[3] = v417;
  v1500[4] = @"ControlSetTargetsSpecified";
  v1490 = v2;
  v1491 = @"SetTargetDecideSameTarget";
  v416 = [NSDictionary dictionaryWithObjects:&v1491 forKeys:&v1490 count:1];
  v1501[4] = v416;
  v1500[5] = @"ClientDetermineGroupsAvailable";
  v1488 = v2;
  v1489 = @"ClientNewerReplySameOrEmptyDetermine";
  v415 = [NSDictionary dictionaryWithObjects:&v1489 forKeys:&v1488 count:1];
  v1501[5] = v415;
  v1500[6] = @"ClientDetermineAllAvailable";
  v1486 = v2;
  v1487 = @"ClientFailWrongMode";
  v414 = [NSDictionary dictionaryWithObjects:&v1487 forKeys:&v1486 count:1];
  v1501[6] = v414;
  v1500[7] = @"ClientDownloadAlreadyStaged";
  v1484 = v2;
  v1485 = @"ClientNothingStaged";
  v413 = [NSDictionary dictionaryWithObjects:&v1485 forKeys:&v1484 count:1];
  v1501[7] = v413;
  v1500[8] = @"ClientDownloadGroupsAvailable";
  v1482 = v2;
  v1483 = @"ClientNewerReplyEmptyDownload";
  v412 = [NSDictionary dictionaryWithObjects:&v1483 forKeys:&v1482 count:1];
  v1501[8] = v412;
  v1500[9] = @"ClientDownloadAllAvailable";
  v1480 = v2;
  v1481 = @"ClientInvalidStagingPhase";
  v411 = [NSDictionary dictionaryWithObjects:&v1481 forKeys:&v1480 count:1];
  v1501[9] = v411;
  v1500[10] = @"ClientCancelCompletion";
  v1478 = v2;
  v1479 = @"ClientCancelDesireForCompletion";
  v410 = [NSDictionary dictionaryWithObjects:&v1479 forKeys:&v1478 count:1];
  v1501[10] = v410;
  v1500[11] = @"ClientPurgeAll";
  v1476 = v2;
  v1477 = @"ClientPurgeDecideStagingClient";
  v409 = [NSDictionary dictionaryWithObjects:&v1477 forKeys:&v1476 count:1];
  v1501[11] = v409;
  v1500[12] = @"ClientEraseAll";
  v1474[0] = v3;
  v1474[1] = v2;
  v1475[0] = @"ErasingDetermine";
  v1475[1] = @"ClientAcceptEraseActiveJob";
  v408 = [NSDictionary dictionaryWithObjects:v1475 forKeys:v1474 count:2];
  v1501[12] = v408;
  v1500[13] = @"JobFailedToStart";
  v1472 = v2;
  v1473 = @"DoneCandidatesDecideAnyAvailable";
  v407 = [NSDictionary dictionaryWithObjects:&v1473 forKeys:&v1472 count:1];
  v1501[13] = v407;
  v1500[14] = @"JobDetermineAvailableSuccess";
  v1470 = v2;
  v1471 = @"AddToAvailableDecideAnyAvailable";
  v406 = [NSDictionary dictionaryWithObjects:&v1471 forKeys:&v1470 count:1];
  v1501[14] = v406;
  v1500[15] = @"JobDetermineAvailableFailure";
  v1468 = v2;
  v1469 = @"DoneCandidatesDecideAnyAvailable";
  v405 = [NSDictionary dictionaryWithObjects:&v1469 forKeys:&v1468 count:1];
  v1501[15] = v405;
  v1500[16] = @"TimerFiredDetermining";
  v1466 = v2;
  v1467 = v4;
  v404 = [NSDictionary dictionaryWithObjects:&v1467 forKeys:&v1466 count:1];
  v1501[16] = v404;
  v1500[17] = @"DetermineNothingAvailable";
  v1464[0] = v3;
  v1464[1] = v2;
  v1465[0] = @"GroupsAvailableContent";
  v1465[1] = @"ReplyNoCandidatesPurgeAll";
  v403 = [NSDictionary dictionaryWithObjects:v1465 forKeys:v1464 count:2];
  v1501[17] = v403;
  v1500[18] = @"DetermineHaveAvailable";
  v1462[0] = v3;
  v1462[1] = v2;
  v1463[0] = @"GroupsAvailableContent";
  v1463[1] = @"ReplyHaveAvailable";
  v402 = [NSDictionary dictionaryWithObjects:v1463 forKeys:v1462 count:2];
  v1501[18] = v402;
  v1500[19] = @"ClientAlteredForgetDetermine";
  v1460[0] = v3;
  v1460[1] = v2;
  v1461[0] = @"CancelingIgnoreDetermine";
  v1461[1] = @"CancelActiveJob";
  v401 = [NSDictionary dictionaryWithObjects:v1461 forKeys:v1460 count:2];
  v1501[19] = v401;
  v1500[20] = @"ClientSetTargetsForgetDetermine";
  v1458[0] = v3;
  v1458[1] = v2;
  v1459[0] = @"CancelingIgnoreDetermine";
  v1459[1] = @"CancelActiveJob";
  v400 = [NSDictionary dictionaryWithObjects:v1459 forKeys:v1458 count:2];
  v1501[20] = v400;
  v1500[21] = @"UnstagedFromControlCancelJob";
  v1456 = v2;
  v1457 = v4;
  v399 = [NSDictionary dictionaryWithObjects:&v1457 forKeys:&v1456 count:1];
  v1501[21] = v399;
  v1500[22] = @"EliminateCurrentJob";
  v1454 = v2;
  v1455 = v4;
  v398 = [NSDictionary dictionaryWithObjects:&v1455 forKeys:&v1454 count:1];
  v1501[22] = v398;
  v397 = [NSDictionary dictionaryWithObjects:v1501 forKeys:v1500 count:23];
  v2013[11] = v397;
  v2012[12] = @"GroupsAvailableContent";
  v1452[0] = @"ControlForceUnstage";
  v1450 = v2;
  v1451 = @"RemoveAllReplyPurged";
  v396 = [NSDictionary dictionaryWithObjects:&v1451 forKeys:&v1450 count:1];
  v1453[0] = v396;
  v1452[1] = @"ControlEliminateAssetSelector";
  v1448 = v2;
  v1449 = @"EliminateAvailableDecideEmpty";
  v395 = [NSDictionary dictionaryWithObjects:&v1449 forKeys:&v1448 count:1];
  v1453[1] = v395;
  v1452[2] = @"ControlEliminateSetIdentifier";
  v1446 = v2;
  v1447 = @"SetEliminateAvailableDecideEmpty";
  v394 = [NSDictionary dictionaryWithObjects:&v1447 forKeys:&v1446 count:1];
  v1453[2] = v394;
  v1452[3] = @"ControlAlteredSetConfiguration";
  v1444 = v2;
  v1445 = @"AlteredDecideSameSetConfiguration";
  v393 = [NSDictionary dictionaryWithObjects:&v1445 forKeys:&v1444 count:1];
  v1453[3] = v393;
  v1452[4] = @"ControlSetTargetsSpecified";
  v1442 = v2;
  v1443 = @"SetTargetDecideSameTarget";
  v392 = [NSDictionary dictionaryWithObjects:&v1443 forKeys:&v1442 count:1];
  v1453[4] = v392;
  v1452[5] = @"ClientDetermineGroupsAvailable";
  v1440 = v2;
  v1441 = @"ClientCheckGroupsDecideAlreadyDetermined";
  v391 = [NSDictionary dictionaryWithObjects:&v1441 forKeys:&v1440 count:1];
  v1453[5] = v391;
  v1452[6] = @"ClientDetermineAllAvailable";
  v1438 = v2;
  v1439 = @"ClientFailWrongMode";
  v390 = [NSDictionary dictionaryWithObjects:&v1439 forKeys:&v1438 count:1];
  v1453[6] = v390;
  v1452[7] = @"ClientDownloadAlreadyStaged";
  v1436 = v2;
  v1437 = @"ClientNothingStaged";
  v389 = [NSDictionary dictionaryWithObjects:&v1437 forKeys:&v1436 count:1];
  v1453[7] = v389;
  v1452[8] = @"ClientDownloadGroupsAvailable";
  v1434 = v2;
  v1435 = @"ClientDecideGroupTargetAvailable";
  v388 = [NSDictionary dictionaryWithObjects:&v1435 forKeys:&v1434 count:1];
  v1453[8] = v388;
  v1452[9] = @"ClientDownloadAllAvailable";
  v1432 = v2;
  v1433 = @"ClientInvalidStagingPhase";
  v387 = [NSDictionary dictionaryWithObjects:&v1433 forKeys:&v1432 count:1];
  v1453[9] = v387;
  v1452[10] = @"ClientCancelCompletion";
  v1430 = v2;
  v1431 = @"ClientCancelDesireForCompletion";
  v386 = [NSDictionary dictionaryWithObjects:&v1431 forKeys:&v1430 count:1];
  v1453[10] = v386;
  v1452[11] = @"ClientPurgeAll";
  v1428 = v2;
  v1429 = @"ClientPurgeDecideStagingClient";
  v385 = [NSDictionary dictionaryWithObjects:&v1429 forKeys:&v1428 count:1];
  v1453[11] = v385;
  v1452[12] = @"ClientEraseAll";
  v1426 = v2;
  v1427 = @"ClientEraseDecideStagingClient";
  v384 = [NSDictionary dictionaryWithObjects:&v1427 forKeys:&v1426 count:1];
  v1453[12] = v384;
  v1452[13] = @"TimerFiredDetermining";
  v1424 = v2;
  v1425 = v4;
  v383 = [NSDictionary dictionaryWithObjects:&v1425 forKeys:&v1424 count:1];
  v1453[13] = v383;
  v1452[14] = @"ModeGroupsDetermineStart";
  v1422[0] = v3;
  v1422[1] = v2;
  v1423[0] = @"GroupsRequestingDownloaded";
  v1423[1] = @"RequestAlreadyDownloaded";
  v382 = [NSDictionary dictionaryWithObjects:v1423 forKeys:v1422 count:2];
  v1453[14] = v382;
  v1452[15] = @"ModeAllDetermineStart";
  v1420[0] = v3;
  v1420[1] = v2;
  v1421[0] = @"AllRequestingDownloaded";
  v1421[1] = @"RequestAlreadyDownloaded";
  v381 = [NSDictionary dictionaryWithObjects:v1421 forKeys:v1420 count:2];
  v1453[15] = v381;
  v1452[16] = @"ClientAlteredForgetDetermine";
  v1418 = v2;
  v1419 = v4;
  v380 = [NSDictionary dictionaryWithObjects:&v1419 forKeys:&v1418 count:1];
  v1453[16] = v380;
  v1452[17] = @"ClientSetTargetsForgetDetermine";
  v1416 = v2;
  v1417 = v4;
  v379 = [NSDictionary dictionaryWithObjects:&v1417 forKeys:&v1416 count:1];
  v1453[17] = v379;
  v1452[18] = @"TargetAvailableRequired";
  v1414 = v3;
  v1415 = @"RequiredDownloading";
  v378 = [NSDictionary dictionaryWithObjects:&v1415 forKeys:&v1414 count:1];
  v1453[18] = v378;
  v1452[19] = @"TargetAvailableOptional";
  v1412 = v3;
  v1413 = @"OptionalDownloading";
  v377 = [NSDictionary dictionaryWithObjects:&v1413 forKeys:&v1412 count:1];
  v1453[19] = v377;
  v1452[20] = @"TargetWasEmptied";
  v1410[0] = v3;
  v1410[1] = v2;
  v1411[0] = @"StagedContent";
  v1411[1] = @"ReplyHaveStaged";
  v376 = [NSDictionary dictionaryWithObjects:v1411 forKeys:v1410 count:2];
  v1453[20] = v376;
  v1452[21] = @"TargetNotAvailable";
  v1408 = v2;
  v1409 = @"ReplyTargetNotAvailable";
  v375 = [NSDictionary dictionaryWithObjects:&v1409 forKeys:&v1408 count:1];
  v1453[21] = v375;
  v1452[22] = @"EliminateNowEmpty";
  v1406 = v2;
  v1407 = v4;
  v374 = [NSDictionary dictionaryWithObjects:&v1407 forKeys:&v1406 count:1];
  v1453[22] = v374;
  v1452[23] = @"PurgeAcceptedRemoveDownloaded";
  v1404 = v2;
  v1405 = @"RemoveAllReplyPurged";
  v373 = [NSDictionary dictionaryWithObjects:&v1405 forKeys:&v1404 count:1];
  v1453[23] = v373;
  v1452[24] = @"PurgeAcceptedRemoveAll";
  v1402 = v2;
  v1403 = @"RemoveAllReplyPurged";
  v372 = [NSDictionary dictionaryWithObjects:&v1403 forKeys:&v1402 count:1];
  v1453[24] = v372;
  v1452[25] = @"PurgeEraseAcceptedRemoveAll";
  v1400[0] = v3;
  v1400[1] = v2;
  v1401[0] = @"NothingAvailable";
  v1401[1] = @"RemoveAllReplyErased";
  v371 = [NSDictionary dictionaryWithObjects:v1401 forKeys:v1400 count:2];
  v1453[25] = v371;
  v370 = [NSDictionary dictionaryWithObjects:v1453 forKeys:v1452 count:26];
  v2013[12] = v370;
  v2012[13] = @"AllAvailableContent";
  v1398[0] = @"ControlForceUnstage";
  v1396[0] = v3;
  v1396[1] = v2;
  v1397[0] = @"NothingAvailable";
  v1397[1] = @"RemoveAllReplyPurged";
  v369 = [NSDictionary dictionaryWithObjects:v1397 forKeys:v1396 count:2];
  v1399[0] = v369;
  v1398[1] = @"ControlEliminateAssetSelector";
  v1394 = v2;
  v1395 = @"EliminateAvailableDecideEmpty";
  v368 = [NSDictionary dictionaryWithObjects:&v1395 forKeys:&v1394 count:1];
  v1399[1] = v368;
  v1398[2] = @"ControlEliminateSetIdentifier";
  v1392 = v2;
  v1393 = @"SetEliminateAvailableDecideEmpty";
  v367 = [NSDictionary dictionaryWithObjects:&v1393 forKeys:&v1392 count:1];
  v1399[2] = v367;
  v1398[3] = @"ControlAlteredSetConfiguration";
  v1390 = v2;
  v1391 = @"AlteredInvalAllAvailable";
  v366 = [NSDictionary dictionaryWithObjects:&v1391 forKeys:&v1390 count:1];
  v1399[3] = v366;
  v1398[4] = @"ControlSetTargetsSpecified";
  v1388 = v2;
  v1389 = @"SetTargetInvalAllAvailable";
  v365 = [NSDictionary dictionaryWithObjects:&v1389 forKeys:&v1388 count:1];
  v1399[4] = v365;
  v1398[5] = @"ClientDetermineGroupsAvailable";
  v1386 = v2;
  v1387 = @"ClientNewerReplyEmptyDetermine";
  v364 = [NSDictionary dictionaryWithObjects:&v1387 forKeys:&v1386 count:1];
  v1399[5] = v364;
  v1398[6] = @"ClientDetermineAllAvailable";
  v1384[0] = v3;
  v1384[1] = v2;
  v1385[0] = @"AllRequestingDownloaded";
  v1385[1] = @"ClientRequestAlreadyDownloaded";
  v363 = [NSDictionary dictionaryWithObjects:v1385 forKeys:v1384 count:2];
  v1399[6] = v363;
  v1398[7] = @"ClientDownloadAlreadyStaged";
  v1382 = v2;
  v1383 = @"ClientNothingStaged";
  v362 = [NSDictionary dictionaryWithObjects:&v1383 forKeys:&v1382 count:1];
  v1399[7] = v362;
  v1398[8] = @"ClientDownloadGroupsAvailable";
  v1380 = v2;
  v1381 = @"ClientNewerReplyEmptyDownload";
  v361 = [NSDictionary dictionaryWithObjects:&v1381 forKeys:&v1380 count:1];
  v1399[8] = v361;
  v1398[9] = @"ClientDownloadAllAvailable";
  v1378[0] = v3;
  v1378[1] = v2;
  v1379[0] = @"AllDownloading";
  v1379[1] = @"ClientAcceptNextAvailableBeginDownload";
  v360 = [NSDictionary dictionaryWithObjects:v1379 forKeys:v1378 count:2];
  v1399[9] = v360;
  v1398[10] = @"ClientCancelCompletion";
  v1376 = v2;
  v1377 = @"ClientCancelDesireForCompletion";
  v359 = [NSDictionary dictionaryWithObjects:&v1377 forKeys:&v1376 count:1];
  v1399[10] = v359;
  v1398[11] = @"ClientPurgeAll";
  v1374[0] = v3;
  v1374[1] = v2;
  v1375[0] = @"NothingAvailable";
  v1375[1] = @"ClientAcceptRemoveAllReplyPurged";
  v358 = [NSDictionary dictionaryWithObjects:v1375 forKeys:v1374 count:2];
  v1399[11] = v358;
  v1398[12] = @"ClientEraseAll";
  v1372[0] = v3;
  v1372[1] = v2;
  v1373[0] = @"NothingAvailable";
  v1373[1] = @"ClientAcceptRemoveAllReplyErased";
  v357 = [NSDictionary dictionaryWithObjects:v1373 forKeys:v1372 count:2];
  v1399[12] = v357;
  v1398[13] = @"TimerFiredDetermining";
  v1370 = v2;
  v1371 = v4;
  v356 = [NSDictionary dictionaryWithObjects:&v1371 forKeys:&v1370 count:1];
  v1399[13] = v356;
  v1398[14] = @"EliminateNowEmpty";
  v1368 = v3;
  v1369 = @"NothingAvailable";
  v355 = [NSDictionary dictionaryWithObjects:&v1369 forKeys:&v1368 count:1];
  v1399[14] = v355;
  v354 = [NSDictionary dictionaryWithObjects:v1399 forKeys:v1398 count:15];
  v2013[13] = v354;
  v2012[14] = @"RequiredDownloading";
  v1366[0] = @"ControlForceUnstage";
  v1364 = v2;
  v1365 = @"ControlUnstagedDecideCancelJob";
  v353 = [NSDictionary dictionaryWithObjects:&v1365 forKeys:&v1364 count:1];
  v1367[0] = v353;
  v1366[1] = @"ControlEliminateAssetSelector";
  v1362 = v2;
  v1363 = @"EliminateDecideMatch";
  v352 = [NSDictionary dictionaryWithObjects:&v1363 forKeys:&v1362 count:1];
  v1367[1] = v352;
  v1366[2] = @"ControlEliminateSetIdentifier";
  v1360 = v2;
  v1361 = @"SetEliminateDecideMatch";
  v351 = [NSDictionary dictionaryWithObjects:&v1361 forKeys:&v1360 count:1];
  v1367[2] = v351;
  v1366[3] = @"ControlAlteredSetConfiguration";
  v1358 = v2;
  v1359 = v4;
  v350 = [NSDictionary dictionaryWithObjects:&v1359 forKeys:&v1358 count:1];
  v1367[3] = v350;
  v1366[4] = @"ControlSetTargetsSpecified";
  v1356 = v2;
  v1357 = v4;
  v349 = [NSDictionary dictionaryWithObjects:&v1357 forKeys:&v1356 count:1];
  v1367[4] = v349;
  v1366[5] = @"ClientDetermineGroupsAvailable";
  v1354 = v2;
  v1355 = @"ClientCheckGroupsReplyAlreadyDetermined";
  v348 = [NSDictionary dictionaryWithObjects:&v1355 forKeys:&v1354 count:1];
  v1367[5] = v348;
  v1366[6] = @"ClientDetermineAllAvailable";
  v1352 = v2;
  v1353 = @"ClientInvalidStagingPhase";
  v347 = [NSDictionary dictionaryWithObjects:&v1353 forKeys:&v1352 count:1];
  v1367[6] = v347;
  v1366[7] = @"ClientDownloadAlreadyStaged";
  v1350 = v2;
  v1351 = @"ClientNothingStaged";
  v346 = [NSDictionary dictionaryWithObjects:&v1351 forKeys:&v1350 count:1];
  v1367[7] = v346;
  v1366[8] = @"ClientDownloadGroupsAvailable";
  v1348 = v2;
  v1349 = @"ClientNewerReplySameOrEmptyDownload";
  v345 = [NSDictionary dictionaryWithObjects:&v1349 forKeys:&v1348 count:1];
  v1367[8] = v345;
  v1366[9] = @"ClientDownloadAllAvailable";
  v1346 = v2;
  v1347 = @"ClientFailWrongMode";
  v344 = [NSDictionary dictionaryWithObjects:&v1347 forKeys:&v1346 count:1];
  v1367[9] = v344;
  v1366[10] = @"ClientCancelCompletion";
  v1344 = v2;
  v1345 = @"ClientCancelDesireForCompletion";
  v343 = [NSDictionary dictionaryWithObjects:&v1345 forKeys:&v1344 count:1];
  v1367[10] = v343;
  v1366[11] = @"ClientPurgeAll";
  v1342 = v2;
  v1343 = @"ClientPurgeDecideStagingClient";
  v342 = [NSDictionary dictionaryWithObjects:&v1343 forKeys:&v1342 count:1];
  v1367[11] = v342;
  v1366[12] = @"ClientEraseAll";
  v1340 = v2;
  v1341 = @"ClientEraseDecideStagingClient";
  v341 = [NSDictionary dictionaryWithObjects:&v1341 forKeys:&v1340 count:1];
  v1367[12] = v341;
  v1366[13] = @"JobFailedToStart";
  v1338[0] = v3;
  v1338[1] = v2;
  v1339[0] = @"GroupsAvailableContent";
  v1339[1] = @"ReplyFailRequiredDownload";
  v340 = [NSDictionary dictionaryWithObjects:v1339 forKeys:v1338 count:2];
  v1367[13] = v340;
  v1366[14] = @"JobDownloadForStagingProgress";
  v1336 = v2;
  v1337 = @"ReportStagingProgressToClient";
  v339 = [NSDictionary dictionaryWithObjects:&v1337 forKeys:&v1336 count:1];
  v1367[14] = v339;
  v1366[15] = @"JobDownloadForStagingSuccess";
  v1334 = v2;
  v1335 = @"AddToStaged";
  v338 = [NSDictionary dictionaryWithObjects:&v1335 forKeys:&v1334 count:1];
  v1367[15] = v338;
  v1366[16] = @"JobDownloadForStagingFailure";
  v1332 = v2;
  v1333 = @"DecideRequiredErrorBlocksOTA";
  v337 = [NSDictionary dictionaryWithObjects:&v1333 forKeys:&v1332 count:1];
  v1367[16] = v337;
  v1366[17] = @"TimerFiredDetermining";
  v1330 = v2;
  v1331 = v4;
  v336 = [NSDictionary dictionaryWithObjects:&v1331 forKeys:&v1330 count:1];
  v1367[17] = v336;
  v1366[18] = @"RequiredErrorNonFatal";
  v1328 = v2;
  v1329 = @"DecideMoreRequiredAvailable";
  v335 = [NSDictionary dictionaryWithObjects:&v1329 forKeys:&v1328 count:1];
  v1367[18] = v335;
  v1366[19] = @"RequiredErrorBlocksOTA";
  v1326[0] = v3;
  v1326[1] = v2;
  v1327[0] = @"GroupsAvailableContent";
  v1327[1] = @"ReplyFailRequiredDownload";
  v334 = [NSDictionary dictionaryWithObjects:v1327 forKeys:v1326 count:2];
  v1367[19] = v334;
  v1366[20] = @"DownloadMoreAvailable";
  v1324 = v2;
  v1325 = @"NextAwaitingBeginDownload";
  v333 = [NSDictionary dictionaryWithObjects:&v1325 forKeys:&v1324 count:1];
  v1367[20] = v333;
  v1366[21] = @"DownloadDecideMoreAvailable";
  v1322 = v2;
  v1323 = @"DecideMoreRequiredAvailable";
  v332 = [NSDictionary dictionaryWithObjects:&v1323 forKeys:&v1322 count:1];
  v1367[21] = v332;
  v1366[22] = @"DownloadOptionalAvailable";
  v1320[0] = v3;
  v1320[1] = v2;
  v1321[0] = @"OptionalDownloading";
  v1321[1] = @"NextAwaitingBeginDownload";
  v331 = [NSDictionary dictionaryWithObjects:v1321 forKeys:v1320 count:2];
  v1367[22] = v331;
  v1366[23] = @"DownloadDoneAvailable";
  v1318 = v2;
  v1319 = @"DoneAvailableDecideAnyStaged";
  v330 = [NSDictionary dictionaryWithObjects:&v1319 forKeys:&v1318 count:1];
  v1367[23] = v330;
  v1366[24] = @"DownloadNothingStaged";
  v1316[0] = v3;
  v1316[1] = v2;
  v1317[0] = @"GroupsAvailableContent";
  v1317[1] = @"ReplyNothingStaged";
  v329 = [NSDictionary dictionaryWithObjects:v1317 forKeys:v1316 count:2];
  v1367[24] = v329;
  v1366[25] = @"DownloadNothingStagedEmpty";
  v1314[0] = v3;
  v1314[1] = v2;
  v1315[0] = @"GroupsAvailableContent";
  v1315[1] = @"ReplyNothingStagedPurgeAll";
  v328 = [NSDictionary dictionaryWithObjects:v1315 forKeys:v1314 count:2];
  v1367[25] = v328;
  v1366[26] = @"DownloadHaveStaged";
  v1312[0] = v3;
  v1312[1] = v2;
  v1313[0] = @"StagedContent";
  v1313[1] = @"ReplyHaveStaged";
  v327 = [NSDictionary dictionaryWithObjects:v1313 forKeys:v1312 count:2];
  v1367[26] = v327;
  v1366[27] = @"UnstagedFromControlCancelJob";
  v1310[0] = v3;
  v1310[1] = v2;
  v1311[0] = @"CancelingDownload";
  v1311[1] = @"CancelActiveJob";
  v326 = [NSDictionary dictionaryWithObjects:v1311 forKeys:v1310 count:2];
  v1367[27] = v326;
  v1366[28] = @"EliminateCurrentJob";
  v1308[0] = v3;
  v1308[1] = v2;
  v1309[0] = @"RequiredDownloadEliminating";
  v1309[1] = @"EliminateCancelActiveJob";
  v325 = [NSDictionary dictionaryWithObjects:v1309 forKeys:v1308 count:2];
  v1367[28] = v325;
  v1366[29] = @"PurgeAcceptedRemoveDownloaded";
  v1306[0] = v3;
  v1306[1] = v2;
  v1307[0] = @"CancelingDownload";
  v1307[1] = @"CancelActiveJob";
  v324 = [NSDictionary dictionaryWithObjects:v1307 forKeys:v1306 count:2];
  v1367[29] = v324;
  v1366[30] = @"PurgeAcceptedRemoveAll";
  v1304[0] = v3;
  v1304[1] = v2;
  v1305[0] = @"CancelingDownload";
  v1305[1] = @"CancelActiveJob";
  v323 = [NSDictionary dictionaryWithObjects:v1305 forKeys:v1304 count:2];
  v1367[30] = v323;
  v1366[31] = @"PurgeEraseAcceptedRemoveAll";
  v1302[0] = v3;
  v1302[1] = v2;
  v1303[0] = @"ErasingDownload";
  v1303[1] = @"CancelActiveJob";
  v322 = [NSDictionary dictionaryWithObjects:v1303 forKeys:v1302 count:2];
  v1367[31] = v322;
  v321 = [NSDictionary dictionaryWithObjects:v1367 forKeys:v1366 count:32];
  v2013[14] = v321;
  v2012[15] = @"OptionalDownloading";
  v1300[0] = @"ControlForceUnstage";
  v1298 = v2;
  v1299 = @"ControlUnstagedDecideCancelJob";
  v320 = [NSDictionary dictionaryWithObjects:&v1299 forKeys:&v1298 count:1];
  v1301[0] = v320;
  v1300[1] = @"ControlEliminateAssetSelector";
  v1296 = v2;
  v1297 = @"EliminateDecideMatch";
  v319 = [NSDictionary dictionaryWithObjects:&v1297 forKeys:&v1296 count:1];
  v1301[1] = v319;
  v1300[2] = @"ControlEliminateSetIdentifier";
  v1294 = v2;
  v1295 = @"SetEliminateDecideMatch";
  v318 = [NSDictionary dictionaryWithObjects:&v1295 forKeys:&v1294 count:1];
  v1301[2] = v318;
  v1300[3] = @"ControlAlteredSetConfiguration";
  v1292 = v2;
  v1293 = v4;
  v317 = [NSDictionary dictionaryWithObjects:&v1293 forKeys:&v1292 count:1];
  v1301[3] = v317;
  v1300[4] = @"ControlSetTargetsSpecified";
  v1290 = v2;
  v1291 = v4;
  v316 = [NSDictionary dictionaryWithObjects:&v1291 forKeys:&v1290 count:1];
  v1301[4] = v316;
  v1300[5] = @"ClientDetermineGroupsAvailable";
  v1288 = v2;
  v1289 = @"ClientCheckGroupsReplyAlreadyDetermined";
  v315 = [NSDictionary dictionaryWithObjects:&v1289 forKeys:&v1288 count:1];
  v1301[5] = v315;
  v1300[6] = @"ClientDetermineAllAvailable";
  v1286 = v2;
  v1287 = @"ClientInvalidStagingPhase";
  v314 = [NSDictionary dictionaryWithObjects:&v1287 forKeys:&v1286 count:1];
  v1301[6] = v314;
  v1300[7] = @"ClientDownloadAlreadyStaged";
  v1284 = v2;
  v1285 = @"ClientNothingStaged";
  v313 = [NSDictionary dictionaryWithObjects:&v1285 forKeys:&v1284 count:1];
  v1301[7] = v313;
  v1300[8] = @"ClientDownloadGroupsAvailable";
  v1282 = v2;
  v1283 = @"ClientNewerReplySameOrEmptyDownload";
  v312 = [NSDictionary dictionaryWithObjects:&v1283 forKeys:&v1282 count:1];
  v1301[8] = v312;
  v1300[9] = @"ClientDownloadAllAvailable";
  v1280 = v2;
  v1281 = @"ClientFailWrongMode";
  v311 = [NSDictionary dictionaryWithObjects:&v1281 forKeys:&v1280 count:1];
  v1301[9] = v311;
  v1300[10] = @"ClientCancelCompletion";
  v1278 = v2;
  v1279 = @"ClientCancelDesireForCompletion";
  v310 = [NSDictionary dictionaryWithObjects:&v1279 forKeys:&v1278 count:1];
  v1301[10] = v310;
  v1300[11] = @"ClientPurgeAll";
  v1276 = v2;
  v1277 = @"ClientPurgeDecideStagingClient";
  v309 = [NSDictionary dictionaryWithObjects:&v1277 forKeys:&v1276 count:1];
  v1301[11] = v309;
  v1300[12] = @"ClientEraseAll";
  v1274 = v2;
  v1275 = @"ClientEraseDecideStagingClient";
  v308 = [NSDictionary dictionaryWithObjects:&v1275 forKeys:&v1274 count:1];
  v1301[12] = v308;
  v1300[13] = @"JobFailedToStart";
  v1272 = v2;
  v1273 = @"DecideMoreOptionalAvailable";
  v307 = [NSDictionary dictionaryWithObjects:&v1273 forKeys:&v1272 count:1];
  v1301[13] = v307;
  v1300[14] = @"JobDownloadForStagingProgress";
  v1270 = v2;
  v1271 = @"ReportStagingProgressToClient";
  v306 = [NSDictionary dictionaryWithObjects:&v1271 forKeys:&v1270 count:1];
  v1301[14] = v306;
  v1300[15] = @"JobDownloadForStagingSuccess";
  v1268 = v2;
  v1269 = @"AddToStaged";
  v305 = [NSDictionary dictionaryWithObjects:&v1269 forKeys:&v1268 count:1];
  v1301[15] = v305;
  v1300[16] = @"JobDownloadForStagingFailure";
  v1266 = v2;
  v1267 = @"DecideMoreOptionalAvailable";
  v304 = [NSDictionary dictionaryWithObjects:&v1267 forKeys:&v1266 count:1];
  v1301[16] = v304;
  v1300[17] = @"TimerFiredDetermining";
  v1264 = v2;
  v1265 = v4;
  v303 = [NSDictionary dictionaryWithObjects:&v1265 forKeys:&v1264 count:1];
  v1301[17] = v303;
  v1300[18] = @"DownloadMoreAvailable";
  v1262 = v2;
  v1263 = @"NextAwaitingBeginDownload";
  v302 = [NSDictionary dictionaryWithObjects:&v1263 forKeys:&v1262 count:1];
  v1301[18] = v302;
  v1300[19] = @"DownloadDecideMoreAvailable";
  v1260 = v2;
  v1261 = @"DecideMoreOptionalAvailable";
  v301 = [NSDictionary dictionaryWithObjects:&v1261 forKeys:&v1260 count:1];
  v1301[19] = v301;
  v1300[20] = @"DownloadDoneAvailable";
  v1258 = v2;
  v1259 = @"DoneAvailableDecideAnyStaged";
  v300 = [NSDictionary dictionaryWithObjects:&v1259 forKeys:&v1258 count:1];
  v1301[20] = v300;
  v1300[21] = @"DownloadNothingStaged";
  v1256[0] = v3;
  v1256[1] = v2;
  v1257[0] = @"GroupsAvailableContent";
  v1257[1] = @"ReplyNothingStaged";
  v299 = [NSDictionary dictionaryWithObjects:v1257 forKeys:v1256 count:2];
  v1301[21] = v299;
  v1300[22] = @"DownloadNothingStagedEmpty";
  v1254[0] = v3;
  v1254[1] = v2;
  v1255[0] = @"GroupsAvailableContent";
  v1255[1] = @"ReplyNothingStagedPurgeAll";
  v298 = [NSDictionary dictionaryWithObjects:v1255 forKeys:v1254 count:2];
  v1301[22] = v298;
  v1300[23] = @"DownloadHaveStaged";
  v1252[0] = v3;
  v1252[1] = v2;
  v1253[0] = @"StagedContent";
  v1253[1] = @"ReplyHaveStaged";
  v297 = [NSDictionary dictionaryWithObjects:v1253 forKeys:v1252 count:2];
  v1301[23] = v297;
  v1300[24] = @"UnstagedFromControlCancelJob";
  v1250[0] = v3;
  v1250[1] = v2;
  v1251[0] = @"CancelingDownload";
  v1251[1] = @"CancelActiveJob";
  v296 = [NSDictionary dictionaryWithObjects:v1251 forKeys:v1250 count:2];
  v1301[24] = v296;
  v1300[25] = @"EliminateCurrentJob";
  v1248[0] = v3;
  v1248[1] = v2;
  v1249[0] = @"OptionalDownloadEliminating";
  v1249[1] = @"EliminateCancelActiveJob";
  v295 = [NSDictionary dictionaryWithObjects:v1249 forKeys:v1248 count:2];
  v1301[25] = v295;
  v1300[26] = @"PurgeAcceptedRemoveDownloaded";
  v1246[0] = v3;
  v1246[1] = v2;
  v1247[0] = @"CancelingDownload";
  v1247[1] = @"CancelActiveJob";
  v294 = [NSDictionary dictionaryWithObjects:v1247 forKeys:v1246 count:2];
  v1301[26] = v294;
  v1300[27] = @"PurgeAcceptedRemoveAll";
  v1244[0] = v3;
  v1244[1] = v2;
  v1245[0] = @"CancelingDownload";
  v1245[1] = @"CancelActiveJob";
  v293 = [NSDictionary dictionaryWithObjects:v1245 forKeys:v1244 count:2];
  v1301[27] = v293;
  v1300[28] = @"PurgeEraseAcceptedRemoveAll";
  v1242[0] = v3;
  v1242[1] = v2;
  v1243[0] = @"ErasingDownload";
  v1243[1] = @"CancelActiveJob";
  v292 = [NSDictionary dictionaryWithObjects:v1243 forKeys:v1242 count:2];
  v1301[28] = v292;
  v291 = [NSDictionary dictionaryWithObjects:v1301 forKeys:v1300 count:29];
  v2013[15] = v291;
  v2012[16] = @"AllDownloading";
  v1240[0] = @"ControlForceUnstage";
  v1238 = v2;
  v1239 = @"ControlUnstagedDecideCancelJob";
  v290 = [NSDictionary dictionaryWithObjects:&v1239 forKeys:&v1238 count:1];
  v1241[0] = v290;
  v1240[1] = @"ControlEliminateAssetSelector";
  v1236 = v2;
  v1237 = @"EliminateDecideMatch";
  v289 = [NSDictionary dictionaryWithObjects:&v1237 forKeys:&v1236 count:1];
  v1241[1] = v289;
  v1240[2] = @"ControlEliminateSetIdentifier";
  v1234 = v2;
  v1235 = @"SetEliminateDecideMatch";
  v288 = [NSDictionary dictionaryWithObjects:&v1235 forKeys:&v1234 count:1];
  v1241[2] = v288;
  v1240[3] = @"ControlAlteredSetConfiguration";
  v1232[0] = v3;
  v1232[1] = v2;
  v1233[0] = @"CancelingDownload";
  v1233[1] = @"AlteredInvalAllAvailableCancelActiveJob";
  v287 = [NSDictionary dictionaryWithObjects:v1233 forKeys:v1232 count:2];
  v1241[3] = v287;
  v1240[4] = @"ControlSetTargetsSpecified";
  v1230[0] = v3;
  v1230[1] = v2;
  v1231[0] = @"CancelingDownload";
  v1231[1] = @"SetTargetInvalAllAvailableCancelActiveJob";
  v286 = [NSDictionary dictionaryWithObjects:v1231 forKeys:v1230 count:2];
  v1241[4] = v286;
  v1240[5] = @"ClientDetermineGroupsAvailable";
  v1228 = v2;
  v1229 = @"ClientNewerReplyEmptyDetermine";
  v285 = [NSDictionary dictionaryWithObjects:&v1229 forKeys:&v1228 count:1];
  v1241[5] = v285;
  v1240[6] = @"ClientDetermineAllAvailable";
  v1226 = v2;
  v1227 = @"ClientInvalidStagingPhase";
  v284 = [NSDictionary dictionaryWithObjects:&v1227 forKeys:&v1226 count:1];
  v1241[6] = v284;
  v1240[7] = @"ClientDownloadAlreadyStaged";
  v1224 = v2;
  v1225 = @"ClientNothingStaged";
  v283 = [NSDictionary dictionaryWithObjects:&v1225 forKeys:&v1224 count:1];
  v1241[7] = v283;
  v1240[8] = @"ClientDownloadGroupsAvailable";
  v1222 = v2;
  v1223 = @"ClientNewerReplySameOrEmptyDownload";
  v282 = [NSDictionary dictionaryWithObjects:&v1223 forKeys:&v1222 count:1];
  v1241[8] = v282;
  v1240[9] = @"ClientDownloadAllAvailable";
  v1220 = v2;
  v1221 = @"ClientFailWrongMode";
  v281 = [NSDictionary dictionaryWithObjects:&v1221 forKeys:&v1220 count:1];
  v1241[9] = v281;
  v1240[10] = @"ClientCancelCompletion";
  v1218 = v2;
  v1219 = @"ClientCancelDesireForCompletion";
  v280 = [NSDictionary dictionaryWithObjects:&v1219 forKeys:&v1218 count:1];
  v1241[10] = v280;
  v1240[11] = @"ClientPurgeAll";
  v1216[0] = v3;
  v1216[1] = v2;
  v1217[0] = @"CancelingDownload";
  v1217[1] = @"ClientAcceptCancelActiveJob";
  v279 = [NSDictionary dictionaryWithObjects:v1217 forKeys:v1216 count:2];
  v1241[11] = v279;
  v1240[12] = @"ClientEraseAll";
  v1214[0] = v3;
  v1214[1] = v2;
  v1215[0] = @"ErasingDownload";
  v1215[1] = @"ClientAcceptEraseActiveJob";
  v278 = [NSDictionary dictionaryWithObjects:v1215 forKeys:v1214 count:2];
  v1241[12] = v278;
  v1240[13] = @"JobFailedToStart";
  v1212 = v2;
  v1213 = @"DecideMoreAvailable";
  v277 = [NSDictionary dictionaryWithObjects:&v1213 forKeys:&v1212 count:1];
  v1241[13] = v277;
  v1240[14] = @"JobDownloadForStagingProgress";
  v1210 = v2;
  v1211 = @"ReportStagingProgressToClient";
  v276 = [NSDictionary dictionaryWithObjects:&v1211 forKeys:&v1210 count:1];
  v1241[14] = v276;
  v1240[15] = @"JobDownloadForStagingSuccess";
  v1208 = v2;
  v1209 = @"AddToStagedDecideMoreAvailable";
  v275 = [NSDictionary dictionaryWithObjects:&v1209 forKeys:&v1208 count:1];
  v1241[15] = v275;
  v1240[16] = @"JobDownloadForStagingFailure";
  v1206 = v2;
  v1207 = @"DecideMoreAvailable";
  v274 = [NSDictionary dictionaryWithObjects:&v1207 forKeys:&v1206 count:1];
  v1241[16] = v274;
  v1240[17] = @"TimerFiredDetermining";
  v1204 = v2;
  v1205 = v4;
  v273 = [NSDictionary dictionaryWithObjects:&v1205 forKeys:&v1204 count:1];
  v1241[17] = v273;
  v1240[18] = @"DownloadMoreAvailable";
  v1202 = v2;
  v1203 = @"NextAwaitingBeginDownload";
  v272 = [NSDictionary dictionaryWithObjects:&v1203 forKeys:&v1202 count:1];
  v1241[18] = v272;
  v1240[19] = @"DownloadDoneAvailable";
  v1200 = v2;
  v1201 = @"DoneAvailableDecideAnyStaged";
  v271 = [NSDictionary dictionaryWithObjects:&v1201 forKeys:&v1200 count:1];
  v1241[19] = v271;
  v1240[20] = @"DownloadNothingStaged";
  v1198[0] = v3;
  v1198[1] = v2;
  v1199[0] = @"AllAvailableContent";
  v1199[1] = @"ReplyNothingStaged";
  v270 = [NSDictionary dictionaryWithObjects:v1199 forKeys:v1198 count:2];
  v1241[20] = v270;
  v1240[21] = @"DownloadNothingStagedEmpty";
  v1196[0] = v3;
  v1196[1] = v2;
  v1197[0] = @"NothingAvailable";
  v1197[1] = @"ReplyNothingStagedPurgeAll";
  v269 = [NSDictionary dictionaryWithObjects:v1197 forKeys:v1196 count:2];
  v1241[21] = v269;
  v1240[22] = @"DownloadHaveStaged";
  v1194[0] = v3;
  v1194[1] = v2;
  v1195[0] = @"StagedContent";
  v1195[1] = @"ReplyHaveStaged";
  v268 = [NSDictionary dictionaryWithObjects:v1195 forKeys:v1194 count:2];
  v1241[22] = v268;
  v1240[23] = @"UnstagedFromControlCancelJob";
  v1192[0] = v3;
  v1192[1] = v2;
  v1193[0] = @"CancelingDownload";
  v1193[1] = @"CancelActiveJob";
  v267 = [NSDictionary dictionaryWithObjects:v1193 forKeys:v1192 count:2];
  v1241[23] = v267;
  v1240[24] = @"EliminateCurrentJob";
  v1190[0] = v3;
  v1190[1] = v2;
  v1191[0] = @"AllDownloadEliminating";
  v1191[1] = @"EliminateCancelActiveJob";
  v266 = [NSDictionary dictionaryWithObjects:v1191 forKeys:v1190 count:2];
  v1241[24] = v266;
  v265 = [NSDictionary dictionaryWithObjects:v1241 forKeys:v1240 count:25];
  v2013[16] = v265;
  v2012[17] = @"RequiredDownloadEliminating";
  v1188[0] = @"ControlForceUnstage";
  v1186 = v2;
  v1187 = @"ControlUnstagedDecideCancelJob";
  v264 = [NSDictionary dictionaryWithObjects:&v1187 forKeys:&v1186 count:1];
  v1189[0] = v264;
  v1188[1] = @"ControlEliminateAssetSelector";
  v1184 = v2;
  v1185 = @"EliminateDecideMatch";
  v263 = [NSDictionary dictionaryWithObjects:&v1185 forKeys:&v1184 count:1];
  v1189[1] = v263;
  v1188[2] = @"ControlEliminateSetIdentifier";
  v1182 = v2;
  v1183 = @"SetEliminateDecideMatch";
  v262 = [NSDictionary dictionaryWithObjects:&v1183 forKeys:&v1182 count:1];
  v1189[2] = v262;
  v1188[3] = @"ControlAlteredSetConfiguration";
  v1180 = v2;
  v1181 = v4;
  v261 = [NSDictionary dictionaryWithObjects:&v1181 forKeys:&v1180 count:1];
  v1189[3] = v261;
  v1188[4] = @"ControlSetTargetsSpecified";
  v1178 = v2;
  v1179 = v4;
  v260 = [NSDictionary dictionaryWithObjects:&v1179 forKeys:&v1178 count:1];
  v1189[4] = v260;
  v1188[5] = @"ClientDetermineGroupsAvailable";
  v1176 = v2;
  v1177 = @"ClientCheckGroupsReplyAlreadyDetermined";
  v259 = [NSDictionary dictionaryWithObjects:&v1177 forKeys:&v1176 count:1];
  v1189[5] = v259;
  v1188[6] = @"ClientDetermineAllAvailable";
  v1174 = v2;
  v1175 = @"ClientInvalidStagingPhase";
  v258 = [NSDictionary dictionaryWithObjects:&v1175 forKeys:&v1174 count:1];
  v1189[6] = v258;
  v1188[7] = @"ClientDownloadAlreadyStaged";
  v1172 = v2;
  v1173 = @"ClientNothingStaged";
  v257 = [NSDictionary dictionaryWithObjects:&v1173 forKeys:&v1172 count:1];
  v1189[7] = v257;
  v1188[8] = @"ClientDownloadGroupsAvailable";
  v1170 = v2;
  v1171 = @"ClientNewerReplySameOrEmptyDownload";
  v256 = [NSDictionary dictionaryWithObjects:&v1171 forKeys:&v1170 count:1];
  v1189[8] = v256;
  v1188[9] = @"ClientDownloadAllAvailable";
  v1168 = v2;
  v1169 = @"ClientFailWrongMode";
  v255 = [NSDictionary dictionaryWithObjects:&v1169 forKeys:&v1168 count:1];
  v1189[9] = v255;
  v1188[10] = @"ClientCancelCompletion";
  v1166 = v2;
  v1167 = @"ClientCancelDesireForCompletion";
  v254 = [NSDictionary dictionaryWithObjects:&v1167 forKeys:&v1166 count:1];
  v1189[10] = v254;
  v1188[11] = @"ClientPurgeAll";
  v1164 = v2;
  v1165 = @"ClientPurgeDecideStagingClient";
  v253 = [NSDictionary dictionaryWithObjects:&v1165 forKeys:&v1164 count:1];
  v1189[11] = v253;
  v1188[12] = @"ClientEraseAll";
  v1162 = v2;
  v1163 = @"ClientEraseDecideStagingClient";
  v252 = [NSDictionary dictionaryWithObjects:&v1163 forKeys:&v1162 count:1];
  v1189[12] = v252;
  v1188[13] = @"JobFailedToStart";
  v1160 = v2;
  v1161 = @"EliminateDoneDecideMoreDownload";
  v251 = [NSDictionary dictionaryWithObjects:&v1161 forKeys:&v1160 count:1];
  v1189[13] = v251;
  v1188[14] = @"JobDownloadForStagingProgress";
  v1158 = v2;
  v1159 = v4;
  v250 = [NSDictionary dictionaryWithObjects:&v1159 forKeys:&v1158 count:1];
  v1189[14] = v250;
  v1188[15] = @"JobDownloadForStagingSuccess";
  v1156 = v2;
  v1157 = @"EliminateDoneDecideMoreDownload";
  v249 = [NSDictionary dictionaryWithObjects:&v1157 forKeys:&v1156 count:1];
  v1189[15] = v249;
  v1188[16] = @"JobDownloadForStagingFailure";
  v1154 = v2;
  v1155 = @"EliminateDoneDecideMoreDownload";
  v248 = [NSDictionary dictionaryWithObjects:&v1155 forKeys:&v1154 count:1];
  v1189[16] = v248;
  v1188[17] = @"TimerFiredDetermining";
  v1152 = v2;
  v1153 = v4;
  v247 = [NSDictionary dictionaryWithObjects:&v1153 forKeys:&v1152 count:1];
  v1189[17] = v247;
  v1188[18] = @"DownloadMoreAvailable";
  v1150[0] = v3;
  v1150[1] = v2;
  v1151[0] = @"RequiredDownloading";
  v1151[1] = @"NextAwaitingBeginDownload";
  v246 = [NSDictionary dictionaryWithObjects:v1151 forKeys:v1150 count:2];
  v1189[18] = v246;
  v1188[19] = @"DownloadDoneAvailable";
  v1148 = v2;
  v1149 = @"DoneAvailableDecideAnyStaged";
  v245 = [NSDictionary dictionaryWithObjects:&v1149 forKeys:&v1148 count:1];
  v1189[19] = v245;
  v1188[20] = @"DownloadNothingStaged";
  v1146[0] = v3;
  v1146[1] = v2;
  v1147[0] = @"GroupsAvailableContent";
  v1147[1] = @"ReplyNothingStaged";
  v244 = [NSDictionary dictionaryWithObjects:v1147 forKeys:v1146 count:2];
  v1189[20] = v244;
  v1188[21] = @"DownloadNothingStagedEmpty";
  v1144[0] = v3;
  v1144[1] = v2;
  v1145[0] = @"GroupsAvailableContent";
  v1145[1] = @"ReplyNothingStagedPurgeAll";
  v243 = [NSDictionary dictionaryWithObjects:v1145 forKeys:v1144 count:2];
  v1189[21] = v243;
  v1188[22] = @"DownloadHaveStaged";
  v1142[0] = v3;
  v1142[1] = v2;
  v1143[0] = @"StagedContent";
  v1143[1] = @"ReplyHaveStaged";
  v242 = [NSDictionary dictionaryWithObjects:v1143 forKeys:v1142 count:2];
  v1189[22] = v242;
  v1188[23] = @"UnstagedFromControlCancelJob";
  v1140[0] = v3;
  v1140[1] = v2;
  v1141[0] = @"CancelingDownload";
  v1141[1] = @"CancelActiveJob";
  v241 = [NSDictionary dictionaryWithObjects:v1141 forKeys:v1140 count:2];
  v1189[23] = v241;
  v1188[24] = @"EliminateCurrentJob";
  v1138 = v2;
  v1139 = v4;
  v240 = [NSDictionary dictionaryWithObjects:&v1139 forKeys:&v1138 count:1];
  v1189[24] = v240;
  v1188[25] = @"PurgeAcceptedRemoveDownloaded";
  v1136 = v3;
  v1137 = @"CancelingDownload";
  v239 = [NSDictionary dictionaryWithObjects:&v1137 forKeys:&v1136 count:1];
  v1189[25] = v239;
  v1188[26] = @"PurgeAcceptedRemoveAll";
  v1134 = v3;
  v1135 = @"CancelingDownload";
  v238 = [NSDictionary dictionaryWithObjects:&v1135 forKeys:&v1134 count:1];
  v1189[26] = v238;
  v1188[27] = @"PurgeEraseAcceptedRemoveAll";
  v1132 = v3;
  v1133 = @"ErasingDownload";
  v237 = [NSDictionary dictionaryWithObjects:&v1133 forKeys:&v1132 count:1];
  v1189[27] = v237;
  v236 = [NSDictionary dictionaryWithObjects:v1189 forKeys:v1188 count:28];
  v2013[17] = v236;
  v2012[18] = @"OptionalDownloadEliminating";
  v1130[0] = @"ControlForceUnstage";
  v1128 = v2;
  v1129 = @"ControlUnstagedDecideCancelJob";
  v235 = [NSDictionary dictionaryWithObjects:&v1129 forKeys:&v1128 count:1];
  v1131[0] = v235;
  v1130[1] = @"ControlEliminateAssetSelector";
  v1126 = v2;
  v1127 = @"EliminateDecideMatch";
  v234 = [NSDictionary dictionaryWithObjects:&v1127 forKeys:&v1126 count:1];
  v1131[1] = v234;
  v1130[2] = @"ControlEliminateSetIdentifier";
  v1124 = v2;
  v1125 = @"SetEliminateDecideMatch";
  v233 = [NSDictionary dictionaryWithObjects:&v1125 forKeys:&v1124 count:1];
  v1131[2] = v233;
  v1130[3] = @"ControlAlteredSetConfiguration";
  v1122 = v2;
  v1123 = v4;
  v232 = [NSDictionary dictionaryWithObjects:&v1123 forKeys:&v1122 count:1];
  v1131[3] = v232;
  v1130[4] = @"ControlSetTargetsSpecified";
  v1120 = v2;
  v1121 = v4;
  v231 = [NSDictionary dictionaryWithObjects:&v1121 forKeys:&v1120 count:1];
  v1131[4] = v231;
  v1130[5] = @"ClientDetermineGroupsAvailable";
  v1118 = v2;
  v1119 = @"ClientCheckGroupsReplyAlreadyDetermined";
  v230 = [NSDictionary dictionaryWithObjects:&v1119 forKeys:&v1118 count:1];
  v1131[5] = v230;
  v1130[6] = @"ClientDetermineAllAvailable";
  v1116 = v2;
  v1117 = @"ClientInvalidStagingPhase";
  v229 = [NSDictionary dictionaryWithObjects:&v1117 forKeys:&v1116 count:1];
  v1131[6] = v229;
  v1130[7] = @"ClientDownloadAlreadyStaged";
  v1114 = v2;
  v1115 = @"ClientNothingStaged";
  v228 = [NSDictionary dictionaryWithObjects:&v1115 forKeys:&v1114 count:1];
  v1131[7] = v228;
  v1130[8] = @"ClientDownloadGroupsAvailable";
  v1112 = v2;
  v1113 = @"ClientNewerReplySameOrEmptyDownload";
  v227 = [NSDictionary dictionaryWithObjects:&v1113 forKeys:&v1112 count:1];
  v1131[8] = v227;
  v1130[9] = @"ClientDownloadAllAvailable";
  v1110 = v2;
  v1111 = @"ClientFailWrongMode";
  v226 = [NSDictionary dictionaryWithObjects:&v1111 forKeys:&v1110 count:1];
  v1131[9] = v226;
  v1130[10] = @"ClientCancelCompletion";
  v1108 = v2;
  v1109 = @"ClientCancelDesireForCompletion";
  v225 = [NSDictionary dictionaryWithObjects:&v1109 forKeys:&v1108 count:1];
  v1131[10] = v225;
  v1130[11] = @"ClientPurgeAll";
  v1106 = v2;
  v1107 = @"ClientPurgeDecideStagingClient";
  v224 = [NSDictionary dictionaryWithObjects:&v1107 forKeys:&v1106 count:1];
  v1131[11] = v224;
  v1130[12] = @"ClientEraseAll";
  v1104 = v2;
  v1105 = @"ClientEraseDecideStagingClient";
  v223 = [NSDictionary dictionaryWithObjects:&v1105 forKeys:&v1104 count:1];
  v1131[12] = v223;
  v1130[13] = @"JobFailedToStart";
  v1102 = v2;
  v1103 = @"EliminateDoneDecideMoreDownload";
  v222 = [NSDictionary dictionaryWithObjects:&v1103 forKeys:&v1102 count:1];
  v1131[13] = v222;
  v1130[14] = @"JobDownloadForStagingProgress";
  v1100 = v2;
  v1101 = v4;
  v221 = [NSDictionary dictionaryWithObjects:&v1101 forKeys:&v1100 count:1];
  v1131[14] = v221;
  v1130[15] = @"JobDownloadForStagingSuccess";
  v1098 = v2;
  v1099 = @"EliminateDoneDecideMoreDownload";
  v220 = [NSDictionary dictionaryWithObjects:&v1099 forKeys:&v1098 count:1];
  v1131[15] = v220;
  v1130[16] = @"JobDownloadForStagingFailure";
  v1096 = v2;
  v1097 = @"EliminateDoneDecideMoreDownload";
  v219 = [NSDictionary dictionaryWithObjects:&v1097 forKeys:&v1096 count:1];
  v1131[16] = v219;
  v1130[17] = @"TimerFiredDetermining";
  v1094 = v2;
  v1095 = v4;
  v218 = [NSDictionary dictionaryWithObjects:&v1095 forKeys:&v1094 count:1];
  v1131[17] = v218;
  v1130[18] = @"DownloadMoreAvailable";
  v1092[0] = v3;
  v1092[1] = v2;
  v1093[0] = @"OptionalDownloading";
  v1093[1] = @"NextAwaitingBeginDownload";
  v217 = [NSDictionary dictionaryWithObjects:v1093 forKeys:v1092 count:2];
  v1131[18] = v217;
  v1130[19] = @"DownloadDoneAvailable";
  v1090 = v2;
  v1091 = @"DoneAvailableDecideAnyStaged";
  v216 = [NSDictionary dictionaryWithObjects:&v1091 forKeys:&v1090 count:1];
  v1131[19] = v216;
  v1130[20] = @"DownloadNothingStaged";
  v1088[0] = v3;
  v1088[1] = v2;
  v1089[0] = @"GroupsAvailableContent";
  v1089[1] = @"ReplyNothingStaged";
  v215 = [NSDictionary dictionaryWithObjects:v1089 forKeys:v1088 count:2];
  v1131[20] = v215;
  v1130[21] = @"DownloadNothingStagedEmpty";
  v1086[0] = v3;
  v1086[1] = v2;
  v1087[0] = @"GroupsAvailableContent";
  v1087[1] = @"ReplyNothingStagedPurgeAll";
  v214 = [NSDictionary dictionaryWithObjects:v1087 forKeys:v1086 count:2];
  v1131[21] = v214;
  v1130[22] = @"DownloadHaveStaged";
  v1084[0] = v3;
  v1084[1] = v2;
  v1085[0] = @"StagedContent";
  v1085[1] = @"ReplyHaveStaged";
  v213 = [NSDictionary dictionaryWithObjects:v1085 forKeys:v1084 count:2];
  v1131[22] = v213;
  v1130[23] = @"UnstagedFromControlCancelJob";
  v1082[0] = v3;
  v1082[1] = v2;
  v1083[0] = @"CancelingDownload";
  v1083[1] = @"CancelActiveJob";
  v212 = [NSDictionary dictionaryWithObjects:v1083 forKeys:v1082 count:2];
  v1131[23] = v212;
  v1130[24] = @"EliminateCurrentJob";
  v1080 = v2;
  v1081 = v4;
  v211 = [NSDictionary dictionaryWithObjects:&v1081 forKeys:&v1080 count:1];
  v1131[24] = v211;
  v1130[25] = @"PurgeAcceptedRemoveDownloaded";
  v1078 = v3;
  v1079 = @"CancelingDownload";
  v210 = [NSDictionary dictionaryWithObjects:&v1079 forKeys:&v1078 count:1];
  v1131[25] = v210;
  v1130[26] = @"PurgeAcceptedRemoveAll";
  v1076 = v3;
  v1077 = @"CancelingDownload";
  v209 = [NSDictionary dictionaryWithObjects:&v1077 forKeys:&v1076 count:1];
  v1131[26] = v209;
  v1130[27] = @"PurgeEraseAcceptedRemoveAll";
  v1074 = v3;
  v1075 = @"ErasingDownload";
  v208 = [NSDictionary dictionaryWithObjects:&v1075 forKeys:&v1074 count:1];
  v1131[27] = v208;
  v207 = [NSDictionary dictionaryWithObjects:v1131 forKeys:v1130 count:28];
  v2013[18] = v207;
  v2012[19] = @"AllDownloadEliminating";
  v1072[0] = @"ControlForceUnstage";
  v1070 = v2;
  v1071 = @"ControlUnstagedDecideCancelJob";
  v206 = [NSDictionary dictionaryWithObjects:&v1071 forKeys:&v1070 count:1];
  v1073[0] = v206;
  v1072[1] = @"ControlEliminateAssetSelector";
  v1068 = v2;
  v1069 = @"EliminateDecideMatch";
  v205 = [NSDictionary dictionaryWithObjects:&v1069 forKeys:&v1068 count:1];
  v1073[1] = v205;
  v1072[2] = @"ControlEliminateSetIdentifier";
  v1066 = v2;
  v1067 = @"SetEliminateDecideMatch";
  v204 = [NSDictionary dictionaryWithObjects:&v1067 forKeys:&v1066 count:1];
  v1073[2] = v204;
  v1072[3] = @"ControlAlteredSetConfiguration";
  v1064 = v2;
  v1065 = @"AlteredInvalAllAvailableCancelActiveJob";
  v203 = [NSDictionary dictionaryWithObjects:&v1065 forKeys:&v1064 count:1];
  v1073[3] = v203;
  v1072[4] = @"ControlSetTargetsSpecified";
  v1062 = v2;
  v1063 = @"SetTargetInvalAllAvailableCancelActiveJob";
  v202 = [NSDictionary dictionaryWithObjects:&v1063 forKeys:&v1062 count:1];
  v1073[4] = v202;
  v1072[5] = @"ClientDetermineGroupsAvailable";
  v1060 = v2;
  v1061 = @"ClientNewerReplyEmptyDetermine";
  v201 = [NSDictionary dictionaryWithObjects:&v1061 forKeys:&v1060 count:1];
  v1073[5] = v201;
  v1072[6] = @"ClientDetermineAllAvailable";
  v1058 = v2;
  v1059 = @"ClientInvalidStagingPhase";
  v200 = [NSDictionary dictionaryWithObjects:&v1059 forKeys:&v1058 count:1];
  v1073[6] = v200;
  v1072[7] = @"ClientDownloadAlreadyStaged";
  v1056 = v2;
  v1057 = @"ClientNothingStaged";
  v199 = [NSDictionary dictionaryWithObjects:&v1057 forKeys:&v1056 count:1];
  v1073[7] = v199;
  v1072[8] = @"ClientDownloadGroupsAvailable";
  v1054 = v2;
  v1055 = @"ClientNewerReplySameOrEmptyDownload";
  v198 = [NSDictionary dictionaryWithObjects:&v1055 forKeys:&v1054 count:1];
  v1073[8] = v198;
  v1072[9] = @"ClientDownloadAllAvailable";
  v1052 = v2;
  v1053 = @"ClientContinueUsingLatestRequest";
  v197 = [NSDictionary dictionaryWithObjects:&v1053 forKeys:&v1052 count:1];
  v1073[9] = v197;
  v1072[10] = @"ClientCancelCompletion";
  v1050 = v2;
  v1051 = @"ClientCancelDesireForCompletion";
  v196 = [NSDictionary dictionaryWithObjects:&v1051 forKeys:&v1050 count:1];
  v1073[10] = v196;
  v1072[11] = @"ClientPurgeAll";
  v1048[0] = v3;
  v1048[1] = v2;
  v1049[0] = @"ErasingDownload";
  v1049[1] = @"ClientAcceptCancelActiveJob";
  v195 = [NSDictionary dictionaryWithObjects:v1049 forKeys:v1048 count:2];
  v1073[11] = v195;
  v1072[12] = @"ClientEraseAll";
  v1046[0] = v3;
  v1046[1] = v2;
  v1047[0] = @"ErasingDownload";
  v1047[1] = @"ClientAcceptEraseCancelActiveJob";
  v194 = [NSDictionary dictionaryWithObjects:v1047 forKeys:v1046 count:2];
  v1073[12] = v194;
  v1072[13] = @"JobFailedToStart";
  v1044 = v2;
  v1045 = @"EliminateDoneDecideMoreDownload";
  v193 = [NSDictionary dictionaryWithObjects:&v1045 forKeys:&v1044 count:1];
  v1073[13] = v193;
  v1072[14] = @"JobDownloadForStagingProgress";
  v1042 = v2;
  v1043 = v4;
  v192 = [NSDictionary dictionaryWithObjects:&v1043 forKeys:&v1042 count:1];
  v1073[14] = v192;
  v1072[15] = @"JobDownloadForStagingSuccess";
  v1040 = v2;
  v1041 = @"EliminateDoneDecideMoreDownload";
  v191 = [NSDictionary dictionaryWithObjects:&v1041 forKeys:&v1040 count:1];
  v1073[15] = v191;
  v1072[16] = @"JobDownloadForStagingFailure";
  v1038 = v2;
  v1039 = @"EliminateDoneDecideMoreDownload";
  v190 = [NSDictionary dictionaryWithObjects:&v1039 forKeys:&v1038 count:1];
  v1073[16] = v190;
  v1072[17] = @"TimerFiredDetermining";
  v1036 = v2;
  v1037 = v4;
  v189 = [NSDictionary dictionaryWithObjects:&v1037 forKeys:&v1036 count:1];
  v1073[17] = v189;
  v1072[18] = @"DownloadMoreAvailable";
  v1034[0] = v3;
  v1034[1] = v2;
  v1035[0] = @"AllDownloading";
  v1035[1] = @"NextAwaitingBeginDownload";
  v188 = [NSDictionary dictionaryWithObjects:v1035 forKeys:v1034 count:2];
  v1073[18] = v188;
  v1072[19] = @"DownloadDoneAvailable";
  v1032 = v2;
  v1033 = @"DoneAvailableDecideAnyStaged";
  v187 = [NSDictionary dictionaryWithObjects:&v1033 forKeys:&v1032 count:1];
  v1073[19] = v187;
  v1072[20] = @"DownloadNothingStaged";
  v1030[0] = v3;
  v1030[1] = v2;
  v1031[0] = @"AllAvailableContent";
  v1031[1] = @"ReplyNothingStaged";
  v186 = [NSDictionary dictionaryWithObjects:v1031 forKeys:v1030 count:2];
  v1073[20] = v186;
  v1072[21] = @"DownloadNothingStagedEmpty";
  v1028[0] = v3;
  v1028[1] = v2;
  v1029[0] = @"NothingAvailable";
  v1029[1] = @"ReplyNothingStagedPurgeAll";
  v185 = [NSDictionary dictionaryWithObjects:v1029 forKeys:v1028 count:2];
  v1073[21] = v185;
  v1072[22] = @"DownloadHaveStaged";
  v1026[0] = v3;
  v1026[1] = v2;
  v1027[0] = @"StagedContent";
  v1027[1] = @"ReplyHaveStaged";
  v184 = [NSDictionary dictionaryWithObjects:v1027 forKeys:v1026 count:2];
  v1073[22] = v184;
  v1072[23] = @"UnstagedFromControlCancelJob";
  v1024[0] = v3;
  v1024[1] = v2;
  v1025[0] = @"CancelingDownload";
  v1025[1] = @"CancelActiveJob";
  v183 = [NSDictionary dictionaryWithObjects:v1025 forKeys:v1024 count:2];
  v1073[23] = v183;
  v1072[24] = @"EliminateCurrentJob";
  v1022 = v2;
  v1023 = v4;
  v182 = [NSDictionary dictionaryWithObjects:&v1023 forKeys:&v1022 count:1];
  v1073[24] = v182;
  v181 = [NSDictionary dictionaryWithObjects:v1073 forKeys:v1072 count:25];
  v2013[19] = v181;
  v2012[20] = @"StagedContent";
  v1020[0] = @"ControlForceUnstage";
  v1018 = v2;
  v1019 = @"ControlUnstagedDecideRemoveAll";
  v180 = [NSDictionary dictionaryWithObjects:&v1019 forKeys:&v1018 count:1];
  v1021[0] = v180;
  v1020[1] = @"ControlEliminateAssetSelector";
  v1016 = v2;
  v1017 = @"EliminateDoneStagedDecideEmpty";
  v179 = [NSDictionary dictionaryWithObjects:&v1017 forKeys:&v1016 count:1];
  v1021[1] = v179;
  v1020[2] = @"ControlEliminateSetIdentifier";
  v1014 = v2;
  v1015 = @"SetEliminateDoneStagedDecideEmpty";
  v178 = [NSDictionary dictionaryWithObjects:&v1015 forKeys:&v1014 count:1];
  v1021[2] = v178;
  v1020[3] = @"ControlAlteredSetConfiguration";
  v1012 = v2;
  v1013 = v4;
  v177 = [NSDictionary dictionaryWithObjects:&v1013 forKeys:&v1012 count:1];
  v1021[3] = v177;
  v1020[4] = @"ControlSetTargetsSpecified";
  v1010 = v2;
  v1011 = v4;
  v176 = [NSDictionary dictionaryWithObjects:&v1011 forKeys:&v1010 count:1];
  v1021[4] = v176;
  v1020[5] = @"ClientDetermineGroupsAvailable";
  v1008 = v2;
  v1009 = @"ClientCheckGroupsReplyAlreadyDetermined";
  v175 = [NSDictionary dictionaryWithObjects:&v1009 forKeys:&v1008 count:1];
  v1021[5] = v175;
  v1020[6] = @"ClientDetermineAllAvailable";
  v1006 = v2;
  v1007 = @"ClientInvalidStagingPhase";
  v174 = [NSDictionary dictionaryWithObjects:&v1007 forKeys:&v1006 count:1];
  v1021[6] = v174;
  v1020[7] = @"ClientDownloadAlreadyStaged";
  v1004 = v2;
  v1005 = @"ClientHaveStagedContent";
  v173 = [NSDictionary dictionaryWithObjects:&v1005 forKeys:&v1004 count:1];
  v1021[7] = v173;
  v1020[8] = @"ClientDownloadGroupsAvailable";
  v1002 = v2;
  v1003 = @"ClientInvalidStagingPhase";
  v172 = [NSDictionary dictionaryWithObjects:&v1003 forKeys:&v1002 count:1];
  v1021[8] = v172;
  v1020[9] = @"ClientDownloadAllAvailable";
  v1000 = v2;
  v1001 = @"ClientInvalidStagingPhase";
  v171 = [NSDictionary dictionaryWithObjects:&v1001 forKeys:&v1000 count:1];
  v1021[9] = v171;
  v1020[10] = @"ClientCancelCompletion";
  v998 = v2;
  v999 = @"ClientCancelDesireForCompletion";
  v170 = [NSDictionary dictionaryWithObjects:&v999 forKeys:&v998 count:1];
  v1021[10] = v170;
  v1020[11] = @"ClientPurgeAll";
  v996 = v2;
  v997 = @"ClientPurgeDecideStagingClient";
  v169 = [NSDictionary dictionaryWithObjects:&v997 forKeys:&v996 count:1];
  v1021[11] = v169;
  v1020[12] = @"ClientEraseAll";
  v994 = v2;
  v995 = @"ClientEraseDecideStagingClient";
  v168 = [NSDictionary dictionaryWithObjects:&v995 forKeys:&v994 count:1];
  v1021[12] = v168;
  v1020[13] = @"TimerFiredDetermining";
  v992 = v2;
  v993 = v4;
  v167 = [NSDictionary dictionaryWithObjects:&v993 forKeys:&v992 count:1];
  v1021[13] = v167;
  v1020[14] = @"UnstagedFromControlRemoveAll";
  v990 = v2;
  v991 = @"UpdateStagedSituation";
  v166 = [NSDictionary dictionaryWithObjects:&v991 forKeys:&v990 count:1];
  v1021[14] = v166;
  v1020[15] = @"EliminateNowEmpty";
  v988 = v2;
  v989 = @"UpdateStagedSituation";
  v165 = [NSDictionary dictionaryWithObjects:&v989 forKeys:&v988 count:1];
  v1021[15] = v165;
  v1020[16] = @"PurgeAcceptedRemoveDownloaded";
  v986[0] = v3;
  v986[1] = v2;
  v987[0] = @"GroupsAvailableContent";
  v987[1] = @"RemoveAllReplyPurged";
  v164 = [NSDictionary dictionaryWithObjects:v987 forKeys:v986 count:2];
  v1021[16] = v164;
  v1020[17] = @"PurgeAcceptedRemoveAll";
  v984[0] = v3;
  v984[1] = v2;
  v985[0] = @"GroupsAvailableContent";
  v985[1] = @"RemoveAllReplyPurged";
  v163 = [NSDictionary dictionaryWithObjects:v985 forKeys:v984 count:2];
  v1021[17] = v163;
  v1020[18] = @"PurgeEraseAcceptedRemoveAll";
  v982[0] = v3;
  v982[1] = v2;
  v983[0] = @"NothingAvailable";
  v983[1] = @"RemoveAllReplyErased";
  v162 = [NSDictionary dictionaryWithObjects:v983 forKeys:v982 count:2];
  v1021[18] = v162;
  v161 = [NSDictionary dictionaryWithObjects:v1021 forKeys:v1020 count:19];
  v2013[20] = v161;
  v2012[21] = @"CancelingRequestDownloaded";
  v980[0] = @"ControlForceUnstage";
  v978 = v2;
  v979 = v4;
  v160 = [NSDictionary dictionaryWithObjects:&v979 forKeys:&v978 count:1];
  v981[0] = v160;
  v980[1] = @"ControlAlreadyDownloaded";
  v976 = v2;
  v977 = @"DecideHaveAvailableOtherTargets";
  v159 = [NSDictionary dictionaryWithObjects:&v977 forKeys:&v976 count:1];
  v981[1] = v159;
  v980[2] = @"ControlEliminateAssetSelector";
  v974 = v2;
  v975 = @"EliminateDecideMatch";
  v158 = [NSDictionary dictionaryWithObjects:&v975 forKeys:&v974 count:1];
  v981[2] = v158;
  v980[3] = @"ControlEliminateSetIdentifier";
  v972 = v2;
  v973 = @"SetEliminateDecideMatch";
  v157 = [NSDictionary dictionaryWithObjects:&v973 forKeys:&v972 count:1];
  v981[3] = v157;
  v980[4] = @"ControlAlteredSetConfiguration";
  v970 = v2;
  v971 = v4;
  v156 = [NSDictionary dictionaryWithObjects:&v971 forKeys:&v970 count:1];
  v981[4] = v156;
  v980[5] = @"ControlSetTargetsSpecified";
  v968 = v2;
  v969 = v4;
  v155 = [NSDictionary dictionaryWithObjects:&v969 forKeys:&v968 count:1];
  v981[5] = v155;
  v980[6] = @"ClientDetermineGroupsAvailable";
  v966 = v2;
  v967 = @"ClientCheckGroupsReplyAlreadyDetermined";
  v154 = [NSDictionary dictionaryWithObjects:&v967 forKeys:&v966 count:1];
  v981[6] = v154;
  v980[7] = @"ClientDetermineAllAvailable";
  v964 = v2;
  v965 = @"ClientInvalidStagingPhase";
  v153 = [NSDictionary dictionaryWithObjects:&v965 forKeys:&v964 count:1];
  v981[7] = v153;
  v980[8] = @"ClientDownloadAlreadyStaged";
  v962 = v2;
  v963 = @"ClientInvalidStagingPhase";
  v152 = [NSDictionary dictionaryWithObjects:&v963 forKeys:&v962 count:1];
  v981[8] = v152;
  v980[9] = @"ClientDownloadGroupsAvailable";
  v960 = v2;
  v961 = @"ClientNewerReplyEmptyDownload";
  v151 = [NSDictionary dictionaryWithObjects:&v961 forKeys:&v960 count:1];
  v981[9] = v151;
  v980[10] = @"ClientDownloadAllAvailable";
  v958 = v2;
  v959 = @"ClientInvalidStagingPhase";
  v150 = [NSDictionary dictionaryWithObjects:&v959 forKeys:&v958 count:1];
  v981[10] = v150;
  v980[11] = @"ClientCancelCompletion";
  v956 = v2;
  v957 = @"ClientCancelDesireForCompletion";
  v149 = [NSDictionary dictionaryWithObjects:&v957 forKeys:&v956 count:1];
  v981[11] = v149;
  v980[12] = @"ClientPurgeAll";
  v954 = v2;
  v955 = @"ClientPurgeDecideStagingClient";
  v148 = [NSDictionary dictionaryWithObjects:&v955 forKeys:&v954 count:1];
  v981[12] = v148;
  v980[13] = @"ClientEraseAll";
  v952 = v2;
  v953 = @"ClientEraseDecideStagingClient";
  v147 = [NSDictionary dictionaryWithObjects:&v953 forKeys:&v952 count:1];
  v981[13] = v147;
  v980[14] = @"TimerFiredDetermining";
  v950 = v2;
  v951 = v4;
  v146 = [NSDictionary dictionaryWithObjects:&v951 forKeys:&v950 count:1];
  v981[14] = v146;
  v980[15] = @"TargetHaveOtherAvailable";
  v948[0] = v3;
  v948[1] = v2;
  v949[0] = @"GroupsAvailableContent";
  v949[1] = @"ReplyNoCandidatesPurgeAll";
  v145 = [NSDictionary dictionaryWithObjects:v949 forKeys:v948 count:2];
  v981[15] = v145;
  v980[16] = @"TargetNoOtherAvailable";
  v946[0] = v3;
  v946[1] = v2;
  v947[0] = @"NothingAvailable";
  v947[1] = @"ReplyNoCandidatesEraseAll";
  v144 = [NSDictionary dictionaryWithObjects:v947 forKeys:v946 count:2];
  v981[16] = v144;
  v980[17] = @"EliminateCurrentJob";
  v944 = v2;
  v945 = v4;
  v143 = [NSDictionary dictionaryWithObjects:&v945 forKeys:&v944 count:1];
  v981[17] = v143;
  v980[18] = @"PurgeAcceptedRemoveDownloaded";
  v942 = v2;
  v943 = v4;
  v142 = [NSDictionary dictionaryWithObjects:&v943 forKeys:&v942 count:1];
  v981[18] = v142;
  v980[19] = @"PurgeAcceptedRemoveAll";
  v940 = v2;
  v941 = v4;
  v141 = [NSDictionary dictionaryWithObjects:&v941 forKeys:&v940 count:1];
  v981[19] = v141;
  v980[20] = @"PurgeEraseAcceptedRemoveAll";
  v938 = v2;
  v939 = v4;
  v140 = [NSDictionary dictionaryWithObjects:&v939 forKeys:&v938 count:1];
  v981[20] = v140;
  v138 = [NSDictionary dictionaryWithObjects:v981 forKeys:v980 count:21];
  v2013[21] = v138;
  v2012[22] = @"CancelingDetermine";
  v936[0] = @"ControlForceUnstage";
  v934 = v2;
  v935 = v4;
  v137 = [NSDictionary dictionaryWithObjects:&v935 forKeys:&v934 count:1];
  v937[0] = v137;
  v936[1] = @"ControlEliminateAssetSelector";
  v932 = v2;
  v933 = @"EliminateDecideMatch";
  v136 = [NSDictionary dictionaryWithObjects:&v933 forKeys:&v932 count:1];
  v937[1] = v136;
  v936[2] = @"ControlEliminateSetIdentifier";
  v930 = v2;
  v931 = @"SetEliminateDecideMatch";
  v135 = [NSDictionary dictionaryWithObjects:&v931 forKeys:&v930 count:1];
  v937[2] = v135;
  v936[3] = @"ControlAlteredSetConfiguration";
  v928 = v2;
  v929 = v4;
  v134 = [NSDictionary dictionaryWithObjects:&v929 forKeys:&v928 count:1];
  v937[3] = v134;
  v936[4] = @"ControlSetTargetsSpecified";
  v926 = v2;
  v927 = v4;
  v133 = [NSDictionary dictionaryWithObjects:&v927 forKeys:&v926 count:1];
  v937[4] = v133;
  v936[5] = @"ClientDetermineGroupsAvailable";
  v924 = v2;
  v925 = @"ClientCheckGroupsReplyAlreadyDetermined";
  v132 = [NSDictionary dictionaryWithObjects:&v925 forKeys:&v924 count:1];
  v937[5] = v132;
  v936[6] = @"ClientDetermineAllAvailable";
  v922 = v2;
  v923 = @"ClientInvalidStagingPhase";
  v131 = [NSDictionary dictionaryWithObjects:&v923 forKeys:&v922 count:1];
  v937[6] = v131;
  v936[7] = @"ClientDownloadAlreadyStaged";
  v920 = v2;
  v921 = @"ClientInvalidStagingPhase";
  v130 = [NSDictionary dictionaryWithObjects:&v921 forKeys:&v920 count:1];
  v937[7] = v130;
  v936[8] = @"ClientDownloadGroupsAvailable";
  v918 = v2;
  v919 = @"ClientNewerReplyEmptyDownload";
  v129 = [NSDictionary dictionaryWithObjects:&v919 forKeys:&v918 count:1];
  v937[8] = v129;
  v936[9] = @"ClientDownloadAllAvailable";
  v916 = v2;
  v917 = @"ClientInvalidStagingPhase";
  v128 = [NSDictionary dictionaryWithObjects:&v917 forKeys:&v916 count:1];
  v937[9] = v128;
  v936[10] = @"ClientCancelCompletion";
  v914 = v2;
  v915 = @"ClientCancelDesireForCompletion";
  v127 = [NSDictionary dictionaryWithObjects:&v915 forKeys:&v914 count:1];
  v937[10] = v127;
  v936[11] = @"ClientPurgeAll";
  v912 = v2;
  v913 = @"ClientPurgeDecideStagingClient";
  v126 = [NSDictionary dictionaryWithObjects:&v913 forKeys:&v912 count:1];
  v937[11] = v126;
  v936[12] = @"ClientEraseAll";
  v910 = v2;
  v911 = @"ClientEraseDecideStagingClient";
  v125 = [NSDictionary dictionaryWithObjects:&v911 forKeys:&v910 count:1];
  v937[12] = v125;
  v936[13] = @"JobDetermineAvailableSuccess";
  v908[0] = v3;
  v908[1] = v2;
  v909[0] = @"GroupsAvailableContent";
  v909[1] = @"RemoveAllReplyCanceled";
  v124 = [NSDictionary dictionaryWithObjects:v909 forKeys:v908 count:2];
  v937[13] = v124;
  v936[14] = @"JobDetermineAvailableFailure";
  v906[0] = v3;
  v906[1] = v2;
  v907[0] = @"GroupsAvailableContent";
  v907[1] = @"RemoveAllReplyCanceled";
  v123 = [NSDictionary dictionaryWithObjects:v907 forKeys:v906 count:2];
  v937[14] = v123;
  v936[15] = @"TimerFiredDetermining";
  v904 = v2;
  v905 = v4;
  v122 = [NSDictionary dictionaryWithObjects:&v905 forKeys:&v904 count:1];
  v937[15] = v122;
  v936[16] = @"EliminateCurrentJob";
  v902 = v2;
  v903 = v4;
  v121 = [NSDictionary dictionaryWithObjects:&v903 forKeys:&v902 count:1];
  v937[16] = v121;
  v936[17] = @"PurgeAcceptedRemoveDownloaded";
  v900 = v2;
  v901 = v4;
  v120 = [NSDictionary dictionaryWithObjects:&v901 forKeys:&v900 count:1];
  v937[17] = v120;
  v936[18] = @"PurgeAcceptedRemoveAll";
  v898 = v2;
  v899 = v4;
  v119 = [NSDictionary dictionaryWithObjects:&v899 forKeys:&v898 count:1];
  v937[18] = v119;
  v936[19] = @"PurgeEraseAcceptedRemoveAll";
  v896 = v2;
  v897 = v4;
  v118 = [NSDictionary dictionaryWithObjects:&v897 forKeys:&v896 count:1];
  v937[19] = v118;
  v117 = [NSDictionary dictionaryWithObjects:v937 forKeys:v936 count:20];
  v2013[22] = v117;
  v2012[23] = @"CancelingIgnoreDetermine";
  v894[0] = @"ControlForceUnstage";
  v892 = v2;
  v893 = v4;
  v116 = [NSDictionary dictionaryWithObjects:&v893 forKeys:&v892 count:1];
  v895[0] = v116;
  v894[1] = @"ControlEliminateAssetSelector";
  v890 = v2;
  v891 = @"EliminateDecideMatch";
  v115 = [NSDictionary dictionaryWithObjects:&v891 forKeys:&v890 count:1];
  v895[1] = v115;
  v894[2] = @"ControlEliminateSetIdentifier";
  v888 = v2;
  v889 = @"SetEliminateDecideMatch";
  v114 = [NSDictionary dictionaryWithObjects:&v889 forKeys:&v888 count:1];
  v895[2] = v114;
  v894[3] = @"ControlAlteredSetConfiguration";
  v886 = v2;
  v887 = v4;
  v113 = [NSDictionary dictionaryWithObjects:&v887 forKeys:&v886 count:1];
  v895[3] = v113;
  v894[4] = @"ControlSetTargetsSpecified";
  v884 = v2;
  v885 = v4;
  v112 = [NSDictionary dictionaryWithObjects:&v885 forKeys:&v884 count:1];
  v895[4] = v112;
  v894[5] = @"ClientDetermineGroupsAvailable";
  v882 = v2;
  v883 = @"ClientCheckGroupsReplyAlreadyDetermined";
  v111 = [NSDictionary dictionaryWithObjects:&v883 forKeys:&v882 count:1];
  v895[5] = v111;
  v894[6] = @"ClientDetermineAllAvailable";
  v880 = v2;
  v881 = @"ClientInvalidStagingPhase";
  v110 = [NSDictionary dictionaryWithObjects:&v881 forKeys:&v880 count:1];
  v895[6] = v110;
  v894[7] = @"ClientDownloadAlreadyStaged";
  v878 = v2;
  v879 = @"ClientInvalidStagingPhase";
  v109 = [NSDictionary dictionaryWithObjects:&v879 forKeys:&v878 count:1];
  v895[7] = v109;
  v894[8] = @"ClientDownloadGroupsAvailable";
  v876 = v2;
  v877 = @"ClientNewerReplyEmptyDownload";
  v108 = [NSDictionary dictionaryWithObjects:&v877 forKeys:&v876 count:1];
  v895[8] = v108;
  v894[9] = @"ClientDownloadAllAvailable";
  v874 = v2;
  v875 = @"ClientInvalidStagingPhase";
  v107 = [NSDictionary dictionaryWithObjects:&v875 forKeys:&v874 count:1];
  v895[9] = v107;
  v894[10] = @"ClientCancelCompletion";
  v872 = v2;
  v873 = @"ClientCancelDesireForCompletion";
  v106 = [NSDictionary dictionaryWithObjects:&v873 forKeys:&v872 count:1];
  v895[10] = v106;
  v894[11] = @"ClientPurgeAll";
  v870 = v2;
  v871 = @"ClientPurgeDecideStagingClient";
  v105 = [NSDictionary dictionaryWithObjects:&v871 forKeys:&v870 count:1];
  v895[11] = v105;
  v894[12] = @"ClientEraseAll";
  v868 = v2;
  v869 = @"ClientEraseDecideStagingClient";
  v104 = [NSDictionary dictionaryWithObjects:&v869 forKeys:&v868 count:1];
  v895[12] = v104;
  v894[13] = @"JobDetermineAvailableSuccess";
  v866[0] = v3;
  v866[1] = v2;
  v867[0] = @"GroupsAvailableContent";
  v867[1] = @"ReplyNoCandidates";
  v103 = [NSDictionary dictionaryWithObjects:v867 forKeys:v866 count:2];
  v895[13] = v103;
  v894[14] = @"JobDetermineAvailableFailure";
  v864[0] = v3;
  v864[1] = v2;
  v865[0] = @"GroupsAvailableContent";
  v865[1] = @"ReplyNoCandidates";
  v102 = [NSDictionary dictionaryWithObjects:v865 forKeys:v864 count:2];
  v895[14] = v102;
  v894[15] = @"TimerFiredDetermining";
  v862 = v2;
  v863 = v4;
  v101 = [NSDictionary dictionaryWithObjects:&v863 forKeys:&v862 count:1];
  v895[15] = v101;
  v894[16] = @"EliminateCurrentJob";
  v860 = v2;
  v861 = v4;
  v100 = [NSDictionary dictionaryWithObjects:&v861 forKeys:&v860 count:1];
  v895[16] = v100;
  v894[17] = @"PurgeAcceptedRemoveDownloaded";
  v858 = v2;
  v859 = v4;
  v99 = [NSDictionary dictionaryWithObjects:&v859 forKeys:&v858 count:1];
  v895[17] = v99;
  v894[18] = @"PurgeAcceptedRemoveAll";
  v856 = v2;
  v857 = v4;
  v98 = [NSDictionary dictionaryWithObjects:&v857 forKeys:&v856 count:1];
  v895[18] = v98;
  v894[19] = @"PurgeEraseAcceptedRemoveAll";
  v854 = v2;
  v855 = v4;
  v97 = [NSDictionary dictionaryWithObjects:&v855 forKeys:&v854 count:1];
  v895[19] = v97;
  v96 = [NSDictionary dictionaryWithObjects:v895 forKeys:v894 count:20];
  v2013[23] = v96;
  v2012[24] = @"CancelingDownload";
  v852[0] = @"ControlForceUnstage";
  v850 = v2;
  v851 = v4;
  v95 = [NSDictionary dictionaryWithObjects:&v851 forKeys:&v850 count:1];
  v853[0] = v95;
  v852[1] = @"ControlEliminateAssetSelector";
  v848 = v2;
  v849 = @"EliminateDecideMatch";
  v94 = [NSDictionary dictionaryWithObjects:&v849 forKeys:&v848 count:1];
  v853[1] = v94;
  v852[2] = @"ControlEliminateSetIdentifier";
  v846 = v2;
  v847 = @"SetEliminateDecideMatch";
  v93 = [NSDictionary dictionaryWithObjects:&v847 forKeys:&v846 count:1];
  v853[2] = v93;
  v852[3] = @"ControlAlteredSetConfiguration";
  v844 = v2;
  v845 = v4;
  v92 = [NSDictionary dictionaryWithObjects:&v845 forKeys:&v844 count:1];
  v853[3] = v92;
  v852[4] = @"ControlSetTargetsSpecified";
  v842 = v2;
  v843 = v4;
  v91 = [NSDictionary dictionaryWithObjects:&v843 forKeys:&v842 count:1];
  v853[4] = v91;
  v852[5] = @"ClientDetermineGroupsAvailable";
  v840 = v2;
  v841 = @"ClientCheckGroupsReplyAlreadyDetermined";
  v90 = [NSDictionary dictionaryWithObjects:&v841 forKeys:&v840 count:1];
  v853[5] = v90;
  v852[6] = @"ClientDetermineAllAvailable";
  v838 = v2;
  v839 = @"ClientInvalidStagingPhase";
  v89 = [NSDictionary dictionaryWithObjects:&v839 forKeys:&v838 count:1];
  v853[6] = v89;
  v852[7] = @"ClientDownloadAlreadyStaged";
  v836 = v2;
  v837 = @"ClientInvalidStagingPhase";
  v88 = [NSDictionary dictionaryWithObjects:&v837 forKeys:&v836 count:1];
  v853[7] = v88;
  v852[8] = @"ClientDownloadGroupsAvailable";
  v834 = v2;
  v835 = @"ClientNewerReplyEmptyDownload";
  v87 = [NSDictionary dictionaryWithObjects:&v835 forKeys:&v834 count:1];
  v853[8] = v87;
  v852[9] = @"ClientDownloadAllAvailable";
  v832 = v2;
  v833 = @"ClientInvalidStagingPhase";
  v86 = [NSDictionary dictionaryWithObjects:&v833 forKeys:&v832 count:1];
  v853[9] = v86;
  v852[10] = @"ClientCancelCompletion";
  v830 = v2;
  v831 = @"ClientCancelDesireForCompletion";
  v85 = [NSDictionary dictionaryWithObjects:&v831 forKeys:&v830 count:1];
  v853[10] = v85;
  v852[11] = @"ClientPurgeAll";
  v828 = v2;
  v829 = @"ClientPurgeDecideStagingClient";
  v84 = [NSDictionary dictionaryWithObjects:&v829 forKeys:&v828 count:1];
  v853[11] = v84;
  v852[12] = @"ClientEraseAll";
  v826 = v2;
  v827 = @"ClientEraseDecideStagingClient";
  v83 = [NSDictionary dictionaryWithObjects:&v827 forKeys:&v826 count:1];
  v853[12] = v83;
  v852[13] = @"JobFailedToStart";
  v824[0] = v3;
  v824[1] = v2;
  v825[0] = @"GroupsAvailableContent";
  v825[1] = @"RemoveAllReplyPurged";
  v82 = [NSDictionary dictionaryWithObjects:v825 forKeys:v824 count:2];
  v853[13] = v82;
  v852[14] = @"JobDownloadForStagingProgress";
  v822 = v2;
  v823 = v4;
  v81 = [NSDictionary dictionaryWithObjects:&v823 forKeys:&v822 count:1];
  v853[14] = v81;
  v852[15] = @"JobDownloadForStagingSuccess";
  v820[0] = v3;
  v820[1] = v2;
  v821[0] = @"GroupsAvailableContent";
  v821[1] = @"RemoveAllReplyPurged";
  v80 = [NSDictionary dictionaryWithObjects:v821 forKeys:v820 count:2];
  v853[15] = v80;
  v852[16] = @"JobDownloadForStagingFailure";
  v818[0] = v3;
  v818[1] = v2;
  v819[0] = @"GroupsAvailableContent";
  v819[1] = @"RemoveAllReplyPurged";
  v79 = [NSDictionary dictionaryWithObjects:v819 forKeys:v818 count:2];
  v853[16] = v79;
  v852[17] = @"TimerFiredDetermining";
  v816 = v2;
  v817 = v4;
  v78 = [NSDictionary dictionaryWithObjects:&v817 forKeys:&v816 count:1];
  v853[17] = v78;
  v852[18] = @"EliminateCurrentJob";
  v814 = v2;
  v815 = v4;
  v77 = [NSDictionary dictionaryWithObjects:&v815 forKeys:&v814 count:1];
  v853[18] = v77;
  v852[19] = @"PurgeAcceptedRemoveDownloaded";
  v812 = v2;
  v813 = v4;
  v76 = [NSDictionary dictionaryWithObjects:&v813 forKeys:&v812 count:1];
  v853[19] = v76;
  v852[20] = @"PurgeAcceptedRemoveAll";
  v810 = v2;
  v811 = v4;
  v75 = [NSDictionary dictionaryWithObjects:&v811 forKeys:&v810 count:1];
  v853[20] = v75;
  v852[21] = @"PurgeEraseAcceptedRemoveAll";
  v808 = v2;
  v809 = v4;
  v74 = [NSDictionary dictionaryWithObjects:&v809 forKeys:&v808 count:1];
  v853[21] = v74;
  v852[22] = @"EmptyHaveAvailable";
  v806[0] = v3;
  v806[1] = v2;
  v807[0] = @"GroupsAvailableContent";
  v807[1] = @"RemoveAllReplyPurged";
  v73 = [NSDictionary dictionaryWithObjects:v807 forKeys:v806 count:2];
  v853[22] = v73;
  v852[23] = @"EmptyNothingAvailable";
  v804[0] = v3;
  v804[1] = v2;
  v805[0] = @"GroupsAvailableContent";
  v805[1] = @"RemoveAllReplyPurged";
  v72 = [NSDictionary dictionaryWithObjects:v805 forKeys:v804 count:2];
  v853[23] = v72;
  v71 = [NSDictionary dictionaryWithObjects:v853 forKeys:v852 count:24];
  v2013[24] = v71;
  v2012[25] = @"ErasingRequestDownloaded";
  v802[0] = @"ControlForceUnstage";
  v800 = v2;
  v801 = v4;
  v70 = [NSDictionary dictionaryWithObjects:&v801 forKeys:&v800 count:1];
  v803[0] = v70;
  v802[1] = @"ControlAlreadyDownloaded";
  v798[0] = v3;
  v798[1] = v2;
  v799[0] = @"NothingAvailable";
  v799[1] = @"RemoveAllReplyErased";
  v69 = [NSDictionary dictionaryWithObjects:v799 forKeys:v798 count:2];
  v803[1] = v69;
  v802[2] = @"ControlEliminateAssetSelector";
  v796 = v2;
  v797 = @"EliminateDecideMatch";
  v68 = [NSDictionary dictionaryWithObjects:&v797 forKeys:&v796 count:1];
  v803[2] = v68;
  v802[3] = @"ControlEliminateSetIdentifier";
  v794 = v2;
  v795 = @"SetEliminateDecideMatch";
  v67 = [NSDictionary dictionaryWithObjects:&v795 forKeys:&v794 count:1];
  v803[3] = v67;
  v802[4] = @"ControlAlteredSetConfiguration";
  v792 = v2;
  v793 = v4;
  v66 = [NSDictionary dictionaryWithObjects:&v793 forKeys:&v792 count:1];
  v803[4] = v66;
  v802[5] = @"ControlSetTargetsSpecified";
  v790 = v2;
  v791 = v4;
  v65 = [NSDictionary dictionaryWithObjects:&v791 forKeys:&v790 count:1];
  v803[5] = v65;
  v802[6] = @"ClientDetermineGroupsAvailable";
  v788 = v2;
  v789 = @"ClientCheckGroupsReplyAlreadyDetermined";
  v64 = [NSDictionary dictionaryWithObjects:&v789 forKeys:&v788 count:1];
  v803[6] = v64;
  v802[7] = @"ClientDetermineAllAvailable";
  v786 = v2;
  v787 = @"ClientInvalidStagingPhase";
  v63 = [NSDictionary dictionaryWithObjects:&v787 forKeys:&v786 count:1];
  v803[7] = v63;
  v802[8] = @"ClientDownloadAlreadyStaged";
  v784 = v2;
  v785 = @"ClientInvalidStagingPhase";
  v62 = [NSDictionary dictionaryWithObjects:&v785 forKeys:&v784 count:1];
  v803[8] = v62;
  v802[9] = @"ClientDownloadGroupsAvailable";
  v782 = v2;
  v783 = @"ClientNewerReplyEmptyDownload";
  v61 = [NSDictionary dictionaryWithObjects:&v783 forKeys:&v782 count:1];
  v803[9] = v61;
  v802[10] = @"ClientDownloadAllAvailable";
  v780 = v2;
  v781 = @"ClientInvalidStagingPhase";
  v60 = [NSDictionary dictionaryWithObjects:&v781 forKeys:&v780 count:1];
  v803[10] = v60;
  v802[11] = @"ClientCancelCompletion";
  v778 = v2;
  v779 = @"ClientCancelDesireForCompletion";
  v59 = [NSDictionary dictionaryWithObjects:&v779 forKeys:&v778 count:1];
  v803[11] = v59;
  v802[12] = @"ClientPurgeAll";
  v776 = v2;
  v777 = @"ClientPurgeDecideStagingClient";
  v58 = [NSDictionary dictionaryWithObjects:&v777 forKeys:&v776 count:1];
  v803[12] = v58;
  v802[13] = @"ClientEraseAll";
  v774 = v2;
  v775 = @"ClientEraseDecideStagingClient";
  v57 = [NSDictionary dictionaryWithObjects:&v775 forKeys:&v774 count:1];
  v803[13] = v57;
  v802[14] = @"TimerFiredDetermining";
  v772 = v2;
  v773 = v4;
  v56 = [NSDictionary dictionaryWithObjects:&v773 forKeys:&v772 count:1];
  v803[14] = v56;
  v802[15] = @"EliminateCurrentJob";
  v770 = v2;
  v771 = v4;
  v55 = [NSDictionary dictionaryWithObjects:&v771 forKeys:&v770 count:1];
  v803[15] = v55;
  v802[16] = @"PurgeAcceptedRemoveDownloaded";
  v768 = v2;
  v769 = v4;
  v54 = [NSDictionary dictionaryWithObjects:&v769 forKeys:&v768 count:1];
  v803[16] = v54;
  v802[17] = @"PurgeAcceptedRemoveAll";
  v766 = v2;
  v767 = v4;
  v53 = [NSDictionary dictionaryWithObjects:&v767 forKeys:&v766 count:1];
  v803[17] = v53;
  v802[18] = @"PurgeEraseAcceptedRemoveAll";
  v764 = v2;
  v765 = v4;
  v52 = [NSDictionary dictionaryWithObjects:&v765 forKeys:&v764 count:1];
  v803[18] = v52;
  v51 = [NSDictionary dictionaryWithObjects:v803 forKeys:v802 count:19];
  v2013[25] = v51;
  v2012[26] = @"ErasingDetermine";
  v762[0] = @"ControlForceUnstage";
  v760 = v2;
  v761 = v4;
  v50 = [NSDictionary dictionaryWithObjects:&v761 forKeys:&v760 count:1];
  v763[0] = v50;
  v762[1] = @"ControlEliminateAssetSelector";
  v758 = v2;
  v759 = @"EliminateDecideMatch";
  v49 = [NSDictionary dictionaryWithObjects:&v759 forKeys:&v758 count:1];
  v763[1] = v49;
  v762[2] = @"ControlEliminateSetIdentifier";
  v756 = v2;
  v757 = @"SetEliminateDecideMatch";
  v48 = [NSDictionary dictionaryWithObjects:&v757 forKeys:&v756 count:1];
  v763[2] = v48;
  v762[3] = @"ControlAlteredSetConfiguration";
  v754 = v2;
  v755 = v4;
  v47 = [NSDictionary dictionaryWithObjects:&v755 forKeys:&v754 count:1];
  v763[3] = v47;
  v762[4] = @"ControlSetTargetsSpecified";
  v752 = v2;
  v753 = v4;
  v46 = [NSDictionary dictionaryWithObjects:&v753 forKeys:&v752 count:1];
  v763[4] = v46;
  v762[5] = @"ClientDetermineGroupsAvailable";
  v750 = v2;
  v751 = @"ClientCheckGroupsReplyAlreadyDetermined";
  v45 = [NSDictionary dictionaryWithObjects:&v751 forKeys:&v750 count:1];
  v763[5] = v45;
  v762[6] = @"ClientDetermineAllAvailable";
  v748 = v2;
  v749 = @"ClientInvalidStagingPhase";
  v44 = [NSDictionary dictionaryWithObjects:&v749 forKeys:&v748 count:1];
  v763[6] = v44;
  v762[7] = @"ClientDownloadAlreadyStaged";
  v746 = v2;
  v747 = @"ClientInvalidStagingPhase";
  v43 = [NSDictionary dictionaryWithObjects:&v747 forKeys:&v746 count:1];
  v763[7] = v43;
  v762[8] = @"ClientDownloadGroupsAvailable";
  v744 = v2;
  v745 = @"ClientNewerReplyEmptyDownload";
  v42 = [NSDictionary dictionaryWithObjects:&v745 forKeys:&v744 count:1];
  v763[8] = v42;
  v762[9] = @"ClientDownloadAllAvailable";
  v742 = v2;
  v743 = @"ClientInvalidStagingPhase";
  v41 = [NSDictionary dictionaryWithObjects:&v743 forKeys:&v742 count:1];
  v763[9] = v41;
  v762[10] = @"ClientCancelCompletion";
  v740 = v2;
  v741 = @"ClientCancelDesireForCompletion";
  v40 = [NSDictionary dictionaryWithObjects:&v741 forKeys:&v740 count:1];
  v763[10] = v40;
  v762[11] = @"ClientPurgeAll";
  v738 = v2;
  v739 = @"ClientPurgeDecideStagingClient";
  v39 = [NSDictionary dictionaryWithObjects:&v739 forKeys:&v738 count:1];
  v763[11] = v39;
  v762[12] = @"ClientEraseAll";
  v736 = v2;
  v737 = @"ClientEraseDecideStagingClient";
  v38 = [NSDictionary dictionaryWithObjects:&v737 forKeys:&v736 count:1];
  v763[12] = v38;
  v762[13] = @"JobDetermineAvailableSuccess";
  v734[0] = v3;
  v734[1] = v2;
  v735[0] = @"NothingAvailable";
  v735[1] = @"RemoveAllReplyErased";
  v37 = [NSDictionary dictionaryWithObjects:v735 forKeys:v734 count:2];
  v763[13] = v37;
  v762[14] = @"JobDetermineAvailableFailure";
  v732[0] = v3;
  v732[1] = v2;
  v733[0] = @"NothingAvailable";
  v733[1] = @"RemoveAllReplyErased";
  v36 = [NSDictionary dictionaryWithObjects:v733 forKeys:v732 count:2];
  v763[14] = v36;
  v762[15] = @"TimerFiredDetermining";
  v730 = v2;
  v731 = v4;
  v35 = [NSDictionary dictionaryWithObjects:&v731 forKeys:&v730 count:1];
  v763[15] = v35;
  v762[16] = @"EliminateCurrentJob";
  v728 = v2;
  v729 = v4;
  v34 = [NSDictionary dictionaryWithObjects:&v729 forKeys:&v728 count:1];
  v763[16] = v34;
  v762[17] = @"PurgeAcceptedRemoveDownloaded";
  v726 = v2;
  v727 = v4;
  v33 = [NSDictionary dictionaryWithObjects:&v727 forKeys:&v726 count:1];
  v763[17] = v33;
  v762[18] = @"PurgeAcceptedRemoveAll";
  v724 = v2;
  v725 = v4;
  v32 = [NSDictionary dictionaryWithObjects:&v725 forKeys:&v724 count:1];
  v763[18] = v32;
  v762[19] = @"PurgeEraseAcceptedRemoveAll";
  v722 = v2;
  v723 = v4;
  v31 = [NSDictionary dictionaryWithObjects:&v723 forKeys:&v722 count:1];
  v763[19] = v31;
  v30 = [NSDictionary dictionaryWithObjects:v763 forKeys:v762 count:20];
  v2013[26] = v30;
  v2012[27] = @"ErasingDownload";
  v720[0] = @"ControlForceUnstage";
  v718 = v2;
  v719 = v4;
  v29 = [NSDictionary dictionaryWithObjects:&v719 forKeys:&v718 count:1];
  v721[0] = v29;
  v720[1] = @"ControlEliminateAssetSelector";
  v716 = v2;
  v717 = @"EliminateDecideMatch";
  v28 = [NSDictionary dictionaryWithObjects:&v717 forKeys:&v716 count:1];
  v721[1] = v28;
  v720[2] = @"ControlEliminateSetIdentifier";
  v714 = v2;
  v715 = @"SetEliminateDecideMatch";
  v27 = [NSDictionary dictionaryWithObjects:&v715 forKeys:&v714 count:1];
  v721[2] = v27;
  v720[3] = @"ControlAlteredSetConfiguration";
  v712 = v2;
  v713 = v4;
  v26 = [NSDictionary dictionaryWithObjects:&v713 forKeys:&v712 count:1];
  v721[3] = v26;
  v720[4] = @"ControlSetTargetsSpecified";
  v710 = v2;
  v711 = v4;
  v25 = [NSDictionary dictionaryWithObjects:&v711 forKeys:&v710 count:1];
  v721[4] = v25;
  v720[5] = @"ClientDetermineGroupsAvailable";
  v708 = v2;
  v709 = @"ClientCheckGroupsReplyAlreadyDetermined";
  v24 = [NSDictionary dictionaryWithObjects:&v709 forKeys:&v708 count:1];
  v721[5] = v24;
  v720[6] = @"ClientDetermineAllAvailable";
  v706 = v2;
  v707 = @"ClientInvalidStagingPhase";
  v23 = [NSDictionary dictionaryWithObjects:&v707 forKeys:&v706 count:1];
  v721[6] = v23;
  v720[7] = @"ClientDownloadAlreadyStaged";
  v704 = v2;
  v705 = @"ClientInvalidStagingPhase";
  v22 = [NSDictionary dictionaryWithObjects:&v705 forKeys:&v704 count:1];
  v721[7] = v22;
  v720[8] = @"ClientDownloadGroupsAvailable";
  v702 = v2;
  v703 = @"ClientNewerReplyEmptyDownload";
  v21 = [NSDictionary dictionaryWithObjects:&v703 forKeys:&v702 count:1];
  v721[8] = v21;
  v720[9] = @"ClientDownloadAllAvailable";
  v700 = v2;
  v701 = @"ClientInvalidStagingPhase";
  v20 = [NSDictionary dictionaryWithObjects:&v701 forKeys:&v700 count:1];
  v721[9] = v20;
  v720[10] = @"ClientCancelCompletion";
  v698 = v2;
  v699 = @"ClientCancelDesireForCompletion";
  v19 = [NSDictionary dictionaryWithObjects:&v699 forKeys:&v698 count:1];
  v721[10] = v19;
  v720[11] = @"ClientPurgeAll";
  v696 = v2;
  v697 = @"ClientPurgeDecideStagingClient";
  v18 = [NSDictionary dictionaryWithObjects:&v697 forKeys:&v696 count:1];
  v721[11] = v18;
  v720[12] = @"ClientEraseAll";
  v694 = v2;
  v695 = @"ClientEraseDecideStagingClient";
  v17 = [NSDictionary dictionaryWithObjects:&v695 forKeys:&v694 count:1];
  v721[12] = v17;
  v720[13] = @"JobFailedToStart";
  v692[0] = v3;
  v692[1] = v2;
  v693[0] = @"NothingAvailable";
  v693[1] = @"RemoveAllReplyErased";
  v16 = [NSDictionary dictionaryWithObjects:v693 forKeys:v692 count:2];
  v721[13] = v16;
  v720[14] = @"JobDownloadForStagingProgress";
  v690 = v2;
  v691 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v691 forKeys:&v690 count:1];
  v721[14] = v5;
  v720[15] = @"JobDownloadForStagingSuccess";
  v688[0] = v3;
  v688[1] = v2;
  v689[0] = @"NothingAvailable";
  v689[1] = @"RemoveAllReplyErased";
  v6 = [NSDictionary dictionaryWithObjects:v689 forKeys:v688 count:2];
  v721[15] = v6;
  v720[16] = @"JobDownloadForStagingFailure";
  v686[0] = v3;
  v686[1] = v2;
  v687[0] = @"NothingAvailable";
  v687[1] = @"RemoveAllReplyErased";
  v7 = [NSDictionary dictionaryWithObjects:v687 forKeys:v686 count:2];
  v721[16] = v7;
  v720[17] = @"TimerFiredDetermining";
  v684 = v2;
  v685 = v4;
  v8 = [NSDictionary dictionaryWithObjects:&v685 forKeys:&v684 count:1];
  v721[17] = v8;
  v720[18] = @"EliminateCurrentJob";
  v682 = v2;
  v683 = v4;
  v9 = [NSDictionary dictionaryWithObjects:&v683 forKeys:&v682 count:1];
  v721[18] = v9;
  v720[19] = @"PurgeAcceptedRemoveDownloaded";
  v680 = v2;
  v681 = v4;
  v10 = [NSDictionary dictionaryWithObjects:&v681 forKeys:&v680 count:1];
  v721[19] = v10;
  v720[20] = @"PurgeAcceptedRemoveAll";
  v678 = v2;
  v679 = v4;
  v11 = [NSDictionary dictionaryWithObjects:&v679 forKeys:&v678 count:1];
  v721[20] = v11;
  v720[21] = @"PurgeEraseAcceptedRemoveAll";
  v676 = v2;
  v677 = v4;
  v12 = [NSDictionary dictionaryWithObjects:&v677 forKeys:&v676 count:1];
  v721[21] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v721 forKeys:v720 count:22];
  v2013[27] = v13;
  v139 = [NSDictionary dictionaryWithObjects:v2013 forKeys:v2012 count:28];

  v14 = [[NSDictionary alloc] initWithDictionary:v139 copyItems:1];

  return v14;
}

- (int64_t)performAction:(id)a3 onEvent:(id)a4 inState:(id)a5 withInfo:(id)a6 nextState:(id)a7 error:(id *)a8
{
  v11 = a3;
  v12 = a6;
  if (([v11 isEqualToString:kSUCoreFSMActionNoOp] & 1) == 0)
  {
    if ([v11 isEqualToString:@"LoadDecideNewOSPromote"])
    {
      v14 = [(MADAutoAssetStager *)self action_LoadDecideNewOSPromote:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"LoadPersistedDecideResume"])
    {
      v14 = [(MADAutoAssetStager *)self action_LoadPersistedDecideResume:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ControlUnstagedDecideCancelJob"])
    {
      v14 = [(MADAutoAssetStager *)self action_ControlUnstagedDecideCancelJob:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ControlUnstagedDecideRemoveAll"])
    {
      v14 = [(MADAutoAssetStager *)self action_ControlUnstagedDecideRemoveAll:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientCheckLatchGroupsDetermine"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientCheckLatchGroupsDetermine:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientCheckGroupsDecideAlreadyDetermined"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientCheckGroupsDecideAlreadyDetermined:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientCheckGroupsReplyAlreadyDetermined"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientCheckGroupsReplyAlreadyDetermined:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientAcceptAllDetermine"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientAcceptAllDetermine:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientPurgeDecideStagingClient"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientPurgeDecideStagingClient:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientEraseDecideStagingClient"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientEraseDecideStagingClient:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientContinueUsingLatestRequest"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientContinueUsingLatestRequest:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientRequestAlreadyDownloaded"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientRequestAlreadyDownloaded:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientAcceptNextAvailableBeginDownload"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientAcceptNextAvailableBeginDownload:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientAcceptCancelActiveJob"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientAcceptCancelActiveJob:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientAcceptEraseCancelActiveJob"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientAcceptEraseCancelActiveJob:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientAcceptEraseActiveJob"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientAcceptEraseActiveJob:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientAcceptRemoveAllReplyPurged"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientAcceptRemoveAllReplyPurged:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientAcceptRemoveAllReplyErased"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientAcceptRemoveAllReplyErased:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientNothingStaged"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientNothingStaged:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientHaveStagedContent"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientHaveStagedContent:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientNewerReplyEmptyDetermine"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientNewerReplyEmptyDetermine:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientNewerReplySameOrEmptyDetermine"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientNewerReplySameOrEmptyDetermine:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientNewerReplySameOrEmptyDownload"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientNewerReplySameOrEmptyDownload:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientNewerReplyEmptyDownload"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientNewerReplyEmptyDownload:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientDecideGroupTargetAvailable"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientDecideGroupTargetAvailable:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientInvalidStagingPhase"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientInvalidStagingPhase:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientFailAlreadyDetermining"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientFailAlreadyDetermining:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientFailGroupDetermining"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientFailGroupDetermining:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientFailByGroupAlreadyDownloading"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientFailByGroupAlreadyDownloading:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientFailNoGroupsStaged"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientFailNoGroupsStaged:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientFailWrongMode"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientFailWrongMode:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClientCancelDesireForCompletion"])
    {
      v14 = [(MADAutoAssetStager *)self action_ClientCancelDesireForCompletion:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"RequestAlreadyDownloaded"])
    {
      v14 = [(MADAutoAssetStager *)self action_RequestAlreadyDownloaded:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"AddToAvailableDecideMoreCandidates"])
    {
      v14 = [(MADAutoAssetStager *)self action_AddToAvailableDecideMoreCandidates:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"AddToAvailableDecideRequiredAvailable"])
    {
      v14 = [(MADAutoAssetStager *)self action_AddToAvailableDecideRequiredAvailable:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"IgnoreFailureDecideRequiredAvailable"])
    {
      v14 = [(MADAutoAssetStager *)self action_IgnoreFailureDecideRequiredAvailable:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"DecideMoreCandidates"])
    {
      v14 = [(MADAutoAssetStager *)self action_DecideMoreCandidates:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"DecideHaveAvailableOtherTargets"])
    {
      v14 = [(MADAutoAssetStager *)self action_DecideHaveAvailableOtherTargets:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"DecideHaveRequiredCandidates"])
    {
      v14 = [(MADAutoAssetStager *)self action_DecideHaveRequiredCandidates:v12 error:a8];
    }

    else
    {
      if (![v11 isEqualToString:@"DecideMoreOptionalAvailable"])
      {
        if ([v11 isEqualToString:@"DoneCandidatesRequiredDecideOptional"])
        {
          v14 = [(MADAutoAssetStager *)self action_DoneCandidatesRequiredDecideOptional:v12 error:a8];
          goto LABEL_189;
        }

        if ([v11 isEqualToString:@"DecideRequiredErrorBlocksOTA"])
        {
          v14 = [(MADAutoAssetStager *)self action_DecideRequiredErrorBlocksOTA:v12 error:a8];
          goto LABEL_189;
        }

        if ([v11 isEqualToString:@"FailRequiredDetermineBlocksOTA"])
        {
          v14 = [(MADAutoAssetStager *)self action_FailRequiredDetermineBlocksOTA:v12 error:a8];
          goto LABEL_189;
        }

        if ([v11 isEqualToString:@"ReportStagingProgressToClient"])
        {
          v14 = [(MADAutoAssetStager *)self action_ReportStagingProgressToClient:v12 error:a8];
          goto LABEL_189;
        }

        if ([v11 isEqualToString:@"DecideMoreRequiredAvailable"])
        {
          v14 = [(MADAutoAssetStager *)self action_DecideMoreRequiredAvailable:v12 error:a8];
          goto LABEL_189;
        }

        if ([v11 isEqualToString:@"AddToStaged"])
        {
          v14 = [(MADAutoAssetStager *)self action_AddToStaged:v12 error:a8];
          goto LABEL_189;
        }

        if ([v11 isEqualToString:@"AddToStagedDecideMoreAvailable"])
        {
          v14 = [(MADAutoAssetStager *)self action_AddToStagedDecideMoreAvailable:v12 error:a8];
          goto LABEL_189;
        }

        if (![v11 isEqualToString:@"DecideMoreOptionalAvailable"])
        {
          if ([v11 isEqualToString:@"DecideMoreAvailable"])
          {
            v14 = [(MADAutoAssetStager *)self action_DecideMoreAvailable:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"ClientContinueRestartingMaxDetermining"])
          {
            v14 = [(MADAutoAssetStager *)self action_ClientContinueRestartingMaxDetermining:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"AddToAvailableDecideAnyAvailable"])
          {
            v14 = [(MADAutoAssetStager *)self action_AddToAvailableDecideAnyAvailable:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"DecideTimerDeterminingValid"])
          {
            v14 = [(MADAutoAssetStager *)self action_DecideTimerDeterminingValid:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"FormCandidatesDecideDetermine"])
          {
            v14 = [(MADAutoAssetStager *)self action_FormCandidatesDecideDetermine:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"DoneCandidatesDecideAnyAvailable"])
          {
            v14 = [(MADAutoAssetStager *)self action_DoneCandidatesDecideAnyAvailable:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"NextCandidateBeginDetermine"])
          {
            v14 = [(MADAutoAssetStager *)self action_NextCandidateBeginDetermine:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"NextAwaitingBeginDownload"])
          {
            v14 = [(MADAutoAssetStager *)self action_NextAwaitingBeginDownload:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"DoneAvailableDecideAnyStaged"])
          {
            v14 = [(MADAutoAssetStager *)self action_DoneAvailableDecideAnyStaged:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"ReplyHaveAvailable"])
          {
            v14 = [(MADAutoAssetStager *)self action_ReplyHaveAvailable:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"ReplyNoCandidates"])
          {
            v14 = [(MADAutoAssetStager *)self action_ReplyNoCandidates:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"ReplyNoCandidatesPurgeAll"])
          {
            v14 = [(MADAutoAssetStager *)self action_ReplyNoCandidatesPurgeAll:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"ReplyNoCandidatesEraseAll"])
          {
            v14 = [(MADAutoAssetStager *)self action_ReplyNoCandidatesEraseAll:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"ReplyNothingStaged"])
          {
            v14 = [(MADAutoAssetStager *)self action_ReplyNothingStaged:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"ReplyNothingStagedPurgeAll"])
          {
            v14 = [(MADAutoAssetStager *)self action_ReplyNothingStagedPurgeAll:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"ReplyNothingStagedEraseAll"])
          {
            v14 = [(MADAutoAssetStager *)self action_ReplyNothingStagedEraseAll:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"ReplyHaveStaged"])
          {
            v14 = [(MADAutoAssetStager *)self action_ReplyHaveStaged:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"ReplyFailRequiredDownload"])
          {
            v14 = [(MADAutoAssetStager *)self action_ReplyFailRequiredDownload:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"ReplyNoCandidatesHaveOtherTarget"])
          {
            v14 = [(MADAutoAssetStager *)self action_ReplyNoCandidatesHaveOtherTarget:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"ReplyTargetNotAvailable"])
          {
            v14 = [(MADAutoAssetStager *)self action_ReplyTargetNotAvailable:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"RemoveAllReplyPurged"])
          {
            v14 = [(MADAutoAssetStager *)self action_RemoveAllReplyPurged:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"RemoveAllReplyErased"])
          {
            v14 = [(MADAutoAssetStager *)self action_RemoveAllReplyErased:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"RemoveAllReplyCanceled"])
          {
            v14 = [(MADAutoAssetStager *)self action_RemoveAllReplyCanceled:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"CancelActiveJob"])
          {
            v14 = [(MADAutoAssetStager *)self action_CancelActiveJob:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"EliminateDone"])
          {
            v14 = [(MADAutoAssetStager *)self action_EliminateDone:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"SetEliminateDone"])
          {
            v14 = [(MADAutoAssetStager *)self action_SetEliminateDone:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"RememberEliminateDone"])
          {
            v14 = [(MADAutoAssetStager *)self action_RememberEliminateDone:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"RememberSetEliminateDone"])
          {
            v14 = [(MADAutoAssetStager *)self action_RememberSetEliminateDone:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"EliminateDecideMatch"])
          {
            v14 = [(MADAutoAssetStager *)self action_EliminateDecideMatch:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"SetEliminateDecideMatch"])
          {
            v14 = [(MADAutoAssetStager *)self action_SetEliminateDecideMatch:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"EliminateDeterminingDecideMatch"])
          {
            v14 = [(MADAutoAssetStager *)self action_EliminateDeterminingDecideMatch:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"SetEliminateDeterminingDecideMatch"])
          {
            v14 = [(MADAutoAssetStager *)self action_SetEliminateDeterminingDecideMatch:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"EliminateAvailableDecideEmpty"])
          {
            v14 = [(MADAutoAssetStager *)self action_EliminateAvailableDecideEmpty:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"SetEliminateAvailableDecideEmpty"])
          {
            v14 = [(MADAutoAssetStager *)self action_SetEliminateAvailableDecideEmpty:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"EliminateDoneDecideMoreDownload"])
          {
            v14 = [(MADAutoAssetStager *)self action_EliminateDoneDecideMoreDownload:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"EliminateDoneStagedDecideEmpty"])
          {
            v14 = [(MADAutoAssetStager *)self action_EliminateDoneStagedDecideEmpty:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"SetEliminateDoneStagedDecideEmpty"])
          {
            v14 = [(MADAutoAssetStager *)self action_SetEliminateDoneStagedDecideEmpty:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"EliminateCancelActiveJob"])
          {
            v14 = [(MADAutoAssetStager *)self action_EliminateCancelActiveJob:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"AlteredInvalAllAvailable"])
          {
            v14 = [(MADAutoAssetStager *)self action_AlteredInvalAllAvailable:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"SetTargetInvalAllAvailable"])
          {
            v14 = [(MADAutoAssetStager *)self action_SetTargetInvalAllAvailable:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"AlteredInvalAllAvailableCancelActiveJob"])
          {
            v14 = [(MADAutoAssetStager *)self action_AlteredInvalAllAvailableCancelActiveJob:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"SetTargetInvalAllAvailableCancelActiveJob"])
          {
            v14 = [(MADAutoAssetStager *)self action_SetTargetInvalAllAvailableCancelActiveJob:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"AlteredDecideSameSetConfiguration"])
          {
            v14 = [(MADAutoAssetStager *)self action_AlteredDecideSameSetConfiguration:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"SetTargetDecideSameTarget"])
          {
            v14 = [(MADAutoAssetStager *)self action_SetTargetDecideSameTarget:v12 error:a8];
          }

          else if ([v11 isEqualToString:@"UpdateStagedSituation"])
          {
            v14 = [(MADAutoAssetStager *)self action_UpdateStagedSituation:v12 error:a8];
          }

          else
          {
            v14 = [(MADAutoAssetStager *)self actionUnknownAction:v11 error:a8];
          }

          goto LABEL_189;
        }
      }

      v14 = [(MADAutoAssetStager *)self action_DecideMoreOptionalAvailable:v12 error:a8];
    }

LABEL_189:
    v13 = v14;
    goto LABEL_190;
  }

  v13 = 0;
LABEL_190:

  return v13;
}

- (MADAutoAssetStager)init
{
  v109.receiver = self;
  v109.super_class = MADAutoAssetStager;
  v2 = [(MADAutoAssetStager *)&v109 init];
  if (v2)
  {
    v3 = +[MADAutoAssetControlManager preferenceAsIfBootedOSIsOSVersion];
    v4 = +[MADAutoAssetControlManager preferenceAsIfBootedOSIsBuildVersion];
    v5 = [objc_opt_class() _getAutoAssetStagerStateTable];
    v6 = *(v2 + 3);
    *(v2 + 3) = v5;

    v7 = *(v2 + 9);
    *(v2 + 9) = @"INIT";

    v8 = *(v2 + 10);
    *(v2 + 10) = 0;

    v9 = *(v2 + 11);
    *(v2 + 11) = 0;

    v10 = *(v2 + 12);
    *(v2 + 12) = 0;

    v11 = *(v2 + 13);
    *(v2 + 13) = 0;

    v12 = *(v2 + 14);
    *(v2 + 14) = 0;

    v13 = *(v2 + 15);
    *(v2 + 15) = 0;

    *(v2 + 4) = 0;
    v2[10] = 0;
    *(v2 + 8) = 0u;
    *(v2 + 9) = 0u;
    *(v2 + 10) = 0u;
    *(v2 + 22) = 0;
    if (v3)
    {
      v14 = v3;
      v15 = *(v2 + 23);
      *(v2 + 23) = v14;
    }

    else
    {
      v15 = +[SUCoreDevice sharedDevice];
      v16 = [v15 productVersion];
      v17 = *(v2 + 23);
      *(v2 + 23) = v16;
    }

    if (v4)
    {
      v18 = v4;
    }

    else
    {
      v18 = deviceOSBuildVersion();
    }

    v19 = *(v2 + 24);
    *(v2 + 24) = v18;

    *(v2 + 11) = 0;
    v2[13] = 0;
    v2[14] = +[MADAutoAssetControlManager preferenceAlwaysPromoteStagedAssets];
    v20 = *(v2 + 25);
    *(v2 + 25) = 0;

    v21 = *(v2 + 26);
    *(v2 + 26) = 0;

    v22 = *(v2 + 27);
    *(v2 + 27) = 0;

    v23 = *(v2 + 28);
    *(v2 + 28) = 0;

    v24 = *(v2 + 29);
    *(v2 + 29) = 0;

    v25 = *(v2 + 31);
    *(v2 + 31) = 0;

    v26 = objc_alloc_init(NSMutableDictionary);
    v27 = *(v2 + 32);
    *(v2 + 32) = v26;

    v28 = *(v2 + 33);
    *(v2 + 33) = 0;

    v29 = *(v2 + 34);
    *(v2 + 34) = 0;

    v30 = *(v2 + 35);
    *(v2 + 35) = 0;

    v31 = *(v2 + 37);
    *(v2 + 37) = 0;

    v32 = *(v2 + 38);
    *(v2 + 38) = 0;

    v33 = *(v2 + 39);
    *(v2 + 39) = 0;

    v34 = *(v2 + 40);
    *(v2 + 40) = 0;

    v35 = *(v2 + 41);
    *(v2 + 41) = 0;

    v36 = *(v2 + 42);
    *(v2 + 42) = 0;

    v37 = objc_alloc_init(NSMutableDictionary);
    v38 = *(v2 + 43);
    *(v2 + 43) = v37;

    v39 = objc_alloc_init(NSMutableDictionary);
    v40 = *(v2 + 44);
    *(v2 + 44) = v39;

    v41 = objc_alloc_init(NSMutableArray);
    v42 = *(v2 + 45);
    *(v2 + 45) = v41;

    v43 = objc_alloc_init(NSMutableDictionary);
    v44 = *(v2 + 46);
    *(v2 + 46) = v43;

    v45 = objc_alloc_init(NSMutableDictionary);
    v46 = *(v2 + 47);
    *(v2 + 47) = v45;

    v47 = objc_alloc_init(NSMutableArray);
    v48 = *(v2 + 48);
    *(v2 + 48) = v47;

    v49 = objc_alloc_init(NSCache);
    v50 = *(v2 + 49);
    *(v2 + 49) = v49;

    v51 = objc_alloc_init(NSMutableDictionary);
    v52 = *(v2 + 50);
    *(v2 + 50) = v51;

    v53 = objc_alloc_init(NSMutableArray);
    v54 = *(v2 + 51);
    *(v2 + 51) = v53;

    v55 = objc_alloc_init(NSMutableDictionary);
    v56 = *(v2 + 52);
    *(v2 + 52) = v55;

    v57 = objc_alloc_init(NSMutableDictionary);
    v58 = *(v2 + 53);
    *(v2 + 53) = v57;

    v59 = objc_alloc_init(NSMutableDictionary);
    v60 = *(v2 + 54);
    *(v2 + 54) = v59;

    v61 = objc_alloc_init(NSMutableArray);
    v62 = *(v2 + 55);
    *(v2 + 55) = v61;

    v63 = objc_alloc_init(NSMutableArray);
    v64 = *(v2 + 56);
    *(v2 + 56) = v63;

    v65 = objc_alloc_init(NSMutableDictionary);
    v66 = *(v2 + 57);
    *(v2 + 57) = v65;

    *(v2 + 58) = 0;
    *(v2 + 59) = 0;
    *(v2 + 60) = 0;
    v67 = objc_alloc_init(NSMutableDictionary);
    v68 = *(v2 + 62);
    *(v2 + 62) = v67;

    v69 = *(v2 + 63);
    *(v2 + 63) = 0;

    v70 = objc_alloc_init(NSMutableDictionary);
    v71 = *(v2 + 64);
    *(v2 + 64) = v70;

    v72 = objc_alloc_init(MANAutoAssetControlStatisticsByCommand);
    v73 = *(v2 + 65);
    *(v2 + 65) = v72;

    v74 = objc_alloc_init(MANAutoAssetControlStatisticsByCommand);
    v75 = *(v2 + 66);
    *(v2 + 66) = v74;

    v76 = objc_alloc_init(MANAutoAssetControlStatisticsBySize);
    v77 = *(v2 + 67);
    *(v2 + 67) = v76;

    v78 = objc_alloc_init(MANAutoAssetControlStatisticsBySize);
    v79 = *(v2 + 68);
    *(v2 + 68) = v78;

    *(v2 + 15) = 0;
    v2[17] = 0;
    v80 = *(v2 + 69);
    *(v2 + 69) = @"NONE";

    v2[18] = 0;
    v81 = +[MADAnalyticsManager getAnalyticsManager];
    v82 = *(v2 + 36);
    *(v2 + 36) = v81;

    v83 = [SUCoreFSM alloc];
    v84 = [[NSString alloc] initWithFormat:@"[%@]AutoAssetStager", @"2.5.3"];
    v85 = [v83 initMachine:v84 withTable:*(v2 + 3) startingIn:@"ReadyToLoad" usingDelegate:v2 registeringAllInfoClass:objc_opt_class()];
    v86 = *(v2 + 4);
    *(v2 + 4) = v85;

    if (*(v2 + 4))
    {
      v87 = [MADAutoAssetPersisted alloc];
      v88 = [*(v2 + 4) extendedStateQueue];
      v89 = [(MADAutoAssetPersisted *)v87 initForModule:@"AutoAssetStager" ofModuleVersion:@"1.1" usingDispatchQueue:v88 loggingByName:0 withVersionMigrator:&__block_literal_global_7];
      v90 = *(v2 + 5);
      *(v2 + 5) = v89;

      v91 = [MADAutoAssetPersisted alloc];
      v92 = [*(v2 + 4) extendedStateQueue];
      v93 = [(MADAutoAssetPersisted *)v91 initForModule:@"AutoStagerTargetLookupResults" ofModuleVersion:@"1.0" usingDispatchQueue:v92 loggingByName:0 withVersionMigrator:&__block_literal_global_1810];
      v94 = *(v2 + 6);
      *(v2 + 6) = v93;

      v95 = [MADAutoAssetPersisted alloc];
      v96 = [*(v2 + 4) extendedStateQueue];
      v97 = [(MADAutoAssetPersisted *)v95 initForModule:@"AutoStagerSetLookupResults" ofModuleVersion:@"1.0" usingDispatchQueue:v96 loggingByName:0 withVersionMigrator:&__block_literal_global_1815];
      v98 = *(v2 + 7);
      *(v2 + 7) = v97;

      v99 = [MADAutoAssetPersisted alloc];
      v100 = [*(v2 + 4) extendedStateQueue];
      v101 = [(MADAutoAssetPersisted *)v99 initForModule:@"AutoStagerTargetAvailable" ofModuleVersion:@"1.0" usingDispatchQueue:v100 loggingByName:0 withVersionMigrator:&__block_literal_global_1820];
      v102 = *(v2 + 8);
      *(v2 + 8) = v101;

      v103 = [*(v2 + 4) extendedStateQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __26__MADAutoAssetStager_init__block_invoke_5;
      block[3] = &unk_4B2AA0;
      v107 = v2;
      dispatch_sync(v103, block);

      v104 = v107;
    }

    else
    {
      v104 = _MADLog(@"AutoStager");
      if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v104, OS_LOG_TYPE_ERROR, "{init} failed to initialize AutoAssetStager FSM", buf, 2u);
      }
    }
  }

  return v2;
}

id __26__MADAutoAssetStager_init__block_invoke_5(uint64_t a1)
{
  *(*(a1 + 32) + 19) = 1;
  [*(*(a1 + 32) + 40) flushPersistedStateCacheAndSetCachingBehaviour:*(*(a1 + 32) + 19)];
  [*(*(a1 + 32) + 48) flushPersistedStateCacheAndSetCachingBehaviour:*(*(a1 + 32) + 19)];
  [*(*(a1 + 32) + 56) flushPersistedStateCacheAndSetCachingBehaviour:*(*(a1 + 32) + 19)];
  [*(*(a1 + 32) + 64) flushPersistedStateCacheAndSetCachingBehaviour:*(*(a1 + 32) + 19)];
  v2 = *(*(a1 + 32) + 392);

  return [v2 removeAllObjects];
}

+ (id)autoAssetStager
{
  if (autoAssetStager_dispatchOnceAutoAssetLocker != -1)
  {
    +[MADAutoAssetStager autoAssetStager];
  }

  v3 = autoAssetStager___autoAssetStager;

  return v3;
}

void __37__MADAutoAssetStager_autoAssetStager__block_invoke(id a1)
{
  autoAssetStager___autoAssetStager = objc_alloc_init(MADAutoAssetStager);

  _objc_release_x1();
}

+ (void)clientDetermineGroupsAvailable:(id)a3
{
  v3 = a3;
  v4 = +[MADAutoAssetStager autoAssetStager];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 autoStagerFSM];
    v7 = [[MADAutoAssetStagerParam alloc] initWithStagingClientRequest:v3];
    [v6 postEvent:@"ClientDetermineGroupsAvailable" withInfo:v7];
  }

  else
  {
    v6 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{clientDetermineGroupsAvailable} failed to locate shared AutoAssetStager", v8, 2u);
    }
  }
}

+ (void)clientDetermineAllAvailable:(id)a3
{
  v3 = a3;
  v4 = +[MADAutoAssetStager autoAssetStager];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 autoStagerFSM];
    v7 = [[MADAutoAssetStagerParam alloc] initWithStagingClientRequest:v3];
    [v6 postEvent:@"ClientDetermineAllAvailable" withInfo:v7];
  }

  else
  {
    v6 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{clientDetermineAllAvailable} failed to locate shared AutoAssetStager", v8, 2u);
    }
  }
}

+ (void)clientDownloadGroups:(id)a3 withAlreadyDownloadedDescriptors:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[MADAutoAssetStager autoAssetStager];
  if (v7)
  {
    if (v5)
    {
      v8 = [v5 clientRequestMessage];
      if (v8)
      {
        v9 = v8;
        v10 = [v5 clientRequestMessage];
        v11 = [v10 message];

        if (v11)
        {
          v12 = [v5 clientRequestMessage];
          v13 = [v12 message];

          v14 = [v13 safeObjectForKey:@"desire" ofClass:objc_opt_class()];
          v15 = v14;
          if (v14)
          {
            if ([v14 lockWaitTimeoutSecs])
            {
              v16 = @"ClientDownloadGroupsAvailable";
            }

            else
            {
              v16 = @"ClientDownloadAlreadyStaged";
            }

            v17 = [v7 autoStagerFSM];
            v18 = [[MADAutoAssetStagerParam alloc] initWithStagingClientRequest:v5 withAlreadyDownloadedDescriptors:v6];
            [v17 postEvent:v16 withInfo:v18];

            goto LABEL_13;
          }

          v19 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = [v7 summary];
            v21 = [v5 summary];
            v22 = 138543618;
            v23 = v20;
            v24 = 2114;
            v25 = v21;
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%{public}@ | {clientDownloadGroups} staging-client-request without desire | clientRequest:%{public}@", &v22, 0x16u);
          }

LABEL_12:

LABEL_13:
          goto LABEL_16;
        }
      }
    }

    v15 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v13 = [v7 summary];
      v19 = [v5 summary];
      v22 = 138543618;
      v23 = v13;
      v24 = 2114;
      v25 = v19;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%{public}@ | {clientDownloadGroups} no staging-client-request message | clientRequest:%{public}@", &v22, 0x16u);
      goto LABEL_12;
    }
  }

  else
  {
    v15 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "{clientDownloadGroups} failed to locate shared AutoAssetStager", &v22, 2u);
    }
  }

LABEL_16:
}

+ (void)clientDownloadAll:(id)a3
{
  v3 = a3;
  v4 = +[MADAutoAssetStager autoAssetStager];
  if (v4)
  {
    if (v3)
    {
      v5 = [v3 clientRequestMessage];
      if (v5)
      {
        v6 = v5;
        v7 = [v3 clientRequestMessage];
        v8 = [v7 message];

        if (v8)
        {
          v9 = [v3 clientRequestMessage];
          v10 = [v9 message];

          v11 = [v10 safeObjectForKey:@"desire" ofClass:objc_opt_class()];
          v12 = v11;
          if (v11)
          {
            if ([v11 lockWaitTimeoutSecs])
            {
              v13 = @"ClientDownloadAllAvailable";
            }

            else
            {
              v13 = @"ClientDownloadAlreadyStaged";
            }

            v14 = [v4 autoStagerFSM];
            v15 = [[MADAutoAssetStagerParam alloc] initWithStagingClientRequest:v3];
            [v14 postEvent:v13 withInfo:v15];

            goto LABEL_13;
          }

          v16 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = [v4 summary];
            v18 = [v3 summary];
            v19 = 138543618;
            v20 = v17;
            v21 = 2114;
            v22 = v18;
            _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%{public}@ | {clientDownloadAll} staging-client-request without desire | clientRequest:%{public}@", &v19, 0x16u);
          }

LABEL_12:

LABEL_13:
          goto LABEL_16;
        }
      }
    }

    v12 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v10 = [v4 summary];
      v16 = [v3 summary];
      v19 = 138543618;
      v20 = v10;
      v21 = 2114;
      v22 = v16;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%{public}@ | {clientDownloadAll} no staging-client-request message | clientRequest:%{public}@", &v19, 0x16u);
      goto LABEL_12;
    }
  }

  else
  {
    v12 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "{clientDownloadAll} failed to locate shared AutoAssetStager", &v19, 2u);
    }
  }

LABEL_16:
}

+ (void)clientCancelOperation:(id)a3
{
  v3 = a3;
  v4 = +[MADAutoAssetStager autoAssetStager];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 autoStagerFSM];
    v7 = [[MADAutoAssetStagerParam alloc] initWithStagingClientRequest:v3];
    [v6 postEvent:@"ClientCancelCompletion" withInfo:v7];
  }

  else
  {
    v6 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{clientCancelOperation} failed to locate shared AutoAssetStager", v8, 2u);
    }
  }
}

+ (void)clientPurgeAll:(id)a3
{
  v3 = a3;
  v4 = +[MADAutoAssetStager autoAssetStager];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 autoStagerFSM];
    v7 = [[MADAutoAssetStagerParam alloc] initWithStagingClientRequest:v3];
    [v6 postEvent:@"ClientPurgeAll" withInfo:v7];
  }

  else
  {
    v6 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{clientPurgeAll} failed to locate shared AutoAssetStager", v8, 2u);
    }
  }
}

+ (void)clientEraseAll:(id)a3
{
  v3 = a3;
  v4 = +[MADAutoAssetStager autoAssetStager];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 autoStagerFSM];
    v7 = [[MADAutoAssetStagerParam alloc] initWithStagingClientRequest:v3];
    [v6 postEvent:@"ClientEraseAll" withInfo:v7];
  }

  else
  {
    v6 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{clientEraseAll} failed to locate shared AutoAssetStager", v8, 2u);
    }
  }
}

+ (void)autoAssetStagerJobFailedToStart:(id)a3
{
  v3 = a3;
  v4 = +[MADAutoAssetStager autoAssetStager];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 autoStagerFSM];
    v7 = [[MADAutoAssetStagerParam alloc] initWithJobInformation:0 withDownloadedDescriptor:0 withOperationError:v3];
    [v6 postEvent:@"JobFailedToStart" withInfo:v7];
  }

  else
  {
    v6 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{autoAssetStagerJobFailedToStart} failed to locate shared AutoAssetStager", v8, 2u);
    }
  }
}

+ (void)autoAssetStagerJobDetermineDone:(id)a3 withBaseForStagingDescriptors:(id)a4 withDetermineError:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[MADAutoAssetStager autoAssetStager];
  if (v10)
  {
    v11 = [[MADAutoAssetStagerParam alloc] initWithAutoAssetCatalog:v7 withBaseForStagingDescriptors:v8 withOperationError:v9];
    p_super = &v11->super;
    if (v7)
    {
      v53 = v11;
      v54 = v8;
      v62 = v10;
      v63 = v7;
      v59 = v9;
      if (v9)
      {
        v72 = 0uLL;
        v73 = 0uLL;
        v70 = 0uLL;
        v71 = 0uLL;
        obj = v8;
        v60 = [obj countByEnumeratingWithState:&v70 objects:v76 count:16];
        if (v60)
        {
          v57 = *v71;
          do
          {
            for (i = 0; i != v60; i = i + 1)
            {
              if (*v71 != v57)
              {
                objc_enumerationMutation(obj);
              }

              v14 = *(*(&v70 + 1) + 8 * i);
              v15 = [v14 metadata];
              v16 = [v15 objectForKey:@"_DownloadSize"];
              v17 = [v16 unsignedLongLongValue];

              v64 = [v7 objectForKey:@"AssetId"];
              v18 = [MAAutoAssetSelector alloc];
              v19 = [v14 assetType];
              v20 = [v14 assetSpecifier];
              v21 = [v14 assetVersion];
              v22 = [v18 initForAssetType:v19 withAssetSpecifier:v20 matchingAssetVersion:v21];
              v23 = [v10 assetTargetOSVersion];
              v24 = [v10 assetTargetBuildVersion];
              if ([v14 isPreSUStagingRequired])
              {
                v25 = 0;
              }

              else
              {
                v25 = v17;
              }

              if (![v14 isPreSUStagingRequired])
              {
                v17 = 0;
              }

              LOBYTE(v52) = [v14 isPreSUStagingRequired];
              [MADAutoAssetHistory recordFailedOperation:1101 fromLayer:4 forAssetID:v64 withSelector:v22 failingWithError:v59 forTargetOSVersion:v23 forTargetBuildVersion:v24 withOptionalCount:v25 withRequiredCount:v17 isRequired:v52];

              v10 = v62;
              v7 = v63;
            }

            v60 = [obj countByEnumeratingWithState:&v70 objects:v76 count:16];
          }

          while (v60);
        }
      }

      else
      {
        v68 = 0uLL;
        v69 = 0uLL;
        v66 = 0uLL;
        v67 = 0uLL;
        obja = v8;
        v61 = [obja countByEnumeratingWithState:&v66 objects:v75 count:16];
        if (v61)
        {
          v58 = *v67;
          do
          {
            for (j = 0; j != v61; j = j + 1)
            {
              if (*v67 != v58)
              {
                objc_enumerationMutation(obja);
              }

              v27 = *(*(&v66 + 1) + 8 * j);
              v28 = [v27 metadata];
              v29 = [v28 objectForKey:@"_DownloadSize"];
              v30 = [v29 unsignedLongLongValue];

              v65 = [v7 objectForKey:@"AssetId"];
              v31 = [MAAutoAssetSelector alloc];
              v32 = [v7 objectForKey:@"AssetType"];
              v33 = [v27 assetSpecifier];
              v34 = [v27 assetVersion];
              v35 = [v31 initForAssetType:v32 withAssetSpecifier:v33 matchingAssetVersion:v34];
              v36 = [v10 assetTargetOSVersion];
              v37 = [v10 assetTargetBuildVersion];
              if ([v27 isPreSUStagingRequired])
              {
                v38 = 0;
              }

              else
              {
                v38 = v30;
              }

              if (![v27 isPreSUStagingRequired])
              {
                v30 = 0;
              }

              LOBYTE(v52) = [v27 isPreSUStagingRequired];
              [MADAutoAssetHistory recordOperation:1101 toHistoryType:4 fromLayer:4 forAssetID:v65 withSelector:v35 forTargetOSVersion:v36 forTargetBuildVersion:v37 withOptionalCount:v38 withRequiredCount:v30 isRequired:v52];

              v10 = v62;
              v7 = v63;
            }

            v61 = [obja countByEnumeratingWithState:&v66 objects:v75 count:16];
          }

          while (v61);
        }
      }

      v8 = v54;

      v9 = v59;
      p_super = &v53->super;
    }

    if (v9)
    {
      v39 = @"JobDetermineAvailableFailure";
    }

    else
    {
      v40 = +[MADAutoAssetControlManager preferenceSimulatedStagingLookupFailureResult];
      if (v40 < 1)
      {
        v39 = @"JobDetermineAvailableSuccess";
      }

      else
      {
        v41 = v40;
        v42 = errorStringForMADownloadResult(v40);
        v43 = [NSString stringWithFormat:@"end of set-lookup with simulated error: %@(%ld)", v42, v41];

        v49 = MAErrorForDownloadResultWithUnderlying(v41, 0, @"%@", v44, v45, v46, v47, v48, v43);
        v50 = [[MADAutoAssetStagerParam alloc] initWithAutoAssetCatalog:v7 withBaseForStagingDescriptors:v8 withOperationError:v49];

        v39 = @"JobDetermineAvailableFailure";
        p_super = &v50->super;
      }
    }

    v51 = [v10 autoStagerFSM];
    [v51 postEvent:v39 withInfo:p_super];
  }

  else
  {
    p_super = _MADLog(@"AutoStager");
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, p_super, OS_LOG_TYPE_ERROR, "{autoAssetStagerJobDetermineDone} failed to locate shared AutoAssetStager", buf, 2u);
    }
  }
}

+ (void)autoAssetStagerJobDownloadProgress:(id)a3 withProgressError:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[MADAutoAssetStager autoAssetStager];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 autoStagerFSM];
    v10 = [[MADAutoAssetStagerParam alloc] initWithJobInformation:v5 withDownloadedDescriptor:0 withOperationError:v6];
    [v9 postEvent:@"JobDownloadForStagingProgress" withInfo:v10];
  }

  else
  {
    v9 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "{autoAssetStagerJobDownloadProgress} failed to locate shared AutoAssetStager", v11, 2u);
    }
  }
}

+ (void)autoAssetStagerJobDownloadDone:(id)a3 withDownloadedDescriptor:(id)a4 withDownloadError:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[MADAutoAssetStager autoAssetStager];
  if (v10)
  {
    v28 = v7;
    v11 = [v8 metadata];
    v12 = [v11 objectForKey:@"_DownloadSize"];
    v13 = [v12 unsignedLongLongValue];

    v27 = [v8 assetId];
    v14 = [MAAutoAssetSelector alloc];
    v15 = [v8 assetType];
    v16 = [v8 assetSpecifier];
    v17 = [v8 assetVersion];
    v26 = v15;
    v18 = [v14 initForAssetType:v15 withAssetSpecifier:v16 matchingAssetVersion:v17];
    v19 = [v10 assetTargetOSVersion];
    v20 = [v10 assetTargetBuildVersion];
    if ([v8 isPreSUStagingRequired])
    {
      v21 = 0;
    }

    else
    {
      v21 = v13;
    }

    if (![v8 isPreSUStagingRequired])
    {
      v13 = 0;
    }

    LOBYTE(v25) = [v8 isPreSUStagingRequired];
    if (v9)
    {
      [MADAutoAssetHistory recordFailedOperation:904 fromLayer:4 forAssetID:v27 withSelector:v18 failingWithError:v9 forTargetOSVersion:v19 forTargetBuildVersion:v20 withOptionalCount:v21 withRequiredCount:v13 isRequired:v25];
      v22 = @"JobDownloadForStagingFailure";
    }

    else
    {
      [MADAutoAssetHistory recordOperation:904 toHistoryType:4 fromLayer:4 forAssetID:v27 withSelector:v18 forTargetOSVersion:v19 forTargetBuildVersion:v20 withOptionalCount:v21 withRequiredCount:v13 isRequired:v25];
      v22 = @"JobDownloadForStagingSuccess";
    }

    v23 = [v10 autoStagerFSM];
    v7 = v28;
    v24 = [[MADAutoAssetStagerParam alloc] initWithJobInformation:v28 withDownloadedDescriptor:v8 withOperationError:v9];
    [v23 postEvent:v22 withInfo:v24];
  }

  else
  {
    v23 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "{autoAssetStagerJobDownloadDone} failed to locate shared AutoAssetStager", buf, 2u);
    }
  }
}

+ (id)controlCopyCurrentStagedDescriptors
{
  v2 = +[MADAutoAssetStager autoAssetStager];
  v3 = v2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  if (v2)
  {
    v4 = [v2 autoStagerFSM];
    v5 = [v4 extendedStateQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __57__MADAutoAssetStager_controlCopyCurrentStagedDescriptors__block_invoke;
    v9[3] = &unk_4B2EA8;
    v10 = v3;
    v11 = &v13;
    dispatch_sync(v5, v9);

    v6 = v10;
  }

  else
  {
    v6 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{controlCopyCurrentStagedDescriptors} failed to locate shared AutoAssetStager", buf, 2u);
    }
  }

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __57__MADAutoAssetStager_controlCopyCurrentStagedDescriptors__block_invoke(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) successfullyStaged];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = [*(a1 + 32) successfullyStaged];
        v10 = [v9 safeObjectForKey:v7 ofClass:objc_opt_class()];

        if (v10)
        {
          v11 = *(*(*(a1 + 40) + 8) + 40);
          if (!v11)
          {
            v12 = objc_alloc_init(NSMutableDictionary);
            v13 = *(*(a1 + 40) + 8);
            v14 = *(v13 + 40);
            *(v13 + 40) = v12;

            v11 = *(*(*(a1 + 40) + 8) + 40);
          }

          [v11 setSafeObject:v10 forKey:v7];
        }

        objc_autoreleasePoolPop(v8);
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }
}

+ (void)controlAlreadyDownloadedDescriptors:(id)a3 withSetConfigurations:(id)a4 withSetTargets:(id)a5 withScheduledJobs:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[MADAutoAssetStager autoAssetStager];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 autoStagerFSM];
    v16 = [[MADAutoAssetStagerParam alloc] initWithAlreadyDownloadedDescriptors:v9 withSetConfigurations:v10 withSetTargets:v11 withScheduledJobs:v12];
    [v15 postEvent:@"ControlAlreadyDownloaded" withInfo:v16];
  }

  else
  {
    v15 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "{controlAlreadyDownloadedDescriptors} failed to locate shared AutoAssetStager", v17, 2u);
    }
  }
}

+ (id)controlConvertStagedToDownloaded:(id)a3
{
  v3 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = 0;
  v4 = +[MADAutoAssetStager autoAssetStager];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 autoStagerFSM];
    v7 = [v6 extendedStateQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __55__MADAutoAssetStager_controlConvertStagedToDownloaded___block_invoke;
    block[3] = &unk_4B2E80;
    v14 = &v16;
    v12 = v5;
    v13 = v3;
    dispatch_sync(v7, block);

    v8 = v12;
  }

  else
  {
    v8 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "{controlConvertStagedToDownloaded} failed to locate shared AutoAssetStager", buf, 2u);
    }
  }

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v9;
}

uint64_t __55__MADAutoAssetStager_controlConvertStagedToDownloaded___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _controlConvertStagedToDownloaded:*(a1 + 40)];

  return _objc_release_x1();
}

+ (void)controlStatisticsClientRepliesSuccess:(id *)a3 clientRepliesFailure:(id *)a4 totalStaged:(id *)a5 totalUnstaged:(id *)a6 clearingAfter:(BOOL)a7
{
  v12 = +[MADAutoAssetStager autoAssetStager];
  v13 = v12;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__3;
  v47 = __Block_byref_object_dispose__3;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__3;
  v41 = __Block_byref_object_dispose__3;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__3;
  v35 = __Block_byref_object_dispose__3;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  if (v12)
  {
    v14 = [v12 autoStagerFSM];
    v15 = [v14 extendedStateQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __121__MADAutoAssetStager_controlStatisticsClientRepliesSuccess_clientRepliesFailure_totalStaged_totalUnstaged_clearingAfter___block_invoke;
    v17[3] = &unk_4B35A8;
    v19 = &v43;
    v18 = v13;
    v20 = &v37;
    v21 = &v31;
    v22 = &v25;
    v23 = a7;
    dispatch_sync(v15, v17);

    if (a3)
    {
      *a3 = v44[5];
    }

    if (a4)
    {
      *a4 = v38[5];
    }

    if (a5)
    {
      *a5 = v32[5];
    }

    if (a6)
    {
      *a6 = v26[5];
    }

    v16 = v18;
  }

  else
  {
    v16 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "{controlStatisticsClientRepliesSuccess} failed to locate shared AutoAssetStager", buf, 2u);
    }
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);
}

void __121__MADAutoAssetStager_controlStatisticsClientRepliesSuccess_clientRepliesFailure_totalStaged_totalUnstaged_clearingAfter___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) statisticsClientRepliesSuccess];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) statisticsClientRepliesFailure];
  v7 = [v6 copy];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [*(a1 + 32) statisticsStaged];
  v11 = [v10 copy];
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(a1 + 32) statisticsUnstaged];
  v15 = [v14 copy];
  v16 = *(*(a1 + 64) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  if (*(a1 + 72) == 1)
  {
    v18 = objc_alloc_init(MANAutoAssetControlStatisticsByCommand);
    [*(a1 + 32) setStatisticsClientRepliesSuccess:v18];

    v19 = objc_alloc_init(MANAutoAssetControlStatisticsByCommand);
    [*(a1 + 32) setStatisticsClientRepliesFailure:v19];

    v20 = objc_alloc_init(MANAutoAssetControlStatisticsBySize);
    [*(a1 + 32) setStatisticsStaged:v20];

    v21 = objc_alloc_init(MANAutoAssetControlStatisticsBySize);
    [*(a1 + 32) setStatisticsUnstaged:v21];
  }
}

+ (void)controlEliminateSelector:(id)a3
{
  v3 = a3;
  v4 = +[MADAutoAssetStager autoAssetStager];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 autoStagerFSM];
    v7 = [[MADAutoAssetStagerParam alloc] initWithAssetSelector:v3];
    [v6 postEvent:@"ControlEliminateAssetSelector" withInfo:v7];
  }

  else
  {
    v6 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{controlEliminateSelector} failed to locate shared AutoAssetStager", v8, 2u);
    }
  }
}

+ (void)controlEliminateSetConfiguration:(id)a3
{
  v3 = a3;
  v4 = +[MADAutoAssetStager autoAssetStager];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 autoStagerFSM];
    v7 = [[MADAutoAssetStagerParam alloc] initWithSetConfiguration:v3];
    [v6 postEvent:@"ControlEliminateSetIdentifier" withInfo:v7];
  }

  else
  {
    v6 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{controlEliminateSetConfiguration} failed to locate shared AutoAssetStager", v8, 2u);
    }
  }
}

+ (void)controlAlteredSetConfiguration:(id)a3
{
  v3 = a3;
  v4 = +[MADAutoAssetStager autoAssetStager];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 autoStagerFSM];
    v7 = [[MADAutoAssetStagerParam alloc] initWithSetConfiguration:v3];
    [v6 postEvent:@"ControlAlteredSetConfiguration" withInfo:v7];
  }

  else
  {
    v6 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{controlAlteredSetConfiguration} failed to locate shared AutoAssetStager", v8, 2u);
    }
  }
}

+ (void)controlSetTargetsSpecified:(id)a3
{
  v3 = a3;
  v4 = +[MADAutoAssetStager autoAssetStager];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 autoStagerFSM];
    v7 = [[MADAutoAssetStagerParam alloc] initWithSetTargets:v3];
    [v6 postEvent:@"ControlSetTargetsSpecified" withInfo:v7];
  }

  else
  {
    v6 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{controlSetTargetsSpecified} failed to locate shared AutoAssetStager", v8, 2u);
    }
  }
}

+ (int64_t)previousOTASituation
{
  v2 = +[MADAutoAssetStager autoAssetStager];
  v3 = v2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (v2)
  {
    v4 = [v2 autoStagerFSM];
    v5 = [v4 extendedStateQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __42__MADAutoAssetStager_previousOTASituation__block_invoke;
    v9[3] = &unk_4B2AC8;
    v11 = &v13;
    v10 = v3;
    dispatch_sync(v5, v9);

    v6 = v10;
  }

  else
  {
    v6 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{previousOTASituation} failed to locate shared AutoAssetStager", buf, 2u);
    }
  }

  v7 = v14[3];
  _Block_object_dispose(&v13, 8);

  return v7;
}

id __42__MADAutoAssetStager_previousOTASituation__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) startupPreviousOTASituation];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (void)garbageCollectEliminateSelector:(id)a3
{
  v3 = a3;
  v4 = +[MADAutoAssetStager autoAssetStager];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 autoStagerFSM];
    v7 = [v6 extendedStateQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __54__MADAutoAssetStager_garbageCollectEliminateSelector___block_invoke;
    v9[3] = &unk_4B2B18;
    v10 = v5;
    v11 = v3;
    dispatch_sync(v7, v9);

    v8 = v10;
  }

  else
  {
    v8 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "{garbageCollectEliminateSelector} failed to locate shared AutoAssetStager", buf, 2u);
    }
  }
}

void __54__MADAutoAssetStager_garbageCollectEliminateSelector___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) successfullyStaged];
  v3 = [*(a1 + 40) persistedEntryID];
  v4 = [v2 safeObjectForKey:v3 ofClass:objc_opt_class()];

  if (v4)
  {
    [*(a1 + 32) _removeDescriptorFromSuccessfullyStaged:v4 message:@"eliminated selector due to garbage collection"];
    [*(a1 + 32) _removeStagedAssetFromFilesystem:v4 forHistoryOperation:404];
  }

  else
  {
    v5 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) summary];
      v7 = [*(a1 + 40) summary];
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v7;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {garbageCollectEliminateSelector} not staged | eliminateSelector:%{public}@", &v8, 0x16u);
    }
  }
}

+ (void)extendSummaryWithDeterminedAssets:(id)a3 basedOnControl:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[MADAutoAssetStager autoAssetStager];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 autoStagerFSM];
    v10 = [v9 extendedStateQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __71__MADAutoAssetStager_extendSummaryWithDeterminedAssets_basedOnControl___block_invoke;
    block[3] = &unk_4B2AF0;
    v13 = v8;
    v14 = v5;
    v15 = v6;
    dispatch_sync(v10, block);

    v11 = v13;
  }

  else
  {
    v11 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "{extendSummaryWithStagingAssets} failed to locate shared AutoAssetStager", buf, 2u);
    }
  }
}

+ (void)extendSummaryWithAvailableForStagingAssets:(id)a3
{
  v3 = a3;
  v4 = +[MADAutoAssetStager autoAssetStager];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 autoStagerFSM];
    v7 = [v6 extendedStateQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __65__MADAutoAssetStager_extendSummaryWithAvailableForStagingAssets___block_invoke;
    v9[3] = &unk_4B2B18;
    v10 = v5;
    v11 = v3;
    dispatch_sync(v7, v9);

    v8 = v10;
  }

  else
  {
    v8 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "{extendSummaryWithAvailableForStagingAssets} failed to locate shared AutoAssetStager", buf, 2u);
    }
  }
}

+ (void)extendSummaryWithStagingAssets:(id)a3 basedOnControl:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[MADAutoAssetStager autoAssetStager];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 autoStagerFSM];
    v10 = [v9 extendedStateQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __68__MADAutoAssetStager_extendSummaryWithStagingAssets_basedOnControl___block_invoke;
    block[3] = &unk_4B2AF0;
    v13 = v8;
    v14 = v5;
    v15 = v6;
    dispatch_sync(v10, block);

    v11 = v13;
  }

  else
  {
    v11 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "{extendSummaryWithStagingAssets} failed to locate shared AutoAssetStager", buf, 2u);
    }
  }
}

+ (void)extendSummaryWithStagedAssets:(id)a3 basedOnControl:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[MADAutoAssetStager autoAssetStager];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 autoStagerFSM];
    v10 = [v9 extendedStateQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __67__MADAutoAssetStager_extendSummaryWithStagedAssets_basedOnControl___block_invoke;
    block[3] = &unk_4B2AF0;
    v13 = v8;
    v14 = v5;
    v15 = v6;
    dispatch_sync(v10, block);

    v11 = v13;
  }

  else
  {
    v11 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "{extendSummaryWithStagedAssets} failed to locate shared AutoAssetStager", buf, 2u);
    }
  }
}

+ (id)collectOverviewInformation
{
  v2 = +[MADAutoAssetStager autoAssetStager];
  v3 = v2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  if (v2)
  {
    v4 = [v2 autoStagerFSM];
    v5 = [v4 extendedStateQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __48__MADAutoAssetStager_collectOverviewInformation__block_invoke;
    v9[3] = &unk_4B2AC8;
    v11 = &v13;
    v10 = v3;
    dispatch_sync(v5, v9);

    v6 = v10;
  }

  else
  {
    v6 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{collectOverviewInformation} failed to locate shared AutoAssetStager", buf, 2u);
    }
  }

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

uint64_t __48__MADAutoAssetStager_collectOverviewInformation__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _collectOverviewInformation];

  return _objc_release_x1();
}

- (id)_controlConvertStagedToDownloaded:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [MAAutoAssetSelector alloc];
  v8 = [v4 assetType];
  v9 = [v4 assetSpecifier];
  v10 = [v4 assetVersion];
  v11 = [v7 initForAssetType:v8 withAssetSpecifier:v9 matchingAssetVersion:v10];

  v12 = [(MADAutoAssetStager *)self successfullyStaged];
  v13 = [v11 persistedEntryID];
  v14 = [v12 safeObjectForKey:v13 ofClass:objc_opt_class()];

  if (!v14)
  {
    analyticsManager = self->_analyticsManager;
    v21 = [v11 assetSpecifier];
    v22 = [v11 assetType];
    v23 = [v11 assetVersion];
    v24 = analyticsManager;
    v25 = v21;
    v26 = v22;
    v27 = v23;
    v28 = 0;
    v29 = 0;
    goto LABEL_7;
  }

  [(MADAutoAssetStager *)self _removeDescriptorFromSuccessfullyStaged:v14 message:@"IMMEDIATE-PROMOTION"];
  v15 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(MADAutoAssetStager *)self summary];
    v17 = [v4 summary];
    v33 = 138543618;
    v34 = v16;
    v35 = 2114;
    v36 = v17;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {_controlConvertStagedToDownloaded} IMMEDIATE-PROMOTION | selector:%{public}@", &v33, 0x16u);
  }

  v18 = [(MADAutoAssetStager *)self successfullyStaged];
  v19 = [v18 count];

  if (!v19)
  {
    v20 = self->_analyticsManager;
    v21 = [v11 assetSpecifier];
    v22 = [v11 assetType];
    v23 = [v11 assetVersion];
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v27 = v23;
    v28 = 1;
    v29 = 6;
LABEL_7:
    v31 = [(MADAnalyticsManager *)v24 recordMobileAssetPromotionAttempt:v25 assetType:v26 assetVersion:v27 osPromotion:1 successfullyPromoted:v28 withReason:v29];
  }

  return v14;
}

- (void)_extendSummaryWithDeterminedAssets:(id)a3 basedOnControl:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetStager *)self autoStagerFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  if ([(MADAutoAssetStager *)self stagingClientUsingGroups])
  {
    v10 = [(MADAutoAssetStager *)self availableForStagingRequiredByTarget];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = __72__MADAutoAssetStager__extendSummaryWithDeterminedAssets_basedOnControl___block_invoke;
    v29[3] = &unk_4B35D0;
    v11 = v7;
    v30 = v11;
    v31 = self;
    v12 = v6;
    v32 = v12;
    [v10 enumerateKeysAndObjectsUsingBlock:v29];

    v13 = [(MADAutoAssetStager *)self availableForStagingOptionalByTarget];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __72__MADAutoAssetStager__extendSummaryWithDeterminedAssets_basedOnControl___block_invoke_2;
    v25[3] = &unk_4B35D0;
    v26 = v11;
    v27 = self;
    v28 = v12;
    [v13 enumerateKeysAndObjectsUsingBlock:v25];

    v14 = v30;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = [(MADAutoAssetStager *)self availableForStaging];
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v21 + 1) + 8 * v18);
          v20 = objc_autoreleasePoolPush();
          if ([MADAutoAssetControlManager descriptorToBeIncluded:v19 basedOnControl:v7])
          {
            [(MADAutoAssetStager *)self _addDescriptor:v19 withRepresentation:601 toSummary:v6];
          }

          objc_autoreleasePoolPop(v20);
          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v21 objects:v33 count:16];
      }

      while (v16);
    }
  }
}

void __72__MADAutoAssetStager__extendSummaryWithDeterminedAssets_basedOnControl___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (v6)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if ([MADAutoAssetControlManager descriptorToBeIncluded:v13 basedOnControl:*(a1 + 32), v14])
          {
            [*(a1 + 40) _addDescriptor:v13 withRepresentation:601 toSummary:*(a1 + 48) withStageGroupType:1 withTargetOS:v5];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  objc_autoreleasePoolPop(v7);
}

void __72__MADAutoAssetStager__extendSummaryWithDeterminedAssets_basedOnControl___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (v6)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if ([MADAutoAssetControlManager descriptorToBeIncluded:v13 basedOnControl:*(a1 + 32), v14])
          {
            [*(a1 + 40) _addDescriptor:v13 withRepresentation:601 toSummary:*(a1 + 48) withStageGroupType:2 withTargetOS:v5];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  objc_autoreleasePoolPop(v7);
}

- (void)_extendSummaryWithAvailableForStagingAssets:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetStager *)self availableForStagingRequiredByTarget];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __66__MADAutoAssetStager__extendSummaryWithAvailableForStagingAssets___block_invoke;
  v13[3] = &unk_4B35F8;
  v13[4] = self;
  v8 = v4;
  v14 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:v13];

  v9 = [(MADAutoAssetStager *)self availableForStagingOptionalByTarget];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __66__MADAutoAssetStager__extendSummaryWithAvailableForStagingAssets___block_invoke_2;
  v11[3] = &unk_4B35F8;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v9 enumerateKeysAndObjectsUsingBlock:v11];
}

void __66__MADAutoAssetStager__extendSummaryWithAvailableForStagingAssets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (v6)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(a1 + 32) _addDescriptor:*(*(&v13 + 1) + 8 * v12) withRepresentation:601 toSummary:*(a1 + 40) withStageGroupType:1 withTargetOS:{v5, v13}];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }

  objc_autoreleasePoolPop(v7);
}

void __66__MADAutoAssetStager__extendSummaryWithAvailableForStagingAssets___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (v6)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(a1 + 32) _addDescriptor:*(*(&v13 + 1) + 8 * v12) withRepresentation:601 toSummary:*(a1 + 40) withStageGroupType:2 withTargetOS:{v5, v13}];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }

  objc_autoreleasePoolPop(v7);
}

- (void)_extendSummaryWithStagingAssets:(id)a3 basedOnControl:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetStager *)self autoStagerFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        if ([MADAutoAssetControlManager descriptorToBeIncluded:v15 basedOnControl:v7])
        {
          [(MADAutoAssetStager *)self _addDescriptor:v15 withRepresentation:602 toSummary:v6];
        }

        objc_autoreleasePoolPop(v16);
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }
}

- (void)_extendSummaryWithStagedAssets:(id)a3 basedOnControl:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [(MADAutoAssetStager *)self autoStagerFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(MADAutoAssetStager *)self successfullyStaged];
  v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        v15 = [(MADAutoAssetStager *)self successfullyStaged];
        v16 = [v15 safeObjectForKey:v13 ofClass:objc_opt_class()];

        if ([MADAutoAssetControlManager descriptorToBeIncluded:v16 basedOnControl:v6])
        {
          [(MADAutoAssetStager *)self _addDescriptor:v16 withRepresentation:603 toSummary:v17];
        }

        objc_autoreleasePoolPop(v14);
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }
}

- (void)_addDescriptor:(id)a3 withRepresentation:(int64_t)a4 toSummary:(id)a5 withStageGroupType:(unint64_t)a6 withTargetOS:(id)a7
{
  v10 = a3;
  v50 = a5;
  v49 = a7;
  v11 = [(MADAutoAssetStager *)self autoStagerFSM];
  v12 = [v11 extendedStateQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [v10 downloadedNetworkBytes];
  if (!v13)
  {
    v13 = [v10 downloadedFilesystemBytes];
  }

  v47 = v13;
  v14 = [MAAutoAssetSelector alloc];
  v15 = [v10 assetType];
  v16 = [v10 assetSpecifier];
  v17 = [v10 assetVersion];
  v51 = [v14 initForAssetType:v15 withAssetSpecifier:v16 matchingAssetVersion:v17];

  v46 = [MAAutoAssetStatus alloc];
  v45 = objc_alloc_init(MAAutoAssetNotifications);
  v44 = [v10 metadata];
  v43 = [v10 downloadUserInitiated];
  v18 = [v10 downloadedFilesystemBytes];
  v19 = [v10 isPatch];
  v20 = [v10 patchedFromBaseSelector];
  v21 = [v10 patchedFromBaseFilesystemBytes];
  v22 = [v10 patchingAttempted];
  v23 = [v10 stagedPriorToAvailable];
  v24 = [v10 stagedFromOSVersion];
  v25 = [v10 stagedFromBuildVersion];
  v26 = [v10 patchingAttemptError];
  BYTE1(v40) = v23;
  LOBYTE(v40) = v22;
  v27 = v51;
  LOBYTE(v39) = v19;
  v28 = [v46 initWithAssetSelector:v51 withNotifications:v45 withAvailableForUseAttributes:v44 withNewerVersionAttributes:0 withNeverBeenLocked:1 withDownloadUserInitiated:v43 withDownloadProgress:0 withDownloadedNetworkBytes:v47 withDownloadedFilesystemBytes:v18 withDownloadedAsPatch:v39 withPatchedFromBaseSelector:v20 withPatchedFromBaseFilesystemBytes:v21 withPatchingAttempted:v40 withStagedPriorToAvailable:v24 withStagedFromOSVersion:v25 withStagedFromBuildVersion:0 withCurrentLockUsage:0 withAvailableForUseError:v26 withPatchingAttemptError:0 withNewerVersionError:?];

  v29 = [MAAutoAssetSummary alloc];
  LOBYTE(v18) = objc_opt_respondsToSelector();

  if (v18)
  {
    v30 = [MADAutoAssetSecure isSecureAsset:@"{addDescriptor}" forDescriptor:v10];
    v31 = ![MADAutoAssetSecure isPersonalizationRequired:@"{addDescriptor}" forDescriptor:v10];
    v32 = [MADAutoAssetSecure isPrePersonalized:@"{addDescriptor}" forDescriptor:v10];
    v33 = [MADAutoAssetSecure isGraftedOrMounted:@"{addDescriptor}" forDescriptor:v10];
    v34 = v33;
    if (v33)
    {
      v35 = [MADAutoAssetSecure getGraftPath:@"{addDescriptor}" forDescriptor:v10];
    }

    else
    {
      v35 = 0;
    }

    v37 = v49;
    BYTE3(v41) = v34;
    BYTE2(v41) = v32;
    BYTE1(v41) = v31;
    LOBYTE(v41) = v30;
    v27 = v51;
    v36 = [[MAAutoAssetSummary alloc] initWithAssetSelector:v51 withAssetRepresentation:a4 withAssetWasPatched:objc_msgSend(v10 withAssetIsStaged:"isPatch") withJobStatus:objc_msgSend(v10 withScheduledIntervalSecs:"preSoftwareUpdateAssetStaging") withScheduledRemainingSecs:v28 withPushDelaySecs:0 withActiveClientCount:0 withActiveMonitorCount:0 withMaximumClientCount:0 withTotalClientCount:0 withIsSecureMobileAsset:0 withPersonalizationStatus:0 withPrePersonalizationStatus:v41 withGraftStatus:v35 withGraftPoint:a6 withStageGroupType:v49 withTargetOS:?];
  }

  else
  {
    v36 = [[MAAutoAssetSummary alloc] initWithAssetSelector:v51 withAssetRepresentation:a4 withAssetWasPatched:objc_msgSend(v10 withAssetIsStaged:"isPatch") withJobStatus:objc_msgSend(v10 withScheduledIntervalSecs:"preSoftwareUpdateAssetStaging") withScheduledRemainingSecs:v28 withPushDelaySecs:0 withActiveClientCount:0 withActiveMonitorCount:0 withMaximumClientCount:0 withTotalClientCount:{0, 0, 0}];
    v37 = v49;
  }

  if (v36)
  {
    [v50 addObject:v36];
  }

  else
  {
    v38 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "{AUTO-STAGER:_addDescriptor} | unable to allocate summary entry", buf, 2u);
    }
  }
}

- (void)_addDescriptor:(id)a3 withRepresentation:(int64_t)a4 toSummary:(id)a5
{
  v8 = a5;
  v11 = a3;
  v9 = [(MADAutoAssetStager *)self autoStagerFSM];
  v10 = [v9 extendedStateQueue];
  dispatch_assert_queue_V2(v10);

  [(MADAutoAssetStager *)self _addDescriptor:v11 withRepresentation:a4 toSummary:v8 withStageGroupType:0 withTargetOS:0];
}

- (id)_collectOverviewInformation
{
  v3 = [(MADAutoAssetStager *)self autoStagerFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = objc_alloc_init(MANAutoAssetControlStagerInformation);
  [(MANAutoAssetControlStagerInformation *)v5 setStartupPreviousOTASituation:100];
  [(MANAutoAssetControlStagerInformation *)v5 setActiveTargetOTASituation:100];
  [(MANAutoAssetControlStagerInformation *)v5 setOtherTargetOTASituation:100];
  context = objc_autoreleasePoolPush();
  v6 = [(MADAutoAssetStager *)self assetTargetTrainName];
  v7 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  v8 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v6 withRestoreVersion:v7];

  v9 = [(MADAutoAssetStager *)self assetTargetTrainName];
  v97 = v8;
  if (!v9)
  {
    v91 = 0;
    v92 = 0;
    v89 = 0;
    v90 = 0;
    v88 = 0;
    v11 = 0;
    goto LABEL_5;
  }

  v10 = [(MADAutoAssetStager *)self assetTargetTrainName];
  if ([SUCore stringIsEqual:v10 to:@"NO_STAGING_ATTEMPTED"])
  {

    v91 = 0;
    v92 = 0;
    v89 = 0;
    v90 = 0;
    v88 = 0;
    v11 = 0;
    v9 = 0;
LABEL_5:
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_6;
  }

  v17 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  if (v17)
  {
    v51 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
    v52 = [SUCore stringIsEqual:v51 to:@"NO_STAGING_ATTEMPTED"];

    v17 = 0;
    v92 = 0;
    if (v52)
    {
      v89 = 0;
      v90 = 0;
      v88 = 0;
      v91 = 0;
      v11 = 0;
      v9 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v89 = 0;
      v90 = 0;
      v88 = 0;
      v91 = 0;
      v11 = 0;
      v9 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      if (v97)
      {
        v53 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
        v54 = [v53 persistedEntryIDs:@"_collectOverviewInformation"];

        v55 = [v54 count];
        v56 = [(MADAutoAssetStager *)self candidatesForStagingRequiredByTarget];
        v96 = [v56 safeObjectForKey:v97 ofClass:objc_opt_class()];

        v57 = [(MADAutoAssetStager *)self candidatesForStagingOptionalByTarget];
        v95 = [v57 safeObjectForKey:v97 ofClass:objc_opt_class()];

        v58 = [(MADAutoAssetStager *)self candidateSetConfigurationsRequiredByTarget];
        v94 = [v58 safeObjectForKey:v97 ofClass:objc_opt_class()];

        v59 = [(MADAutoAssetStager *)self candidateSetConfigurationsOptionalByTarget];
        v93 = [v59 safeObjectForKey:v97 ofClass:objc_opt_class()];

        v60 = [(MADAutoAssetStager *)self availableForStagingRequiredByTarget];
        v100 = [v60 safeObjectForKey:v97 ofClass:objc_opt_class()];

        v61 = [(MADAutoAssetStager *)self availableForStagingOptionalByTarget];
        v98 = [v61 safeObjectForKey:v97 ofClass:objc_opt_class()];

        v62 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
        v63 = [v62 persistedEntry:v97 fromLocation:@"_collectOverviewInformation"];

        if (v63)
        {
          v64 = [v63 ullForKey:@"targetLookupResultsOTASituation"];
          if (!v64)
          {
            if ([(MADAutoAssetStager *)self storedTargetWithOTASituation])
            {
              v64 = &stru_B8 + 20;
            }

            else
            {
              v64 = &stru_20 + 69;
            }
          }

          [(MANAutoAssetControlStagerInformation *)v5 setActiveTargetOTASituation:v64];
        }

        else
        {
          v65 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            v66 = [(MADAutoAssetStager *)self summary];
            *buf = 138543618;
            v107 = v66;
            v108 = 2114;
            v109 = v97;
            _os_log_impl(&dword_0, v65, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {_collectOverviewInformation} unable to load entry from persistedTargetLookupResults (most recent target-OS) | targetLookupResultsKey:%{public}@, ", buf, 0x16u);
          }
        }

        if (v55 < 2)
        {
          v91 = 0;
          v92 = 0;
          v89 = 0;
          v90 = 0;
          v88 = 0;
          v11 = 0;
          v17 = 0;
        }

        else
        {
          v86 = v63;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v67 = v54;
          v68 = [v67 countByEnumeratingWithState:&v101 objects:v105 count:16];
          if (v68)
          {
            v69 = v68;
            v70 = *v102;
LABEL_28:
            v71 = 0;
            while (1)
            {
              if (*v102 != v70)
              {
                objc_enumerationMutation(v67);
              }

              v72 = *(*(&v101 + 1) + 8 * v71);
              if (![SUCore stringIsEqual:v72 to:v97, v86])
              {
                break;
              }

              if (v69 == ++v71)
              {
                v69 = [v67 countByEnumeratingWithState:&v101 objects:v105 count:16];
                if (v69)
                {
                  goto LABEL_28;
                }

                goto LABEL_34;
              }
            }

            v17 = v72;

            if (!v17)
            {
              v91 = 0;
              v92 = 0;
              v89 = 0;
              v90 = 0;
              v88 = 0;
              v11 = 0;
              goto LABEL_44;
            }

            v73 = [(MADAutoAssetStager *)self candidatesForStagingRequiredByTarget];
            v11 = [v73 safeObjectForKey:v17 ofClass:objc_opt_class()];

            v74 = [(MADAutoAssetStager *)self candidatesForStagingOptionalByTarget];
            v91 = [v74 safeObjectForKey:v17 ofClass:objc_opt_class()];

            v75 = [(MADAutoAssetStager *)self candidateSetConfigurationsRequiredByTarget];
            v92 = [v75 safeObjectForKey:v17 ofClass:objc_opt_class()];

            v76 = [(MADAutoAssetStager *)self candidateSetConfigurationsOptionalByTarget];
            v77 = [v76 safeObjectForKey:v17 ofClass:objc_opt_class()];

            v78 = [(MADAutoAssetStager *)self availableForStagingRequiredByTarget];
            v79 = [v78 safeObjectForKey:v17 ofClass:objc_opt_class()];

            v80 = [(MADAutoAssetStager *)self availableForStagingOptionalByTarget];
            v81 = [v80 safeObjectForKey:v17 ofClass:objc_opt_class()];

            v82 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
            v83 = [v82 persistedEntry:v17 fromLocation:@"_collectOverviewInformation"];

            v89 = v79;
            v90 = v77;
            v88 = v81;
            if (v83)
            {
              v84 = [v83 ullForKey:@"targetLookupResultsOTASituation"];
              if (!v84)
              {
                if ([(MADAutoAssetStager *)self storedTargetWithOTASituation])
                {
                  v84 = &stru_B8 + 20;
                }

                else
                {
                  v84 = &stru_20 + 69;
                }
              }

              [(MANAutoAssetControlStagerInformation *)v5 setOtherTargetOTASituation:v84];
              v63 = v83;
            }

            else
            {
              v85 = _MADLog(@"AutoStager");
              if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
              {
                v86 = [(MADAutoAssetStager *)self summary];
                *buf = 138543618;
                v107 = v86;
                v108 = 2114;
                v109 = v17;
                _os_log_impl(&dword_0, v85, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {_collectOverviewInformation} unable to load entry from persistedTargetLookupResults (other target-OS) | otherTargetLookupResultsKey:%{public}@, ", buf, 0x16u);
              }

              v63 = 0;
            }
          }

          else
          {
LABEL_34:

            v91 = 0;
            v92 = 0;
            v89 = 0;
            v90 = 0;
            v88 = 0;
            v11 = 0;
            v17 = 0;
LABEL_44:
            v63 = v86;
          }
        }

        v15 = v95;
        v16 = v96;
        v13 = v93;
        v14 = v94;
        v9 = v98;
        v12 = v100;
      }
    }
  }

  else
  {

    v91 = 0;
    v92 = 0;
    v89 = 0;
    v90 = 0;
    v88 = 0;
    v11 = 0;
    v9 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

LABEL_6:
  v99 = v12;
  v18 = [(MADAutoAssetStager *)self persistedState];
  -[MANAutoAssetControlStagerInformation setPersistedStateCount:](v5, "setPersistedStateCount:", [v18 persistedEntryCount:@"_collectOverviewInformation"]);

  v19 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
  -[MANAutoAssetControlStagerInformation setPersistedTargetLookupResultsCount:](v5, "setPersistedTargetLookupResultsCount:", [v19 persistedEntryCount:@"_collectOverviewInformation"]);

  v20 = [(MADAutoAssetStager *)self persistedAvailableForStagingByTarget];
  -[MANAutoAssetControlStagerInformation setPersistedAvailableForStagingByTargetCount:](v5, "setPersistedAvailableForStagingByTargetCount:", [v20 persistedEntryCount:@"_collectOverviewInformation"]);

  v21 = [(MADAutoAssetStager *)self startupLastStagingFromOSVersion];
  [(MANAutoAssetControlStagerInformation *)v5 setStartupLastStagingFromOSVersion:v21];

  v22 = [(MADAutoAssetStager *)self startupLastStagingFromBuildVersion];
  [(MANAutoAssetControlStagerInformation *)v5 setStartupLastStagingFromBuildVersion:v22];

  v23 = [(MADAutoAssetStager *)self startupAssetTargetOSVersion];
  [(MANAutoAssetControlStagerInformation *)v5 setStartupAssetTargetOSVersion:v23];

  v24 = [(MADAutoAssetStager *)self startupAssetTargetBuildVersion];
  [(MANAutoAssetControlStagerInformation *)v5 setStartupAssetTargetBuildVersion:v24];

  [(MANAutoAssetControlStagerInformation *)v5 setStartupCandidateAssetCount:[(MADAutoAssetStager *)self startupCandidateAssetCount]];
  [(MANAutoAssetControlStagerInformation *)v5 setStartupDeterminedAvailableAssetCount:[(MADAutoAssetStager *)self startupDeterminedAvailableAssetCount]];
  [(MANAutoAssetControlStagerInformation *)v5 setStartupActivelyStagingAssetCount:[(MADAutoAssetStager *)self startupActivelyStagingAssetCount]];
  [(MANAutoAssetControlStagerInformation *)v5 setStartupAwaitingStagingAssetCount:[(MADAutoAssetStager *)self startupAwaitingStagingAssetCount]];
  [(MANAutoAssetControlStagerInformation *)v5 setStartupStagedAssetCount:[(MADAutoAssetStager *)self startupStagedAssetCount]];
  [(MANAutoAssetControlStagerInformation *)v5 setStartupStagedAssetTotalContentBytes:[(MADAutoAssetStager *)self startupStagedAssetTotalContentBytes]];
  [(MANAutoAssetControlStagerInformation *)v5 setStartupPreviousOTASituation:[(MADAutoAssetStager *)self startupPreviousOTASituation]];
  v25 = [(MADAutoAssetStager *)self stagingFromOSVersion];
  [(MANAutoAssetControlStagerInformation *)v5 setStagingFromOSVersion:v25];

  v26 = [(MADAutoAssetStager *)self stagingFromBuildVersion];
  [(MANAutoAssetControlStagerInformation *)v5 setStagingFromBuildVersion:v26];

  [(MANAutoAssetControlStagerInformation *)v5 setLoadPersistedPostponed:[(MADAutoAssetStager *)self loadPersistedPostponed]];
  [(MANAutoAssetControlStagerInformation *)v5 setAlwaysPromoteStagedAssets:[(MADAutoAssetStager *)self alwaysPromoteStagedAssets]];
  v27 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  [(MANAutoAssetControlStagerInformation *)v5 setAssetTargetOSVersion:v27];

  v28 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  [(MANAutoAssetControlStagerInformation *)v5 setAssetTargetBuildVersion:v28];

  v29 = [(MADAutoAssetStager *)self assetTargetTrainName];
  [(MANAutoAssetControlStagerInformation *)v5 setAssetTargetTrainName:v29];

  v30 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  [(MANAutoAssetControlStagerInformation *)v5 setAssetTargetRestoreVersion:v30];

  v31 = [(MADAutoAssetStager *)self optionalAssetSizeAllowed];
  [(MANAutoAssetControlStagerInformation *)v5 setOptionalAssetSizeAllowed:v31];

  -[MANAutoAssetControlStagerInformation setActiveTargetCandidatesForStagingRequiredCount:](v5, "setActiveTargetCandidatesForStagingRequiredCount:", [v16 count]);
  -[MANAutoAssetControlStagerInformation setActiveTargetCandidatesForStagingOptionalCount:](v5, "setActiveTargetCandidatesForStagingOptionalCount:", [v15 count]);
  -[MANAutoAssetControlStagerInformation setActiveTargetCandidateSetConfigurationsRequiredCount:](v5, "setActiveTargetCandidateSetConfigurationsRequiredCount:", [v14 count]);
  -[MANAutoAssetControlStagerInformation setActiveTargetCandidateSetConfigurationsOptionalCount:](v5, "setActiveTargetCandidateSetConfigurationsOptionalCount:", [v13 count]);
  -[MANAutoAssetControlStagerInformation setActiveTargetAvailableForStagingRequiredCount:](v5, "setActiveTargetAvailableForStagingRequiredCount:", [v99 count]);
  -[MANAutoAssetControlStagerInformation setActiveTargetAvailableForStagingOptionalCount:](v5, "setActiveTargetAvailableForStagingOptionalCount:", [v9 count]);
  if (v17)
  {
    [(MANAutoAssetControlStagerInformation *)v5 setOtherTargetName:v17];
    -[MANAutoAssetControlStagerInformation setOtherTargetCandidatesForStagingRequiredCount:](v5, "setOtherTargetCandidatesForStagingRequiredCount:", [v11 count]);
    -[MANAutoAssetControlStagerInformation setOtherTargetCandidatesForStagingOptionalCount:](v5, "setOtherTargetCandidatesForStagingOptionalCount:", [v91 count]);
    -[MANAutoAssetControlStagerInformation setOtherTargetCandidateSetConfigurationsRequiredCount:](v5, "setOtherTargetCandidateSetConfigurationsRequiredCount:", [v92 count]);
    -[MANAutoAssetControlStagerInformation setOtherTargetCandidateSetConfigurationsOptionalCount:](v5, "setOtherTargetCandidateSetConfigurationsOptionalCount:", [v90 count]);
    -[MANAutoAssetControlStagerInformation setOtherTargetAvailableForStagingRequiredCount:](v5, "setOtherTargetAvailableForStagingRequiredCount:", [v89 count]);
    -[MANAutoAssetControlStagerInformation setOtherTargetAvailableForStagingOptionalCount:](v5, "setOtherTargetAvailableForStagingOptionalCount:", [v88 count]);
  }

  v32 = [(MADAutoAssetStager *)self stagingClientDetermineRequests];
  -[MANAutoAssetControlStagerInformation setStagingClientDetermineRequestsCount:](v5, "setStagingClientDetermineRequestsCount:", [v32 count]);

  v33 = [(MADAutoAssetStager *)self stagingClientDownloadRequest];
  [(MANAutoAssetControlStagerInformation *)v5 setStagingClientDownloadRequestActive:v33 != 0];

  v34 = [(MADAutoAssetStager *)self stagingClientRequest];
  [(MANAutoAssetControlStagerInformation *)v5 setStagingClientRequestActive:v34 != 0];

  v35 = [(MADAutoAssetStager *)self stagingClientName];
  [(MANAutoAssetControlStagerInformation *)v5 setStagingClientName:v35];

  v36 = [(MADAutoAssetStager *)self setConfigurations];
  -[MANAutoAssetControlStagerInformation setSetConfigurationsCount:](v5, "setSetConfigurationsCount:", [v36 count]);

  v37 = [(MADAutoAssetStager *)self setTargets];
  -[MANAutoAssetControlStagerInformation setSetTargetsCount:](v5, "setSetTargetsCount:", [v37 count]);

  v38 = [(MADAutoAssetStager *)self scheduledJobs];
  -[MANAutoAssetControlStagerInformation setScheduledJobsCount:](v5, "setScheduledJobsCount:", [v38 count]);

  v39 = [(MADAutoAssetStager *)self candidatesForStaging];
  -[MANAutoAssetControlStagerInformation setCandidatesForStagingCount:](v5, "setCandidatesForStagingCount:", [v39 count]);

  v40 = [(MADAutoAssetStager *)self candidateSetConfigurations];
  -[MANAutoAssetControlStagerInformation setCandidateSetConfigurationsCount:](v5, "setCandidateSetConfigurationsCount:", [v40 count]);

  v41 = [(MADAutoAssetStager *)self setLookupResults];
  -[MANAutoAssetControlStagerInformation setSetLookupResultsCount:](v5, "setSetLookupResultsCount:", [v41 count]);

  v42 = [(MADAutoAssetStager *)self baseForStagingDescriptors];
  -[MANAutoAssetControlStagerInformation setBaseForStagingDescriptorsCount:](v5, "setBaseForStagingDescriptorsCount:", [v42 count]);

  v43 = [(MADAutoAssetStager *)self determiningBySelector];
  -[MANAutoAssetControlStagerInformation setDeterminingBySelectorCount:](v5, "setDeterminingBySelectorCount:", [v43 count]);

  v44 = [(MADAutoAssetStager *)self availableForStaging];
  -[MANAutoAssetControlStagerInformation setAvailableForStagingCount:](v5, "setAvailableForStagingCount:", [v44 count]);

  v45 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
  -[MANAutoAssetControlStagerInformation setAwaitingStagingAttemptCount:](v5, "setAwaitingStagingAttemptCount:", [v45 count]);

  v46 = [(MADAutoAssetStager *)self successfullyStaged];
  -[MANAutoAssetControlStagerInformation setSuccessfullyStagedCount:](v5, "setSuccessfullyStagedCount:", [v46 count]);

  [(MANAutoAssetControlStagerInformation *)v5 setOverallStagedTotalExpectedBytes:[(MADAutoAssetStager *)self overallStagedTotalExpectedBytes]];
  [(MANAutoAssetControlStagerInformation *)v5 setOverallStagedDownloadedSoFarBytes:[(MADAutoAssetStager *)self overallStagedDownloadedSoFarBytes]];
  [(MANAutoAssetControlStagerInformation *)v5 setCurrentStagedLastWrittenBytes:[(MADAutoAssetStager *)self currentStagedLastWrittenBytes]];
  [(MANAutoAssetControlStagerInformation *)v5 setCurrentStagedRemainingBytes:[(MADAutoAssetStager *)self currentStagedRemainingBytes]];
  v47 = [(MADAutoAssetStager *)self eliminationSelectors];
  -[MANAutoAssetControlStagerInformation setEliminationSelectorsCount:](v5, "setEliminationSelectorsCount:", [v47 count]);

  v48 = [(MADAutoAssetStager *)self eliminationSetConfigurationCurrentJob];
  [(MANAutoAssetControlStagerInformation *)v5 setEliminationSetConfigurationCurrentJob:v48 != 0];

  v49 = [(MADAutoAssetStager *)self eliminationSelectorsAcknowledged];
  -[MANAutoAssetControlStagerInformation setEliminationSelectorsAcknowledgedCount:](v5, "setEliminationSelectorsAcknowledgedCount:", [v49 count]);

  objc_autoreleasePoolPop(context);

  return v5;
}

+ (void)resumeFromPersisted
{
  v2 = +[MADAutoAssetStager autoAssetStager];
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  v3 = _os_activity_create(&dword_0, "MADStager:resumeFromPersisted", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &v6);

  if (v2)
  {
    v4 = [v2 autoStagerFSM];
    v5 = [[MADAutoAssetStagerParam alloc] initWithSafeSummary:@"resumeFromPersisted"];
    [v4 postEvent:@"ControlResumeFromPersisted" withInfo:v5];
  }

  else
  {
    v4 = [MADAutoAssetControlManager selectDispatchQueue:0, v6.opaque[0], v6.opaque[1]];
    dispatch_async(v4, &__block_literal_global_1859);
  }

  os_activity_scope_leave(&v6);
}

void __41__MADAutoAssetStager_resumeFromPersisted__block_invoke(id a1)
{
  v1 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "{AUTO-STAGER:resumeFromPersisted} | unable to determine previous staging information from persisted-state (no auto-asset-stager)", v2, 2u);
  }

  [MADAutoAssetControlManager stagerResumed:0 withSetLookupResults:0 performingNewOSPromotion:0 requiringLoadPriorToUse:0];
}

+ (void)finishSuspendedResumeFromPersisted
{
  v2 = +[MADAutoAssetStager autoAssetStager];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 autoStagerFSM];
    v5 = [[MADAutoAssetStagerParam alloc] initWithSafeSummary:@"finishSuspendedResumeFromPersisted"];
    [v4 postEvent:@"ControlFinishResumeFromPersisted" withInfo:v5];
  }

  else
  {
    v4 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "{AUTO-STAGER:finishSuspendedResumeFromPersisted} | no auto-asset-stager", v6, 2u);
    }
  }
}

- (int64_t)action_LoadDecideNewOSPromote:(id)a3 error:(id *)a4
{
  v105 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = _os_activity_create(&dword_0, "MADStager:LoadDecideNewOSPromote", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);

  v8 = [(MADAutoAssetStager *)self persistedState];
  [v8 loadPersistedState:@"LoadDecideNewOSPromote"];

  v9 = [(MADAutoAssetStager *)self persistedState];
  v10 = [v9 persistedConfig];
  v11 = [v10 stringForKey:@"lastStagingFromOSVersion"];
  [(MADAutoAssetStager *)self setStartupLastStagingFromOSVersion:v11];

  v12 = [(MADAutoAssetStager *)self persistedState];
  v13 = [v12 persistedConfig];
  v14 = [v13 stringForKey:@"lastStagingFromBuildVersion"];
  [(MADAutoAssetStager *)self setStartupLastStagingFromBuildVersion:v14];

  v15 = [(MADAutoAssetStager *)self persistedState];
  v16 = [v15 persistedConfig];
  v17 = [v16 stringForKey:@"assetTargetOSVersion"];
  [(MADAutoAssetStager *)self setStartupAssetTargetOSVersion:v17];

  v18 = [(MADAutoAssetStager *)self persistedState];
  v19 = [v18 persistedConfig];
  v20 = [v19 stringForKey:@"assetTargetBuildVersion"];
  [(MADAutoAssetStager *)self setStartupAssetTargetBuildVersion:v20];

  v21 = [(MADAutoAssetStager *)self persistedState];
  v22 = [v21 persistedConfig];
  v23 = [v22 stringForKey:@"assetTargetTrainName"];
  [(MADAutoAssetStager *)self setStartupAssetTargetTrainName:v23];

  v24 = [(MADAutoAssetStager *)self persistedState];
  v25 = [v24 persistedConfig];
  v26 = [v25 stringForKey:@"assetTargetRestoreVersion"];
  [(MADAutoAssetStager *)self setStartupAssetTargetRestoreVersion:v26];

  v27 = [(MADAutoAssetStager *)self persistedState];
  v28 = [v27 persistedConfig];
  -[MADAutoAssetStager setStartupModeByGroups:](self, "setStartupModeByGroups:", [v28 BOOLeanForKey:@"modeByGroups"]);

  v29 = [(MADAutoAssetStager *)self persistedState];
  v30 = [v29 persistedConfig];
  -[MADAutoAssetStager setStartupCandidateAssetCount:](self, "setStartupCandidateAssetCount:", [v30 ullForKey:@"candidateAssetCount"]);

  v31 = [(MADAutoAssetStager *)self persistedState];
  v32 = [v31 persistedConfig];
  -[MADAutoAssetStager setStartupDeterminedAvailableAssetCount:](self, "setStartupDeterminedAvailableAssetCount:", [v32 ullForKey:@"determinedAvailableAssetCount"]);

  v33 = [(MADAutoAssetStager *)self persistedState];
  v34 = [v33 persistedConfig];
  -[MADAutoAssetStager setStartupActivelyStagingAssetCount:](self, "setStartupActivelyStagingAssetCount:", [v34 ullForKey:@"activelyStagingAssetCount"]);

  v35 = [(MADAutoAssetStager *)self persistedState];
  v36 = [v35 persistedConfig];
  -[MADAutoAssetStager setStartupAwaitingStagingAssetCount:](self, "setStartupAwaitingStagingAssetCount:", [v36 ullForKey:@"awaitingStagingAssetCount"]);

  v37 = [(MADAutoAssetStager *)self persistedState];
  v38 = [v37 persistedConfig];
  -[MADAutoAssetStager setStartupStagedAssetCount:](self, "setStartupStagedAssetCount:", [v38 ullForKey:@"stagedAssetCount"]);

  v39 = [(MADAutoAssetStager *)self persistedState];
  v40 = [v39 persistedConfig];
  -[MADAutoAssetStager setStartupStagedAssetTotalContentBytes:](self, "setStartupStagedAssetTotalContentBytes:", [v40 ullForKey:@"stagedAssetTotalContentBytes"]);

  v41 = [(MADAutoAssetStager *)self persistedState];
  v42 = [v41 persistedConfig];
  -[MADAutoAssetStager setStartupStagedNoContent:](self, "setStartupStagedNoContent:", [v42 BOOLeanForKey:@"stagedNoContent"]);

  v43 = [(MADAutoAssetStager *)self persistedState];
  v44 = [v43 persistedConfig];
  -[MADAutoAssetStager setStartupPreviousOTASituation:](self, "setStartupPreviousOTASituation:", [v44 ullForKey:@"previousOTASituation"]);

  if ([(MADAutoAssetStager *)self startupPreviousOTASituation])
  {
    v45 = _MADLog(@"AutoStagerSituation");
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [(MADAutoAssetStager *)self summary];
      v47 = [MANAutoAssetControlStagerInformation previousOTASituationName:[(MADAutoAssetStager *)self startupPreviousOTASituation]];
      *buf = 138543618;
      v113 = v46;
      v114 = 2114;
      v115 = v47;
      _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {LoadDecideNewOSPromote} maintaining previous-OTA-situation | startupPreviousOTASituation:%{public}@", buf, 0x16u);
    }
  }

  else
  {
    [(MADAutoAssetStager *)self setStartupPreviousOTASituation:100];
    v48 = [(MADAutoAssetStager *)self persistedState];
    v49 = [v48 persistedConfig];
    [v49 persistULL:-[MADAutoAssetStager startupPreviousOTASituation](self forKey:{"startupPreviousOTASituation"), @"previousOTASituation"}];

    v45 = _MADLog(@"AutoStagerSituation");
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v50 = [(MADAutoAssetStager *)self summary];
      v51 = [MANAutoAssetControlStagerInformation previousOTASituationName:[(MADAutoAssetStager *)self startupPreviousOTASituation]];
      *buf = 138543618;
      v113 = v50;
      v114 = 2114;
      v115 = v51;
      _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {LoadDecideNewOSPromote} first execution of MA daemon tracking previous-OTA-situation | startupPreviousOTASituation:%{public}@", buf, 0x16u);
    }
  }

  v52 = [(MADAutoAssetStager *)self persistedState];
  v53 = [v52 persistedConfig];
  -[MADAutoAssetStager setStoredTargetWithOTASituation:](self, "setStoredTargetWithOTASituation:", [v53 BOOLeanForKey:@"storedTargetWithOTASituation"]);

  [(MADAutoAssetStager *)self _logPersistedConfigLoad:@"LoadDecideNewOSPromote" message:@"loaded configuration to determine whether new OS promotion is to occur"];
  v106 = [NSString alloc];
  v110 = [(MADAutoAssetStager *)self startupLastStagingFromOSVersion];
  if (v110)
  {
    v109 = [(MADAutoAssetStager *)self startupLastStagingFromOSVersion];
  }

  else
  {
    v109 = @"N";
  }

  v54 = [(MADAutoAssetStager *)self startupLastStagingFromBuildVersion];
  if (v54)
  {
    v108 = [(MADAutoAssetStager *)self startupLastStagingFromBuildVersion];
  }

  else
  {
    v108 = @"N";
  }

  v55 = [(MADAutoAssetStager *)self startupAssetTargetOSVersion];
  if (v55)
  {
    v56 = [(MADAutoAssetStager *)self startupAssetTargetOSVersion];
  }

  else
  {
    v56 = @"N";
  }

  v57 = [(MADAutoAssetStager *)self startupAssetTargetBuildVersion];
  if (v57)
  {
    v58 = [(MADAutoAssetStager *)self startupAssetTargetBuildVersion];
  }

  else
  {
    v58 = @"N";
  }

  v59 = [(MADAutoAssetStager *)self startupAssetTargetTrainName];
  if (v59)
  {
    v60 = [(MADAutoAssetStager *)self startupAssetTargetTrainName];
  }

  else
  {
    v60 = @"N";
  }

  v61 = [(MADAutoAssetStager *)self startupAssetTargetRestoreVersion];
  v62 = @"N";
  if (v61)
  {
    v62 = [(MADAutoAssetStager *)self startupAssetTargetRestoreVersion];
  }

  v107 = [v106 initWithFormat:@"lastStagingFrom:%@(%@), assetTarget:%@(%@)[%@(%@)]", v109, v108, v56, v58, v60, v62];
  if (v61)
  {
  }

  if (v59)
  {
  }

  if (v57)
  {
  }

  if (v55)
  {
  }

  if (v54)
  {
  }

  if (v110)
  {
  }

  v63 = [(MADAutoAssetStager *)self startupLastStagingFromOSVersion];
  if (!v63)
  {
    goto LABEL_53;
  }

  v64 = [(MADAutoAssetStager *)self startupLastStagingFromBuildVersion];
  if (!v64)
  {
    goto LABEL_52;
  }

  v65 = [(MADAutoAssetStager *)self startupAssetTargetOSVersion];
  if (!v65)
  {

LABEL_52:
    goto LABEL_53;
  }

  v66 = [(MADAutoAssetStager *)self startupAssetTargetBuildVersion];
  v67 = v66 == 0;

  if (v67)
  {
LABEL_53:
    v83 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      v85 = [(MADAutoAssetStager *)self summary];
      *buf = 138543618;
      v113 = v85;
      v114 = 2114;
      v115 = v107;
      _os_log_impl(&dword_0, v83, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {LoadDecideNewOSPromote} no persisted indication of any pre-software-update-staging status | %{public}@", buf, 0x16u);
    }

    v86 = @"ResumePostponeNoPromote";
    v77 = @"INVALID";
    goto LABEL_56;
  }

  if ([(MADAutoAssetStager *)self startupModeByGroups])
  {
    [(MADAutoAssetStager *)self setStagingClientChosen:1];
    [(MADAutoAssetStager *)self setStagingClientUsingGroups:1];
  }

  v68 = [NSString alloc];
  v69 = [(MADAutoAssetStager *)self startupCandidateAssetCount];
  v70 = [(MADAutoAssetStager *)self startupDeterminedAvailableAssetCount];
  v71 = [(MADAutoAssetStager *)self startupActivelyStagingAssetCount];
  v72 = [(MADAutoAssetStager *)self startupAwaitingStagingAssetCount];
  v73 = [(MADAutoAssetStager *)self startupStagedAssetCount];
  v74 = [(MADAutoAssetStager *)self startupStagedAssetTotalContentBytes];
  v75 = [(MADAutoAssetStager *)self startupStagedNoContent];
  v76 = @"Y";
  if (!v75)
  {
    v76 = @"N";
  }

  v77 = [v68 initWithFormat:@"candidates:%llu, determinedAvailable:%llu, activelyStaging:%llu, awaitingStaging:%llu | [stagedAssets]count:%llu, totalContentBytes:%llu, noContent:%@", v69, v70, v71, v72, v73, v74, v76];
  if ([(MADAutoAssetStager *)self startupStagedAssetCount]&& [(MADAutoAssetStager *)self startupStagedAssetTotalContentBytes]|| [(MADAutoAssetStager *)self startupStagedNoContent])
  {
    if (![(MADAutoAssetStager *)self alwaysPromoteStagedAssets])
    {
      v93 = [(MADAutoAssetStager *)self stagingFromOSVersion];
      v94 = [(MADAutoAssetStager *)self startupAssetTargetOSVersion];
      if (([SUCore stringIsEqual:v93 to:v94]& 1) != 0)
      {
        v95 = [(MADAutoAssetStager *)self stagingFromBuildVersion];
        v96 = [(MADAutoAssetStager *)self startupAssetTargetBuildVersion];
        v97 = [SUCore stringIsEqual:v95 to:v96];

        if (v97)
        {
          v83 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            v98 = [(MADAutoAssetStager *)self summary];
            *buf = 138543874;
            v113 = v98;
            v114 = 2114;
            v115 = v107;
            v116 = 2114;
            v117 = v77;
            _os_log_impl(&dword_0, v83, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {LoadDecideNewOSPromote} have previously staged content now applicable to the currently running OS (migrating) | %{public}@ | %{public}@", buf, 0x20u);
          }

          goto LABEL_70;
        }
      }

      else
      {
      }

      v83 = _MADLog(@"AutoStager");
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        v100 = [(MADAutoAssetStager *)self summary];
        v101 = [(MADAutoAssetStager *)self stagingFromOSVersion];
        v102 = [(MADAutoAssetStager *)self stagingFromBuildVersion];
        v103 = [(MADAutoAssetStager *)self startupAssetTargetOSVersion];
        v104 = [(MADAutoAssetStager *)self startupAssetTargetBuildVersion];
        *buf = 138544386;
        v113 = v100;
        v114 = 2114;
        v115 = v101;
        v116 = 2114;
        v117 = v102;
        v118 = 2114;
        v119 = v103;
        v120 = 2114;
        v121 = v104;
        _os_log_impl(&dword_0, v83, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {LoadDecideNewOSPromote} not running new-OS | fromOS:%{public}@(%{public}@) | targetOS:%{public}@(%{public}@)", buf, 0x34u);
      }

      v86 = @"ResumePostponeNoPromote";
      goto LABEL_56;
    }

    v78 = [(MADAutoAssetStager *)self stagingFromOSVersion];
    v79 = [(MADAutoAssetStager *)self startupAssetTargetOSVersion];
    if (([SUCore stringIsEqual:v78 to:v79]& 1) != 0)
    {
      v80 = [(MADAutoAssetStager *)self stagingFromBuildVersion];
      v81 = [(MADAutoAssetStager *)self startupAssetTargetBuildVersion];
      v82 = [SUCore stringIsEqual:v80 to:v81];

      if (v82)
      {
        v83 = _MADLog(@"AutoStager");
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          v84 = [(MADAutoAssetStager *)self summary];
          *buf = 138543874;
          v113 = v84;
          v114 = 2114;
          v115 = v107;
          v116 = 2114;
          v117 = v77;
          _os_log_impl(&dword_0, v83, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {LoadDecideNewOSPromote} have previously staged content when configured to always promote (and now running target OS) | %{public}@ | %{public}@", buf, 0x20u);
        }

LABEL_70:
        v86 = @"ResumeNewOSPromote";
LABEL_56:

        goto LABEL_57;
      }
    }

    else
    {
    }

    v83 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      v99 = [(MADAutoAssetStager *)self summary];
      *buf = 138543874;
      v113 = v99;
      v114 = 2114;
      v115 = v107;
      v116 = 2114;
      v117 = v77;
      _os_log_impl(&dword_0, v83, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {LoadDecideNewOSPromote} have previously staged content when configured to always promote (not running target OS) | %{public}@ | %{public}@", buf, 0x20u);
    }

    goto LABEL_70;
  }

  v86 = @"ResumePostponeNoPromote";
LABEL_57:
  if ([SUCore stringIsEqual:v86 to:@"ResumePostponeNoPromote"])
  {
    [(MADAutoAssetStager *)self setLoadPersistedPostponed:1];
    v87 = [MADAutoAssetControlManager selectDispatchQueue:0];
    dispatch_async(v87, &__block_literal_global_1885);
  }

  else if ([SUCore stringIsEqual:v86 to:@"ResumeNewOSPromote"])
  {
    [(MADAutoAssetStager *)self loadPersistedTargetLookupResults:@"LoadDecideNewOSPromote"];
    [(MADAutoAssetStager *)self _persistPreviousOTASituationIfTargetMatchesCurrentOS:@"LoadDecideNewOSPromote" settingStartupSituation:1];
  }

  v88 = [(MADAutoAssetStager *)self autoStagerFSM];
  v89 = [MADAutoAssetStagerParam alloc];
  v90 = [(MADAutoAssetStager *)self _updateLatestSummary];
  v91 = [(MADAutoAssetStagerParam *)v89 initWithSafeSummary:v90];
  [v88 followupEvent:v86 withInfo:v91];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_LoadPersistedDecideResume:(id)a3 error:(id *)a4
{
  v143 = a3;
  v149 = self;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = _os_activity_create(&dword_0, "MADStager:LoadPersistedDecideResume", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);

  v130 = [[NSMutableString alloc] initWithString:&stru_4BD3F0];
  [(MADAutoAssetStager *)v149 loadPersistedSetLookupResults];
  v8 = [(MADAutoAssetStager *)v149 getTargetLookupResultsForKey:0];
  [(MADAutoAssetStager *)v149 loadPersistedAvailableForStagingByTarget];
  [(MADAutoAssetStager *)v149 loadPersistedTargetLookupResults:@"LoadPersistedDecideResume"];
  v9 = [(MADAutoAssetStager *)v149 stagingFromOSVersion];
  v10 = [(MADAutoAssetStager *)v149 startupAssetTargetOSVersion];
  if (([SUCore stringIsEqual:v9 to:v10]& 1) != 0)
  {
    v11 = [(MADAutoAssetStager *)v149 stagingFromBuildVersion];
    v12 = [(MADAutoAssetStager *)v149 startupAssetTargetBuildVersion];
    v13 = [SUCore stringIsEqual:v11 to:v12];

    if (v13)
    {
      [v130 appendString:@"nowRunningTargetOS|"];
      v14 = v149;
      v129 = 1;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v129 = 0;
  v14 = v149;
LABEL_6:
  v15 = [(MADAutoAssetStager *)v14 startupLastStagingFromOSVersion];
  if (!v15)
  {
    v20 = @"ResumeNothingAvailable";
    goto LABEL_19;
  }

  v16 = [(MADAutoAssetStager *)v14 startupLastStagingFromBuildVersion];
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = [(MADAutoAssetStager *)v14 startupAssetTargetOSVersion];
  if (!v17)
  {

LABEL_17:
    goto LABEL_18;
  }

  v18 = [(MADAutoAssetStager *)v14 startupAssetTargetBuildVersion];
  v19 = v18 == 0;

  if (v19)
  {
LABEL_18:
    v20 = @"ResumeNothingAvailable";
    v14 = v149;
    goto LABEL_19;
  }

  v14 = v149;
  if ((![(MADAutoAssetStager *)v149 startupStagedAssetCount]|| ![(MADAutoAssetStager *)v149 startupStagedAssetTotalContentBytes]) && ![(MADAutoAssetStager *)v149 startupStagedNoContent])
  {
    v99 = @"no staged content (purging)|";
    goto LABEL_159;
  }

  if (![(MADAutoAssetStager *)v149 alwaysPromoteStagedAssets])
  {
    if (v129)
    {
      [v130 appendString:@"have staged content (nowRunningTargetOS)|"];
      v20 = @"ResumeRunningTargetVersion";
      goto LABEL_19;
    }

    v116 = [(MADAutoAssetStager *)v149 stagingFromOSVersion];
    v117 = [(MADAutoAssetStager *)v149 startupLastStagingFromOSVersion];
    if (([SUCore stringIsEqual:v116 to:v117]& 1) != 0)
    {
      v118 = [(MADAutoAssetStager *)v149 stagingFromBuildVersion];
      v119 = [(MADAutoAssetStager *)v149 startupLastStagingFromBuildVersion];
      v120 = [SUCore stringIsEqual:v118 to:v119];

      if (v120)
      {
        [v130 appendString:@"have staged content (running last-staging-from-OS)|"];
        v14 = v149;
        v20 = @"ResumeStaged";
        goto LABEL_19;
      }
    }

    else
    {
    }

    v99 = @"have staged content (purging)|";
    v14 = v149;
LABEL_159:
    [v130 appendString:v99];
    v20 = @"ResumePurging";
    goto LABEL_19;
  }

  [v130 appendString:@"have staged content (alwaysPromoteStagedAssets)|"];
  v20 = @"ResumePromotingAllStaged";
LABEL_19:
  v131 = v20;
  if (((v129 | [SUCore stringIsEqual:"stringIsEqual:to:" to:?]^ 1) & 1) == 0)
  {
    v21 = [(MADAutoAssetStager *)v14 persistedTargetLookupResults];
    v22 = [v21 persistedEntryIDs:@"LoadPersistedDecideResume"];

    if ([v22 count])
    {
      v23 = [(MADAutoAssetStager *)v149 stagingFromOSVersion];
      v24 = [(MADAutoAssetStager *)v149 startupLastStagingFromOSVersion];
      if (([SUCore stringIsEqual:v23 to:v24]& 1) != 0)
      {
        v25 = [(MADAutoAssetStager *)v149 stagingFromBuildVersion];
        v26 = [(MADAutoAssetStager *)v149 startupLastStagingFromBuildVersion];
        v27 = [SUCore stringIsEqual:v25 to:v26];

        if (v27)
        {
          [v130 appendString:@"have target-lookup-results (running last-staging-from-OS)|"];
          v131 = @"ResumeGroupsAvailable";
        }
      }

      else
      {
      }
    }

    v14 = v149;
  }

  if (([SUCore stringIsEqual:v131 to:@"ResumeNothingAvailable"]& 1) != 0 || ([SUCore stringIsEqual:v131 to:@"ResumePurging"]& 1) != 0 || ([SUCore stringIsEqual:v131 to:@"ResumeGroupsAvailable"]& 1) != 0)
  {
    v136 = 0;
    goto LABEL_30;
  }

  v67 = [(MADAutoAssetStager *)v14 persistedState];
  v123 = [v67 persistedEntryIDs:@"LoadPersistedDecideResume"];

  if (![v123 count])
  {
    v97 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      v98 = [(MADAutoAssetStager *)v149 summary];
      *buf = 138543362;
      v170 = v98;
      _os_log_impl(&dword_0, v97, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {LoadPersistedDecideResume} no persisted entries (purging)", buf, 0xCu);
    }

    [v130 appendString:@"no persisted entries (purging)|"];
    v136 = 0;
    v131 = @"ResumePurging";
    goto LABEL_156;
  }

  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  v133 = v123;
  v68 = [v133 countByEnumeratingWithState:&v162 objects:v191 count:16];
  if (!v68)
  {
    v124 = 0;
    v125 = 0;
    v127 = 0;
    v128 = 0;
    v126 = 0;
    goto LABEL_129;
  }

  v124 = 0;
  v125 = 0;
  v127 = 0;
  v128 = 0;
  v126 = 0;
  v135 = *v163;
  do
  {
    v69 = 0;
    v137 = v68;
    do
    {
      if (*v163 != v135)
      {
        objc_enumerationMutation(v133);
      }

      v70 = *(*(&v162 + 1) + 8 * v69);
      obja = objc_autoreleasePoolPush();
      v71 = [(MADAutoAssetStager *)v149 persistedState];
      v72 = [v71 persistedEntry:v70 fromLocation:@"LoadPersistedDecideResume"];

      if (v72)
      {
        v73 = [v72 stringForKey:@"lastStagingFromOSVersion"];
        v145 = [v72 stringForKey:@"lastStagingFromBuildVersion"];
        v142 = [v72 stringForKey:@"assetTargetOSVersion"];
        v139 = [v72 stringForKey:@"assetTargetBuildVersion"];
        v74 = [v72 ullForKey:@"assetRepresentation"];
        v75 = [(MADAutoAssetStager *)v149 startupLastStagingFromOSVersion];
        if ([SUCore stringIsEqual:v75 to:v73])
        {
          v76 = [(MADAutoAssetStager *)v149 startupLastStagingFromBuildVersion];
          if ([SUCore stringIsEqual:v76 to:v145])
          {
            v77 = [(MADAutoAssetStager *)v149 startupAssetTargetOSVersion];
            if (([SUCore stringIsEqual:v77 to:v142]& 1) != 0)
            {
              v78 = [(MADAutoAssetStager *)v149 startupAssetTargetBuildVersion];
              v79 = [SUCore stringIsEqual:v78 to:v139];

              if (v79)
              {
                if (v74 > 601)
                {
                  if (v74 == &stru_248.segname[2])
                  {
                    v80 = _MADLog(@"AutoStager");
                    ++v125;
                    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                    {
                      v88 = [(MADAutoAssetStager *)v149 summary];
                      *buf = 138543618;
                      v170 = v88;
                      v171 = 2114;
                      v172 = v70;
                      _os_log_impl(&dword_0, v80, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {LoadPersistedDecideResume} staging entry:%{public}@", buf, 0x16u);
                    }

                    goto LABEL_102;
                  }

                  if (v74 == &stru_248.segname[3])
                  {
                    v84 = [v72 ullForKey:@"assetContentBytes"];
                    v80 = _MADLog(@"AutoStager");
                    ++v128;
                    v124 = &v124[v84];
                    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                    {
                      v85 = [(MADAutoAssetStager *)v149 summary];
                      *buf = 138543618;
                      v170 = v85;
                      v171 = 2114;
                      v172 = v70;
                      _os_log_impl(&dword_0, v80, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {LoadPersistedDecideResume} staged entry:%{public}@", buf, 0x16u);
                    }

                    goto LABEL_102;
                  }
                }

                else
                {
                  if (v74 == stru_248.segname)
                  {
                    v80 = _MADLog(@"AutoStager");
                    ++v127;
                    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                    {
                      v87 = [(MADAutoAssetStager *)v149 summary];
                      *buf = 138543618;
                      v170 = v87;
                      v171 = 2114;
                      v172 = v70;
                      _os_log_impl(&dword_0, v80, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {LoadPersistedDecideResume} candidate entry:%{public}@", buf, 0x16u);
                    }

                    goto LABEL_102;
                  }

                  if (v74 == &stru_248.segname[1])
                  {
                    v80 = _MADLog(@"AutoStager");
                    ++v126;
                    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                    {
                      v81 = [(MADAutoAssetStager *)v149 summary];
                      *buf = 138543618;
                      v170 = v81;
                      v171 = 2114;
                      v172 = v70;
                      _os_log_impl(&dword_0, v80, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {LoadPersistedDecideResume} available entry:%{public}@", buf, 0x16u);
                    }

LABEL_102:

                    goto LABEL_103;
                  }
                }

                v80 = _MADLog(@"AutoStager");
                if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                {
                  v86 = [(MADAutoAssetStager *)v149 summary];
                  *buf = 138543874;
                  v170 = v86;
                  v171 = 2048;
                  v172 = v74;
                  v173 = 2114;
                  v174 = v70;
                  _os_log_impl(&dword_0, v80, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {LoadPersistedDecideResume} unknown representation(%ld) for entry:%{public}@", buf, 0x20u);
                }

                goto LABEL_102;
              }

LABEL_100:
              v80 = _MADLog(@"AutoStager");
              if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
              {
                v83 = [(MADAutoAssetStager *)v149 summary];
                *buf = 138543618;
                v170 = v83;
                v171 = 2114;
                v172 = v70;
                _os_log_impl(&dword_0, v80, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {LoadPersistedDecideResume} mismatched entry:%{public}@", buf, 0x16u);
              }

              goto LABEL_102;
            }
          }
        }

        goto LABEL_100;
      }

      v73 = _MADLog(@"AutoStager");
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        v82 = [(MADAutoAssetStager *)v149 summary];
        *buf = 138543618;
        v170 = v82;
        v171 = 2114;
        v172 = v70;
        _os_log_impl(&dword_0, v73, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {LoadPersistedDecideResume} unable to determine previous status for entry:%{public}@", buf, 0x16u);
      }

LABEL_103:

      objc_autoreleasePoolPop(obja);
      v69 = v69 + 1;
    }

    while (v137 != v69);
    v68 = [v133 countByEnumeratingWithState:&v162 objects:v191 count:16];
  }

  while (v68);
LABEL_129:

  if ([(MADAutoAssetStager *)v149 startupCandidateAssetCount]== v127 && [(MADAutoAssetStager *)v149 startupDeterminedAvailableAssetCount]== v126)
  {
    v100 = [(MADAutoAssetStager *)v149 startupActivelyStagingAssetCount];
    if (&v100[[(MADAutoAssetStager *)v149 startupAwaitingStagingAssetCount]] == v125 && [(MADAutoAssetStager *)v149 startupStagedAssetCount]== v128 && [(MADAutoAssetStager *)v149 startupStagedAssetTotalContentBytes]== v124)
    {
      v101 = _MADLog(@"AutoStager");
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        v102 = [(MADAutoAssetStager *)v149 summary];
        *buf = 138543362;
        v170 = v102;
        _os_log_impl(&dword_0, v101, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {LoadPersistedDecideResume} persisted entry counts match staging summary counts", buf, 0xCu);
      }

      v136 = [(MADAutoAssetStager *)v149 _persistRebuildTrackingNewHandedOffDescriptors:v131];
      v103 = [[NSString alloc] initWithFormat:@"valid persisted counts (handedOffAsPromoted:%ld)|", objc_msgSend(v136, "count")];
      [v130 appendString:v103];
      goto LABEL_155;
    }
  }

  v103 = [[NSString alloc] initWithFormat:@"candidates:%llu, determinedAvailable:%llu, activelyStaging:%llu | [stagedAssets]count:%llu, totalContentBytes:%llu", v127, v126, v125, v128, v124];
  v104 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
  {
    v105 = [(MADAutoAssetStager *)v149 summary];
    *buf = 138543618;
    v170 = v105;
    v171 = 2114;
    v172 = v103;
    _os_log_impl(&dword_0, v104, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {LoadPersistedDecideResume} staging summary differs from per-entry totals | entryTotals:%{public}@", buf, 0x16u);
  }

  v106 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
  {
    v107 = [(MADAutoAssetStager *)v149 startupCandidateAssetCount];
    v108 = [(MADAutoAssetStager *)v149 startupDeterminedAvailableAssetCount];
    v109 = [(MADAutoAssetStager *)v149 startupActivelyStagingAssetCount];
    v110 = [(MADAutoAssetStager *)v149 startupAwaitingStagingAssetCount];
    v111 = [(MADAutoAssetStager *)v149 startupStagedAssetCount];
    v112 = [(MADAutoAssetStager *)v149 startupStagedAssetTotalContentBytes];
    *buf = 134220544;
    v170 = v107;
    v171 = 2048;
    v172 = v127;
    v173 = 2048;
    v174 = v108;
    v175 = 2048;
    v176 = v126;
    v177 = 2048;
    v178 = v109;
    v179 = 2048;
    v180 = v110;
    v181 = 2048;
    v182 = v125;
    v183 = 2048;
    v184 = v111;
    v185 = 2048;
    v186 = v128;
    v187 = 2048;
    v188 = v112;
    v189 = 2048;
    v190 = v124;
    _os_log_impl(&dword_0, v106, OS_LOG_TYPE_ERROR, "{LoadPersistedDecideResume} comparisons made | candidateAssetCount(%llu) to entryCandidateAssetCount(%llu) | determinedAvailableAssetCount(%llu) to entryDeterminedAvailableAssetCount(%llu) | (activelyStagingAssetCount(%llu) + awaitingStagingAssetCount(%llu)) to entryActivelyStagingAssetCount(%llu) | stagedAssetCount(%llu) to entryStagedAssetCount(%llu) | stagedAssetTotalContentBytes(%llu) to entryStagedAssetTotalContentBytes(%llu)", buf, 0x70u);
  }

  if (([SUCore stringIsEqual:v131 to:@"ResumePromotingAllStaged"]& 1) == 0 && ([SUCore stringIsEqual:v131 to:@"ResumeRunningTargetVersion"]& 1) == 0)
  {
    v121 = [SUCore stringIsEqual:v131 to:@"ResumeStaged"];
    if (v128)
    {
      v122 = v121;
    }

    else
    {
      v122 = 0;
    }

    if (v122)
    {
      goto LABEL_144;
    }

LABEL_154:
    [v130 appendString:@"invalid persisted counts|"];
    v136 = 0;
    v131 = @"ResumePurging";
    goto LABEL_155;
  }

  if (!v128)
  {
    goto LABEL_154;
  }

LABEL_144:
  v113 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
  {
    v114 = [(MADAutoAssetStager *)v149 summary];
    *buf = 138543362;
    v170 = v114;
    _os_log_impl(&dword_0, v113, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {LoadPersistedDecideResume} preserving successfully staged content", buf, 0xCu);
  }

  v136 = [(MADAutoAssetStager *)v149 _persistRebuildTrackingNewHandedOffDescriptors:v131];
  v115 = [[NSString alloc] initWithFormat:@"valid persisted counts (non-exact match) (handedOffAsPromoted:%ld)|", objc_msgSend(v136, "count")];
  [v130 appendString:v115];

LABEL_155:
LABEL_156:

  v14 = v149;
LABEL_30:
  if (([SUCore stringIsEqual:v131 to:@"ResumeNothingAvailable"]& 1) != 0 || [SUCore stringIsEqual:v131 to:@"ResumePurging"])
  {
    v28 = [(MADAutoAssetStager *)v14 _persistPreviousOTASituationIfTargetMatchesCurrentOS:@"LoadPersistedDecideResume" settingStartupSituation:v129];
    v29 = [NSString alloc];
    if (v129)
    {
      v30 = @"Y";
    }

    else
    {
      v30 = @"N";
    }

    if (v28)
    {
      v31 = @"Y";
    }

    else
    {
      v31 = @"N";
    }

    v140 = [v29 initWithFormat:@"removed persisted-state (once fully resumed) | nowRunningTargetOS:%@ | previousOTASituationAdopted:%@", v30, v31];
    [(MADAutoAssetStager *)v14 _persistRemoveAll:@"LoadPersistedDecideResume" message:v140 removingDetermined:v28 loggingConfig:1];
    v32 = [[NSString alloc] initWithFormat:@"purged (previousOTASituationAdopted:%@)|", v31];
    [v130 appendString:v32];
  }

  else
  {
    v33 = [(MADAutoAssetStager *)v14 persistedState];
    v140 = [v33 persistedEntryIDs:@"LoadPersistedDecideResume"];

    if ([v140 count])
    {
      v160 = 0u;
      v161 = 0u;
      v159 = 0u;
      v158 = 0u;
      obj = v140;
      v34 = [obj countByEnumeratingWithState:&v158 objects:v168 count:16];
      if (v34)
      {
        v35 = *v159;
        do
        {
          for (i = 0; i != v34; i = i + 1)
          {
            if (*v159 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v37 = *(*(&v158 + 1) + 8 * i);
            v38 = objc_autoreleasePoolPush();
            v39 = [(MADAutoAssetStager *)v149 persistedState];
            v40 = [v39 persistedEntry:v37 fromLocation:@"LoadPersistedDecideResume"];

            if (v40)
            {
              v41 = [v40 ullForKey:@"assetRepresentation"];
              v42 = [(MADAutoAssetStager *)v149 persistedState];
              v43 = [v42 decodeFromLocation:@"LoadPersistedDecideResume" ofEntryName:v37 fromPersistedEntry:v40 decodingObjectForKey:@"assetDescriptor" ofClass:objc_opt_class() allowingNilObject:0];

              if (v43)
              {
                [(MADAutoAssetStager *)v149 _persistDescriptor:@"LoadPersistedDecideResume" operation:@"ENTRY_LOAD" persistingDescriptor:v43 withRepresentation:v41 message:@"loaded and validated entry"];
              }
            }

            else
            {
              v43 = _MADLog(@"AutoStager");
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                v44 = [(MADAutoAssetStager *)v149 summary];
                *buf = 138543618;
                v170 = v44;
                v171 = 2114;
                v172 = v37;
                _os_log_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {LoadPersistedDecideResume} unable to load entry:%{public}@", buf, 0x16u);
              }
            }

            objc_autoreleasePoolPop(v38);
          }

          v34 = [obj countByEnumeratingWithState:&v158 objects:v168 count:16];
        }

        while (v34);
      }
    }

    [(MADAutoAssetStager *)v149 _logPersistedTableOfContents:@"LoadPersistedDecideResume"];
    LOBYTE(v28) = 0;
  }

  v45 = v149;
  if (v129)
  {
    LOBYTE(v28) = [(MADAutoAssetStager *)v149 _persistPreviousOTASituationIfTargetMatchesCurrentOS:@"LoadPersistedDecideResume" settingStartupSituation:0];
  }

  if (([SUCore stringIsEqual:v131 to:@"ResumeGroupsAvailable"]& 1) == 0 && ([SUCore stringIsEqual:v131 to:@"ResumeStaged"]& 1) == 0)
  {
    if (v28 | (([SUCore stringIsEqual:v131 to:@"ResumePurging"]& 1) == 0))
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  if (!v28)
  {
LABEL_61:
    v46 = [(MADAutoAssetStager *)v149 startupAssetTargetOSVersion];
    [(MADAutoAssetStager *)v149 setAssetTargetOSVersion:v46];

    v47 = [(MADAutoAssetStager *)v149 startupAssetTargetBuildVersion];
    [(MADAutoAssetStager *)v149 setAssetTargetBuildVersion:v47];

    v48 = [(MADAutoAssetStager *)v149 startupAssetTargetTrainName];
    [(MADAutoAssetStager *)v149 setAssetTargetTrainName:v48];

    v49 = [(MADAutoAssetStager *)v149 startupAssetTargetRestoreVersion];
    [(MADAutoAssetStager *)v149 setAssetTargetRestoreVersion:v49];

    [v130 appendString:@"adopted startup target|"];
    v45 = v149;
  }

LABEL_62:
  if (v136)
  {
    v132 = [[NSString alloc] initWithFormat:@"loaded persisted-state (handedOffAsPromoted:%ld)", objc_msgSend(v136, "count")];
    v134 = [(MADAutoAssetStager *)v45 newSetLookupResultsForTargetOS];
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v138 = v136;
    v50 = [v138 countByEnumeratingWithState:&v154 objects:v167 count:16];
    if (v50)
    {
      v141 = *v155;
      do
      {
        v144 = v50;
        for (j = 0; j != v144; j = j + 1)
        {
          if (*v155 != v141)
          {
            objc_enumerationMutation(v138);
          }

          v52 = *(*(&v154 + 1) + 8 * j);
          v53 = [MAAutoAssetSelector alloc];
          objb = [v52 assetType];
          v54 = [v52 assetSpecifier];
          v55 = [v52 assetVersion];
          v56 = [v53 initForAssetType:objb withAssetSpecifier:v54 matchingAssetVersion:v55];
          v57 = [(MADAutoAssetStager *)v149 stagingClientName];
          v58 = [v143 stagingClientRequest];
          v59 = [v58 clientID];
          v60 = [(MADAutoAssetStager *)v149 assetTargetOSVersion];
          v61 = [(MADAutoAssetStager *)v149 assetTargetBuildVersion];
          [MADAutoAssetHistory recordOperation:220 toHistoryType:4 fromLayer:4 withSelector:v56 fromClient:v57 fromClientDomain:v59 forTargetOSVersion:v60 forTargetBuildVersion:v61];
        }

        v50 = [v138 countByEnumeratingWithState:&v154 objects:v167 count:16];
      }

      while (v50);
    }

    v45 = v149;
    v62 = v132;
  }

  else
  {
    v134 = 0;
    v62 = @"loaded persisted-state (no promotion)";
  }

  v63 = v62;
  [(MADAutoAssetStager *)v45 _logMilestoneFromLocation:@"LoadPersistedDecideResume" resultingInEvent:v131 forMilestoneActivity:?];
  if ([(MADAutoAssetStager *)v45 loadPersistedPostponed])
  {
    if (([SUCore stringIsEqual:v131 to:@"ResumePromotingAllStaged"]& 1) != 0 || [SUCore stringIsEqual:v131 to:@"ResumeRunningTargetVersion"])
    {
      v64 = [(MADAutoAssetStager *)v45 autoStagerFSM];
      v65 = [v64 diag];
      [v65 trackAnomaly:@"AUTO-STAGER" forReason:@"{LoadPersistedDecideResume} beyond delivery of new-OS promotion content yet have content to be promoted" withResult:6101 withError:0];

      [v130 appendString:@"ANOMALY(content to be promoted)|"];
      v45 = v149;
      v131 = @"ResumePurging";
    }
  }

  else
  {
    if ((v129 & 1) != 0 || [(MADAutoAssetStager *)v45 alwaysPromoteStagedAssets])
    {
      [(MADAutoAssetStager *)v45 _persistRemoveAll:@"LoadPersistedDecideResume" message:@"removed all persisted-state (everything has been new-OS-promoted)" removingDetermined:1 loggingConfig:0];
      [v130 appendString:@"removed all (new-OS-promoteed)|"];
      v66 = 1;
    }

    else
    {
      v66 = 0;
    }

    v89 = [MADAutoAssetControlManager selectDispatchQueue:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __61__MADAutoAssetStager_action_LoadPersistedDecideResume_error___block_invoke;
    block[3] = &unk_4B3378;
    v151 = v136;
    v152 = v134;
    v153 = v66;
    dispatch_async(v89, block);

    v45 = v149;
  }

  [(MADAutoAssetStager *)v45 _limitCachePersistResultByGroupToCount:2 fromLocation:@"LoadPersistedDecideResume"];
  [(MADAutoAssetStager *)v45 setStartupLastStagingFromOSVersion:0];
  [(MADAutoAssetStager *)v45 setStartupLastStagingFromBuildVersion:0];
  [(MADAutoAssetStager *)v45 setStartupAssetTargetOSVersion:0];
  [(MADAutoAssetStager *)v45 setStartupAssetTargetBuildVersion:0];
  [(MADAutoAssetStager *)v45 setStartupAssetTargetTrainName:0];
  [(MADAutoAssetStager *)v45 setStartupAssetTargetRestoreVersion:0];
  [(MADAutoAssetStager *)v45 setStartupModeByGroups:0];
  [(MADAutoAssetStager *)v45 setStartupCandidateAssetCount:0];
  [(MADAutoAssetStager *)v45 setStartupDeterminedAvailableAssetCount:0];
  [(MADAutoAssetStager *)v45 setStartupActivelyStagingAssetCount:0];
  [(MADAutoAssetStager *)v45 setStartupAwaitingStagingAssetCount:0];
  [(MADAutoAssetStager *)v45 setStartupStagedAssetCount:0];
  [(MADAutoAssetStager *)v45 setStartupStagedAssetTotalContentBytes:0];
  [(MADAutoAssetStager *)v45 setStartupStagedNoContent:0];
  v90 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
  {
    v91 = [(MADAutoAssetStager *)v149 summary];
    *buf = 138543874;
    v170 = v91;
    v171 = 2114;
    v172 = v131;
    v173 = 2114;
    v174 = v130;
    _os_log_impl(&dword_0, v90, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {LoadPersistedDecideResume} final resume complete | followupEvent:%{public}@ | stagerResumeFlow:%{public}@", buf, 0x20u);
  }

  v92 = [(MADAutoAssetStager *)v149 autoStagerFSM];
  v93 = [MADAutoAssetStagerParam alloc];
  v94 = [(MADAutoAssetStager *)v149 _updateLatestSummary];
  v95 = [(MADAutoAssetStagerParam *)v93 initWithSafeSummary:v94];
  [v92 followupEvent:v131 withInfo:v95];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_ControlUnstagedDecideCancelJob:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ControlUnstagedDecideCancelJob", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v15);

  v9 = [v5 assetType];
  LODWORD(v7) = [(MADAutoAssetStager *)self _isAssetTypeInvolvedInStaging:v9];

  if (v7)
  {
    v10 = [(MADAutoAssetStager *)self autoStagerFSM];
    v11 = [MADAutoAssetStagerParam alloc];
    v12 = [(MADAutoAssetStager *)self _updateLatestSummary];
    v13 = [(MADAutoAssetStagerParam *)v11 initWithSafeSummary:v12];
    [v10 followupEvent:@"UnstagedFromControlCancelJob" withInfo:v13];
  }

  os_activity_scope_leave(&v15);

  return 0;
}

- (int64_t)action_ControlUnstagedDecideRemoveAll:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ControlUnstagedDecideRemoveAll", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v15);

  v9 = [v5 assetType];
  LODWORD(v7) = [(MADAutoAssetStager *)self _isAssetTypeInvolvedInStaging:v9];

  if (v7)
  {
    v10 = [(MADAutoAssetStager *)self autoStagerFSM];
    v11 = [MADAutoAssetStagerParam alloc];
    v12 = [(MADAutoAssetStager *)self _updateLatestSummary];
    v13 = [(MADAutoAssetStagerParam *)v11 initWithSafeSummary:v12];
    [v10 followupEvent:@"UnstagedFromControlRemoveAll" withInfo:v13];
  }

  os_activity_scope_leave(&v15);

  return 0;
}

- (int64_t)action_ClientCheckLatchGroupsDetermine:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v20.opaque[0] = 0;
  v20.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientCheckLatchGroupsDetermine", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v20);

  if ([(MADAutoAssetStager *)self stagingClientChosen:v20.opaque[0]]&& ![(MADAutoAssetStager *)self stagingClientUsingGroups])
  {
    v9 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(MADAutoAssetStager *)self summary];
      *buf = 138543362;
      v22 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {ClientCheckLatchGroupsDetermine} beginning BY-GROUP-MODE request when had been operating in ALL-MODE", buf, 0xCu);
    }

    v11 = [(MADAutoAssetStager *)self _stagingClientRequestGeneralClear:@"ClientCheckLatchGroupsDetermine" replyingToCleared:1];
  }

  [(MADAutoAssetStager *)self setStagingClientChosen:1];
  [(MADAutoAssetStager *)self setStagingClientUsingGroups:1];
  v12 = [(MADAutoAssetStager *)self persistedState];
  v13 = [v12 persistedConfig];
  [v13 persistBoolean:-[MADAutoAssetStager stagingClientUsingGroups](self forKey:"stagingClientUsingGroups") shouldPersist:{@"modeByGroups", 1}];

  v14 = [v5 stagingClientRequest];
  [(MADAutoAssetStager *)self _acceptStagingClientRequest:v14 fromLocation:@"ClientCheckLatchGroupsDetermine" adoptingSpecifiedTarget:1];

  v15 = [(MADAutoAssetStager *)self autoStagerFSM];
  v16 = [MADAutoAssetStagerParam alloc];
  v17 = [(MADAutoAssetStager *)self _updateLatestSummary];
  v18 = [(MADAutoAssetStagerParam *)v16 initWithSafeSummary:v17];
  [v15 followupEvent:@"ModeGroupsDetermineStart" withInfo:v18];

  os_activity_scope_leave(&v20);
  return 0;
}

- (int64_t)action_ClientCheckGroupsDecideAlreadyDetermined:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientCheckGroupsDecideAlreadyDetermined", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetStager *)self _replyWithAlreadyDetermined:@"ClientCheckGroupsDecideAlreadyDetermined" forEventInfo:v5 orFollowupDetermineStart:1, v10.opaque[0], v10.opaque[1]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_ClientCheckGroupsReplyAlreadyDetermined:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientCheckGroupsReplyAlreadyDetermined", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetStager *)self _replyWithAlreadyDetermined:@"ClientCheckGroupsReplyAlreadyDetermined" forEventInfo:v5 orFollowupDetermineStart:0, v10.opaque[0], v10.opaque[1]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_ClientAcceptAllDetermine:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v24.opaque[0] = 0;
  v24.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientAcceptAllDetermine", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v24);

  if ([(MADAutoAssetStager *)self stagingClientChosen:v24.opaque[0]])
  {
    if ([(MADAutoAssetStager *)self stagingClientUsingGroups])
    {
      [(MADAutoAssetStager *)self _stagingClientRequestDetermineClearAll:@"ClientAcceptAllDetermine"];
      v9 = [(MADAutoAssetStager *)self _targetNameActiveClient];
      v10 = [(MADAutoAssetStager *)self _stagingClientRequestDownloadClear:@"ClientAcceptAllDetermine" forStagingTargetName:v9 replyingToCleared:1];

      v11 = _MADLog(@"AutoStager");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [(MADAutoAssetStager *)self summary];
        *buf = 138543362;
        v26 = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {ClientAcceptAllDetermine} beginning ALL-MODE request when had been operating in BY-GROUP-MODE", buf, 0xCu);
      }
    }
  }

  else
  {
    [(MADAutoAssetStager *)self setStagingClientChosen:1];
  }

  [(MADAutoAssetStager *)self setStagingClientUsingGroups:0];
  v13 = [(MADAutoAssetStager *)self persistedState];
  v14 = [v13 persistedConfig];
  [v14 persistBoolean:-[MADAutoAssetStager stagingClientUsingGroups](self forKey:"stagingClientUsingGroups") shouldPersist:{@"modeByGroups", 1}];

  v15 = [v5 stagingClientRequest];
  [(MADAutoAssetStager *)self _acceptStagingClientRequest:v15 fromLocation:@"ClientAcceptAllDetermine" adoptingSpecifiedTarget:1];

  v16 = [(MADAutoAssetStager *)self stagingClientName];
  v17 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  v18 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  [MADAutoAssetHistory recordOperation:700 toHistoryType:4 fromLayer:4 fromClient:v16 forTargetOSVersion:v17 forTargetBuildVersion:v18];

  v19 = [(MADAutoAssetStager *)self autoStagerFSM];
  v20 = [MADAutoAssetStagerParam alloc];
  v21 = [(MADAutoAssetStager *)self _updateLatestSummary];
  v22 = [(MADAutoAssetStagerParam *)v20 initWithSafeSummary:v21];
  [v19 followupEvent:@"ModeAllDetermineStart" withInfo:v22];

  os_activity_scope_leave(&v24);
  return 0;
}

- (int64_t)action_ClientPurgeDecideStagingClient:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientPurgeDecideStagingClient", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [v5 stagingClientRequest];
  v10 = [(MADAutoAssetStager *)self _stagingClientMessageStagingClientProcessName:v9];

  v11 = [(MADAutoAssetStager *)self stagingClientUsingGroups];
  v12 = @"PurgeAcceptedRemoveAll";
  if (v11)
  {
    v12 = @"PurgeAcceptedRemoveDownloaded";
  }

  v13 = v12;
  v14 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(MADAutoAssetStager *)self summary];
    if (v10)
    {
      v16 = v10;
    }

    else
    {
      v16 = @"N";
    }

    v17 = [(MADAutoAssetStager *)self stagingClientName];
    if (v17)
    {
      v18 = [(MADAutoAssetStager *)self stagingClientName];
      if (v5)
      {
LABEL_9:
        v19 = [v5 summary];
LABEL_12:
        *buf = 138544130;
        v32 = v15;
        v33 = 2114;
        v34 = v16;
        v35 = 2114;
        v36 = v18;
        v37 = 2114;
        v38 = v19;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {ClientPurgeDecideStagingClient} purging of all pre-SU-staging tracking / content | requestingPurgeProcessName:%{public}@ | stagingClientName:%{public}@ | eventInfo:%{public}@", buf, 0x2Au);
        if (v5)
        {
        }

        if (v17)
        {
        }

        goto LABEL_17;
      }
    }

    else
    {
      v18 = @"N";
      if (v5)
      {
        goto LABEL_9;
      }
    }

    v19 = @"N";
    goto LABEL_12;
  }

LABEL_17:

  v20 = [v5 stagingClientRequest];
  v21 = [v20 clientID];
  v22 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  v23 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  [MADAutoAssetHistory recordOperation:802 toHistoryType:4 fromLayer:4 fromClient:v10 fromClientDomain:v21 forTargetOSVersion:v22 forTargetBuildVersion:v23];

  [(MADAutoAssetStager *)self _stagingClientRequestDownloadPurged:@"ClientPurgeDecideStagingClient"];
  v24 = [v5 stagingClientRequest];
  [(MADAutoAssetStager *)self _acceptStagingClientRequest:v24 fromLocation:@"ClientPurgeDecideStagingClient" adoptingSpecifiedTarget:0];

  [(MADAutoAssetStager *)self _persistTargetOTASituation:204 fromLocation:@"ClientPurgeDecideStagingClient"];
  v25 = [(MADAutoAssetStager *)self autoStagerFSM];
  v26 = [MADAutoAssetStagerParam alloc];
  v27 = [(MADAutoAssetStager *)self _updateLatestSummary];
  v28 = [(MADAutoAssetStagerParam *)v26 initWithSafeSummary:v27];
  [v25 followupEvent:v13 withInfo:v28];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_ClientEraseDecideStagingClient:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v24.opaque[0] = 0;
  v24.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientEraseDecideStagingClient", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v24);

  v9 = [v5 stagingClientRequest];
  v10 = [(MADAutoAssetStager *)self _stagingClientMessageStagingClientProcessName:v9];

  v11 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(MADAutoAssetStager *)self summary];
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = @"N";
    }

    v14 = [(MADAutoAssetStager *)self stagingClientName];
    if (v14)
    {
      v15 = [(MADAutoAssetStager *)self stagingClientName];
    }

    else
    {
      v15 = @"N";
    }

    *buf = 138543874;
    v26 = v12;
    v27 = 2114;
    v28 = v13;
    v29 = 2114;
    v30 = v15;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {ClientEraseDecideStagingClient} erasing all pre-SU-staging tracking / content | requestingEraseProcessName:%{public}@ | stagingClientName:%{public}@", buf, 0x20u);
    if (v14)
    {
    }
  }

  v16 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  v17 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  [MADAutoAssetHistory recordOperation:805 toHistoryType:4 fromLayer:4 fromClient:v10 forTargetOSVersion:v16 forTargetBuildVersion:v17];

  [(MADAutoAssetStager *)self _stagingClientRequestDownloadPurged:@"ClientEraseDecideStagingClient"];
  v18 = [v5 stagingClientRequest];
  [(MADAutoAssetStager *)self _acceptStagingClientRequest:v18 fromLocation:@"ClientEraseDecideStagingClient" adoptingSpecifiedTarget:0];

  [(MADAutoAssetStager *)self _persistErasePreviousOTASituation:@"ClientEraseDecideStagingClient"];
  v19 = [(MADAutoAssetStager *)self autoStagerFSM];
  v20 = [MADAutoAssetStagerParam alloc];
  v21 = [(MADAutoAssetStager *)self _updateLatestSummary];
  v22 = [(MADAutoAssetStagerParam *)v20 initWithSafeSummary:v21];
  [v19 followupEvent:@"PurgeEraseAcceptedRemoveAll" withInfo:v22];

  os_activity_scope_leave(&v24);
  return 0;
}

- (int64_t)action_ClientContinueUsingLatestRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientContinueUsingLatestRequest", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v13);

  v9 = [v5 stagingClientRequest];
  [(MADAutoAssetStager *)self _acceptStagingClientRequest:v9 fromLocation:@"ClientContinueUsingLatestRequest" adoptingSpecifiedTarget:0];

  v10 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(MADAutoAssetStager *)self summary];
    *buf = 138543362;
    v15 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {ClientContinueUsingLatestRequest} staging-client-request was received when already performing requested operation (stale earlier request has been replied to with failure)", buf, 0xCu);
  }

  os_activity_scope_leave(&v13);
  return 0;
}

- (int64_t)action_ClientRequestAlreadyDownloaded:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientRequestAlreadyDownloaded", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [v5 stagingClientRequest];
  [(MADAutoAssetStager *)self _acceptStagingClientRequest:v9 fromLocation:@"ClientRequestAlreadyDownloaded" adoptingSpecifiedTarget:0];

  [(MADAutoAssetStager *)self _clearBeforeDetermineAvailable:@"ClientRequestAlreadyDownloaded" removingDetermined:1];
  [(MADAutoAssetStager *)self _persistLastStagingFrom:@"ClientRequestAlreadyDownloaded"];
  [(MADAutoAssetStager *)self startMaxTimeSpentDeterminingTimer];
  +[MADAutoAssetControlManager stagerRequestAlreadyDownloadedDescriptors];
  v10 = [(MADAutoAssetStager *)self stagingClientName];
  v11 = [v5 stagingClientRequest];
  v12 = [v11 clientID];
  v13 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  v14 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  [MADAutoAssetHistory recordOperation:700 toHistoryType:4 fromLayer:4 fromClient:v10 fromClientDomain:v12 forTargetOSVersion:v13 forTargetBuildVersion:v14];

  [(MADAutoAssetStager *)self _logMilestoneFromLocation:@"ClientRequestAlreadyDownloaded" resultingInEvent:0 forMilestoneActivity:@"beginning determine-available-for-staging phase"];
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_ClientAcceptNextAvailableBeginDownload:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientAcceptNextAvailableBeginDownload", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v14);

  v9 = [(MADAutoAssetStager *)self stagingClientName:v14.opaque[0]];
  v10 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  v11 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  [MADAutoAssetHistory recordOperation:701 toHistoryType:4 fromLayer:4 fromClient:v9 forTargetOSVersion:v10 forTargetBuildVersion:v11];

  v12 = [v5 stagingClientRequest];
  [(MADAutoAssetStager *)self _acceptStagingClientRequest:v12 fromLocation:@"ClientAcceptNextAvailableBeginDownload" adoptingSpecifiedTarget:0];

  [(MADAutoAssetStager *)self _setupAwaitingStagingAndBeginFirstDownload];
  [(MADAutoAssetStager *)self _logMilestoneFromLocation:@"ClientAcceptNextAvailableBeginDownload" resultingInEvent:0 forMilestoneActivity:@"beginning download-available-for-staging phase"];
  os_activity_scope_leave(&v14);

  return 0;
}

- (int64_t)action_ClientAcceptCancelActiveJob:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientAcceptCancelActiveJob", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v14);

  if ([(MADAutoAssetStager *)self stagingClientUsingGroups:v14.opaque[0]])
  {
    v9 = [(MADAutoAssetStager *)self _targetNameActiveClient];
    v10 = [(MADAutoAssetStager *)self _stagingClientRequestDownloadClear:@"ClientAcceptCancelActiveJob" forStagingTargetName:v9 replyingToCleared:1];
  }

  else
  {
    v11 = [(MADAutoAssetStager *)self _stagingClientRequestGeneralClear:@"ClientAcceptCancelActiveJob" replyingToCleared:1];
  }

  [(MADAutoAssetStager *)self _persistTargetOTASituation:204 fromLocation:@"ClientAcceptCancelActiveJob"];
  v12 = [v5 stagingClientRequest];
  [(MADAutoAssetStager *)self _acceptStagingClientRequest:v12 fromLocation:@"ClientAcceptCancelActiveJob" adoptingSpecifiedTarget:0];

  [(MADAutoAssetStager *)self _cancelCurrentJob];
  os_activity_scope_leave(&v14);

  return 0;
}

- (int64_t)action_ClientAcceptEraseCancelActiveJob:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientAcceptEraseCancelActiveJob", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v14);

  if ([(MADAutoAssetStager *)self stagingClientUsingGroups:v14.opaque[0]])
  {
    v9 = [(MADAutoAssetStager *)self _targetNameActiveClient];
    v10 = [(MADAutoAssetStager *)self _stagingClientRequestDownloadClear:@"ClientAcceptEraseCancelActiveJob" forStagingTargetName:v9 replyingToCleared:1];
  }

  else
  {
    v11 = [(MADAutoAssetStager *)self _stagingClientRequestGeneralClear:@"ClientAcceptEraseCancelActiveJob" replyingToCleared:1];
  }

  [(MADAutoAssetStager *)self _persistTargetOTASituation:204 fromLocation:@"ClientAcceptEraseCancelActiveJob"];
  [(MADAutoAssetStager *)self _persistErasePreviousOTASituation:@"ClientAcceptEraseCancelActiveJob"];
  v12 = [v5 stagingClientRequest];
  [(MADAutoAssetStager *)self _acceptStagingClientRequest:v12 fromLocation:@"ClientAcceptEraseCancelActiveJob" adoptingSpecifiedTarget:0];

  [(MADAutoAssetStager *)self _cancelCurrentJob];
  os_activity_scope_leave(&v14);

  return 0;
}

- (int64_t)action_ClientAcceptEraseActiveJob:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientAcceptEraseActiveJob", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v12);

  [(MADAutoAssetStager *)self setStagingClientChosen:0, v12.opaque[0], v12.opaque[1]];
  [(MADAutoAssetStager *)self setStagingClientUsingGroups:0];
  v9 = [(MADAutoAssetStager *)self _stagingClientRequestGeneralClear:@"ClientAcceptEraseActiveJob" replyingToCleared:1];
  [(MADAutoAssetStager *)self _persistErasePreviousOTASituation:@"ClientAcceptEraseActiveJob"];
  v10 = [v5 stagingClientRequest];
  [(MADAutoAssetStager *)self _acceptStagingClientRequest:v10 fromLocation:@"ClientAcceptEraseActiveJob" adoptingSpecifiedTarget:0];

  [(MADAutoAssetStager *)self _cancelCurrentJob];
  os_activity_scope_leave(&v12);

  return 0;
}

- (int64_t)action_ClientAcceptRemoveAllReplyPurged:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientAcceptRemoveAllReplyPurged", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v14);

  [(MADAutoAssetStager *)self _stagingClientRequestDownloadPurged:@"ClientAcceptRemoveAllReplyPurged", v14.opaque[0], v14.opaque[1]];
  v9 = [v5 stagingClientRequest];
  [(MADAutoAssetStager *)self _acceptStagingClientRequest:v9 fromLocation:@"ClientAcceptRemoveAllReplyPurged" adoptingSpecifiedTarget:0];

  [(MADAutoAssetStager *)self _clearBeforeDetermineAvailable:@"ClientAcceptRemoveAllReplyPurged" removingDetermined:0];
  [(MADAutoAssetStager *)self _clearRemoveByGroupTargets:@"ClientAcceptRemoveAllReplyPurged" removingDetermined:0];
  [(MADAutoAssetStager *)self _persistTargetOTASituation:204 fromLocation:@"ClientAcceptRemoveAllReplyPurged"];
  [(MADAutoAssetStager *)self _replyToStagingClientOperationSuccess];
  v10 = [(MADAutoAssetStager *)self stagingClientName];
  v11 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  v12 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  [MADAutoAssetHistory recordOperation:803 toHistoryType:4 fromLayer:4 fromClient:v10 forTargetOSVersion:v11 forTargetBuildVersion:v12];

  os_activity_scope_leave(&v14);
  return 0;
}

- (int64_t)action_ClientAcceptRemoveAllReplyErased:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientAcceptRemoveAllReplyErased", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v14);

  [(MADAutoAssetStager *)self _stagingClientRequestDownloadPurged:@"ClientAcceptRemoveAllReplyErased", v14.opaque[0], v14.opaque[1]];
  v9 = [v5 stagingClientRequest];
  [(MADAutoAssetStager *)self _acceptStagingClientRequest:v9 fromLocation:@"ClientAcceptRemoveAllReplyErased" adoptingSpecifiedTarget:0];

  [(MADAutoAssetStager *)self _clearBeforeDetermineAvailable:@"ClientAcceptRemoveAllReplyErased" removingDetermined:1];
  [(MADAutoAssetStager *)self _clearRemoveByGroupTargets:@"ClientAcceptRemoveAllReplyErased" removingDetermined:1];
  [(MADAutoAssetStager *)self _persistErasePreviousOTASituation:@"ClientAcceptRemoveAllReplyErased"];
  [(MADAutoAssetStager *)self _clearAllTrackingOfActiveOperations:@"ClientAcceptRemoveAllReplyErased" alsoPerformingPurgeAll:1 removingDetermined:1];
  [(MADAutoAssetStager *)self _replyToStagingClientOperationSuccess];
  v10 = [(MADAutoAssetStager *)self stagingClientName];
  v11 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  v12 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  [MADAutoAssetHistory recordOperation:806 toHistoryType:4 fromLayer:4 fromClient:v10 forTargetOSVersion:v11 forTargetBuildVersion:v12];

  os_activity_scope_leave(&v14);
  return 0;
}

- (int64_t)action_ClientNothingStaged:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientNothingStaged", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  v9 = [v5 stagingClientRequest];
  [(MADAutoAssetStager *)self _acceptStagingClientRequest:v9 fromLocation:@"ClientNothingStaged" adoptingSpecifiedTarget:0];

  [(MADAutoAssetStager *)self _replyNothingStaged:@"ClientNothingStaged"];
  os_activity_scope_leave(&v11);

  return 0;
}

- (int64_t)action_ClientHaveStagedContent:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientHaveStagedContent", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  v9 = [v5 stagingClientRequest];
  [(MADAutoAssetStager *)self _acceptStagingClientRequest:v9 fromLocation:@"ClientHaveStagedContent" adoptingSpecifiedTarget:0];

  [(MADAutoAssetStager *)self _replyHaveStagedContent:@"ClientHaveStagedContent" withEventInfo:v5];
  os_activity_scope_leave(&v11);

  return 0;
}

- (int64_t)action_ClientNewerReplySameOrEmptyDetermine:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v16.opaque[0] = 0;
  v16.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientNewerReplySameOrEmptyDetermine", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v16);

  v9 = [v5 stagingClientRequest];
  LODWORD(v7) = [(MADAutoAssetStager *)self _isStagingClientRequestForActiveTarget:v9 fromLocation:@"ClientNewerReplySameOrEmptyDetermine"];

  if (v7)
  {
    v10 = [v5 stagingClientRequest];
    [(MADAutoAssetStager *)self _acceptStagingClientRequest:v10 fromLocation:@"ClientNewerReplySameOrEmptyDetermine" adoptingSpecifiedTarget:1];

    v11 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(MADAutoAssetStager *)self summary];
      *buf = 138543362;
      v18 = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {ClientNewerReplySameOrEmptyDetermine} [STAGING-CLIENT-REQUEST(DETERMINE)] was received when already performing requested operation for same target (stale earlier request has been replied to with empty success)", buf, 0xCu);
    }
  }

  else
  {
    v13 = [v5 stagingClientRequest];
    [(MADAutoAssetStager *)self _replyNoCandidates:@"ClientNewerReplySameOrEmptyDetermine" replyingToStagingRequest:v13];

    v11 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(MADAutoAssetStager *)self summary];
      *buf = 138543362;
      v18 = v14;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {ClientNewerReplySameOrEmptyDetermine} [STAGING-CLIENT-REQUEST(DETERMINE)] when committed to other operation | [NO-CANDIDATES]", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&v16);
  return 0;
}

- (int64_t)action_ClientNewerReplyEmptyDetermine:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v16.opaque[0] = 0;
  v16.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientNewerReplyEmptyDetermine", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v16);

  v9 = [v5 stagingClientRequest];
  LODWORD(v7) = [(MADAutoAssetStager *)self _isStagingClientRequestForActiveTarget:v9 fromLocation:@"ClientNewerReplySameOrEmptyDetermine"];

  if (v7)
  {
    v10 = [v5 stagingClientRequest];
    [(MADAutoAssetStager *)self _acceptStagingClientRequest:v10 fromLocation:@"ClientNewerReplySameOrEmptyDetermine" adoptingSpecifiedTarget:0];

    v11 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(MADAutoAssetStager *)self summary];
      *buf = 138543362;
      v18 = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {ClientNewerReplySameOrEmptyDetermine} [STAGING-CLIENT-REQUEST(DETERMINE)] was received when already performing requested operation for same target (stale earlier request has been replied to with empty success)", buf, 0xCu);
    }
  }

  else
  {
    v13 = [v5 stagingClientRequest];
    [(MADAutoAssetStager *)self _replyNoCandidates:@"ClientNewerReplyEmptyDetermine" replyingToStagingRequest:v13];

    v11 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(MADAutoAssetStager *)self summary];
      *buf = 138543362;
      v18 = v14;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {ClientNewerReplyEmptyDetermine} [STAGING-CLIENT-REQUEST(DETERMINE)] when committed to other operation | [NO-CANDIDATES]", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&v16);
  return 0;
}

- (int64_t)action_ClientNewerReplySameOrEmptyDownload:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v18.opaque[0] = 0;
  v18.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientNewerReplySameOrEmptyDownload", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v18);

  v9 = [v5 stagingClientRequest];
  LODWORD(v7) = [(MADAutoAssetStager *)self _isStagingClientRequestForActiveTarget:v9 fromLocation:@"ClientNewerReplySameOrEmptyDownload"];

  if (v7)
  {
    v10 = [(MADAutoAssetStager *)self _targetNameActiveClient];
    v11 = [(MADAutoAssetStager *)self _stagingClientRequestDownloadClear:@"ClientNewerReplySameOrEmptyDownload" forStagingTargetName:v10 replyingToCleared:1];

    v12 = [v5 stagingClientRequest];
    [(MADAutoAssetStager *)self _acceptStagingClientRequest:v12 fromLocation:@"ClientNewerReplySameOrEmptyDownload" adoptingSpecifiedTarget:1];

    v13 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(MADAutoAssetStager *)self summary];
      *buf = 138543362;
      v20 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {ClientNewerReplySameOrEmptyDownload} [STAGING-CLIENT-REQUEST(GENERAL)] was received when already performing requested operation for same target (stale earlier request has been replied to with empty success)", buf, 0xCu);
    }
  }

  else
  {
    v15 = [v5 stagingClientRequest];
    [(MADAutoAssetStager *)self _replyNothingStaged:@"ClientNewerReplySameOrEmptyDownload" replyingToStagingRequest:v15];

    v13 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(MADAutoAssetStager *)self summary];
      *buf = 138543362;
      v20 = v16;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {ClientNewerReplySameOrEmptyDownload} [STAGING-CLIENT-REQUEST(GENERAL)] when committed to other operation | [NOTHING-STAGED]", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&v18);
  return 0;
}

- (int64_t)action_ClientNewerReplyEmptyDownload:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientNewerReplyEmptyDownload", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v13);

  v9 = [v5 stagingClientRequest];
  [(MADAutoAssetStager *)self _replyNothingStaged:@"ClientNewerReplyEmptyDownload" replyingToStagingRequest:v9];

  v10 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(MADAutoAssetStager *)self summary];
    *buf = 138543362;
    v15 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {ClientNewerReplyEmptyDownload} [STAGING-CLIENT-REQUEST(GENERAL)] when committed to other operation | [NOTHING-STAGED]", buf, 0xCu);
  }

  os_activity_scope_leave(&v13);
  return 0;
}

- (int64_t)action_ClientDecideGroupTargetAvailable:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientDecideGroupTargetAvailable", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v60 = 0;
  v9 = [v5 stagingClientRequest];
  [(MADAutoAssetStager *)self _acceptStagingClientRequest:v9 fromLocation:@"ClientDecideGroupTargetAvailable" adoptingSpecifiedTarget:1];

  v10 = [(MADAutoAssetStager *)self assetTargetTrainName];
  v11 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  v58 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v10 withRestoreVersion:v11];

  v12 = [v5 stagingClientRequest];
  v59 = [(MADAutoAssetStager *)self _stagingClientMessageDesire:@"ClientDecideGroupTargetAvailable" forClientRequest:v12];

  [(MADAutoAssetStager *)self setStagingClientCompleteOnceRequired:0];
  if (v59 && [v59 checkWaitTimeoutSecs] == -2)
  {
    [(MADAutoAssetStager *)self setStagingClientCompleteOnceRequired:__isPlatformVersionAtLeast(2, 18, 4, 0) == 0];
  }

  v13 = [v5 baseForStagingDescriptors];
  v14 = [(MADAutoAssetStager *)self isAnyAvailableForStagingByGroup:@"ClientDecideGroupTargetAvailable" withAlreadyDownloadedDescriptors:v13 targetHadBeenDetermined:&v60];

  if (v14)
  {
    v15 = [(MADAutoAssetStager *)self availableForStagingRequiredByTarget];
    v16 = [v15 safeObjectForKey:v58 ofClass:objc_opt_class()];

    v17 = [(MADAutoAssetStager *)self availableForStagingOptionalByTarget];
    v18 = [v17 safeObjectForKey:v58 ofClass:objc_opt_class()];

    v19 = [v16 count];
    if (v19 | [v18 count])
    {
      if (v19)
      {
        [(MADAutoAssetStager *)self setAvailableForStaging:v16];
        v20 = @"TargetAvailableRequired";
      }

      else
      {
        [(MADAutoAssetStager *)self setAvailableForStaging:v18];
        if ([(MADAutoAssetStager *)self stagingClientCompleteOnceRequired])
        {
          v32 = [(MADAutoAssetStager *)self newStagedInfoWithGroupsSuccessfullyStaged:@"ClientDecideGroupTargetAvailable" indicatingHaveStaged:1];
          v33 = [(MADAutoAssetStager *)self _targetNameActiveClient];
          v34 = [(MADAutoAssetStager *)self _stagingClientRequestDownloadClear:@"ClientDecideGroupTargetAvailable" forStagingTargetName:v33 replyingToCleared:0];

          [(MADAutoAssetStager *)self setStagingClientCompleteOnceRequired:0];
          if (v34)
          {
            [(MADAutoAssetStager *)self _replyToStagingClient:@"ClientDecideGroupTargetAvailable" withStagedInfo:v32 replyingToStagingRequest:v34 recordingOperation:903];
          }

          else
          {
            v35 = [(MADAutoAssetStager *)self autoStagerFSM];
            v36 = [v35 diag];
            [v36 trackAnomaly:@"AUTO-STAGER" forReason:@"{ClientDecideGroupTargetAvailable} no download client request when no REQUIRED but have OPTIONAL to stage" withResult:6111 withError:0];
          }
        }

        v20 = @"TargetAvailableOptional";
      }

      v37 = [(MADAutoAssetStager *)self stagingClientName];
      v38 = [(MADAutoAssetStager *)self assetTargetOSVersion];
      v39 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
      LOBYTE(v57) = v19 != 0;
      [MADAutoAssetHistory recordOperation:703 toHistoryType:4 fromLayer:4 fromClient:v37 forTargetOSVersion:v38 forTargetBuildVersion:v39 isRequired:v57];

      v40 = [(MADAutoAssetStager *)self persistedState];
      v41 = [v40 persistedConfig];
      v42 = [(MADAutoAssetStager *)self assetTargetOSVersion];
      [v41 persistString:v42 forKey:@"assetTargetOSVersion" shouldPersist:0];

      v43 = [(MADAutoAssetStager *)self persistedState];
      v44 = [v43 persistedConfig];
      v45 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
      [v44 persistString:v45 forKey:@"assetTargetBuildVersion" shouldPersist:0];

      v46 = [(MADAutoAssetStager *)self persistedState];
      v47 = [v46 persistedConfig];
      v48 = [(MADAutoAssetStager *)self assetTargetTrainName];
      [v47 persistString:v48 forKey:@"assetTargetTrainName" shouldPersist:0];

      v49 = [(MADAutoAssetStager *)self persistedState];
      v50 = [v49 persistedConfig];
      v51 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
      [v50 persistString:v51 forKey:@"assetTargetRestoreVersion" shouldPersist:1];

      [(MADAutoAssetStager *)self _setupAwaitingStagingAndBeginFirstDownload];
      [(MADAutoAssetStager *)self _logMilestoneFromLocation:@"ClientDecideGroupTargetAvailable" resultingInEvent:v20 forMilestoneActivity:@"beginning download-available-for-staging phase"];
      goto LABEL_20;
    }

    v30 = [(MADAutoAssetStager *)self autoStagerFSM];
    v31 = [v30 diag];
    [v31 trackAnomaly:@"AUTO-STAGER" forReason:@"{ClientDecideGroupTargetAvailable} no REQUIRED and no OPTIONAL descriptors available for staging" withResult:6607 withError:0];

    v20 = @"TargetNotAvailable";
LABEL_12:

LABEL_20:
    goto LABEL_21;
  }

  if (v60 == 1)
  {
    v21 = [(MADAutoAssetStager *)self persistedState];
    v22 = [v21 persistedConfig];
    v23 = [(MADAutoAssetStager *)self assetTargetOSVersion];
    [v22 persistString:v23 forKey:@"assetTargetOSVersion" shouldPersist:0];

    v24 = [(MADAutoAssetStager *)self persistedState];
    v25 = [v24 persistedConfig];
    v26 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
    [v25 persistString:v26 forKey:@"assetTargetBuildVersion" shouldPersist:0];

    v27 = [(MADAutoAssetStager *)self persistedState];
    v28 = [v27 persistedConfig];
    v29 = [(MADAutoAssetStager *)self assetTargetTrainName];
    [v28 persistString:v29 forKey:@"assetTargetTrainName" shouldPersist:0];

    v16 = [(MADAutoAssetStager *)self persistedState];
    v18 = [v16 persistedConfig];
    v30 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
    [v18 persistString:v30 forKey:@"assetTargetRestoreVersion" shouldPersist:1];
    v20 = @"TargetWasEmptied";
    goto LABEL_12;
  }

  v20 = @"TargetNotAvailable";
LABEL_21:
  v52 = [(MADAutoAssetStager *)self autoStagerFSM];
  v53 = [MADAutoAssetStagerParam alloc];
  v54 = [(MADAutoAssetStager *)self _updateLatestSummary];
  v55 = [(MADAutoAssetStagerParam *)v53 initWithSafeSummary:v54];
  [v52 followupEvent:v20 withInfo:v55];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_ClientInvalidStagingPhase:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientInvalidStagingPhase", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  v9 = [v5 stagingClientRequest];
  [(MADAutoAssetStager *)self _replyToStagingClient:@"ClientInvalidStagingPhase" replyingToRequest:v9 withErrorCode:6113 withUnderlyingError:0 withDescription:@"received staging-client-request is not valid for current staging phase"];

  os_activity_scope_leave(&v11);
  return 0;
}

- (int64_t)action_ClientFailAlreadyDetermining:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientFailAlreadyDetermining", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v13);

  v9 = [(MADAutoAssetStager *)self autoStagerFSM:v13.opaque[0]];
  v10 = [v9 diag];
  [v10 trackAnomaly:@"AUTO-STAGER" forReason:@"{ClientFailAlreadyDetermining} by-group when already determining by-group" withResult:6607 withError:0];

  v11 = [v5 stagingClientRequest];
  [(MADAutoAssetStager *)self _replyToStagingClient:@"ClientFailAlreadyDetermining" replyingToRequest:v11 withErrorCode:6607 withUnderlyingError:0 withDescription:@"received staging-client-request is not valid for current staging phase (already determining-groups-available-for-staging)"];

  os_activity_scope_leave(&v13);
  return 0;
}

- (int64_t)action_ClientFailGroupDetermining:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientFailGroupDetermining", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v13);

  v9 = [(MADAutoAssetStager *)self autoStagerFSM:v13.opaque[0]];
  v10 = [v9 diag];
  [v10 trackAnomaly:@"AUTO-STAGER" forReason:@"{ClientFailGroupDetermining} by-group download requested when determining by-group" withResult:6607 withError:0];

  v11 = [v5 stagingClientRequest];
  [(MADAutoAssetStager *)self _replyToStagingClient:@"ClientFailGroupDetermining" replyingToRequest:v11 withErrorCode:6607 withUnderlyingError:0 withDescription:@"received staging-client-request is not valid for current staging phase (currently determining-groups-available-for-staging)"];

  os_activity_scope_leave(&v13);
  return 0;
}

- (int64_t)action_ClientFailByGroupAlreadyDownloading:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientFailByGroupAlreadyDownloading", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v13);

  v9 = [(MADAutoAssetStager *)self autoStagerFSM:v13.opaque[0]];
  v10 = [v9 diag];
  [v10 trackAnomaly:@"AUTO-STAGER" forReason:@"{ClientFailByGroupAlreadyDownloading} by-group operation requested when downloading by-group" withResult:6607 withError:0];

  v11 = [v5 stagingClientRequest];
  [(MADAutoAssetStager *)self _replyToStagingClient:@"ClientFailByGroupAlreadyDownloading" replyingToRequest:v11 withErrorCode:6607 withUnderlyingError:0 withDescription:@"received staging-client-request is not valid for current staging phase (currently downloading-groups-available-for-staging)"];

  os_activity_scope_leave(&v13);
  return 0;
}

- (int64_t)action_ClientFailNoGroupsStaged:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientFailNoGroupsStaged", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  v9 = [v5 stagingClientRequest];
  [(MADAutoAssetStager *)self _replyToStagingClient:@"ClientFailNoGroupsStaged" replyingToRequest:v9 withErrorCode:6608 withUnderlyingError:0 withDescription:@"received staging-client-request is not valid for current staging phase (no groups currently staged)"];

  os_activity_scope_leave(&v11);
  return 0;
}

- (int64_t)action_ClientFailWrongMode:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientFailWrongMode", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v13);

  v9 = [(MADAutoAssetStager *)self autoStagerFSM:v13.opaque[0]];
  v10 = [v9 diag];
  [v10 trackAnomaly:@"AUTO-STAGER" forReason:@"{ClientFailWrongMode} by-group operation requested when latched to ALL-MODE" withResult:6606 withError:0];

  v11 = [v5 stagingClientRequest];
  [(MADAutoAssetStager *)self _replyToStagingClient:@"ClientFailWrongMode" replyingToRequest:v11 withErrorCode:6606 withUnderlyingError:0 withDescription:@"received staging-client-request of different mode than already committed mode"];

  os_activity_scope_leave(&v13);
  return 0;
}

- (int64_t)action_ClientCancelDesireForCompletion:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v31.opaque[0] = 0;
  v31.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientCancelDesireForCompletion", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v31);

  [(MADAutoAssetStager *)self _stagingClientRequestDetermineClearAll:@"ClientCancelDesireForCompletion", v31.opaque[0], v31.opaque[1]];
  v9 = [v5 stagingClientRequest];
  LOBYTE(v8) = v9 == 0;

  if ((v8 & 1) == 0)
  {
    v10 = [v5 stagingClientRequest];
    v11 = [v10 clientReplyCompletion];
    v12 = v11 == 0;

    if (v12)
    {
      v13 = [(MADAutoAssetStager *)self autoStagerFSM];
      v16 = [v13 diag];
      [v16 trackAnomaly:@"AUTO-STAGER" forReason:@"{_replyToStagingClientOperationSuccess} | pending staging-client-request with no reply-completion" withResult:6111 withError:0];
    }

    else
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      v14 = [v5 stagingClientRequest];
      v15 = [v14 clientRequestMessage];
      v16 = [MADAutoAssetControlManager replyMessageNameForRequest:v15];

      v17 = [SUCoreConnectMessage alloc];
      v18 = [v5 stagingClientRequest];
      v19 = [v18 clientID];
      v20 = [v17 initWithType:2 messageName:v16 clientID:v19 version:0 message:v13];

      v21 = [(MADAutoAssetStager *)self statisticsClientRepliesSuccess];
      v22 = [v5 stagingClientRequest];
      v23 = [v22 clientRequestMessage];
      v24 = [v23 messageName];
      [v21 incrementForClientRequestMessage:v24];

      v25 = _MADLog(@"AutoStager");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [(MADAutoAssetStager *)self summary];
        v27 = [(MADAutoAssetStager *)self _targetNameActive];
        *buf = 138543874;
        v33 = v26;
        v34 = 2114;
        v35 = v27;
        v36 = 2114;
        v37 = v16;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {_replyToStagingClientOperationSuccess} [STAGING-CLIENT-REPLY] %{public}@ reply to staging-client (operation success)", buf, 0x20u);
      }

      v28 = [v5 stagingClientRequest];
      v29 = [v28 clientReplyCompletion];
      (v29)[2](v29, v20, 0);
    }
  }

  os_activity_scope_leave(&v31);

  return 0;
}

- (int64_t)action_RequestAlreadyDownloaded:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:RequestAlreadyDownloaded", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v14);

  if (![(MADAutoAssetStager *)self stagingClientUsingGroups:v14.opaque[0]])
  {
    [(MADAutoAssetStager *)self _clearBeforeDetermineAvailable:@"RequestAlreadyDownloaded" removingDetermined:1];
  }

  [(MADAutoAssetStager *)self _persistLastStagingFrom:@"RequestAlreadyDownloaded"];
  [(MADAutoAssetStager *)self startMaxTimeSpentDeterminingTimer];
  +[MADAutoAssetControlManager stagerRequestAlreadyDownloadedDescriptors];
  if ([(MADAutoAssetStager *)self stagingClientUsingGroups])
  {
    v9 = 702;
  }

  else
  {
    v9 = 700;
  }

  v10 = [(MADAutoAssetStager *)self stagingClientName];
  v11 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  v12 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  [MADAutoAssetHistory recordOperation:v9 toHistoryType:4 fromLayer:4 fromClient:v10 forTargetOSVersion:v11 forTargetBuildVersion:v12];

  os_activity_scope_leave(&v14);
  return 0;
}

- (int64_t)action_AddToAvailableDecideMoreCandidates:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v18.opaque[0] = 0;
  v18.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:AddToAvailableDecideMoreCandidates", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v18);

  v9 = [(MADAutoAssetStager *)self _adjustPallasResponseBasedOnPreferences:v5, v18.opaque[0], v18.opaque[1]];
  [(MADAutoAssetStager *)self lookupCacheUpdateWithDetermineResult:v9 fromLocation:@"AddToAvailableDecideMoreCandidates"];
  v10 = [(MADAutoAssetStager *)self candidateSetConfigurations];
  v11 = [v10 count];

  if (v11)
  {
    v12 = @"DetermineMoreCandidates";
  }

  else
  {
    v12 = @"DetermineDoneCandidates";
  }

  v13 = [(MADAutoAssetStager *)self autoStagerFSM];
  v14 = [MADAutoAssetStagerParam alloc];
  v15 = [(MADAutoAssetStager *)self _updateLatestSummary];
  v16 = [(MADAutoAssetStagerParam *)v14 initWithSafeSummary:v15];
  [v13 followupEvent:v12 withInfo:v16];

  os_activity_scope_leave(&v18);
  return 0;
}

- (int64_t)action_AddToAvailableDecideRequiredAvailable:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:AddToAvailableDecideRequiredAvailable", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [(MADAutoAssetStager *)self _adjustPallasResponseBasedOnPreferences:v5];
  [(MADAutoAssetStager *)self lookupCacheUpdateWithDetermineResult:v9 fromLocation:@"AddToAvailableDecideRequiredAvailable"];
  v10 = [(MADAutoAssetStager *)self candidateSetConfigurations];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [[NSString alloc] initWithFormat:@"AUTO-STAGER(%@)", @"AddToAvailableDecideRequiredAvailable"];
    v13 = [MAAutoAssetError buildError:6105 fromOperation:v12 underlyingError:0 withDescription:@"timeout occurred when processing REQUIRED set-configurations - more REQUIRED to be determined when timeout triggered end of pre-SU-staging phase"];

    v14 = @"RequiredErrorBlocksOTA";
  }

  else
  {
    v15 = [(MADAutoAssetStager *)self availableForStaging];
    v16 = [v15 count];

    if (v16)
    {
      v17 = [(MADAutoAssetStager *)self splitOutAvailableForStagingByGroup:@"AddToAvailableDecideRequiredAvailable" forGroupDetermine:1];
      [(MADAutoAssetStager *)self _logPersistedActiveTargetLookupResults:@"AddToAvailableDecideRequiredAvailable"];
      v13 = 0;
      v14 = @"DetermineHaveAvailable";
    }

    else
    {
      [(MADAutoAssetStager *)self _clearAllTrackingOfActiveOperations:@"AddToAvailableDecideRequiredAvailable" alsoPerformingPurgeAll:1 removingDetermined:0];
      v13 = 0;
      v14 = @"DetermineNothingAvailable";
    }
  }

  [(MADAutoAssetStager *)self _persistTargetOTASituationForFollowup:v14 fromLocation:@"AddToAvailableDecideRequiredAvailable"];
  v18 = [(MADAutoAssetStager *)self autoStagerFSM];
  v19 = [MADAutoAssetStagerParam alloc];
  v20 = [v9 jobInformation];
  v21 = [(MADAutoAssetStagerParam *)v19 initWithJobInformation:v20 withDownloadedDescriptor:0 withOperationError:v13];
  [v18 followupEvent:v14 withInfo:v21];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_IgnoreFailureDecideRequiredAvailable:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:IgnoreFailureDecideRequiredAvailable", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [(MADAutoAssetStager *)self candidateSetConfigurations];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [[NSString alloc] initWithFormat:@"AUTO-STAGER(%@)", @"IgnoreFailureDecideRequiredAvailable"];
    v12 = [MAAutoAssetError buildError:6105 fromOperation:v11 underlyingError:0 withDescription:@"timeout occurred when processing REQUIRED set-configurations - tolerated error at point where more REQUIRED to be determined when timeout triggered end of pre-SU-staging phase"];

    v13 = @"RequiredErrorBlocksOTA";
  }

  else
  {
    v14 = [(MADAutoAssetStager *)self availableForStaging];
    v15 = [v14 count];

    if (v15)
    {
      [(MADAutoAssetStager *)self _logPersistedActiveTargetLookupResults:@"IgnoreFailureDecideRequiredAvailable"];
      v12 = 0;
      v13 = @"DetermineHaveAvailable";
    }

    else
    {
      v12 = 0;
      if ([(MADAutoAssetStager *)self _isOtherTargetAvailable])
      {
        v13 = @"DetermineNothingOtherAvailable";
      }

      else
      {
        v13 = @"DetermineNothingAvailable";
      }
    }
  }

  [(MADAutoAssetStager *)self _persistTargetOTASituationForFollowup:v13 fromLocation:@"IgnoreFailureDecideRequiredAvailable"];
  v16 = [(MADAutoAssetStager *)self autoStagerFSM];
  v17 = [MADAutoAssetStagerParam alloc];
  v18 = [v5 jobInformation];
  v19 = [(MADAutoAssetStagerParam *)v17 initWithJobInformation:v18 withDownloadedDescriptor:0 withOperationError:v12];
  [v16 followupEvent:v13 withInfo:v19];

  if ([SUCore stringIsEqual:v13 to:@"DetermineNothingAvailable"])
  {
    [(MADAutoAssetStager *)self _clearAllTrackingOfActiveOperations:@"IgnoreFailureDecideRequiredAvailable" alsoPerformingPurgeAll:1 removingDetermined:0];
  }

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_DecideMoreCandidates:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v17.opaque[0] = 0;
  v17.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:DecideMoreCandidates", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v17);

  v9 = [(MADAutoAssetStager *)self candidateSetConfigurations:v17.opaque[0]];
  v10 = [v9 count];

  if (v10)
  {
    v11 = @"DetermineMoreCandidates";
  }

  else
  {
    v11 = @"DetermineDoneCandidates";
  }

  v12 = [(MADAutoAssetStager *)self autoStagerFSM];
  v13 = [MADAutoAssetStagerParam alloc];
  v14 = [(MADAutoAssetStager *)self _updateLatestSummary];
  v15 = [(MADAutoAssetStagerParam *)v13 initWithSafeSummary:v14];
  [v12 followupEvent:v11 withInfo:v15];

  os_activity_scope_leave(&v17);
  return 0;
}

- (int64_t)action_DecideHaveAvailableOtherTargets:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:DecideHaveAvailableOtherTargets", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v15);

  if ([(MADAutoAssetStager *)self _isOtherTargetAvailable:v15.opaque[0]])
  {
    v9 = @"TargetHaveOtherAvailable";
  }

  else
  {
    v9 = @"TargetNoOtherAvailable";
  }

  v10 = [(MADAutoAssetStager *)self autoStagerFSM];
  v11 = [MADAutoAssetStagerParam alloc];
  v12 = [(MADAutoAssetStager *)self _updateLatestSummary];
  v13 = [(MADAutoAssetStagerParam *)v11 initWithSafeSummary:v12];
  [v10 followupEvent:v9 withInfo:v13];

  os_activity_scope_leave(&v15);
  return 0;
}

- (int64_t)action_DecideHaveRequiredCandidates:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v22.opaque[0] = 0;
  v22.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:DecideHaveRequiredCandidates", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v22);

  v9 = [(MADAutoAssetStager *)self assetTargetTrainName:v22.opaque[0]];
  v10 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  v11 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v9 withRestoreVersion:v10];

  v12 = [(MADAutoAssetStager *)self candidateSetConfigurationsRequiredByTarget];
  v13 = [v12 safeObjectForKey:v11 ofClass:objc_opt_class()];

  v14 = [(MADAutoAssetStager *)self candidateSetConfigurationsOptionalByTarget];
  v15 = [v14 safeObjectForKey:v11 ofClass:objc_opt_class()];

  if ([v13 count])
  {
    [(MADAutoAssetStager *)self setCandidateSetConfigurations:v13];
    v16 = @"DetermineHaveRequired";
  }

  else if ([v15 count])
  {
    [(MADAutoAssetStager *)self setCandidateSetConfigurations:v15];
    v16 = @"DetermineHaveOptional";
  }

  else
  {
    v16 = @"DetermineNoCandidates";
  }

  v17 = [(MADAutoAssetStager *)self autoStagerFSM];
  v18 = [MADAutoAssetStagerParam alloc];
  v19 = [(MADAutoAssetStager *)self _updateLatestSummary];
  v20 = [(MADAutoAssetStagerParam *)v18 initWithSafeSummary:v19];
  [v17 followupEvent:v16 withInfo:v20];

  os_activity_scope_leave(&v22);
  return 0;
}

- (int64_t)action_DecideMoreOptionalAvailable:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v17.opaque[0] = 0;
  v17.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:DecideMoreOptionalAvailable", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v17);

  v9 = [(MADAutoAssetStager *)self awaitingStagingAttempt:v17.opaque[0]];
  v10 = [v9 count];

  if (v10)
  {
    v11 = @"DownloadMoreAvailable";
  }

  else
  {
    v11 = @"DownloadDoneAvailable";
  }

  v12 = [(MADAutoAssetStager *)self autoStagerFSM];
  v13 = [MADAutoAssetStagerParam alloc];
  v14 = [(MADAutoAssetStager *)self _updateLatestSummary];
  v15 = [(MADAutoAssetStagerParam *)v13 initWithSafeSummary:v14];
  [v12 followupEvent:v11 withInfo:v15];

  os_activity_scope_leave(&v17);
  return 0;
}

- (int64_t)action_DoneCandidatesRequiredDecideOptional:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v23.opaque[0] = 0;
  v23.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:DoneCandidatesRequiredDecideOptional", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v23);

  v9 = [(MADAutoAssetStager *)self assetTargetTrainName:v23.opaque[0]];
  v10 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  v11 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v9 withRestoreVersion:v10];

  v12 = [(MADAutoAssetStager *)self candidateSetConfigurationsOptionalByTarget];
  v13 = [v12 safeObjectForKey:v11 ofClass:objc_opt_class()];

  if (v13 && [v13 count])
  {
    [(MADAutoAssetStager *)self setCandidateSetConfigurations:v13];
    [(MADAutoAssetStager *)self _startDetermineJobForNextCandidate:@"DoneCandidatesRequiredDecideOptional"];
    v14 = @"DeterminedRequiredWithOptional";
  }

  else
  {
    v15 = [(MADAutoAssetStager *)self availableForStaging];
    v16 = [v15 count];

    if (v16)
    {
      v17 = [(MADAutoAssetStager *)self splitOutAvailableForStagingByGroup:@"DoneCandidatesRequiredDecideOptional" forGroupDetermine:1];
      [(MADAutoAssetStager *)self _logPersistedActiveTargetLookupResults:@"DoneCandidatesRequiredDecideOptional"];
      v14 = @"DetermineHaveAvailable";
    }

    else
    {
      v14 = @"DetermineNothingAvailable";
    }
  }

  [(MADAutoAssetStager *)self _persistTargetOTASituationForFollowup:v14 fromLocation:@"DoneCandidatesRequiredDecideOptional"];
  v18 = [(MADAutoAssetStager *)self autoStagerFSM];
  v19 = [MADAutoAssetStagerParam alloc];
  v20 = [(MADAutoAssetStager *)self _updateLatestSummary];
  v21 = [(MADAutoAssetStagerParam *)v19 initWithSafeSummary:v20];
  [v18 followupEvent:v14 withInfo:v21];

  os_activity_scope_leave(&v23);
  return 0;
}

- (int64_t)action_DecideRequiredErrorBlocksOTA:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v24.opaque[0] = 0;
  v24.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:DecideRequiredErrorBlocksOTA", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v24);

  v9 = [v5 operationError];
  v10 = [v9 domain];
  v11 = [SUCore stringIsEqual:v10 to:@"com.apple.MobileAssetError.AutoAsset"];

  if (v11)
  {
    if ([v9 code] == "eUpdateCoreConnect.framework/SoftwareUpdateCoreConnect" || objc_msgSend(v9, "code") == "UpdateCoreConnect.framework/SoftwareUpdateCoreConnect" || objc_msgSend(v9, "code") == "pdateCoreConnect.framework/SoftwareUpdateCoreConnect" || objc_msgSend(v9, "code") == "ateCoreConnect.framework/SoftwareUpdateCoreConnect")
    {
      v12 = @"RequiredErrorNonFatal";
      goto LABEL_22;
    }

    v12 = @"RequiredErrorNonFatal";
    if ([v9 code] == "orks/MobileInBoxUpdate.framework/MobileInBoxUpdate")
    {
      goto LABEL_22;
    }

    v13 = [v9 domain];
    if ([SUCore stringIsEqual:v13 to:@"com.apple.MobileAssetError.AutoAsset"])
    {
      v15 = [v9 code];

      v12 = @"RequiredErrorBlocksOTA";
      if (v15 != "rk/SoftwareUpdateCoreSupport")
      {
        goto LABEL_22;
      }

      v13 = [v9 userInfo];
      v16 = [v13 safeObjectForKey:NSUnderlyingErrorKey ofClass:objc_opt_class()];
      v17 = [v16 domain];
      if ([SUCore stringIsEqual:v17 to:@"com.apple.MobileAssetError.Download"])
      {
        v18 = -[MADAutoAssetStager _maDownloadErrorConsideredFatal:](self, "_maDownloadErrorConsideredFatal:", [v16 code]);

        if (!v18)
        {
          v12 = @"RequiredErrorNonFatal";
        }
      }

      else
      {
      }
    }

    else
    {
      v12 = @"RequiredErrorBlocksOTA";
    }

LABEL_21:

    goto LABEL_22;
  }

  v13 = [v9 domain];
  v12 = @"RequiredErrorBlocksOTA";
  if (![SUCore stringIsEqual:v13 to:@"com.apple.MobileAssetError.Download"])
  {
    goto LABEL_21;
  }

  v14 = -[MADAutoAssetStager _maDownloadErrorConsideredFatal:](self, "_maDownloadErrorConsideredFatal:", [v9 code]);

  if (!v14)
  {
    v12 = @"RequiredErrorNonFatal";
  }

LABEL_22:
  v19 = [(MADAutoAssetStager *)self autoStagerFSM];
  v20 = [MADAutoAssetStagerParam alloc];
  v21 = [v5 jobInformation];
  v22 = [(MADAutoAssetStagerParam *)v20 initWithJobInformation:v21 withDownloadedDescriptor:0 withOperationError:v9];
  [v19 followupEvent:v12 withInfo:v22];

  os_activity_scope_leave(&v24);
  return 0;
}

- (int64_t)action_FailRequiredDetermineBlocksOTA:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MADAutoAssetStager *)self autoStagerFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v9 = _os_activity_create(&dword_0, "MADStager:FailRequiredDetermineBlocksOTA", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v9, &state);

  v10 = [NSString alloc];
  v11 = [(MADAutoAssetStager *)self activeSetJobConfiguration];
  v12 = [v11 summary];
  v13 = [v6 operationError];
  if (v13)
  {
    v4 = [v6 operationError];
    v14 = [v4 checkedDescription];
  }

  else
  {
    v14 = @"BLOCK-OTA";
  }

  v15 = [v10 initWithFormat:@"failed to determine whether there is REQUIRED server-side content - OTA cannot proceed | setConfiguration:%@ | error:%@", v12, v14, state.opaque[0], state.opaque[1]];
  if (v13)
  {
  }

  v16 = objc_alloc_init(NSMutableArray);
  v17 = [(MADAutoAssetStager *)self assetTargetTrainName];
  v18 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  v19 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v17 withRestoreVersion:v18];

  v20 = [(MADAutoAssetStager *)self _stagingClientRequestDetermineClear:@"FailRequiredDetermineBlocksOTA" forStagingTargetName:0 replyingToCleared:0];
  v21 = [(MADAutoAssetStager *)self availableForStagingRequiredByTarget];
  [v21 setSafeObject:v16 forKey:v19];

  v22 = [(MADAutoAssetStager *)self availableForStagingOptionalByTarget];
  [v22 setSafeObject:v16 forKey:v19];

  [(MADAutoAssetStager *)self setAvailableForStaging:v16];
  if (v20)
  {
    v23 = [v6 operationError];
    [(MADAutoAssetStager *)self _replyToStagingClient:@"FailRequiredDetermineBlocksOTA" replyingToRequest:v20 withErrorCode:6602 withUnderlyingError:v23 withDescription:v15];
  }

  else
  {
    v23 = [(MADAutoAssetStager *)self autoStagerFSM];
    v24 = [v23 diag];
    [v24 trackAnomaly:@"AUTO-STAGER" forReason:@"{FailRequiredDetermineBlocksOTA} no determine client request when failed to determine REQUIRED" withResult:6111 withError:0];
  }

  if ([(MADAutoAssetStager *)self _isOtherTargetAvailable])
  {
    v25 = @"DetermineNothingOtherAvailable";
  }

  else
  {
    v25 = @"DetermineNothingAvailable";
  }

  [(MADAutoAssetStager *)self _clearAllTrackingOfActiveOperations:@"FailRequiredDetermineBlocksOTA" alsoPerformingPurgeAll:1 removingDetermined:0];
  [(MADAutoAssetStager *)self _persistTargetOTASituation:202 fromLocation:@"FailRequiredDetermineBlocksOTA"];
  v26 = [(MADAutoAssetStager *)self autoStagerFSM];
  v27 = [MADAutoAssetStagerParam alloc];
  v28 = [(MADAutoAssetStager *)self _updateLatestSummary];
  v29 = [(MADAutoAssetStagerParam *)v27 initWithSafeSummary:v28];
  [v26 followupEvent:v25 withInfo:v29];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_ReportStagingProgressToClient:(id)a3 error:(id *)a4
{
  v75 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = _os_activity_create(&dword_0, "MADStager:ReportStagingProgressToClient", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);

  if ([(MADAutoAssetStager *)self stagingClientUsingGroups])
  {
    v8 = [(MADAutoAssetStager *)self _targetNameActiveClient];
    v77 = [(MADAutoAssetStager *)self _stagingClientRequestDownloadCurrent:@"ReportStagingProgressToClient" forStagingTargetName:v8];
  }

  else
  {
    v77 = [(MADAutoAssetStager *)self _stagingClientRequestGeneralCurrent:@"ReportStagingProgressToClient"];
  }

  if (v77)
  {
    v9 = [v77 clientProgressProxy];
    v10 = v9 == 0;

    if (!v10)
    {
      v11 = [v75 jobInformation];
      v12 = [v11 currentStatus];

      v13 = [v12 downloadProgress];
      v14 = [v13 copy];
      v76 = v13;
      v74 = v14;
      if ([v13 totalExpectedBytes] < 1)
      {
        v16 = _MADLog(@"AutoStager");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [(MADAutoAssetStager *)self summary];
          v18 = [v12 summary];
          *buf = 138543618;
          v80 = v17;
          v81 = 2114;
          v82 = v18;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] AUTO-STAGING-PROGRESS | early progress before totalExpectedBytes indicated (ignored) | currentStatus:%{public}@", buf, 0x16u);
        }
      }

      else
      {
        v73 = [v12 downloadedNetworkBytes];
        if (!v73)
        {
          v73 = [v12 downloadedFilesystemBytes];
        }

        if (-[MADAutoAssetStager currentStagedLastWrittenBytes](self, "currentStagedLastWrittenBytes") && (v15 = -[MADAutoAssetStager currentStagedLastWrittenBytes](self, "currentStagedLastWrittenBytes"), v15 <= [v76 totalWrittenBytes]))
        {
          -[MADAutoAssetStager setOverallStagedDownloadedSoFarBytes:](self, "setOverallStagedDownloadedSoFarBytes:", -[MADAutoAssetStager overallStagedDownloadedSoFarBytes](self, "overallStagedDownloadedSoFarBytes") + [v76 totalWrittenBytes] - -[MADAutoAssetStager currentStagedLastWrittenBytes](self, "currentStagedLastWrittenBytes"));
        }

        else
        {
          -[MADAutoAssetStager setOverallStagedDownloadedSoFarBytes:](self, "setOverallStagedDownloadedSoFarBytes:", [v76 totalWrittenBytes] + -[MADAutoAssetStager currentStagedRemainingBytes](self, "currentStagedRemainingBytes") + -[MADAutoAssetStager overallStagedDownloadedSoFarBytes](self, "overallStagedDownloadedSoFarBytes"));
        }

        v19 = [v76 totalExpectedBytes];
        if (v19 >= [v76 totalWrittenBytes])
        {
          -[MADAutoAssetStager setCurrentStagedRemainingBytes:](self, "setCurrentStagedRemainingBytes:", [v76 totalExpectedBytes] - objc_msgSend(v76, "totalWrittenBytes"));
        }

        else
        {
          v20 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = [v76 totalExpectedBytes];
            v22 = [v76 totalWrittenBytes];
            *buf = 134218240;
            v80 = v21;
            v81 = 2048;
            v82 = v22;
            _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "[AUTO-STAGER] {ReportStagingProgressToClient} | Download progress for asset resulted in more written than expected | Expected: %lld | Written: %lld", buf, 0x16u);
          }
        }

        [v14 setTotalExpectedBytes:{-[MADAutoAssetStager overallStagedTotalExpectedBytes](self, "overallStagedTotalExpectedBytes")}];
        [v14 setTotalWrittenBytes:{-[MADAutoAssetStager overallStagedDownloadedSoFarBytes](self, "overallStagedDownloadedSoFarBytes")}];
        v23 = [v14 totalExpectedBytes];
        v24 = [v14 totalWrittenBytes];
        [v76 expectedTimeRemainingSecs];
        if (v25 == 0.0)
        {
          v29 = 0;
        }

        else
        {
          v26 = [v76 totalExpectedBytes];
          v27 = [v76 totalWrittenBytes];
          [v76 expectedTimeRemainingSecs];
          v29 = ((v26 - v27) / v28);
        }

        [v14 setExpectedTimeRemainingSecs:0.0];
        if (v29)
        {
          [v14 setExpectedTimeRemainingSecs:((v23 - v24) / v29)];
        }

        -[MADAutoAssetStager setCurrentStagedLastWrittenBytes:](self, "setCurrentStagedLastWrittenBytes:", [v76 totalWrittenBytes]);
        if (__isPlatformVersionAtLeast(2, 16, 4, 0))
        {
          v68 = [v12 currentLockUsage];
        }

        else
        {
          v68 = 0;
        }

        v67 = [MAAutoAssetStatus alloc];
        v72 = [v12 assetSelector];
        v71 = [v12 notifications];
        v70 = [v12 availableForUseAttributes];
        v69 = [v12 newerVersionAttributes];
        v66 = [v12 downloadUserInitiated];
        v65 = [v12 downloadedFilesystemBytes];
        v64 = [v12 downloadedAsPatch];
        v30 = [v12 patchedFromBaseSelector];
        v31 = [v12 patchedFromBaseFilesystemBytes];
        v32 = [v12 patchingAttempted];
        v33 = [(MADAutoAssetStager *)self stagingFromOSVersion];
        v34 = [(MADAutoAssetStager *)self stagingFromBuildVersion];
        v35 = [v12 availableForUseError];
        v36 = [v12 patchingAttemptError];
        v37 = [v12 newerVersionError];
        BYTE1(v63) = 1;
        LOBYTE(v63) = v32;
        LOBYTE(v62) = v64;
        v38 = [v67 initWithAssetSelector:v72 withNotifications:v71 withAvailableForUseAttributes:v70 withNewerVersionAttributes:v69 withNeverBeenLocked:1 withDownloadUserInitiated:v66 withDownloadProgress:v74 withDownloadedNetworkBytes:v73 withDownloadedFilesystemBytes:v65 withDownloadedAsPatch:v62 withPatchedFromBaseSelector:v30 withPatchedFromBaseFilesystemBytes:v31 withPatchingAttempted:v63 withStagedPriorToAvailable:v33 withStagedFromOSVersion:v34 withStagedFromBuildVersion:v68 withCurrentLockUsage:v35 withAvailableForUseError:v36 withPatchingAttemptError:v37 withNewerVersionError:?];

        v39 = [v12 neverBeenLocked];
        v40 = [(MADAutoAssetStager *)self activeJobDescriptor];
        [v40 setNeverBeenLocked:v39];

        v41 = [v12 downloadUserInitiated];
        v42 = [(MADAutoAssetStager *)self activeJobDescriptor];
        [v42 setDownloadUserInitiated:v41];

        v43 = [(MADAutoAssetStager *)self activeJobDescriptor];
        [v43 setDownloadedNetworkBytes:v73];

        v44 = [v12 downloadedFilesystemBytes];
        v45 = [(MADAutoAssetStager *)self activeJobDescriptor];
        [v45 setDownloadedFilesystemBytes:v44];

        v46 = [v12 patchedFromBaseSelector];
        v47 = [(MADAutoAssetStager *)self activeJobDescriptor];
        [v47 setPatchedFromBaseSelector:v46];

        v48 = [v12 patchedFromBaseFilesystemBytes];
        v49 = [(MADAutoAssetStager *)self activeJobDescriptor];
        [v49 setPatchedFromBaseFilesystemBytes:v48];

        v50 = [v12 patchingAttempted];
        v51 = [(MADAutoAssetStager *)self activeJobDescriptor];
        [v51 setPatchingAttempted:v50];

        v52 = [v12 patchingAttemptError];
        v53 = [(MADAutoAssetStager *)self activeJobDescriptor];
        [v53 setPatchingAttemptError:v52];

        v54 = [v77 clientProgressProxy];
        LOBYTE(v53) = objc_opt_respondsToSelector();

        if (v53)
        {
          v55 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = [(MADAutoAssetStager *)self summary];
            v57 = [v38 summary];
            *buf = 138543618;
            v80 = v56;
            v81 = 2114;
            v82 = v57;
            _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] AUTO-STAGING-PROGRESS | staging-client provided with progress | overallStatus:%{public}@", buf, 0x16u);
          }

          v58 = [v77 clientProgressProxy];
          [v58 executeGenericBlock:v38];
        }

        else
        {
          v58 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            v59 = [(MADAutoAssetStager *)self summary];
            v60 = [v38 summary];
            *buf = 138543618;
            v80 = v59;
            v81 = 2114;
            v82 = v60;
            _os_log_impl(&dword_0, v58, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] AUTO-STAGING-PROGRESS | client not provided progress | client does not respond to executeGenericBlock | overallStatus:%{public}@", buf, 0x16u);
          }
        }

        v16 = v68;
      }
    }
  }

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_AddToStaged:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v19.opaque[0] = 0;
  v19.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:AddToStaged", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v19);

  v9 = [v5 downloadedDescriptor];
  LODWORD(v8) = v9 == 0;

  if (v8)
  {
    v10 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(MADAutoAssetStager *)self summary];
      v12 = [(MADAutoAssetStager *)self activeJobDescriptor];
      v13 = [v12 summary];
      *buf = 138543618;
      v21 = v11;
      v22 = 2114;
      v23 = v13;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {AddToStaged} [BY-GROUP-MODE] asset-descriptor ALREADY-DOWNLOADED | self.activeJobDescriptor:%{public}@", buf, 0x16u);
    }

    [(MADAutoAssetStager *)self setActiveJobDescriptor:0];
  }

  else
  {
    [(MADAutoAssetStager *)self _addToStaged:@"AddToStaged" addingFromStagerParam:v5];
  }

  v14 = [(MADAutoAssetStager *)self autoStagerFSM];
  v15 = [MADAutoAssetStagerParam alloc];
  v16 = [(MADAutoAssetStager *)self _updateLatestSummary];
  v17 = [(MADAutoAssetStagerParam *)v15 initWithSafeSummary:v16];
  [v14 followupEvent:@"DownloadDecideMoreAvailable" withInfo:v17];

  os_activity_scope_leave(&v19);
  return 0;
}

- (int64_t)action_AddToStagedDecideMoreAvailable:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v22.opaque[0] = 0;
  v22.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:AddToStagedDecideMoreAvailable", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v22);

  v9 = [v5 downloadedDescriptor];
  LODWORD(v8) = v9 == 0;

  if (v8)
  {
    v10 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(MADAutoAssetStager *)self summary];
      v12 = [(MADAutoAssetStager *)self activeJobDescriptor];
      v13 = [v12 summary];
      *buf = 138543618;
      v24 = v11;
      v25 = 2114;
      v26 = v13;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {AddToStagedDecideMoreAvailable} asset-descriptor ALREADY-DOWNLOADED | self.activeJobDescriptor:%{public}@", buf, 0x16u);
    }

    [(MADAutoAssetStager *)self setActiveJobDescriptor:0];
  }

  else
  {
    [(MADAutoAssetStager *)self _addToStaged:@"AddToStagedDecideMoreAvailable" addingFromStagerParam:v5];
  }

  v14 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
  v15 = [v14 count] == 0;

  if (v15)
  {
    v16 = @"DownloadDoneAvailable";
  }

  else
  {
    v16 = @"DownloadMoreAvailable";
  }

  v17 = [(MADAutoAssetStager *)self autoStagerFSM];
  v18 = [MADAutoAssetStagerParam alloc];
  v19 = [(MADAutoAssetStager *)self _updateLatestSummary];
  v20 = [(MADAutoAssetStagerParam *)v18 initWithSafeSummary:v19];
  [v17 followupEvent:v16 withInfo:v20];

  os_activity_scope_leave(&v22);
  return 0;
}

- (int64_t)action_DecideMoreRequiredAvailable:(id)a3 error:(id *)a4
{
  v43 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = _os_activity_create(&dword_0, "MADStager:DecideMoreRequiredAvailable", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);

  v8 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
  v9 = [v8 count] == 0;

  if (v9)
  {
    v11 = [(MADAutoAssetStager *)self assetTargetTrainName];
    v12 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
    v42 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v11 withRestoreVersion:v12];

    v13 = [(MADAutoAssetStager *)self availableForStagingOptionalByTarget];
    v14 = [v13 safeObjectForKey:v42 ofClass:objc_opt_class()];

    if (v14 && [v14 count])
    {
      v15 = objc_alloc_init(NSMutableArray);
      [(MADAutoAssetStager *)self setAwaitingStagingAttempt:v15];

      v16 = objc_alloc_init(NSMutableDictionary);
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v17 = v14;
      v18 = 0;
      v19 = [v17 countByEnumeratingWithState:&v44 objects:v57 count:16];
      if (v19)
      {
        v20 = *v45;
        do
        {
          v21 = 0;
          do
          {
            if (*v45 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v44 + 1) + 8 * v21);
            if (v22)
            {
              v23 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
              [v23 addObject:v22];

              [(MADAutoAssetStager *)self trackSelectorForDescriptor:v22 inContainer:v16];
            }

            else
            {
              ++v18;
            }

            v21 = v21 + 1;
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v44 objects:v57 count:16];
        }

        while (v19);
      }

      v24 = [(MADAutoAssetStager *)self persistedState];
      v25 = [v24 persistedConfig];
      v26 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
      [v25 persistULL:objc_msgSend(v26 forKey:"count") shouldPersist:{@"awaitingStagingAssetCount", 0}];

      v27 = _MADLog(@"AutoStager");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [(MADAutoAssetStager *)self summary];
        v29 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
        v30 = [v29 count];
        v31 = [(MADAutoAssetStager *)self selectorContainerAsString:v16];
        *buf = 138544130;
        v50 = v28;
        v51 = 2048;
        v52 = v18;
        v53 = 2048;
        v54 = v30;
        v55 = 2114;
        v56 = v31;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {DecideMoreRequiredAvailable} [BY-GROUP-MODE] REQUIRED done have OPTIONAL | nilDescriptorCount:%ld | awaitingStagingAttempt:%ld\n>>> awaitingStaging:%{public}@", buf, 0x2Au);
      }

      if ([(MADAutoAssetStager *)self stagingClientCompleteOnceRequired])
      {
        v32 = [(MADAutoAssetStager *)self newStagedInfoWithGroupsSuccessfullyStaged:@"DecideMoreRequiredAvailable" indicatingHaveStaged:1];
        v33 = [(MADAutoAssetStager *)self _targetNameActiveClient];
        v34 = [(MADAutoAssetStager *)self _stagingClientRequestDownloadClear:@"DecideMoreRequiredAvailable" forStagingTargetName:v33 replyingToCleared:0];

        [(MADAutoAssetStager *)self setStagingClientCompleteOnceRequired:0];
        if (v34)
        {
          [(MADAutoAssetStager *)self _replyToStagingClient:@"DecideMoreRequiredAvailable" withStagedInfo:v32 replyingToStagingRequest:v34 recordingOperation:903];
        }

        else
        {
          v35 = [(MADAutoAssetStager *)self autoStagerFSM];
          v36 = [v35 diag];
          [v36 trackAnomaly:@"AUTO-STAGER" forReason:@"{DecideMoreRequiredAvailable} no download client request when done staging REQUIRED and have OPTIONAL to stage" withResult:6111 withError:0];
        }
      }

      v10 = @"DownloadOptionalAvailable";
    }

    else
    {
      v10 = @"DownloadDoneAvailable";
    }
  }

  else
  {
    v10 = @"DownloadMoreAvailable";
  }

  v37 = [(MADAutoAssetStager *)self autoStagerFSM];
  v38 = [MADAutoAssetStagerParam alloc];
  v39 = [(MADAutoAssetStager *)self _updateLatestSummary];
  v40 = [(MADAutoAssetStagerParam *)v38 initWithSafeSummary:v39];
  [v37 followupEvent:v10 withInfo:v40];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_DecideMoreAvailable:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:DecideMoreAvailable", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [MAAutoAssetSelector alloc];
  v10 = [(MADAutoAssetStager *)self activeJobDescriptor];
  v11 = [v10 assetType];
  v12 = [(MADAutoAssetStager *)self activeJobDescriptor];
  v13 = [v12 assetSpecifier];
  v14 = [(MADAutoAssetStager *)self activeJobDescriptor];
  v15 = [v14 assetVersion];
  v16 = [v9 initForAssetType:v11 withAssetSpecifier:v13 matchingAssetVersion:v15];

  v17 = [v5 operationError];
  if (!v17)
  {
    v18 = [[NSString alloc] initWithFormat:@"AUTO-STAGER(%@)", @"DecideMoreAvailable"];
    v17 = [MAAutoAssetError buildError:6102 fromOperation:v18 underlyingError:0 withDescription:@"auto-asset-job failed without providing operationError"];
  }

  v19 = [(MADAutoAssetStager *)self activeJobDescriptor];
  v20 = [v19 assetId];
  v21 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  v22 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  [MADAutoAssetHistory recordFailedOperation:1001 fromLayer:4 forAssetID:v20 withSelector:v16 failingWithError:v17 forTargetOSVersion:v21 forTargetBuildVersion:v22];

  v23 = [(MADAutoAssetStager *)self activeJobDescriptor];
  [(MADAutoAssetStager *)self _persistDescriptor:@"DecideMoreAvailable" operation:@"ENTRY_MODIFY" persistingDescriptor:v23 withRepresentation:601 message:@"auto-asset-job has indicated failure to downloaded content"];

  v24 = [(MADAutoAssetStager *)self persistedState];
  v25 = [v24 persistedConfig];
  [v25 persistULL:0 forKey:@"activelyStagingAssetCount" shouldPersist:1];

  v26 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
  v27 = [v26 count];

  if (v27)
  {
    v28 = @"DownloadMoreAvailable";
  }

  else
  {
    v28 = @"DownloadDoneAvailable";
  }

  v29 = [(MADAutoAssetStager *)self autoStagerFSM];
  v30 = [MADAutoAssetStagerParam alloc];
  v31 = [(MADAutoAssetStager *)self _updateLatestSummary];
  v32 = [(MADAutoAssetStagerParam *)v30 initWithSafeSummary:v31];
  [v29 followupEvent:v28 withInfo:v32];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_ClientContinueRestartingMaxDetermining:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ClientContinueRestartingMaxDetermining", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v13);

  v9 = [v5 stagingClientRequest];
  [(MADAutoAssetStager *)self _acceptStagingClientRequest:v9 fromLocation:@"ClientContinueRestartingMaxDetermining" adoptingSpecifiedTarget:0];

  v10 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(MADAutoAssetStager *)self summary];
    *buf = 138543362;
    v15 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {ClientContinueRestartingMaxDetermining} staging-client-request was received when already performing requested operation (stale earlier request has been replied to with failure)", buf, 0xCu);
  }

  [(MADAutoAssetStager *)self startMaxTimeSpentDeterminingTimer];
  os_activity_scope_leave(&v13);

  return 0;
}

- (int64_t)action_AddToAvailableDecideAnyAvailable:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v18.opaque[0] = 0;
  v18.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:AddToAvailableDecideAnyAvailable", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v18);

  v9 = [(MADAutoAssetStager *)self _adjustPallasResponseBasedOnPreferences:v5, v18.opaque[0], v18.opaque[1]];
  [(MADAutoAssetStager *)self lookupCacheUpdateWithDetermineResult:v9 fromLocation:@"ClientContinueRestartingMaxDetermining"];
  v10 = [(MADAutoAssetStager *)self availableForStaging];
  v11 = [v10 count];

  if (v11)
  {
    [(MADAutoAssetStager *)self _logPersistedActiveTargetLookupResults:@"AddToAvailableDecideAnyAvailable"];
    v12 = @"DetermineHaveAvailable";
  }

  else
  {
    v12 = @"DetermineNothingAvailable";
  }

  [(MADAutoAssetStager *)self _persistTargetOTASituationForFollowup:v12 fromLocation:@"AddToAvailableDecideAnyAvailable"];
  v13 = [(MADAutoAssetStager *)self autoStagerFSM];
  v14 = [MADAutoAssetStagerParam alloc];
  v15 = [(MADAutoAssetStager *)self _updateLatestSummary];
  v16 = [(MADAutoAssetStagerParam *)v14 initWithSafeSummary:v15];
  [v13 followupEvent:v12 withInfo:v16];

  if ([SUCore stringIsEqual:v12 to:@"DetermineNothingAvailable"])
  {
    [(MADAutoAssetStager *)self _clearAllTrackingOfActiveOperations:@"AddToAvailableDecideAnyAvailable" alsoPerformingPurgeAll:1 removingDetermined:0];
  }

  os_activity_scope_leave(&v18);
  return 0;
}

- (int64_t)action_DecideTimerDeterminingValid:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v16.opaque[0] = 0;
  v16.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:DecideTimerDeterminingValid", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v16);

  v9 = [v5 timerUUID];
  v10 = [(MADAutoAssetStager *)self determineTimeoutUUID];
  LODWORD(v7) = [SUCore stringIsEqual:v9 to:v10];

  if (v7)
  {
    v11 = [(MADAutoAssetStager *)self autoStagerFSM];
    v12 = [MADAutoAssetStagerParam alloc];
    v13 = [(MADAutoAssetStager *)self _updateLatestSummary];
    v14 = [(MADAutoAssetStagerParam *)v12 initWithSafeSummary:v13];
    [v11 followupEvent:@"TimeoutValidActiveDetermine" withInfo:v14];
  }

  os_activity_scope_leave(&v16);

  return 0;
}

- (int64_t)action_FormCandidatesDecideDetermine:(id)a3 error:(id *)a4
{
  v157 = a3;
  v183 = self;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  state.opaque[1] = 0;
  state.opaque[0] = 0;
  v7 = _os_activity_create(&dword_0, "MADStager:FormCandidatesDecideDetermine", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);

  v158 = objc_alloc_init(NSMutableArray);
  v160 = [(MADAutoAssetStager *)v183 _allEliminationSelectors];
  v174 = objc_alloc_init(NSMutableDictionary);
  v156 = [(MADAutoAssetStager *)v183 doesStagingInvolveRequired];
  v152 = [(MADAutoAssetStager *)v183 doesStagingInvolveOptional];
  v8 = [v157 setConfigurations];
  [(MADAutoAssetStager *)v183 setSetConfigurations:v8];

  v9 = [v157 setTargets];
  [(MADAutoAssetStager *)v183 setSetTargets:v9];

  v10 = [v157 scheduledJobs];
  [(MADAutoAssetStager *)v183 setScheduledJobs:v10];

  v11 = [(MADAutoAssetStager *)v183 setTargets];
  LOBYTE(v6) = [v11 count] == 0;

  if ((v6 & 1) == 0)
  {
    v217 = 0u;
    v218 = 0u;
    v215 = 0u;
    v216 = 0u;
    v12 = [(MADAutoAssetStager *)v183 setTargets];
    v13 = [v12 countByEnumeratingWithState:&v215 objects:v237 count:16];
    if (!v13)
    {
      goto LABEL_28;
    }

    log = *v216;
    v164 = v12;
    while (1)
    {
      v14 = 0;
      v169 = v13;
      do
      {
        if (*v216 != log)
        {
          objc_enumerationMutation(v12);
        }

        v175 = v14;
        v15 = *(*(&v215 + 1) + 8 * v14);
        context = objc_autoreleasePoolPush();
        v178 = [v15 fullName];
        v16 = [v15 firstEntryAssetType];
        if (v16)
        {
          [v174 setSafeObject:v16 forKey:v178];
          goto LABEL_26;
        }

        v213 = 0u;
        v214 = 0u;
        v211 = 0u;
        v212 = 0u;
        v17 = [(MADAutoAssetStager *)v183 setConfigurations];
        v18 = [v17 countByEnumeratingWithState:&v211 objects:v236 count:16];
        obj = v17;
        if (v18)
        {
          v19 = *v212;
LABEL_11:
          v20 = 0;
          while (1)
          {
            if (*v212 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v211 + 1) + 8 * v20);
            v22 = [v21 clientDomainName];
            v23 = [v15 clientDomainName];
            if (([SUCore stringIsEqual:v22 to:v23]& 1) == 0)
            {
              break;
            }

            v24 = [v21 assetSetIdentifier];
            v25 = [v15 assetSetIdentifier];
            v26 = [SUCore stringIsEqual:v24 to:v25];

            if (v26)
            {
              v16 = [v21 firstEntryAssetType];
              if (v16)
              {
                [v174 setSafeObject:v16 forKey:v178];
                v29 = obj;
                goto LABEL_25;
              }

              v22 = _MADLog(@"AutoStager");
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v27 = [(MADAutoAssetStager *)v183 summary];
                v28 = [v15 summary];
                *buf = 138543618;
                v221 = v27;
                v222 = 2114;
                v223 = v28;
                _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {FormCandidatesDecideDetermine} set-target indicating nothing to be staged and no set-configuration | nextSetTarget:%{public}@", buf, 0x16u);
              }

              goto LABEL_20;
            }

LABEL_21:
            if (v18 == ++v20)
            {
              v18 = [obj countByEnumeratingWithState:&v211 objects:v236 count:16];
              if (v18)
              {
                goto LABEL_11;
              }

              goto LABEL_23;
            }
          }

LABEL_20:
          goto LABEL_21;
        }

LABEL_23:
        v16 = 0;
        v29 = obj;
LABEL_25:

LABEL_26:
        objc_autoreleasePoolPop(context);
        v12 = v164;
        v14 = v175 + 1;
      }

      while ((v175 + 1) != v169);
      v13 = [v164 countByEnumeratingWithState:&v215 objects:v237 count:16];
      if (!v13)
      {
LABEL_28:

        break;
      }
    }
  }

  v209 = 0u;
  v210 = 0u;
  v207 = 0u;
  v208 = 0u;
  v159 = [v157 alreadyDownloaded];
  v162 = [v159 countByEnumeratingWithState:&v207 objects:v235 count:16];
  if (v162)
  {
    v161 = *v208;
    do
    {
      for (i = 0; i != v162; i = i + 1)
      {
        if (*v208 != v161)
        {
          objc_enumerationMutation(v159);
        }

        obja = *(*(&v207 + 1) + 8 * i);
        v165 = objc_autoreleasePoolPush();
        if (!obja)
        {
          v59 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            v60 = [(MADAutoAssetStager *)v183 summary];
            v61 = [v157 summary];
            *buf = 138543618;
            v221 = v60;
            v222 = 2114;
            v223 = v61;
            _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {FormCandidatesDecideDetermine} nil encountered on alreadyDownloaded array | eventInfo:%{public}@", buf, 0x16u);
          }

          goto LABEL_88;
        }

        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v181 = v160;
        v30 = [v181 countByEnumeratingWithState:&v203 objects:v234 count:16];
        if (!v30)
        {

          goto LABEL_70;
        }

        v176 = v30;
        v179 = *v204;
        contexta = 1;
        do
        {
          for (j = 0; j != v176; j = j + 1)
          {
            if (*v204 != v179)
            {
              objc_enumerationMutation(v181);
            }

            v32 = *(*(&v203 + 1) + 8 * j);
            v33 = objc_autoreleasePoolPush();
            v34 = [v181 safeObjectForKey:v32 ofClass:objc_opt_class()];
            v35 = [v34 assetVersion];
            LOBYTE(v32) = v35 == 0;

            if (v32)
            {
              v45 = [v34 assetSpecifier];
              v46 = v45 == 0;

              if (v46)
              {
                v53 = [obja assetType];
                v54 = [v34 assetType];
                v55 = [SUCore stringIsEqual:v53 to:v54];

                if (!v55)
                {
LABEL_57:
                  v58 = 1;
                  goto LABEL_61;
                }

                v36 = _MADLog(@"AutoStager");
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  v56 = [(MADAutoAssetStager *)v183 summary];
                  v57 = [obja summary];
                  *buf = 138543618;
                  v221 = v56;
                  v222 = 2114;
                  v223 = v57;
                  _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {FormCandidatesDecideDetermine} auto-control-manager provided downloaded descriptor for asset-type being eliminated - not considering downloaded | descriptor:%{public}@", buf, 0x16u);
                }
              }

              else
              {
                v36 = [obja assetType];
                v47 = [v34 assetType];
                if (([SUCore stringIsEqual:v36 to:v47]& 1) == 0)
                {

                  goto LABEL_59;
                }

                v48 = [obja assetSpecifier];
                v49 = [v34 assetSpecifier];
                v50 = [SUCore stringIsEqual:v48 to:v49];

                if (!v50)
                {
                  goto LABEL_57;
                }

                v36 = _MADLog(@"AutoStager");
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  v51 = [(MADAutoAssetStager *)v183 summary];
                  v52 = [obja summary];
                  *buf = 138543618;
                  v221 = v51;
                  v222 = 2114;
                  v223 = v52;
                  _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {FormCandidatesDecideDetermine} auto-control-manager provided downloaded descriptor for asset-type + asset-specifier being eliminated - not considering downloaded | descriptor:%{public}@", buf, 0x16u);
                }
              }
            }

            else
            {
              v36 = [obja assetType];
              v37 = [v34 assetType];
              if (([SUCore stringIsEqual:v36 to:v37]& 1) == 0)
              {

LABEL_59:
                v58 = 1;
                goto LABEL_60;
              }

              v38 = [obja assetSpecifier];
              v39 = [v34 assetSpecifier];
              if (![SUCore stringIsEqual:v38 to:v39])
              {

                goto LABEL_59;
              }

              v40 = [obja assetVersion];
              v41 = [v34 assetVersion];
              v42 = [SUCore stringIsEqual:v40 to:v41];

              if (!v42)
              {
                goto LABEL_57;
              }

              v36 = _MADLog(@"AutoStager");
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                v43 = [(MADAutoAssetStager *)v183 summary];
                v44 = [obja summary];
                *buf = 138543618;
                v221 = v43;
                v222 = 2114;
                v223 = v44;
                _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {FormCandidatesDecideDetermine} auto-control-manager provided downloaded descriptor for asset-type + asset-specifier + asset-version being eliminated - not considering downloaded | descriptor:%{public}@", buf, 0x16u);
              }
            }

            contexta = 0;
            v58 = 0;
LABEL_60:

LABEL_61:
            objc_autoreleasePoolPop(v33);
            if (!v58)
            {
              goto LABEL_64;
            }
          }

          v176 = [v181 countByEnumeratingWithState:&v203 objects:v234 count:16];
        }

        while (v176);
LABEL_64:

        if ((contexta & 1) == 0)
        {
          goto LABEL_88;
        }

LABEL_70:
        v201 = 0u;
        v202 = 0u;
        v199 = 0u;
        v200 = 0u;
        v62 = [(MADAutoAssetStager *)v183 setTargets];
        v63 = [v62 countByEnumeratingWithState:&v199 objects:v233 count:16];
        if (!v63)
        {

LABEL_87:
          [v158 addObject:obja];
          goto LABEL_88;
        }

        v64 = *v200;
        v65 = 1;
LABEL_72:
        v66 = 0;
        while (1)
        {
          if (*v200 != v64)
          {
            objc_enumerationMutation(v62);
          }

          v67 = *(*(&v199 + 1) + 8 * v66);
          v68 = objc_autoreleasePoolPush();
          v69 = [v67 fullName];
          v70 = [v174 safeObjectForKey:v69 ofClass:objc_opt_class()];

          if (-[MADAutoAssetStager _isSetTargetWithinRange:asCandidate:](v183, "_isSetTargetWithinRange:asCandidate:", v67, 1) && ([obja assetType], v71 = objc_claimAutoreleasedReturnValue(), v72 = +[SUCore stringIsEqual:to:](SUCore, "stringIsEqual:to:", v71, v70), v71, v72))
          {
            v73 = _MADLog(@"AutoStager");
            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
            {
              v74 = [(MADAutoAssetStager *)v183 summary];
              v75 = [obja summary];
              *buf = 138543618;
              v221 = v74;
              v222 = 2114;
              v223 = v75;
              _os_log_impl(&dword_0, v73, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {FormCandidatesDecideDetermine} client-defined set-target for asset-type - not staging based on alread-downloaded | descriptor:%{public}@", buf, 0x16u);
            }

            v65 = 0;
            v76 = 1;
          }

          else
          {
            v76 = 0;
          }

          objc_autoreleasePoolPop(v68);
          if (v76)
          {
            break;
          }

          if (v63 == ++v66)
          {
            v63 = [v62 countByEnumeratingWithState:&v199 objects:v233 count:16];
            if (v63)
            {
              goto LABEL_72;
            }

            break;
          }
        }

        if (v65)
        {
          goto LABEL_87;
        }

LABEL_88:
        objc_autoreleasePoolPop(v165);
      }

      v162 = [v159 countByEnumeratingWithState:&v207 objects:v235 count:16];
    }

    while (v162);
  }

  v77 = v183;
  [(MADAutoAssetStager *)v183 setAlreadyDownloadedDescriptors:v158];
  v182 = objc_alloc_init(NSMutableArray);
  v78 = [(MADAutoAssetStager *)v183 alreadyDownloadedDescriptors];
  if (!v78 || (-[MADAutoAssetStager alreadyDownloadedDescriptors](v183, "alreadyDownloadedDescriptors"), v79 = objc_claimAutoreleasedReturnValue(), v80 = [v79 count] == 0, v79, v78, v77 = v183, v80))
  {
    v86 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      v93 = [(MADAutoAssetStager *)v77 summary];
      *buf = 138543362;
      v221 = v93;
      _os_log_impl(&dword_0, v86, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {FormCandidatesDecideDetermine} auto-control-manager provided no downloaded descriptors - no candidate(s) for staging", buf, 0xCu);
    }
  }

  else
  {
    v81 = [(MADAutoAssetStager *)v183 alreadyDownloadedDescriptors];
    v82 = [v81 count];

    v83 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      v84 = [(MADAutoAssetStager *)v183 summary];
      v85 = @"s";
      *buf = 138544130;
      v222 = 2048;
      v221 = v84;
      if (v82 == &dword_0 + 1)
      {
        v85 = &stru_4BD3F0;
      }

      v223 = v82;
      v224 = 2114;
      v225 = v85;
      v226 = 2114;
      v227 = v85;
      _os_log_impl(&dword_0, v83, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {FormCandidatesDecideDetermine} auto-control-manager provided %ld downloaded descriptor%{public}@ - potential candidate%{public}@ for staging", buf, 0x2Au);
    }

    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    v86 = [(MADAutoAssetStager *)v183 alreadyDownloadedDescriptors];
    v87 = [v86 countByEnumeratingWithState:&v195 objects:v232 count:16];
    if (v87)
    {
      v88 = 0;
      v89 = *v196;
      do
      {
        v90 = 0;
        v91 = v88;
        do
        {
          if (*v196 != v89)
          {
            objc_enumerationMutation(v86);
          }

          v88 = *(*(&v195 + 1) + 8 * v90);

          v92 = objc_autoreleasePoolPush();
          [(MADAutoAssetStager *)v183 _maintainLatestCandidate:v182 candidateDescriptor:v88];
          objc_autoreleasePoolPop(v92);
          v90 = v90 + 1;
          v91 = v88;
        }

        while (v87 != v90);
        v87 = [v86 countByEnumeratingWithState:&v195 objects:v232 count:16];
      }

      while (v87);
    }
  }

  if ([v182 count])
  {
    v94 = [(MADAutoAssetStager *)v183 _trimConsideringToLatestDownloaded:v182];

    loga = objc_alloc_init(NSMutableArray);
    v155 = objc_alloc_init(NSMutableArray);
    v163 = objc_alloc_init(NSMutableDictionary);
    v153 = objc_alloc_init(NSMutableDictionary);
    v154 = objc_alloc_init(NSMutableDictionary);
    contextb = objc_alloc_init(NSMutableDictionary);
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v182 = v94;
    v95 = [v182 countByEnumeratingWithState:&v191 objects:v231 count:16];
    if (v95)
    {
      v96 = 0;
      v177 = *v192;
      v166 = 1;
      while (1)
      {
        v180 = v95;
        v97 = 0;
        v98 = v96;
        do
        {
          if (*v192 != v177)
          {
            objc_enumerationMutation(v182);
          }

          v96 = *(*(&v191 + 1) + 8 * v97);

          objb = objc_autoreleasePoolPush();
          if (v96)
          {
            v189 = 0u;
            v190 = 0u;
            v187 = 0u;
            v188 = 0u;
            v99 = [(MADAutoAssetStager *)v183 setTargets];
            v100 = [v99 countByEnumeratingWithState:&v187 objects:v230 count:16];
            if (v100)
            {
              v101 = 0;
              v102 = *v188;
LABEL_115:
              v103 = 0;
              while (1)
              {
                if (*v188 != v102)
                {
                  objc_enumerationMutation(v99);
                }

                v104 = *(*(&v187 + 1) + 8 * v103);
                v105 = objc_autoreleasePoolPush();
                if ([(MADAutoAssetStager *)v183 _isSetTargetWithinRange:v104 asCandidate:1])
                {
                  v106 = [v96 assetType];
                  v107 = [v104 includesEntryForAssetType:v106];

                  v101 |= v107;
                }

                else
                {
                  v107 = 0;
                }

                objc_autoreleasePoolPop(v105);
                if (v107)
                {
                  break;
                }

                if (v100 == ++v103)
                {
                  v100 = [v99 countByEnumeratingWithState:&v187 objects:v230 count:16];
                  if (v100)
                  {
                    goto LABEL_115;
                  }

                  break;
                }
              }

              if (v101)
              {
                v108 = _MADLog(@"AutoStager");
                if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                {
                  v109 = [(MADAutoAssetStager *)v183 summary];
                  v110 = [(MADAutoAssetStager *)v183 _targetNameActive];
                  v111 = [v96 summary];
                  *buf = 138544130;
                  v221 = v109;
                  v222 = 2114;
                  v223 = v110;
                  v224 = 2114;
                  v225 = v111;
                  v226 = 2114;
                  v227 = @"IGNORED";
                  _os_log_impl(&dword_0, v108, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {FormCandidatesDecideDetermine} [IGNORED(by-set-target)] candidateDescriptor:%{public}@ mode::%{public}@", buf, 0x2Au);
                }

                v112 = @"IGNORED";
                goto LABEL_139;
              }
            }

            else
            {
            }

            v114 = v183;
            if ([(MADAutoAssetStager *)v183 stagingClientUsingGroups])
            {
              if (([v96 isPreSUStagingRequired] & v156) == 1)
              {
                v112 = [(MADAutoAssetStager *)v183 _targetNameActiveRequired];
                [loga addObject:v96];
                [(MADAutoAssetStager *)v183 trackSelectorForDescriptor:v96 inContainer:v163];
                v166 = 0;
              }

              else if (([v96 isPreSUStagingRequired] | v152 ^ 1))
              {
                [(MADAutoAssetStager *)v183 trackSelectorForDescriptor:v96 inContainer:v154];
                v112 = @"IGNORED";
              }

              else
              {
                v112 = [(MADAutoAssetStager *)v183 _targetNameActiveOptional];
                [v155 addObject:v96];
                [(MADAutoAssetStager *)v183 trackSelectorForDescriptor:v96 inContainer:v153];
              }
            }

            else
            {
              v115 = [(MADAutoAssetStager *)v183 candidatesForStaging];
              [v115 addObject:v96];

              v114 = v183;
              [(MADAutoAssetStager *)v183 trackSelectorForDescriptor:v96 inContainer:contextb];
              v112 = @"ALL";
            }

            v108 = [[NSString alloc] initWithFormat:@"[%@] adding candidate (from downloaded that support staging)", v112];
            [(MADAutoAssetStager *)v114 _persistDescriptor:@"FormCandidatesDecideDetermine" operation:@"ENTRY_ADD" persistingDescriptor:v96 withRepresentation:600 message:v108];
LABEL_139:

            goto LABEL_140;
          }

          v112 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
          {
            v113 = [(MADAutoAssetStager *)v183 summary];
            *buf = 138543362;
            v221 = v113;
            _os_log_impl(&dword_0, v112, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {FormCandidatesDecideDetermine} nil encountered on consideringDescriptors array", buf, 0xCu);
          }

LABEL_140:

          objc_autoreleasePoolPop(objb);
          v97 = v97 + 1;
          v98 = v96;
        }

        while (v97 != v180);
        v95 = [v182 countByEnumeratingWithState:&v191 objects:v231 count:16];
        if (!v95)
        {

          goto LABEL_147;
        }
      }
    }

    v166 = 1;
LABEL_147:

    v118 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
    {
      v119 = [(MADAutoAssetStager *)v183 summary];
      v120 = [(MADAutoAssetStager *)v183 selectorContainerAsString:v163];
      v121 = [(MADAutoAssetStager *)v183 selectorContainerAsString:v153];
      v122 = [(MADAutoAssetStager *)v183 selectorContainerAsString:v154];
      v123 = [(MADAutoAssetStager *)v183 selectorContainerAsString:contextb];
      *buf = 138544386;
      v221 = v119;
      v222 = 2114;
      v223 = v120;
      v224 = 2114;
      v225 = v121;
      v226 = 2114;
      v227 = v122;
      v228 = 2114;
      v229 = v123;
      _os_log_impl(&dword_0, v118, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {FormCandidatesDecideDetermine} candidate descriptors\n>>> Required:%{public}@\n>>> Optional:%{public}@\n>>> Ignored:%{public}@\n>>> AllMode:%{public}@", buf, 0x34u);
    }

    v124 = v183;
    if ([(MADAutoAssetStager *)v183 stagingClientUsingGroups])
    {
      [(MADAutoAssetStager *)v183 _blendOptionalCandidates:v155 intoRequired:loga];
      if ((v156 | v152))
      {
        v125 = [(MADAutoAssetStager *)v183 assetTargetTrainName];
        v126 = [(MADAutoAssetStager *)v183 assetTargetRestoreVersion];
        v127 = [(MADAutoAssetStager *)v183 targetLookupResultsKeyForTrainName:v125 withRestoreVersion:v126];

        v128 = [(MADAutoAssetStager *)v183 candidatesForStagingRequiredByTarget];
        [v128 setSafeObject:loga forKey:v127];

        v129 = [(MADAutoAssetStager *)v183 candidatesForStagingOptionalByTarget];
        [v129 setSafeObject:v155 forKey:v127];

        v130 = [loga count]!= 0;
        v131 = loga;
        if ((v130 & v156 & 1) != 0 || (v132 = [v155 count]!= 0, v131 = v155, (v132 & v152) == 1))
        {
          [(MADAutoAssetStager *)v183 setCandidatesForStaging:v131];
        }
      }

      else
      {
        v127 = [(MADAutoAssetStager *)v183 autoStagerFSM];
        v133 = [v127 diag];
        [v133 trackAnomaly:@"AUTO-STAGER" forReason:@"{FormCandidatesDecideDetermine} [BY-GROUP-MODE] forming candidates yet not involving required or optional" withResult:6110 withError:0];
      }

      v124 = v183;
    }

    if ([(MADAutoAssetStager *)v124 stagingClientUsingGroups])
    {
      v134 = [(MADAutoAssetStager *)v124 candidatesForStagingRequiredByTarget];
      v135 = [v134 count];
      v136 = [(MADAutoAssetStager *)v124 candidatesForStagingOptionalByTarget];
      v137 = [v136 count];

      v138 = &v135[v137];
    }

    else
    {
      v134 = [(MADAutoAssetStager *)v124 candidatesForStaging];
      v138 = [v134 count];
    }

    v139 = [(MADAutoAssetStager *)v183 persistedState];
    v140 = [v139 persistedConfig];
    [v140 persistULL:v138 forKey:@"candidateAssetCount" shouldPersist:1];

    if (v138)
    {
      v141 = [[NSString alloc] initWithFormat:@"found candidate(s) for staging | totalCandidatesForStaging:%llu", v138];
      [(MADAutoAssetStager *)v183 _logPersistedConfigSet:@"FormCandidatesDecideDetermine" message:v141];

      v117 = @"DetermineHaveCandidates";
      [(MADAutoAssetStager *)v183 _logMilestoneFromLocation:@"FormCandidatesDecideDetermine" resultingInEvent:@"DetermineHaveCandidates" forMilestoneActivity:@"have downloaded auto-asset candidate(s) for staging"];
    }

    else
    {
      v117 = @"DetermineNoCandidates";
    }
  }

  else
  {
    loga = _MADLog(@"AutoStager");
    if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
    {
      v116 = [(MADAutoAssetStager *)v183 summary];
      *buf = 138543362;
      v221 = v116;
      _os_log_impl(&dword_0, loga, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {FormCandidatesDecideDetermine} no candidate descriptors for staging", buf, 0xCu);
    }

    v117 = @"DetermineNoCandidates";
    v166 = 1;
  }

  v142 = v183;
  if ((+[SUCore stringIsEqual:to:](SUCore, "stringIsEqual:to:", v117, @"DetermineHaveCandidates") & 1) != 0 || (-[MADAutoAssetStager setTargets](v183, "setTargets"), v143 = objc_claimAutoreleasedReturnValue(), v144 = [v143 count] == 0, v143, v142 = v183, !v144))
  {
    if ([(MADAutoAssetStager *)v142 _formCandidateSetLookupArray:@"FormCandidatesDecideDetermine" involvingRequired:v156 involvingOptional:v152 providingOptional:v166 & 1])
    {
      v117 = @"DetermineHaveCandidates";
    }

    else if ([SUCore stringIsEqual:v117 to:@"DetermineHaveCandidates"])
    {
      v145 = _MADLog(@"AutoStager");
      if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
      {
        v146 = [(MADAutoAssetStager *)v183 summary];
        *buf = 138543362;
        v221 = v146;
        _os_log_impl(&dword_0, v145, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {FormCandidatesDecideDetermine} should have candidates yet unable to form set-lookup array", buf, 0xCu);
      }

      v117 = @"DetermineNoCandidates";
      v142 = v183;
    }
  }

  [(MADAutoAssetStager *)v142 _acknowlegdeAndClearAllEliminations];
  v147 = [(MADAutoAssetStager *)v142 autoStagerFSM];
  v148 = [MADAutoAssetStagerParam alloc];
  v149 = [(MADAutoAssetStager *)v142 _updateLatestSummary];
  v150 = [(MADAutoAssetStagerParam *)v148 initWithSafeSummary:v149];
  [v147 followupEvent:v117 withInfo:v150];

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_DoneCandidatesDecideAnyAvailable:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v22.opaque[0] = 0;
  v22.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:DoneCandidatesDecideAnyAvailable", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v22);

  v9 = [(MADAutoAssetStager *)self availableForStaging:v22.opaque[0]];
  v10 = [v9 count];

  if (v10 && (-[MADAutoAssetStager considerInjectionIntoAvailableForStaging](self, "considerInjectionIntoAvailableForStaging"), -[MADAutoAssetStager availableForStaging](self, "availableForStaging"), v11 = objc_claimAutoreleasedReturnValue(), -[MADAutoAssetStager dedupAvailableForStaging:dedupingAssetDescriptors:removingAlreadyDownloaded:ofContainerName:](self, "dedupAvailableForStaging:dedupingAssetDescriptors:removingAlreadyDownloaded:ofContainerName:", @"DoneCandidatesDecideAnyAvailable", v11, 0, @"availableForStaging"), v12 = objc_claimAutoreleasedReturnValue(), -[MADAutoAssetStager setAvailableForStaging:](self, "setAvailableForStaging:", v12), v12, v11, -[MADAutoAssetStager availableForStaging](self, "availableForStaging"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 count], v13, v14))
  {
    if ([(MADAutoAssetStager *)self stagingClientUsingGroups])
    {
      v15 = [(MADAutoAssetStager *)self splitOutAvailableForStagingByGroup:@"DoneCandidatesDecideAnyAvailable" forGroupDetermine:1];
    }

    [(MADAutoAssetStager *)self _logPersistedActiveTargetLookupResults:@"DoneCandidatesDecideAnyAvailable"];
    v16 = @"DetermineHaveAvailable";
  }

  else
  {
    v16 = @"DetermineNothingAvailable";
  }

  [(MADAutoAssetStager *)self _persistTargetOTASituationForFollowup:v16 fromLocation:@"DoneCandidatesDecideAnyAvailable"];
  v17 = [(MADAutoAssetStager *)self autoStagerFSM];
  v18 = [MADAutoAssetStagerParam alloc];
  v19 = [(MADAutoAssetStager *)self _updateLatestSummary];
  v20 = [(MADAutoAssetStagerParam *)v18 initWithSafeSummary:v19];
  [v17 followupEvent:v16 withInfo:v20];

  os_activity_scope_leave(&v22);
  return 0;
}

- (int64_t)action_NextCandidateBeginDetermine:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v18.opaque[0] = 0;
  v18.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:NextCandidateBeginDetermine", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v18);

  v9 = [(MADAutoAssetStager *)self candidateSetConfigurations:v18.opaque[0]];
  v10 = [v9 count];

  if (v10)
  {
    [(MADAutoAssetStager *)self _startDetermineJobForNextCandidate:@"NextCandidateBeginDetermine"];
  }

  else
  {
    v11 = [(MADAutoAssetStager *)self autoStagerFSM];
    v12 = [v11 diag];
    [v12 trackAnomaly:@"AUTO-STAGER" forReason:@"{NextCandidateBeginDetermine} no candidates available for staging (after considering downloaded auto-assets and set-identifiers)" withResult:6111 withError:0];

    v13 = [(MADAutoAssetStager *)self autoStagerFSM];
    v14 = [MADAutoAssetStagerParam alloc];
    v15 = [(MADAutoAssetStager *)self _updateLatestSummary];
    v16 = [(MADAutoAssetStagerParam *)v14 initWithSafeSummary:v15];
    [v13 postEvent:@"JobDetermineAvailableFailure" withInfo:v16];
  }

  os_activity_scope_leave(&v18);

  return 0;
}

- (int64_t)action_NextAwaitingBeginDownload:(id)a3 error:(id *)a4
{
  v67 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = _os_activity_create(&dword_0, "MADStager:NextAwaitingBeginDownload", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);

  v8 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
  LOBYTE(v6) = [v8 count] == 0;

  if ((v6 & 1) == 0)
  {
    v9 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
    v10 = [v9 objectAtIndex:0];
    [(MADAutoAssetStager *)self setActiveJobDescriptor:v10];

    v11 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
    [v11 removeObjectAtIndex:0];

    v12 = [(MADAutoAssetStager *)self persistedState];
    v13 = [v12 persistedConfig];
    v14 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
    [v13 persistULL:objc_msgSend(v14 forKey:{"count"), @"awaitingStagingAssetCount"}];

    v15 = [(MADAutoAssetStager *)self persistedState];
    v16 = [v15 persistedConfig];
    [v16 persistULL:1 forKey:@"activelyStagingAssetCount" shouldPersist:1];

    [(MADAutoAssetStager *)self _logPersistedConfigSet:@"NextAwaitingBeginDownload" message:@"begin download-for-staging"];
    v17 = [MAAutoAssetSelector alloc];
    v18 = [(MADAutoAssetStager *)self activeJobDescriptor];
    v19 = [v18 assetType];
    v20 = [(MADAutoAssetStager *)self activeJobDescriptor];
    v21 = [v20 assetSpecifier];
    v22 = [(MADAutoAssetStager *)self activeJobDescriptor];
    v23 = [v22 assetVersion];
    v24 = [v17 initForAssetType:v19 withAssetSpecifier:v21 matchingAssetVersion:v23];

    if ([(MADAutoAssetStager *)self stagingClientUsingGroups])
    {
      v25 = [(MADAutoAssetStager *)self assetTargetTrainName];
      v26 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
      v27 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v25 withRestoreVersion:v26];

      v28 = [(MADAutoAssetStager *)self getTargetLookupResultsForKey:v27];
      v29 = v28;
      if (v28)
      {
        v30 = [v28 setLookupResults];
        v31 = [(MADAutoAssetStager *)self activeJobDescriptor];
        v32 = [v31 assetType];
        v33 = [v30 safeObjectForKey:v32 ofClass:objc_opt_class()];

        if (v33)
        {
          v34 = [v33 autoAssetSetCatalog];
LABEL_8:
          v38 = v34;
LABEL_12:

          v46 = [(MADAutoAssetStager *)self activeJobDescriptor];
          v47 = [v46 assetType];
          v48 = [(MADAutoAssetStager *)self activeJobDescriptor];
          v49 = [v48 assetSpecifier];
          v39 = [(MADAutoAssetStager *)self newAssetMetadataFromAssetCatalog:v38 forAssetype:v47 forAssetSpecifier:v49];

          if (+[MADAutoAssetControlManager preferenceStagerDownloadFirstNotInCatalog]&& ![(MADAutoAssetStager *)self firstDownloadedAsIfNotInCatalog])
          {
            [(MADAutoAssetStager *)self setFirstDownloadedAsIfNotInCatalog:1];
          }

          else if (v39)
          {
            v50 = [(MADAutoAssetStager *)self activeJobDescriptor];
            [(MADAutoAssetStager *)self _persistDescriptor:@"_setupAwaitingStagingAndBeginFirstDownload" operation:@"ENTRY_MODIFY" persistingDescriptor:v50 withRepresentation:602 message:@"starting stager-job to download for staging"];

            v51 = _MADLog(@"AutoStager");
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              v52 = [(MADAutoAssetStager *)self summary];
              v53 = [(MADAutoAssetStager *)self activeJobDescriptor];
              v54 = [v53 summary];
              *buf = 138543618;
              v70 = v52;
              v71 = 2114;
              v72 = v54;
              _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {NextAwaitingBeginDownload} begin download-for-staging | activeJobDescriptor:%{public}@", buf, 0x16u);
            }

            v55 = [(MADAutoAssetStager *)self activeSetJobConfiguration];
            v56 = [(MADAutoAssetStager *)self baseForPatchingToSelector:v24];
            v57 = [(MADAutoAssetStager *)self assetTargetOSVersion];
            v58 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
            [MADAutoAssetControlManager stagerStartJobDownloadForStaging:v24 withStagerSetConfiguration:v55 usingCachedAutoAssetCatalog:v39 usingBaseForPatching:v56 withAssetTargetOSVersion:v57 withAssetTargetBuildVersion:v58];

            goto LABEL_20;
          }

          v39 = [MAAutoAssetError buildError:6613 fromOperation:@"AUTO-CONTROL(NextAwaitingBeginDownload)" underlyingError:0 withDescription:@"unable to locate asset to be downloaded in set-lookup-results - skipping asset"];
          v55 = [[MADAutoAssetStagerParam alloc] initWithJobInformation:0 withDownloadedDescriptor:0 withOperationError:v39];
          v59 = [(MADAutoAssetStager *)self autoStagerFSM];
          v60 = [v59 diag];
          v61 = [NSString alloc];
          v62 = [(MADAutoAssetStager *)self activeJobDescriptor];
          v63 = [v62 summary];
          v64 = [v61 initWithFormat:@"{NextAwaitingBeginDownload} unable to locate entry in set-look-results - skipping asset | stagingDescriptor:%@", v63];
          [v60 trackAnomaly:@"AUTO-STAGER" forReason:v64 withResult:6111 withError:0];

          v56 = [(MADAutoAssetStager *)self autoStagerFSM];
          [v56 postEvent:@"JobDownloadForStagingFailure" withInfo:v55];
LABEL_20:

          goto LABEL_21;
        }

        v40 = [(MADAutoAssetStager *)self autoStagerFSM];
        v66 = [v40 diag];
        v41 = [NSString alloc];
        v42 = [(MADAutoAssetStager *)self activeJobDescriptor];
        v43 = [v42 assetType];
        v44 = [v29 summary];
        v45 = [v41 initWithFormat:@"{NextAwaitingBeginDownload} no set-lookup-result for asset-type | assetType:%@ | trainTargetLookupResults:%@", v43, v44];
        [v66 trackAnomaly:@"AUTO-STAGER" forReason:v45 withResult:6111 withError:0];
      }

      else
      {
        v33 = [(MADAutoAssetStager *)self autoStagerFSM];
        v40 = [v33 diag];
        [v40 trackAnomaly:@"AUTO-STAGER" forReason:@"{NextAwaitingBeginDownload} no lookup-results for target" withResult:6111 withError:0];
      }

      v38 = 0;
      goto LABEL_12;
    }

    v27 = [(MADAutoAssetStager *)self setLookupResults];
    v29 = [(MADAutoAssetStager *)self activeJobDescriptor];
    v33 = [v29 assetType];
    v34 = [v27 safeObjectForKey:v33 ofClass:objc_opt_class()];
    goto LABEL_8;
  }

  v35 = [(MADAutoAssetStager *)self autoStagerFSM];
  v36 = [v35 diag];
  [v36 trackAnomaly:@"AUTO-STAGER" forReason:@"{NextAwaitingBeginDownload} no candidates available for staging" withResult:6111 withError:0];

  v24 = [(MADAutoAssetStager *)self autoStagerFSM];
  v37 = [MADAutoAssetStagerParam alloc];
  v38 = [(MADAutoAssetStager *)self _updateLatestSummary];
  v39 = [(MADAutoAssetStagerParam *)v37 initWithSafeSummary:v38];
  [v24 postEvent:@"JobDownloadForStagingFailure" withInfo:v39];
LABEL_21:

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_DoneAvailableDecideAnyStaged:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v24.opaque[0] = 0;
  v24.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:DoneAvailableDecideAnyStaged", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v24);

  v9 = [(MADAutoAssetStager *)self successfullyStaged:v24.opaque[0]];
  v10 = [v9 count];

  if (v10)
  {
    v11 = 0;
    v12 = 0;
    if ([(MADAutoAssetStager *)self _stagedAllDesiredForCurrentTarget])
    {
      v13 = 501;
    }

    else
    {
      v13 = 500;
    }

    v14 = @"DownloadHaveStaged";
  }

  else
  {
    v15 = [(MADAutoAssetStager *)self availableForStaging];
    v16 = [v15 count];

    v11 = v16 != 0;
    v12 = v16 == 0;
    if (v16)
    {
      v13 = 401;
    }

    else
    {
      v13 = 402;
    }

    if (v16)
    {
      v14 = @"DownloadNothingStaged";
    }

    else
    {
      v14 = @"DownloadNothingStagedEmpty";
    }
  }

  [(MADAutoAssetStager *)self _persistTargetOTASituation:v13 fromLocation:@"DoneAvailableDecideAnyStaged"];
  if (v11 || v12)
  {
    v17 = [(MADAutoAssetStager *)self persistedState];
    v18 = [v17 persistedConfig];
    [v18 persistBoolean:1 forKey:@"stagedNoContent"];
  }

  v19 = [(MADAutoAssetStager *)self autoStagerFSM];
  v20 = [MADAutoAssetStagerParam alloc];
  v21 = [(MADAutoAssetStager *)self _updateLatestSummary];
  v22 = [(MADAutoAssetStagerParam *)v20 initWithSafeSummary:v21];
  [v19 followupEvent:v14 withInfo:v22];

  os_activity_scope_leave(&v24);
  return 0;
}

- (int64_t)action_ReplyHaveAvailable:(id)a3 error:(id *)a4
{
  v22 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = _os_activity_create(&dword_0, "MADStager:ReplyHaveAvailable", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);

  v8 = objc_alloc_init(NSMutableDictionary);
  [(MADAutoAssetStager *)self setDeterminingBySelector:v8];

  if ([(MADAutoAssetStager *)self stagingClientUsingGroups])
  {
    [(MADAutoAssetStager *)self _stagingClientRequestDetermineClear:@"ReplyHaveAvailable" forStagingTargetName:0 replyingToCleared:0];
  }

  else
  {
    [(MADAutoAssetStager *)self _stagingClientRequestGeneralClear:@"ReplyHaveAvailable" replyingToCleared:0];
  }
  v23 = ;
  if (!v23)
  {
    v12 = [(MADAutoAssetStager *)self autoStagerFSM];
    v13 = [v12 diag];
    [v13 trackAnomaly:@"AUTO-STAGER" forReason:@"{ReplyHaveAvailable} intending to reply to staging-client with indication candidate(s) available for staging (no pending staging-client-request)" withResult:6111 withError:0];
LABEL_10:

    goto LABEL_23;
  }

  v9 = [v23 clientReplyCompletion];
  v10 = v9 == 0;

  if (v10)
  {
    v12 = [(MADAutoAssetStager *)self autoStagerFSM];
    v13 = [v12 diag];
    [v13 trackAnomaly:@"AUTO-STAGER" forReason:@"{ReplyHaveAvailable} intending to reply to staging-client with indication of candidate(s) available for staging (pending staging-client-request with no reply-completion)" withResult:6111 withError:0];
    goto LABEL_10;
  }

  if ([(MADAutoAssetStager *)self stagingClientUsingGroups])
  {
    v11 = [(MADAutoAssetStager *)self newStagingInfoWithGroupsAvailableForStaging:@"ReplyHaveAvailable" indicatingHaveAvailable:1];
  }

  else
  {
    v11 = [(MADAutoAssetStager *)self newStagingInfoWithAllAvailableForStaging:@"ReplyHaveAvailable"];
  }

  v12 = v11;
  [(MADAutoAssetStager *)self _acknowlegdeAndClearAllEliminations];
  if ([(MADAutoAssetStager *)self stagingClientUsingGroups])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = [v12 byGroupAvailableForStagingAttributes];
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v15)
    {
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          v19 = [v12 byGroupAvailableForStagingAttributes];
          v20 = [v19 objectForKey:v18];
          -[MADAutoAssetStager _recordOperationForStagedAttributes:required:](self, "_recordOperationForStagedAttributes:required:", v20, [v18 isEqualToString:@"STAGE_GROUP_REQUIRED"]);
        }

        v15 = [v14 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v14 = [v12 allAvailableForStagingAttributes];
    [(MADAutoAssetStager *)self _recordOperationForStagedAttributes:v14 required:0];
  }

  [(MADAutoAssetStager *)self _replyToStagingClient:@"ReplyHaveAvailable" withStagingInfo:v12 replyingToStagingRequest:v23 recordingOperation:901];
  [(MADAutoAssetStager *)self _logMilestoneFromLocation:@"ReplyHaveAvailable" resultingInEvent:0 forMilestoneActivity:@"have available content for staging"];
LABEL_23:

  os_activity_scope_leave(&state);
  return 0;
}

- (void)_recordOperationForStagedAttributes:(id)a3 required:(BOOL)a4
{
  v5 = a3;
  if (v5)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = v5;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v21 = *v23;
      do
      {
        v9 = 0;
        do
        {
          if (*v23 != v21)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v22 + 1) + 8 * v9);
          v11 = objc_autoreleasePoolPush();
          v12 = [v6 objectForKey:v10];
          if (v12)
          {
            v13 = [MAAutoAssetSelector alloc];
            v14 = [v12 objectForKey:@"AssetType"];
            v15 = [v13 initForAssetType:v14 withAssetSpecifier:@"AssetSpecifier" matchingAssetVersion:@"AssetVersion"];

            v16 = [(MADAutoAssetStager *)self assetTargetOSVersion];
            v17 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
            LOBYTE(v18) = a4;
            [MADAutoAssetHistory recordOperation:1100 toHistoryType:4 fromLayer:4 withSelector:v15 forTargetOSVersion:v16 forTargetBuildVersion:v17 isRequired:v18];
          }

          objc_autoreleasePoolPop(v11);
          v9 = v9 + 1;
        }

        while (v8 != v9);
        v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    v5 = v19;
  }
}

- (int64_t)action_ReplyNoCandidates:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ReplyNoCandidates", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetStager *)self _replyNoCandidates:@"ReplyNoCandidates", v10.opaque[0], v10.opaque[1]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_ReplyNoCandidatesPurgeAll:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ReplyNoCandidatesPurgeAll", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetStager *)self _replyNoCandidates:@"ReplyNoCandidatesPurgeAll", v10.opaque[0], v10.opaque[1]];
  [(MADAutoAssetStager *)self _clearAllTrackingOfActiveOperations:@"ReplyNoCandidatesPurgeAll" alsoPerformingPurgeAll:1 removingDetermined:0];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_ReplyNoCandidatesEraseAll:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ReplyNoCandidatesEraseAll", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetStager *)self _replyNoCandidates:@"ReplyNoCandidatesEraseAll", v10.opaque[0], v10.opaque[1]];
  [(MADAutoAssetStager *)self _clearAllTrackingOfActiveOperations:@"ReplyNoCandidatesEraseAll" alsoPerformingPurgeAll:1 removingDetermined:1];
  [(MADAutoAssetStager *)self _replyToStagingClientOperationSuccess];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_ReplyNothingStaged:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ReplyNothingStaged", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [(MADAutoAssetStager *)self stagingClientName];
  v10 = [v5 stagingClientRequest];
  v11 = [v10 clientID];
  v12 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  v13 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  [MADAutoAssetHistory recordOperation:902 toHistoryType:4 fromLayer:4 fromClient:v9 fromClientDomain:v11 forTargetOSVersion:v12 forTargetBuildVersion:v13];

  [(MADAutoAssetStager *)self _acknowlegdeAndClearAllEliminations];
  [(MADAutoAssetStager *)self _replyNothingStaged:@"ReplyNothingStaged"];
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_ReplyNothingStagedPurgeAll:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ReplyNothingStagedPurgeAll", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [(MADAutoAssetStager *)self stagingClientName];
  v10 = [v5 stagingClientRequest];
  v11 = [v10 clientID];
  v12 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  v13 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  [MADAutoAssetHistory recordOperation:902 toHistoryType:4 fromLayer:4 fromClient:v9 fromClientDomain:v11 forTargetOSVersion:v12 forTargetBuildVersion:v13];

  [(MADAutoAssetStager *)self _acknowlegdeAndClearAllEliminations];
  [(MADAutoAssetStager *)self _replyNothingStaged:@"ReplyNothingStagedPurgeAll"];
  [(MADAutoAssetStager *)self _clearAllTrackingOfActiveOperations:@"ReplyNothingStagedPurgeAll" alsoPerformingPurgeAll:1 removingDetermined:0];
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_ReplyNothingStagedEraseAll:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ReplyNothingStagedEraseAll", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = [(MADAutoAssetStager *)self stagingClientName];
  v10 = [v5 stagingClientRequest];
  v11 = [v10 clientID];
  v12 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  v13 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  [MADAutoAssetHistory recordOperation:902 toHistoryType:4 fromLayer:4 fromClient:v9 fromClientDomain:v11 forTargetOSVersion:v12 forTargetBuildVersion:v13];

  [(MADAutoAssetStager *)self _acknowlegdeAndClearAllEliminations];
  [(MADAutoAssetStager *)self _replyNothingStaged:@"ReplyNothingStagedPurgeAll"];
  [(MADAutoAssetStager *)self _clearAllTrackingOfActiveOperations:@"ReplyNothingStagedPurgeAll" alsoPerformingPurgeAll:1 removingDetermined:1];
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_ReplyHaveStaged:(id)a3 error:(id *)a4
{
  v33 = a3;
  v34 = self;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = _os_activity_create(&dword_0, "MADStager:ReplyHaveStaged", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);

  if ([(MADAutoAssetStager *)v34 stagingClientUsingGroups])
  {
    v8 = [(MADAutoAssetStager *)v34 assetTargetTrainName];
    v9 = [(MADAutoAssetStager *)v34 assetTargetRestoreVersion];
    v32 = [(MADAutoAssetStager *)v34 targetLookupResultsKeyForTrainName:v8 withRestoreVersion:v9];

    v10 = [(MADAutoAssetStager *)v34 getTargetLookupResultsForKey:v32];
    v11 = v10;
    if (v10)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v12 = [v10 setLookupResults];
      v13 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v13)
      {
        v14 = *v36;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v36 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v35 + 1) + 8 * i);
            v17 = [v11 setLookupResults];
            v18 = [v17 safeObjectForKey:v16 ofClass:objc_opt_class()];

            if (v18)
            {
              [(MADAutoAssetStager *)v34 _lookupCachePersistResult:v18 fromLocation:@"ReplyHaveStaged"];
            }

            else
            {
              v19 = [(MADAutoAssetStager *)v34 autoStagerFSM];
              v20 = [v19 diag];
              [v20 trackAnomaly:@"AUTO-STAGER" forReason:@"{ReplyHaveStaged} nil lookup-result" withResult:6111 withError:0];
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v13);
      }
    }

    else
    {
      v12 = [(MADAutoAssetStager *)v34 autoStagerFSM];
      v21 = [v12 diag];
      [v21 trackAnomaly:@"AUTO-STAGER" forReason:@"{ReplyHaveStaged} no lookup-results for target" withResult:6111 withError:0];
    }
  }

  v22 = [(MADAutoAssetStager *)v34 persistedState];
  v23 = [v22 persistedConfig];
  [v23 persistULL:0 forKey:@"determinedAvailableAssetCount"];

  v24 = [(MADAutoAssetStager *)v34 persistedState];
  v25 = [v24 persistedConfig];
  [v25 persistULL:0 forKey:@"awaitingStagingAssetCount" shouldPersist:1];

  [(MADAutoAssetStager *)v34 _logPersistedConfigSet:@"ReplyHaveStaged" message:@"reply to staging-client with indication that there is at least one auto-asset that has been staged"];
  v26 = objc_alloc_init(NSMutableDictionary);
  [(MADAutoAssetStager *)v34 setAvailableForStagingRequiredByTarget:v26];

  v27 = objc_alloc_init(NSMutableDictionary);
  [(MADAutoAssetStager *)v34 setAvailableForStagingOptionalByTarget:v27];

  v28 = objc_alloc_init(NSMutableArray);
  [(MADAutoAssetStager *)v34 setAvailableForStaging:v28];

  v29 = objc_alloc_init(NSMutableArray);
  [(MADAutoAssetStager *)v34 setAwaitingStagingAttempt:v29];

  v30 = [(MADAutoAssetStager *)v34 persistedAvailableForStagingByTarget];
  [v30 removeAllPersistedEntries:@"ReplyHaveStaged"];

  [(MADAutoAssetStager *)v34 _replyHaveStagedContent:@"ReplyHaveStaged" withEventInfo:v33];
  [(MADAutoAssetStager *)v34 _logMilestoneFromLocation:@"ReplyHaveStaged" resultingInEvent:0 forMilestoneActivity:@"have staged content"];
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_ReplyFailRequiredDownload:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MADAutoAssetStager *)self autoStagerFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v9 = _os_activity_create(&dword_0, "MADStager:ReplyFailRequiredDownload", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v9, &state);

  v10 = [(MADAutoAssetStager *)self activeJobDescriptor];

  if (v10)
  {
    v11 = [MAAutoAssetSelector alloc];
    v12 = [(MADAutoAssetStager *)self activeJobDescriptor];
    v13 = [v12 assetType];
    v4 = [(MADAutoAssetStager *)self activeJobDescriptor];
    v14 = [v4 assetSpecifier];
    v15 = [(MADAutoAssetStager *)self activeJobDescriptor];
    v16 = [v15 assetVersion];
    v17 = [v11 initForAssetType:v13 withAssetSpecifier:v14 matchingAssetVersion:v16];

    v18 = [v17 summary];
  }

  else
  {
    v18 = @"NOT-IDENTIFIED";
  }

  v19 = [NSString alloc];
  v20 = [v6 operationError];
  if (v20)
  {
    v4 = [v6 operationError];
    v21 = [v4 checkedDescription];
  }

  else
  {
    v21 = @"BLOCK-OTA";
  }

  v22 = [v19 initWithFormat:@"failed to download REQUIRED server-side content - OTA cannot proceed | asset-selector:%@ | error:%@", v18, v21, state.opaque[0], state.opaque[1]];
  if (v20)
  {
  }

  v23 = [(MADAutoAssetStager *)self _targetNameActiveClient];
  v24 = [(MADAutoAssetStager *)self _stagingClientRequestDownloadClear:@"ReplyFailRequiredDownload" forStagingTargetName:v23 replyingToCleared:0];

  if (v24)
  {
    v25 = [v6 operationError];
    [(MADAutoAssetStager *)self _replyToStagingClient:@"ReplyFailRequiredDownload" replyingToRequest:v24 withErrorCode:6611 withUnderlyingError:v25 withDescription:v22];
  }

  else
  {
    v25 = [(MADAutoAssetStager *)self autoStagerFSM];
    v26 = [v25 diag];
    [v26 trackAnomaly:@"AUTO-STAGER" forReason:@"{ReplyFailRequiredDownload} nil download-request" withResult:6111 withError:0];
  }

  [(MADAutoAssetStager *)self _persistTargetOTASituation:403 fromLocation:@"ReplyFailRequiredDownload"];
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_ReplyNoCandidatesHaveOtherTarget:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ReplyNoCandidatesHaveOtherTarget", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetStager *)self _replyNoCandidates:@"ReplyNoCandidatesHaveOtherTarget", v10.opaque[0], v10.opaque[1]];
  [(MADAutoAssetStager *)self _clearAllTrackingOfActiveOperations:@"ReplyNoCandidatesHaveOtherTarget" alsoPerformingPurgeAll:1 removingDetermined:0];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_ReplyTargetNotAvailable:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:ReplyTargetNotAvailable", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v14);

  v9 = [(MADAutoAssetStager *)self _targetNameActiveClient:v14.opaque[0]];
  v10 = [(MADAutoAssetStager *)self _stagingClientRequestDownloadClear:@"ReplyTargetNotAvailable" forStagingTargetName:v9 replyingToCleared:0];

  if (v10)
  {
    [(MADAutoAssetStager *)self _replyToStagingClient:@"ReplyTargetNotAvailable" replyingToRequest:v10 withErrorCode:6603 withUnderlyingError:0 withDescription:@"no candidates found for the target (other targets have candidates)"];
  }

  else
  {
    v11 = [(MADAutoAssetStager *)self autoStagerFSM];
    v12 = [v11 diag];
    [v12 trackAnomaly:@"AUTO-STAGER" forReason:@"{ReplyTargetNotAvailable} nil download-request" withResult:6111 withError:0];
  }

  os_activity_scope_leave(&v14);
  return 0;
}

- (int64_t)action_RemoveAllReplyPurged:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:RemoveAllReplyPurged", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetStager *)self _clearAllTrackingOfActiveOperations:@"RemoveAllReplyPurged" alsoPerformingPurgeAll:1 removingDetermined:0, v10.opaque[0], v10.opaque[1]];
  [(MADAutoAssetStager *)self _replyToStagingClientOperationSuccess];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_RemoveAllReplyErased:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:RemoveAllReplyErased", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetStager *)self _clearAllTrackingOfActiveOperations:@"RemoveAllReplyErased" alsoPerformingPurgeAll:1 removingDetermined:1, v10.opaque[0], v10.opaque[1]];
  [(MADAutoAssetStager *)self _replyToStagingClientOperationSuccess];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_RemoveAllReplyCanceled:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:RemoveAllReplyCanceled", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetStager *)self _clearAllTrackingOfActiveOperations:@"RemoveAllReplyCanceled" alsoPerformingPurgeAll:1 removingDetermined:1, v10.opaque[0], v10.opaque[1]];
  [(MADAutoAssetStager *)self _replyToStagingClientOperationSuccess];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_CancelActiveJob:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:CancelActiveJob", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetStager *)self _cancelCurrentJob:v10.opaque[0]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_EliminateDone:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:EliminateDone", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  v9 = [v5 assetSelector];
  [(MADAutoAssetStager *)self notifyControlManagerEliminateDone:@"EliminateDone" forAssetSelector:v9];

  os_activity_scope_leave(&v11);
  return 0;
}

- (int64_t)action_SetEliminateDone:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:SetEliminateDone", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v11);

  v9 = [v5 setIdentifierConfiguration];
  [(MADAutoAssetStager *)self notifyControlManagerEliminateDone:@"SetEliminateDone" forSetConfiguration:v9];

  os_activity_scope_leave(&v11);
  return 0;
}

- (int64_t)action_RememberEliminateDone:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:RememberEliminateDone", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v13);

  v9 = [v5 assetSelector];
  v10 = [(MADAutoAssetStager *)self eliminationSelectorsAcknowledged];
  v11 = [v9 persistedEntryID];
  [v10 setSafeObject:v9 forKey:v11];

  [(MADAutoAssetStager *)self notifyControlManagerEliminateDone:@"RememberEliminateDone" forAssetSelector:v9];
  os_activity_scope_leave(&v13);

  return 0;
}

- (int64_t)action_RememberSetEliminateDone:(id)a3 error:(id *)a4
{
  v19 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = _os_activity_create(&dword_0, "MADStager:RememberSetEliminateDone", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);

  v8 = [v19 setIdentifierConfiguration];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [v8 autoAssetEntries];
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v10)
  {
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        v14 = [(MADAutoAssetStager *)self eliminationSelectorsAcknowledged];
        v15 = [v13 assetSelector];
        v16 = [v13 assetSelector];
        v17 = [v16 persistedEntryID];
        [v14 setSafeObject:v15 forKey:v17];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v10);
  }

  [(MADAutoAssetStager *)self notifyControlManagerEliminateDone:@"RememberSetEliminateDone" forSetConfiguration:v8];
  os_activity_scope_leave(&state);

  return 0;
}

- (int64_t)action_EliminateDecideMatch:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v17.opaque[0] = 0;
  v17.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:EliminateDecideMatch", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v17);

  v9 = [v5 assetSelector];
  LODWORD(v7) = [(MADAutoAssetStager *)self _doesSelectorMatchCurrentJob:v9];
  v10 = [(MADAutoAssetStager *)self eliminationSelectors];
  v11 = [v9 persistedEntryID];
  [v10 setSafeObject:v9 forKey:v11];

  if (v7)
  {
    v12 = [(MADAutoAssetStager *)self autoStagerFSM];
    v13 = [MADAutoAssetStagerParam alloc];
    v14 = [(MADAutoAssetStager *)self _updateLatestSummary];
    v15 = [(MADAutoAssetStagerParam *)v13 initWithSafeSummary:v14];
    [v12 followupEvent:@"EliminateCurrentJob" withInfo:v15];
  }

  else
  {
    [(MADAutoAssetStager *)self notifyControlManagerEliminateDone:@"EliminateDecideMatch" forAssetSelector:v9];
  }

  os_activity_scope_leave(&v17);
  return 0;
}

- (int64_t)action_SetEliminateDecideMatch:(id)a3 error:(id *)a4
{
  v27 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = _os_activity_create(&dword_0, "MADStager:SetEliminateDecideMatch", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);

  v8 = [v27 setIdentifierConfiguration];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = [v8 autoAssetEntries];
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
  v26 = v8;
  if (!v10)
  {

LABEL_14:
    v24 = v26;
    [(MADAutoAssetStager *)self notifyControlManagerEliminateDone:@"SetEliminateDecideMatch" forSetConfiguration:v26, v26];
    goto LABEL_15;
  }

  LOBYTE(v11) = 0;
  v12 = *v29;
  do
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v29 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v28 + 1) + 8 * i);
      if (v11)
      {
        v11 = 1;
      }

      else
      {
        v15 = [*(*(&v28 + 1) + 8 * i) assetSelector];
        v11 = [(MADAutoAssetStager *)self _doesSelectorMatchCurrentJob:v15];
      }

      v16 = [(MADAutoAssetStager *)self eliminationSelectors];
      v17 = [v14 assetSelector];
      v18 = [v14 assetSelector];
      v19 = [v18 persistedEntryID];
      [v16 setSafeObject:v17 forKey:v19];
    }

    v10 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
  }

  while (v10);

  if (!v11)
  {
    goto LABEL_14;
  }

  [(MADAutoAssetStager *)self setEliminationSetConfigurationCurrentJob:v26];
  v20 = [(MADAutoAssetStager *)self autoStagerFSM];
  v21 = [MADAutoAssetStagerParam alloc];
  v22 = [(MADAutoAssetStager *)self _updateLatestSummary];
  v23 = [(MADAutoAssetStagerParam *)v21 initWithSafeSummary:v22];
  [v20 followupEvent:@"EliminateCurrentJob" withInfo:v23];

  v24 = v26;
LABEL_15:

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_EliminateDeterminingDecideMatch:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v17.opaque[0] = 0;
  v17.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:EliminateDeterminingDecideMatch", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v17);

  v9 = [v5 assetSelector];
  LODWORD(v7) = [(MADAutoAssetStager *)self _doesSelectorMatchCurrentJob:v9];
  v10 = [(MADAutoAssetStager *)self eliminationSelectors];
  v11 = [v9 persistedEntryID];
  [v10 setSafeObject:v9 forKey:v11];

  if (v7)
  {
    v12 = [(MADAutoAssetStager *)self autoStagerFSM];
    v13 = [MADAutoAssetStagerParam alloc];
    v14 = [(MADAutoAssetStager *)self _updateLatestSummary];
    v15 = [(MADAutoAssetStagerParam *)v13 initWithSafeSummary:v14];
    [v12 followupEvent:@"EliminateCurrentJob" withInfo:v15];
  }

  else
  {
    [(MADAutoAssetStager *)self _removeEliminatedFromCandidatesAndAvaliable];
    [(MADAutoAssetStager *)self notifyControlManagerEliminateDone:@"EliminateDeterminingDecideMatch" forAssetSelector:v9];
  }

  os_activity_scope_leave(&v17);
  return 0;
}

- (int64_t)action_SetEliminateDeterminingDecideMatch:(id)a3 error:(id *)a4
{
  v28 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = _os_activity_create(&dword_0, "MADStager:SetEliminateDeterminingDecideMatch", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);

  v8 = [v28 setIdentifierConfiguration];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = [v8 autoAssetEntries];
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
  v26 = v8;
  if (!v10)
  {

LABEL_14:
    [(MADAutoAssetStager *)self _removeEliminatedFromCandidatesAndAvaliable];
    v24 = v27;
    [(MADAutoAssetStager *)self notifyControlManagerEliminateDone:@"SetEliminateDecideMatch" forSetConfiguration:v27];
    goto LABEL_15;
  }

  LOBYTE(v11) = 0;
  v12 = *v30;
  do
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v30 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v29 + 1) + 8 * i);
      if (v11)
      {
        v11 = 1;
      }

      else
      {
        v15 = [*(*(&v29 + 1) + 8 * i) assetSelector];
        v11 = [(MADAutoAssetStager *)self _doesSelectorMatchCurrentJob:v15];
      }

      v16 = [(MADAutoAssetStager *)self eliminationSelectors];
      v17 = [v14 assetSelector];
      v18 = [v14 assetSelector];
      v19 = [v18 persistedEntryID];
      [v16 setSafeObject:v17 forKey:v19];
    }

    v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
  }

  while (v10);

  if (!v11)
  {
    goto LABEL_14;
  }

  [(MADAutoAssetStager *)self setEliminationSetConfigurationCurrentJob:v26];
  v20 = [(MADAutoAssetStager *)self autoStagerFSM];
  v21 = [MADAutoAssetStagerParam alloc];
  v22 = [(MADAutoAssetStager *)self _updateLatestSummary];
  v23 = [(MADAutoAssetStagerParam *)v21 initWithSafeSummary:v22];
  [v20 followupEvent:@"EliminateCurrentJob" withInfo:v23];

  v24 = v26;
LABEL_15:

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_EliminateAvailableDecideEmpty:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v19.opaque[0] = 0;
  v19.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:EliminateAvailableDecideEmpty", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v19);

  v9 = [v5 assetSelector];
  v10 = [(MADAutoAssetStager *)self eliminationSelectorsAcknowledged];
  v11 = [v9 persistedEntryID];
  [v10 setSafeObject:v9 forKey:v11];

  [(MADAutoAssetStager *)self _removeEliminatedFromCandidatesAndAvaliable];
  [(MADAutoAssetStager *)self notifyControlManagerEliminateDone:@"EliminateAvailableDecideEmpty" forAssetSelector:v9];
  v12 = [(MADAutoAssetStager *)self availableForStaging];
  v13 = [v12 count];

  if (!v13)
  {
    v14 = [(MADAutoAssetStager *)self autoStagerFSM];
    v15 = [MADAutoAssetStagerParam alloc];
    v16 = [(MADAutoAssetStager *)self _updateLatestSummary];
    v17 = [(MADAutoAssetStagerParam *)v15 initWithSafeSummary:v16];
    [v14 followupEvent:@"EliminateNowEmpty" withInfo:v17];

    [(MADAutoAssetStager *)self _clearAllTrackingOfActiveOperations:@"EliminateAvailableDecideEmpty" alsoPerformingPurgeAll:1 removingDetermined:0];
  }

  os_activity_scope_leave(&v19);
  return 0;
}

- (int64_t)action_SetEliminateAvailableDecideEmpty:(id)a3 error:(id *)a4
{
  v25 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = _os_activity_create(&dword_0, "MADStager:SetEliminateAvailableDecideEmpty", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);

  v8 = [v25 setIdentifierConfiguration];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [v8 autoAssetEntries];
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v10)
  {
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        v14 = [(MADAutoAssetStager *)self eliminationSelectorsAcknowledged];
        v15 = [v13 assetSelector];
        v16 = [v13 assetSelector];
        v17 = [v16 persistedEntryID];
        [v14 setSafeObject:v15 forKey:v17];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  [(MADAutoAssetStager *)self _removeEliminatedFromCandidatesAndAvaliable];
  [(MADAutoAssetStager *)self notifyControlManagerEliminateDone:@"SetEliminateAvailableDecideEmpty" forSetConfiguration:v8];
  v18 = [(MADAutoAssetStager *)self availableForStaging];
  v19 = [v18 count] == 0;

  if (v19)
  {
    v20 = [(MADAutoAssetStager *)self autoStagerFSM];
    v21 = [MADAutoAssetStagerParam alloc];
    v22 = [(MADAutoAssetStager *)self _updateLatestSummary];
    v23 = [(MADAutoAssetStagerParam *)v21 initWithSafeSummary:v22];
    [v20 followupEvent:@"EliminateNowEmpty" withInfo:v23];

    [(MADAutoAssetStager *)self _clearAllTrackingOfActiveOperations:@"SetEliminateAvailableDecideEmpty" alsoPerformingPurgeAll:1 removingDetermined:0];
  }

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_EliminateDoneDecideMoreDownload:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v27.opaque[0] = 0;
  v27.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:EliminateDoneDecideMoreDownload", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v27);

  v9 = [(MADAutoAssetStager *)self persistedState:v27.opaque[0]];
  v10 = [v9 persistedConfig];
  [v10 persistULL:0 forKey:@"activelyStagingAssetCount" shouldPersist:0];

  v11 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
    [v13 removeObjectAtIndex:0];

    v14 = [(MADAutoAssetStager *)self persistedState];
    v15 = [v14 persistedConfig];
    v16 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
    [v15 persistULL:objc_msgSend(v16 forKey:"count") shouldPersist:{@"awaitingStagingAssetCount", 0}];
  }

  v17 = [(MADAutoAssetStager *)self persistedState];
  v18 = [v17 persistedConfig];
  [v18 persistState];

  [(MADAutoAssetStager *)self _logPersistedConfigSet:@"EliminateDoneDecideMoreDownload" message:@"no more stager elimination operation pending"];
  [(MADAutoAssetStager *)self _removeEliminatedFromStaged];
  [(MADAutoAssetStager *)self _acknowledgeEliminatedForCurrentJob];
  v19 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
  v20 = [v19 count];

  if (v20)
  {
    v21 = @"DownloadMoreAvailable";
  }

  else
  {
    v21 = @"DownloadDoneAvailable";
  }

  v22 = [(MADAutoAssetStager *)self autoStagerFSM];
  v23 = [MADAutoAssetStagerParam alloc];
  v24 = [(MADAutoAssetStager *)self _updateLatestSummary];
  v25 = [(MADAutoAssetStagerParam *)v23 initWithSafeSummary:v24];
  [v22 followupEvent:v21 withInfo:v25];

  os_activity_scope_leave(&v27);
  return 0;
}

- (int64_t)action_EliminateDoneStagedDecideEmpty:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v19.opaque[0] = 0;
  v19.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:EliminateDoneStagedDecideEmpty", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v19);

  v9 = [v5 assetSelector];
  v10 = [(MADAutoAssetStager *)self eliminationSelectorsAcknowledged];
  v11 = [v9 persistedEntryID];
  [v10 setSafeObject:v9 forKey:v11];

  [(MADAutoAssetStager *)self _removeEliminatedFromStaged];
  [(MADAutoAssetStager *)self notifyControlManagerEliminateDone:@"EliminateDoneStagedDecideEmpty" forAssetSelector:v9];
  v12 = [(MADAutoAssetStager *)self successfullyStaged];
  v13 = [v12 count];

  if (!v13)
  {
    v14 = [(MADAutoAssetStager *)self autoStagerFSM];
    v15 = [MADAutoAssetStagerParam alloc];
    v16 = [(MADAutoAssetStager *)self _updateLatestSummary];
    v17 = [(MADAutoAssetStagerParam *)v15 initWithSafeSummary:v16];
    [v14 followupEvent:@"EliminateNowEmpty" withInfo:v17];

    [(MADAutoAssetStager *)self _clearAllTrackingOfActiveOperations:@"EliminateDoneStagedDecideEmpty" alsoPerformingPurgeAll:1 removingDetermined:0];
  }

  os_activity_scope_leave(&v19);
  return 0;
}

- (int64_t)action_SetEliminateDoneStagedDecideEmpty:(id)a3 error:(id *)a4
{
  v25 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = _os_activity_create(&dword_0, "MADStager:SetEliminateDoneStagedDecideEmpty", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);

  v8 = [v25 setIdentifierConfiguration];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [v8 autoAssetEntries];
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v10)
  {
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        v14 = [(MADAutoAssetStager *)self eliminationSelectorsAcknowledged];
        v15 = [v13 assetSelector];
        v16 = [v13 assetSelector];
        v17 = [v16 persistedEntryID];
        [v14 setSafeObject:v15 forKey:v17];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  [(MADAutoAssetStager *)self _removeEliminatedFromStaged];
  [(MADAutoAssetStager *)self notifyControlManagerEliminateDone:@"SetEliminateDoneStagedDecideEmpty" forSetConfiguration:v8];
  v18 = [(MADAutoAssetStager *)self successfullyStaged];
  v19 = [v18 count] == 0;

  if (v19)
  {
    v20 = [(MADAutoAssetStager *)self autoStagerFSM];
    v21 = [MADAutoAssetStagerParam alloc];
    v22 = [(MADAutoAssetStager *)self _updateLatestSummary];
    v23 = [(MADAutoAssetStagerParam *)v21 initWithSafeSummary:v22];
    [v20 followupEvent:@"EliminateNowEmpty" withInfo:v23];

    [(MADAutoAssetStager *)self _clearAllTrackingOfActiveOperations:@"SetEliminateDoneStagedDecideEmpty" alsoPerformingPurgeAll:1 removingDetermined:0];
  }

  os_activity_scope_leave(&state);
  return 0;
}

- (int64_t)action_EliminateCancelActiveJob:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:EliminateCancelActiveJob", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetStager *)self _cancelCurrentJob:v10.opaque[0]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_AlteredInvalAllAvailable:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:AlteredInvalAllAvailable", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetStager *)self _persistAllTargetLookupResultsOTASituation:300 fromLocation:@"AlteredInvalAllAvailable", v10.opaque[0], v10.opaque[1]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_SetTargetInvalAllAvailable:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:SetTargetInvalAllAvailable", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetStager *)self _persistAllTargetLookupResultsOTASituation:301 fromLocation:@"SetTargetInvalAllAvailable", v10.opaque[0], v10.opaque[1]];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_AlteredInvalAllAvailableCancelActiveJob:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:AlteredInvalAllAvailableCancelActiveJob", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetStager *)self _persistAllTargetLookupResultsOTASituation:300 fromLocation:@"AlteredInvalAllAvailableCancelActiveJob", v10.opaque[0], v10.opaque[1]];
  [(MADAutoAssetStager *)self _cancelCurrentJob];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_SetTargetInvalAllAvailableCancelActiveJob:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:SetTargetInvalAllAvailableCancelActiveJob", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v10);

  [(MADAutoAssetStager *)self _persistAllTargetLookupResultsOTASituation:301 fromLocation:@"SetTargetInvalAllAvailableCancelActiveJob", v10.opaque[0], v10.opaque[1]];
  [(MADAutoAssetStager *)self _cancelCurrentJob];
  os_activity_scope_leave(&v10);

  return 0;
}

- (int64_t)action_AlteredDecideSameSetConfiguration:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:AlteredDecideSameSetConfiguration", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v14);

  [(MADAutoAssetStager *)self _persistAllTargetLookupResultsOTASituation:300 fromLocation:@"AlteredDecideSameSetConfiguration", v14.opaque[0], v14.opaque[1]];
  v9 = [(MADAutoAssetStager *)self autoStagerFSM];
  v10 = [MADAutoAssetStagerParam alloc];
  v11 = [(MADAutoAssetStager *)self _updateLatestSummary];
  v12 = [(MADAutoAssetStagerParam *)v10 initWithSafeSummary:v11];
  [v9 followupEvent:@"ClientAlteredForgetDetermine" withInfo:v12];

  os_activity_scope_leave(&v14);
  return 0;
}

- (int64_t)action_SetTargetDecideSameTarget:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:SetTargetDecideSameTarget", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v14);

  [(MADAutoAssetStager *)self _persistAllTargetLookupResultsOTASituation:301 fromLocation:@"SetTargetDecideSameTarget", v14.opaque[0], v14.opaque[1]];
  v9 = [(MADAutoAssetStager *)self autoStagerFSM];
  v10 = [MADAutoAssetStagerParam alloc];
  v11 = [(MADAutoAssetStager *)self _updateLatestSummary];
  v12 = [(MADAutoAssetStagerParam *)v10 initWithSafeSummary:v11];
  [v9 followupEvent:@"ClientSetTargetsForgetDetermine" withInfo:v12];

  os_activity_scope_leave(&v14);
  return 0;
}

- (int64_t)action_UpdateStagedSituation:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v21.opaque[0] = 0;
  v21.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADStager:UpdateStagedSituation", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v21);

  if ([(MADAutoAssetStager *)self stagingClientUsingGroups:v21.opaque[0]])
  {
    v9 = [(MADAutoAssetStager *)self successfullyStaged];
    v10 = [v9 count];

    if (v10 < 1)
    {
      [(MADAutoAssetStager *)self _persistTargetOTASituation:402 fromLocation:@"UpdateStagedSituation"];
    }

    else
    {
      v11 = [(MADAutoAssetStager *)self assetTargetTrainName];
      v12 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
      v13 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v11 withRestoreVersion:v12];

      v14 = [(MADAutoAssetStager *)self availableForStagingRequiredByTarget];
      v15 = [v14 safeObjectForKey:v13 ofClass:objc_opt_class()];

      v16 = [(MADAutoAssetStager *)self availableForStagingOptionalByTarget];
      v17 = [v16 safeObjectForKey:v13 ofClass:objc_opt_class()];

      v18 = [v15 count];
      if (v10 < &v18[[v17 count]])
      {
        v19 = 500;
      }

      else
      {
        v19 = 501;
      }

      [(MADAutoAssetStager *)self _persistTargetOTASituation:v19 fromLocation:@"UpdateStagedSituation"];
    }
  }

  os_activity_scope_leave(&v21);

  return 0;
}

- (int64_t)actionUnknownAction:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[NSString alloc] initWithFormat:@"unknown action(%@)", v5];

  v7 = [(MADAutoAssetStager *)self autoStagerFSM];
  v8 = [v7 diag];
  [v8 dumpTracked:v6 dumpingTo:5 usingFilename:0 clearingStatistics:0 clearingHistory:0];

  return 0;
}

- (void)_acceptStagingClientRequest:(id)a3 fromLocation:(id)a4 adoptingSpecifiedTarget:(BOOL)a5
{
  v5 = a5;
  v90 = a3;
  v8 = a4;
  v9 = [(MADAutoAssetStager *)self autoStagerFSM];
  v10 = [v9 extendedStateQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [[NSString alloc] initWithFormat:@"%@:_acceptStagingClientRequest", v8];
  v12 = [v90 clientRequestMessage];
  v13 = [v12 messageName];

  v14 = [v90 clientRequestMessage];
  v15 = [v14 message];

  v16 = [v15 safeObjectForKey:@"instance" ofClass:objc_opt_class()];
  v17 = [v15 safeObjectForKey:@"staging" ofClass:objc_opt_class()];
  v18 = [SUCore stringIsEqual:v13 to:@"MA-AUTO-STAGE:DETERMINE_GROUPS_AVAILABLE_FOR_UPDATE"];
  v19 = [SUCore stringIsEqual:v13 to:@"MA-AUTO-STAGE:DOWNLOAD_GROUPS"];
  v89 = v16;
  if (!v16)
  {
    v33 = [(MADAutoAssetStager *)self autoStagerFSM];
    v34 = [v33 diag];
    v35 = [NSString alloc];
    v36 = [v90 summary];
    v37 = [v35 initWithFormat:@"{%@} staging-client-request received with no instance | stagingClientRequest:%@", v11, v36];
    [v34 trackAnomaly:@"AUTO-STAGER" forReason:v37 withResult:6111 withError:0];

    v38 = [NSString alloc];
    v23 = [v90 summary];
    v39 = [v38 initWithFormat:@"staging-client-request [DETERMINE_GROUPS_AVAILABLE_FOR_UPDATE] without staging update-attributes | stagingClientRequest:%@", v23];
    [(MADAutoAssetStager *)self _replyToStagingClient:v11 replyingToRequest:v90 withErrorCode:6102 withUnderlyingError:0 withDescription:v39];

    v20 = v17;
LABEL_23:
    v41 = v89;
    goto LABEL_24;
  }

  if (!v18)
  {
    v21 = v19;
    v20 = v17;
    if ([SUCore stringIsEqual:v13 to:@"MA-AUTO-STAGE:DETERMINE_ALL_AVAILABLE_FOR_UPDATE"])
    {
      if (!v17)
      {
        v56 = [(MADAutoAssetStager *)self autoStagerFSM];
        v57 = [v56 diag];
        v58 = [NSString alloc];
        v59 = [v90 summary];
        v60 = [v58 initWithFormat:@"{%@} staging-client-request [DETERMINE_ALL_AVAILABLE_FOR_UPDATE] without staging information | stagingClientRequest:%@", v11, v59];
        [v57 trackAnomaly:@"AUTO-STAGER" forReason:v60 withResult:6102 withError:0];

        v20 = 0;
        v61 = [NSString alloc];
        v23 = [v90 summary];
        v55 = [v61 initWithFormat:@"staging-client-request [DETERMINE_ALL_AVAILABLE_FOR_UPDATE] without staging update-attributes | stagingClientRequest:%@", v23];
        goto LABEL_22;
      }

      v40 = [v17 allAvailableForStagingAttributes];
      if (v40)
      {
      }

      else
      {
        v66 = [v17 updateAttributes];

        if (!v66)
        {
          v83 = [(MADAutoAssetStager *)self autoStagerFSM];
          v84 = [v83 diag];
          v85 = [NSString alloc];
          v86 = [v90 summary];
          v87 = [v85 initWithFormat:@"{%@} staging-client-request [DETERMINE_ALL_AVAILABLE_FOR_UPDATE] without staging update-attributes | stagingClientRequest:%@", v11, v86];
          [v84 trackAnomaly:@"AUTO-STAGER" forReason:v87 withResult:6102 withError:0];

          v20 = v17;
          v88 = [NSString alloc];
          v23 = [v90 summary];
          v55 = [v88 initWithFormat:@"staging-client-request [DETERMINE_ALL_AVAILABLE_FOR_UPDATE] without allAvailableForStagingAttributes | stagingClientRequest:%@", v23];
          goto LABEL_22;
        }
      }

      v67 = [v17 allAvailableForStagingAttributes];
      if (!v67)
      {
        v67 = [v17 updateAttributes];
      }

      if (v67 && v5)
      {
        v68 = [v67 safeObjectForKey:@"OSVersion" ofClass:objc_opt_class()];
        [(MADAutoAssetStager *)self setAssetTargetOSVersion:v68];

        v69 = [v67 safeObjectForKey:@"Build" ofClass:objc_opt_class()];
        [(MADAutoAssetStager *)self setAssetTargetBuildVersion:v69];

        v70 = [v67 safeObjectForKey:@"TrainName" ofClass:objc_opt_class()];
        [(MADAutoAssetStager *)self setAssetTargetTrainName:v70];

        v20 = v17;
        v71 = [v67 safeObjectForKey:@"RestoreVersion" ofClass:objc_opt_class()];
        [(MADAutoAssetStager *)self setAssetTargetRestoreVersion:v71];

        v72 = [v67 safeObjectForKey:@"OptionalAssetSizeAllowed" ofClass:objc_opt_class()];
        v73 = v72;
        if (v72)
        {
          v74 = v72;
        }

        else
        {
          v74 = &off_4F7790;
        }

        [(MADAutoAssetStager *)self setOptionalAssetSizeAllowed:v74];

        [(MADAutoAssetStager *)self _persistLastStagingFrom:v11];
      }
    }

    else if ([SUCore stringIsEqual:v13 to:@"MA-AUTO-STAGE:DETERMINE_ALL_AVAILABLE"])
    {
      if (v5)
      {
        v41 = v89;
        v42 = [v89 clientAssetSelector];
        v43 = [v42 assetSpecifier];
        [(MADAutoAssetStager *)self setAssetTargetOSVersion:v43];

        v44 = [v89 clientAssetSelector];
        v45 = [v44 assetVersion];
        [(MADAutoAssetStager *)self setAssetTargetBuildVersion:v45];

        [(MADAutoAssetStager *)self setAssetTargetTrainName:0];
        [(MADAutoAssetStager *)self setAssetTargetRestoreVersion:0];
        [(MADAutoAssetStager *)self setOptionalAssetSizeAllowed:&off_4F7790];
        [(MADAutoAssetStager *)self _persistLastStagingFrom:v11];
        v23 = 0;
        goto LABEL_43;
      }
    }

    else
    {
      if (v21)
      {
        v23 = [v17 updateAttributes];
        v24 = [(MADAutoAssetStager *)self adoptTargetFromUpdateAttributes:v11 fromUpdateAttributes:v23 forGroupDetermine:0];
        if (!v24)
        {
          v76 = [(MADAutoAssetStager *)self autoStagerFSM];
          v77 = [v76 diag];
          v78 = [NSString alloc];
          v79 = [v90 summary];
          v80 = [v78 initWithFormat:@"{%@} staging-client-request [DOWNLOAD_GROUPS] unable to form target-name | stagingClientRequest:%@", v11, v79];
          [v77 trackAnomaly:@"AUTO-STAGER" forReason:v80 withResult:6101 withError:0];

          v20 = v17;
          v81 = [NSString alloc];
          v31 = [v90 summary];
          v32 = [v81 initWithFormat:@"staging-client-request [DOWNLOAD_GROUPS] unable to form target-name  | stagingClientRequest:%@", v31];
          goto LABEL_49;
        }

        goto LABEL_18;
      }

      if (([SUCore stringIsEqual:v13 to:@"MA-AUTO-STAGE:DOWNLOAD_ALL"]& 1) == 0 && ([SUCore stringIsEqual:v13 to:@"MA-AUTO-STAGE:PURGE_ALL"]& 1) == 0 && ([SUCore stringIsEqual:v13 to:@"MA-AUTO-STAGE:ERASE_ALL"]& 1) == 0)
      {
        v63 = [(MADAutoAssetStager *)self autoStagerFSM];
        v64 = [v63 diag];
        v65 = [[NSString alloc] initWithFormat:@"{%@} staging-client-request received of unknown messageName:%@", v11, v13];
        [v64 trackAnomaly:@"AUTO-STAGER" forReason:v65 withResult:6106 withError:0];

        v20 = v17;
        v23 = [[NSString alloc] initWithFormat:@"staging-client-request of unknown messageName:%@", v13];
        [(MADAutoAssetStager *)self _replyToStagingClient:v11 replyingToRequest:v90 withErrorCode:6106 withUnderlyingError:0 withDescription:v23];
        goto LABEL_23;
      }
    }

    v23 = 0;
    goto LABEL_42;
  }

  if (!v17)
  {
    v46 = [(MADAutoAssetStager *)self autoStagerFSM];
    v47 = [v46 diag];
    v48 = [NSString alloc];
    v49 = [v90 summary];
    v50 = [v48 initWithFormat:@"{%@} staging-client-request [DETERMINE_GROUPS_AVAILABLE_FOR_UPDATE] without staging information | stagingClientRequest:%@", v11, v49];
LABEL_20:
    v53 = v50;
    [v47 trackAnomaly:@"AUTO-STAGER" forReason:v50 withResult:6102 withError:0];

    v20 = v17;
    v54 = [NSString alloc];
    v23 = [v90 summary];
    v55 = [v54 initWithFormat:@"staging-client-request [DETERMINE_GROUPS_AVAILABLE_FOR_UPDATE] without staging update-attributes | stagingClientRequest:%@", v23];
LABEL_22:
    v62 = v55;
    [(MADAutoAssetStager *)self _replyToStagingClient:v11 replyingToRequest:v90 withErrorCode:6102 withUnderlyingError:0 withDescription:v55];

    goto LABEL_23;
  }

  v20 = v17;
  v21 = v19;
  v22 = [v17 updateAttributes];

  if (!v22)
  {
    v46 = [(MADAutoAssetStager *)self autoStagerFSM];
    v47 = [v46 diag];
    v52 = [NSString alloc];
    v49 = [v90 summary];
    v50 = [v52 initWithFormat:@"{%@} staging-client-request [DETERMINE_GROUPS_AVAILABLE_FOR_UPDATE] without staging update-attributes | stagingClientRequest:%@", v11, v49];
    goto LABEL_20;
  }

  v23 = [v17 updateAttributes];
  v24 = [(MADAutoAssetStager *)self adoptTargetFromUpdateAttributes:v11 fromUpdateAttributes:v23 forGroupDetermine:1];
  if (!v24)
  {
    v25 = [(MADAutoAssetStager *)self autoStagerFSM];
    v26 = [v25 diag];
    v27 = [NSString alloc];
    v28 = [v90 summary];
    v29 = [v27 initWithFormat:@"{%@} staging-client-request [DETERMINE_GROUPS_AVAILABLE_FOR_UPDATE] unable to form target-name | stagingClientRequest:%@", v11, v28];
    [v26 trackAnomaly:@"AUTO-STAGER" forReason:v29 withResult:6101 withError:0];

    v20 = v17;
    v30 = [NSString alloc];
    v31 = [v90 summary];
    v32 = [v30 initWithFormat:@"staging-client-request [DETERMINE_GROUPS_AVAILABLE_FOR_UPDATE] unable to form target-name  | stagingClientRequest:%@", v31];
LABEL_49:
    v82 = v32;
    [(MADAutoAssetStager *)self _replyToStagingClient:v11 replyingToRequest:v90 withErrorCode:6101 withUnderlyingError:0 withDescription:v32];

    goto LABEL_23;
  }

LABEL_18:
  v51 = v24;

  v23 = v51;
LABEL_42:
  v41 = v89;
LABEL_43:
  v75 = [v41 clientProcessName];
  [(MADAutoAssetStager *)self setStagingClientName:v75];

  if (v18)
  {
    [(MADAutoAssetStager *)self _stagingClientRequestDetermineTrack:v11 trackingRequest:v90 forStagingTargetName:v23];
  }

  else if (v21)
  {
    [(MADAutoAssetStager *)self _stagingClientRequestDownloadTrack:v11 trackingRequest:v90 forStagingTargetName:v23];
  }

  else
  {
    [(MADAutoAssetStager *)self _stagingClientRequestGeneralTrack:v11 trackingRequest:v90];
  }

LABEL_24:
}

- (BOOL)_isStagingClientRequestForActiveTarget:(id)a3 fromLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetStager *)self autoStagerFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [[NSString alloc] initWithFormat:@"%@:_isStagingClientRequestForActiveTarget", v7];
  v11 = [(MADAutoAssetStager *)self _updateAttributesFromStagingRequest:v6 fromLocation:v7];

  if (!v11)
  {
    v12 = 0;
    v21 = 0;
    v22 = 0;
    v13 = 0;
    LOBYTE(v15) = 0;
    goto LABEL_27;
  }

  v12 = [v11 safeObjectForKey:@"OSVersion" ofClass:objc_opt_class()];
  v41 = [v11 safeObjectForKey:@"Build" ofClass:objc_opt_class()];
  v40 = [v11 safeObjectForKey:@"TrainName" ofClass:objc_opt_class()];
  v13 = [v11 safeObjectForKey:@"RestoreVersion" ofClass:objc_opt_class()];
  v14 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  v15 = [SUCore stringIsEqual:v13 to:v14];

  if (!v15)
  {
    goto LABEL_7;
  }

  v39 = v10;
  v16 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  if (![SUCore stringIsEqual:v12 to:v16])
  {
    goto LABEL_10;
  }

  v17 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  if (([SUCore stringIsEqual:v41 to:v17]& 1) == 0)
  {

LABEL_10:
    goto LABEL_11;
  }

  [(MADAutoAssetStager *)self assetTargetTrainName];
  v19 = v18 = v12;
  v20 = [SUCore stringIsEqual:v40 to:v19];

  v12 = v18;
  if (v20)
  {
    LOBYTE(v15) = 1;
    v10 = v39;
LABEL_7:
    v21 = v41;
    v22 = v40;
    goto LABEL_27;
  }

LABEL_11:
  v36 = [(MADAutoAssetStager *)self autoStagerFSM];
  v38 = [v36 diag];
  v35 = [NSString alloc];
  v23 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  v37 = v12;
  if (v23)
  {
    v24 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  }

  else
  {
    v24 = @"N";
  }

  v25 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  if (v25)
  {
    v26 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  }

  else
  {
    v26 = @"N";
  }

  v27 = [(MADAutoAssetStager *)self assetTargetTrainName];
  if (v27)
  {
    v28 = [(MADAutoAssetStager *)self assetTargetTrainName];
  }

  else
  {
    v28 = @"N";
  }

  v29 = [v6 summary];
  v34 = v26;
  v33 = v26;
  v30 = v24;
  v31 = [v35 initWithFormat:@"{%@} staging-client-request considered matching active-target yet some mismatches [BY-GROUP-MODE] | assetTarget(OSVersion:%@ | BuildVersion:%@ | TrainName:%@) | request:%@", v39, v24, v33, v28, v29];
  [v38 trackAnomaly:@"AUTO-STAGER" forReason:v31 withResult:6111 withError:0];

  if (v27)
  {
  }

  v21 = v41;
  if (v25)
  {
  }

  v22 = v40;
  if (v23)
  {
  }

  LOBYTE(v15) = 1;
  v10 = v39;
  v12 = v37;
LABEL_27:

  return v15;
}

- (id)_updateAttributesFromStagingRequest:(id)a3 fromLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetStager *)self autoStagerFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [[NSString alloc] initWithFormat:@"%@:_updateAttributesFromStagingRequest", v7];
  v11 = [v6 clientRequestMessage];
  v12 = [v11 messageName];

  v13 = [v6 clientRequestMessage];
  v14 = [v13 message];

  v15 = [v14 safeObjectForKey:@"instance" ofClass:objc_opt_class()];
  v16 = [v14 safeObjectForKey:@"staging" ofClass:objc_opt_class()];
  if (v15)
  {
    if ([SUCore stringIsEqual:v12 to:@"MA-AUTO-STAGE:DETERMINE_GROUPS_AVAILABLE_FOR_UPDATE"])
    {
      if (v16)
      {
        v17 = [v16 allAvailableForStagingAttributes];
        if (v17)
        {

          goto LABEL_15;
        }

        v32 = [v16 updateAttributes];

        if (v32)
        {
LABEL_15:
          v33 = [v16 allAvailableForStagingAttributes];
          if (v33)
          {
            goto LABEL_21;
          }

          goto LABEL_16;
        }

        v18 = [(MADAutoAssetStager *)self autoStagerFSM];
        v19 = [v18 diag];
        v35 = [NSString alloc];
        v21 = [v6 summary];
        v25 = [v35 initWithFormat:@"{%@} staging-client determine-groups-request [BY-GROUP-MODE] without staging update-attributes | stagingClientRequest:%@", v10, v21];
      }

      else
      {
        v18 = [(MADAutoAssetStager *)self autoStagerFSM];
        v19 = [v18 diag];
        v31 = [NSString alloc];
        v21 = [v6 summary];
        v25 = [v31 initWithFormat:@"{%@} staging-client determine-groups-request [BY-GROUP-MODE] without staging information | stagingClientRequest:%@", v10, v21];
      }

      goto LABEL_19;
    }

    if ([SUCore stringIsEqual:v12 to:@"MA-AUTO-STAGE:DOWNLOAD_GROUPS"])
    {
      if (v16)
      {
        v23 = [v16 updateAttributes];

        if (v23)
        {
LABEL_16:
          v33 = [v16 updateAttributes];
          goto LABEL_21;
        }

        v18 = [(MADAutoAssetStager *)self autoStagerFSM];
        v19 = [v18 diag];
        v24 = [NSString alloc];
        v21 = [v6 summary];
        v25 = [v24 initWithFormat:@"{%@} [STAGING-CLIENT-REQUEST(GENERAL)] [BY-GROUP-MODE] without staging update-attributes | stagingClientRequest:%@", v10, v21];
      }

      else
      {
        v18 = [(MADAutoAssetStager *)self autoStagerFSM];
        v19 = [v18 diag];
        v34 = [NSString alloc];
        v21 = [v6 summary];
        v25 = [v34 initWithFormat:@"{%@} staging-client download-groups-request [BY-GROUP-MODE] without staging information | stagingClientRequest:%@", v10, v21];
      }

LABEL_19:
      v27 = v25;
      v28 = v19;
      v29 = v27;
      v30 = 6102;
      goto LABEL_20;
    }

    v18 = [(MADAutoAssetStager *)self autoStagerFSM];
    v19 = [v18 diag];
    v26 = [NSString alloc];
    v21 = [v6 summary];
    v22 = [v26 initWithFormat:@"{%@} staging-client-request received of type not expected [BY-GROUP-MODE] | stagingClientRequest:%@", v10, v21];
  }

  else
  {
    v18 = [(MADAutoAssetStager *)self autoStagerFSM];
    v19 = [v18 diag];
    v20 = [NSString alloc];
    v21 = [v6 summary];
    v22 = [v20 initWithFormat:@"{%@} staging-client-request received with no instance | stagingClientRequest:%@", v10, v21];
  }

  v27 = v22;
  v28 = v19;
  v29 = v27;
  v30 = 6111;
LABEL_20:
  [v28 trackAnomaly:@"AUTO-STAGER" forReason:v29 withResult:v30 withError:0];

  v33 = 0;
LABEL_21:

  return v33;
}

- (id)_stagingClientMessageDesire:(id)a3 forClientRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetStager *)self autoStagerFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  if (v7 && ([v7 clientRequestMessage], (v10 = objc_claimAutoreleasedReturnValue()) != 0) && (v11 = v10, objc_msgSend(v7, "clientRequestMessage"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "message"), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v11, v13))
  {
    v14 = [v7 clientRequestMessage];
    v15 = [v14 message];

    v16 = [v15 safeObjectForKey:@"desire" ofClass:objc_opt_class()];
  }

  else
  {
    v15 = [(MADAutoAssetStager *)self autoStagerFSM];
    v17 = [v15 diag];
    v18 = [NSString alloc];
    v19 = [v7 summary];
    v20 = [v18 initWithFormat:@"{%@:_stagingClientMessageDesire} incomplete staging-client-request:%@", v6, v19];
    [v17 trackAnomaly:@"AUTO-STAGER" forReason:v20 withResult:6103 withError:0];

    v16 = 0;
  }

  return v16;
}

- (id)_stagingClientMessageStagingClientProcessName:(id)a3
{
  v3 = [a3 clientRequestMessage];
  v4 = [v3 message];

  v5 = [v4 safeObjectForKey:@"instance" ofClass:objc_opt_class()];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 clientProcessName];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)newStagingInfoWithGroupsAvailableForStaging:(id)a3 indicatingHaveAvailable:(BOOL)a4 usingTargetLookupKey:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(MADAutoAssetStager *)self autoStagerFSM];
  v11 = [v10 extendedStateQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [MAAutoAssetInfoStaging alloc];
  LOBYTE(v11) = objc_opt_respondsToSelector();

  if (v11)
  {
    v13 = v9;
    v14 = objc_alloc_init(NSMutableDictionary);
    v47 = objc_alloc_init(NSMutableDictionary);
    if (v13)
    {
      if (!v6)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v22 = [(MADAutoAssetStager *)self assetTargetTrainName];
      v23 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
      v13 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v22 withRestoreVersion:v23];

      if (!v6)
      {
LABEL_31:
        v41 = [MAAutoAssetInfoStaging alloc];
        v42 = [(MADAutoAssetStager *)self activeTargetUpdateAttributes];
        v21 = [v41 initWithUpdateAttributes:v42 withByGroupAvailableForStaging:v14 withByGroupTotalExpectedBytes:v47];

        goto LABEL_32;
      }
    }

    v44 = v9;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = [(MADAutoAssetStager *)self assetTargetGroupNames];
    v49 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v49)
    {
      v48 = *v52;
      v45 = v13;
      do
      {
        v24 = 0;
        do
        {
          if (*v52 != v48)
          {
            objc_enumerationMutation(obj);
          }

          if ([SUCore stringIsEqual:*(*(&v51 + 1) + 8 * v24) to:@"STAGE_GROUP_REQUIRED"])
          {
            v25 = [(MADAutoAssetStager *)self availableForStagingRequiredByTarget];
            v26 = @"STAGE_GROUP_REQUIRED";
          }

          else
          {
            v25 = [(MADAutoAssetStager *)self availableForStagingOptionalByTarget];
            v26 = @"STAGE_GROUP_OPTIONAL";
          }

          v27 = [v25 safeObjectForKey:v13 ofClass:objc_opt_class()];

          v50 = 0;
          if ([v27 count])
          {
            v28 = [(MADAutoAssetStager *)self _newStagingInfoAvailable:v8 fromAvailableForStaging:v27 providingTotalExpectedBytes:&v50];
            if ([v28 count])
            {
              v29 = v50 == 0;
            }

            else
            {
              v29 = 1;
            }

            if (v29)
            {
              v40 = [(MADAutoAssetStager *)self autoStagerFSM];
              v30 = [v40 diag];
              v31 = v14;
              v32 = v8;
              v33 = [NSString alloc];
              v34 = [(MADAutoAssetStager *)self stagingClientUsingGroups];
              v35 = @"N";
              if (v34)
              {
                v35 = @"Y";
              }

              v36 = [v33 initWithFormat:@"{%@:newStagingInfoWithGroupsAvailableForStaging} reverted to ALL-MODE staging information | groupName:%@ | stagingClientUsingGroups:%@ | ableToReportByGroup:%@", v32, v26, v35, @"Y"];
              [v30 trackAnomaly:@"AUTO-STAGER" forReason:v36 withResult:6111 withError:0];

              v8 = v32;
              v14 = v31;
              v13 = v45;
            }

            else
            {
              v39 = [NSNumber alloc];
              v40 = [v39 initWithLongLong:v50];
              [v14 setSafeObject:v28 forKey:v26];
              [v47 setSafeObject:v40 forKey:v26];
            }
          }

          else
          {
            v37 = [NSNumber alloc];
            v28 = [v37 initWithLongLong:v50];
            v38 = objc_opt_new();
            [v14 setSafeObject:v38 forKey:v26];

            [v47 setSafeObject:v28 forKey:v26];
          }

          v24 = v24 + 1;
        }

        while (v49 != v24);
        v49 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v49);
    }

    v9 = v44;
    goto LABEL_31;
  }

  v15 = [(MADAutoAssetStager *)self autoStagerFSM];
  v16 = [v15 diag];
  v17 = [NSString alloc];
  v18 = [(MADAutoAssetStager *)self stagingClientUsingGroups];
  v19 = @"Y";
  if (!v18)
  {
    v19 = @"N";
  }

  v20 = [v17 initWithFormat:@"{%@:newStagingInfoWithGroupsAvailableForStaging} reverted to ALL-MODE staging information | stagingClientUsingGroups:%@ | ableToReportByGroup:%@", v8, v19, @"N"];
  [v16 trackAnomaly:@"AUTO-STAGER" forReason:v20 withResult:6111 withError:0];

  v21 = [(MADAutoAssetStager *)self newStagingInfoWithAllAvailableForStaging:v8];
LABEL_32:

  return v21;
}

- (id)newStagingInfoWithAllAvailableForStaging:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v15 = 0;
  v7 = [(MADAutoAssetStager *)self availableForStaging];
  v8 = [(MADAutoAssetStager *)self _newStagingInfoAvailable:v4 fromAvailableForStaging:v7 providingTotalExpectedBytes:&v15];

  if (![v8 count] || !v15)
  {
    v9 = [(MADAutoAssetStager *)self autoStagerFSM];
    v10 = [v9 diag];
    v11 = [[NSString alloc] initWithFormat:@"{%@:newStagingInfoWithAllAvailableForStaging} intending to reply to staging-client with indication of candidate(s) available for staging (nothing available)", v4];
    [v10 trackAnomaly:@"AUTO-STAGER" forReason:v11 withResult:6111 withError:0];
  }

  v12 = [MAAutoAssetInfoStaging alloc];
  v13 = [v12 initWithAvailableForStaging:v8 withTotalExpectedBytes:v15];

  return v13;
}

- (id)_newStagingInfoAvailable:(id)a3 fromAvailableForStaging:(id)a4 providingTotalExpectedBytes:(unint64_t *)a5
{
  v35 = a3;
  v7 = a4;
  v34 = self;
  v8 = [(MADAutoAssetStager *)self autoStagerFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v37 = objc_alloc_init(NSMutableDictionary);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v7;
  v10 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v38 = *v40;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v40 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v39 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        v16 = [v14 metadata];
        v17 = [v16 safeIntegerForKey:@"_UnarchivedSize"];

        if (v17)
        {
          v18 = [MAAutoAssetSelector alloc];
          v19 = [v14 assetType];
          v20 = [v14 assetSpecifier];
          v21 = [v14 assetVersion];
          v22 = [v18 initForAssetType:v19 withAssetSpecifier:v20 matchingAssetVersion:v21];

          v23 = [v14 metadata];
          v24 = [v22 persistedEntryID];
          [v37 setSafeObject:v23 forKey:v24];

          v12 += v17;
        }

        else
        {
          v22 = [(MADAutoAssetStager *)v34 autoStagerFSM];
          v25 = [v22 diag];
          v26 = [NSString alloc];
          v27 = [v14 summary];
          v28 = [v26 initWithFormat:@"{%@:_newStagingInfoAvailable} entry tracked as availableForStaging with unarchivedSize of 0 - ignored | descriptor:%@", v35, v27];
          [v25 trackAnomaly:@"AUTO-STAGER" forReason:v28 withResult:6108 withError:0];
        }

        objc_autoreleasePoolPop(v15);
      }

      v11 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  if (![v37 count] || !v12)
  {
    v29 = [(MADAutoAssetStager *)v34 autoStagerFSM];
    v30 = [v29 diag];
    v31 = [[NSString alloc] initWithFormat:@"{%@:_newStagingInfoAvailable} intending to reply to staging-client with indication of candidate(s) available for staging (nothing available)", v35];
    [v30 trackAnomaly:@"AUTO-STAGER" forReason:v31 withResult:6111 withError:0];
  }

  if (a5)
  {
    *a5 = v12;
  }

  return v37;
}

- (id)newStagedInfoWithGroupsSuccessfullyStaged:(id)a3 indicatingHaveStaged:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MADAutoAssetStager *)self autoStagerFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [[NSString alloc] initWithFormat:@"%@:newStagedInfoWithGroupsSuccessfullyStaged", v6];
  v10 = [MAAutoAssetInfoStaged alloc];
  LOBYTE(v8) = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
    v39 = [(MADAutoAssetStager *)self autoStagerFSM];
    v40 = [v39 diag];
    v41 = [NSString alloc];
    v42 = [(MADAutoAssetStager *)self stagingClientUsingGroups];
    v43 = @"Y";
    if (!v42)
    {
      v43 = @"N";
    }

    v44 = [v41 initWithFormat:@"{%@:newStagedInfoWithGroupsSuccessfullyStaged} reverted to ALL-MODE staging information | stagingClientUsingGroups:%@ | ableToReportByGroup:%@", v9, v43, @"N"];
    [v40 trackAnomaly:@"AUTO-STAGER" forReason:v44 withResult:6111 withError:0];

    v45 = [(MADAutoAssetStager *)self newStagedInfoWithAllSuccessfullyStaged:v6];
    goto LABEL_36;
  }

  v67 = self;
  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = objc_alloc_init(NSMutableDictionary);
  v13 = v12;
  if (!v4)
  {
    goto LABEL_35;
  }

  v60 = v12;
  v61 = v11;
  v62 = v6;
  v71 = +[MADAutoAssetControlManager preferenceStagingLookupFlipRequiredOptional];
  v66 = objc_alloc_init(NSMutableDictionary);
  v65 = objc_alloc_init(NSMutableDictionary);
  v64 = objc_alloc_init(NSMutableDictionary);
  v63 = objc_alloc_init(NSMutableDictionary);
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v14 = self;
  obj = [(MADAutoAssetStager *)self successfullyStaged];
  v75 = [obj countByEnumeratingWithState:&v76 objects:v94 count:16];
  v15 = 0;
  v16 = 0;
  if (!v75)
  {
    v72 = 0;
    v73 = 0;
    goto LABEL_26;
  }

  v72 = 0;
  v73 = 0;
  v74 = *v77;
  do
  {
    for (i = 0; i != v75; i = i + 1)
    {
      if (*v77 != v74)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v76 + 1) + 8 * i);
      v19 = objc_autoreleasePoolPush();
      v20 = [(MADAutoAssetStager *)v14 successfullyStaged];
      v21 = [v20 safeObjectForKey:v18 ofClass:objc_opt_class()];

      v22 = [v21 metadata];
      v23 = [v22 safeIntegerForKey:@"_UnarchivedSize"];

      v24 = [v21 isPreSUStagingRequired];
      v25 = v24;
      if (v23)
      {
        if (v71 == v24)
        {
          v16 = &v16[v23];
          ++v15;
          v26 = v14;
          v27 = v21;
          v28 = v65;
        }

        else
        {
          v73 += v23;
          ++v72;
          v26 = v14;
          v27 = v21;
          v28 = v66;
        }

        goto LABEL_18;
      }

      v69 = v16;
      v70 = v15;
      v29 = v9;
      v30 = [v21 downloadedFilesystemBytes];
      v31 = [(MADAutoAssetStager *)v14 autoStagerFSM];
      v32 = [v31 diag];
      v33 = [NSString alloc];
      v34 = [v21 summary];
      v35 = v34;
      if (v30 < 1)
      {
        v9 = v29;
        v38 = [v33 initWithFormat:@"{%@:newStagedInfoWithGroupsSuccessfullyStaged} entry tracked as successfullyStaged with unarchivedSize of 0 - ignored | descriptor:%@", v29, v34];
        [v32 trackAnomaly:@"AUTO-STAGER" forReason:v38 withResult:6108 withError:0];

        v14 = v67;
        goto LABEL_16;
      }

      v9 = v29;
      v36 = [v33 initWithFormat:@"{%@:newStagedInfoWithGroupsSuccessfullyStaged} entry tracked as successfullyStaged with unarchivedSize of 0 - using downloadedFilesystemBytes | descriptor:%@", v29, v34];
      [v32 trackAnomaly:@"AUTO-STAGER" forReason:v36 withResult:6108 withError:0];

      v37 = [v21 downloadedFilesystemBytes];
      if (v71 != v25)
      {
        v73 += v37;
        ++v72;
        v14 = v67;
        [(MADAutoAssetStager *)v67 trackSelectorForDescriptor:v21 inContainer:v64];
LABEL_16:
        v16 = v69;
        v15 = v70;
        goto LABEL_19;
      }

      v16 = &v69[v37];
      v15 = v70 + 1;
      v14 = v67;
      v26 = v67;
      v27 = v21;
      v28 = v63;
LABEL_18:
      [(MADAutoAssetStager *)v26 trackSelectorForDescriptor:v27 inContainer:v28];
LABEL_19:

      objc_autoreleasePoolPop(v19);
    }

    v75 = [obj countByEnumeratingWithState:&v76 objects:v94 count:16];
  }

  while (v75);
LABEL_26:
  v46 = v16;

  v47 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = [(MADAutoAssetStager *)v14 summary];
    if (v71)
    {
      v49 = @"Y";
    }

    else
    {
      v49 = @"N";
    }

    v50 = [(MADAutoAssetStager *)v14 selectorContainerAsString:v66];
    [(MADAutoAssetStager *)v14 selectorContainerAsString:v64];
    v52 = v51 = v14;
    v53 = [(MADAutoAssetStager *)v51 selectorContainerAsString:v65];
    v54 = [(MADAutoAssetStager *)v51 selectorContainerAsString:v63];
    *buf = 138544898;
    v81 = v48;
    v82 = 2114;
    v83 = v9;
    v84 = 2114;
    v85 = v49;
    v86 = 2114;
    v87 = v50;
    v88 = 2114;
    v89 = v52;
    v90 = 2114;
    v91 = v53;
    v92 = 2114;
    v93 = v54;
    _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {%{public}@} indicate have staged | simulateFlipped:%{public}@\n>>> R(staged:%{public}@,alternate:%{public}@)\n>>> O(staged:%{public}@,alternate:%{public}@)", buf, 0x48u);
  }

  v11 = v61;
  v6 = v62;
  v13 = v60;
  if (v73 >= 1)
  {
    v55 = [[NSNumber alloc] initWithLongLong:v73];
    v56 = [[NSNumber alloc] initWithLongLong:v72];
    [v61 setSafeObject:v55 forKey:@"STAGE_GROUP_REQUIRED"];
    [v60 setSafeObject:v56 forKey:@"STAGE_GROUP_REQUIRED"];
  }

  if (v46 >= 1)
  {
    v57 = [[NSNumber alloc] initWithLongLong:v46];
    v58 = [[NSNumber alloc] initWithLongLong:v15];
    [v61 setSafeObject:v57 forKey:@"STAGE_GROUP_OPTIONAL"];
    [v60 setSafeObject:v58 forKey:@"STAGE_GROUP_OPTIONAL"];
  }

LABEL_35:
  v45 = [[MAAutoAssetInfoStaged alloc] initWithByGroupTotalStagedBytes:v11 withByGroupAssetsSuccessfullyStaged:v13];

LABEL_36:
  return v45;
}

- (id)newStagedInfoWithAllSuccessfullyStaged:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = [(MADAutoAssetStager *)self successfullyStaged];
  v8 = [v7 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (!v8)
  {

    v11 = 0;
    v10 = 0;
LABEL_20:
    v30 = [(MADAutoAssetStager *)self autoStagerFSM];
    [v30 diag];
    v32 = v31 = v11;
    v33 = [[NSString alloc] initWithFormat:@"{%@:newStagedInfoWithAllSuccessfullyStaged} intending to reply to staging-client with indication of staged content (nothing staged)", v4];
    [v32 trackAnomaly:@"AUTO-STAGER" forReason:v33 withResult:6111 withError:0];

    v11 = v31;
    goto LABEL_21;
  }

  v9 = v8;
  v36 = v7;
  v37 = v4;
  v10 = 0;
  v11 = 0;
  v40 = *v42;
  do
  {
    v12 = 0;
    v38 = v9;
    do
    {
      if (*v42 != v40)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v41 + 1) + 8 * v12);
      v14 = objc_autoreleasePoolPush();
      v15 = [(MADAutoAssetStager *)self successfullyStaged];
      v16 = [v15 safeObjectForKey:v13 ofClass:objc_opt_class()];

      v17 = [v16 metadata];
      v18 = [v17 safeIntegerForKey:@"_UnarchivedSize"];

      if (v18)
      {
        v11 = &v11[v18];
        ++v10;
      }

      else
      {
        v19 = v11;
        v39 = v10;
        v20 = [v16 downloadedFilesystemBytes];
        v21 = self;
        v22 = [(MADAutoAssetStager *)self autoStagerFSM];
        v23 = [v22 diag];
        v24 = [NSString alloc];
        v25 = [v16 summary];
        v26 = v25;
        if (v20 < 1)
        {
          v28 = [v24 initWithFormat:@"{%@:newStagedInfoWithAllSuccessfullyStaged} entry tracked as successfullyStaged with unarchivedSize of 0 - ignored | descriptor:%@", v37, v25];
          [v23 trackAnomaly:@"AUTO-STAGER" forReason:v28 withResult:6108 withError:0];

          self = v21;
          v10 = v39;
          v11 = v19;
        }

        else
        {
          v27 = [v24 initWithFormat:@"{%@:newStagedInfoWithAllSuccessfullyStaged} entry tracked as successfullyStaged with unarchivedSize of 0 - using downloadedFilesystemBytes | descriptor:%@", v37, v25];
          [v23 trackAnomaly:@"AUTO-STAGER" forReason:v27 withResult:6108 withError:0];

          v11 = &v19[[v16 downloadedFilesystemBytes]];
          v10 = v39 + 1;
          self = v21;
        }

        v7 = v36;
        v9 = v38;
      }

      objc_autoreleasePoolPop(v14);
      v12 = v12 + 1;
    }

    while (v9 != v12);
    v9 = [v7 countByEnumeratingWithState:&v41 objects:v45 count:16];
  }

  while (v9);

  v29 = v11 < 1 || v10 == 0;
  v4 = v37;
  if (v29)
  {
    goto LABEL_20;
  }

LABEL_21:
  v34 = [[MAAutoAssetInfoStaged alloc] initWithTotalStagedBytes:v11 withAssetsSuccessfullyStaged:v10];

  return v34;
}

- (id)adoptTargetFromUpdateAttributes:(id)a3 fromUpdateAttributes:(id)a4 forGroupDetermine:(BOOL)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[NSString alloc] initWithFormat:@"%@:adoptTargetFromUpdateAttributes", v9];

  v11 = [v8 safeObjectForKey:@"OSVersion" ofClass:objc_opt_class()];
  v12 = [v8 safeObjectForKey:@"Build" ofClass:objc_opt_class()];
  v13 = [v8 safeObjectForKey:@"TrainName" ofClass:objc_opt_class()];
  v14 = [v8 safeObjectForKey:@"RestoreVersion" ofClass:objc_opt_class()];
  v15 = [v8 safeObjectForKey:@"GroupNames" ofClass:objc_opt_class()];
  v16 = [(MADAutoAssetStager *)self _targetName:@"CLIENT" forOSVersion:v11 forBuildVersion:v12 forTrainName:v13 forRestoreVersion:v14];
  [(MADAutoAssetStager *)self setAssetTargetOSVersion:v11];
  [(MADAutoAssetStager *)self setAssetTargetBuildVersion:v12];
  [(MADAutoAssetStager *)self setAssetTargetTrainName:v13];
  [(MADAutoAssetStager *)self setAssetTargetRestoreVersion:v14];
  [(MADAutoAssetStager *)self setAssetTargetGroupNames:v15];
  [(MADAutoAssetStager *)self setActiveTargetUpdateAttributes:v8];
  [(MADAutoAssetStager *)self _persistLastStagingFrom:v10];
  if (!a5)
  {
    if ([(MADAutoAssetStager *)self doesStagingInvolveOptional])
    {
      v17 = [v8 safeObjectForKey:@"OptionalAssetSizeAllowed" ofClass:objc_opt_class()];
      [(MADAutoAssetStager *)self setOptionalAssetSizeAllowed:v17];

      v18 = [(MADAutoAssetStager *)self optionalAssetSizeAllowed];

      if (!v18)
      {
        [(MADAutoAssetStager *)self setOptionalAssetSizeAllowed:&off_4F7790];
      }

      v19 = _MADLog(@"AutoStager");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        [(MADAutoAssetStager *)self summary];
        v36 = v14;
        v20 = v13;
        v21 = v12;
        v22 = v11;
        v23 = v10;
        v24 = v15;
        v26 = v25 = v16;
        *buf = 138543618;
        v40 = v26;
        v41 = 2114;
        v42 = v23;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%{public}@\n{%{public}@} forming available-for-staging (to then be split into REQUIRED and OPTIONAL", buf, 0x16u);

        v16 = v25;
        v15 = v24;
        v10 = v23;
        v11 = v22;
        v12 = v21;
        v13 = v20;
        v14 = v36;
      }

      [(MADAutoAssetStager *)self formAvailableForStagingByCombiningRequiredAndOptional:v10];
      v27 = [(MADAutoAssetStager *)self splitOutAvailableForStagingByGroup:@"{adoptTargetFromUpdateAttributes}" forGroupDetermine:0];
    }

    else
    {
      v37 = v16;
      v28 = [NSNumber numberWithInt:0];
      [(MADAutoAssetStager *)self setOptionalAssetSizeAllowed:v28];

      v29 = _MADLog(@"AutoStager");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [(MADAutoAssetStager *)self summary];
        *buf = 138543618;
        v40 = v30;
        v41 = 2114;
        v42 = v10;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "%{public}@\n{%{public}@} staging doesn't involve optional assets", buf, 0x16u);
      }

      v16 = v37;
    }
  }

  [(MADAutoAssetStager *)self setStagingClientChosen:1];
  [(MADAutoAssetStager *)self setStagingClientUsingGroups:1];
  v31 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    [(MADAutoAssetStager *)self summary];
    v38 = v15;
    v33 = v32 = v16;
    v34 = [(MADAutoAssetStager *)self _targetNameActive];
    *buf = 138543874;
    v40 = v33;
    v41 = 2114;
    v42 = v34;
    v43 = 2114;
    v44 = v10;
    _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {%{public}@} [ADOPTED-TARGET] latest target from client-provided update-attributes", buf, 0x20u);

    v16 = v32;
    v15 = v38;
  }

  return v16;
}

- (void)_replyToStagingClient:(id)a3 replyingToRequest:(id)a4 withErrorCode:(int64_t)a5 withUnderlyingError:(id)a6 withDescription:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [(MADAutoAssetStager *)self autoStagerFSM];
  v17 = [v16 extendedStateQueue];
  dispatch_assert_queue_V2(v17);

  if (!v13)
  {
    v34 = [(MADAutoAssetStager *)self autoStagerFSM];
    v35 = [v34 diag];
    v36 = [[NSString alloc] initWithFormat:@"{%@} %@ (reply to staging-client-request when no staging-client-request)", v12, v15];
LABEL_8:
    v37 = v36;
    [v35 trackAnomaly:@"AUTO-STAGER" forReason:v36 withResult:6111 withError:v14];

    goto LABEL_9;
  }

  v18 = [v13 clientReplyCompletion];

  if (!v18)
  {
    v34 = [(MADAutoAssetStager *)self autoStagerFSM];
    v35 = [v34 diag];
    v36 = [[NSString alloc] initWithFormat:@"{%@} %@ (pending staging-client-request with no reply-completion)", v12, v15];
    goto LABEL_8;
  }

  v19 = objc_alloc_init(NSMutableDictionary);
  v20 = [v13 clientRequestMessage];
  [MADAutoAssetControlManager replyMessageNameForRequest:v20];
  v22 = v21 = v14;

  v23 = [SUCoreConnectMessage alloc];
  v24 = [v13 clientID];
  v39 = v19;
  v25 = [v23 initWithType:2 messageName:v22 clientID:v24 version:0 message:v19];

  v38 = v21;
  v26 = [MAAutoAssetError buildError:a5 fromOperation:v12 underlyingError:v21 withDescription:v15];
  v27 = [(MADAutoAssetStager *)self statisticsClientRepliesFailure];
  v28 = [v13 clientRequestMessage];
  v29 = [v28 messageName];
  [v27 incrementForClientRequestMessage:v29];

  v30 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = [(MADAutoAssetStager *)self _targetNameActive];
    v32 = [v26 checkedDescription];
    *buf = 138544130;
    v41 = v31;
    v42 = 2114;
    v43 = v12;
    v44 = 2114;
    v45 = v22;
    v46 = 2114;
    v47 = v32;
    _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "\n[%{public}@] {%{public}@} [STAGING-CLIENT-REPLY] %{public}@ reply to staging-client (error) | responseError:%{public}@", buf, 0x2Au);
  }

  v33 = [v13 clientReplyCompletion];
  (v33)[2](v33, v25, v26);

  v14 = v38;
LABEL_9:
}

- (void)_replyToStagingClient:(id)a3 withStagingInfo:(id)a4 replyingToStagingRequest:(id)a5 recordingOperation:(int64_t)a6
{
  v38 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(MADAutoAssetStager *)self autoStagerFSM];
  v13 = [v12 extendedStateQueue];
  dispatch_assert_queue_V2(v13);

  if (v11)
  {
    v37 = objc_alloc_init(NSMutableDictionary);
    v14 = [v11 clientRequestMessage];
    v15 = [MADAutoAssetControlManager replyMessageNameForRequest:v14];

    if (a6 != 9999)
    {
      [v11 clientRequestMessage];
      v16 = v36 = v15;
      v17 = [v16 messageName];
      v18 = [(MADAutoAssetStager *)self assetTargetOSVersion];
      v19 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
      [MADAutoAssetHistory recordOperation:a6 toHistoryType:4 fromLayer:4 fromClient:v17 forTargetOSVersion:v18 forTargetBuildVersion:v19];

      v15 = v36;
    }

    [v37 setSafeObject:v10 forKey:@"staging"];
    v20 = [SUCoreConnectMessage alloc];
    v21 = [v11 clientID];
    v22 = [v20 initWithType:2 messageName:v15 clientID:v21 version:0 message:v37];

    v23 = [(MADAutoAssetStager *)self statisticsClientRepliesSuccess];
    v24 = [v11 clientRequestMessage];
    v25 = [v24 messageName];
    [v23 incrementForClientRequestMessage:v25];

    v26 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(MADAutoAssetStager *)self summary];
      v28 = [(MADAutoAssetStager *)self _targetNameActive];
      v29 = [v10 summary];
      *buf = 138544386;
      v40 = v27;
      v41 = 2114;
      v42 = v28;
      v43 = 2114;
      v44 = v38;
      v45 = 2114;
      v46 = v15;
      v47 = 2114;
      v48 = v29;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {%{public}@} [STAGING-CLIENT-REPLY] %{public}@ reply to staging-client (determine success) | stagingInfo:%{public}@", buf, 0x34u);
    }

    [(MADAutoAssetStager *)self _logStagingDetails:v15 forStagingInfo:v10];
    v30 = [v11 clientReplyCompletion];
    (v30)[2](v30, v22, 0);
  }

  else
  {
    v31 = [(MADAutoAssetStager *)self autoStagerFSM];
    v32 = [v31 diag];
    v33 = [NSString alloc];
    v34 = [v10 summary];
    v35 = [v33 initWithFormat:@"{%@:_replyToStagingClient} | no stagingRequest to reply to | stagingInfo:%@", v38, v34];
    [v32 trackAnomaly:@"AUTO-STAGER" forReason:v35 withResult:6111 withError:0];
  }
}

- (void)_replyToStagingClient:(id)a3 withStagedInfo:(id)a4 replyingToStagingRequest:(id)a5 recordingOperation:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(MADAutoAssetStager *)self autoStagerFSM];
  v14 = [v13 extendedStateQueue];
  dispatch_assert_queue_V2(v14);

  if (v12)
  {
    v39 = v10;
    v15 = objc_alloc_init(NSMutableDictionary);
    v16 = [v12 clientRequestMessage];
    v17 = [MADAutoAssetControlManager replyMessageNameForRequest:v16];

    v18 = [(MADAutoAssetStager *)self stagingClientName];
    v19 = [(MADAutoAssetStager *)self assetTargetOSVersion];
    v20 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
    [MADAutoAssetHistory recordOperation:a6 toHistoryType:4 fromLayer:4 fromClient:v18 forTargetOSVersion:v19 forTargetBuildVersion:v20];

    [v15 setSafeObject:v11 forKey:@"staging"];
    v21 = [SUCoreConnectMessage alloc];
    v22 = [v12 clientRequestMessage];
    v23 = [MADAutoAssetControlManager replyMessageNameForRequest:v22];
    v24 = [v12 clientID];
    v25 = [v21 initWithType:2 messageName:v23 clientID:v24 version:0 message:v15];

    v26 = [(MADAutoAssetStager *)self statisticsClientRepliesSuccess];
    v27 = [v12 clientRequestMessage];
    v28 = [v27 messageName];
    [v26 incrementForClientRequestMessage:v28];

    v29 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [(MADAutoAssetStager *)self summary];
      v31 = [(MADAutoAssetStager *)self _targetNameActive];
      v32 = [v11 summary];
      *buf = 138544386;
      v41 = v30;
      v42 = 2114;
      v43 = v31;
      v44 = 2114;
      v45 = v39;
      v46 = 2114;
      v47 = v17;
      v48 = 2114;
      v49 = v32;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {%{public}@} [STAGING-CLIENT-REPLY] %{public}@ reply to staging-client (staged) | stagedInfo:%{public}@", buf, 0x34u);
    }

    [(MADAutoAssetStager *)self _logStagingDetails:v17 forStagedInfo:v11];
    v33 = [v12 clientReplyCompletion];
    (v33)[2](v33, v25, 0);

    v10 = v39;
  }

  else
  {
    v34 = [(MADAutoAssetStager *)self autoStagerFSM];
    v35 = [v34 diag];
    v36 = [NSString alloc];
    v37 = [v11 summary];
    v38 = [v36 initWithFormat:@"{%@:_replyToStagingClient} | no stagingRequest to reply to | stagedInfo:%@", v10, v37];
    [v35 trackAnomaly:@"AUTO-STAGER" forReason:v38 withResult:6111 withError:0];
  }
}

- (void)_replyToStagingClientOperationSuccess
{
  v3 = [(MADAutoAssetStager *)self autoStagerFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(MADAutoAssetStager *)self _stagingClientRequestGeneralClear:@"_replyToStagingClientOperationSuccess" replyingToCleared:0];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 clientReplyCompletion];

    if (v7)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
      v9 = [v6 clientRequestMessage];
      v10 = [MADAutoAssetControlManager replyMessageNameForRequest:v9];

      v11 = [SUCoreConnectMessage alloc];
      v12 = [v6 clientID];
      v13 = [v11 initWithType:2 messageName:v10 clientID:v12 version:0 message:v8];

      v14 = [(MADAutoAssetStager *)self statisticsClientRepliesSuccess];
      v15 = [v6 clientRequestMessage];
      v16 = [v15 messageName];
      [v14 incrementForClientRequestMessage:v16];

      v17 = _MADLog(@"AutoStager");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(MADAutoAssetStager *)self summary];
        v19 = [(MADAutoAssetStager *)self _targetNameActive];
        v22 = 138543874;
        v23 = v18;
        v24 = 2114;
        v25 = v19;
        v26 = 2114;
        v27 = v10;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {_replyToStagingClientOperationSuccess} [STAGING-CLIENT-REPLY] %{public}@ reply to staging-client (operation success)", &v22, 0x20u);
      }

      v20 = [v6 clientReplyCompletion];
      (v20)[2](v20, v13, 0);
    }

    else
    {
      v8 = [(MADAutoAssetStager *)self autoStagerFSM];
      v21 = [v8 diag];
      [v21 trackAnomaly:@"AUTO-STAGER" forReason:@"{_replyToStagingClientOperationSuccess} | pending staging-client-request with no reply-completion" withResult:6111 withError:0];
    }
  }
}

- (void)_replyNoCandidates:(id)a3 replyingToStagingRequest:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MADAutoAssetStager *)self autoStagerFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [[NSString alloc] initWithFormat:@"%@:_replyNoCandidates", v7];
  v11 = v6;
  v12 = v11;
  if (v11)
  {
    v13 = 0;
    v14 = v11;
LABEL_8:
    v16 = [v14 clientReplyCompletion];

    if (v16)
    {
      if ([(MADAutoAssetStager *)self stagingClientUsingGroups])
      {
        v17 = [(MADAutoAssetStager *)self newStagingInfoWithGroupsAvailableForStaging:v10 indicatingHaveAvailable:0];
      }

      else
      {
        v21 = [MAAutoAssetInfoStaging alloc];
        v22 = objc_alloc_init(NSMutableDictionary);
        v17 = [v21 initWithAvailableForStaging:v22 withTotalExpectedBytes:0];
      }

      [(MADAutoAssetStager *)self _replyToStagingClient:v10 withStagingInfo:v17 replyingToStagingRequest:v14 recordingOperation:900];
      v23 = [(MADAutoAssetStager *)self stagingClientName];
      v24 = [(MADAutoAssetStager *)self assetTargetOSVersion];
      v25 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
      [MADAutoAssetHistory recordOperation:900 toHistoryType:4 fromLayer:4 fromClient:v23 forTargetOSVersion:v24 forTargetBuildVersion:v25];

      if (v13)
      {
        [(MADAutoAssetStager *)self _acknowlegdeAndClearAllEliminations];
      }

      goto LABEL_17;
    }

    v18 = [(MADAutoAssetStager *)self autoStagerFSM];
    v19 = [v18 diag];
    v20 = [[NSString alloc] initWithFormat:@"{%@} intending to reply to staging-client with indication of no candidates available for staging (pending staging-client-request with no reply-completion)", v10];
    [v19 trackAnomaly:@"AUTO-STAGER" forReason:v20 withResult:6111 withError:0];

    goto LABEL_18;
  }

  v15 = [(MADAutoAssetStager *)self stagingClientUsingGroups];
  if (v15)
  {
    [(MADAutoAssetStager *)self _stagingClientRequestDetermineClear:v10 forStagingTargetName:0 replyingToCleared:0];
  }

  else
  {
    [(MADAutoAssetStager *)self _stagingClientRequestGeneralClear:v10 replyingToCleared:0];
  }
  v14 = ;
  if (v14)
  {
    v13 = v15 ^ 1;
    goto LABEL_8;
  }

  v14 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(MADAutoAssetStager *)self summary];
    v26 = [(MADAutoAssetStager *)self _targetNameActive];
    *buf = 138543874;
    v28 = v17;
    v29 = 2114;
    v30 = v26;
    v31 = 2114;
    v32 = v10;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {%{public}@} already replied to staging-client", buf, 0x20u);

LABEL_17:
  }

LABEL_18:
}

- (void)_replyNothingStaged:(id)a3 replyingToStagingRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetStager *)self autoStagerFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = v7;
  v11 = v10;
  if (!v10)
  {
    if ([(MADAutoAssetStager *)self stagingClientUsingGroups])
    {
      v12 = [(MADAutoAssetStager *)self _targetNameActiveClient];
      v11 = [(MADAutoAssetStager *)self _stagingClientRequestDownloadClear:v6 forStagingTargetName:v12 replyingToCleared:0];

      if (v11)
      {
        goto LABEL_4;
      }

LABEL_13:
      v11 = [(MADAutoAssetStager *)self autoStagerFSM];
      v18 = [v11 diag];
      [v18 trackAnomaly:@"AUTO-STAGER" forReason:@"{ReplyNothingStaged} intending to reply to staging-client with indication of nothing staged (no pending staging-client-request)" withResult:6111 withError:0];
      goto LABEL_14;
    }

    v11 = [(MADAutoAssetStager *)self _stagingClientRequestGeneralClear:v6 replyingToCleared:0];
    if (!v11)
    {
      goto LABEL_13;
    }
  }

LABEL_4:
  v13 = [v11 clientReplyCompletion];

  if (!v13)
  {
    v18 = [(MADAutoAssetStager *)self autoStagerFSM];
    v19 = [v18 diag];
    [v19 trackAnomaly:@"AUTO-STAGER" forReason:@"{ReplyNothingStaged} intending to reply to staging-client with indication of nothing staged (pending staging-client-request with no reply-completion)" withResult:6111 withError:0];

LABEL_14:
    goto LABEL_15;
  }

  v14 = [v11 clientRequestMessage];
  v15 = [MADAutoAssetControlManager replyMessageNameForRequest:v14];

  v16 = objc_alloc_init(NSMutableDictionary);
  v31 = v6;
  if ([(MADAutoAssetStager *)self stagingClientUsingGroups])
  {
    v17 = [(MADAutoAssetStager *)self newStagedInfoWithGroupsSuccessfullyStaged:@"_replyNothingStaged" indicatingHaveStaged:0];
  }

  else
  {
    v17 = [[MAAutoAssetInfoStaged alloc] initWithTotalStagedBytes:0 withAssetsSuccessfullyStaged:0];
  }

  v20 = v17;
  [v16 setSafeObject:v17 forKey:@"staged"];
  v21 = [SUCoreConnectMessage alloc];
  v22 = [v11 clientID];
  v23 = [v21 initWithType:2 messageName:v15 clientID:v22 version:0 message:v16];

  v24 = [(MADAutoAssetStager *)self statisticsClientRepliesSuccess];
  v25 = [v11 clientRequestMessage];
  v26 = [v25 messageName];
  [v24 incrementForClientRequestMessage:v26];

  v27 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [(MADAutoAssetStager *)self summary];
    v29 = [(MADAutoAssetStager *)self _targetNameActive];
    *buf = 138543874;
    v33 = v28;
    v34 = 2114;
    v35 = v29;
    v36 = 2114;
    v37 = v15;
    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {_replyNothingStaged} [STAGING-CLIENT-REPLY] %{public}@ reply to staging-client (nothing staged)", buf, 0x20u);
  }

  v30 = [v11 clientReplyCompletion];
  (v30)[2](v30, v23, 0);

  v6 = v31;
LABEL_15:
}

- (void)_replyHaveStagedContent:(id)a3 withEventInfo:(id)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  if ([(MADAutoAssetStager *)self stagingClientUsingGroups])
  {
    v8 = [(MADAutoAssetStager *)self _targetNameActiveClient];
    v9 = [(MADAutoAssetStager *)self _stagingClientRequestDownloadClear:v5 forStagingTargetName:v8 replyingToCleared:0];

    if (v9)
    {
LABEL_3:
      v10 = [v9 clientReplyCompletion];

      if (v10)
      {
        v11 = [v9 clientRequestMessage];
        v12 = [MADAutoAssetControlManager replyMessageNameForRequest:v11];

        v13 = objc_alloc_init(NSMutableDictionary);
        if ([(MADAutoAssetStager *)self stagingClientUsingGroups])
        {
          v14 = [(MADAutoAssetStager *)self newStagedInfoWithGroupsSuccessfullyStaged:@"_replyHaveStagedContent" indicatingHaveStaged:1];
        }

        else
        {
          v14 = [(MADAutoAssetStager *)self newStagedInfoWithAllSuccessfullyStaged:@"_replyHaveStagedContent"];
        }

        v21 = v14;
        v34 = v5;
        [v13 setSafeObject:v14 forKey:@"staged"];
        v22 = [SUCoreConnectMessage alloc];
        v23 = [v9 clientID];
        v24 = [v22 initWithType:2 messageName:v12 clientID:v23 version:0 message:v13];

        v25 = [(MADAutoAssetStager *)self statisticsClientRepliesSuccess];
        v26 = [v9 clientRequestMessage];
        v27 = [v26 messageName];
        [v25 incrementForClientRequestMessage:v27];

        v28 = _MADLog(@"AutoStager");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [(MADAutoAssetStager *)self summary];
          v30 = [(MADAutoAssetStager *)self _targetNameActive];
          v31 = [v21 summary];
          *buf = 138544130;
          v36 = v29;
          v37 = 2114;
          v38 = v30;
          v39 = 2114;
          v40 = v12;
          v41 = 2114;
          v42 = v31;
          _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {_replyHaveStagedContent} [STAGING-CLIENT-REPLY] %{public}@ reply to staging-client (have staged) | stagedInfo:%{public}@", buf, 0x2Au);
        }

        [(MADAutoAssetStager *)self _logStagingDetails:v12 forStagedInfo:v21];
        v32 = [v9 clientReplyCompletion];
        (v32)[2](v32, v24, 0);

        v5 = v34;
        goto LABEL_18;
      }

      v18 = [(MADAutoAssetStager *)self autoStagerFSM];
      v19 = [v18 diag];
      v20 = [[NSString alloc] initWithFormat:@"{%@} intending to reply to staging-client with indication of staged content (pending staging-client-request with no reply-completion)", v5];
LABEL_17:
      v33 = v20;
      [v19 trackAnomaly:@"AUTO-STAGER" forReason:v20 withResult:6111 withError:0];

      goto LABEL_18;
    }
  }

  else
  {
    v9 = [(MADAutoAssetStager *)self _stagingClientRequestGeneralClear:v5 replyingToCleared:0];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  if (![(MADAutoAssetStager *)self stagingClientUsingGroups])
  {
    v18 = [(MADAutoAssetStager *)self autoStagerFSM];
    v19 = [v18 diag];
    v20 = [[NSString alloc] initWithFormat:@"{%@} intending to reply to staging-client with indication of staged content (no pending staging-client-request)", v5];
    goto LABEL_17;
  }

  v15 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(MADAutoAssetStager *)self summary];
    v17 = [(MADAutoAssetStager *)self _targetNameActive];
    *buf = 138543874;
    v36 = v16;
    v37 = 2114;
    v38 = v17;
    v39 = 2114;
    v40 = v5;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {%{public}@} [STAGING-CLIENT-REPLY] replied earlier to staging-client (once REQUIRED staged)", buf, 0x20u);
  }

LABEL_18:
}

- (void)_replyWrongMode:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  if (!v4)
  {
    v29 = [(MADAutoAssetStager *)self autoStagerFSM];
    v30 = [v29 diag];
    v31 = v30;
    v32 = @"{_replyWrongMode} intending to reply to staging-client with indication of wrong mode (no staging-client-request)";
LABEL_10:
    [v30 trackAnomaly:@"AUTO-STAGER" forReason:v32 withResult:6111 withError:0];

    goto LABEL_11;
  }

  v7 = [v4 clientReplyCompletion];

  if (!v7)
  {
    v29 = [(MADAutoAssetStager *)self autoStagerFSM];
    v30 = [v29 diag];
    v31 = v30;
    v32 = @"{_replyWrongMode} intending to reply to staging-client with indication of wrong mode (staging-client-request with no reply-completion)";
    goto LABEL_10;
  }

  v8 = [v4 clientRequestMessage];
  v9 = [MADAutoAssetControlManager replyMessageNameForRequest:v8];

  v10 = [[MAAutoAssetInfoStaged alloc] initWithTotalStagedBytes:0 withAssetsSuccessfullyStaged:0];
  v11 = objc_alloc_init(NSMutableDictionary);
  [v11 setSafeObject:v10 forKey:@"staged"];
  v12 = [SUCoreConnectMessage alloc];
  v13 = [v4 clientID];
  v33 = v9;
  v14 = [v12 initWithType:2 messageName:v9 clientID:v13 version:0 message:v11];

  v15 = [NSString alloc];
  v16 = [(MADAutoAssetStager *)self stagingClientUsingGroups];
  v17 = @"N";
  if (v16)
  {
    v17 = @"Y";
  }

  v18 = [v15 initWithFormat:@"wrong mode indicated by staging client | stagingClientUsingGroups:%@", v17];
  v19 = [MAAutoAssetError buildError:6606 fromOperation:@"_replyWrongMode" underlyingError:0 withDescription:v18];

  v20 = [(MADAutoAssetStager *)self statisticsClientRepliesFailure];
  v21 = [v4 clientRequestMessage];
  v22 = [v21 messageName];
  [v20 incrementForClientRequestMessage:v22];

  v23 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = [(MADAutoAssetStager *)self summary];
    v25 = [(MADAutoAssetStager *)self _targetNameActive];
    v26 = [v10 summary];
    v27 = [v19 checkedDescription];
    *buf = 138544386;
    v35 = v24;
    v36 = 2114;
    v37 = v25;
    v38 = 2114;
    v39 = v33;
    v40 = 2112;
    v41 = v26;
    v42 = 2114;
    v43 = v27;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%{public}@\n[%{public}@] {_replyWrongMode} [STAGING-CLIENT-REPLY] %{public}@ reply to staging-client (wrong mode) | staged:%{piblic}@ | responseError:%{public}@", buf, 0x34u);
  }

  v28 = [v4 clientReplyCompletion];
  (v28)[2](v28, v14, v19);

LABEL_11:
}

- (void)_replyWithAlreadyDetermined:(id)a3 forEventInfo:(id)a4 orFollowupDetermineStart:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(MADAutoAssetStager *)self autoStagerFSM];
  v11 = [v10 extendedStateQueue];
  dispatch_assert_queue_V2(v11);

  LODWORD(v10) = [(MADAutoAssetStager *)self stagingClientUsingGroups];
  v12 = [v9 stagingClientRequest];
  if (v10)
  {
    v13 = [(MADAutoAssetStager *)self _updateAttributesFromStagingRequest:v12 fromLocation:v8];

    if (v13)
    {
      v14 = [v13 safeObjectForKey:@"TrainName" ofClass:objc_opt_class()];
      v15 = [v13 safeObjectForKey:@"RestoreVersion" ofClass:objc_opt_class()];
      if (!v15)
      {
        v57 = [(MADAutoAssetStager *)self autoStagerFSM];
        v58 = [v57 diag];
        v59 = [[NSString alloc] initWithFormat:@"{%@} by-group request with updateAttributes without restore-version", v8];
        [v58 trackAnomaly:@"AUTO-STAGER" forReason:v59 withResult:6102 withError:0];

        v16 = [v9 stagingClientRequest];
        v60 = [[NSString alloc] initWithFormat:@"{%@} received staging-client-request is not valid - updateAttributes missing restore-version", v8];
        [(MADAutoAssetStager *)self _replyToStagingClient:v8 replyingToRequest:v16 withErrorCode:6102 withUnderlyingError:0 withDescription:v60];

LABEL_56:
        goto LABEL_57;
      }

      v16 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v14 withRestoreVersion:v15];
      v17 = [(MADAutoAssetStager *)self availableForStagingRequiredByTarget];
      v110 = [v17 safeObjectForKey:v16 ofClass:objc_opt_class()];

      v18 = [(MADAutoAssetStager *)self availableForStagingOptionalByTarget];
      v19 = [v18 safeObjectForKey:v16 ofClass:objc_opt_class()];

      if (!v16)
      {
        v50 = _MADLog(@"AutoStager");
        if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
LABEL_55:

          goto LABEL_56;
        }

        v51 = [(MADAutoAssetStager *)self summary];
        v61 = [(MADAutoAssetStager *)self _targetNameActive];
        *buf = 138544386;
        v112 = v51;
        v113 = 2114;
        v114 = v61;
        v115 = 2114;
        v116 = v8;
        v117 = 2114;
        v118 = v14;
        v119 = 2114;
        v120 = v15;
        _os_log_impl(&dword_0, v50, OS_LOG_TYPE_ERROR, "%{public}@\n[%{public}@] {%{public}@} [STAGING-CLIENT-REQUEST(DETERMINE)] nil target-lookup-results-key | assetTargetTrainName:@%{public}@ | assetTargetRestoreVersion:%{public}@", buf, 0x34u);

LABEL_54:
        goto LABEL_55;
      }

      v108 = v9;
      v20 = v15;
      v21 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
      v22 = [v21 persistedEntry:v16 fromLocation:v8];

      if (!v22)
      {
        v51 = _MADLog(@"AutoStager");
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v62 = [(MADAutoAssetStager *)self summary];
          v63 = [(MADAutoAssetStager *)self _targetNameActive];
          *buf = 138544386;
          v112 = v62;
          v113 = 2114;
          v114 = v63;
          v115 = 2114;
          v116 = v8;
          v117 = 2114;
          v118 = v14;
          v119 = 2114;
          v120 = v20;
          _os_log_impl(&dword_0, v51, OS_LOG_TYPE_ERROR, "%{public}@\n[%{public}@] {%{public}@} [STAGING-CLIENT-REQUEST(DETERMINE)] unable to load persisted set-lookup-result file | assetTargetTrainName:@%{public}@ | assetTargetRestoreVersion:%{public}@", buf, 0x34u);
        }

        v50 = 0;
        v15 = v20;
        v9 = v108;
        goto LABEL_54;
      }

      v106 = v22;
      v23 = [v22 ullForKey:@"targetLookupResultsOTASituation"];
      v24 = v23;
      v107 = v19;
      if ((v23 & 0xFFFFFFFFFFFFFFFDLL) == 0xC9)
      {
        v102 = v14;
        v25 = _MADLog(@"AutoStager");
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        v15 = v20;
        if (v110 | v19)
        {
          v9 = v108;
          if (v26)
          {
            v27 = [(MADAutoAssetStager *)self summary];
            v28 = [(MADAutoAssetStager *)self _targetNameActive];
            v29 = [MANAutoAssetControlStagerInformation previousOTASituationName:v24];
            *buf = 138544386;
            v112 = v27;
            v113 = 2114;
            v114 = v28;
            v115 = 2114;
            v116 = v8;
            v117 = 2114;
            v118 = v16;
            v119 = 2114;
            v120 = v29;
            _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {%{public}@} [STAGING-CLIENT-REQUEST(DETERMINE)] have target-lookup-results | targetLookupResultsKey:@%{public}@ | targetOTASituation:%{public}@", buf, 0x34u);
          }

          v30 = [v108 stagingClientRequest];
          v31 = [v30 clientRequestMessage];
          v32 = [v31 message];

          v33 = [v108 stagingClientRequest];
          v34 = [v33 clientRequestMessage];
          v35 = [v34 messageName];

          v36 = [v32 safeObjectForKey:@"staging" ofClass:objc_opt_class()];
          v37 = _MADLog(@"AutoStager");
          v99 = v32;
          v100 = v36;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = [(MADAutoAssetStager *)self summary];
            v39 = [(MADAutoAssetStager *)self _targetNameActive];
            *buf = 138544386;
            v112 = v38;
            v113 = 2114;
            v114 = v39;
            v115 = 2114;
            v116 = v8;
            v117 = 2114;
            v118 = v35;
            v119 = 2114;
            v120 = v100;
            _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {%{public}@} [STAGING-CLIENT-REQUEST(DETERMINE)] have target-lookup-results | message:%{public}@%{public}@", buf, 0x34u);

            v36 = v100;
          }

          v98 = v35;
          [(MADAutoAssetStager *)self _logStagingDetails:v35 forStagingInfo:v36];
          v40 = [(MADAutoAssetStager *)self adoptTargetFromUpdateAttributes:v8 fromUpdateAttributes:v13 forGroupDetermine:1];
          v97 = [(MADAutoAssetStager *)self newStagingInfoWithGroupsAvailableForStaging:v8 indicatingHaveAvailable:1 usingTargetLookupKey:v16];
          v41 = [[NSString alloc] initWithFormat:@"already determined for target | targetKey:%@", v16];
          v42 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = [(MADAutoAssetStager *)self summary];
            v44 = [(MADAutoAssetStager *)self _targetNameActive];
            *buf = 138544130;
            v112 = v43;
            v113 = 2114;
            v114 = v44;
            v115 = 2114;
            v116 = v8;
            v117 = 2114;
            v118 = v41;
            _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {%{public}@} %{public}@", buf, 0x2Au);
          }

          [(MADAutoAssetStager *)self _logMilestoneFromLocation:v8 resultingInEvent:@"N" forMilestoneActivity:v41];
          v95 = [v108 stagingClientRequest];
          [v95 clientRequestMessage];
          v45 = v96 = v41;
          v46 = [v45 messageName];
          v47 = [(MADAutoAssetStager *)self assetTargetOSVersion];
          v48 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
          LOBYTE(v94) = 1;
          [MADAutoAssetHistory recordOperation:901 toHistoryType:4 fromLayer:4 fromClient:v46 forTargetOSVersion:v47 forTargetBuildVersion:v48 isRequired:v94];

          v49 = [v108 stagingClientRequest];
          [(MADAutoAssetStager *)self _replyToStagingClient:v8 withStagingInfo:v97 replyingToStagingRequest:v49 recordingOperation:9999];

          v14 = v102;
          v50 = v106;
          v19 = v107;
          v51 = v99;
          goto LABEL_54;
        }

        v9 = v108;
        if (v26)
        {
          v101 = [(MADAutoAssetStager *)self summary];
          v64 = [(MADAutoAssetStager *)self _targetNameActive];
          v65 = [MANAutoAssetControlStagerInformation previousOTASituationName:v24];
          *buf = 138544386;
          v112 = v101;
          v113 = 2114;
          v114 = v64;
          v115 = 2114;
          v116 = v8;
          v117 = 2114;
          v118 = v16;
          v119 = 2114;
          v120 = v65;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {%{public}@} [STAGING-CLIENT-REQUEST(DETERMINE)] no target-lookup-results even though already determined | targetLookupResultsKey:@%{public}@ | targetOTASituation:%{public}@", buf, 0x34u);
        }

        v14 = v102;
        [(MADAutoAssetStager *)self _persistEraseLookupResults:v8 forTargetTrainName:v102 forTargetRestoreVersion:v15];
        if (!v5)
        {
          goto LABEL_51;
        }

LABEL_48:
        [(MADAutoAssetStager *)self setStagingClientChosen:1];
        [(MADAutoAssetStager *)self setStagingClientUsingGroups:1];
        v84 = [(MADAutoAssetStager *)self persistedState];
        v85 = [v84 persistedConfig];
        [v85 persistBoolean:-[MADAutoAssetStager stagingClientUsingGroups](self forKey:"stagingClientUsingGroups") shouldPersist:{@"modeByGroups", 1}];

        v86 = [v9 stagingClientRequest];
        [(MADAutoAssetStager *)self _acceptStagingClientRequest:v86 fromLocation:v8 adoptingSpecifiedTarget:0];

        v51 = [(MADAutoAssetStager *)self autoStagerFSM];
        v87 = [MADAutoAssetStagerParam alloc];
        v88 = [(MADAutoAssetStager *)self _updateLatestSummary];
        v89 = [(MADAutoAssetStagerParam *)v87 initWithSafeSummary:v88];
        [v51 followupEvent:@"ModeGroupsDetermineStart" withInfo:v89];

LABEL_53:
        v50 = v106;
        v19 = v107;
        goto LABEL_54;
      }

      v15 = v20;
      if (v23 > 299)
      {
        v9 = v108;
        if ((v23 - 300) >= 2)
        {
          if ((v23 - 500) < 2 || (v23 - 401) <= 1)
          {
            v66 = _MADLog(@"AutoStager");
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              [(MADAutoAssetStager *)self summary];
              v68 = v67 = v66;
              [(MADAutoAssetStager *)self _targetNameActive];
              v69 = v103 = v14;
              v70 = [MANAutoAssetControlStagerInformation previousOTASituationName:v24];
              *buf = 138544386;
              v112 = v68;
              v113 = 2114;
              v114 = v69;
              v115 = 2114;
              v116 = v8;
              v117 = 2114;
              v118 = v16;
              v119 = 2114;
              v120 = v70;
              v71 = "%{public}@\n[%{public}@] {%{public}@} [STAGING-CLIENT-REQUEST(DETERMINE)] target-lookup-results beyond PSUS-DETERMINE phase | targetLookupResultsKey:@%{public}@ | targetOTASituation:%{public}@";
LABEL_39:
              _os_log_impl(&dword_0, v67, OS_LOG_TYPE_DEFAULT, v71, buf, 0x34u);

              v14 = v103;
              v66 = v67;
            }

LABEL_50:

LABEL_51:
            v90 = [v9 stagingClientRequest];
            [(MADAutoAssetStager *)self _replyNoCandidates:v8 replyingToStagingRequest:v90];

            v51 = _MADLog(@"AutoStager");
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              v91 = [(MADAutoAssetStager *)self summary];
              v92 = [(MADAutoAssetStager *)self _targetNameActive];
              *buf = 138543874;
              v112 = v91;
              v113 = 2114;
              v114 = v92;
              v115 = 2114;
              v116 = v8;
              _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {%{public}@} [STAGING-CLIENT-REQUEST(DETERMINE)] when GROUP-MODE and beyond determine phase | [NO-CANDIDATES]", buf, 0x20u);
            }

            goto LABEL_53;
          }

LABEL_58:
          v93 = _MADLog(@"AutoStager");
          if (v5)
          {
            v80 = v93;
            if (!os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_47;
            }

            [(MADAutoAssetStager *)self summary];
            v73 = v77 = v80;
            [(MADAutoAssetStager *)self _targetNameActive];
            v74 = v104 = v14;
            v75 = [MANAutoAssetControlStagerInformation previousOTASituationName:v24];
            *buf = 138544386;
            v112 = v73;
            v113 = 2114;
            v114 = v74;
            v115 = 2114;
            v116 = v8;
            v117 = 2114;
            v118 = v16;
            v119 = 2114;
            v120 = v75;
            v76 = "%{public}@\n[%{public}@] {%{public}@} [STAGING-CLIENT-REQUEST(DETERMINE)] unknown target-OTA-situation (re-running PSUS-DETERMINE) | targetLookupResultsKey:@%{public}@ | targetOTASituation:%{public}@";
            v78 = v77;
            v79 = OS_LOG_TYPE_ERROR;
            goto LABEL_43;
          }

          v66 = v93;
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
          {
            [(MADAutoAssetStager *)self summary];
            v68 = v67 = v66;
            [(MADAutoAssetStager *)self _targetNameActive];
            v69 = v103 = v14;
            v70 = [MANAutoAssetControlStagerInformation previousOTASituationName:v24];
            *buf = 138544386;
            v112 = v68;
            v113 = 2114;
            v114 = v69;
            v115 = 2114;
            v116 = v8;
            v117 = 2114;
            v118 = v16;
            v119 = 2114;
            v120 = v70;
            v71 = "%{public}@\n[%{public}@] {%{public}@} [STAGING-CLIENT-REQUEST(DETERMINE)] PSUS-DETERMINE results not considered valid | targetLookupResultsKey:@%{public}@ | targetOTASituation:%{public}@";
            goto LABEL_39;
          }

          goto LABEL_50;
        }
      }

      else
      {
        v9 = v108;
        if ((v23 - 100) >= 2 && v23 != 202 && v23 != 204)
        {
          goto LABEL_58;
        }
      }

      log = _MADLog(@"AutoStager");
      v72 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        if (!v72)
        {
          v80 = log;
          goto LABEL_47;
        }

        v73 = [(MADAutoAssetStager *)self summary];
        [(MADAutoAssetStager *)self _targetNameActive];
        v74 = v104 = v14;
        v75 = [MANAutoAssetControlStagerInformation previousOTASituationName:v24];
        *buf = 138544386;
        v112 = v73;
        v113 = 2114;
        v114 = v74;
        v115 = 2114;
        v116 = v8;
        v117 = 2114;
        v118 = v16;
        v119 = 2114;
        v120 = v75;
        v76 = "%{public}@\n[%{public}@] {%{public}@} [STAGING-CLIENT-REQUEST(DETERMINE)] re-running PSUS-DETERMINE | targetLookupResultsKey:@%{public}@ | targetOTASituation:%{public}@";
        v77 = log;
        v78 = log;
        v79 = OS_LOG_TYPE_DEFAULT;
LABEL_43:
        _os_log_impl(&dword_0, v78, v79, v76, buf, 0x34u);

        v14 = v104;
        v80 = v77;
LABEL_47:

        [(MADAutoAssetStager *)self _persistEraseLookupResults:v8 forTargetTrainName:v14 forTargetRestoreVersion:v15];
        goto LABEL_48;
      }

      if (v72)
      {
        v81 = [(MADAutoAssetStager *)self summary];
        [(MADAutoAssetStager *)self _targetNameActive];
        v82 = v105 = v14;
        v83 = [MANAutoAssetControlStagerInformation previousOTASituationName:v24];
        *buf = 138544386;
        v112 = v81;
        v113 = 2114;
        v114 = v82;
        v115 = 2114;
        v116 = v8;
        v117 = 2114;
        v118 = v16;
        v119 = 2114;
        v120 = v83;
        v66 = log;
        _os_log_impl(&dword_0, log, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {%{public}@} [STAGING-CLIENT-REQUEST(DETERMINE)] PSUS-DETERMINE results not considered valid | targetLookupResultsKey:@%{public}@ | targetOTASituation:%{public}@", buf, 0x34u);

        v14 = v105;
      }

      else
      {
        v66 = log;
      }

      goto LABEL_50;
    }

    v54 = [(MADAutoAssetStager *)self autoStagerFSM];
    v55 = [v54 diag];
    v56 = [[NSString alloc] initWithFormat:@"{%@} by-group request without updateAttributes", v8];
    [v55 trackAnomaly:@"AUTO-STAGER" forReason:v56 withResult:6102 withError:0];

    v52 = [v9 stagingClientRequest];
    v53 = [[NSString alloc] initWithFormat:@"{%@} received staging-client-request is not valid - missing updateAttributes", v8];
    [(MADAutoAssetStager *)self _replyToStagingClient:v8 replyingToRequest:v52 withErrorCode:6102 withUnderlyingError:0 withDescription:v53];
    goto LABEL_18;
  }

  [(MADAutoAssetStager *)self _replyNoCandidates:v8 replyingToStagingRequest:v12];

  v13 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v52 = [(MADAutoAssetStager *)self summary];
    v53 = [(MADAutoAssetStager *)self _targetNameActive];
    *buf = 138543874;
    v112 = v52;
    v113 = 2114;
    v114 = v53;
    v115 = 2114;
    v116 = v8;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {%{public}@} [STAGING-CLIENT-REQUEST(DETERMINE)] when ALL-MODE and already determined | [NO-CANDIDATES]", buf, 0x20u);
LABEL_18:
  }

LABEL_57:
}

- (id)_adjustPallasResponseBasedOnPreferences:(id)a3
{
  v4 = a3;
  v5 = +[MADAutoAssetControlManager preferenceStagerDeterminePallasResponseFewer];
  v6 = v4;
  v7 = v6;
  v8 = v6;
  v46 = v5;
  if (v5 >= 1)
  {
    v9 = [(MADAutoAssetStagerParam *)v6 autoAssetCatalog];

    v8 = v7;
    if (v9)
    {
      v10 = objc_alloc_init(NSMutableDictionary);
      v8 = v7;
      if (v10)
      {
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        obj = [(MADAutoAssetStagerParam *)v7 autoAssetCatalog];
        v11 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
        if (v11)
        {
          v13 = v11;
          v48 = *v50;
          *&v12 = 138543618;
          v43 = v12;
          v44 = self;
          v45 = v7;
          do
          {
            v14 = 0;
            do
            {
              if (*v50 != v48)
              {
                objc_enumerationMutation(obj);
              }

              v15 = *(*(&v49 + 1) + 8 * v14);
              v16 = objc_autoreleasePoolPush();
              v17 = [(MADAutoAssetStagerParam *)v7 autoAssetCatalog];
              v18 = [v17 objectForKey:v15];

              if (v15)
              {
                v19 = v18 == 0;
              }

              else
              {
                v19 = 1;
              }

              if (v19)
              {
                v20 = _MADLog(@"AutoStager");
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  v21 = [(MADAutoAssetStager *)self _updateLatestSummary];
                  v22 = v21;
                  v23 = @"N";
                  if (v15)
                  {
                    v24 = v15;
                  }

                  else
                  {
                    v24 = @"N";
                  }

                  *buf = 138543874;
                  v54 = v21;
                  if (v18)
                  {
                    v23 = @"Y";
                  }

                  v55 = 2114;
                  v56 = v24;
                  v57 = 2114;
                  v58 = v23;
                  v25 = v20;
                  v26 = "%{public}@\n[AUTO-STAGER] {_adjustPallasResponseBasedOnPreferences} unable to determine key/value from set-catalog | setCatalogKey:%{public}@ | setCatalogValue:%{public}@";
                  v27 = 32;
LABEL_21:
                  _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, v26, buf, v27);
                }

LABEL_22:

                goto LABEL_33;
              }

              if ([SUCore stringIsEqual:v15 to:@"Assets"])
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v20 = _MADLog(@"AutoStager");
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                  {
                    v22 = [(MADAutoAssetStager *)self _updateLatestSummary];
                    *buf = v43;
                    v54 = v22;
                    v55 = 2114;
                    v56 = v15;
                    v25 = v20;
                    v26 = "%{public}@\n[AUTO-STAGER] {_adjustPallasResponseBasedOnPreferences} key value is not an array | setCatalogKey:%{public}@";
                    v27 = 22;
                    goto LABEL_21;
                  }

                  goto LABEL_22;
                }

                v29 = v10;
                v30 = objc_alloc_init(NSMutableArray);
                v31 = [v18 count];
                v32 = v31 - v46;
                if (v31 > v46 && v32 >= 1)
                {
                  for (i = 0; i != v32; ++i)
                  {
                    v34 = [v18 objectAtIndex:{i, v43}];
                    if (v34)
                    {
                      [v30 addObject:v34];
                    }
                  }
                }

                v10 = v29;
                [v29 setObject:v30 forKey:{v15, v43}];

                self = v44;
                v7 = v45;
              }

              else
              {
                [v10 setObject:v18 forKey:v15];
              }

LABEL_33:

              objc_autoreleasePoolPop(v16);
              v14 = v14 + 1;
            }

            while (v14 != v13);
            v35 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
            v13 = v35;
          }

          while (v35);
        }

        v36 = [MADAutoAssetStagerParam alloc];
        v37 = [(MADAutoAssetStagerParam *)v7 baseForStagingDescriptors];
        v38 = [(MADAutoAssetStagerParam *)v7 operationError];
        v8 = [(MADAutoAssetStagerParam *)v36 initWithAutoAssetCatalog:v10 withBaseForStagingDescriptors:v37 withOperationError:v38];

        v39 = [(MADAutoAssetStagerParam *)v7 jobInformation];

        if (v39)
        {
          v40 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = [(MADAutoAssetStagerParam *)v7 summary];
            *buf = 138543362;
            v54 = v41;
            _os_log_impl(&dword_0, v40, OS_LOG_TYPE_ERROR, "[CATALOG-LOOKUP-ADJUST] job provided jobInformation dropped | eventInfo:%{public}@", buf, 0xCu);
          }
        }
      }
    }
  }

  return v8;
}

- (void)_stagingClientRequestDetermineTrack:(id)a3 trackingRequest:(id)a4 forStagingTargetName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MADAutoAssetStager *)self autoStagerFSM];
  v12 = [v11 extendedStateQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [(MADAutoAssetStager *)self _stagingClientRequestDetermineLocate:v8 forStagingTargetName:v10];
  if (v13)
  {
    v14 = [(MADAutoAssetStager *)self _stagingClientRequestDetermineClear:v8 forStagingTargetName:v10 replyingToCleared:1];
  }

  v15 = [(MADAutoAssetStager *)self stagingClientDetermineRequests];
  [v15 setSafeObject:v9 forKey:v10];

  v16 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(MADAutoAssetStager *)self summary];
    v18 = [(MADAutoAssetStager *)self stagingClientDetermineRequests];
    v19 = [v18 count];
    v20 = [v9 summary];
    v21 = 138544386;
    v22 = v17;
    v23 = 2114;
    v24 = v10;
    v25 = 2114;
    v26 = v8;
    v27 = 2048;
    v28 = v19;
    v29 = 2114;
    v30 = v20;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {%{public}@} [STAGING-CLIENT-REQUEST(DETERMINE)] | TRACKED++ | DetermineRequests:%ld | determineRequest:%{public}@", &v21, 0x34u);
  }
}

- (id)_stagingClientRequestDetermineLocate:(id)a3 forStagingTargetName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetStager *)self autoStagerFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(MADAutoAssetStager *)self stagingClientDetermineRequests];
  v11 = [v10 safeObjectForKey:v7 ofClass:objc_opt_class()];

  v12 = _MADLog(@"AutoStager");
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (!v13)
    {
      goto LABEL_7;
    }

    v14 = [(MADAutoAssetStager *)self summary];
    v15 = [(MADAutoAssetStager *)self stagingClientDetermineRequests];
    v16 = [v15 count];
    v17 = [v11 summary];
    v20 = 138544386;
    v21 = v14;
    v22 = 2114;
    v23 = v7;
    v24 = 2114;
    v25 = v6;
    v26 = 2048;
    v27 = v16;
    v28 = 2114;
    v29 = v17;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {%{public}@} [STAGING-CLIENT-REQUEST(DETERMINE)] | LOCATED | DetermineRequests:%ld | locatedRequest:%{public}@", &v20, 0x34u);
  }

  else
  {
    if (!v13)
    {
      goto LABEL_7;
    }

    v14 = [(MADAutoAssetStager *)self summary];
    v18 = [(MADAutoAssetStager *)self stagingClientDetermineRequests];
    v20 = 138544130;
    v21 = v14;
    v22 = 2114;
    v23 = v7;
    v24 = 2114;
    v25 = v6;
    v26 = 2048;
    v27 = [v18 count];
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {%{public}@} [STAGING-CLIENT-REQUEST(DETERMINE)] | LOCATE-NOT-TRACKED | DetermineRequests:%ld", &v20, 0x2Au);
  }

LABEL_7:

  return v11;
}

- (id)_stagingClientRequestDetermineClear:(id)a3 forStagingTargetName:(id)a4 replyingToCleared:(BOOL)a5
{
  v5 = a5;
  v43 = a3;
  v8 = a4;
  v9 = [(MADAutoAssetStager *)self autoStagerFSM];
  v10 = [v9 extendedStateQueue];
  dispatch_assert_queue_V2(v10);

  v11 = v8;
  if (v11)
  {
    v12 = [(MADAutoAssetStager *)self stagingClientDetermineRequests];
    v13 = [v12 safeObjectForKey:v11 ofClass:objc_opt_class()];

    v45 = v11;
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_23:
    v13 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [(MADAutoAssetStager *)self summary];
      v38 = [(MADAutoAssetStager *)self stagingClientDetermineRequests];
      v39 = [v38 count];
      *buf = 138544130;
      v51 = v37;
      v52 = 2114;
      v53 = v11;
      v54 = 2114;
      v55 = v43;
      v56 = 2048;
      v57 = v39;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {%{public}@} [STAGING-CLIENT-REQUEST(DETERMINE)] | CLEAR-NOT-TRACKED | DetermineRequests:%ld", buf, 0x2Au);
    }

    goto LABEL_25;
  }

  v41 = v5;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v20 = [(MADAutoAssetStager *)self stagingClientDetermineRequests];
  v21 = [v20 countByEnumeratingWithState:&v46 objects:v60 count:16];
  if (v21)
  {
    v22 = v21;
    v45 = 0;
    v13 = 0;
    v23 = *v47;
    v42 = v20;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v47 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v46 + 1) + 8 * i);
        v26 = [(MADAutoAssetStager *)self stagingClientDetermineRequests];
        v27 = [v26 safeObjectForKey:v25 ofClass:objc_opt_class()];

        if (v27)
        {
          if (v13)
          {
            v28 = _MADLog(@"AutoStager");
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = [(MADAutoAssetStager *)self summary];
              v44 = [(MADAutoAssetStager *)self stagingClientDetermineRequests];
              v30 = v22;
              v31 = v23;
              v32 = self;
              v33 = v13;
              v34 = [v44 count];
              v35 = [v27 summary];
              *buf = 138544130;
              v51 = v29;
              v52 = 2114;
              v53 = v43;
              v54 = 2048;
              v55 = v34;
              v13 = v33;
              self = v32;
              v23 = v31;
              v22 = v30;
              v56 = 2114;
              v57 = v35;
              _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%{public}@\n{%{public}@} [STAGING-CLIENT-REQUEST(DETERMINE)] | CLEAR-AMBIGUOUS | DetermineRequests:%ld | notConsideredRequest:%{public}@", buf, 0x2Au);

              v20 = v42;
            }
          }

          else
          {
            v13 = v27;
            v36 = v25;
            v28 = v45;
            v45 = v36;
          }
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v46 objects:v60 count:16];
    }

    while (v22);
  }

  else
  {
    v45 = 0;
    v13 = 0;
  }

  v11 = 0;
  v5 = v41;
  if (!v13)
  {
    goto LABEL_23;
  }

LABEL_3:
  v14 = [(MADAutoAssetStager *)self stagingClientDetermineRequests];
  [v14 removeObjectForKey:v45];

  v15 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(MADAutoAssetStager *)self summary];
    v17 = [(MADAutoAssetStager *)self stagingClientDetermineRequests];
    v18 = [v17 count];
    v19 = [v13 summary];
    *buf = 138544386;
    v51 = v16;
    v52 = 2114;
    v53 = v45;
    v54 = 2114;
    v55 = v43;
    v56 = 2048;
    v57 = v18;
    v58 = 2114;
    v59 = v19;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {%{public}@} [STAGING-CLIENT-REQUEST(DETERMINE)] | TRACKED-- | DetermineRequests:%ld | clearedRequest:%{public}@", buf, 0x34u);
  }

  if (v5)
  {
    [(MADAutoAssetStager *)self _replyNoCandidates:v43 replyingToStagingRequest:v13];
LABEL_25:

    v13 = 0;
  }

  return v13;
}

- (void)_stagingClientRequestDetermineClearAll:(id)a3
{
  v27 = a3;
  v4 = [(MADAutoAssetStager *)self autoStagerFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(MADAutoAssetStager *)self stagingClientDetermineRequests];
  v6 = [obj countByEnumeratingWithState:&v28 objects:v42 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v29;
    *&v7 = 138544386;
    v23 = v7;
    v10 = @"received staging-client-request resulting in cancel of all active determine requests";
    v24 = self;
    do
    {
      v11 = 0;
      v25 = v8;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * v11);
        v13 = [(MADAutoAssetStager *)self stagingClientDetermineRequests];
        v14 = [v13 safeObjectForKey:v12 ofClass:objc_opt_class()];

        if (v14)
        {
          v15 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [(MADAutoAssetStager *)self summary];
            v17 = [(MADAutoAssetStager *)self stagingClientDetermineRequests];
            v18 = v10;
            v19 = [v17 count];
            [v14 summary];
            v21 = v20 = v9;
            *buf = v23;
            v33 = v16;
            v34 = 2114;
            v35 = v12;
            v36 = 2114;
            v37 = v27;
            v38 = 2048;
            v39 = v19;
            v10 = v18;
            v40 = 2114;
            v41 = v21;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {%{public}@} [STAGING-CLIENT-REQUEST(DETERMINE)] | CLEARED-ALL | DetermineRequests:%ld | nextClearedRequest:%{public}@", buf, 0x34u);

            v8 = v25;
            v9 = v20;
            self = v24;
          }

          [(MADAutoAssetStager *)self _replyToStagingClient:v27 replyingToRequest:v14 withErrorCode:6609 withUnderlyingError:0 withDescription:v10];
        }

        v11 = v11 + 1;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v28 objects:v42 count:16];
    }

    while (v8);
  }

  v22 = objc_alloc_init(NSMutableDictionary);
  [(MADAutoAssetStager *)self setStagingClientDetermineRequests:v22];
}

- (void)_stagingClientRequestDownloadTrack:(id)a3 trackingRequest:(id)a4 forStagingTargetName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MADAutoAssetStager *)self autoStagerFSM];
  v12 = [v11 extendedStateQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [(MADAutoAssetStager *)self stagingClientDownloadRequest];
  if (v13)
  {
    v14 = [(MADAutoAssetStager *)self _stagingClientRequestDownloadClear:v8 forStagingTargetName:v10 replyingToCleared:1];
  }

  [(MADAutoAssetStager *)self setStagingClientDownloadRequest:v9];
  v15 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(MADAutoAssetStager *)self summary];
    v17 = [v9 summary];
    v18 = 138544130;
    v19 = v16;
    v20 = 2114;
    v21 = v10;
    v22 = 2114;
    v23 = v8;
    v24 = 2114;
    v25 = v17;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {%{public}@} [STAGING-CLIENT-REQUEST(DOWNLOAD)] | TRACKED | downloadRequest:%{public}@", &v18, 0x2Au);
  }
}

- (id)_stagingClientRequestDownloadCurrent:(id)a3 forStagingTargetName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetStager *)self autoStagerFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(MADAutoAssetStager *)self stagingClientDownloadRequest];
  v11 = _MADLog(@"AutoStager");
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (!v12)
    {
      goto LABEL_7;
    }

    v13 = [(MADAutoAssetStager *)self summary];
    v14 = [v10 summary];
    v16 = 138544130;
    v17 = v13;
    v18 = 2114;
    v19 = v7;
    v20 = 2114;
    v21 = v6;
    v22 = 2114;
    v23 = v14;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {%{public}@} [STAGING-CLIENT-REQUEST(DOWNLOAD)] | LOCATED | locatedRequest:%{public}@", &v16, 0x2Au);
  }

  else
  {
    if (!v12)
    {
      goto LABEL_7;
    }

    v13 = [(MADAutoAssetStager *)self summary];
    v16 = 138543874;
    v17 = v13;
    v18 = 2114;
    v19 = v7;
    v20 = 2114;
    v21 = v6;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {%{public}@} [STAGING-CLIENT-REQUEST(DOWNLOAD)] | LOCATE-NOT-TRACKED", &v16, 0x20u);
  }

LABEL_7:

  return v10;
}

- (id)_stagingClientRequestDownloadClear:(id)a3 forStagingTargetName:(id)a4 replyingToCleared:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(MADAutoAssetStager *)self autoStagerFSM];
  v11 = [v10 extendedStateQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [(MADAutoAssetStager *)self stagingClientDownloadRequest];
  if (!v12)
  {
    v13 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(MADAutoAssetStager *)self summary];
      v19 = 138543874;
      v20 = v17;
      v21 = 2114;
      v22 = v9;
      v23 = 2114;
      v24 = v8;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {%{public}@} [STAGING-CLIENT-REQUEST(DOWNLOAD)] | CLEAR-NOT-TRACKED", &v19, 0x20u);
    }

    goto LABEL_8;
  }

  v13 = v12;
  [(MADAutoAssetStager *)self setStagingClientDownloadRequest:0];
  [(MADAutoAssetStager *)self setStagingClientCompleteOnceRequired:0];
  v14 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(MADAutoAssetStager *)self summary];
    v16 = [v13 summary];
    v19 = 138544130;
    v20 = v15;
    v21 = 2114;
    v22 = v9;
    v23 = 2114;
    v24 = v8;
    v25 = 2114;
    v26 = v16;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {%{public}@} [STAGING-CLIENT-REQUEST(DOWNLOAD)] | CLEARED | clearedRequest:%{public}@", &v19, 0x2Au);
  }

  if (v5)
  {
    [(MADAutoAssetStager *)self _replyNothingStaged:v8 replyingToStagingRequest:v13];
LABEL_8:

    v13 = 0;
  }

  return v13;
}

- (void)_stagingClientRequestDownloadPurged:(id)a3
{
  v8 = a3;
  v4 = [(MADAutoAssetStager *)self autoStagerFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  if (![(MADAutoAssetStager *)self stagingClientUsingGroups])
  {
    v7 = [(MADAutoAssetStager *)self _stagingClientRequestGeneralClear:v8 replyingToCleared:0];
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = [(MADAutoAssetStager *)self _targetNameActiveClient];
  v7 = [(MADAutoAssetStager *)self _stagingClientRequestDownloadClear:v8 forStagingTargetName:v6 replyingToCleared:0];

  if (v7)
  {
LABEL_5:
    [(MADAutoAssetStager *)self _replyToStagingClient:v8 replyingToRequest:v7 withErrorCode:6609 withUnderlyingError:0 withDescription:@"received staging-client-request to purge when download operation was in progress - download-available-for-staging canceled"];
  }

LABEL_6:
}

- (void)_stagingClientRequestGeneralTrack:(id)a3 trackingRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetStager *)self autoStagerFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(MADAutoAssetStager *)self stagingClientRequest];
  if (v10)
  {
    v11 = [(MADAutoAssetStager *)self _stagingClientRequestGeneralClear:v6 replyingToCleared:1];
  }

  [(MADAutoAssetStager *)self setStagingClientRequest:v7];
  v12 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(MADAutoAssetStager *)self summary];
    v14 = [v7 summary];
    v15 = 138543874;
    v16 = v13;
    v17 = 2114;
    v18 = v6;
    v19 = 2114;
    v20 = v14;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@\n{%{public}@} [STAGING-CLIENT-REQUEST(GENERAL)] | TRACKED | generalRequest:%{public}@", &v15, 0x20u);
  }
}

- (id)_stagingClientRequestGeneralCurrent:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetStager *)self stagingClientRequest];
  v8 = _MADLog(@"AutoStager");
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    v10 = [(MADAutoAssetStager *)self summary];
    v11 = [v7 summary];
    v13 = 138543874;
    v14 = v10;
    v15 = 2114;
    v16 = v4;
    v17 = 2114;
    v18 = v11;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@\n{%{public}@} [STAGING-CLIENT-REQUEST(GENERAL)] | LOCATED | locatedRequest:%{public}@", &v13, 0x20u);
  }

  else
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    v10 = [(MADAutoAssetStager *)self summary];
    v13 = 138543618;
    v14 = v10;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@\n{%{public}@} [STAGING-CLIENT-REQUEST(GENERAL)] | LOCATE-NOT-TRACKED", &v13, 0x16u);
  }

LABEL_7:

  return v7;
}

- (id)_stagingClientRequestGeneralClear:(id)a3 replyingToCleared:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MADAutoAssetStager *)self autoStagerFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(MADAutoAssetStager *)self stagingClientRequest];
  v10 = _MADLog(@"AutoStager");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v12 = [(MADAutoAssetStager *)self summary];
      v13 = [v9 summary];
      v16 = 138543874;
      v17 = v12;
      v18 = 2114;
      v19 = v6;
      v20 = 2114;
      v21 = v13;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@\n{%{public}@} [STAGING-CLIENT-REQUEST(GENERAL)] | CLEARED | clearedRequest:%{public}@", &v16, 0x20u);
    }

    if (v4)
    {
      [(MADAutoAssetStager *)self _replyToStagingClient:v6 replyingToRequest:v9 withErrorCode:6601 withUnderlyingError:0 withDescription:@"staging-client-request has been replaced by more recent request"];

      v9 = 0;
    }

    [(MADAutoAssetStager *)self setStagingClientRequest:0];
  }

  else
  {
    if (v11)
    {
      v14 = [(MADAutoAssetStager *)self summary];
      v16 = 138543618;
      v17 = v14;
      v18 = 2114;
      v19 = v6;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@\n{%{public}@} [STAGING-CLIENT-REQUEST(GENERAL)] | CLEAR-NOT-TRACKED", &v16, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (void)_logStagingDetails:(id)a3 forStagingInfo:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(MADAutoAssetStager *)self autoStagerFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  if (objc_opt_respondsToSelector())
  {
    [v6 fullDescription:v9 usingLogger:0];
  }
}

- (void)_logStagingDetails:(id)a3 forStagedInfo:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(MADAutoAssetStager *)self autoStagerFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  if (objc_opt_respondsToSelector())
  {
    [v6 fullDescription:v9 usingLogger:0];
  }
}

- (void)_updateDescriptor:(id)a3 withLatestJobStatus:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetStager *)self autoStagerFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "{MADAutoAssetStager-_updateDescriptor} WARNING: wrong class provided as latestStatus", v15, 2u);
    }
  }

  if (v7)
  {
    [v6 setNeverBeenLocked:{objc_msgSend(v7, "neverBeenLocked")}];
    [v6 setDownloadUserInitiated:{objc_msgSend(v7, "downloadUserInitiated")}];
    [v6 setDownloadedNetworkBytes:{objc_msgSend(v7, "downloadedNetworkBytes")}];
    if (![v6 downloadedNetworkBytes])
    {
      [v6 setDownloadedNetworkBytes:{objc_msgSend(v6, "downloadedFilesystemBytes")}];
    }

    [v6 setDownloadedFilesystemBytes:{objc_msgSend(v7, "downloadedFilesystemBytes")}];
    v11 = [v7 patchedFromBaseSelector];
    [v6 setPatchedFromBaseSelector:v11];

    [v6 setPatchedFromBaseFilesystemBytes:{objc_msgSend(v7, "patchedFromBaseFilesystemBytes")}];
    [v6 setPatchingAttempted:{objc_msgSend(v7, "patchingAttempted")}];
    v12 = [v7 patchingAttemptError];
    [v6 setPatchingAttemptError:v12];
  }

  [v6 setStagedPriorToAvailable:1];
  v13 = [(MADAutoAssetStager *)self stagingFromOSVersion];
  [v6 setStagedFromOSVersion:v13];

  v14 = [(MADAutoAssetStager *)self stagingFromBuildVersion];
  [v6 setStagedFromBuildVersion:v14];
}

- (void)_startDetermineJobForNextCandidate:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetStager *)self candidateSetConfigurations];
  v8 = [v7 count];

  if (!v8)
  {
    v28 = [(MADAutoAssetStager *)self autoStagerFSM];
    v29 = [v28 diag];
    v30 = [[NSString alloc] initWithFormat:@"{%@:_startDetermineJobForNextCandidate} no candidateSetConfigurations", v4];
    [v29 trackAnomaly:@"AUTO-STAGER" forReason:v30 withResult:6108 withError:0];

    goto LABEL_11;
  }

  v9 = [(MADAutoAssetStager *)self candidateSetConfigurations];
  v10 = [v9 objectAtIndex:0];
  [(MADAutoAssetStager *)self setActiveSetJobConfiguration:v10];

  v11 = [(MADAutoAssetStager *)self candidateSetConfigurations];
  [v11 removeObjectAtIndex:0];

  v12 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(MADAutoAssetStager *)self summary];
    v14 = [(MADAutoAssetStager *)self activeSetJobConfiguration];
    v15 = [v14 summary];
    *buf = 138543874;
    v32 = v13;
    v33 = 2114;
    v34 = v4;
    v35 = 2114;
    v36 = v15;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {%{public}@:_startDetermineJobForNextCandidate} begin determine-if-available | stagerSetConfiguration:%{public}@", buf, 0x20u);
  }

  v16 = [(MADAutoAssetStager *)self activeSetJobConfiguration];
  v17 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  v18 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  v19 = [(MADAutoAssetStager *)self assetTargetTrainName];
  v20 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  [MADAutoAssetControlManager stagerStartSetJobDetermineIfAvailable:v16 withAssetTargetOSVersion:v17 withAssetTargetBuildVersion:v18 withAssetTargetTrainName:v19 withAssetTargetRestoreVersion:v20];

  v21 = [(MADAutoAssetStager *)self candidateSetConfigurations];
  if ([v21 count])
  {
    goto LABEL_9;
  }

  v22 = +[MADAutoAssetControlManager preferenceStagerDetermineLastRequiredTimesOut];

  if (v22)
  {
    v23 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [(MADAutoAssetStager *)self summary];
      *buf = 138543618;
      v32 = v24;
      v33 = 2114;
      v34 = v4;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {%{public}@:_startDetermineJobForNextCandidate} !!!!! SIMULATED TIMEOUT !!!!!", buf, 0x16u);
    }

    v21 = [(MADAutoAssetStager *)self autoStagerFSM];
    v25 = [MADAutoAssetStagerParam alloc];
    v26 = [(MADAutoAssetStager *)self determineTimeoutUUID];
    v27 = [(MADAutoAssetStagerParam *)v25 initWithTimerUUID:v26];
    [v21 postEvent:@"TimerFiredDetermining" withInfo:v27];

LABEL_9:
  }

LABEL_11:
}

- (void)_cancelCurrentJob
{
  v3 = [(MADAutoAssetStager *)self autoStagerFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(MADAutoAssetStager *)self activeJobDescriptor];

  if (v5)
  {
    v20 = [(MADAutoAssetStager *)self activeJobDescriptor];
    v6 = [v20 assetId];
    v7 = [MAAutoAssetSelector alloc];
    v8 = [(MADAutoAssetStager *)self activeJobDescriptor];
    v9 = [v8 assetType];
    v10 = [(MADAutoAssetStager *)self activeJobDescriptor];
    v11 = [v10 assetSpecifier];
    v12 = [(MADAutoAssetStager *)self activeJobDescriptor];
    v13 = [v12 assetVersion];
    v14 = [v7 initForAssetType:v9 withAssetSpecifier:v11 matchingAssetVersion:v13];
    v15 = [(MADAutoAssetStager *)self assetTargetOSVersion];
    v16 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
    [MADAutoAssetHistory recordOperation:804 toHistoryType:4 fromLayer:4 forAssetID:v6 withSelector:v14 forTargetOSVersion:v15 forTargetBuildVersion:v16];
  }

  else
  {
    v17 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(MADAutoAssetStager *)self summary];
      v19 = [(MADAutoAssetStager *)self _targetNameActive];
      *buf = 138543618;
      v22 = v18;
      v23 = 2114;
      v24 = v19;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {_cancelCurrentJob} cancel when no active-job-descriptor (determining)", buf, 0x16u);
    }
  }

  +[MADAutoAssetControlManager stagerCancelCurrentJob];
}

- (void)_clearBeforeDetermineAvailable:(id)a3 removingDetermined:(BOOL)a4
{
  v4 = a4;
  v16 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [[NSString alloc] initWithFormat:@"%@:_clearBeforeDetermineAvailable", v16];
  v9 = [(MADAutoAssetStager *)self activeJobDescriptor];

  if (v9)
  {
    v10 = [(MADAutoAssetStager *)self autoStagerFSM];
    v11 = [v10 diag];
    v12 = [NSString alloc];
    v13 = [(MADAutoAssetStager *)self activeJobDescriptor];
    v14 = [v13 summary];
    v15 = [v12 initWithFormat:@"{%@} stale activeJobDescriptor:%@", v8, v14];
    [v11 trackAnomaly:@"AUTO-STAGER" forReason:v15 withResult:6108 withError:0];

    [(MADAutoAssetStager *)self setActiveJobDescriptor:0];
  }

  if (![(MADAutoAssetStager *)self stagingClientUsingGroups])
  {
    [(MADAutoAssetStager *)self _clearAllTrackingOfActiveOperations:v16 alsoPerformingPurgeAll:1 removingDetermined:v4];
    [(MADAutoAssetStager *)self _removeAllStagedContent:v8];
    [(MADAutoAssetStager *)self _persistRemoveAll:v8 message:@"removed all persisted-state (before determining all available for staging)" removingDetermined:v4 loggingConfig:1];
  }
}

- (void)_clearRemoveByGroupTargets:(id)a3 removingDetermined:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MADAutoAssetStager *)self autoStagerFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [[NSString alloc] initWithFormat:@"%@:_clearRemoveByGroupTargets", v6];
  [(MADAutoAssetStager *)self _clearAllTrackingOfActiveOperations:v9 alsoPerformingPurgeAll:1 removingDetermined:v4];
  [(MADAutoAssetStager *)self _removeAllStagedContent:v9];
  [(MADAutoAssetStager *)self _persistRemoveAll:v9 message:@"removed all persisted-state (removing by-group targets)" removingDetermined:v4 loggingConfig:1];
}

- (void)_clearAllTrackingOfActiveOperations:(id)a3 alsoPerformingPurgeAll:(BOOL)a4 removingDetermined:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [(MADAutoAssetStager *)self autoStagerFSM];
  v10 = [v9 extendedStateQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [[NSString alloc] initWithFormat:@"%@:_clearAllTrackingOfActiveOperations", v8];
  if (v5)
  {
    [(MADAutoAssetStager *)self _stagingClientRequestDetermineClearAll:v11];
  }

  v12 = [(MADAutoAssetStager *)self _targetNameActiveClient];
  v13 = [(MADAutoAssetStager *)self _stagingClientRequestDownloadClear:v11 forStagingTargetName:v12 replyingToCleared:1];

  v14 = objc_alloc_init(NSMutableDictionary);
  [(MADAutoAssetStager *)self setDeterminingBySelector:v14];

  v15 = objc_alloc_init(NSMutableArray);
  [(MADAutoAssetStager *)self setAwaitingStagingAttempt:v15];

  if (!v6)
  {
    if (!v5)
    {
      if ([(MADAutoAssetStager *)self stagingClientUsingGroups])
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }

    goto LABEL_8;
  }

  if (![(MADAutoAssetStager *)self stagingClientUsingGroups]|| v5)
  {
LABEL_8:
    v16 = objc_alloc_init(NSMutableArray);
    [(MADAutoAssetStager *)self setCandidatesForStaging:v16];

    v17 = objc_alloc_init(NSMutableArray);
    [(MADAutoAssetStager *)self setCandidateSetConfigurations:v17];

    v18 = objc_alloc_init(NSMutableDictionary);
    [(MADAutoAssetStager *)self setSetLookupResults:v18];

    v19 = objc_alloc_init(NSMutableArray);
    [(MADAutoAssetStager *)self setAvailableForStaging:v19];

    [(MADAutoAssetStager *)self setOverallStagedTotalExpectedBytes:0];
  }

  if ([(MADAutoAssetStager *)self stagingClientUsingGroups])
  {
    if (v5)
    {
      v20 = objc_alloc_init(NSMutableDictionary);
      [(MADAutoAssetStager *)self setCandidatesForStagingRequiredByTarget:v20];

      v21 = objc_alloc_init(NSMutableDictionary);
      [(MADAutoAssetStager *)self setCandidatesForStagingOptionalByTarget:v21];

      v22 = objc_alloc_init(NSMutableDictionary);
      [(MADAutoAssetStager *)self setCandidateSetConfigurationsRequiredByTarget:v22];

      v23 = objc_alloc_init(NSMutableDictionary);
      [(MADAutoAssetStager *)self setCandidateSetConfigurationsOptionalByTarget:v23];

      [(MADAutoAssetStager *)self setAssetTargetGroupNames:0];
      [(MADAutoAssetStager *)self setActiveTargetUpdateAttributes:0];
      v24 = objc_alloc_init(NSCache);
      [(MADAutoAssetStager *)self setTargetLookupResults:v24];

      [(MADAutoAssetStager *)self setOptionalAssetSizeAllowed:&off_4F7790];
      v25 = objc_alloc_init(NSMutableDictionary);
      [(MADAutoAssetStager *)self setAvailableForStagingRequiredByTarget:v25];

      v26 = objc_alloc_init(NSMutableDictionary);
      [(MADAutoAssetStager *)self setAvailableForStagingOptionalByTarget:v26];

      v27 = objc_alloc_init(NSMutableArray);
      [(MADAutoAssetStager *)self setAvailableForStaging:v27];

      v28 = objc_alloc_init(NSMutableArray);
      [(MADAutoAssetStager *)self setAwaitingStagingAttempt:v28];

      v29 = [(MADAutoAssetStager *)self persistedState];
      v30 = [v29 persistedConfig];
      [v30 persistULL:0 forKey:@"determinedAvailableAssetCount" shouldPersist:0];

      v31 = _MADLog(@"AutoStager");
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      v32 = @"N";
      *buf = 138543874;
      v44 = v11;
      v45 = 2114;
      if (v6)
      {
        v32 = @"Y";
      }

      v46 = v32;
      v47 = 2114;
      v48 = @"Y";
      v33 = "{%{public}@} [GROUP-MODE] removed tracking of all previously determined targets | alsoPerformPurgeAll:%{public}@ removeDetermined:%{public}@";
LABEL_20:
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, v33, buf, 0x20u);
      goto LABEL_22;
    }

LABEL_16:
    v31 = _MADLog(@"AutoStager");
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v34 = @"Y";
    *buf = 138543874;
    v44 = v11;
    v45 = 2114;
    if (!v6)
    {
      v34 = @"N";
    }

    v46 = v34;
    v47 = 2114;
    v48 = @"N";
    v33 = "{%{public}@} [GROUP-MODE] preserved tracking of all previously determined targets | alsoPerformPurgeAll:%{public}@ removeDetermined:%{public}@";
    goto LABEL_20;
  }

LABEL_21:
  v35 = [(MADAutoAssetStager *)self persistedState];
  v36 = [v35 persistedConfig];
  v37 = [(MADAutoAssetStager *)self availableForStaging];
  [v36 persistULL:objc_msgSend(v37 forKey:"count") shouldPersist:{@"determinedAvailableAssetCount", 1}];

  v38 = objc_alloc_init(NSMutableArray);
  [(MADAutoAssetStager *)self setAvailableForStaging:v38];

  v31 = objc_alloc_init(NSMutableArray);
  [(MADAutoAssetStager *)self setAwaitingStagingAttempt:v31];
LABEL_22:

  if (v6)
  {
    if (![(MADAutoAssetStager *)self stagingClientUsingGroups])
    {
      [(MADAutoAssetStager *)self setStagingClientChosen:0];
      [(MADAutoAssetStager *)self setStagingClientUsingGroups:0];
      v39 = [(MADAutoAssetStager *)self persistedState];
      v40 = [v39 persistedConfig];
      [v40 persistBoolean:-[MADAutoAssetStager stagingClientUsingGroups](self forKey:"stagingClientUsingGroups") shouldPersist:{@"modeByGroups", 1}];

      [(MADAutoAssetStager *)self setDetermineTimeoutUUID:@"NONE"];
    }

    [(MADAutoAssetStager *)self setStagingClientCompleteOnceRequired:0];
    [(MADAutoAssetStager *)self _removeAllStagedContent:v11];
    [(MADAutoAssetStager *)self _persistRemoveAll:v11 message:@"removed all persisted-state (cleared all tracking and performed purge all)" removingDetermined:v5 loggingConfig:1];
    v41 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = @"N";
      *buf = 138543874;
      v44 = v11;
      v45 = 2114;
      if (v5)
      {
        v42 = @"Y";
      }

      v46 = @"Y";
      v47 = 2114;
      v48 = v42;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "{%{public}@} purged all previously staged content | alsoPerformPurgeAll:%{public}@ removeDetermined:%{public}@", buf, 0x20u);
    }
  }

  [(MADAutoAssetStager *)self _acknowlegdeAndClearAllEliminations];
}

- (void)_acknowlegdeAndClearAllEliminations
{
  v3 = [(MADAutoAssetStager *)self autoStagerFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(MADAutoAssetStager *)self eliminationSelectors];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [(MADAutoAssetStager *)self eliminationSelectors];
        v13 = [v12 safeObjectForKey:v10 ofClass:objc_opt_class()];

        v14 = [v13 assetType];
        v15 = [(MADAutoAssetStager *)self _isAssetTypeManagedAsSet:v14];

        if ((v15 & 1) == 0)
        {
          [(MADAutoAssetStager *)self notifyControlManagerEliminateDone:@"_acknowlegdeAndClearAllEliminations" forAssetSelector:v13];
        }

        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = objc_alloc_init(NSMutableDictionary);
  [(MADAutoAssetStager *)self setEliminationSelectors:v16];

  v17 = objc_alloc_init(NSMutableDictionary);
  [(MADAutoAssetStager *)self setEliminationSelectorsAcknowledged:v17];
}

- (void)_setupAwaitingStagingAndBeginFirstDownload
{
  v3 = [(MADAutoAssetStager *)self autoStagerFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
  v6 = objc_alloc_init(NSMutableArray);
  [(MADAutoAssetStager *)self setAwaitingStagingAttempt:v6];

  v7 = [(MADAutoAssetStager *)self persistedState];
  v8 = [v7 persistedConfig];
  [v8 persistULL:0 forKey:@"awaitingStagingAssetCount" shouldPersist:0];

  v9 = [(MADAutoAssetStager *)self availableForStaging];
  v10 = [v9 count];

  if (!v10)
  {
    v20 = [(MADAutoAssetStager *)self autoStagerFSM];
    v21 = [v20 diag];
    [v21 trackAnomaly:@"AUTO-STAGER" forReason:@"{_setupAwaitingStagingAndBeginFirstDownload} no auto-assets available for staging" withResult:6111 withError:0];

    v11 = [MAAutoAssetError buildError:6110 fromOperation:@"AUTO-CONTROL(_setupAwaitingStagingAndBeginFirstDownload)" underlyingError:0 withDescription:@"in state where should have availableforStaging yet have none"];
    v22 = [[MADAutoAssetStagerParam alloc] initWithJobInformation:0 withDownloadedDescriptor:0 withOperationError:v11];
    v23 = [(MADAutoAssetStager *)self autoStagerFSM];
    [v23 postEvent:@"JobDownloadForStagingFailure" withInfo:v22];

    goto LABEL_42;
  }

  v11 = objc_alloc_init(NSMutableDictionary);
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v12 = [(MADAutoAssetStager *)self availableForStaging];
  v13 = [v12 countByEnumeratingWithState:&v95 objects:v107 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v96;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v96 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v95 + 1) + 8 * i);
        if (v18)
        {
          v19 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
          [v19 addObject:v18];

          [(MADAutoAssetStager *)self trackSelectorForDescriptor:v18 inContainer:v11];
        }

        else
        {
          ++v15;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v95 objects:v107 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  v24 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [(MADAutoAssetStager *)self summary];
    v26 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
    v27 = [v26 count];
    v28 = [(MADAutoAssetStager *)self selectorContainerAsString:v11];
    *buf = 138544130;
    v100 = v25;
    v101 = 2048;
    v102 = v27;
    v103 = 2048;
    v104 = v15;
    v105 = 2114;
    v106 = v28;
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {_setupAwaitingStagingAndBeginFirstDownload} awaiting download attempt awaitingStagingAttempt:%ld | nilDescriptor:%ld\n>>> awaitingStaging:%{public}@", buf, 0x2Au);
  }

  [(MADAutoAssetStager *)self _logMilestoneFromLocation:@"_setupAwaitingStagingAndBeginFirstDownload" resultingInEvent:0 forMilestoneActivity:@"beginning to download for staging"];
  v29 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
  v30 = [v29 count];

  if (!v30 || (-[MADAutoAssetStager awaitingStagingAttempt](self, "awaitingStagingAttempt"), v31 = objc_claimAutoreleasedReturnValue(), [v31 objectAtIndex:0], v22 = objc_claimAutoreleasedReturnValue(), v31, !v22))
  {
    v51 = [(MADAutoAssetStager *)self autoStagerFSM];
    v52 = [v51 diag];
    [v52 trackAnomaly:@"AUTO-STAGER" forReason:@"{_setupAwaitingStagingAndBeginFirstDownload} unable to build awaitingStagingAttempt array" withResult:6111 withError:0];

    v22 = [MAAutoAssetError buildError:6110 fromOperation:@"AUTO-CONTROL(_setupAwaitingStagingAndBeginFirstDownload)" underlyingError:0 withDescription:@"unable to build awaitingStagingAttempt array"];
    v40 = [[MADAutoAssetStagerParam alloc] initWithJobInformation:0 withDownloadedDescriptor:0 withOperationError:v22];
    v53 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = [(MADAutoAssetStager *)self summary];
      v55 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
      v56 = [v55 count];
      *buf = 138543618;
      v100 = v54;
      v101 = 2048;
      v102 = v56;
      _os_log_impl(&dword_0, v53, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {_setupAwaitingStagingAndBeginFirstDownload} cleared awaiting staging (unable to locate first descriptor when awaitingStagingAttempt count:%ld)", buf, 0x16u);
    }

    v57 = objc_alloc_init(NSMutableArray);
    [(MADAutoAssetStager *)self setAwaitingStagingAttempt:v57];

    v58 = [(MADAutoAssetStager *)self persistedState];
    v59 = [v58 persistedConfig];
    v60 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
    [v59 persistULL:objc_msgSend(v60 forKey:"count") shouldPersist:{@"awaitingStagingAssetCount", 0}];

    v50 = [(MADAutoAssetStager *)self autoStagerFSM];
    [v50 postEvent:@"JobDownloadForStagingFailure" withInfo:v40];
    goto LABEL_41;
  }

  v32 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
  [v32 removeObjectAtIndex:0];

  v33 = [(MADAutoAssetStager *)self persistedState];
  v34 = [v33 persistedConfig];
  v35 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
  [v34 persistULL:objc_msgSend(v35 forKey:"count") shouldPersist:{@"awaitingStagingAssetCount", 0}];

  [(MADAutoAssetStager *)self setActiveJobDescriptor:v22];
  v36 = [MAAutoAssetSelector alloc];
  v37 = [(MADAutoAssetStagerParam *)v22 assetType];
  v38 = [(MADAutoAssetStagerParam *)v22 assetSpecifier];
  v39 = [(MADAutoAssetStagerParam *)v22 assetVersion];
  v40 = [v36 initForAssetType:v37 withAssetSpecifier:v38 matchingAssetVersion:v39];

  if ([(MADAutoAssetStager *)self stagingClientUsingGroups])
  {
    v41 = [(MADAutoAssetStager *)self assetTargetTrainName];
    v42 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
    v43 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v41 withRestoreVersion:v42];

    v44 = [(MADAutoAssetStager *)self getTargetLookupResultsForKey:v43];
    v45 = v44;
    if (v44)
    {
      v92 = v40;
      v46 = [v44 setLookupResults];
      v47 = [(MADAutoAssetStager *)self activeJobDescriptor];
      v48 = [v47 assetType];
      v49 = [v46 safeObjectForKey:v48 ofClass:objc_opt_class()];

      if (v49)
      {
        v50 = [v49 autoAssetSetCatalog];
      }

      else
      {
        v90 = [(MADAutoAssetStager *)self autoStagerFSM];
        v62 = [v90 diag];
        v63 = [NSString alloc];
        v89 = [(MADAutoAssetStager *)self activeJobDescriptor];
        v64 = [v89 assetType];
        v65 = [v45 summary];
        v66 = [v63 initWithFormat:@"{_setupAwaitingStagingAndBeginFirstDownload} no set-lookup-result for asset-type | assetType:%@ | trainTargetLookupResults:%@", v64, v65];
        [v62 trackAnomaly:@"AUTO-STAGER" forReason:v66 withResult:6111 withError:0];

        v50 = 0;
      }

      p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
      v40 = v92;
    }

    else
    {
      v49 = [(MADAutoAssetStager *)self autoStagerFSM];
      v61 = [v49 diag];
      [v61 trackAnomaly:@"AUTO-STAGER" forReason:@"{_setupAwaitingStagingAndBeginFirstDownload} no lookup-results for target" withResult:6111 withError:0];

      v50 = 0;
    }
  }

  else
  {
    v43 = [(MADAutoAssetStager *)self setLookupResults];
    v45 = [(MADAutoAssetStagerParam *)v22 assetType];
    v50 = [v43 safeObjectForKey:v45 ofClass:objc_opt_class()];
  }

  v67 = [(MADAutoAssetStagerParam *)v22 assetType];
  v68 = [(MADAutoAssetStagerParam *)v22 assetSpecifier];
  v69 = [(MADAutoAssetStager *)self newAssetMetadataFromAssetCatalog:v50 forAssetype:v67 forAssetSpecifier:v68];

  if (+[MADAutoAssetControlManager preferenceStagerDownloadFirstNotInCatalog]&& ![(MADAutoAssetStager *)self firstDownloadedAsIfNotInCatalog])
  {
    v75 = 1;
    [(MADAutoAssetStager *)self setFirstDownloadedAsIfNotInCatalog:1];

    goto LABEL_37;
  }

  if (!v69)
  {
    v75 = 0;
LABEL_37:
    v69 = [MAAutoAssetError buildError:6613 fromOperation:@"AUTO-CONTROL(_setupAwaitingStagingAndBeginFirstDownload)" underlyingError:0 withDescription:@"unable to build awaitingStagingAttempt array"];
    v70 = [[MADAutoAssetStagerParam alloc] initWithJobInformation:0 withDownloadedDescriptor:0 withOperationError:v69];
    if ((v75 & 1) == 0)
    {
      v91 = [(MADAutoAssetStager *)self autoStagerFSM];
      v76 = [v91 diag];
      v77 = [NSString alloc];
      v78 = [(MADAutoAssetStager *)self activeJobDescriptor];
      [v78 summary];
      v94 = v22;
      v79 = v70;
      v80 = v69;
      v82 = v81 = v40;
      v83 = [v77 initWithFormat:@"{_setupAwaitingStagingAndBeginFirstDownload} unable to locate entry in set-look-results - skipping asset | stagingDescriptor:%@", v82];
      [v76 trackAnomaly:@"AUTO-STAGER" forReason:v83 withResult:6111 withError:0];

      p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
      v40 = v81;
      v69 = v80;
      v70 = v79;
      v22 = v94;
    }

    v71 = [(MADAutoAssetStager *)self autoStagerFSM];
    [v71 postEvent:@"JobDownloadForStagingFailure" withInfo:v70];
    goto LABEL_40;
  }

  [(MADAutoAssetStager *)self _persistDescriptor:@"_setupAwaitingStagingAndBeginFirstDownload" operation:@"ENTRY_MODIFY" persistingDescriptor:v22 withRepresentation:602 message:@"create awaitingStagingAttempt array from availableForStaging"];
  v70 = [(MADAutoAssetStager *)self activeSetJobConfiguration];
  v71 = [(MADAutoAssetStager *)self baseForPatchingToSelector:v40];
  [(MADAutoAssetStager *)self assetTargetOSVersion];
  v93 = v22;
  v73 = v72 = p_weak_ivar_lyt;
  v74 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  [MADAutoAssetControlManager stagerStartJobDownloadForStaging:v40 withStagerSetConfiguration:v70 usingCachedAutoAssetCatalog:v69 usingBaseForPatching:v71 withAssetTargetOSVersion:v73 withAssetTargetBuildVersion:v74];

  p_weak_ivar_lyt = v72;
  v22 = v93;
LABEL_40:

LABEL_41:
LABEL_42:

  v84 = objc_alloc_init(p_weak_ivar_lyt[228]);
  [(MADAutoAssetStager *)self setAvailableForStaging:v84];

  if (![(MADAutoAssetStager *)self stagingClientUsingGroups])
  {
    v85 = [(MADAutoAssetStager *)self persistedState];
    v86 = [v85 persistedConfig];
    [v86 persistULL:0 forKey:@"determinedAvailableAssetCount"];
  }

  v87 = [(MADAutoAssetStager *)self persistedState];
  v88 = [v87 persistedConfig];
  [v88 persistState];

  [(MADAutoAssetStager *)self _logPersistedConfigSet:@"_setupAwaitingStagingAndBeginFirstDownload" message:@"created awaitingStagingAttempt array from availableForStaging"];
}

- (void)_removeAllStagedContent:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v24 = v4;
  v26 = [[NSString alloc] initWithFormat:@"%@:_removeAllStagedContent", v4];
  v7 = objc_alloc_init(NSMutableArray);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(MADAutoAssetStager *)self successfullyStaged];
  v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [(MADAutoAssetStager *)self successfullyStaged];
        v15 = [v14 safeObjectForKey:v12 ofClass:objc_opt_class()];

        if (v15)
        {
          v16 = v7;
          [v7 addObject:v15];
          v17 = [v15 isPatch];
          v18 = [(MADAutoAssetStager *)self statisticsUnstaged];
          v19 = v18;
          if (v17)
          {
            [v18 setPatchedAssets:{objc_msgSend(v18, "patchedAssets") + 1}];

            v20 = [(MADAutoAssetStager *)self statisticsUnstaged];
            v21 = [v15 metadata];
            [v20 setPatchedBytes:{objc_msgSend(v21, "safeIntegerForKey:", @"_UnarchivedSize", "patchedBytes")}];
            v22 = @"removed previously staged auto-asset (patch)";
          }

          else
          {
            [v18 setFullAssets:{objc_msgSend(v18, "fullAssets") + 1}];

            v20 = [(MADAutoAssetStager *)self statisticsUnstaged];
            v21 = [v15 metadata];
            [v20 setFullBytes:{objc_msgSend(v21, "safeIntegerForKey:", @"_UnarchivedSize", "fullBytes")}];
            v22 = @"removed previously staged auto-asset (full)";
          }

          [(MADAutoAssetStager *)self _logPersistedRemovedEntry:v26 removedDescriptor:v15 message:v22];
          v7 = v16;
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
  }

  v23 = objc_alloc_init(NSMutableDictionary);
  [(MADAutoAssetStager *)self setSuccessfullyStaged:v23];

  [(MADAutoAssetStager *)self setOverallStagedTotalExpectedBytes:0];
  [(MADAutoAssetStager *)self setOverallStagedDownloadedSoFarBytes:0];
  [(MADAutoAssetStager *)self setCurrentStagedLastWrittenBytes:0];
  if ([v7 count])
  {
    [MADAutoAssetControlManager stagerPurgeStagedContent:v7];
  }
}

- (void)_removeStagedAssetFromFilesystem:(id)a3 forHistoryOperation:(int64_t)a4
{
  v6 = a3;
  v7 = [(MADAutoAssetStager *)self autoStagerFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [MADAutoAssetControlManager localAssetURLForDescriptor:v6 fromLocation:@"_removeStagedAssetFromFilesystem"];
  v10 = +[NSFileManager defaultManager];
  v11 = v10;
  if (!v9)
  {
    v23 = [(MADAutoAssetStager *)self autoStagerFSM];
    v24 = [v23 diag];
    v25 = [NSString alloc];
    v26 = [v6 summary];
    v27 = [v25 initWithFormat:@"{_removeStagedAssetFromFilesystem} unable to determine local URL for stagedDescriptor:%@", v26];
    [v24 trackAnomaly:@"AUTO-STAGER" forReason:v27 withResult:6101 withError:0];

    goto LABEL_9;
  }

  if (![v10 fileExistsAtPath:v9])
  {
    v23 = _MADLog(@"AutoStager");
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
LABEL_10:

      goto LABEL_23;
    }

    v24 = [(MADAutoAssetStager *)self summary];
    v28 = [v6 summary];
    *buf = 138543874;
    v55 = v24;
    v56 = 2114;
    v57 = v28;
    v58 = 2114;
    v59 = v9;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {_removeStagedAssetFromFilesystem} not on filesystem for stagedDescriptor:%{public}@ | localContentURL:%{public}@", buf, 0x20u);

LABEL_9:
    goto LABEL_10;
  }

  v12 = [[NSURL alloc] initFileURLWithPath:v9];
  v13 = getControlManager();
  v50 = [v13 getSAFRegistrationBundleID:v12];

  v14 = [MAAutoAssetSelector alloc];
  v15 = [v6 assetType];
  v16 = [v6 assetSpecifier];
  v17 = [v6 assetVersion];
  v52 = [v14 initForAssetType:v15 withAssetSpecifier:v16 matchingAssetVersion:v17];

  v53 = 0;
  v18 = renameWithExtThenRemoveExposeError(v9, @".purged", &v53);
  v51 = v53;
  if (v51)
  {
    v19 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [(MADAutoAssetStager *)self summary];
      v21 = [v6 summary];
      v22 = [MADAutoAssetClientRequest responseErrorSummary:v51];
      *buf = 138544386;
      v55 = v20;
      v56 = 2114;
      v57 = v21;
      v58 = 2114;
      v59 = v9;
      v60 = 2114;
      v61 = v22;
      v62 = 2114;
      v63 = v51;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {_removeStagedAssetFromFilesystem} failed to remove stagedDescriptor:%{public}@ | localContentURL:%{public}@ | error:%{public}@\n%{public}@", buf, 0x34u);
    }
  }

  else
  {
    v19 = _MADLog(@"AutoStager");
    v29 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v29)
      {
        v30 = [(MADAutoAssetStager *)self summary];
        v31 = [v6 summary];
        *buf = 138543874;
        v55 = v30;
        v56 = 2114;
        v57 = v31;
        v58 = 2114;
        v59 = v9;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {_removeStagedAssetFromFilesystem} asset directory does not exist - stagedDescriptor:%{public}@ | localContentURL:%{public}@", buf, 0x20u);
      }
    }

    else
    {
      if (v29)
      {
        v32 = [(MADAutoAssetStager *)self summary];
        v33 = [v6 summary];
        *buf = 138543874;
        v55 = v32;
        v56 = 2114;
        v57 = v33;
        v58 = 2114;
        v59 = v9;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {_removeStagedAssetFromFilesystem} successfully removed stagedDescriptor:%{public}@ | localContentURL:%{public}@", buf, 0x20u);
      }

      v19 = getControlManager();
      [v19 updateSpaceAttributionForBundleID:v50 assetPath:v12 doRegistration:0];
    }
  }

  if (a4 == 404)
  {
    v34 = 5;
  }

  else
  {
    v34 = 4;
  }

  v35 = [v6 assetId];
  v36 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  v37 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  v38 = v34;
  v39 = v52;
  [MADAutoAssetHistory recordOperation:a4 toHistoryType:0 fromLayer:v38 forAssetID:v35 withSelector:v52 forTargetOSVersion:v36 forTargetBuildVersion:v37];

  if (+[MAAIRBEventReporter isAvailable])
  {
    v40 = [MAAIRBMobileAssetOperationMetadata alloc];
    v41 = [MADAutoAssetHistoryTracker operationName:a4];
    v42 = [(MAAIRBMobileAssetOperationMetadata *)v40 initWithCode:a4 name:v41];

    v43 = [MAAIRBMobileAssetAssetSelector alloc];
    v44 = [v52 assetType];
    v45 = [v52 assetSpecifier];
    v46 = [v52 assetVersion];
    v47 = [(MAAIRBMobileAssetAssetSelector *)v43 initWithAssetType:v44 assetSpecifier:v45 assetVersion:v46];

    v48 = [MAAIRBAppleIntelligenceAssetDeliveryEventType typeAssetUpdate:v42 assetSelector:v47];
    v49 = [[MAAIRBAppleIntelligenceAssetDeliveryEvent alloc] initWithErrors:&__NSArray0__struct type:v48];
    [MAAIRBEventReporter emitAppleIntelligenceEndEvent:v49];

    v39 = v52;
  }

LABEL_23:
}

- (void)_maintainLatestCandidate:(id)a3 candidateDescriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetStager *)self autoStagerFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  if (!v7)
  {
    v24 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [(MADAutoAssetStager *)self summary];
      *buf = 138543362;
      v53 = v25;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {_maintainLatestCandidate} nil candidateDescriptor provided by caller", buf, 0xCu);

      v7 = 0;
    }

    goto LABEL_19;
  }

  if (![v7 preSoftwareUpdateAssetStaging])
  {
    v24 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [(MADAutoAssetStager *)self summary];
      [v7 summary];
      v28 = v27 = v7;
      *buf = 138543618;
      v53 = v26;
      v54 = 2114;
      v55 = v28;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {_maintainLatestCandidate} not considering (not preSoftwareUpdateAssetStaging) | descriptor:%{public}@", buf, 0x16u);

      v7 = v27;
    }

LABEL_19:

    goto LABEL_31;
  }

  v44 = self;
  v45 = v6;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v6;
  v10 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v10)
  {
    v11 = v10;
    v47 = *v49;
    p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
LABEL_5:
    v13 = 0;
    while (1)
    {
      if (*v49 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v48 + 1) + 8 * v13);
      v15 = objc_autoreleasePoolPush();
      v16 = p_weak_ivar_lyt[223];
      v17 = [v7 assetType];
      v18 = [v14 assetType];
      if ([v16 stringIsEqual:v17 to:v18])
      {
        v19 = p_weak_ivar_lyt[223];
        [v7 assetSpecifier];
        v21 = v20 = v15;
        [v14 assetSpecifier];
        v23 = v22 = v7;
        LODWORD(v19) = [v19 stringIsEqual:v21 to:v23];

        v7 = v22;
        v15 = v20;

        if (v19)
        {
          v29 = [SUCoreRestoreVersion alloc];
          v30 = [v22 assetVersion];
          v31 = [v29 initWithRestoreVersion:v30];

          v32 = [SUCoreRestoreVersion alloc];
          v33 = [v14 assetVersion];
          v34 = [v32 initWithRestoreVersion:v33];

          if ([v31 isComparable:v34])
          {
            v7 = v22;
            v36 = v20;
            if ([v31 compare:v34] == &dword_0 + 1)
            {
              v37 = _MADLog(@"AutoStager");
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                v38 = [(MADAutoAssetStager *)v44 summary];
                v39 = [v22 summary];
                *buf = 138543618;
                v53 = v38;
                v54 = 2114;
                v55 = v39;
                _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {_maintainLatestCandidate} best candidate so far | descriptor:%{public}@", buf, 0x16u);

                v7 = v22;
                v36 = v20;
              }

              objc_autoreleasePoolPop(v36);
              break;
            }
          }

          else
          {
            v40 = _MADLog(@"AutoStager");
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v41 = [(MADAutoAssetStager *)v44 summary];
              v42 = [v22 summary];
              v43 = [v14 summary];
              *buf = 138543874;
              v53 = v41;
              v54 = 2114;
              v55 = v42;
              v56 = 2112;
              v57 = v43;
              _os_log_impl(&dword_0, v40, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {_maintainLatestCandidate} versions not comparable (keeping already encountered) | descriptor:%{public}@, already:%@", buf, 0x20u);
            }

            v7 = v22;
            v36 = v20;
          }

          objc_autoreleasePoolPop(v36);
          goto LABEL_30;
        }
      }

      else
      {
      }

      objc_autoreleasePoolPop(v15);
      v13 = v13 + 1;
      p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
      if (v11 == v13)
      {
        v11 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  [obj addObject:v7];
LABEL_30:
  v6 = v45;
LABEL_31:
}

- (BOOL)_isAssetTypeInvolvedInStaging:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetStager *)self assetTargetTrainName];
  v8 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  v9 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v7 withRestoreVersion:v8];

  v10 = [(MADAutoAssetStager *)self activeJobDescriptor];
  if (!v10 || (v11 = v10, -[MADAutoAssetStager activeJobDescriptor](self, "activeJobDescriptor"), v12 = objc_claimAutoreleasedReturnValue(), [v12 assetType], v13 = objc_claimAutoreleasedReturnValue(), v14 = +[SUCore stringIsEqual:to:](SUCore, "stringIsEqual:to:", v13, v4), v13, v12, v11, (v14 & 1) == 0))
  {
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v16 = [(MADAutoAssetStager *)self candidateSetConfigurations];
    v17 = [v16 countByEnumeratingWithState:&v146 objects:v161 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v147;
LABEL_6:
      v20 = 0;
      while (1)
      {
        if (*v147 != v19)
        {
          objc_enumerationMutation(v16);
        }

        if ([*(*(&v146 + 1) + 8 * v20) refererncesAssetType:v4])
        {
          goto LABEL_102;
        }

        if (v18 == ++v20)
        {
          v18 = [v16 countByEnumeratingWithState:&v146 objects:v161 count:16];
          if (v18)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    v21 = [(MADAutoAssetStager *)self candidateSetConfigurationsRequiredByTarget];
    v22 = [v21 safeObjectForKey:v9 ofClass:objc_opt_class()];

    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v16 = v22;
    v23 = [v16 countByEnumeratingWithState:&v142 objects:v160 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v143;
LABEL_14:
      v26 = 0;
      while (1)
      {
        if (*v143 != v25)
        {
          objc_enumerationMutation(v16);
        }

        if ([*(*(&v142 + 1) + 8 * v26) refererncesAssetType:v4])
        {
          break;
        }

        if (v24 == ++v26)
        {
          v24 = [v16 countByEnumeratingWithState:&v142 objects:v160 count:16];
          if (v24)
          {
            goto LABEL_14;
          }

          goto LABEL_20;
        }
      }
    }

    else
    {
LABEL_20:

      v27 = [(MADAutoAssetStager *)self candidateSetConfigurationsOptionalByTarget];
      v28 = [v27 safeObjectForKey:v9 ofClass:objc_opt_class()];

      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v16 = v28;
      v29 = [v16 countByEnumeratingWithState:&v138 objects:v159 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v139;
LABEL_22:
        v32 = 0;
        while (1)
        {
          if (*v139 != v31)
          {
            objc_enumerationMutation(v16);
          }

          if ([*(*(&v138 + 1) + 8 * v32) refererncesAssetType:v4])
          {
            break;
          }

          if (v30 == ++v32)
          {
            v30 = [v16 countByEnumeratingWithState:&v138 objects:v159 count:16];
            if (v30)
            {
              goto LABEL_22;
            }

            goto LABEL_28;
          }
        }
      }

      else
      {
LABEL_28:

        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v16 = [(MADAutoAssetStager *)self candidatesForStaging];
        v33 = [v16 countByEnumeratingWithState:&v134 objects:v158 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v135;
LABEL_30:
          v36 = 0;
          while (1)
          {
            if (*v135 != v35)
            {
              objc_enumerationMutation(v16);
            }

            v37 = [*(*(&v134 + 1) + 8 * v36) assetType];
            v38 = [SUCore stringIsEqual:v37 to:v4];

            if (v38)
            {
              goto LABEL_102;
            }

            if (v34 == ++v36)
            {
              v34 = [v16 countByEnumeratingWithState:&v134 objects:v158 count:16];
              if (v34)
              {
                goto LABEL_30;
              }

              break;
            }
          }
        }

        v39 = [(MADAutoAssetStager *)self candidatesForStagingRequiredByTarget];
        v40 = [v39 safeObjectForKey:v9 ofClass:objc_opt_class()];

        v132 = 0u;
        v133 = 0u;
        v130 = 0u;
        v131 = 0u;
        v16 = v40;
        v41 = [v16 countByEnumeratingWithState:&v130 objects:v157 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v131;
LABEL_38:
          v44 = 0;
          while (1)
          {
            if (*v131 != v43)
            {
              objc_enumerationMutation(v16);
            }

            v45 = [*(*(&v130 + 1) + 8 * v44) assetType];
            v46 = [SUCore stringIsEqual:v45 to:v4];

            if (v46)
            {
              break;
            }

            if (v42 == ++v44)
            {
              v42 = [v16 countByEnumeratingWithState:&v130 objects:v157 count:16];
              if (v42)
              {
                goto LABEL_38;
              }

              goto LABEL_44;
            }
          }
        }

        else
        {
LABEL_44:

          v47 = [(MADAutoAssetStager *)self candidatesForStagingOptionalByTarget];
          v48 = [v47 safeObjectForKey:v9 ofClass:objc_opt_class()];

          v128 = 0u;
          v129 = 0u;
          v126 = 0u;
          v127 = 0u;
          v16 = v48;
          v49 = [v16 countByEnumeratingWithState:&v126 objects:v156 count:16];
          if (v49)
          {
            v50 = v49;
            v51 = *v127;
LABEL_46:
            v52 = 0;
            while (1)
            {
              if (*v127 != v51)
              {
                objc_enumerationMutation(v16);
              }

              v53 = [*(*(&v126 + 1) + 8 * v52) assetType];
              v54 = [SUCore stringIsEqual:v53 to:v4];

              if (v54)
              {
                break;
              }

              if (v50 == ++v52)
              {
                v50 = [v16 countByEnumeratingWithState:&v126 objects:v156 count:16];
                if (v50)
                {
                  goto LABEL_46;
                }

                goto LABEL_52;
              }
            }
          }

          else
          {
LABEL_52:

            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            v16 = [(MADAutoAssetStager *)self determiningBySelector];
            v55 = [v16 countByEnumeratingWithState:&v122 objects:v155 count:16];
            if (v55)
            {
              v56 = v55;
              v100 = *v123;
LABEL_54:
              v57 = 0;
              while (1)
              {
                if (*v123 != v100)
                {
                  objc_enumerationMutation(v16);
                }

                v58 = *(*(&v122 + 1) + 8 * v57);
                v59 = objc_autoreleasePoolPush();
                v60 = [(MADAutoAssetStager *)self determiningBySelector];
                v61 = [v60 safeObjectForKey:v58 ofClass:objc_opt_class()];

                v62 = [v61 assetType];
                LOBYTE(v60) = [SUCore stringIsEqual:v62 to:v4];

                objc_autoreleasePoolPop(v59);
                if (v60)
                {
                  goto LABEL_102;
                }

                if (v56 == ++v57)
                {
                  v56 = [v16 countByEnumeratingWithState:&v122 objects:v155 count:16];
                  if (v56)
                  {
                    goto LABEL_54;
                  }

                  break;
                }
              }
            }

            v120 = 0u;
            v121 = 0u;
            v118 = 0u;
            v119 = 0u;
            v16 = [(MADAutoAssetStager *)self availableForStaging];
            v63 = [v16 countByEnumeratingWithState:&v118 objects:v154 count:16];
            if (v63)
            {
              v64 = v63;
              v65 = *v119;
LABEL_62:
              v66 = 0;
              while (1)
              {
                if (*v119 != v65)
                {
                  objc_enumerationMutation(v16);
                }

                v67 = [*(*(&v118 + 1) + 8 * v66) assetType];
                v68 = [SUCore stringIsEqual:v67 to:v4];

                if (v68)
                {
                  goto LABEL_102;
                }

                if (v64 == ++v66)
                {
                  v64 = [v16 countByEnumeratingWithState:&v118 objects:v154 count:16];
                  if (v64)
                  {
                    goto LABEL_62;
                  }

                  break;
                }
              }
            }

            v69 = [(MADAutoAssetStager *)self availableForStagingRequiredByTarget];
            v70 = [v69 safeObjectForKey:v9 ofClass:objc_opt_class()];

            v116 = 0u;
            v117 = 0u;
            v114 = 0u;
            v115 = 0u;
            v16 = v70;
            v71 = [v16 countByEnumeratingWithState:&v114 objects:v153 count:16];
            if (v71)
            {
              v72 = v71;
              v73 = *v115;
LABEL_70:
              v74 = 0;
              while (1)
              {
                if (*v115 != v73)
                {
                  objc_enumerationMutation(v16);
                }

                v75 = [*(*(&v114 + 1) + 8 * v74) assetType];
                v76 = [SUCore stringIsEqual:v75 to:v4];

                if (v76)
                {
                  break;
                }

                if (v72 == ++v74)
                {
                  v72 = [v16 countByEnumeratingWithState:&v114 objects:v153 count:16];
                  if (v72)
                  {
                    goto LABEL_70;
                  }

                  goto LABEL_76;
                }
              }
            }

            else
            {
LABEL_76:

              v77 = [(MADAutoAssetStager *)self availableForStagingOptionalByTarget];
              v78 = [v77 safeObjectForKey:v9 ofClass:objc_opt_class()];

              v112 = 0u;
              v113 = 0u;
              v110 = 0u;
              v111 = 0u;
              v16 = v78;
              v79 = [v16 countByEnumeratingWithState:&v110 objects:v152 count:16];
              if (!v79)
              {
LABEL_84:

                v108 = 0u;
                v109 = 0u;
                v106 = 0u;
                v107 = 0u;
                v16 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
                v85 = [v16 countByEnumeratingWithState:&v106 objects:v151 count:16];
                if (v85)
                {
                  v86 = v85;
                  v87 = *v107;
LABEL_86:
                  v88 = 0;
                  while (1)
                  {
                    if (*v107 != v87)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v89 = [*(*(&v106 + 1) + 8 * v88) assetType];
                    v90 = [SUCore stringIsEqual:v89 to:v4];

                    if (v90)
                    {
                      break;
                    }

                    if (v86 == ++v88)
                    {
                      v86 = [v16 countByEnumeratingWithState:&v106 objects:v151 count:16];
                      if (v86)
                      {
                        goto LABEL_86;
                      }

                      goto LABEL_92;
                    }
                  }
                }

                else
                {
LABEL_92:

                  v104 = 0u;
                  v105 = 0u;
                  v102 = 0u;
                  v103 = 0u;
                  v16 = [(MADAutoAssetStager *)self successfullyStaged];
                  v91 = [v16 countByEnumeratingWithState:&v102 objects:v150 count:16];
                  if (!v91)
                  {
LABEL_100:
                    v15 = 0;
LABEL_103:

                    goto LABEL_104;
                  }

                  v92 = v91;
                  v101 = *v103;
LABEL_94:
                  v93 = 0;
                  while (1)
                  {
                    if (*v103 != v101)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v94 = *(*(&v102 + 1) + 8 * v93);
                    v95 = objc_autoreleasePoolPush();
                    v96 = [(MADAutoAssetStager *)self successfullyStaged];
                    v97 = [v96 safeObjectForKey:v94 ofClass:objc_opt_class()];

                    v98 = [v97 assetType];
                    LOBYTE(v96) = [SUCore stringIsEqual:v98 to:v4];

                    objc_autoreleasePoolPop(v95);
                    if (v96)
                    {
                      break;
                    }

                    if (v92 == ++v93)
                    {
                      v92 = [v16 countByEnumeratingWithState:&v102 objects:v150 count:16];
                      if (v92)
                      {
                        goto LABEL_94;
                      }

                      goto LABEL_100;
                    }
                  }
                }

LABEL_102:
                v15 = 1;
                goto LABEL_103;
              }

              v80 = v79;
              v81 = *v111;
LABEL_78:
              v82 = 0;
              while (1)
              {
                if (*v111 != v81)
                {
                  objc_enumerationMutation(v16);
                }

                v83 = [*(*(&v110 + 1) + 8 * v82) assetType];
                v84 = [SUCore stringIsEqual:v83 to:v4];

                if (v84)
                {
                  break;
                }

                if (v80 == ++v82)
                {
                  v80 = [v16 countByEnumeratingWithState:&v110 objects:v152 count:16];
                  if (v80)
                  {
                    goto LABEL_78;
                  }

                  goto LABEL_84;
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_102;
  }

  v15 = 1;
LABEL_104:

  return v15;
}

- (BOOL)_doesSelectorMatchCurrentJob:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetStager *)self activeJobDescriptor];
  LOBYTE(self) = [(MADAutoAssetStager *)self _doesSelector:v4 matchDescriptor:v7];

  return self;
}

- (BOOL)_doesSelector:(id)a3 matchDescriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetStager *)self autoStagerFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  if (v7)
  {
    v10 = [v6 assetVersion];

    if (v10)
    {
      v11 = [v7 assetType];
      v12 = [v6 assetType];
      if (![SUCore stringIsEqual:v11 to:v12])
      {
        v17 = 0;
LABEL_13:

        goto LABEL_14;
      }

      v13 = [v7 assetSpecifier];
      v14 = [v6 assetSpecifier];
      if ([SUCore stringIsEqual:v13 to:v14])
      {
        v15 = [v7 assetVersion];
        v16 = [v6 assetVersion];
        v17 = [SUCore stringIsEqual:v15 to:v16];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v18 = [v6 assetSpecifier];

      v11 = [v7 assetType];
      v12 = [v6 assetType];
      v19 = [SUCore stringIsEqual:v11 to:v12];
      v17 = (v18 == 0) & v19;
      if (!v18 || (v19 & 1) == 0)
      {
        goto LABEL_13;
      }

      v13 = [v7 assetSpecifier];
      v14 = [v6 assetSpecifier];
      v17 = [SUCore stringIsEqual:v13 to:v14];
    }

    goto LABEL_13;
  }

  v17 = 0;
LABEL_14:

  return v17;
}

- (BOOL)_isSetTargetWithinRange:(id)a3 asCandidate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MADAutoAssetStager *)self autoStagerFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  v10 = [MADAutoAssetControlManager restoreVersionFromOSVersion:v9];

  v11 = [v6 autoAssetEntries];
  v12 = [v11 count];

  if (v12 || v4)
  {
    v14 = [v6 minTargetOSVersion];
    v15 = [MADAutoAssetControlManager restoreVersionFromOSVersion:v14];

    v16 = [v6 maxTargetOSVersion];
    v17 = [MADAutoAssetControlManager restoreVersionFromOSVersion:v16];

    if ([v15 isComparable:v10] && objc_msgSend(v17, "isComparable:", v10))
    {
      v18 = [v15 compare:v10];
      v19 = [v17 compare:v10];
      v13 = v18 != &dword_0 + 1 && v19 + 1 != 0;
    }

    else
    {
      v21 = _MADLog(@"AutoStager");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = [(MADAutoAssetStager *)self summary];
        v23 = [v6 summary];
        v25 = 138543618;
        v26 = v22;
        v27 = 2114;
        v28 = v23;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {_isSetTargetWithinRange} set-target versions not comparable (ignoring) | setTarget:%{public}@", &v25, 0x16u);
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_isDescriptorAssetTypeManagedAsSet:(id)a3
{
  v4 = [a3 assetType];
  LOBYTE(self) = [(MADAutoAssetStager *)self _isAssetTypeManagedAsSet:v4];

  return self;
}

- (BOOL)_isAssetTypeManagedAsSet:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(MADAutoAssetStager *)self setConfigurations];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) firstEntryAssetType];
        v12 = [SUCore stringIsEqual:v4 to:v11];

        if (v12)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)_addToStaged:(id)a3 addingFromStagerParam:(id)a4
{
  v5 = a4;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 downloadedDescriptor];

  if (v8)
  {
    v9 = [(MADAutoAssetStager *)self persistedState];
    v10 = [v9 persistedConfig];
    v64 = [v10 ullForKey:@"stagedAssetTotalContentBytes"];

    v11 = [v5 downloadedDescriptor];
    [(MADAutoAssetStager *)self setActiveJobDescriptor:v11];

    v12 = [MAAutoAssetSelector alloc];
    v13 = [(MADAutoAssetStager *)self activeJobDescriptor];
    v14 = [v13 assetType];
    v15 = [(MADAutoAssetStager *)self activeJobDescriptor];
    v16 = [v15 assetSpecifier];
    v17 = [(MADAutoAssetStager *)self activeJobDescriptor];
    v18 = [v17 assetVersion];
    v19 = [v12 initForAssetType:v14 withAssetSpecifier:v16 matchingAssetVersion:v18];

    v20 = [(MADAutoAssetStager *)self activeJobDescriptor];
    v21 = [v5 jobInformation];
    v22 = [v21 currentStatus];
    [(MADAutoAssetStager *)self _updateDescriptor:v20 withLatestJobStatus:v22];

    v23 = [(MADAutoAssetStager *)self activeJobDescriptor];
    v63 = [(MADAutoAssetStager *)self _persistDescriptor:@"AddToStagedDecideMoreAvailable" operation:@"ENTRY_MODIFY" persistingDescriptor:v23 withRepresentation:603 message:@"content downloaded (add to staged)"];

    v24 = [(MADAutoAssetStager *)self activeJobDescriptor];
    [(MADAutoAssetStager *)self updateLookupResultsJustStaged:v24];

    v25 = [(MADAutoAssetStager *)self successfullyStaged];
    v26 = [(MADAutoAssetStager *)self activeJobDescriptor];
    v27 = [v19 persistedEntryID];
    [v25 setSafeObject:v26 forKey:v27];

    v28 = [(MADAutoAssetStager *)self activeJobDescriptor];
    v29 = [v28 assetId];
    v30 = [v5 stagingClientRequest];
    v31 = [v30 clientID];
    v32 = [(MADAutoAssetStager *)self assetTargetOSVersion];
    v33 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
    [MADAutoAssetHistory recordOperation:203 toHistoryType:0 fromLayer:4 forAssetID:v29 withSelector:v19 forClientDomainName:v31 forTargetOSVersion:v32 forTargetBuildVersion:v33];

    if (+[MAAIRBEventReporter isAvailable])
    {
      v34 = [MAAIRBMobileAssetOperationMetadata alloc];
      v35 = [MADAutoAssetHistoryTracker operationName:203];
      v36 = [(MAAIRBMobileAssetOperationMetadata *)v34 initWithCode:203 name:v35];

      v37 = [MAAIRBMobileAssetAssetSelector alloc];
      v38 = [v19 assetType];
      v39 = [v19 assetSpecifier];
      v40 = [v19 assetVersion];
      v41 = [(MAAIRBMobileAssetAssetSelector *)v37 initWithAssetType:v38 assetSpecifier:v39 assetVersion:v40];

      v42 = [MAAIRBAppleIntelligenceAssetDeliveryEventType typeAssetUpdate:v36 assetSelector:v41];
      v43 = [[MAAIRBAppleIntelligenceAssetDeliveryEvent alloc] initWithErrors:&__NSArray0__struct type:v42];
      [MAAIRBEventReporter emitAppleIntelligenceStartEvent:v43];
    }

    v44 = [(MADAutoAssetStager *)self activeJobDescriptor];
    v45 = [v44 isPatch];

    v46 = [(MADAutoAssetStager *)self statisticsStaged];
    v47 = v46;
    if (v45)
    {
      [v46 setPatchedAssets:{objc_msgSend(v46, "patchedAssets") + 1}];

      v48 = [(MADAutoAssetStager *)self statisticsStaged];
      v49 = [(MADAutoAssetStager *)self activeJobDescriptor];
      v50 = [v49 metadata];
      [v48 setPatchedBytes:{objc_msgSend(v50, "safeIntegerForKey:", @"_UnarchivedSize", "patchedBytes")}];
    }

    else
    {
      [v46 setFullAssets:{objc_msgSend(v46, "fullAssets") + 1}];

      v48 = [(MADAutoAssetStager *)self statisticsStaged];
      v49 = [(MADAutoAssetStager *)self activeJobDescriptor];
      v50 = [v49 metadata];
      [v48 setFullBytes:{objc_msgSend(v50, "safeIntegerForKey:", @"_UnarchivedSize", "fullBytes")}];
    }

    v53 = [(MADAutoAssetStager *)self persistedState];
    v54 = [v53 persistedConfig];
    v55 = [(MADAutoAssetStager *)self successfullyStaged];
    [v54 persistULL:objc_msgSend(v55 forKey:"count") shouldPersist:{@"stagedAssetCount", 0}];

    v56 = [(MADAutoAssetStager *)self persistedState];
    v57 = [v56 persistedConfig];
    [v57 persistULL:&v64[v63] forKey:@"stagedAssetTotalContentBytes" shouldPersist:0];

    v58 = [(MADAutoAssetStager *)self persistedState];
    v59 = [v58 persistedConfig];
    v60 = [(MADAutoAssetStager *)self successfullyStaged];
    [v59 persistBoolean:objc_msgSend(v60 forKey:"count") == 0 shouldPersist:{@"stagedNoContent", 0}];

    v61 = [(MADAutoAssetStager *)self persistedState];
    v62 = [v61 persistedConfig];
    [v62 persistULL:0 forKey:@"activelyStagingAssetCount" shouldPersist:1];

    [(MADAutoAssetStager *)self _logPersistedConfigSet:@"AddToStagedDecideMoreAvailable" message:@"auto-asset-job has indicated content downloaded (add to staged)"];
  }

  else
  {
    v19 = [(MADAutoAssetStager *)self _targetNameActiveRequired];
    v51 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = [(MADAutoAssetStager *)self summary];
      *buf = 138543618;
      v66 = v52;
      v67 = 2114;
      v68 = v19;
      _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {_addToStaged} to-be-staged asset-descriptor already downloaded", buf, 0x16u);
    }
  }

  [(MADAutoAssetStager *)self setActiveJobDescriptor:0];
}

- (BOOL)_isOtherTargetAvailable
{
  v3 = [(MADAutoAssetStager *)self autoStagerFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(MADAutoAssetStager *)self assetTargetTrainName];
  v6 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  v7 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v5 withRestoreVersion:v6];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(MADAutoAssetStager *)self candidateSetConfigurationsRequiredByTarget];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v8);
      }

      if (![SUCore stringIsEqual:*(*(&v21 + 1) + 8 * v12) to:v7])
      {
        goto LABEL_18;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(MADAutoAssetStager *)self candidateSetConfigurationsOptionalByTarget];
  v13 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = *v18;
LABEL_11:
    v15 = 0;
    while (1)
    {
      if (*v18 != v14)
      {
        objc_enumerationMutation(v8);
      }

      if (![SUCore stringIsEqual:*(*(&v17 + 1) + 8 * v15) to:v7])
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v13)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

LABEL_18:
    LOBYTE(v13) = 1;
  }

LABEL_19:

  return v13;
}

- (void)_blendOptionalCandidates:(id)a3 intoRequired:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetStager *)self autoStagerFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(MADAutoAssetStager *)self _targetNameActiveRequired];
  v11 = [v6 count];
  v28 = objc_alloc_init(NSMutableDictionary);
  v12 = objc_alloc_init(NSMutableDictionary);
  if (v11 >= 1)
  {
    v13 = v11 + 1;
    do
    {
      v14 = [v6 objectAtIndex:v13 - 2];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 assetType];
        v17 = [(MADAutoAssetStager *)self isAssetType:v16 representedInAssetDescriptors:v7];

        if (v17)
        {
          [v7 addObject:v15];
          [v6 removeObjectAtIndex:v13 - 2];
          v18 = self;
          v19 = v15;
          v20 = v28;
        }

        else
        {
          v18 = self;
          v19 = v15;
          v20 = v12;
        }

        [(MADAutoAssetStager *)v18 trackSelectorForDescriptor:v19 inContainer:v20];
      }

      else
      {
        v21 = [(MADAutoAssetStager *)self autoStagerFSM];
        v22 = [v21 diag];
        v23 = [[NSString alloc] initWithFormat:@"[%@] {_blendOptionalCandidates} unable to load optionalDescriptor | optionalIndex:%ld", v10, v13 - 2];
        [v22 trackAnomaly:@"AUTO-STAGER" forReason:v23 withResult:6111 withError:0];
      }

      --v13;
    }

    while (v13 > 1);
  }

  v24 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [(MADAutoAssetStager *)self summary];
    v26 = [(MADAutoAssetStager *)self selectorContainerAsString:v28];
    v27 = [(MADAutoAssetStager *)self selectorContainerAsString:v12];
    *buf = 138544130;
    v30 = v25;
    v31 = 2114;
    v32 = v10;
    v33 = 2114;
    v34 = v26;
    v35 = 2114;
    v36 = v27;
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {_blendOptionalCandidates}\n>>> movedOptionalToRequired:%{public}@\n>>> optionalRemainsOptional:%{public}@", buf, 0x2Au);
  }
}

- (BOOL)isAssetType:(id)a3 representedInAssetDescriptors:(id)a4
{
  v5 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) assetType];
        v11 = [SUCore stringIsEqual:v5 to:v10];

        if (v11)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)_blendCandidateSetConfigurations:(id)a3 blendingIntoRequiredConfigurations:(id)a4 blendingFromOptionalConfigurations:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MADAutoAssetStager *)self autoStagerFSM];
  v12 = [v11 extendedStateQueue];
  dispatch_assert_queue_V2(v12);

  v50 = v8;
  v59 = [[NSString alloc] initWithFormat:@"%@:_blendCandidateSetConfigurations", v8];
  v61 = self;
  v58 = [(MADAutoAssetStager *)self _targetNameActiveRequired];
  v13 = [v10 count];
  if (v13 >= 1)
  {
    v14 = v13;
    v51 = v10;
    v52 = v9;
    while (1)
    {
      v15 = v14 - 1;
      v16 = [v10 objectAtIndex:v14 - 1];
      v17 = v16;
      if (!v16)
      {
        break;
      }

      v18 = [v16 firstEntryAssetType];
      v19 = [(MADAutoAssetStager *)v61 indexForAssetType:v18 representedInSetConfigurations:v9];

      if ((v19 & 0x8000000000000000) == 0)
      {
        v55 = v14;
        v53 = v19;
        v20 = [v9 objectAtIndex:v19];
        v21 = objc_alloc_init(NSMutableArray);
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v22 = [v20 autoAssetEntries];
        v23 = [v22 countByEnumeratingWithState:&v66 objects:v71 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v67;
          do
          {
            for (i = 0; i != v24; i = i + 1)
            {
              if (*v67 != v25)
              {
                objc_enumerationMutation(v22);
              }

              [v21 addObject:*(*(&v66 + 1) + 8 * i)];
            }

            v24 = [v22 countByEnumeratingWithState:&v66 objects:v71 count:16];
          }

          while (v24);
        }

        v56 = v21;
        v54 = v15;

        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = v17;
        obj = [v17 autoAssetEntries];
        v27 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v63;
          do
          {
            for (j = 0; j != v28; j = j + 1)
            {
              if (*v63 != v29)
              {
                objc_enumerationMutation(obj);
              }

              v31 = *(*(&v62 + 1) + 8 * j);
              v32 = [v31 assetSelector];
              v33 = [v32 assetType];
              v34 = [v31 assetSelector];
              v35 = [v34 assetSpecifier];
              v36 = [v20 assetSetEntryForAssetType:v33 forAssetSpecifier:v35];

              if (v36)
              {
                v37 = [(MADAutoAssetStager *)v61 autoStagerFSM];
                v38 = [v37 diag];
                v39 = [NSString alloc];
                v40 = [v20 summary];
                v41 = [v60 summary];
                v42 = [v39 initWithFormat:@"[%@] {%@} assetType in both REQUIRED and OPTIONAL set-configuration candidates | requiredConfiguration:%@ | optionalConfiguration:%@", v58, v59, v40, v41];
                [v38 trackAnomaly:@"AUTO-STAGER" forReason:v42 withResult:6109 withError:0];
              }

              else
              {
                [v56 addObject:v31];
              }
            }

            v28 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
          }

          while (v28);
        }

        v43 = v56;
        v44 = [v56 count];
        v45 = [v20 autoAssetEntries];
        v46 = [v45 count];

        if (v44 <= v46)
        {
          v10 = v51;
          v9 = v52;
          v15 = v54;
          v14 = v55;
          v17 = v60;
        }

        else
        {
          v47 = [v20 assetSetIdentifier];
          v48 = [(MADAutoAssetStager *)v61 newSetConfigurationForAssetSetIdentifier:v47 withAutoAssetEntries:v56];

          v10 = v51;
          v9 = v52;
          v15 = v54;
          v17 = v60;
          if (v48)
          {
            [v52 replaceObjectAtIndex:v53 withObject:v48];
            [v51 removeObjectAtIndex:v54];
          }

          v14 = v55;
LABEL_27:
        }
      }

      v49 = v14 <= 1;
      v14 = v15;
      if (v49)
      {
        goto LABEL_32;
      }
    }

    v20 = [(MADAutoAssetStager *)v61 autoStagerFSM];
    v43 = [v20 diag];
    v48 = [[NSString alloc] initWithFormat:@"[%@] {%@} unable to load optionalConfiguration | optionalIndex:%ld", v58, v59, v14 - 1];
    [v43 trackAnomaly:@"AUTO-STAGER" forReason:v48 withResult:6111 withError:0];
    goto LABEL_27;
  }

LABEL_32:
}

- (int64_t)indexForAssetType:(id)a3 representedInSetConfigurations:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 count];
  v8 = v7 - 1;
  if (v7 >= 1)
  {
    v9 = v7;
    while (1)
    {
      v10 = [v6 objectAtIndex:--v9];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 firstEntryAssetType];
        v13 = [SUCore stringIsEqual:v12 to:v5];

        if (v13)
        {
          break;
        }
      }

      if (v9 <= 0)
      {
        v8 = -1;
        goto LABEL_8;
      }
    }

    v8 = v9;
  }

LABEL_8:

  return v8;
}

- (BOOL)_formCandidateSetLookupArray:(id)a3 involvingRequired:(BOOL)a4 involvingOptional:(BOOL)a5 providingOptional:(BOOL)a6
{
  v7 = a3;
  v8 = [(MADAutoAssetStager *)self autoStagerFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v136 = v7;
  v146 = [[NSString alloc] initWithFormat:@"%@:_formCandidateSetLookupArray", v7];
  v138 = objc_alloc_init(NSMutableDictionary);
  v153 = objc_alloc_init(NSMutableDictionary);
  v151 = objc_alloc_init(NSMutableArray);
  v10 = [(MADAutoAssetStager *)self assetTargetTrainName];
  v11 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  v137 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v10 withRestoreVersion:v11];

  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v165 = self;
  v12 = [(MADAutoAssetStager *)self setTargets];
  v13 = [v12 countByEnumeratingWithState:&v210 objects:v237 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v211;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v211 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v210 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        v19 = [v17 firstEntryAssetType];
        if (v19)
        {
          [v153 setSafeObject:v17 forKey:v19];
        }

        else
        {
          v20 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [(MADAutoAssetStager *)v165 summary];
            v22 = [v17 summary];
            *buf = 138543618;
            v223 = v21;
            v224 = 2114;
            v225 = v22;
            _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {_formCandidateSetLookupArray} set-target indicating nothing to be staged | nextSetTarget:%{public}@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v18);
      }

      v14 = [v12 countByEnumeratingWithState:&v210 objects:v237 count:16];
    }

    while (v14);
  }

  v23 = v165;
  if ([(MADAutoAssetStager *)v165 stagingClientUsingGroups])
  {
    v24 = objc_alloc_init(NSMutableArray);
    v25 = objc_alloc_init(NSMutableArray);
    v26 = [(MADAutoAssetStager *)v165 candidateSetConfigurationsRequiredByTarget];
    [v26 setSafeObject:v24 forKey:v137];

    v27 = [(MADAutoAssetStager *)v165 candidateSetConfigurationsOptionalByTarget];
    [v27 setSafeObject:v25 forKey:v137];

    v23 = v165;
  }

  [(MADAutoAssetStager *)v23 _extendLookupByAssetTypeWithSetConfigurations:v138 limitingToSetTargets:v153];
  [(MADAutoAssetStager *)v23 _extendLookupByAssetTypeWithDownloadedDescriptors:v138 limitingToSetTargets:v153];
  if ([v138 count])
  {
    v208 = 0u;
    v209 = 0u;
    v206 = 0u;
    v207 = 0u;
    v28 = v138;
    v160 = [v28 countByEnumeratingWithState:&v206 objects:v236 count:16];
    if (v160)
    {
      v157 = *v207;
      do
      {
        for (j = 0; j != v160; j = j + 1)
        {
          if (*v207 != v157)
          {
            objc_enumerationMutation(v28);
          }

          v30 = *(*(&v206 + 1) + 8 * j);
          v31 = [v28 safeObjectForKey:v30 ofClass:objc_opt_class()];
          if (v31)
          {
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v32 = v151;
            v33 = [v32 countByEnumeratingWithState:&v202 objects:v235 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = *v203;
              while (2)
              {
                for (k = 0; k != v34; k = k + 1)
                {
                  if (*v203 != v35)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v37 = [*(*(&v202 + 1) + 8 * k) firstEntryAssetType];
                  v38 = [v37 isEqualToString:v30];

                  if (v38)
                  {

                    goto LABEL_35;
                  }
                }

                v34 = [v32 countByEnumeratingWithState:&v202 objects:v235 count:16];
                if (v34)
                {
                  continue;
                }

                break;
              }
            }

            [v32 addObject:v31];
          }

          else
          {
            v39 = _MADLog(@"AutoStager");
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v40 = [(MADAutoAssetStager *)v165 summary];
              *buf = 138543874;
              v223 = v40;
              v224 = 2114;
              v225 = v146;
              v226 = 2114;
              v227 = v30;
              _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {%{public}@} unable to load stager-set-configuration from by-asset-type dict (dropping from candidates) | assetType:%{public}@", buf, 0x20u);
            }
          }

LABEL_35:
        }

        v160 = [v28 countByEnumeratingWithState:&v206 objects:v236 count:16];
      }

      while (v160);
    }

    v23 = v165;
  }

  v140 = [v151 count];
  if (v140 < 1)
  {
    v44 = @"N";
    goto LABEL_149;
  }

  if ([(MADAutoAssetStager *)v23 stagingClientUsingGroups])
  {
    v41 = [(MADAutoAssetStager *)v23 candidatesForStagingRequiredByTarget];
    v139 = [v41 safeObjectForKey:v137 ofClass:objc_opt_class()];

    v42 = [(MADAutoAssetStager *)v165 candidateSetConfigurationsRequiredByTarget];
    v161 = [v42 safeObjectForKey:v137 ofClass:objc_opt_class()];

    v43 = [(MADAutoAssetStager *)v165 candidateSetConfigurationsOptionalByTarget];
    v143 = [v43 safeObjectForKey:v137 ofClass:objc_opt_class()];

    v23 = v165;
  }

  else
  {
    v143 = 0;
    v161 = 0;
    v139 = 0;
  }

  [(MADAutoAssetStager *)v23 setCandidateSetConfigurations:v151];
  v45 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = [(MADAutoAssetStager *)v165 summary];
    v47 = [(MADAutoAssetStager *)v165 candidateSetConfigurations];
    v48 = [v47 count];
    *buf = 138543874;
    v223 = v46;
    v224 = 2114;
    v225 = v146;
    v226 = 2048;
    v227 = v48;
    _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {%{public}@} formed set-configurations (for determine lookups):%ld", buf, 0x20u);
  }

  for (m = 0; m != v140; ++m)
  {
    v50 = [(MADAutoAssetStager *)v165 candidateSetConfigurations];
    v51 = [v50 objectAtIndex:m];

    if (!v51)
    {
      goto LABEL_65;
    }

    if ([(MADAutoAssetStager *)v165 stagingClientUsingGroups])
    {
      v200 = 0u;
      v201 = 0u;
      v198 = 0u;
      v199 = 0u;
      v52 = v139;
      v53 = [v52 countByEnumeratingWithState:&v198 objects:v234 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v199;
        while (2)
        {
          for (n = 0; n != v54; n = n + 1)
          {
            if (*v199 != v55)
            {
              objc_enumerationMutation(v52);
            }

            v57 = [*(*(&v198 + 1) + 8 * n) assetType];
            v58 = [v51 firstEntryAssetType];
            v59 = [SUCore stringIsEqual:v57 to:v58];

            if (v59)
            {
              [v161 addObject:v51];
              v63 = _MADLog(@"AutoStager");
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
              {
                v64 = [(MADAutoAssetStager *)v165 summary];
                v65 = [(MADAutoAssetStager *)v165 _targetNameActive];
                v66 = [v51 summary];
                *buf = 138544642;
                v223 = v64;
                v224 = 2114;
                v225 = v65;
                v226 = 2114;
                v227 = v146;
                v228 = 2048;
                v229 = m + 1;
                v230 = 2048;
                v231 = v140;
                v232 = 2114;
                v233 = v66;
                _os_log_impl(&dword_0, v63, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {%{public}@} set-configuration (%ld of %ld) [REQUIRED]:%{public}@", buf, 0x3Eu);
              }

              goto LABEL_64;
            }
          }

          v54 = [v52 countByEnumeratingWithState:&v198 objects:v234 count:16];
          if (v54)
          {
            continue;
          }

          break;
        }
      }

      [v143 addObject:v51];
      v52 = _MADLog(@"AutoStager");
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_64;
      }

      v60 = [(MADAutoAssetStager *)v165 summary];
      v61 = [(MADAutoAssetStager *)v165 _targetNameActive];
      v62 = [v51 summary];
      *buf = 138544642;
      v223 = v60;
      v224 = 2114;
      v225 = v61;
      v226 = 2114;
      v227 = v146;
      v228 = 2048;
      v229 = m + 1;
      v230 = 2048;
      v231 = v140;
      v232 = 2114;
      v233 = v62;
      _os_log_impl(&dword_0, v52, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {%{public}@} set-configuration (%ld of %ld) [OPTIONAL]:%{public}@", buf, 0x3Eu);

      goto LABEL_60;
    }

    v52 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v60 = [(MADAutoAssetStager *)v165 summary];
      v61 = [v51 summary];
      *buf = 138544386;
      v223 = v60;
      v224 = 2114;
      v225 = v146;
      v226 = 2048;
      v227 = m + 1;
      v228 = 2048;
      v229 = v140;
      v230 = 2114;
      v231 = v61;
      _os_log_impl(&dword_0, v52, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {%{public}@} set-configuration (%ld of %ld):%{public}@", buf, 0x34u);
LABEL_60:
    }

LABEL_64:

LABEL_65:
  }

  v67 = objc_opt_new();
  v68 = objc_opt_new();
  v149 = objc_opt_new();
  v150 = objc_opt_new();
  v69 = objc_alloc_init(NSMutableDictionary);
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  obj = v161;
  v70 = [obj countByEnumeratingWithState:&v194 objects:v221 count:16];
  v148 = v69;
  v152 = v68;
  v154 = v67;
  if (v70)
  {
    v71 = v70;
    v72 = *v195;
    v145 = *v195;
    do
    {
      v73 = 0;
      v155 = v71;
      do
      {
        if (*v195 != v72)
        {
          objc_enumerationMutation(obj);
        }

        v162 = v73;
        v74 = *(*(&v194 + 1) + 8 * v73);
        v75 = [v74 firstEntryAssetType];
        if (v75)
        {
          [v69 setSafeObject:v75 forKey:v75];
          [v67 objectForKeyedSubscript:v75];
          v77 = v76 = v67;
          v158 = v75;
          if (v77)
          {
            v192 = 0u;
            v193 = 0u;
            v190 = 0u;
            v191 = 0u;
            v78 = [v74 autoAssetEntries];
            v79 = [v78 countByEnumeratingWithState:&v190 objects:v220 count:16];
            if (v79)
            {
              v80 = v79;
              v81 = *v191;
              do
              {
                for (ii = 0; ii != v80; ii = ii + 1)
                {
                  if (*v191 != v81)
                  {
                    objc_enumerationMutation(v78);
                  }

                  v83 = *(*(&v190 + 1) + 8 * ii);
                  v186 = 0u;
                  v187 = 0u;
                  v188 = 0u;
                  v189 = 0u;
                  v84 = v77;
                  v85 = [v84 countByEnumeratingWithState:&v186 objects:v219 count:16];
                  if (v85)
                  {
                    v86 = v85;
                    v87 = *v187;
                    while (2)
                    {
                      for (jj = 0; jj != v86; jj = jj + 1)
                      {
                        if (*v187 != v87)
                        {
                          objc_enumerationMutation(v84);
                        }

                        if ([v83 isEqual:*(*(&v186 + 1) + 8 * jj)])
                        {

                          goto LABEL_88;
                        }
                      }

                      v86 = [v84 countByEnumeratingWithState:&v186 objects:v219 count:16];
                      if (v86)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  [v84 addObject:v83];
LABEL_88:
                  ;
                }

                v80 = [v78 countByEnumeratingWithState:&v190 objects:v220 count:16];
              }

              while (v80);
            }

            [v154 setObject:v77 forKeyedSubscript:v158];
            v69 = v148;
            v72 = v145;
            v71 = v155;
          }

          else
          {
            v89 = [v74 autoAssetEntries];
            v90 = [v89 mutableCopy];
            [v76 setObject:v90 forKeyedSubscript:v75];
          }

          v68 = v152;
          v67 = v154;
          v75 = v158;
        }

        v73 = v162 + 1;
      }

      while ((v162 + 1) != v71);
      v71 = [obj countByEnumeratingWithState:&v194 objects:v221 count:16];
    }

    while (v71);
  }

  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  v91 = v143;
  v92 = [v91 countByEnumeratingWithState:&v182 objects:v218 count:16];
  v142 = v91;
  if (!v92)
  {
    goto LABEL_128;
  }

  v93 = v92;
  v94 = *v183;
  v141 = *v183;
  while (2)
  {
    v95 = 0;
    v144 = v93;
    while (2)
    {
      if (*v183 != v94)
      {
        objc_enumerationMutation(v91);
      }

      v96 = *(*(&v182 + 1) + 8 * v95);
      v97 = [v96 firstEntryAssetType];
      if (v97)
      {
        v159 = v95;
        v98 = v97;
        v156 = [v69 safeObjectForKey:v97 ofClass:objc_opt_class()];
        v163 = v98;
        if (v156)
        {
          v99 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
          {
            v100 = [(MADAutoAssetStager *)v165 summary];
            *buf = 138543874;
            v223 = v100;
            v224 = 2114;
            v225 = v146;
            v226 = 2114;
            v227 = v98;
            _os_log_impl(&dword_0, v99, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {%{public}@} set-configuration already covered in REQUIRED so skipping for OPTIONAL | assetType:%{public}@", buf, 0x20u);
            goto LABEL_124;
          }
        }

        else
        {
          v99 = [v68 objectForKeyedSubscript:v98];
          if (v99)
          {
            v180 = 0u;
            v181 = 0u;
            v178 = 0u;
            v179 = 0u;
            v101 = [v96 autoAssetEntries];
            v102 = [v101 countByEnumeratingWithState:&v178 objects:v217 count:16];
            if (v102)
            {
              v103 = v102;
              v104 = *v179;
              do
              {
                for (kk = 0; kk != v103; kk = kk + 1)
                {
                  if (*v179 != v104)
                  {
                    objc_enumerationMutation(v101);
                  }

                  v106 = *(*(&v178 + 1) + 8 * kk);
                  v174 = 0u;
                  v175 = 0u;
                  v176 = 0u;
                  v177 = 0u;
                  v107 = v99;
                  v108 = [v107 countByEnumeratingWithState:&v174 objects:v216 count:16];
                  if (v108)
                  {
                    v109 = v108;
                    v110 = *v175;
                    while (2)
                    {
                      for (mm = 0; mm != v109; mm = mm + 1)
                      {
                        if (*v175 != v110)
                        {
                          objc_enumerationMutation(v107);
                        }

                        if ([v106 isEqual:*(*(&v174 + 1) + 8 * mm)])
                        {

                          goto LABEL_120;
                        }
                      }

                      v109 = [v107 countByEnumeratingWithState:&v174 objects:v216 count:16];
                      if (v109)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  [v107 addObject:v106];
LABEL_120:
                  ;
                }

                v103 = [v101 countByEnumeratingWithState:&v178 objects:v217 count:16];
              }

              while (v103);
            }

            v68 = v152;
            [v152 setObject:v99 forKeyedSubscript:v163];
            v69 = v148;
            v67 = v154;
            v94 = v141;
            v91 = v142;
            v93 = v144;
          }

          else
          {
            v100 = [v96 autoAssetEntries];
            v112 = [v100 mutableCopy];
            [v68 setObject:v112 forKeyedSubscript:v98];

LABEL_124:
          }
        }

        v95 = v159;
        v97 = v163;
      }

      if (++v95 != v93)
      {
        continue;
      }

      break;
    }

    v93 = [v91 countByEnumeratingWithState:&v182 objects:v218 count:16];
    if (v93)
    {
      continue;
    }

    break;
  }

LABEL_128:

  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  v113 = v67;
  v114 = [v113 countByEnumeratingWithState:&v170 objects:v215 count:16];
  if (v114)
  {
    v115 = v114;
    v116 = *v171;
    do
    {
      for (nn = 0; nn != v115; nn = nn + 1)
      {
        if (*v171 != v116)
        {
          objc_enumerationMutation(v113);
        }

        v118 = *(*(&v170 + 1) + 8 * nn);
        v119 = [v113 objectForKeyedSubscript:v118];
        v120 = [[NSString alloc] initWithFormat:@"%@_%@", @"AUTO_ASSET_STAGER_SET", v118];
        v121 = [(MADAutoAssetStager *)v165 newSetConfigurationForAssetSetIdentifier:v120 withAutoAssetEntries:v119];
        if (v121)
        {
          [v149 addObject:v121];
        }
      }

      v115 = [v113 countByEnumeratingWithState:&v170 objects:v215 count:16];
    }

    while (v115);
  }

  v164 = v149;
  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  v122 = v152;
  v123 = [v122 countByEnumeratingWithState:&v166 objects:v214 count:16];
  if (v123)
  {
    v124 = v123;
    v125 = *v167;
    do
    {
      for (i1 = 0; i1 != v124; i1 = i1 + 1)
      {
        if (*v167 != v125)
        {
          objc_enumerationMutation(v122);
        }

        v127 = *(*(&v166 + 1) + 8 * i1);
        v128 = [v122 objectForKeyedSubscript:v127];
        v129 = [[NSString alloc] initWithFormat:@"%@_%@", @"AUTO_ASSET_STAGER_SET", v127];
        v130 = [(MADAutoAssetStager *)v165 newSetConfigurationForAssetSetIdentifier:v129 withAutoAssetEntries:v128];
        if (v130)
        {
          [v150 addObject:v130];
        }
      }

      v124 = [v122 countByEnumeratingWithState:&v166 objects:v214 count:16];
    }

    while (v124);
  }

  v131 = v150;
  if ([(MADAutoAssetStager *)v165 stagingClientUsingGroups])
  {
    [(MADAutoAssetStager *)v165 _blendCandidateSetConfigurations:v146 blendingIntoRequiredConfigurations:v164 blendingFromOptionalConfigurations:v131];
    v132 = [(MADAutoAssetStager *)v165 candidateSetConfigurationsRequiredByTarget];
    [v132 setSafeObject:v164 forKey:v137];

    v133 = [(MADAutoAssetStager *)v165 candidateSetConfigurationsOptionalByTarget];
    [v133 setSafeObject:v131 forKey:v137];
  }

  v44 = @"Y";
LABEL_149:
  v134 = [[NSString alloc] initWithFormat:@"done forming set-lookups | haveSetLookups:%@", v44];
  [(MADAutoAssetStager *)v165 _logMilestoneFromLocation:v146 resultingInEvent:0 forMilestoneActivity:v134];

  return v140 > 0;
}

- (void)_extendLookupByAssetTypeWithSetConfigurations:(id)a3 limitingToSetTargets:(id)a4
{
  v113 = a3;
  v6 = a4;
  v7 = [(MADAutoAssetStager *)self autoStagerFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(MADAutoAssetStager *)self assetTargetTrainName];
  v10 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  v109 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v9 withRestoreVersion:v10];

  v104 = objc_alloc_init(NSMutableDictionary);
  v116 = objc_alloc_init(NSMutableDictionary);
  v115 = objc_alloc_init(NSMutableDictionary);
  v11 = self;
  v114 = objc_alloc_init(NSMutableDictionary);
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v12 = [(MADAutoAssetStager *)self setTargets];
  v13 = [v12 countByEnumeratingWithState:&v130 objects:v145 count:16];
  v117 = self;
  v105 = v6;
  if (v13)
  {
    v14 = v13;
    v15 = *v131;
    v93 = *v131;
    v95 = v12;
    do
    {
      v16 = 0;
      v97 = v14;
      do
      {
        if (*v131 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v130 + 1) + 8 * v16);
        context = objc_autoreleasePoolPush();
        if (v17)
        {
          if (![(MADAutoAssetStager *)v11 _isSetTargetWithinRange:v17 asCandidate:1])
          {
            goto LABEL_36;
          }

          v18 = [v17 autoAssetEntries];
          v19 = [v18 count];

          if (v19)
          {
            v20 = [v17 firstEntryAssetType];
            v21 = [v6 safeObjectForKey:v20 ofClass:objc_opt_class()];

            v102 = v21;
            if (v21)
            {
              v100 = v16;
              v128 = 0u;
              v129 = 0u;
              v126 = 0u;
              v127 = 0u;
              obj = [v17 autoAssetEntries];
              v22 = [obj countByEnumeratingWithState:&v126 objects:v144 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = 0;
                v111 = *v127;
                do
                {
                  for (i = 0; i != v23; i = i + 1)
                  {
                    if (*v127 != v111)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v26 = *(*(&v126 + 1) + 8 * i);
                    if (v26)
                    {
                      if ([(MADAutoAssetStager *)v11 stagingClientUsingGroups])
                      {
                        if (!v24)
                        {
                          v27 = [v26 assetSelector];
                          v28 = [v27 assetType];
                          v29 = [v26 assetSelector];
                          v30 = [v29 assetSpecifier];
                          v24 = [(MADAutoAssetStager *)v117 _setConfigurationForAssetType:v28 forAssetSpecifier:v30];

                          if (v24)
                          {
                            if ([(MADAutoAssetStager *)v117 _isSetConfigurationApplicableToRequired:v24])
                            {
                              v31 = [(MADAutoAssetStager *)v117 candidateSetConfigurationsRequiredByTarget];
                              v32 = v109;
                              v33 = [v31 safeObjectForKey:v109 ofClass:objc_opt_class()];

                              [v33 addObject:v24];
                              [(MADAutoAssetStager *)v117 candidateSetConfigurationsRequiredByTarget];
                            }

                            else
                            {
                              v37 = [(MADAutoAssetStager *)v117 candidateSetConfigurationsOptionalByTarget];
                              v32 = v109;
                              v33 = [v37 safeObjectForKey:v109 ofClass:objc_opt_class()];

                              [v33 addObject:v24];
                              [(MADAutoAssetStager *)v117 candidateSetConfigurationsOptionalByTarget];
                            }
                            v38 = ;
                            [v38 setSafeObject:v33 forKey:v32];
                          }
                        }
                      }

                      v34 = [v26 assetSelector];
                      v39 = [v34 assetType];
                      v40 = [v26 assetSelector];
                      v41 = [v40 assetSpecifier];
                      v42 = [v26 assetSelector];
                      v43 = [v42 downloadDecryptionKey];
                      v11 = v117;
                      [(MADAutoAssetStager *)v117 _extendLookupByAssetType:v113 fromSource:@"SET-TARGET" withAssetType:v39 withAssetSpecifier:v41 withDownloadDecryptionKey:v43 createdClientDefinedSetEntries:v116 createdNoClientSetEntries:v115 appendedSetEntries:v114];
                    }

                    else
                    {
                      v34 = _MADLog(@"AutoStager");
                      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                      {
                        v35 = [(MADAutoAssetStager *)v11 summary];
                        v36 = [(MADAutoAssetStager *)v11 setTargets];
                        *buf = 138543618;
                        v135 = v35;
                        v136 = 2114;
                        v137 = v36;
                        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {_extendLookupByAssetTypeWithSetConfigurations} nil set-entry encountered on setTargets array | setTargets:\n%{public}@", buf, 0x16u);
                      }
                    }
                  }

                  v23 = [obj countByEnumeratingWithState:&v126 objects:v144 count:16];
                }

                while (v23);
              }

              else
              {
                v24 = 0;
              }

              v6 = v105;
              v15 = v93;
              v12 = v95;
              v14 = v97;
              v16 = v100;
            }

            v44 = v102;
          }

          else
          {
            v46 = [NSString alloc];
            v47 = [v17 clientDomainName];
            [v17 assetSetIdentifier];
            v49 = v48 = v16;
            v44 = [v46 initWithFormat:@"%@^%@", v47, v49];

            v16 = v48;
            [v104 setSafeObject:v17 forKey:v44];
          }
        }

        else
        {
          v44 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v45 = [(MADAutoAssetStager *)v11 summary];
            *buf = 138543362;
            v135 = v45;
            _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {_extendLookupByAssetTypeWithSetConfigurations} nil encountered on setTargets array", buf, 0xCu);
          }
        }

LABEL_36:
        objc_autoreleasePoolPop(context);
        v16 = v16 + 1;
      }

      while (v16 != v14);
      v14 = [v12 countByEnumeratingWithState:&v130 objects:v145 count:16];
    }

    while (v14);
  }

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v96 = [(MADAutoAssetStager *)v11 setConfigurations];
  v50 = [v96 countByEnumeratingWithState:&v122 objects:v143 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v123;
    v92 = *v123;
    do
    {
      v53 = 0;
      v94 = v51;
      do
      {
        if (*v123 != v52)
        {
          objc_enumerationMutation(v96);
        }

        v54 = *(*(&v122 + 1) + 8 * v53);
        v55 = objc_autoreleasePoolPush();
        if (v54)
        {
          v108 = [v54 firstEntryAssetType];
          v56 = [v105 safeObjectForKey:v108 ofClass:objc_opt_class()];
          v57 = [NSString alloc];
          v58 = [v54 clientDomainName];
          v59 = [v54 assetSetIdentifier];
          v60 = [v57 initWithFormat:@"%@^%@", v58, v59];

          v61 = [v104 safeObjectForKey:v60 ofClass:objc_opt_class()];
          if (!(v56 | v61))
          {
            v98 = v61;
            v99 = v60;
            v101 = v56;
            v62 = [(MADAutoAssetStager *)v117 _isSetConfigurationApplicableToRequired:v54];
            if ([(MADAutoAssetStager *)v117 stagingClientUsingGroups])
            {
              if (v62)
              {
                v63 = [(MADAutoAssetStager *)v117 candidateSetConfigurationsRequiredByTarget];
                v64 = v109;
                v65 = [v63 safeObjectForKey:v109 ofClass:objc_opt_class()];

                [v65 addObject:v54];
                [(MADAutoAssetStager *)v117 candidateSetConfigurationsRequiredByTarget];
              }

              else
              {
                v69 = [(MADAutoAssetStager *)v117 candidateSetConfigurationsOptionalByTarget];
                v64 = v109;
                v65 = [v69 safeObjectForKey:v109 ofClass:objc_opt_class()];

                [v65 addObject:v54];
                [(MADAutoAssetStager *)v117 candidateSetConfigurationsOptionalByTarget];
              }
              v70 = ;
              [v70 setSafeObject:v65 forKey:v64];
            }

            v103 = v55;
            contexta = v53;
            v120 = 0u;
            v121 = 0u;
            v118 = 0u;
            v119 = 0u;
            v112 = v54;
            v71 = [v54 autoAssetEntries];
            v72 = [v71 countByEnumeratingWithState:&v118 objects:v142 count:16];
            if (v72)
            {
              v73 = v72;
              v74 = *v119;
              do
              {
                for (j = 0; j != v73; j = j + 1)
                {
                  if (*v119 != v74)
                  {
                    objc_enumerationMutation(v71);
                  }

                  v76 = *(*(&v118 + 1) + 8 * j);
                  if (v76)
                  {
                    v77 = [*(*(&v118 + 1) + 8 * j) assetSelector];
                    v78 = [v77 assetType];
                    v79 = [v76 assetSelector];
                    v80 = [v79 assetSpecifier];
                    v81 = [v76 assetSelector];
                    v82 = [v81 downloadDecryptionKey];
                    [(MADAutoAssetStager *)v117 _extendLookupByAssetType:v113 fromSource:@"AUTO-CONTROL-MANAGER-PROVIDED-SET-CONFIGURATION" withAssetType:v78 withAssetSpecifier:v80 withDownloadDecryptionKey:v82 createdClientDefinedSetEntries:v116 createdNoClientSetEntries:v115 appendedSetEntries:v114];
                  }

                  else
                  {
                    v77 = _MADLog(@"AutoStager");
                    if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_62;
                    }

                    v78 = [(MADAutoAssetStager *)v117 summary];
                    v83 = [v112 summary];
                    *buf = 138543618;
                    v135 = v78;
                    v136 = 2114;
                    v137 = v83;
                    _os_log_impl(&dword_0, v77, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {_extendLookupByAssetTypeWithSetConfigurations} nil set-entry encountered on setConfiguration array | nextSetConfiguration:%{public}@", buf, 0x16u);
                  }

LABEL_62:
                }

                v73 = [v71 countByEnumeratingWithState:&v118 objects:v142 count:16];
              }

              while (v73);
            }

            v52 = v92;
            v51 = v94;
            v53 = contexta;
            v56 = v101;
            v55 = v103;
            v61 = v98;
            v60 = v99;
          }

          v66 = v108;
        }

        else
        {
          v66 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            v67 = [(MADAutoAssetStager *)v117 summary];
            v68 = [(MADAutoAssetStager *)v117 setConfigurations];
            *buf = 138543618;
            v135 = v67;
            v136 = 2114;
            v137 = v68;
            _os_log_impl(&dword_0, v66, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {_extendLookupByAssetTypeWithSetConfigurations} nil set-configuration encountered on setConfgurations provided from auto-control-manager | setConfigurations\n:%{public}@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v55);
        v53 = v53 + 1;
        v11 = v117;
      }

      while (v53 != v51);
      v51 = [v96 countByEnumeratingWithState:&v122 objects:v143 count:16];
    }

    while (v51);
  }

  v84 = _MADLog(@"AutoStager");
  v85 = v105;
  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
  {
    v86 = [(MADAutoAssetStager *)v11 summary];
    v87 = [(MADAutoAssetStager *)v11 selectorContainerAsString:v116];
    v88 = [(MADAutoAssetStager *)v11 selectorContainerAsString:v115];
    v89 = v11;
    v90 = v88;
    v91 = [(MADAutoAssetStager *)v89 selectorContainerAsString:v114];
    *buf = 138544130;
    v135 = v86;
    v136 = 2114;
    v137 = v87;
    v138 = 2114;
    v139 = v90;
    v140 = 2114;
    v141 = v91;
    _os_log_impl(&dword_0, v84, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {_extendLookupByAssetTypeWithSetConfigurations} | extended set-lookup-map with target/configuration set-entries\n>>> created[Client:%{public}@][No:%{public}@]]\n>>> appended:%{public}@", buf, 0x2Au);

    v85 = v105;
  }
}

- (void)_extendLookupByAssetTypeWithDownloadedDescriptors:(id)a3 limitingToSetTargets:(id)a4
{
  v6 = a3;
  v65 = a4;
  v7 = [(MADAutoAssetStager *)self autoStagerFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(MADAutoAssetStager *)self assetTargetTrainName];
  v10 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  v11 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v9 withRestoreVersion:v10];

  v12 = [(MADAutoAssetStager *)self candidatesForStagingRequiredByTarget];
  v57 = v11;
  v54 = [v12 safeObjectForKey:v11 ofClass:objc_opt_class()];

  v52 = objc_alloc_init(NSMutableDictionary);
  v55 = objc_alloc_init(NSMutableDictionary);
  v56 = objc_alloc_init(NSMutableDictionary);
  v53 = objc_alloc_init(NSMutableDictionary);
  v63 = objc_alloc_init(NSMutableDictionary);
  v66 = objc_alloc_init(NSMutableDictionary);
  v62 = objc_alloc_init(NSMutableDictionary);
  v61 = objc_alloc_init(NSMutableDictionary);
  v60 = objc_alloc_init(NSMutableDictionary);
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = [(MADAutoAssetStager *)self alreadyDownloadedDescriptors];
  v13 = [obj countByEnumeratingWithState:&v69 objects:v93 count:16];
  v58 = v6;
  if (v13)
  {
    v14 = v13;
    v15 = *v70;
    v64 = self;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v70 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v69 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        if (!v17)
        {
          v22 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = [(MADAutoAssetStager *)self summary];
            *buf = 138543362;
            v74 = v23;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {_extendLookupByAssetTypeWithDownloadedDescriptors} nil encountered on alreadyDownloadedDescriptors array", buf, 0xCu);
            goto LABEL_15;
          }

LABEL_16:

          goto LABEL_28;
        }

        v19 = [v17 assetType];

        if (!v19)
        {
          v22 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = [(MADAutoAssetStager *)self summary];
            v24 = [v17 summary];
            *buf = 138543618;
            v74 = v23;
            v75 = 2114;
            v76 = v24;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {_extendLookupByAssetTypeWithDownloadedDescriptors} nil asset-type for asset-descriptor | autoAssetDescriptor:%{public}@", buf, 0x16u);

LABEL_15:
          }

          goto LABEL_16;
        }

        if ([v17 preSoftwareUpdateAssetStaging])
        {
          v20 = [v17 assetType];
          v21 = [v65 safeObjectForKey:v20 ofClass:objc_opt_class()];

          if (v21)
          {
            [(MADAutoAssetStager *)self trackSelectorForDescriptor:v17 inContainer:v63];
          }

          else
          {
            v25 = [v17 isPreSUStagingRequired];
            v26 = [v17 assetType];
            v27 = [v17 assetSpecifier];
            [(MADAutoAssetStager *)v64 _extendLookupByAssetType:v6 fromSource:@"DESCRIPTOR" withAssetType:v26 withAssetSpecifier:v27 createdClientDefinedSetEntries:v62 createdNoClientSetEntries:v61 appendedSetEntries:v60];

            self = v64;
            if ([(MADAutoAssetStager *)v64 stagingClientUsingGroups])
            {
              v59 = v25;
              v28 = [v17 assetType];
              v29 = [v17 assetSpecifier];
              v30 = [(MADAutoAssetStager *)v64 _setConfigurationForAssetType:v28 forAssetSpecifier:v29];

              if (v30)
              {
                if ((v59 & 1) != 0 || ([v30 firstEntryAssetType], v31 = objc_claimAutoreleasedReturnValue(), v32 = -[MADAutoAssetStager isAssetType:representedInAssetDescriptors:](v64, "isAssetType:representedInAssetDescriptors:", v31, v54), v31, v32))
                {
                  v33 = [(MADAutoAssetStager *)v64 candidateSetConfigurationsRequiredByTarget];
                  v34 = [v33 safeObjectForKey:v57 ofClass:objc_opt_class()];

                  [v34 addObject:v30];
                  v35 = [(MADAutoAssetStager *)v64 candidateSetConfigurationsRequiredByTarget];
                  self = v64;
                  [v35 setSafeObject:v34 forKey:v57];

                  v36 = v64;
                  v37 = v17;
                  v38 = v56;
                }

                else
                {
                  v39 = [(MADAutoAssetStager *)v64 candidateSetConfigurationsOptionalByTarget];
                  v34 = [v39 safeObjectForKey:v57 ofClass:objc_opt_class()];

                  [v34 addObject:v30];
                  v40 = [(MADAutoAssetStager *)v64 candidateSetConfigurationsOptionalByTarget];
                  self = v64;
                  [v40 setSafeObject:v34 forKey:v57];

                  v36 = v64;
                  v37 = v17;
                  v38 = v53;
                }

                [(MADAutoAssetStager *)v36 trackSelectorForDescriptor:v37 inContainer:v38];
              }

              else
              {
                [(MADAutoAssetStager *)v64 trackSelectorForDescriptor:v17 inContainer:v55];
                self = v64;
              }

              v6 = v58;
            }
          }
        }

        else
        {
          [(MADAutoAssetStager *)self trackSelectorForDescriptor:v17 inContainer:v66];
        }

LABEL_28:
        objc_autoreleasePoolPop(v18);
      }

      v14 = [obj countByEnumeratingWithState:&v69 objects:v93 count:16];
    }

    while (v14);
  }

  v41 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    obja = [(MADAutoAssetStager *)self summary];
    v42 = [(MADAutoAssetStager *)self selectorContainerAsString:v62];
    v43 = [(MADAutoAssetStager *)self selectorContainerAsString:v61];
    v44 = [(MADAutoAssetStager *)self selectorContainerAsString:v60];
    v45 = [(MADAutoAssetStager *)self selectorContainerAsString:v56];
    [(MADAutoAssetStager *)self selectorContainerAsString:v53];
    v47 = v46 = self;
    v48 = [(MADAutoAssetStager *)v46 selectorContainerAsString:v52];
    v49 = [(MADAutoAssetStager *)v46 selectorContainerAsString:v55];
    v50 = [(MADAutoAssetStager *)v46 selectorContainerAsString:v63];
    v51 = [(MADAutoAssetStager *)v46 selectorContainerAsString:v66];
    *buf = 138545666;
    v74 = obja;
    v75 = 2114;
    v76 = v42;
    v77 = 2114;
    v78 = v43;
    v79 = 2114;
    v80 = v44;
    v81 = 2114;
    v82 = v45;
    v83 = 2114;
    v84 = v47;
    v85 = 2114;
    v86 = v48;
    v87 = 2114;
    v88 = v49;
    v89 = 2114;
    v90 = v50;
    v91 = 2114;
    v92 = v51;
    _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {_extendLookupByAssetTypeWithDownloadedDescriptors} | final candidate summary\n>>> created[Client:%{public}@][No:%{public}@]]\n>>> appended:%{public}@\n>>> addedRequired:%{public}@\n>>> addedOptional:%{public}@\n>>> setTargetRemoves:%{public}@\n>>> noSetConfiguration:%{public}@\n>>> ignored(bySetTarget:%{public}@,NoSupport:%{public}@)", buf, 0x66u);

    v6 = v58;
  }
}

- (void)_extendLookupByAssetType:(id)a3 fromSource:(id)a4 withAssetType:(id)a5 withAssetSpecifier:(id)a6 withDownloadDecryptionKey:(id)a7 createdClientDefinedSetEntries:(id)a8 createdNoClientSetEntries:(id)a9 appendedSetEntries:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v54 = a7;
  v55 = a8;
  v20 = a9;
  v53 = a10;
  v21 = [(MADAutoAssetStager *)self autoStagerFSM];
  v22 = [v21 extendedStateQueue];
  dispatch_assert_queue_V2(v22);

  v23 = [(MADAutoAssetStager *)self _setConfigurationForAssetType:v18 forAssetSpecifier:v19];
  v56 = v16;
  v24 = [v16 safeObjectForKey:v18 ofClass:objc_opt_class()];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 assetSetEntryForAssetType:v18 forAssetSpecifier:v19];

    if (v26)
    {
      v27 = _MADLog(@"AutoStager");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v28 = [(MADAutoAssetStager *)self summary];
        v29 = [v25 summary];
        *buf = 138544386;
        v58 = v28;
        v59 = 2114;
        v60 = v17;
        v61 = 2114;
        v62 = v29;
        v63 = 2114;
        v64 = v18;
        v65 = 2114;
        v66 = v19;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEBUG, "%{public}@\n[AUTO-STAGER] {_extendLookupByAssetType} [%{public}@] asset-selector already tracked as candidate | setConfiguration:%{public}@ | assetType:%{public}@ | assetSpecifier:%{public}@", buf, 0x34u);
      }

      goto LABEL_29;
    }

    v52 = v17;
    v35 = [NSMutableArray alloc];
    v36 = [v25 autoAssetEntries];
    v27 = [v35 initWithArray:v36];

    if (v23)
    {
      v37 = [v23 assetSetEntryForAssetType:v18 forAssetSpecifier:v19];
      if (!v37)
      {
        v38 = _MADLog(@"AutoStager");
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = [(MADAutoAssetStager *)self summary];
          *buf = 138544130;
          v58 = v39;
          v59 = 2114;
          v60 = v52;
          v61 = 2114;
          v62 = v18;
          v63 = 2114;
          v64 = v19;
          v40 = "%{public}@\n[AUTO-STAGER] {_extendLookupByAssetType} [%{public}@] unable to locate additional asset-set-entry | assetType:%{public}@ | assetSpecifier:%{public}@";
LABEL_32:
          _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, v40, buf, 0x2Au);

          goto LABEL_33;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v37 = [[MANAutoAssetSetEntry alloc] initForAssetType:v18 withAssetSpecifier:v19 usingDecryptionKey:0];
      if (!v37)
      {
        v38 = _MADLog(@"AutoStager");
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = [(MADAutoAssetStager *)self summary];
          *buf = 138544130;
          v58 = v39;
          v59 = 2114;
          v60 = v52;
          v61 = 2114;
          v62 = v18;
          v63 = 2114;
          v64 = v19;
          v40 = "%{public}@\n[AUTO-STAGER] {_extendLookupByAssetType} [%{public}@] unable to create asset-set-entry | assetType:%{public}@ | assetSpecifier:%{public}@";
          goto LABEL_32;
        }

LABEL_33:
        v48 = v53;
        goto LABEL_34;
      }
    }

    v38 = v37;
    v50 = v20;
    [v27 addObject:v37];
    v45 = [v25 clientDomainName];
    v46 = [v25 assetSetIdentifier];
    v47 = [(MADAutoAssetStager *)self newSetConfigurationForClientDomainName:v45 forAssetSetIdentifier:v46 withAutoAssetEntries:v27];

    [v56 setSafeObject:v47 forKey:v18];
    v48 = v53;
    [(MADAutoAssetStager *)self trackSelectorForSetEntry:v38 inContainer:v53];
    v25 = v47;
    v20 = v50;
LABEL_34:

    v17 = v52;
    goto LABEL_35;
  }

  v51 = v17;
  v27 = objc_alloc_init(NSMutableArray);
  v49 = v20;
  if (!v23)
  {
    v41 = [[MANAutoAssetSetEntry alloc] initForAssetType:v18 withAssetSpecifier:v19 usingDecryptionKey:v54];
    if (v41)
    {
      v31 = v41;
      [v27 addObject:v41];
      v34 = [[NSString alloc] initWithFormat:@"%@_%@", @"AUTO_ASSET_STAGER_SET", v18];
      [(MADAutoAssetStager *)self trackSelectorForSetEntry:v31 inContainer:v20];
      v32 = @"com.apple.MobileAsset.AutoAssetStager.client";
      v33 = @"AUTO_ASSET_STAGER_AS_CLIENT";
      goto LABEL_14;
    }

    v42 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = [(MADAutoAssetStager *)self summary];
      *buf = 138544130;
      v58 = v43;
      v59 = 2114;
      v60 = v17;
      v61 = 2114;
      v62 = v18;
      v63 = 2114;
      v64 = v19;
      _os_log_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {_extendLookupByAssetType} [%{public}@] unable to create asset-set-entry | assetType:%{public}@ | assetSpecifier:%{public}@", buf, 0x2Au);
      goto LABEL_25;
    }

LABEL_26:

    v32 = 0;
    v33 = 0;
    v34 = 0;
    v31 = 0;
LABEL_27:
    v25 = 0;
    goto LABEL_28;
  }

  v30 = [v23 assetSetEntryForAssetType:v18 forAssetSpecifier:v19];
  if (!v30)
  {
    v42 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = [(MADAutoAssetStager *)self summary];
      v44 = [v23 summary];
      *buf = 138544386;
      v58 = v43;
      v59 = 2114;
      v60 = v17;
      v61 = 2114;
      v62 = v18;
      v63 = 2114;
      v64 = v19;
      v65 = 2114;
      v66 = v44;
      _os_log_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {_extendLookupByAssetType} [%{public}@] unable to locate asset-set-entry | assetType:%{public}@ | assetSpecifier:%{public}@ | clientDefinedSetConfiguration:%{public}@", buf, 0x34u);

LABEL_25:
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v31 = v30;
  [v27 addObject:v30];
  v32 = [v23 clientDomainName];
  v33 = [v23 autoAssetSetClientName];
  v34 = [v23 assetSetIdentifier];
  [(MADAutoAssetStager *)self trackSelectorForSetEntry:v31 inContainer:v55];
LABEL_14:
  v25 = 0;
  if (!v32 || !v33 || !v34)
  {
    goto LABEL_28;
  }

  if (![v27 count])
  {
    goto LABEL_27;
  }

  v25 = [(MADAutoAssetStager *)self newSetConfigurationForClientDomainName:v32 forAssetSetIdentifier:v34 withAutoAssetEntries:v27];
  [v56 setSafeObject:v25 forKey:v18];
LABEL_28:

  v20 = v49;
  v17 = v51;
LABEL_29:
  v48 = v53;
LABEL_35:
}

- (id)_trimConsideringToLatestDownloaded:(id)a3
{
  v4 = a3;
  v47 = self;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = v4;
  v8 = objc_alloc_init(NSMutableDictionary);
  v49 = objc_alloc_init(NSMutableDictionary);
  v48 = objc_alloc_init(NSMutableDictionary);
  v50 = objc_alloc_init(NSMutableDictionary);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v7;
  v51 = v8;
  v54 = [obj countByEnumeratingWithState:&v59 objects:v72 count:16];
  if (!v54)
  {
    goto LABEL_22;
  }

  v53 = *v60;
  p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
  while (2)
  {
    for (i = 0; i != v54; i = i + 1)
    {
      if (*v60 != v53)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v59 + 1) + 8 * i);
      v12 = objc_autoreleasePoolPush();
      v13 = [MAAutoAssetSelector alloc];
      v14 = [v11 assetType];
      v15 = [v11 assetSpecifier];
      v16 = [v13 initForAssetType:v14 withAssetSpecifier:v15];

      v17 = [v16 persistedEntryID];
      v18 = [v8 safeObjectForKey:v17 ofClass:objc_opt_class()];

      if (!v18)
      {
        v21 = [v16 persistedEntryID];
        [v8 setSafeObject:v11 forKey:v21];
LABEL_12:

        goto LABEL_13;
      }

      v19 = v8;
      v20 = p_weak_ivar_lyt[223];
      v21 = [v11 assetType];
      v22 = [v18 assetType];
      if (([v20 stringIsEqual:v21 to:v22] & 1) == 0)
      {

        v8 = v19;
        goto LABEL_12;
      }

      v23 = p_weak_ivar_lyt[223];
      v24 = [v11 assetSpecifier];
      v25 = [v18 assetSpecifier];
      LODWORD(v23) = [v23 stringIsEqual:v24 to:v25];

      v8 = v51;
      if (v23)
      {
        v26 = [SUCoreRestoreVersion alloc];
        v27 = [v11 assetVersion];
        v28 = [v26 initWithRestoreVersion:v27];

        v29 = [SUCoreRestoreVersion alloc];
        v30 = [v18 assetVersion];
        v31 = [v29 initWithRestoreVersion:v30];

        if ([v28 isComparable:v31])
        {
          v8 = v51;
          if ([v28 compare:v31] == &dword_0 + 1)
          {
            [(MADAutoAssetStager *)v47 trackSelectorForDescriptor:v11 inContainer:v49];
            v33 = [v16 persistedEntryID];
            [v51 setSafeObject:v11 forKey:v33];
          }

          else
          {
            [(MADAutoAssetStager *)v47 trackSelectorForDescriptor:v11 inContainer:v48];
          }
        }

        else
        {
          [(MADAutoAssetStager *)v47 trackSelectorForDescriptor:v11 inContainer:v50];
          v8 = v51;
        }

        objc_autoreleasePoolPop(v12);
        goto LABEL_22;
      }

LABEL_13:

      objc_autoreleasePoolPop(v12);
      p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
    }

    v54 = [obj countByEnumeratingWithState:&v59 objects:v72 count:16];
    if (v54)
    {
      continue;
    }

    break;
  }

LABEL_22:
  v34 = obj;

  if ([v8 count])
  {
    v34 = objc_alloc_init(NSMutableArray);

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v35 = v8;
    v36 = [v35 countByEnumeratingWithState:&v55 objects:v71 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v56;
      do
      {
        for (j = 0; j != v37; j = j + 1)
        {
          if (*v56 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = [v35 safeObjectForKey:*(*(&v55 + 1) + 8 * j) ofClass:objc_opt_class()];
          if (v40)
          {
            [v34 addObject:v40];
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v55 objects:v71 count:16];
      }

      while (v37);
    }

    v8 = v51;
  }

  v41 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [(MADAutoAssetStager *)v47 summary];
    v43 = [(MADAutoAssetStager *)v47 selectorContainerAsString:v49];
    v44 = [(MADAutoAssetStager *)v47 selectorContainerAsString:v48];
    v45 = [(MADAutoAssetStager *)v47 selectorContainerAsString:v50];
    *buf = 138544130;
    v64 = v42;
    v65 = 2114;
    v66 = v43;
    v67 = 2114;
    v68 = v44;
    v69 = 2114;
    v70 = v45;
    _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {_trimConsideringToLatestDownloaded} consideration summary\n>>> bestCandidateSoFarEntries:%{public}@\n>>> olderEntries:%{public}@\n>>> notComparableEntries:%{public}@", buf, 0x2Au);

    v8 = v51;
  }

  return v34;
}

- (id)_setTargetForAssetType:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = self;
  v7 = [(MADAutoAssetStager *)self setConfigurations];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [v12 firstEntryAssetType];
        v15 = [SUCore stringIsEqual:v14 to:v4];

        if (v15)
        {
          v16 = [(MADAutoAssetStager *)v19 _setTargetForSetConfiguration:v12];
          if (v16)
          {
            v17 = v16;
            objc_autoreleasePoolPop(v13);
            goto LABEL_12;
          }
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_12:

  return v17;
}

- (id)_setConfigurationForAssetType:(id)a3 forAssetSpecifier:(id)a4
{
  v6 = a3;
  v35 = a4;
  v7 = [(MADAutoAssetStager *)self autoStagerFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v9 = [(MADAutoAssetStager *)self setConfigurations];
  v10 = [v9 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (!v10)
  {
    v37 = 0;
    v12 = v35;
LABEL_29:

    goto LABEL_31;
  }

  v11 = v10;
  v36 = 0;
  v37 = 0;
  v38 = *v40;
  v33 = v6;
  v34 = v9;
  v12 = v35;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v40 != v38)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v39 + 1) + 8 * i);
      v15 = objc_autoreleasePoolPush();
      v16 = [(MADAutoAssetStager *)self _setTargetForSetConfiguration:v14];
      v17 = [v14 assetSetEntryForAssetType:v6 forAssetSpecifier:v12];
      if (v17 && ![(MADAutoAssetStager *)self _isAssetSetEntry:v17 blockedBySetTarget:v16])
      {
        v18 = v37;
        if (v37)
        {
          if (v36)
          {
            v36 = 1;
          }

          else
          {
            v19 = [v17 assetSelector];
            v20 = [v19 downloadDecryptionKey];

            if (v20)
            {
              v21 = v14;

              v36 = 1;
              v18 = v21;
              v9 = v34;
              v12 = v35;
            }

            else
            {
              v36 = 0;
              v9 = v34;
              v12 = v35;
              v18 = v37;
            }
          }

          v37 = v18;
          if (v16)
          {
            v22 = [v16 assetSetEntryForAssetType:v6 forAssetSpecifier:v12];
            v23 = v22;
            if (v22)
            {
              v24 = [v22 assetSelector];
              v25 = [v24 downloadDecryptionKey];

              v12 = v35;
              if (v25)
              {
                v29 = v14;

                objc_autoreleasePoolPop(v15);
                v37 = v29;
                v6 = v33;
                v9 = v34;
                goto LABEL_25;
              }
            }

            else
            {
              v26 = _MADLog(@"AutoStager");
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                v32 = [(MADAutoAssetStager *)self summary];
                v27 = [v16 summary];
                *buf = 138544130;
                v44 = v32;
                v45 = 2114;
                v46 = v6;
                v47 = 2114;
                v48 = v35;
                v49 = 2114;
                v50 = v27;
                v28 = v27;
                _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {_setConfigurationForAssetDescriptor} unable to locate set-target entry when set-target allows entry | assetType:%{public}@ | assetSpecifier:%{public}@ | setTarget:%{public}@", buf, 0x2Au);

                v12 = v35;
              }
            }

            v6 = v33;
            v9 = v34;
          }
        }

        else
        {
          v37 = v14;
        }
      }

      objc_autoreleasePoolPop(v15);
    }

    v11 = [v9 countByEnumeratingWithState:&v39 objects:v51 count:16];
  }

  while (v11);
LABEL_25:

  if (v37)
  {
    v9 = [(MADAutoAssetStager *)self _setTargetForSetConfiguration:v37];
    if (v9)
    {
      v30 = [(MADAutoAssetStager *)self _setConfigurationAdjustedFrom:v37 basedOnSetTarget:v9];

      v37 = v30;
      v6 = v33;
    }

    goto LABEL_29;
  }

  v37 = 0;
LABEL_31:

  return v37;
}

- (BOOL)_isAssetSetEntry:(id)a3 blockedBySetTarget:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  v5 = a4;
  v6 = a3;
  v7 = [v6 assetSelector];
  v8 = [v7 assetType];
  v9 = [v6 assetSelector];

  v10 = [v9 assetSpecifier];
  v11 = [v5 assetSetEntryForAssetType:v8 forAssetSpecifier:v10];

  v12 = v11 == 0;
  return v12;
}

- (id)_setTargetForSetConfiguration:(id)a3
{
  v24 = a3;
  v4 = [(MADAutoAssetStager *)self autoStagerFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v22 = self;
  obj = [(MADAutoAssetStager *)self setTargets];
  v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v8 = *v26;
  p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v26 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v25 + 1) + 8 * i);
      v12 = p_weak_ivar_lyt[223];
      v13 = [v11 clientDomainName];
      v14 = [v24 clientDomainName];
      if (![v12 stringIsEqual:v13 to:v14])
      {
        goto LABEL_11;
      }

      v15 = p_weak_ivar_lyt;
      v16 = p_weak_ivar_lyt[223];
      v17 = [v11 assetSetIdentifier];
      v18 = [v24 assetSetIdentifier];
      if (![v16 stringIsEqual:v17 to:v18])
      {

        p_weak_ivar_lyt = v15;
LABEL_11:

        continue;
      }

      v19 = [(MADAutoAssetStager *)v22 _isSetTargetWithinRange:v11 asCandidate:1];

      p_weak_ivar_lyt = v15;
      if (v19)
      {
        v20 = v11;
        goto LABEL_15;
      }
    }

    v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v7);
LABEL_14:
  v20 = 0;
LABEL_15:

  return v20;
}

- (id)_setConfigurationAdjustedFrom:(id)a3 basedOnSetTarget:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 clientDomainName];
  v9 = [v7 assetSetIdentifier];

  v10 = [v6 autoAssetEntries];

  v11 = [(MADAutoAssetStager *)self newSetConfigurationForClientDomainName:v8 forAssetSetIdentifier:v9 withAutoAssetEntries:v10];

  return v11;
}

- (BOOL)_isSetConfigurationApplicableToRequired:(id)a3
{
  v4 = [a3 firstEntryAssetType];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(MADAutoAssetStager *)self candidatesForStaging];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 assetType];
        if ([SUCore stringIsEqual:v4 to:v10])
        {
          v11 = [v9 isPreSUStagingRequired];

          if (v11)
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

LABEL_12:

  return v6;
}

- (void)lookupCacheUpdateWithDetermineResult:(id)a3 fromLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetStager *)self autoStagerFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v91 = v7;
  v10 = [[NSString alloc] initWithFormat:@"%@:lookupCacheUpdateWithDetermineResult", v7];
  v11 = [v6 autoAssetCatalog];
  v90 = v6;
  v12 = [v6 baseForStagingDescriptors];
  v13 = [(MADAutoAssetStager *)self activeSetJobConfiguration];
  v14 = [v13 firstEntryAssetType];

  v15 = [(MADAutoAssetStager *)self _targetNameActive:@"LOOKUP"];
  v95 = +[MADAutoAssetControlManager preferenceStagingLookupFlipRequiredOptional];
  v96 = objc_alloc_init(NSMutableDictionary);
  v93 = objc_alloc_init(NSMutableDictionary);
  v109 = self;
  v92 = v14;
  v97 = v15;
  if (!v14)
  {
    v18 = [(MADAutoAssetStager *)self autoStagerFSM];
    v19 = [v18 diag];
    v20 = v15;
    v21 = [NSString alloc];
    v22 = [(MADAutoAssetStager *)self activeSetJobConfiguration];
    v23 = [v22 summary];
    v24 = [v21 initWithFormat:@"[%@] {%@} active-set-job set-configuration without assetType | activeSetJobConfiguration:%@", v20, v10, v23];
LABEL_7:
    v27 = v24;
    [v19 trackAnomaly:@"AUTO-STAGER" forReason:v24 withResult:6111 withError:0];

    self = v109;
    v94 = 0;
    goto LABEL_60;
  }

  if (!v11)
  {
    v18 = [(MADAutoAssetStager *)self autoStagerFSM];
    v19 = [v18 diag];
    v25 = v15;
    v26 = [NSString alloc];
    v22 = [(MADAutoAssetStager *)self activeSetJobConfiguration];
    v23 = [v22 summary];
    v24 = [v26 initWithFormat:@"[%@] {%@} active-set-job without catalog lookup results | activeSetJobConfiguration:%@", v25, v10, v23];
    goto LABEL_7;
  }

  v16 = [(MADAutoAssetStager *)self setLookupResults];
  [v16 setSafeObject:v11 forKey:v14];

  if (v12)
  {
    v17 = [(MADAutoAssetStager *)self baseForStagingDescriptors];
    [v17 addObjectsFromArray:v12];
  }

  else
  {
    v17 = [(MADAutoAssetStager *)self autoStagerFSM];
    v28 = [v17 diag];
    v29 = [NSString alloc];
    v30 = [(MADAutoAssetStager *)self activeSetJobConfiguration];
    v31 = [v30 summary];
    v32 = [v29 initWithFormat:@"[%@] {%@} active-set-job without base for staging descriptors | activeSetJobConfiguration:%@", v97, v10, v31];
    [v28 trackAnomaly:@"AUTO-STAGER" forReason:v32 withResult:6111 withError:0];

    self = v109;
  }

  v33 = [(MADAutoAssetStager *)self newSetLookupResult:v10 forAssetType:v92 forSetCatalog:v11];
  if ([(MADAutoAssetStager *)self stagingClientUsingGroups])
  {
    [(MADAutoAssetStager *)self _lookupCachePersistResultByGroup:v33 fromLocation:v10];
  }

  else
  {
    [(MADAutoAssetStager *)self _lookupCachePersistResult:v33 fromLocation:v10];
  }

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = [v33 discoveredAtomicEntries];
  v104 = [obj countByEnumeratingWithState:&v118 objects:v137 count:16];
  if (v104)
  {
    v94 = 0;
    v102 = *v119;
    p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
    v99 = v11;
    v100 = v10;
    v98 = v12;
    v103 = v33;
    while (1)
    {
      for (i = 0; i != v104; i = v59 + 1)
      {
        if (*v119 != v102)
        {
          objc_enumerationMutation(obj);
        }

        v107 = i;
        v36 = *(*(&v118 + 1) + 8 * i);
        v37 = [v36 fullAssetSelector];
        v38 = [v37 assetType];
        v39 = [v36 fullAssetSelector];
        v40 = [v39 assetSpecifier];
        v41 = [(MADAutoAssetStager *)v109 assetMetadataFromAssetCatalog:v11 forAssetype:v38 forAssetSpecifier:v40 preferringBestFormat:1];

        v106 = v41;
        if (v41)
        {
          v42 = [MADAutoAssetDescriptor alloc];
          v43 = [v36 fullAssetSelector];
          v44 = [v43 assetType];
          v117 = 0;
          v45 = [(MADAutoAssetDescriptor *)v42 initForAssetType:v44 fromMetadata:v41 invalidReasons:&v117];
          v46 = v117;

          v110 = v45;
          v108 = v46;
          if (v45)
          {
            log = @"ALL";
            v47 = v45;
            if ([(MADAutoAssetStager *)v109 stagingClientUsingGroups])
            {
              if (v95 == [v45 isPreSUStagingRequired])
              {
                [(MADAutoAssetStager *)v109 _targetNameActiveOptional];
              }

              else
              {
                [(MADAutoAssetStager *)v109 _targetNameActiveRequired];
              }
              log = ;
            }

            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            v112 = [(MADAutoAssetStager *)v109 alreadyDownloadedDescriptors];
            v60 = [v112 countByEnumeratingWithState:&v113 objects:v136 count:16];
            if (v60)
            {
              v61 = v60;
              v62 = *v114;
              do
              {
                v63 = 0;
                v111 = v61;
                do
                {
                  if (*v114 != v62)
                  {
                    objc_enumerationMutation(v112);
                  }

                  v64 = *(*(&v113 + 1) + 8 * v63);
                  v65 = p_weak_ivar_lyt[223];
                  v66 = [v47 assetType];
                  v67 = [v64 assetType];
                  if (![v65 stringIsEqual:v66 to:v67])
                  {
                    goto LABEL_41;
                  }

                  v68 = v62;
                  v69 = p_weak_ivar_lyt[223];
                  v70 = [v47 assetSpecifier];
                  v71 = [v64 assetSpecifier];
                  if (![v69 stringIsEqual:v70 to:v71])
                  {

                    v62 = v68;
                    v61 = v111;
LABEL_41:

                    goto LABEL_42;
                  }

                  v72 = p_weak_ivar_lyt[223];
                  [v47 assetVersion];
                  v74 = v73 = p_weak_ivar_lyt;
                  v75 = [v64 assetVersion];
                  LOBYTE(v72) = [v72 stringIsEqual:v74 to:v75];

                  p_weak_ivar_lyt = v73;
                  v47 = v110;

                  v62 = v68;
                  v61 = v111;
                  if (v72)
                  {

                    self = v109;
                    v81 = v109;
                    v82 = v110;
                    v83 = v96;
                    goto LABEL_52;
                  }

LABEL_42:
                  v63 = v63 + 1;
                }

                while (v61 != v63);
                v61 = [v112 countByEnumeratingWithState:&v113 objects:v136 count:16];
              }

              while (v61);
            }

            if ([v47 preSoftwareUpdateAssetStaging])
            {
              self = v109;
              [(MADAutoAssetStager *)v109 addToAvailableForStaging:v47];
              v76 = [[NSString alloc] initWithFormat:@"[%@] adding to availableForStaging (from downloaded that support staging)", log];
              v10 = v100;
              [(MADAutoAssetStager *)v109 _persistDescriptor:v100 operation:@"ENTRY_ADD" persistingDescriptor:v47 withRepresentation:601 message:v76];

              v77 = [(MADAutoAssetStager *)v109 persistedState];
              v78 = [v77 persistedConfig];
              v79 = [(MADAutoAssetStager *)v109 availableForStaging];
              [v78 persistULL:objc_msgSend(v79 forKey:"count") shouldPersist:{@"determinedAvailableAssetCount", 1}];

              v47 = v110;
              v80 = [v110 metadata];
              -[MADAutoAssetStager setOverallStagedTotalExpectedBytes:](v109, "setOverallStagedTotalExpectedBytes:", [v80 safeIntegerForKey:@"_UnarchivedSize"] + -[MADAutoAssetStager overallStagedTotalExpectedBytes](v109, "overallStagedTotalExpectedBytes"));

              [(MADAutoAssetStager *)v109 _logPersistedConfigSet:v100 message:@"added to available for staging"];
              v94 = (v94 + 1);
            }

            else
            {
              self = v109;
              v81 = v109;
              v82 = v47;
              v83 = v93;
LABEL_52:
              [(MADAutoAssetStager *)v81 trackSelectorForDescriptor:v82 inContainer:v83];
              v10 = v100;
            }

            v12 = v98;
            v11 = v99;
            v33 = v103;
            v59 = v107;
            goto LABEL_54;
          }

          log = _MADLog(@"AutoStager");
          v52 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
          self = v109;
          if (v46)
          {
            if (v52)
            {
              v53 = [(MADAutoAssetStager *)v109 summary];
              v54 = [v36 summary];
              v33 = v103;
              v55 = [v103 summary];
              *buf = 138544642;
              v123 = v53;
              v124 = 2114;
              v125 = v97;
              v126 = 2114;
              v127 = v10;
              v128 = 2114;
              v129 = v108;
              v130 = 2114;
              v131 = v54;
              v132 = 2114;
              v133 = v55;
              v56 = log;
              v57 = "%{public}@\n[%{public}@] {%{public}@} failed to allocate availableDescriptor | %{public}@ | nextSetEntry:%{public}@ | promotionSetConfiguration:%{public}@";
              v58 = 62;
              goto LABEL_48;
            }

LABEL_49:
            v33 = v103;
          }

          else
          {
            if (!v52)
            {
              goto LABEL_49;
            }

            v53 = [(MADAutoAssetStager *)v109 summary];
            v54 = [v36 summary];
            v33 = v103;
            v55 = [v103 summary];
            *buf = 138544386;
            v123 = v53;
            v124 = 2114;
            v125 = v97;
            v126 = 2114;
            v127 = v10;
            v128 = 2114;
            v129 = v54;
            v130 = 2114;
            v131 = v55;
            v56 = log;
            v57 = "%{public}@\n[%{public}@] {%{public}@} failed to allocate availableDescriptor | nextSetEntry:%{public}@ | promotionSetConfiguration:%{public}@";
            v58 = 52;
LABEL_48:
            _os_log_impl(&dword_0, v56, OS_LOG_TYPE_ERROR, v57, buf, v58);
          }

          v59 = v107;
          v47 = 0;
LABEL_54:

          goto LABEL_55;
        }

        v48 = _MADLog(@"AutoStager");
        v108 = v48;
        self = v109;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = [(MADAutoAssetStager *)v109 summary];
          v50 = [v36 summary];
          v33 = v103;
          v51 = [v103 summary];
          *buf = 138544386;
          v123 = v49;
          v124 = 2114;
          v125 = v97;
          v126 = 2114;
          v127 = v10;
          v128 = 2114;
          v129 = v50;
          v130 = 2114;
          v131 = v51;
          _os_log_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "%{public}@\n[%{public}@] {%{public}@} unable to locate asset metadata | nextSetEntry:%{public}@ | promotionSetConfiguration:%{public}@", buf, 0x34u);
        }

        else
        {
          v33 = v103;
        }

        v59 = v107;
LABEL_55:
      }

      v104 = [obj countByEnumeratingWithState:&v118 objects:v137 count:16];
      if (!v104)
      {
        goto LABEL_59;
      }
    }
  }

  v94 = 0;
LABEL_59:

LABEL_60:
  [(MADAutoAssetStager *)self setActiveJobDescriptor:0];
  v84 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
  {
    v85 = [(MADAutoAssetStager *)self summary];
    v86 = self;
    if (v92)
    {
      v87 = v92;
    }

    else
    {
      v87 = @"N";
    }

    v88 = [(MADAutoAssetStager *)v86 selectorContainerAsString:v96];
    v89 = [(MADAutoAssetStager *)v86 selectorContainerAsString:v93];
    *buf = 138544898;
    v123 = v85;
    v124 = 2114;
    v125 = v97;
    v126 = 2114;
    v127 = v91;
    v128 = 2114;
    v129 = v87;
    v130 = 2048;
    v131 = v94;
    v132 = 2114;
    v133 = v88;
    v134 = 2114;
    v135 = v89;
    _os_log_impl(&dword_0, v84, OS_LOG_TYPE_DEFAULT, "%{public}@\n[%{public}@] {%{public}@} end determine-if-available | assetType:%{public}@ | totalDeterminedAvailableForTarget:%ld\n>>> alreadyDownloaded:%{public}@\n>>> notStaging:%{public}@", buf, 0x48u);
  }
}

- (void)_limitCachePersistResultByGroupToCount:(unsigned int)a3 fromLocation:(id)a4
{
  v58 = a4;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(MADAutoAssetStager *)self summary];
    *buf = 138543874;
    v69 = v9;
    v70 = 2114;
    v71 = v58;
    v72 = 2048;
    v73 = a3;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {%{public}@:_limitCachePersistResultToCount} restricting count to %llu", buf, 0x20u);
  }

  v10 = objc_autoreleasePoolPush();
  v11 = objc_opt_new();
  if (!v11)
  {
    goto LABEL_41;
  }

  v12 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
  v13 = [v12 persistedEntryIDs:v58];

  if (!v13)
  {
    goto LABEL_40;
  }

  v51 = a3;
  v55 = v11;
  v52 = v13;
  v53 = v10;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
  if (!v14)
  {
    goto LABEL_26;
  }

  v15 = v14;
  v16 = *v64;
  do
  {
    v17 = 0;
    do
    {
      if (*v64 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v63 + 1) + 8 * v17);
      v19 = objc_autoreleasePoolPush();
      v20 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
      v21 = [v20 persistedEntry:v18 fromLocation:v58];

      if (!v21)
      {
        v22 = _MADLog(@"AutoStager");
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }

        v30 = [(MADAutoAssetStager *)self summary];
        *buf = 138543874;
        v69 = v30;
        v70 = 2114;
        v71 = v58;
        v72 = 2114;
        v73 = v18;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {%{public}@:_limitCachePersistResultToCount} unable to load key %{public}@, ", buf, 0x20u);
        goto LABEL_21;
      }

      v22 = [v21 dateForKey:@"targetLookupResultsByGroupDate"];
      if (!v22)
      {
        v24 = _MADLog(@"AutoStager");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [(MADAutoAssetStager *)self summary];
          *buf = 138543874;
          v69 = v25;
          v70 = 2114;
          v71 = v58;
          v72 = 2114;
          v73 = v18;
          v26 = v24;
          v27 = OS_LOG_TYPE_DEFAULT;
          v28 = "%{public}@\n[AUTO-STAGER] {%{public}@:_limitCachePersistResultToCount} removing entry missing date with key %{public}@";
          v29 = 32;
LABEL_19:
          _os_log_impl(&dword_0, v26, v27, v28, buf, v29);
        }

LABEL_20:

        v30 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
        [v30 removePersistedEntry:v18 fromLocation:v58];
LABEL_21:

        goto LABEL_22;
      }

      v23 = [v55 objectForKeyedSubscript:v22];

      if (v23)
      {
        v24 = _MADLog(@"AutoStager");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = [(MADAutoAssetStager *)self summary];
          *buf = 138544130;
          v69 = v25;
          v70 = 2114;
          v71 = v58;
          v72 = 2114;
          v73 = v22;
          v74 = 2114;
          v75 = v18;
          v26 = v24;
          v27 = OS_LOG_TYPE_ERROR;
          v28 = "%{public}@\n[AUTO-STAGER] {%{public}@:_limitCachePersistResultToCount} removing entry with unexpected collision on date %{public}@ with key %{public}@, ";
          v29 = 42;
          goto LABEL_19;
        }

        goto LABEL_20;
      }

      [v55 setObject:v18 forKeyedSubscript:v22];
LABEL_22:

      objc_autoreleasePoolPop(v19);
      v17 = v17 + 1;
    }

    while (v15 != v17);
    v31 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
    v15 = v31;
  }

  while (v31);
LABEL_26:

  v11 = v55;
  v32 = [v55 allKeys];
  v33 = [v32 sortedArrayUsingComparator:&__block_literal_global_2544];

  v34 = [v33 count];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v54 = v33;
  v35 = [v54 countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = v34 - v51;
    v38 = *v60;
LABEL_28:
    v39 = 0;
    while (1)
    {
      if (*v60 != v38)
      {
        objc_enumerationMutation(v54);
      }

      if (v37 < 1)
      {
        break;
      }

      v40 = *(*(&v59 + 1) + 8 * v39);
      v41 = [v11 objectForKeyedSubscript:v40];
      if (v41)
      {
        v42 = _MADLog(@"AutoStager");
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = [(MADAutoAssetStager *)self summary];
          *buf = 138544130;
          v69 = v43;
          v70 = 2114;
          v71 = v58;
          v72 = 2114;
          v73 = v41;
          v74 = 2114;
          v75 = v40;
          _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {%{public}@:_limitCachePersistResultToCount} pruning outdated entry with key %{public}@ and date %{public}@", buf, 0x2Au);
        }

        v44 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
        [v44 removePersistedEntry:v41 fromLocation:v58];

        --v37;
      }

      else
      {
        v45 = [(MADAutoAssetStager *)self autoStagerFSM];
        v46 = [v45 diag];
        [(MADAutoAssetStager *)self summary];
        obja = v37;
        v47 = v36;
        v49 = v48 = v38;
        v50 = [NSString stringWithFormat:@"%@\n[AUTO-STAGER] {%@:_limitCachePersistResultToCount} unexpected error looking up entry by date %@", v49, v58, v40];
        [v46 trackAnomaly:v50 forReason:@"persisted entry ID was nil" withResult:6108 withError:0];

        v38 = v48;
        v36 = v47;
        v37 = obja;
      }

      v39 = v39 + 1;
      v11 = v55;
      if (v36 == v39)
      {
        v36 = [v54 countByEnumeratingWithState:&v59 objects:v67 count:16];
        if (v36)
        {
          goto LABEL_28;
        }

        break;
      }
    }
  }

  v13 = v52;
  v10 = v53;
LABEL_40:

LABEL_41:
  objc_autoreleasePoolPop(v10);
}

- (void)_lookupCachePersistResultByGroup:(id)a3 fromLocation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MADAutoAssetStager *)self autoStagerFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(MADAutoAssetStager *)self assetTargetTrainName];
  v11 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  v12 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v10 withRestoreVersion:v11];

  v13 = [(MADAutoAssetStager *)self getTargetLookupResultsForKey:v12];
  if (!v13)
  {
    v14 = [MADAutoTargetLookupResults alloc];
    v15 = [(MADAutoAssetStager *)self assetTargetOSVersion];
    v16 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
    v17 = [(MADAutoAssetStager *)self assetTargetTrainName];
    v18 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
    v19 = [(MADAutoAssetStager *)self assetTargetGroupNames];
    v13 = [(MADAutoTargetLookupResults *)v14 initForTargetOSVersion:v15 forTargetBuild:v16 forTargetTrainName:v17 forTargetRestoreVersion:v18 targetingGroupNames:v19];

    [(MADAutoAssetStager *)self _limitCachePersistResultByGroupToCount:1 fromLocation:v6];
  }

  v20 = [v13 setLookupResults];
  v21 = [v7 assetType];
  [v20 setSafeObject:v7 forKey:v21];

  v22 = [(MADAutoAssetStager *)self cachingEnabled];
  if (v13 && v22 && v12)
  {
    v23 = [(MADAutoAssetStager *)self targetLookupResults];
    [v23 setObject:v13 forKey:v12];
  }

  else if (!v12)
  {
    goto LABEL_12;
  }

  v24 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
  v25 = [v24 persistedEntry:v12 fromLocation:v6];

  if (v25)
  {
    v26 = +[NSDate now];
    [v25 persistDate:v26 forKey:@"targetLookupResultsByGroupDate" shouldPersist:0];

    [v25 persistULL:200 forKey:@"targetLookupResultsOTASituation" shouldPersist:0];
    [v25 persistSecureCodedObject:v13 forKey:@"targetLookupResults"];
    v27 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
    v28 = [v13 summary];
    [v27 storePersistedEntry:v12 withEntrySummary:v28 fromLocation:v6];

    v29 = _MADLog(@"AutoStagerSituation");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [(MADAutoAssetStager *)self summary];
      v31 = [MANAutoAssetControlStagerInformation previousOTASituationName:200];
      *buf = 138544130;
      v38 = v30;
      v39 = 2114;
      v40 = v6;
      v41 = 2114;
      v42 = v12;
      v43 = 2114;
      v44 = v31;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {%{public}@} persisted target-OTA-situation | targetLookupResultsKey:%{public}@ | targetOTASituation:%{public}@", buf, 0x2Au);
    }

    v32 = [NSString alloc];
    v33 = [MANAutoAssetControlStagerInformation previousOTASituationName:200];
    v34 = [v13 summary];
    v35 = [v32 initWithFormat:@"target-lookup-results describing Pallas atomicity | targetOTASituation:%@ | trainTargetLookupResults:%@", v33, v34];
    [(MADAutoAssetStager *)self _logPersistedTargetLookupResults:v6 operation:@"ENTRY_ADD" forPersistedEntryID:v12 withTargetLookupResults:v13 withTargetOTASituation:200 message:v35];

    [(MADAutoAssetStager *)self _persistStoredTargetWithOTASituation:v6];
    goto LABEL_14;
  }

LABEL_12:
  v25 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v36 = [(MADAutoAssetStager *)self summary];
    *buf = 138543874;
    v38 = v36;
    v39 = 2114;
    v40 = v6;
    v41 = 2114;
    v42 = v12;
    _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {%{public}@:_lookupCachePersistResultByGroup} unable to load persisted set-lookup-result file | targetLookupResultsKey:%{public}@", buf, 0x20u);
  }

LABEL_14:
}

- (void)_lookupCachePersistResult:(id)a3 fromLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetStager *)self autoStagerFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(MADAutoAssetStager *)self persistedSetLookupResults];
  v11 = [v6 assetType];
  v12 = [v10 persistedEntry:v11 fromLocation:v7];

  if (v12)
  {
    [v12 persistSecureCodedObject:v6 forKey:@"setLookupResult"];
    v13 = [(MADAutoAssetStager *)self persistedSetLookupResults];
    v14 = [v6 assetType];
    v15 = [v6 summary];
    [v13 storePersistedEntry:v14 withEntrySummary:v15 fromLocation:v7];

    v16 = [v6 assetType];
    v17 = [NSString alloc];
    v18 = [v6 summary];
    v19 = [v17 initWithFormat:@"set-lookup-result describing Pallas atomicity | setLookupResult:%@", v18];
    [(MADAutoAssetStager *)self _logPersistedSetLookupResult:v7 operation:@"ENTRY_ADD" forPersistedEntryID:v16 withSetLookupResult:v6 message:v19];
  }

  else
  {
    v16 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = [(MADAutoAssetStager *)self summary];
      v21 = [v6 summary];
      *buf = 138543874;
      v23 = v20;
      v24 = 2114;
      v25 = v7;
      v26 = 2114;
      v27 = v21;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {%{public}@:_lookupCachePersistResult} unable to load persisted set-lookup-result file | setLookupResult:%{public}@", buf, 0x20u);
    }
  }
}

- (void)_lookupCacheRemoveResult:(id)a3 forTargetTrainName:(id)a4 withRestoreVersion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v32 = a5;
  v10 = [(MADAutoAssetStager *)self autoStagerFSM];
  v11 = [v10 extendedStateQueue];
  dispatch_assert_queue_V2(v11);

  v30 = objc_autoreleasePoolPush();
  v12 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
  v13 = [v12 persistedEntryIDs:v8];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v13;
  v36 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v36)
  {
    v35 = *v38;
    v31 = v9;
    while (2)
    {
      for (i = 0; i != v36; i = i + 1)
      {
        if (*v38 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        v16 = objc_autoreleasePoolPush();
        v17 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
        v18 = [v17 persistedEntry:v15 fromLocation:v8];

        if (v18)
        {
          v19 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
          v20 = [v19 decodeFromLocation:v8 ofEntryName:v15 fromPersistedEntry:v18 decodingObjectForKey:@"targetLookupResults" ofClass:objc_opt_class() allowingNilObject:0];

          v21 = [v20 targetTrainName];
          if (([SUCore stringIsEqual:v21 to:v9]& 1) != 0)
          {
            context = v16;
            v22 = v8;
            v23 = [v20 targetRestoreVersion];
            v24 = [SUCore stringIsEqual:v23 to:v32];

            if (v24)
            {
              v26 = +[MANAutoAssetControlStagerInformation previousOTASituationName:](MANAutoAssetControlStagerInformation, "previousOTASituationName:", [v18 ullForKey:@"targetLookupResultsOTASituation"]);
              v27 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
              v8 = v22;
              [v27 removePersistedEntry:v15 fromLocation:v22];

              v28 = _MADLog(@"AutoStagerSituation");
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = [(MADAutoAssetStager *)self summary];
                *buf = 138544130;
                v42 = v29;
                v43 = 2114;
                v44 = v8;
                v45 = 2114;
                v46 = v15;
                v47 = 2114;
                v48 = v26;
                _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {%{public}@:_lookupCacheRemoveResult} removed target-OS | entryID:%{public}@ | targetOTASituation:%{public}@", buf, 0x2Au);
              }

              objc_autoreleasePoolPop(context);
              v9 = v31;
              goto LABEL_19;
            }

            v8 = v22;
            v9 = v31;
            v16 = context;
          }

          else
          {
          }
        }

        else
        {
          v20 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v25 = [(MADAutoAssetStager *)self summary];
            *buf = 138543874;
            v42 = v25;
            v43 = 2114;
            v44 = v8;
            v45 = 2114;
            v46 = v15;
            _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {%{public}@:_lookupCacheRemoveResult} unable to load persisted-entry | entryID:%{public}@", buf, 0x20u);
          }
        }

        objc_autoreleasePoolPop(v16);
      }

      v36 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
      if (v36)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  objc_autoreleasePoolPop(v30);
}

- (void)_availableForStagingRemove:(id)a3 forTargetTrainName:(id)a4 withRestoreVersion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MADAutoAssetStager *)self autoStagerFSM];
  v12 = [v11 extendedStateQueue];
  dispatch_assert_queue_V2(v12);

  context = objc_autoreleasePoolPush();
  v13 = [(MADAutoAssetStager *)self persistedAvailableForStagingByTarget];
  v14 = [v13 persistedEntryIDs:v8];

  v39 = v10;
  v36 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v9 withRestoreVersion:v10];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v14;
  v42 = [obj countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v42)
  {
    v41 = *v45;
    p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
    v38 = v9;
    do
    {
      v16 = 0;
      do
      {
        if (*v45 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v44 + 1) + 8 * v16);
        v18 = objc_autoreleasePoolPush();
        v19 = [(MADAutoAssetStager *)self persistedAvailableForStagingByTarget];
        v20 = [v19 persistedEntry:v17 fromLocation:v8];

        if (!v20)
        {
          v22 = _MADLog(@"AutoStager");
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_16;
          }

          v26 = [(MADAutoAssetStager *)self summary];
          *buf = 138543874;
          v49 = v26;
          v50 = 2114;
          v51 = v8;
          v52 = 2114;
          v53 = v17;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {%{public}@:_availableForStagingRemove} unable to load persisted-entry | entryID:%{public}@", buf, 0x20u);
          goto LABEL_15;
        }

        v43 = v18;
        v21 = [(MADAutoAssetStager *)self persistedAvailableForStagingByTarget];
        v22 = [v21 decodeFromLocation:v8 ofEntryName:v17 fromPersistedEntry:v20 decodingObjectForKey:@"AvailableForStagingByTarget" ofClass:objc_opt_class() allowingNilObject:0];

        v23 = v8;
        v24 = v9;
        v25 = p_weak_ivar_lyt[223];
        v26 = [v22 targetTrainName];
        v27 = v25;
        v9 = v24;
        if (![v27 stringIsEqual:v26 to:v24])
        {
          v8 = v23;
          v18 = v43;
LABEL_15:

          goto LABEL_16;
        }

        v28 = p_weak_ivar_lyt[223];
        v29 = [v22 targetRestoreVersion];
        LODWORD(v28) = [v28 stringIsEqual:v29 to:v39];

        if (v28)
        {
          v30 = [(MADAutoAssetStager *)self persistedAvailableForStagingByTarget];
          v8 = v23;
          [v30 removePersistedEntry:v17 fromLocation:v23];

          v26 = _MADLog(@"AutoStager");
          v18 = v43;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v31 = [(MADAutoAssetStager *)self summary];
            v32 = [v22 summary];
            *buf = 138544130;
            v49 = v31;
            v50 = 2114;
            v51 = v8;
            v52 = 2114;
            v53 = v17;
            v54 = 2114;
            v55 = v32;
            _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {%{public}@:_availableForStagingRemove} removed target-OS entry | entryID:%{public}@ | availableForStaging:%{public}@", buf, 0x2Au);
          }

          v9 = v38;
          p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
          goto LABEL_15;
        }

        v9 = v38;
        v8 = v23;
        p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
        v18 = v43;
LABEL_16:

        objc_autoreleasePoolPop(v18);
        v16 = v16 + 1;
      }

      while (v42 != v16);
      v33 = [obj countByEnumeratingWithState:&v44 objects:v56 count:16];
      v42 = v33;
    }

    while (v33);
  }

  if (v36)
  {
    v34 = [(MADAutoAssetStager *)self availableForStagingRequiredByTarget];
    [v34 removeObjectForKey:v36];

    v35 = [(MADAutoAssetStager *)self availableForStagingOptionalByTarget];
    [v35 removeObjectForKey:v36];
  }

  objc_autoreleasePoolPop(context);
}

- (void)_candidatesRemove:(id)a3 forTargetTrainName:(id)a4 withRestoreVersion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(MADAutoAssetStager *)self autoStagerFSM];
  v10 = [v9 extendedStateQueue];
  dispatch_assert_queue_V2(v10);

  v15 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v8 withRestoreVersion:v7];

  if (v15)
  {
    v11 = [(MADAutoAssetStager *)self candidatesForStagingRequiredByTarget];
    [v11 removeObjectForKey:v15];

    v12 = [(MADAutoAssetStager *)self candidatesForStagingOptionalByTarget];
    [v12 removeObjectForKey:v15];

    v13 = [(MADAutoAssetStager *)self candidateSetConfigurationsRequiredByTarget];
    [v13 removeObjectForKey:v15];

    v14 = [(MADAutoAssetStager *)self candidateSetConfigurationsOptionalByTarget];
    [v14 removeObjectForKey:v15];
  }
}

- (BOOL)doesStagingInvolveRequired
{
  v3 = [(MADAutoAssetStager *)self autoStagerFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(MADAutoAssetStager *)self assetTargetGroupNames];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (([SUCore stringIsEqual:*(*(&v12 + 1) + 8 * i) to:@"STAGE_GROUP_REQUIRED"]& 1) != 0)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)doesStagingInvolveOptional
{
  v3 = [(MADAutoAssetStager *)self autoStagerFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(MADAutoAssetStager *)self assetTargetGroupNames];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (![SUCore stringIsEqual:*(*(&v12 + 1) + 8 * i) to:@"STAGE_GROUP_REQUIRED"])
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)startMaxTimeSpentDeterminingTimer
{
  v3 = [(MADAutoAssetStager *)self autoStagerFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = +[MADAutoAssetControlManager preferenceMaxStagerDeterminingSecs];
  if (v5 == -1)
  {
    v6 = 540;
  }

  else
  {
    v6 = v5;
  }

  if (v6 <= 0)
  {
    v9 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[AUTO-STAGER] {startMaxTimeSpentDeterminingTimer} maxTimeSpentDeterminingSecs DISABLED", buf, 2u);
    }
  }

  else
  {
    v7 = +[NSUUID UUID];
    v8 = [v7 UUIDString];

    [(MADAutoAssetStager *)self setDetermineTimeoutUUID:v8];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __55__MADAutoAssetStager_startMaxTimeSpentDeterminingTimer__block_invoke;
    v14[3] = &unk_4B3440;
    v9 = v8;
    v15 = v9;
    v10 = [NSTimer timerWithTimeInterval:0 repeats:v14 block:v6];
    v11 = _MADLog(@"AutoStager");
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(MADAutoAssetStager *)self determineTimeoutUUID];
        *buf = 134218242;
        v17 = v6;
        v18 = 2114;
        v19 = v13;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[AUTO-STAGER] {startMaxTimeSpentDeterminingTimer} begin timed determine-available | maxTimeSpentDeterminingSecs:%ld | timerUUID:%{public}@", buf, 0x16u);
      }

      v12 = +[NSRunLoop mainRunLoop];
      [v12 addTimer:v10 forMode:NSDefaultRunLoopMode];
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v17 = v6;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "[AUTO-STAGER] {startMaxTimeSpentDeterminingTimer} unable to create maxDeterminingTimer | maxTimeSpentDeterminingSecs:%ld", buf, 0xCu);
    }
  }
}

void __55__MADAutoAssetStager_startMaxTimeSpentDeterminingTimer__block_invoke(uint64_t a1)
{
  v4 = +[MADAutoAssetStager autoAssetStager];
  v2 = [v4 autoStagerFSM];
  v3 = [[MADAutoAssetStagerParam alloc] initWithTimerUUID:*(a1 + 32)];
  [v2 postEvent:@"TimerFiredDetermining" withInfo:v3];
}

- (void)formAvailableForStagingByCombiningRequiredAndOptional:(id)a3
{
  v55 = a3;
  v4 = [(MADAutoAssetStager *)self autoStagerFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = [(MADAutoAssetStager *)self assetTargetTrainName];
  v8 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  v9 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v7 withRestoreVersion:v8];

  v10 = [(MADAutoAssetStager *)self availableForStagingRequiredByTarget];
  v11 = [v10 safeObjectForKey:v9 ofClass:objc_opt_class()];

  v51 = self;
  v12 = [(MADAutoAssetStager *)self availableForStagingOptionalByTarget];
  v50 = v9;
  v52 = [v12 safeObjectForKey:v9 ofClass:objc_opt_class()];

  v49 = objc_alloc_init(NSMutableArray);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v11;
  v13 = [obj countByEnumeratingWithState:&v66 objects:v76 count:16];
  if (v13)
  {
    v14 = v13;
    v56 = *v67;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v67 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v66 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        v18 = [MAAutoAssetSelector alloc];
        v19 = [v16 assetType];
        v20 = [v16 assetSpecifier];
        v21 = [v16 assetVersion];
        v22 = [v18 initForAssetType:v19 withAssetSpecifier:v20 matchingAssetVersion:v21];

        v23 = [v22 persistedEntryID];
        v24 = [v6 safeObjectForKey:v23 ofClass:objc_opt_class()];
        if (v24)
        {
          v25 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = [v16 summary];
            *buf = 138543618;
            v73 = v55;
            v74 = 2114;
            v75 = v26;
            _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "[FROM-AVAILABLE-FOR-STAGING] {%{public}@:formAvailableForStagingByCombiningRequiredAndOptional} duplicate REQUIRED descriptor (filtered) | nextRequiredDescriptor:%{public}@", buf, 0x16u);
          }
        }

        else
        {
          [v6 setSafeObject:v16 forKey:v23];
        }

        objc_autoreleasePoolPop(v17);
      }

      v14 = [obj countByEnumeratingWithState:&v66 objects:v76 count:16];
    }

    while (v14);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v53 = v52;
  v27 = [v53 countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (v27)
  {
    v28 = v27;
    v57 = *v63;
    do
    {
      for (j = 0; j != v28; j = j + 1)
      {
        if (*v63 != v57)
        {
          objc_enumerationMutation(v53);
        }

        v30 = *(*(&v62 + 1) + 8 * j);
        v31 = objc_autoreleasePoolPush();
        v32 = [MAAutoAssetSelector alloc];
        v33 = [v30 assetType];
        v34 = [v30 assetSpecifier];
        v35 = [v30 assetVersion];
        v36 = [v32 initForAssetType:v33 withAssetSpecifier:v34 matchingAssetVersion:v35];

        v37 = [v36 persistedEntryID];
        v38 = [v6 safeObjectForKey:v37 ofClass:objc_opt_class()];
        if (v38)
        {
          v39 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v40 = [v30 summary];
            *buf = 138543618;
            v73 = v55;
            v74 = 2114;
            v75 = v40;
            _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "[FROM-AVAILABLE-FOR-STAGING] {%{public}@:formAvailableForStagingByCombiningRequiredAndOptional} duplicate OPTIONAL descriptor (filtered) | nextOptionalDescriptor:%{public}@", buf, 0x16u);
          }
        }

        else
        {
          [v6 setSafeObject:v30 forKey:v37];
        }

        objc_autoreleasePoolPop(v31);
      }

      v28 = [v53 countByEnumeratingWithState:&v62 objects:v71 count:16];
    }

    while (v28);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v41 = v6;
  v42 = [v41 countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v59;
    do
    {
      for (k = 0; k != v43; k = k + 1)
      {
        if (*v59 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v58 + 1) + 8 * k);
        v47 = objc_autoreleasePoolPush();
        v48 = [v41 safeObjectForKey:v46 ofClass:objc_opt_class()];
        if (v48)
        {
          [v49 addObject:v48];
        }

        objc_autoreleasePoolPop(v47);
      }

      v43 = [v41 countByEnumeratingWithState:&v58 objects:v70 count:16];
    }

    while (v43);
  }

  [(MADAutoAssetStager *)v51 setAvailableForStaging:v49];
}

- (void)considerInjectionIntoAvailableForStaging
{
  v3 = [(MADAutoAssetStager *)self autoStagerFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  if (+[MADAutoAssetControlManager preferenceStagerInjectAvailableDups])
  {
    v5 = [(MADAutoAssetStager *)self availableForStaging];
    v6 = [v5 count];

    if (v6)
    {
      v7 = objc_alloc_init(NSMutableArray);
      v8 = objc_alloc_init(NSMutableArray);
      v9 = objc_alloc_init(NSMutableArray);
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v10 = [(MADAutoAssetStager *)self availableForStaging];
      v11 = [v10 countByEnumeratingWithState:&v54 objects:v65 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v55;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v55 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v54 + 1) + 8 * i);
            if (v15)
            {
              [v7 addObject:*(*(&v54 + 1) + 8 * i)];
              [v8 addObject:v15];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v54 objects:v65 count:16];
        }

        while (v12);
      }

      while (1)
      {

        if (![v7 count] && !objc_msgSend(v8, "count"))
        {
          [(MADAutoAssetStager *)self setAvailableForStaging:v9];
          v19 = _MADLog(@"AutoStager");
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_62;
          }

          v42 = [(MADAutoAssetStager *)self availableForStaging];
          v43 = [v42 count];
          *buf = 134217984;
          v60 = v43;
          v44 = "{considerInjectionIntoAvailableForStaging} [DEDUP-AVAILABLE-FOR-STAGING] injected available-for-staging array-with-duplicates | availableForStaging:%ld";
          goto LABEL_58;
        }

        if ([v7 count])
        {
          v10 = [v7 objectAtIndex:0];
          v16 = v7;
          v17 = 0;
        }

        else
        {
          if ([v7 count] || !objc_msgSend(v8, "count"))
          {
            v19 = _MADLog(@"AutoStager");
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_62;
            }

            v36 = [v7 count];
            v37 = [v8 count];
            *buf = 138543874;
            v60 = @"Y";
            v61 = 2048;
            v62 = v36;
            v63 = 2048;
            v64 = v37;
            v22 = "{considerInjectionIntoAvailableForStaging} [DEDUP-AVAILABLE-FOR-STAGING] discrepancy detected while building test available-for-staging array-with-duplicates | nextFromOriginal:%{public}@ | originalAvailableForStaging:%ld | againAvailableForStaging:%ld";
            goto LABEL_61;
          }

          v18 = [v8 count] - 1;
          if (v18 < 0)
          {
            v19 = _MADLog(@"AutoStager");
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_62;
            }

            v45 = [v7 count];
            v46 = [v8 count];
            *buf = 138543874;
            v60 = @"Y";
            v61 = 2048;
            v62 = v45;
            v63 = 2048;
            v64 = v46;
            v22 = "{considerInjectionIntoAvailableForStaging} [DEDUP-AVAILABLE-FOR-STAGING] empty again-available-for-staging while building test available-for-staging array-with-duplicates | nextFromOriginal:%{public}@ | originalAvailableForStaging:%ld | againAvailableForStaging:%ld";
LABEL_61:
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, v22, buf, 0x20u);
            goto LABEL_62;
          }

          v10 = [v8 objectAtIndex:v18];
          v16 = v8;
          v17 = v18;
        }

        [v16 removeObjectAtIndex:v17];
        if (!v10)
        {
          v19 = _MADLog(@"AutoStager");
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_62;
          }

          v20 = [v7 count];
          v21 = [v8 count];
          *buf = 138543874;
          v60 = @"Y";
          v61 = 2048;
          v62 = v20;
          v63 = 2048;
          v64 = v21;
          v22 = "{considerInjectionIntoAvailableForStaging} [DEDUP-AVAILABLE-FOR-STAGING] nil nextDescriptor while building test available-for-staging array-with-duplicates | nextFromOriginal:%{public}@ | originalAvailableForStaging:%ld | againAvailableForStaging:%ld";
          goto LABEL_61;
        }

        [v9 addObject:v10];
      }
    }
  }

  if (+[MADAutoAssetControlManager preferenceStagerInjectAvailableOlderVersions])
  {
    v23 = [(MADAutoAssetStager *)self availableForStaging];
    v24 = [v23 count];

    if (v24)
    {
      v7 = objc_alloc_init(NSMutableArray);
      v8 = objc_alloc_init(NSMutableArray);
      v9 = objc_alloc_init(NSMutableArray);
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v25 = [(MADAutoAssetStager *)self availableForStaging];
      v26 = [v25 countByEnumeratingWithState:&v50 objects:v58 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v51;
        do
        {
          for (j = 0; j != v27; j = j + 1)
          {
            if (*v51 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v50 + 1) + 8 * j);
            if (v30)
            {
              [v7 addObject:*(*(&v50 + 1) + 8 * j)];
              [v8 addObject:v30];
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v50 objects:v58 count:16];
        }

        while (v27);
      }

      while (1)
      {

        if (![v7 count] && !objc_msgSend(v8, "count"))
        {
          [(MADAutoAssetStager *)self setAvailableForStaging:v9];
          v19 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v42 = [(MADAutoAssetStager *)self availableForStaging];
            v47 = [v42 count];
            *buf = 134217984;
            v60 = v47;
            v44 = "{considerInjectionIntoAvailableForStaging} [DEDUP-AVAILABLE-FOR-STAGING] injected available-for-staging array-with-older | availableForStaging:%ld";
LABEL_58:
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, v44, buf, 0xCu);
          }

          goto LABEL_62;
        }

        if ([v7 count])
        {
          v25 = [v7 objectAtIndex:0];
          [v7 removeObjectAtIndex:0];
          if (!v25)
          {
            goto LABEL_48;
          }
        }

        else
        {
          if ([v7 count] || !objc_msgSend(v8, "count"))
          {
            v19 = _MADLog(@"AutoStager");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v40 = [v7 count];
              v41 = [v8 count];
              *buf = 138543874;
              v60 = @"Y";
              v61 = 2048;
              v62 = v40;
              v63 = 2048;
              v64 = v41;
              v22 = "{considerInjectionIntoAvailableForStaging} [DEDUP-AVAILABLE-FOR-STAGING] discrepancy detected while building test available-for-staging array-with-older | nextFromOriginal:%{public}@ | originalAvailableForStaging:%ld | olderAvailableForStaging:%ld";
              goto LABEL_61;
            }

            goto LABEL_62;
          }

          v31 = [v8 count] - 1;
          if (v31 < 0)
          {
            v19 = _MADLog(@"AutoStager");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v48 = [v7 count];
              v49 = [v8 count];
              *buf = 138543874;
              v60 = @"Y";
              v61 = 2048;
              v62 = v48;
              v63 = 2048;
              v64 = v49;
              v22 = "{considerInjectionIntoAvailableForStaging} [DEDUP-AVAILABLE-FOR-STAGING] empty again-available-for-staging while building test available-for-staging array-with-older | nextFromOriginal:%{public}@ | originalAvailableForStaging:%ld | olderAvailableForStaging:%ld";
              goto LABEL_61;
            }

LABEL_62:

            return;
          }

          v32 = [v8 objectAtIndex:v31];
          [v8 removeObjectAtIndex:v31];
          v33 = [MADAutoAssetDescriptor alloc];
          v34 = [v32 assetType];
          v35 = [v32 metadata];
          v25 = [(MADAutoAssetDescriptor *)v33 initForAssetType:v34 fromMetadata:v35 fromBaseDescriptor:v32 substitutingAssetVersion:@"0.0.0.0.0 invalidReasons:0", 0];

          if (!v25)
          {
LABEL_48:
            v19 = _MADLog(@"AutoStager");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v38 = [v7 count];
              v39 = [v8 count];
              *buf = 138543874;
              v60 = @"Y";
              v61 = 2048;
              v62 = v38;
              v63 = 2048;
              v64 = v39;
              v22 = "{considerInjectionIntoAvailableForStaging} [DEDUP-AVAILABLE-FOR-STAGING] nil nextDescriptor while building test available-for-staging array-with-older | nextFromOriginal:%{public}@ | originalAvailableForStaging:%ld | olderAvailableForStaging:%ld";
              goto LABEL_61;
            }

            goto LABEL_62;
          }
        }

        [v9 addObject:v25];
      }
    }
  }
}

- (id)dedupAvailableForStaging:(id)a3 dedupingAssetDescriptors:(id)a4 removingAlreadyDownloaded:(id)a5 ofContainerName:(id)a6
{
  v132 = a3;
  v10 = a4;
  v124 = a5;
  v131 = a6;
  v11 = [(MADAutoAssetStager *)self autoStagerFSM];
  v12 = [v11 extendedStateQueue];
  dispatch_assert_queue_V2(v12);

  v123 = self;
  v130 = [(MADAutoAssetStager *)self _targetNameActive:@"DETERMINED"];
  v13 = [v10 count];
  v14 = v10;
  v125 = v14;
  v122 = v13;
  if (v13 != &dword_0 + 1)
  {
    if (v13 < 2)
    {
      v82 = 0;
      v135 = 0;
      v128 = 0;
      v129 = 0;
      v143 = v14;
      goto LABEL_90;
    }

    v42 = v14;
    v43 = objc_alloc_init(NSMutableDictionary);
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v44 = v42;
    v45 = [v44 countByEnumeratingWithState:&v155 objects:v165 count:16];
    obja = v43;
    v143 = v44;
    if (v45)
    {
      v46 = v45;
      v128 = 0;
      v129 = 0;
      v135 = 0;
      v137 = 0;
      v47 = *v156;
      v139 = *v156;
      do
      {
        v48 = 0;
        v133 = v46;
        do
        {
          if (*v156 != v47)
          {
            objc_enumerationMutation(v143);
          }

          v49 = *(*(&v155 + 1) + 8 * v48);
          v50 = objc_autoreleasePoolPush();
          if (v49)
          {
            v51 = [MAAutoAssetSelector alloc];
            v52 = [v49 assetType];
            v53 = [v49 assetSpecifier];
            v54 = [v51 initForAssetType:v52 withAssetSpecifier:v53];

            v55 = [v54 persistedEntryID];
            v56 = [v43 safeObjectForKey:v55 ofClass:objc_opt_class()];
            if (v56)
            {
              v145 = v50;
              v57 = [v49 assetVersion];
              v58 = [v56 assetVersion];
              v59 = [SUCore stringIsEqual:v57 to:v58];

              if (v59)
              {
                v60 = _MADLog(@"AutoStager");
                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  v61 = [v49 summary];
                  *buf = 138544130;
                  v167 = v132;
                  v168 = 2114;
                  v169 = v130;
                  v170 = 2114;
                  v171 = v131;
                  v172 = 2114;
                  v173 = v61;
                  _os_log_impl(&dword_0, v60, OS_LOG_TYPE_ERROR, "{%{public}@}\n[%{public}@](%{public}@) [DEDUP-AVAILABLE-FOR-STAGING] duplicate descriptor (filtered) | nextAvailableDescriptor:%{public}@", buf, 0x2Au);
                }

                ++v135;
              }

              else
              {
                v63 = [SUCoreRestoreVersion alloc];
                v64 = [v49 assetVersion];
                v65 = [v63 initWithRestoreVersion:v64];

                v66 = [SUCoreRestoreVersion alloc];
                v67 = [v56 assetVersion];
                v68 = [v66 initWithRestoreVersion:v67];

                if ([v65 isComparable:v68])
                {
                  if ([v65 compare:v68] == &dword_0 + 1)
                  {
                    v69 = v56;
                    v70 = v49;
                    v71 = [v69 metadata];
                    v72 = [v71 safeIntegerForKey:@"_UnarchivedSize"];

                    v126 = v70;
                    if (v137 >= v72)
                    {
                      v74 = (v137 - v72);
                    }

                    else
                    {
                      v73 = _MADLog(@"AutoStager");
                      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138544386;
                        v167 = v132;
                        v168 = 2114;
                        v169 = v130;
                        v170 = 2114;
                        v171 = v131;
                        v172 = 2048;
                        v173 = v137;
                        v174 = 2048;
                        v175 = v72;
                        _os_log_impl(&dword_0, v73, OS_LOG_TYPE_ERROR, "{%{public}@}\n[%{public}@](%{public}@) [DEDUP-AVAILABLE-FOR-STAGING] potential total byte count issue | totalFilesystemBytes:%llu | miscountedFilesystemBytes:%llu", buf, 0x34u);
                      }

                      v74 = v137;
                    }

                    v78 = [v126 metadata];
                    v137 = &v74[[v78 safeIntegerForKey:@"_UnarchivedSize"]];
                    v77 = v126;

                    [obja setSafeObject:v126 forKey:v55];
                  }

                  else
                  {
                    v69 = v49;
                    v77 = v56;
                  }

                  v79 = _MADLog(@"AutoStager");
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                  {
                    v80 = [v69 summary];
                    [v77 summary];
                    v81 = v127 = v77;
                    *buf = 138544386;
                    v167 = v132;
                    v168 = 2114;
                    v169 = v130;
                    v170 = 2114;
                    v171 = v131;
                    v172 = 2114;
                    v173 = v80;
                    v174 = 2114;
                    v175 = v81;
                    _os_log_impl(&dword_0, v79, OS_LOG_TYPE_ERROR, "{%{public}@}\n[%{public}@](%{public}@) [DEDUP-AVAILABLE-FOR-STAGING] multiple asset-versions (filtered older) | olderDescriptor:%{public}@ | newerDescriptor:%{public}@", buf, 0x34u);

                    v77 = v127;
                  }

                  ++v129;

                  v43 = obja;
                }

                else
                {
                  ++v128;
                  v69 = _MADLog(@"AutoStager");
                  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                  {
                    v75 = [v49 summary];
                    v76 = [v56 summary];
                    *buf = 138544386;
                    v167 = v132;
                    v168 = 2114;
                    v169 = v130;
                    v170 = 2114;
                    v171 = v131;
                    v172 = 2114;
                    v173 = v75;
                    v174 = 2114;
                    v175 = v76;
                    _os_log_impl(&dword_0, v69, OS_LOG_TYPE_ERROR, "{%{public}@}\n[%{public}@](%{public}@) [DEDUP-AVAILABLE-FOR-STAGING] asset-versions not comparable (filtered latest encountered) | droppedDescriptor:%{public}@ | keptDescriptor:%{public}@", buf, 0x34u);
                  }
                }

                v46 = v133;
              }

              v47 = v139;
              v50 = v145;
            }

            else
            {
              v62 = [v49 metadata];
              v137 = &v137[[v62 safeIntegerForKey:@"_UnarchivedSize"]];

              [v43 setSafeObject:v49 forKey:v55];
            }
          }

          objc_autoreleasePoolPop(v50);
          v48 = v48 + 1;
        }

        while (v46 != v48);
        v46 = [v143 countByEnumeratingWithState:&v155 objects:v165 count:16];
      }

      while (v46);
    }

    else
    {
      v128 = 0;
      v129 = 0;
      v135 = 0;
      v137 = 0;
    }

    if (v124)
    {
      v153 = 0u;
      v154 = 0u;
      v151 = 0u;
      v152 = 0u;
      v134 = v124;
      v146 = [v134 countByEnumeratingWithState:&v151 objects:v164 count:16];
      if (v146)
      {
        v140 = *v152;
        do
        {
          for (i = 0; i != v146; i = i + 1)
          {
            if (*v152 != v140)
            {
              objc_enumerationMutation(v134);
            }

            v85 = *(*(&v151 + 1) + 8 * i);
            v86 = objc_autoreleasePoolPush();
            v87 = [MAAutoAssetSelector alloc];
            v88 = [v85 assetType];
            v89 = [v85 assetSpecifier];
            v90 = [v87 initForAssetType:v88 withAssetSpecifier:v89];

            v91 = [v90 persistedEntryID];
            v92 = [v43 safeObjectForKey:v91 ofClass:objc_opt_class()];
            if (v92)
            {
              v93 = [SUCoreRestoreVersion alloc];
              v94 = [v92 assetVersion];
              v95 = [v93 initWithRestoreVersion:v94];

              v96 = [SUCoreRestoreVersion alloc];
              v97 = [v85 assetVersion];
              v98 = [v96 initWithRestoreVersion:v97];

              if ([v95 isComparable:v98] && objc_msgSend(v95, "compare:", v98) != &dword_0 + 1)
              {
                [obja removeObjectForKey:v91];
                v99 = _MADLog(@"AutoStager");
                if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                {
                  v100 = [v92 summary];
                  v101 = [v85 summary];
                  *buf = 138544386;
                  v167 = v132;
                  v168 = 2114;
                  v169 = v130;
                  v170 = 2114;
                  v171 = v131;
                  v172 = 2114;
                  v173 = v100;
                  v174 = 2114;
                  v175 = v101;
                  _os_log_impl(&dword_0, v99, OS_LOG_TYPE_DEFAULT, "{%{public}@}\n[%{public}@](%{public}@) [DEDUP-AVAILABLE-FOR-STAGING] available-for-staging asset-descriptor dropped | availableDescriptor:%{public}@ | nextAlreadyDownloadedDescriptor:%{public}@", buf, 0x34u);
                }
              }

              v43 = obja;
            }

            objc_autoreleasePoolPop(v86);
          }

          v146 = [v134 countByEnumeratingWithState:&v151 objects:v164 count:16];
        }

        while (v146);
      }
    }

    if ([v43 count] < v122)
    {
      v41 = objc_alloc_init(NSMutableArray);
      if (v41)
      {
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v17 = v43;
        v102 = [v17 countByEnumeratingWithState:&v147 objects:v163 count:16];
        if (!v102)
        {
          goto LABEL_88;
        }

        v103 = v102;
        v104 = *v148;
        while (1)
        {
          for (j = 0; j != v103; j = j + 1)
          {
            if (*v148 != v104)
            {
              objc_enumerationMutation(v17);
            }

            v106 = *(*(&v147 + 1) + 8 * j);
            v107 = objc_autoreleasePoolPush();
            v108 = v17;
            v109 = [v17 safeObjectForKey:v106 ofClass:objc_opt_class()];
            if (!v109)
            {
              v114 = [[NSString alloc] initWithFormat:@"corrupted descriptor (key:%@)", v106];
              objc_autoreleasePoolPop(v107);

              if (!v114)
              {
LABEL_101:
                if ([v41 count])
                {
                  v83 = v143;
                  goto LABEL_60;
                }

                v114 = @"nothing in trimmed-available-for-staging";
              }

LABEL_105:

LABEL_106:
              v115 = [[NSString alloc] initWithFormat:@"dropped all available-for-staging | %@", v114];
              v119 = objc_alloc_init(NSMutableArray);

              v120 = _MADLog(@"AutoStager");
              if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
              {
                *buf = 138544130;
                v167 = v132;
                v168 = 2114;
                v169 = v130;
                v170 = 2114;
                v171 = v131;
                v172 = 2114;
                v173 = v115;
                _os_log_impl(&dword_0, v120, OS_LOG_TYPE_ERROR, "{%{public}@}\n[%{public}@](%{public}@) [DEDUP-AVAILABLE-FOR-STAGING] dropped all assets that had been considered as available-for-staging | droppedAllReason:%{public}@", buf, 0x2Au);
              }

              v117 = [(MADAutoAssetStager *)v123 assetTargetOSVersion];
              v118 = [(MADAutoAssetStager *)v123 assetTargetBuildVersion];
              [MADAutoAssetHistory recordOperation:705 toHistoryType:4 fromLayer:4 forTargetOSVersion:v117 forTargetBuildVersion:v118 withAddendumMessage:v115];
              v143 = v119;
              goto LABEL_109;
            }

            v110 = v109;
            [v41 addObject:v109];

            objc_autoreleasePoolPop(v107);
            v17 = v108;
          }

          v103 = [v108 countByEnumeratingWithState:&v147 objects:v163 count:16];
          if (!v103)
          {
LABEL_88:

            goto LABEL_101;
          }
        }
      }

      v114 = @"device out-of-memory";
      goto LABEL_105;
    }

LABEL_89:

    v82 = v137;
    goto LABEL_90;
  }

  v15 = v14;
  v16 = [v14 objectAtIndex:0];
  if (!v16)
  {
    v82 = 0;
    v135 = 0;
    v128 = 0;
    v129 = 0;
    v143 = v15;
    goto LABEL_90;
  }

  v17 = v16;
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v18 = v124;
  v19 = [v18 countByEnumeratingWithState:&v159 objects:v176 count:16];
  if (!v19)
  {

    v41 = v125;
LABEL_59:
    v83 = [v17 metadata];
    v137 = [v83 safeIntegerForKey:@"_UnarchivedSize"];
    v135 = 0;
    v128 = 0;
    v129 = 0;
LABEL_60:

    v43 = v17;
    v143 = v41;
    goto LABEL_89;
  }

  v20 = v19;
  v144 = *v160;
  p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
  obj = v18;
  v143 = v125;
  do
  {
    v22 = 0;
    v138 = v20;
    do
    {
      if (*v160 != v144)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v159 + 1) + 8 * v22);
      v24 = objc_autoreleasePoolPush();
      v25 = p_weak_ivar_lyt[223];
      v26 = [v23 assetType];
      v27 = [v17 assetType];
      if (![v25 stringIsEqual:v26 to:v27])
      {
        goto LABEL_18;
      }

      v28 = p_weak_ivar_lyt;
      v29 = p_weak_ivar_lyt[223];
      [v23 assetSpecifier];
      v31 = v30 = v17;
      v32 = [v30 assetSpecifier];
      LODWORD(v29) = [v29 stringIsEqual:v31 to:v32];

      if (!v29)
      {
        p_weak_ivar_lyt = v28;
        v20 = v138;
        v17 = v30;
        goto LABEL_19;
      }

      v33 = [SUCoreRestoreVersion alloc];
      v136 = v30;
      v34 = [v30 assetVersion];
      v26 = [v33 initWithRestoreVersion:v34];

      v35 = [SUCoreRestoreVersion alloc];
      v36 = [v23 assetVersion];
      v27 = [v35 initWithRestoreVersion:v36];

      if ([v26 isComparable:v27])
      {
        p_weak_ivar_lyt = v28;
        if ([v26 compare:v27] != &dword_0 + 1)
        {
          v37 = objc_alloc_init(NSMutableArray);

          v38 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = [0 summary];
            v40 = [v23 summary];
            *buf = 138544386;
            v167 = v132;
            v168 = 2114;
            v169 = v130;
            v170 = 2114;
            v171 = v131;
            v172 = 2114;
            v173 = v39;
            v174 = 2114;
            v175 = v40;
            _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "{%{public}@}\n[%{public}@](%{public}@) [DEDUP-AVAILABLE-FOR-STAGING] sole available-for-staging asset-descriptor dropped | availableDescriptor:%{public}@ | nextAlreadyDownloadedDescriptor:%{public}@", buf, 0x34u);

            p_weak_ivar_lyt = v28;
          }

          v17 = 0;
          v143 = v37;
          v20 = v138;
          goto LABEL_18;
        }
      }

      else
      {
        p_weak_ivar_lyt = v28;
      }

      v17 = v30;
      v20 = v138;
LABEL_18:

LABEL_19:
      objc_autoreleasePoolPop(v24);
      v22 = v22 + 1;
    }

    while (v20 != v22);
    v20 = [obj countByEnumeratingWithState:&v159 objects:v176 count:16];
  }

  while (v20);

  if (v17)
  {
    v41 = v143;
    goto LABEL_59;
  }

  v82 = 0;
  v135 = 0;
  v128 = 0;
  v129 = 0;
LABEL_90:
  v111 = +[MADAutoAssetControlManager preferenceMaxStagerFilesystemMegabytes];
  if (v111 == -1)
  {
    v112 = 0x300000000;
  }

  else
  {
    v112 = v111 << 20;
  }

  if (v82 > v112)
  {
    v113 = [[NSString alloc] initWithFormat:@"[%@](%@) {%@} total size on-disk after extraction too large | availableForStaging:%ld | totalFilesystemBytes:%llu | maxFilesystemBytes:%llu", v130, v131, v132, objc_msgSend(v125, "count"), v82, v112];
    if (v113)
    {
      v114 = v113;
      goto LABEL_106;
    }
  }

  v114 = [[NSString alloc] initWithFormat:@"finalized available-for-staging | beganFromCount:%ld | duplicateCount:%ld | multipleCount:%ld | notComparableCount:%ld | availableForStaging:%ld | totalFilesystemBytes:%llu", v122, v135, v129, v128, objc_msgSend(v143, "count"), v82];
  v115 = [[NSString alloc] initWithFormat:@"[%@](%@) {%@} %@", v130, v131, v132, v114];
  v116 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v167 = v132;
    v168 = 2114;
    v169 = v130;
    v170 = 2114;
    v171 = v131;
    v172 = 2114;
    v173 = v114;
    _os_log_impl(&dword_0, v116, OS_LOG_TYPE_DEFAULT, "{%{public}@}\n[%{public}@](%{public}@) [DEDUP-AVAILABLE-FOR-STAGING] asset-descriptor array validated | availableSummary:%{public}@", buf, 0x2Au);
  }

  v117 = [(MADAutoAssetStager *)v123 assetTargetOSVersion];
  v118 = [(MADAutoAssetStager *)v123 assetTargetBuildVersion];
  [MADAutoAssetHistory recordOperation:704 toHistoryType:4 fromLayer:4 forTargetOSVersion:v117 forTargetBuildVersion:v118 withAddendumMessage:v115];
LABEL_109:

  return v143;
}

- (id)splitOutAvailableForStagingByGroup:(id)a3 forGroupDetermine:(BOOL)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v99 = v5;
  v115 = [[NSString alloc] initWithFormat:@"%@:splitOutAvailableForStagingByGroup", v5];
  v111 = [(MADAutoAssetStager *)self doesStagingInvolveRequired];
  v104 = [(MADAutoAssetStager *)self doesStagingInvolveOptional];
  v8 = [(MADAutoAssetStager *)self assetTargetTrainName];
  v9 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  v100 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v8 withRestoreVersion:v9];

  v10 = objc_alloc_init(NSMutableDictionary);
  v113 = objc_alloc_init(NSMutableArray);
  v105 = objc_alloc_init(NSMutableArray);
  v110 = objc_alloc_init(NSMutableArray);
  v116 = +[MADAutoAssetControlManager preferenceStagingLookupFlipRequiredOptional];
  v11 = [(MADAutoAssetStager *)self optionalAssetSizeAllowed];
  if ([v11 isEqual:&off_4F7790])
  {
    v109 = -1;
  }

  else
  {
    v12 = [(MADAutoAssetStager *)self optionalAssetSizeAllowed];
    v109 = [v12 unsignedIntegerValue];
  }

  v102 = objc_alloc_init(NSMutableDictionary);
  v101 = objc_alloc_init(NSMutableDictionary);
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v118 = self;
  v13 = [(MADAutoAssetStager *)self availableForStaging];
  v108 = v10;
  v119 = [v13 countByEnumeratingWithState:&v129 objects:v153 count:16];
  if (v119)
  {
    v14 = *v130;
    v114 = *v130;
    v106 = v13;
    do
    {
      for (i = 0; i != v119; i = i + 1)
      {
        if (*v130 != v14)
        {
          objc_enumerationMutation(v13);
        }

        v16 = *(*(&v129 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        if (v16)
        {
          v18 = [MAAutoAssetSelector alloc];
          v19 = [v16 assetType];
          v20 = [v16 assetSpecifier];
          v21 = [v18 initForAssetType:v19 withAssetSpecifier:v20];

          v22 = [v21 persistedEntryID];
          if (!v22)
          {
            v31 = _MADLog(@"AutoStager");
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v32 = [(MADAutoAssetStager *)v118 summary];
              v33 = [v16 summary];
              *buf = 138543874;
              v134 = v32;
              v135 = 2114;
              v136 = v115;
              v137 = 2114;
              v138 = v33;
              _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {%{public}@} nil selectorEntryID | nextAvailableDescriptor:%{public}@", buf, 0x20u);

              v14 = v114;
            }

            goto LABEL_24;
          }

          v23 = [v10 safeObjectForKey:v22 ofClass:objc_opt_class()];
          if (!v23)
          {
            goto LABEL_15;
          }

          v24 = v23;
          v25 = [SUCoreRestoreVersion alloc];
          v26 = [v16 assetVersion];
          v27 = [v25 initWithRestoreVersion:v26];

          v28 = [SUCoreRestoreVersion alloc];
          v29 = [v24 assetVersion];
          v30 = [v28 initWithRestoreVersion:v29];

          if ([v27 isComparable:v30])
          {
            if ([v27 compare:v30] == &dword_0 + 1)
            {
              [(MADAutoAssetStager *)v118 trackSelectorForDescriptor:v24 inContainer:v102];

              v13 = v106;
              v10 = v108;
              v14 = v114;
LABEL_15:
              [v10 setSafeObject:v16 forKey:v22];
LABEL_24:

              goto LABEL_25;
            }

            [(MADAutoAssetStager *)v118 trackSelectorForDescriptor:v24 inContainer:v101];
          }

          else
          {
            v34 = _MADLog(@"AutoStager");
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v103 = [(MADAutoAssetStager *)v118 summary];
              v35 = [v16 summary];
              v36 = [v24 summary];
              *buf = 138544130;
              v134 = v103;
              v135 = 2114;
              v136 = v115;
              v137 = 2114;
              v138 = v35;
              v139 = 2112;
              v140 = v36;
              v37 = v36;
              _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {%{public}@} versions not comparable (keeping already encountered) | nextAvailableDescriptor:%{public}@ | alreadyAvailableDescriptor:%@", buf, 0x2Au);
            }
          }

          v13 = v106;

          v10 = v108;
          v14 = v114;
          goto LABEL_24;
        }

LABEL_25:
        objc_autoreleasePoolPop(v17);
      }

      v119 = [v13 countByEnumeratingWithState:&v129 objects:v153 count:16];
    }

    while (v119);
  }

  v38 = [v10 count];
  v39 = v118;
  v40 = [(MADAutoAssetStager *)v118 availableForStaging];
  v41 = [v40 count];

  if (v38 < v41)
  {
    v42 = objc_alloc_init(NSMutableArray);
    v43 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [(MADAutoAssetStager *)v118 summary];
      v45 = [(MADAutoAssetStager *)v118 availableForStaging];
      v46 = [v45 count];
      v47 = [v10 count];
      *buf = 138544130;
      v134 = v44;
      v135 = 2114;
      v136 = v115;
      v137 = 2048;
      v138 = v46;
      v139 = 2048;
      v140 = v47;
      _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {%{public}@} trimmed auto-asset-descriptors available-for-staging | previousCount:%ld | trimmedCount:%ld", buf, 0x2Au);
    }

    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v48 = v10;
    v49 = [v48 countByEnumeratingWithState:&v125 objects:v152 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v126;
      do
      {
        for (j = 0; j != v50; j = j + 1)
        {
          if (*v126 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v125 + 1) + 8 * j);
          v54 = [v48 safeObjectForKey:v53 ofClass:objc_opt_class()];
          if (v54)
          {
            [v42 addObject:v54];
          }

          else
          {
            v55 = [(MADAutoAssetStager *)v39 autoStagerFSM];
            v56 = [v55 diag];
            v57 = [[NSString alloc] initWithFormat:@"{%@} unable to load auto-asset-descriptor from trimmedAvailableForStaging | trimmedSelectorKey:%@", v115, v53];
            [v56 trackAnomaly:@"AUTO-STAGER" forReason:v57 withResult:6108 withError:0];

            v39 = v118;
          }
        }

        v50 = [v48 countByEnumeratingWithState:&v125 objects:v152 count:16];
      }

      while (v50);
    }

    if ([v42 count])
    {
      [(MADAutoAssetStager *)v39 setAvailableForStaging:v42];
    }

    else
    {
      v58 = [(MADAutoAssetStager *)v39 autoStagerFSM];
      v59 = [v58 diag];
      v60 = [[NSString alloc] initWithFormat:@"{%@} empty trimmedArray (unable to trim availableForStaging)", v115];
      [v59 trackAnomaly:@"AUTO-STAGER" forReason:v60 withResult:6110 withError:0];
    }
  }

  v61 = objc_alloc_init(NSMutableDictionary);
  v62 = objc_alloc_init(NSMutableDictionary);
  v120 = objc_alloc_init(NSMutableDictionary);
  v107 = objc_alloc_init(NSMutableDictionary);
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v63 = [(MADAutoAssetStager *)v39 availableForStaging];
  v64 = [v63 countByEnumeratingWithState:&v121 objects:v151 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v122;
    do
    {
      for (k = 0; k != v65; k = k + 1)
      {
        if (*v122 != v66)
        {
          objc_enumerationMutation(v63);
        }

        v68 = *(*(&v121 + 1) + 8 * k);
        if (v68)
        {
          if (v116 != [*(*(&v121 + 1) + 8 * k) isPreSUStagingRequired])
          {
            [v113 addObject:v68];
            if (v111)
            {
              v69 = v39;
              v70 = v68;
              v71 = v61;
LABEL_59:
              [(MADAutoAssetStager *)v69 trackSelectorForDescriptor:v70 inContainer:v71];
              [v110 addObject:v68];
              continue;
            }

            goto LABEL_60;
          }

          if (a4)
          {
            goto LABEL_57;
          }

          v72 = [v68 metadata];
          v73 = [v72 safeIntegerForKey:@"_UnarchivedSize"];

          if (v109 && v109 >= v73)
          {
            v109 -= v73;
            v39 = v118;
LABEL_57:
            [v105 addObject:v68];
            if (v104)
            {
              v69 = v39;
              v70 = v68;
              v71 = v120;
              goto LABEL_59;
            }

LABEL_60:
            [(MADAutoAssetStager *)v39 trackSelectorForDescriptor:v68 inContainer:v62];
            continue;
          }

          v74 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            v75 = [v68 selectorName];
            *buf = 138544130;
            v134 = v115;
            v135 = 2048;
            v136 = v109;
            v137 = 2048;
            v138 = v73;
            v139 = 2114;
            v140 = v75;
            _os_log_impl(&dword_0, v74, OS_LOG_TYPE_DEFAULT, "[AUTO-STAGER] {%{public}@} | dropping descriptor due to space constraint | byteTotal:%llu | descriptorBytes:%llu | nextAvailableDescriptor:%{public}@", buf, 0x2Au);
          }

          v39 = v118;
        }
      }

      v65 = [v63 countByEnumeratingWithState:&v121 objects:v151 count:16];
    }

    while (v65);
  }

  v76 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
  {
    v77 = [(MADAutoAssetStager *)v39 summary];
    v78 = &stru_4BD3F0;
    if (v116)
    {
      v78 = @" [FLIPPED]";
    }

    v117 = v78;
    v79 = [(MADAutoAssetStager *)v39 selectorContainerAsString:v61];
    v80 = [(MADAutoAssetStager *)v39 selectorContainerAsString:v120];
    v81 = [(MADAutoAssetStager *)v39 selectorContainerAsString:v62];
    v82 = [(MADAutoAssetStager *)v39 selectorContainerAsString:v107];
    v83 = [(MADAutoAssetStager *)v39 selectorContainerAsString:v102];
    v84 = [(MADAutoAssetStager *)v118 selectorContainerAsString:v101];
    *buf = 138545410;
    v134 = v77;
    v135 = 2114;
    v136 = v115;
    v137 = 2114;
    v138 = v117;
    v139 = 2114;
    v140 = v79;
    v141 = 2114;
    v142 = v80;
    v143 = 2114;
    v144 = v81;
    v145 = 2114;
    v146 = v82;
    v147 = 2114;
    v148 = v83;
    v149 = 2114;
    v150 = v84;
    _os_log_impl(&dword_0, v76, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {%{public}@}%{public}@ | available-for-staging\n>>> included:(R:%{public}@,O:%{public}@)\n>>> not-included:(R:%{public}@,O:%{public}@)\n>>> bestCandidateSoFar:%{public}@\n>>> older:%{public}@", buf, 0x5Cu);

    v39 = v118;
  }

  v85 = [(MADAutoAssetStager *)v39 availableForStagingRequiredByTarget];
  [v85 setSafeObject:v113 forKey:v100];

  v86 = [(MADAutoAssetStager *)v39 availableForStagingOptionalByTarget];
  [v86 setSafeObject:v105 forKey:v100];

  v87 = [MADAutoAvailableForStaging alloc];
  v88 = [(MADAutoAssetStager *)v39 assetTargetOSVersion];
  v89 = [(MADAutoAssetStager *)v39 assetTargetBuildVersion];
  v90 = [(MADAutoAssetStager *)v39 assetTargetTrainName];
  v91 = [(MADAutoAssetStager *)v39 assetTargetRestoreVersion];
  v92 = [(MADAutoAvailableForStaging *)v87 initForTargetOSVersion:v88 forTargetBuild:v89 forTargetTrainName:v90 forTargetRestoreVersion:v91 withRequiredDescriptors:v113 withOptionalDescriptors:v105];

  if (v92)
  {
    v93 = v99;
    [(MADAutoAssetStager *)v39 storeAvailableForStaging:v92 fromLocation:v99];
  }

  else
  {
    v94 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      v95 = [(MADAutoAssetStager *)v39 summary];
      v96 = [v113 count];
      v97 = [v105 count];
      *buf = 138544130;
      v134 = v95;
      v135 = 2114;
      v136 = v115;
      v137 = 2048;
      v138 = v96;
      v139 = 2048;
      v140 = v97;
      _os_log_impl(&dword_0, v94, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {%{public}@} [BY-GROP-MODE] | unable to allocate storedAvailableForStaging (dropped) | availableForStagingRequiredByTarget:%ld | availableForStagingOptionalByTarget:%ld", buf, 0x2Au);
    }

    v93 = v99;
  }

  return v110;
}

- (BOOL)isAnyAvailableForStagingByGroup:(id)a3 withAlreadyDownloadedDescriptors:(id)a4 targetHadBeenDetermined:(BOOL *)a5
{
  v8 = a3;
  v34 = a4;
  v9 = [[NSString alloc] initWithFormat:@"%@:isAnyAvailableForStagingByGroup", v8];
  v10 = [(MADAutoAssetStager *)self assetTargetTrainName];
  v11 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  v12 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v10 withRestoreVersion:v11];

  v13 = [(MADAutoAssetStager *)self availableForStagingRequiredByTarget];
  v14 = [v13 safeObjectForKey:v12 ofClass:objc_opt_class()];

  v15 = [(MADAutoAssetStager *)self availableForStagingOptionalByTarget];
  v16 = [v15 safeObjectForKey:v12 ofClass:objc_opt_class()];

  v17 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
  v18 = [v17 persistedEntry:v12 fromLocation:v9];

  if (v18)
  {
    v19 = [v18 ullForKey:@"targetLookupResultsOTASituation"];
    v20 = 0;
    v21 = 1;
    if (v19 > 299)
    {
      if ((v19 - 300) < 2)
      {
        goto LABEL_19;
      }
    }

    else if ((v19 - 203) < 2 || v19 == stru_B8.segname)
    {
      if (v14 | v16)
      {
        v25 = [(MADAutoAssetStager *)self dedupAvailableForStaging:v9 dedupingAssetDescriptors:v14 removingAlreadyDownloaded:v34 ofContainerName:@"availableForStagingRequiredByTarget"];

        v26 = [(MADAutoAssetStager *)self dedupAvailableForStaging:v9 dedupingAssetDescriptors:v16 removingAlreadyDownloaded:v34 ofContainerName:@"availableForStagingOptionalByTarget"];

        v27 = [(MADAutoAssetStager *)self availableForStagingRequiredByTarget];
        [v27 setSafeObject:v25 forKey:v12];

        v28 = [(MADAutoAssetStager *)self availableForStagingOptionalByTarget];
        [v28 setSafeObject:v26 forKey:v12];

        v29 = v25;
        if ([v25 count] || objc_msgSend(v26, "count"))
        {
          v20 = 1;
          v16 = v26;
          v14 = v29;
          v21 = 1;
          if (!a5)
          {
            goto LABEL_21;
          }
        }

        else
        {
          [(MADAutoAssetStager *)self _persistTargetOTASituation:401 fromLocation:v8];
          v31 = [(MADAutoAssetStager *)self persistedState];
          v32 = [v31 persistedConfig];
          v33 = v25;
          v21 = 1;
          [v32 persistBoolean:1 forKey:@"stagedNoContent"];

          v20 = 0;
          v16 = v26;
          v14 = v33;
          if (!a5)
          {
            goto LABEL_21;
          }
        }

        goto LABEL_20;
      }

      v16 = 0;
      v14 = 0;
    }

    else if (v19 == &stru_B8.segname[1])
    {
      goto LABEL_19;
    }
  }

  else
  {
    v22 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [(MADAutoAssetStager *)self summary];
      v24 = [(MADAutoAssetStager *)self _targetNameActive];
      *buf = 138544130;
      v36 = v23;
      v37 = 2114;
      v38 = v24;
      v39 = 2114;
      v40 = v9;
      v41 = 2114;
      v42 = v12;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%{public}@\n[%{public}@] {%{public}@} unable to load persisted set-lookup-result file | targetLookupResultsKey:@%{public}@", buf, 0x2Au);
    }
  }

  v20 = 0;
  v21 = 0;
LABEL_19:
  if (a5)
  {
LABEL_20:
    *a5 = v21;
  }

LABEL_21:

  return v20;
}

- (void)addToAvailableForStaging:(id)a3
{
  v4 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [(MADAutoAssetStager *)self availableForStaging];
  v23 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v23)
  {
    v6 = *v25;
    v21 = v5;
    v22 = *v25;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v25 != v6)
      {
        objc_enumerationMutation(v5);
      }

      v8 = *(*(&v24 + 1) + 8 * v7);
      v9 = [v4 assetType];
      v10 = [v8 assetType];
      if ([SUCore stringIsEqual:v9 to:v10])
      {
        v11 = [v4 assetSpecifier];
        [v8 assetSpecifier];
        v13 = v12 = v4;
        if ([SUCore stringIsEqual:v11 to:v13])
        {
          v14 = [v12 assetVersion];
          v15 = [v8 assetVersion];
          v16 = [SUCore stringIsEqual:v14 to:v15];

          v5 = v21;
          v4 = v12;
          v6 = v22;
          if (v16)
          {
            v17 = _MADLog(@"AutoStager");
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [(MADAutoAssetStager *)self summary];
              v20 = [v4 summary];
              *buf = 138543618;
              v29 = v19;
              v30 = 2114;
              v31 = v20;
              _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {addToAvailableForStaging} | ignoring additional entry for descriptor:%{public}@", buf, 0x16u);

              v5 = v21;
            }

            goto LABEL_18;
          }

          goto LABEL_12;
        }

        v4 = v12;
        v6 = v22;
      }

LABEL_12:
      if (v23 == ++v7)
      {
        v23 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v23)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v5 = [(MADAutoAssetStager *)self availableForStaging];
  [v5 addObject:v4];
LABEL_18:
}

- (void)storeAvailableForStaging:(id)a3 fromLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetStager *)self autoStagerFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [v6 targetTrainName];
  v11 = [v6 targetRestoreVersion];
  v12 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v10 withRestoreVersion:v11];

  v13 = [(MADAutoAssetStager *)self persistedAvailableForStagingByTarget];
  v14 = [v13 persistedEntry:v12 fromLocation:v7];

  v15 = [(MADAutoAssetStager *)self _targetNameAvailableForStaging:v6];
  if (v14)
  {
    [v14 persistSecureCodedObject:v6 forKey:@"AvailableForStagingByTarget"];
    v16 = [(MADAutoAssetStager *)self persistedAvailableForStagingByTarget];
    v17 = [v6 summary];
    [v16 storePersistedEntry:v12 withEntrySummary:v17 fromLocation:v7];

    v18 = [NSString alloc];
    v19 = [v6 summary];
    v20 = [v18 initWithFormat:@"available-for-staging for given target | availableForStaging:%@", v19];
    [(MADAutoAssetStager *)self _logPersistedAvailableForStagingByTarget:v7 operation:@"ENTRY_ADD" forPersistedEntryID:v12 withAvailableForStaging:v6 message:v20];
  }

  else
  {
    v21 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [(MADAutoAssetStager *)self summary];
      v23 = [v6 summary];
      *buf = 138544130;
      v25 = v22;
      v26 = 2114;
      v27 = v15;
      v28 = 2114;
      v29 = v7;
      v30 = 2114;
      v31 = v23;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%{public}@\n[%{public}@] {%{public}@:storeAvailableForStaging} unable to load persisted available-for-staging file | avaiableForStaging:%{public}@", buf, 0x2Au);
    }
  }
}

- (id)newSetConfigurationForClientDomainName:(id)a3 forAssetSetIdentifier:(id)a4 withAutoAssetEntries:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  LODWORD(v13) = 16843008;
  LOBYTE(v12) = 0;
  v10 = [MADAutoSetConfiguration initForClientDomainName:"initForClientDomainName:forSetClientName:forAssetSetIdentifier:withAutoAssetEntries:withDiscoveredInFlightAtomicInstance:withNewerAtomicInstanceOncePersonalized:withLatestAtomicInstanceToVend:withLatestAtomicInstanceToVendFromPreSUStaging:withPreviouslyVendedLockedAtomicInstances:withTicksUntilPreviousForceUnlocked:withMostRecentlyReceivedCachedAssetSetID:withMostRecentlyReceivedDownloadedFromLive:withMostRecentlyReceivedLastTimeChecked:withMostRecentlyReceivedPostedDate:withLatestToVendCachedAssetSetID:withLatestToVendDownloadedFromLive:withLatestToVendLastTimeChecked:withLatestToVendPostedDate:withAavailableForUseError:withNewerVersionError:havingEverProvidedLatestToVend:inhibitingImpliedScheduling:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:" forSetClientName:v9 forAssetSetIdentifier:@"AUTO_ASSET_STAGER_AS_CLIENT" withAutoAssetEntries:v8 withDiscoveredInFlightAtomicInstance:v7 withNewerAtomicInstanceOncePersonalized:0 withLatestAtomicInstanceToVend:0 withLatestAtomicInstanceToVendFromPreSUStaging:0 withPreviouslyVendedLockedAtomicInstances:v12 withTicksUntilPreviousForceUnlocked:0 withMostRecentlyReceivedCachedAssetSetID:-1 withMostRecentlyReceivedDownloadedFromLive:0 withMostRecentlyReceivedLastTimeChecked:0 withMostRecentlyReceivedPostedDate:0 withLatestToVendCachedAssetSetID:0 withLatestToVendDownloadedFromLive:0 withLatestToVendLastTimeChecked:0 withLatestToVendPostedDate:0 withAavailableForUseError:0 withNewerVersionError:0 havingEverProvidedLatestToVend:0 inhibitingImpliedScheduling:v13 havingReceivedLookupResponse:? vendingAtomicInstanceForConfiguredEntries:?];

  return v10;
}

- (id)_allEliminationSelectors
{
  v3 = [(MADAutoAssetStager *)self autoStagerFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = objc_alloc_init(NSMutableDictionary);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [(MADAutoAssetStager *)self eliminationSelectorsAcknowledged];
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [(MADAutoAssetStager *)self eliminationSelectorsAcknowledged];
        v14 = [v13 safeObjectForKey:v11 ofClass:objc_opt_class()];

        [v5 setSafeObject:v14 forKey:v11];
        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v8);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = [(MADAutoAssetStager *)self eliminationSelectors];
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v25 + 1) + 8 * j);
        v21 = objc_autoreleasePoolPush();
        v22 = [(MADAutoAssetStager *)self eliminationSelectors];
        v23 = [v22 safeObjectForKey:v20 ofClass:objc_opt_class()];

        [v5 setSafeObject:v23 forKey:v20];
        objc_autoreleasePoolPop(v21);
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v17);
  }

  return v5;
}

- (void)_removeEliminatedFromCandidatesAndAvaliable
{
  v2 = self;
  v3 = [(MADAutoAssetStager *)self autoStagerFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v55 = [(MADAutoAssetStager *)v2 _allEliminationSelectors];
  v5 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MADAutoAssetStager *)v2 summary];
    v7 = [v55 safeSummary];
    *buf = 138543618;
    v68 = v6;
    v69 = 2114;
    v70 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {_removeEliminatedFromCandidatesAndAvaliable} beginning to eliminate allEliminationSelectors:%{public}@", buf, 0x16u);
  }

  v8 = [(MADAutoAssetStager *)v2 candidateSetConfigurations];
  v9 = [v8 count];

  v56 = v2;
  if (v9)
  {
    v10 = 0;
    v11 = -1;
    while (1)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = [(MADAutoAssetStager *)v2 candidateSetConfigurations];
      v14 = [v13 objectAtIndex:v10];

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v15 = v55;
      v16 = [v15 countByEnumeratingWithState:&v61 objects:v66 count:16];
      if (v16)
      {
        v17 = v16;
        v52 = v12;
        v53 = v10;
        v51 = v11;
        v18 = *v62;
        while (2)
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v62 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v61 + 1) + 8 * i);
            v21 = objc_autoreleasePoolPush();
            v22 = [v15 safeObjectForKey:v20 ofClass:objc_opt_class()];
            v23 = [v22 assetType];
            v24 = [v22 assetSpecifier];
            v25 = [v14 assetSetEntryForAssetType:v23 forAssetSpecifier:v24];

            objc_autoreleasePoolPop(v21);
            if (v25)
            {
              v10 = v53;
              v11 = v53;
              v2 = v56;
              goto LABEL_15;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v61 objects:v66 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }

        v2 = v56;
        v11 = v51;
        v10 = v53;
LABEL_15:
        v12 = v52;
      }

      objc_autoreleasePoolPop(v12);
      if ((v11 & 0x8000000000000000) == 0)
      {
        break;
      }

      ++v10;
      v26 = [(MADAutoAssetStager *)v2 candidateSetConfigurations];
      v27 = [v26 count];

      if (v10 >= v27)
      {
        goto LABEL_20;
      }
    }

    v28 = [(MADAutoAssetStager *)v2 candidateSetConfigurations];
    [v28 removeObjectAtIndex:v11];
  }

LABEL_20:
  v29 = [(MADAutoAssetStager *)v2 availableForStaging];
  v30 = [v29 count];

  if (v30)
  {
    v31 = 0;
    v32 = -1;
    while (1)
    {
      v33 = objc_autoreleasePoolPush();
      v34 = [(MADAutoAssetStager *)v2 availableForStaging];
      v35 = [v34 objectAtIndex:v31];

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v36 = v55;
      v37 = [v36 countByEnumeratingWithState:&v57 objects:v65 count:16];
      if (v37)
      {
        v38 = v37;
        v54 = v32;
        v39 = *v58;
        while (2)
        {
          for (j = 0; j != v38; j = j + 1)
          {
            if (*v58 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = *(*(&v57 + 1) + 8 * j);
            v42 = objc_autoreleasePoolPush();
            v43 = [v36 safeObjectForKey:v41 ofClass:objc_opt_class()];
            v44 = [(MADAutoAssetStager *)v56 _doesSelector:v43 matchDescriptor:v35];

            objc_autoreleasePoolPop(v42);
            if (v44)
            {
              v32 = v31;
              v2 = v56;
              goto LABEL_32;
            }
          }

          v38 = [v36 countByEnumeratingWithState:&v57 objects:v65 count:16];
          if (v38)
          {
            continue;
          }

          break;
        }

        v2 = v56;
        v32 = v54;
      }

LABEL_32:

      objc_autoreleasePoolPop(v33);
      if ((v32 & 0x8000000000000000) == 0)
      {
        break;
      }

      ++v31;
      v45 = [(MADAutoAssetStager *)v2 availableForStaging];
      v46 = [v45 count];

      if (v31 >= v46)
      {
        goto LABEL_36;
      }
    }

    v47 = [(MADAutoAssetStager *)v2 availableForStaging];
    [v47 removeObjectAtIndex:v32];

    v48 = [(MADAutoAssetStager *)v2 persistedState];
    v49 = [v48 persistedConfig];
    v50 = [(MADAutoAssetStager *)v2 availableForStaging];
    [v49 persistULL:objc_msgSend(v50 forKey:"count") shouldPersist:{@"determinedAvailableAssetCount", 1}];
  }

LABEL_36:
}

- (void)_removeEliminatedFromStaged
{
  v3 = [(MADAutoAssetStager *)self autoStagerFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v58 = [(MADAutoAssetStager *)self _allEliminationSelectors];
  v54 = objc_alloc_init(NSMutableArray);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v61 = self;
  obj = [(MADAutoAssetStager *)self successfullyStaged];
  v5 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v76;
    p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
    v9 = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
    v55 = *v76;
    do
    {
      v10 = 0;
      v56 = v6;
      do
      {
        if (*v76 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v60 = v10;
        v11 = *(*(&v75 + 1) + 8 * v10);
        v59 = objc_autoreleasePoolPush();
        v12 = [(MADAutoAssetStager *)v61 successfullyStaged];
        v13 = [v12 safeObjectForKey:v11 ofClass:objc_opt_class()];

        if (!v13)
        {
          v37 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = [(MADAutoAssetStager *)v61 summary];
            *buf = 138543618;
            v82 = v38;
            v83 = 2114;
            v84 = v11;
            _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {_removeEliminatedFromStaged} nil stagedDescriptor encountered on successfullyStaged for stagedSelectorKey:%{public}@", buf, 0x16u);
          }

          goto LABEL_42;
        }

        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v14 = v58;
        v65 = [v14 countByEnumeratingWithState:&v71 objects:v80 count:16];
        if (!v65)
        {

          goto LABEL_42;
        }

        v63 = v14;
        v64 = *v72;
        v62 = v13;
LABEL_9:
        v15 = 0;
        while (1)
        {
          if (*v72 != v64)
          {
            objc_enumerationMutation(v14);
          }

          v16 = *(*(&v71 + 1) + 8 * v15);
          context = objc_autoreleasePoolPush();
          v17 = [v14 safeObjectForKey:v16 ofClass:objc_opt_class()];
          v18 = [v17 assetVersion];

          if (!v18)
          {
            break;
          }

          v19 = v9[223];
          v20 = [v13 assetType];
          v21 = [v17 assetType];
          if (![v19 stringIsEqual:v20 to:v21])
          {
            goto LABEL_22;
          }

          v22 = v9[223];
          v23 = [v13 assetSpecifier];
          v24 = [v17 assetSpecifier];
          if (![v22 stringIsEqual:v23 to:v24])
          {

            v14 = v63;
LABEL_22:

            goto LABEL_23;
          }

          v25 = v9[223];
          [v13 assetVersion];
          v27 = v26 = p_weak_ivar_lyt;
          v28 = [v17 assetVersion];
          LODWORD(v25) = [v25 stringIsEqual:v27 to:v28];

          v13 = v62;
          p_weak_ivar_lyt = v26;
          v9 = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);

          v14 = v63;
          if (v25)
          {
            v39 = _MADLog(@"AutoStager");
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              v41 = [(MADAutoAssetStager *)v61 summary];
              v42 = [v62 summary];
              *buf = 138543618;
              v82 = v41;
              v83 = 2114;
              v84 = v42;
              v43 = v39;
              v44 = "%{public}@\n[AUTO-STAGER] {_removeEliminatedFromStaged} elimination-selector for asset-type + asset-specifier + asset-version being eliminated - removed from successfully-staged | descriptor:%{public}@";
LABEL_39:
              _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, v44, buf, 0x16u);

              goto LABEL_40;
            }

            goto LABEL_40;
          }

LABEL_23:

          objc_autoreleasePoolPop(context);
          if (v65 == ++v15)
          {
            v36 = [v14 countByEnumeratingWithState:&v71 objects:v80 count:16];
            v65 = v36;
            if (!v36)
            {

              v7 = v55;
              goto LABEL_41;
            }

            goto LABEL_9;
          }
        }

        v29 = [v17 assetSpecifier];

        v30 = v9[223];
        v20 = [v13 assetType];
        v21 = [v17 assetType];
        v31 = [v30 stringIsEqual:v20 to:v21];
        v32 = v31;
        if (v29)
        {
          if (!v31)
          {
            goto LABEL_22;
          }

          v33 = v9[223];
          v34 = [v13 assetSpecifier];
          v35 = [v17 assetSpecifier];
          LODWORD(v33) = [v33 stringIsEqual:v34 to:v35];

          v13 = v62;
          if (v33)
          {
            v39 = _MADLog(@"AutoStager");
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              v41 = [(MADAutoAssetStager *)v61 summary];
              v42 = [v62 summary];
              *buf = 138543618;
              v82 = v41;
              v83 = 2114;
              v84 = v42;
              v43 = v39;
              v44 = "%{public}@\n[AUTO-STAGER] {_removeEliminatedFromStaged} elimination-selector for asset-type + asset-specifier being eliminated - removed from successfully-staged | descriptor:%{public}@";
              goto LABEL_39;
            }

            goto LABEL_40;
          }

          goto LABEL_23;
        }

        if (!v32)
        {
          goto LABEL_23;
        }

        v39 = _MADLog(@"AutoStager");
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v41 = [(MADAutoAssetStager *)v61 summary];
          v42 = [v13 summary];
          *buf = 138543618;
          v82 = v41;
          v83 = 2114;
          v84 = v42;
          v43 = v39;
          v44 = "%{public}@\n[AUTO-STAGER] {_removeEliminatedFromStaged} elimination-selector for asset-type being eliminated - removed from successfully-staged | descriptor:%{public}@";
          goto LABEL_39;
        }

LABEL_40:
        v7 = v55;

        objc_autoreleasePoolPop(context);
        [v54 addObject:v13];
LABEL_41:
        v6 = v56;
LABEL_42:

        objc_autoreleasePoolPop(v59);
        v10 = v60 + 1;
      }

      while ((v60 + 1) != v6);
      v6 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
    }

    while (v6);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v47 = v54;
  v48 = [v47 countByEnumeratingWithState:&v67 objects:v79 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v68;
    do
    {
      for (i = 0; i != v49; i = i + 1)
      {
        if (*v68 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v67 + 1) + 8 * i);
        v53 = objc_autoreleasePoolPush();
        [(MADAutoAssetStager *)v61 _removeDescriptorFromSuccessfullyStaged:v52 message:@"remove all eliminate-selectors from set of successfully staged descriptors"];
        [(MADAutoAssetStager *)v61 _removeStagedAssetFromFilesystem:v52 forHistoryOperation:300];
        objc_autoreleasePoolPop(v53);
      }

      v49 = [v47 countByEnumeratingWithState:&v67 objects:v79 count:16];
    }

    while (v49);
  }
}

- (void)_acknowledgeEliminatedForCurrentJob
{
  v3 = [(MADAutoAssetStager *)self autoStagerFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v27 = objc_alloc_init(NSMutableDictionary);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = [(MADAutoAssetStager *)self eliminationSelectors];
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [(MADAutoAssetStager *)self eliminationSelectors];
        v13 = [v12 safeObjectForKey:v10 ofClass:objc_opt_class()];

        if ([(MADAutoAssetStager *)self _doesSelectorMatchCurrentJob:v13])
        {
          [v27 setSafeObject:v13 forKey:v10];
          v14 = [(MADAutoAssetStager *)self eliminationSetConfigurationCurrentJob];

          if (!v14)
          {
            [(MADAutoAssetStager *)self notifyControlManagerEliminateDone:@"_acknowledgeEliminatedForCurrentJob" forAssetSelector:v13];
          }
        }

        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v7);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = v27;
  v16 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    do
    {
      v19 = 0;
      do
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v28 + 1) + 8 * v19);
        v21 = objc_autoreleasePoolPush();
        v22 = [v15 safeObjectForKey:v20 ofClass:objc_opt_class()];
        v23 = [(MADAutoAssetStager *)self eliminationSelectors];
        [v23 removeObjectForKey:v20];

        v24 = [(MADAutoAssetStager *)self eliminationSelectorsAcknowledged];
        [v24 setSafeObject:v22 forKey:v20];

        objc_autoreleasePoolPop(v21);
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v17);
  }

  v25 = [(MADAutoAssetStager *)self eliminationSetConfigurationCurrentJob];

  if (v25)
  {
    v26 = [(MADAutoAssetStager *)self eliminationSetConfigurationCurrentJob];
    [(MADAutoAssetStager *)self notifyControlManagerEliminateDone:@"_acknowledgeEliminatedForCurrentJob" forSetConfiguration:v26];

    [(MADAutoAssetStager *)self setEliminationSetConfigurationCurrentJob:0];
  }
}

- (void)notifyControlManagerEliminateDone:(id)a3 forAssetSelector:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 summary];
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "\n[ELIMINATE(STAGER)]{%{public}@} notifying auto-control-manager asset-selector eliminate done | assetSelector:%{public}@", &v9, 0x16u);
  }

  [MADAutoAssetControlManager stagerEliminatedSelector:v6];
}

- (void)notifyControlManagerEliminateDone:(id)a3 forSetConfiguration:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 summary];
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "\n[SET-ELIMINATE(STAGER)]{%{public}@} notifying auto-control-manager set-identifier eliminate done | setConfiguration:%{public}@", &v9, 0x16u);
  }

  [MADAutoAssetControlManager stagerEliminatedSetConfiguration:v6];
}

- (void)_persistLastStagingFrom:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v25 = [[NSString alloc] initWithFormat:@"%@:_persistLastStagingFrom", v4];
  if (![(MADAutoAssetStager *)self stagingClientUsingGroups])
  {
    [(MADAutoAssetStager *)self _persistRemoveAll:v25 message:@"removing all before setting staging from/to" removingDetermined:1 loggingConfig:0];
  }

  v7 = [(MADAutoAssetStager *)self persistedState];
  v8 = [v7 persistedConfig];
  v9 = [(MADAutoAssetStager *)self stagingFromOSVersion];
  [v8 persistString:v9 forKey:@"lastStagingFromOSVersion"];

  v10 = [(MADAutoAssetStager *)self persistedState];
  v11 = [v10 persistedConfig];
  v12 = [(MADAutoAssetStager *)self stagingFromBuildVersion];
  [v11 persistString:v12 forKey:@"lastStagingFromBuildVersion"];

  v13 = [(MADAutoAssetStager *)self persistedState];
  v14 = [v13 persistedConfig];
  v15 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  [v14 persistString:v15 forKey:@"assetTargetOSVersion" shouldPersist:0];

  v16 = [(MADAutoAssetStager *)self persistedState];
  v17 = [v16 persistedConfig];
  v18 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  [v17 persistString:v18 forKey:@"assetTargetBuildVersion" shouldPersist:0];

  v19 = [(MADAutoAssetStager *)self persistedState];
  v20 = [v19 persistedConfig];
  v21 = [(MADAutoAssetStager *)self assetTargetTrainName];
  [v20 persistString:v21 forKey:@"assetTargetTrainName" shouldPersist:0];

  v22 = [(MADAutoAssetStager *)self persistedState];
  v23 = [v22 persistedConfig];
  v24 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  [v23 persistString:v24 forKey:@"assetTargetRestoreVersion" shouldPersist:1];

  [(MADAutoAssetStager *)self _logPersistedConfigSet:v25 message:@"beginning staging operations"];
}

- (void)_persistStoredTargetWithOTASituation:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  if (![(MADAutoAssetStager *)self storedTargetWithOTASituation])
  {
    [(MADAutoAssetStager *)self setStoredTargetWithOTASituation:1];
    v7 = [(MADAutoAssetStager *)self persistedState];
    v8 = [v7 persistedConfig];
    [v8 persistBoolean:-[MADAutoAssetStager storedTargetWithOTASituation](self forKey:"storedTargetWithOTASituation") shouldPersist:{@"storedTargetWithOTASituation", 1}];

    v9 = _MADLog(@"AutoStagerSituation");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(MADAutoAssetStager *)self summary];
      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {%{public}@} first time persisted target-lookup-results included target-OTA-situation", &v11, 0x16u);
    }
  }
}

- (void)_persistTargetOTASituationForFollowup:(id)a3 fromLocation:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(MADAutoAssetStager *)self autoStagerFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  if (([SUCore stringIsEqual:v14 to:@"DeterminedRequiredWithOptional"]& 1) == 0)
  {
    if (([SUCore stringIsEqual:v14 to:@"DetermineNothingAvailable"]& 1) != 0 || [SUCore stringIsEqual:v14 to:@"DetermineNothingOtherAvailable"])
    {
      v9 = self;
      v10 = 201;
LABEL_5:
      [(MADAutoAssetStager *)v9 _persistTargetOTASituation:v10 fromLocation:v6];
      goto LABEL_6;
    }

    if ([SUCore stringIsEqual:v14 to:@"DetermineHaveAvailable"])
    {
      v9 = self;
      v10 = 203;
      goto LABEL_5;
    }

    if ([SUCore stringIsEqual:v14 to:@"RequiredErrorBlocksOTA"])
    {
      v9 = self;
      v10 = 202;
      goto LABEL_5;
    }

    v11 = [(MADAutoAssetStager *)self autoStagerFSM];
    v12 = [v11 diag];
    v13 = [[NSString alloc] initWithFormat:@"{%@:_persistTargetOTASituationForFollowup} unsupported followup event | followupEvent:%@", v6, v14];
    [v12 trackAnomaly:@"AUTO-STAGER" forReason:v13 withResult:6108 withError:0];
  }

LABEL_6:
}

- (void)_persistTargetOTASituation:(int64_t)a3 fromLocation:(id)a4
{
  v6 = a4;
  v7 = [(MADAutoAssetStager *)self autoStagerFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(MADAutoAssetStager *)self assetTargetTrainName];
  v10 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  v11 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v9 withRestoreVersion:v10];

  if (v11)
  {
    v12 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
    v13 = [v12 persistedEntry:v11 fromLocation:v6];

    if (v13 && [v13 ullForKey:@"targetLookupResultsOTASituation"] != a3)
    {
      [v13 persistULL:a3 forKey:@"targetLookupResultsOTASituation"];
      v14 = _MADLog(@"AutoStagerSituation");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(MADAutoAssetStager *)self summary];
        v16 = [MANAutoAssetControlStagerInformation previousOTASituationName:a3];
        v17 = 138544130;
        v18 = v15;
        v19 = 2114;
        v20 = v6;
        v21 = 2114;
        v22 = v11;
        v23 = 2114;
        v24 = v16;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {%{public}@} change to target-OTA-situation | targetLookupResultsKey:%{public}@ | targetOTASituation:%{public}@", &v17, 0x2Au);
      }

      [(MADAutoAssetStager *)self _persistStoredTargetWithOTASituation:v6];
    }
  }

  else
  {
    v13 = 0;
  }
}

- (void)_persistAllTargetLookupResultsOTASituation:(int64_t)a3 fromLocation:(id)a4
{
  v6 = a4;
  v7 = [(MADAutoAssetStager *)self autoStagerFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  if ([(MADAutoAssetStager *)self stagingClientUsingGroups])
  {
    v9 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
    v10 = [v9 persistedEntryIDs:v6];

    if ([v10 count])
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v24 = v10;
      v11 = v10;
      v27 = [v11 countByEnumeratingWithState:&v28 objects:v40 count:16];
      if (v27)
      {
        v12 = *v29;
        v26 = *v29;
        v25 = v11;
        do
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v29 != v12)
            {
              objc_enumerationMutation(v11);
            }

            v14 = *(*(&v28 + 1) + 8 * i);
            v15 = objc_autoreleasePoolPush();
            v16 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
            v17 = [v16 persistedEntry:v14 fromLocation:v6];

            if (v17)
            {
              if ([v17 ullForKey:@"targetLookupResultsOTASituation"] != a3)
              {
                [v17 persistULL:a3 forKey:@"targetLookupResultsOTASituation"];
                v18 = _MADLog(@"AutoStagerSituation");
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  v19 = [(MADAutoAssetStager *)self summary];
                  [MANAutoAssetControlStagerInformation previousOTASituationName:a3];
                  v21 = v20 = a3;
                  *buf = 138544130;
                  v33 = v19;
                  v34 = 2114;
                  v35 = v6;
                  v36 = 2114;
                  v37 = v14;
                  v38 = 2114;
                  v39 = v21;
                  _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {%{public}@} change to target-OTA-situation | entryID:%{public}@ | targetOTASituation:%{public}@", buf, 0x2Au);

                  a3 = v20;
                  v11 = v25;

                  v12 = v26;
                }

                [(MADAutoAssetStager *)self _persistStoredTargetWithOTASituation:v6];
              }
            }

            else
            {
              v22 = _MADLog(@"AutoStager");
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                v23 = [(MADAutoAssetStager *)self _updateLatestSummary];
                *buf = 138543874;
                v33 = v23;
                v34 = 2114;
                v35 = v6;
                v36 = 2114;
                v37 = v14;
                _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {%{public}@} unable to retrieve set-lookup-result | entryID:%{public}@", buf, 0x20u);

                v12 = v26;
              }
            }

            objc_autoreleasePoolPop(v15);
          }

          v27 = [v11 countByEnumeratingWithState:&v28 objects:v40 count:16];
        }

        while (v27);
      }

      v10 = v24;
    }
  }
}

- (BOOL)_persistPreviousOTASituationIfTargetMatchesCurrentOS:(id)a3 settingStartupSituation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MADAutoAssetStager *)self autoStagerFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
  v50 = v6;
  v10 = [v9 persistedEntryIDs:v6];

  if ([(MADAutoAssetStager *)self loadPersistedPreviousOTASituation])
  {
    v11 = 0;
    v12 = v6;
    goto LABEL_35;
  }

  [(MADAutoAssetStager *)self setLoadPersistedPreviousOTASituation:1];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v55 objects:v69 count:16];
  if (!v14)
  {
    v11 = 0;
    v12 = v6;
    goto LABEL_34;
  }

  v15 = v14;
  v49 = v10;
  v48 = v4;
  v54 = *v56;
  v12 = v6;
  v53 = v13;
  while (2)
  {
    v16 = 0;
    v52 = v15;
    do
    {
      if (*v56 != v54)
      {
        objc_enumerationMutation(v13);
      }

      v17 = *(*(&v55 + 1) + 8 * v16);
      v18 = objc_autoreleasePoolPush();
      v19 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
      v20 = [v19 persistedEntry:v17 fromLocation:v12];

      if (v20)
      {
        v21 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
        v22 = [v21 decodeFromLocation:v12 ofEntryName:v17 fromPersistedEntry:v20 decodingObjectForKey:@"targetLookupResults" ofClass:objc_opt_class() allowingNilObject:0];

        if (v22)
        {
          v23 = [v22 targetOSVersion];
          v24 = [(MADAutoAssetStager *)self stagingFromOSVersion];
          if (([SUCore stringIsEqual:v23 to:v24]& 1) != 0)
          {
            v51 = v22;
            v25 = [v22 targetBuild];
            v26 = [(MADAutoAssetStager *)self stagingFromBuildVersion];
            v27 = [SUCore stringIsEqual:v25 to:v26];

            if (!v27)
            {
              v12 = v50;
              v15 = v52;
              v13 = v53;
              v28 = v51;
              goto LABEL_19;
            }

            v32 = [v20 ullForKey:@"targetLookupResultsOTASituation"];
            if (!v32)
            {
              if ([(MADAutoAssetStager *)self storedTargetWithOTASituation])
              {
                v32 = &stru_B8 + 20;
              }

              else
              {
                v32 = &stru_20 + 69;
              }
            }

            v11 = v48;
            v33 = v51;
            if (v48)
            {
              [(MADAutoAssetStager *)self setStartupPreviousOTASituation:v32];
              v34 = [(MADAutoAssetStager *)self persistedState];
              v35 = [v34 persistedConfig];
              [v35 persistULL:-[MADAutoAssetStager startupPreviousOTASituation](self forKey:{"startupPreviousOTASituation"), @"previousOTASituation"}];

              v36 = _MADLog(@"AutoStagerSituation");
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                v37 = [(MADAutoAssetStager *)self summary];
                v38 = [v51 targetOSVersion];
                v39 = [v51 targetBuild];
                v40 = [MANAutoAssetControlStagerInformation previousOTASituationName:[(MADAutoAssetStager *)self startupPreviousOTASituation]];
                *buf = 138544386;
                v60 = v37;
                v61 = 2114;
                v62 = v50;
                v63 = 2114;
                v64 = v38;
                v65 = 2114;
                v66 = v39;
                v67 = 2114;
                v68 = v40;
                _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {%{public}@} adopted previous-OTA-situation from target (just completed OTA) | targetOSVersion:%{public}@ | targetBuild:%{public}@ | startupPreviousOTASituation:%{public}@", buf, 0x34u);

                v12 = v50;
                v33 = v51;

LABEL_33:
                objc_autoreleasePoolPop(v18);
                v10 = v49;
                v13 = v53;
                goto LABEL_34;
              }
            }

            else
            {
              v41 = [(MADAutoAssetStager *)self persistedState];
              v42 = [v41 persistedConfig];
              [v42 persistULL:v32 forKey:@"previousOTASituation"];

              v36 = _MADLog(@"AutoStagerSituation");
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                v43 = [(MADAutoAssetStager *)self summary];
                v44 = [v51 targetOSVersion];
                v45 = [v51 targetBuild];
                v46 = [MANAutoAssetControlStagerInformation previousOTASituationName:v32];
                *buf = 138544386;
                v60 = v43;
                v61 = 2114;
                v62 = v50;
                v63 = 2114;
                v64 = v44;
                v65 = 2114;
                v66 = v45;
                v67 = 2114;
                v68 = v46;
                _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {%{public}@} adopted previous-OTA-situation from target (now running OS where staging had been attempted from) | targetOSVersion:%{public}@ | targetBuild:%{public}@ | startupPreviousOTASituation:%{public}@", buf, 0x34u);

                v12 = v50;
                v33 = v51;
                goto LABEL_33;
              }
            }

            v12 = v50;
            goto LABEL_33;
          }

          v15 = v52;
        }

        else
        {
          v23 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v31 = [(MADAutoAssetStager *)self summary];
            *buf = 138543874;
            v60 = v31;
            v61 = 2114;
            v62 = v12;
            v63 = 2114;
            v64 = v17;
            _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {%{public}@} unable to load persistedTargetLookupResults from persistedEntry | entryID:%{public}@", buf, 0x20u);

            v15 = v52;
          }
        }

        v28 = v22;
        v13 = v53;
      }

      else
      {
        v28 = _MADLog(@"AutoStager");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [(MADAutoAssetStager *)self summary];
          v30 = v29 = v28;
          *buf = 138543874;
          v60 = v30;
          v61 = 2114;
          v62 = v12;
          v63 = 2114;
          v64 = v17;
          _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {%{public}@} unable to load entry from persistedTargetLookupResults | entryID:%{public}@", buf, 0x20u);

          v28 = v29;
        }
      }

LABEL_19:

      objc_autoreleasePoolPop(v18);
      v16 = v16 + 1;
    }

    while (v15 != v16);
    v15 = [v13 countByEnumeratingWithState:&v55 objects:v69 count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

  v11 = 0;
  v10 = v49;
LABEL_34:

LABEL_35:
  return v11;
}

- (void)_persistErasePreviousOTASituation:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetStager *)self persistedState];
  v8 = [v7 persistedConfig];
  v9 = [v8 ullForKey:@"previousOTASituation"];

  if (v9 != &stru_20.flags)
  {
    v10 = [(MADAutoAssetStager *)self persistedState];
    v11 = [v10 persistedConfig];
    [v11 persistULL:100 forKey:@"previousOTASituation"];

    [(MADAutoAssetStager *)self setStartupPreviousOTASituation:100];
    v12 = _MADLog(@"AutoStagerSituation");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(MADAutoAssetStager *)self summary];
      v14 = [MANAutoAssetControlStagerInformation previousOTASituationName:v9];
      v15 = [MANAutoAssetControlStagerInformation previousOTASituationName:[(MADAutoAssetStager *)self startupPreviousOTASituation]];
      v16 = 138544130;
      v17 = v13;
      v18 = 2114;
      v19 = v4;
      v20 = 2114;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {%{public}@} erased previous-OTA-situation | hadBeenPreviousOTASituation:%{public}@ | startupPreviousOTASituation:%{public}@", &v16, 0x2Au);
    }
  }
}

- (int64_t)_persistDescriptor:(id)a3 operation:(id)a4 persistingDescriptor:(id)a5 withRepresentation:(int64_t)a6 message:(id)a7
{
  v35 = a7;
  v12 = a5;
  v34 = a4;
  v33 = a3;
  v13 = [(MADAutoAssetStager *)self autoStagerFSM];
  v14 = [v13 extendedStateQueue];
  dispatch_assert_queue_V2(v14);

  v15 = [[NSString alloc] initWithFormat:@"%@:_persistDescriptor", v33];
  v16 = [v12 metadata];
  v17 = [v16 safeIntegerForKey:@"_UnarchivedSize"];

  v18 = [MAAutoAssetSelector alloc];
  v19 = [v12 assetType];
  v20 = [v12 assetSpecifier];
  v21 = [v12 assetVersion];
  v22 = [v18 initForAssetType:v19 withAssetSpecifier:v20 matchingAssetVersion:v21];

  v23 = [v22 persistedEntryID];
  v24 = [(MADAutoAssetStager *)self persistedState];
  v25 = [v24 persistedEntry:v23 fromLocation:v15];

  v26 = [(MADAutoAssetStager *)self stagingFromOSVersion];
  [v25 persistString:v26 forKey:@"lastStagingFromOSVersion"];

  v27 = [(MADAutoAssetStager *)self stagingFromBuildVersion];
  [v25 persistString:v27 forKey:@"lastStagingFromBuildVersion"];

  v28 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  [v25 persistString:v28 forKey:@"assetTargetOSVersion"];

  v29 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  [v25 persistString:v29 forKey:@"assetTargetBuildVersion"];

  [v25 persistULL:a6 forKey:@"assetRepresentation"];
  [v25 persistULL:v17 forKey:@"assetContentBytes"];
  [v25 persistSecureCodedObject:v12 forKey:@"assetDescriptor"];
  v30 = [(MADAutoAssetStager *)self persistedState];
  v31 = [v12 summary];
  [v30 storePersistedEntry:v23 withEntrySummary:v31 fromLocation:v15];

  [(MADAutoAssetStager *)self _logPersistedEntry:v33 operation:v34 persistingDescriptor:v12 withRepresentation:a6 message:v35];
  return v17;
}

- (id)_persistRebuildTrackingNewHandedOffDescriptors:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetStager *)self persistedState];
  v8 = [v7 persistedConfig];
  v9 = [v8 stringForKey:@"lastStagingFromOSVersion"];
  [(MADAutoAssetStager *)self setStagingFromOSVersion:v9];

  v10 = [(MADAutoAssetStager *)self persistedState];
  v11 = [v10 persistedConfig];
  v12 = [v11 stringForKey:@"lastStagingFromBuildVersion"];
  [(MADAutoAssetStager *)self setStagingFromBuildVersion:v12];

  v13 = [(MADAutoAssetStager *)self persistedState];
  v14 = [v13 persistedConfig];
  v15 = [v14 stringForKey:@"assetTargetOSVersion"];
  [(MADAutoAssetStager *)self setAssetTargetOSVersion:v15];

  v16 = [(MADAutoAssetStager *)self persistedState];
  v17 = [v16 persistedConfig];
  v18 = [v17 stringForKey:@"assetTargetBuildVersion"];
  [(MADAutoAssetStager *)self setAssetTargetBuildVersion:v18];

  v19 = [(MADAutoAssetStager *)self persistedState];
  v20 = [v19 persistedConfig];
  v21 = [v20 stringForKey:@"assetTargetTrainName"];
  [(MADAutoAssetStager *)self setAssetTargetTrainName:v21];

  v22 = [(MADAutoAssetStager *)self persistedState];
  v23 = [v22 persistedConfig];
  v24 = [v23 stringForKey:@"assetTargetRestoreVersion"];
  [(MADAutoAssetStager *)self setAssetTargetRestoreVersion:v24];

  v25 = [(MADAutoAssetStager *)self persistedState];
  v26 = [v25 persistedEntryIDs:@"_persistRebuildTrackingNewHandedOffDescriptors"];

  v98 = v26;
  v99 = v4;
  if (![v26 count])
  {
    goto LABEL_35;
  }

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v27 = v26;
  v105 = [v27 countByEnumeratingWithState:&v114 objects:v124 count:16];
  if (!v105)
  {

    goto LABEL_35;
  }

  v101 = 0;
  v104 = *v115;
  v28 = v27;
  v103 = v27;
  do
  {
    v29 = 0;
    do
    {
      if (*v115 != v104)
      {
        objc_enumerationMutation(v28);
      }

      v30 = *(*(&v114 + 1) + 8 * v29);
      v31 = objc_autoreleasePoolPush();
      v32 = [(MADAutoAssetStager *)self persistedState];
      v33 = [v32 persistedEntry:v30 fromLocation:@"_persistRebuildTrackingNewHandedOffDescriptors"];

      if (!v33)
      {
        v36 = _MADLog(@"AutoStager");
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        v37 = [(MADAutoAssetStager *)self summary];
        *buf = 138543618;
        v121 = v37;
        v122 = 2114;
        v123 = v30;
        _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {_persistRebuildTrackingNewHandedOffDescriptors} unable to determine previous status for entry:%{public}@", buf, 0x16u);
        goto LABEL_26;
      }

      v34 = [v33 ullForKey:@"assetRepresentation"];
      v35 = [(MADAutoAssetStager *)self persistedState];
      v36 = [v35 decodeFromLocation:@"_persistRebuildTrackingNewHandedOffDescriptors" ofEntryName:v30 fromPersistedEntry:v33 decodingObjectForKey:@"assetDescriptor" ofClass:objc_opt_class() allowingNilObject:0];

      if (!v36)
      {
        v37 = _MADLog(@"AutoStager");
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = [(MADAutoAssetStager *)self summary];
          *buf = 138543618;
          v121 = v38;
          v122 = 2114;
          v123 = v30;
          v39 = v37;
          v40 = OS_LOG_TYPE_ERROR;
          v41 = "%{public}@\n[AUTO-STAGER] {_persistRebuildTrackingNewHandedOffDescriptors} unable to load persistedDescriptor from persisted-state for entry:%{public}@";
          goto LABEL_25;
        }

LABEL_26:

        goto LABEL_27;
      }

      if (v34 <= 601)
      {
        if (v34 != stru_248.segname)
        {
          if (v34 == &stru_248.segname[1])
          {
            goto LABEL_21;
          }

LABEL_22:
          v60 = [(MADAutoAssetStager *)self autoStagerFSM];
          v61 = [v60 diag];
          v62 = [NSString alloc];
          v63 = [v36 summary];
          v64 = [v62 initWithFormat:@"{_persistRebuildTrackingNewHandedOffDescriptors} unsupported asset representation(%d) - not adopting persisted descriptor:%@", v34, v63];
          [v61 trackAnomaly:@"AUTO-STAGER" forReason:v64 withResult:6108 withError:0];

          v28 = v103;
          goto LABEL_27;
        }

        v37 = _MADLog(@"AutoStager");
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

        v38 = [(MADAutoAssetStager *)self summary];
        *buf = 138543618;
        v121 = v38;
        v122 = 2114;
        v123 = v30;
        v39 = v37;
        v40 = OS_LOG_TYPE_DEFAULT;
        v41 = "%{public}@\n[AUTO-STAGER] {_persistRebuildTrackingNewHandedOffDescriptors} persistedDescriptor candidateForStaging ignored (candidates come from stager-set-configurations) | entry:%{public}@";
LABEL_25:
        _os_log_impl(&dword_0, v39, v40, v41, buf, 0x16u);

        goto LABEL_26;
      }

      if (v34 == &stru_248.segname[2])
      {
LABEL_21:
        [(MADAutoAssetStager *)self _trackReloadedDescriptorAvailableForStaging:v36];
        goto LABEL_27;
      }

      if (v34 != &stru_248.segname[3])
      {
        goto LABEL_22;
      }

      v42 = [MAAutoAssetSelector alloc];
      v43 = [v36 assetType];
      v44 = [v36 assetSpecifier];
      v45 = [v36 assetVersion];
      v46 = [v42 initForAssetType:v43 withAssetSpecifier:v44 matchingAssetVersion:v45];

      v47 = [(MADAutoAssetStager *)self persistedState];
      v48 = [v47 persistedConfig];
      v102 = [v48 ullForKey:@"stagedAssetTotalContentBytes"];

      v100 = [v33 ullForKey:@"assetContentBytes"];
      v49 = [(MADAutoAssetStager *)self successfullyStaged];
      v50 = [v46 persistedEntryID];
      [v49 setSafeObject:v36 forKey:v50];

      analyticsManager = self->_analyticsManager;
      v52 = [v46 assetSpecifier];
      v53 = [v46 assetType];
      v54 = [v46 assetVersion];
      v55 = [(MADAnalyticsManager *)analyticsManager recordMobileAssetPromotionAttempt:v52 assetType:v53 assetVersion:v54 osPromotion:1 successfullyPromoted:1 withReason:6];

      LODWORD(v52) = [v36 isPatch];
      v56 = [(MADAutoAssetStager *)self statisticsStaged];
      v57 = v56;
      if (v52)
      {
        [v56 setPatchedAssets:{objc_msgSend(v56, "patchedAssets") + 1}];

        v58 = [(MADAutoAssetStager *)self statisticsStaged];
        v59 = [v36 metadata];
        [v58 setPatchedBytes:{objc_msgSend(v59, "safeIntegerForKey:", @"_UnarchivedSize", "patchedBytes")}];
      }

      else
      {
        [v56 setFullAssets:{objc_msgSend(v56, "fullAssets") + 1}];

        v58 = [(MADAutoAssetStager *)self statisticsStaged];
        v59 = [v36 metadata];
        [v58 setFullBytes:{objc_msgSend(v59, "safeIntegerForKey:", @"_UnarchivedSize", "fullBytes")}];
      }

      v65 = [(MADAutoAssetStager *)self persistedState];
      v66 = [v65 persistedConfig];
      v67 = [(MADAutoAssetStager *)self successfullyStaged];
      [v66 persistULL:objc_msgSend(v67 forKey:"count") shouldPersist:{@"stagedAssetCount", 0}];

      v68 = [(MADAutoAssetStager *)self persistedState];
      v69 = [v68 persistedConfig];
      [v69 persistULL:&v102[v100] forKey:@"stagedAssetTotalContentBytes" shouldPersist:0];

      v70 = [(MADAutoAssetStager *)self persistedState];
      v71 = [v70 persistedConfig];
      v72 = [(MADAutoAssetStager *)self successfullyStaged];
      [v71 persistBoolean:objc_msgSend(v72 forKey:"count") == 0 shouldPersist:{@"stagedNoContent", 0}];

      v101 = 1;
      v28 = v103;
LABEL_27:

      objc_autoreleasePoolPop(v31);
      v29 = v29 + 1;
    }

    while (v105 != v29);
    v73 = [v28 countByEnumeratingWithState:&v114 objects:v124 count:16];
    v105 = v73;
  }

  while (v73);

  v26 = v98;
  v4 = v99;
  if (v101)
  {
    v74 = [(MADAutoAssetStager *)self persistedState];
    v75 = [v74 persistedConfig];
    [v75 persistState];

    [(MADAutoAssetStager *)self _logPersistedConfigSet:@"_persistRebuildTrackingNewHandedOffDescriptors" message:@"encountered staged descriptors"];
  }

LABEL_35:
  if (([SUCore stringIsEqual:v4 to:@"ResumeRunningTargetVersion"]& 1) != 0 || [SUCore stringIsEqual:v4 to:@"ResumePromotingAllStaged"])
  {
    v76 = objc_alloc_init(NSMutableArray);
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v77 = [(MADAutoAssetStager *)self successfullyStaged];
    v78 = [v77 countByEnumeratingWithState:&v110 objects:v119 count:16];
    if (v78)
    {
      v79 = v78;
      v80 = *v111;
      do
      {
        for (i = 0; i != v79; i = i + 1)
        {
          if (*v111 != v80)
          {
            objc_enumerationMutation(v77);
          }

          v82 = *(*(&v110 + 1) + 8 * i);
          v83 = objc_autoreleasePoolPush();
          v84 = [(MADAutoAssetStager *)self successfullyStaged];
          v85 = [v84 safeObjectForKey:v82 ofClass:objc_opt_class()];

          if (v85)
          {
            [v76 addObject:v85];
          }

          objc_autoreleasePoolPop(v83);
        }

        v79 = [v77 countByEnumeratingWithState:&v110 objects:v119 count:16];
      }

      while (v79);
    }

    if ([v76 count])
    {
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v86 = v76;
      v87 = [v86 countByEnumeratingWithState:&v106 objects:v118 count:16];
      if (v87)
      {
        v88 = v87;
        v89 = *v107;
        do
        {
          for (j = 0; j != v88; j = j + 1)
          {
            if (*v107 != v89)
            {
              objc_enumerationMutation(v86);
            }

            v91 = *(*(&v106 + 1) + 8 * j);
            v92 = objc_autoreleasePoolPush();
            [(MADAutoAssetStager *)self _removeDescriptorFromSuccessfullyStaged:v91 message:@"NEW-OS-PROMOTION"];
            objc_autoreleasePoolPop(v92);
          }

          v88 = [v86 countByEnumeratingWithState:&v106 objects:v118 count:16];
        }

        while (v88);
      }

      v76 = _MADLog(@"AutoStager");
      v26 = v98;
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        v93 = [(MADAutoAssetStager *)self summary];
        v94 = [v86 count];
        *buf = 138543618;
        v121 = v93;
        v122 = 2048;
        v123 = v94;
        _os_log_impl(&dword_0, v76, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {_persistRebuildTrackingNewHandedOffDescriptors} promoted descriptor count:%ld", buf, 0x16u);
      }

      v4 = v99;
    }

    else
    {
      v95 = [(MADAutoAssetStager *)self autoStagerFSM];
      v96 = [v95 diag];
      [v96 trackAnomaly:@"AUTO-STAGER" forReason:@"{_persistRebuildTrackingNewHandedOffDescriptors} | should have asset(s) to be promoted yet none to hand off to auto-control-manager" withResult:6111 withError:0];

      v86 = 0;
      v26 = v98;
      v4 = v99;
    }
  }

  else
  {
    v86 = 0;
  }

  return v86;
}

- (void)_trackReloadedDescriptorAvailableForStaging:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  if (v4)
  {
    [(MADAutoAssetStager *)self addToAvailableForStaging:v4];
  }

  else
  {
    v7 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(MADAutoAssetStager *)self summary];
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {_trackReloadedDescriptorAvailableForStaging} nil persistedDescriptor provided by caller", &v9, 0xCu);
    }
  }
}

- (void)_removeDescriptorFromSuccessfullyStaged:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetStager *)self autoStagerFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [MAAutoAssetSelector alloc];
  v11 = [v6 assetType];
  v12 = [v6 assetSpecifier];
  v13 = [v6 assetVersion];
  v14 = [v10 initForAssetType:v11 withAssetSpecifier:v12 matchingAssetVersion:v13];

  v15 = [v14 persistedEntryID];
  if (v15)
  {
    v16 = [(MADAutoAssetStager *)self successfullyStaged];
    v17 = [v16 safeObjectForKey:v15 ofClass:objc_opt_class()];

    if (v17)
    {
      v18 = [v17 metadata];
      v19 = [v18 safeIntegerForKey:@"_UnarchivedSize"];

      v20 = [(MADAutoAssetStager *)self persistedState];
      v21 = [v20 persistedConfig];
      v22 = [v21 ullForKey:@"stagedAssetTotalContentBytes"];

      v23 = [(MADAutoAssetStager *)self successfullyStaged];
      [v23 removeObjectForKey:v15];

      v24 = [(MADAutoAssetStager *)self persistedState];
      [v24 removePersistedEntry:v15 fromLocation:@"_removeDescriptorFromSuccessfullyStaged"];

      v68 = v7;
      [(MADAutoAssetStager *)self _logPersistedRemovedEntry:@"_removeDescriptorFromSuccessfullyStaged" removedDescriptor:v6 message:v7];
      LODWORD(v21) = [v17 isPatch];
      v25 = [(MADAutoAssetStager *)self statisticsUnstaged];
      v26 = v25;
      if (v21)
      {
        [v25 setPatchedAssets:{objc_msgSend(v25, "patchedAssets") + 1}];

        v27 = [(MADAutoAssetStager *)self statisticsUnstaged];
        v28 = [v17 metadata];
        [v27 setPatchedBytes:{objc_msgSend(v28, "safeIntegerForKey:", @"_UnarchivedSize", "patchedBytes")}];
      }

      else
      {
        [v25 setFullAssets:{objc_msgSend(v25, "fullAssets") + 1}];

        v27 = [(MADAutoAssetStager *)self statisticsUnstaged];
        v28 = [v17 metadata];
        [v27 setFullBytes:{objc_msgSend(v28, "safeIntegerForKey:", @"_UnarchivedSize", "fullBytes")}];
      }

      v67 = v14;

      v39 = v22 - v19;
      if (v22 >= v19)
      {
        v48 = [(MADAutoAssetStager *)self persistedState];
        v49 = [v48 persistedConfig];
        v50 = [(MADAutoAssetStager *)self successfullyStaged];
        [v49 persistULL:objc_msgSend(v50 forKey:"count") shouldPersist:{@"stagedAssetCount", 0}];

        v45 = [(MADAutoAssetStager *)self persistedState];
        v46 = [v45 persistedConfig];
        [v46 persistULL:v39 forKey:@"stagedAssetTotalContentBytes" shouldPersist:0];
      }

      else
      {
        v40 = [(MADAutoAssetStager *)self autoStagerFSM];
        v41 = [v40 diag];
        v42 = [NSString alloc];
        v43 = [v6 summary];
        v44 = [v42 initWithFormat:@"{_removeDescriptorFromSuccessfullyStaged} | descriptor larger than total staged content | removeFromStagedDescriptor:%@, unarchivedSize:%lld, stagedAssetTotalContentBytes:%llu", v43, v19, v22];
        [v41 trackAnomaly:@"AUTO-STAGER" forReason:v44 withResult:6108 withError:0];

        v45 = [(MADAutoAssetStager *)self persistedState];
        v46 = [v45 persistedConfig];
        v47 = [(MADAutoAssetStager *)self successfullyStaged];
        [v46 persistULL:objc_msgSend(v47 forKey:"count") shouldPersist:{@"stagedAssetCount", 0}];
      }

      v51 = [(MADAutoAssetStager *)self persistedState];
      v52 = [v51 persistedConfig];
      v53 = [(MADAutoAssetStager *)self successfullyStaged];
      [v52 persistBoolean:objc_msgSend(v53 forKey:"count") == 0 shouldPersist:{@"stagedNoContent", 0}];

      v54 = [(MADAutoAssetStager *)self persistedState];
      v55 = [v54 persistedConfig];
      [v55 persistState];

      v56 = [(MADAutoAssetStager *)self successfullyStaged];
      v57 = [v56 count];

      if (!v57)
      {
        v58 = [(MADAutoAssetStager *)self assetTargetTrainName];
        v59 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
        v60 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v58 withRestoreVersion:v59];

        if (v60 && (-[MADAutoAssetStager persistedTargetLookupResults](self, "persistedTargetLookupResults"), v61 = objc_claimAutoreleasedReturnValue(), [v61 persistedEntry:v60 fromLocation:@"_removeDescriptorFromSuccessfullyStaged"], v62 = objc_claimAutoreleasedReturnValue(), v61, v62))
        {
          [v62 persistULL:402 forKey:@"targetLookupResultsOTASituation"];
          v63 = _MADLog(@"AutoStagerSituation");
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            v64 = [(MADAutoAssetStager *)self summary];
            v65 = [MANAutoAssetControlStagerInformation previousOTASituationName:402];
            *buf = 138543874;
            v70 = v64;
            v71 = 2114;
            v72 = v60;
            v73 = 2114;
            v74 = v65;
            _os_log_impl(&dword_0, v63, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {_removeDescriptorFromSuccessfullyStaged} target-OTA-situation now indicates empty | targetLookupResultsKey:%{public}@ | targetOTASituation:%{public}@", buf, 0x20u);
          }

          [(MADAutoAssetStager *)self _persistStoredTargetWithOTASituation:@"_removeDescriptorFromSuccessfullyStaged"];
        }

        else
        {
          v62 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            v66 = [(MADAutoAssetStager *)self summary];
            *buf = 138543618;
            v70 = v66;
            v71 = 2114;
            v72 = v60;
            _os_log_impl(&dword_0, v62, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {_removeDescriptorFromSuccessfullyStaged} unable to load persisted set-lookup-result file | targetLookupResultsKey:%{public}@", buf, 0x16u);
          }
        }
      }

      v7 = v68;
      [(MADAutoAssetStager *)self _logPersistedConfigSet:@"_removeDescriptorFromSuccessfullyStaged" message:v68];
      v14 = v67;
    }

    else
    {
      v34 = [(MADAutoAssetStager *)self autoStagerFSM];
      v35 = [v34 diag];
      v36 = [NSString alloc];
      v37 = [v6 summary];
      v38 = [v36 initWithFormat:@"{_removeDescriptorFromSuccessfullyStaged} | provided not currently staged | removeFromStagedDescriptor:%@", v37];
      [v35 trackAnomaly:@"AUTO-STAGER" forReason:v38 withResult:6108 withError:0];
    }
  }

  else
  {
    v29 = [(MADAutoAssetStager *)self autoStagerFSM];
    v30 = [v29 diag];
    v31 = [NSString alloc];
    v32 = [v6 summary];
    v33 = [v31 initWithFormat:@"{_removeDescriptorFromSuccessfullyStaged} | no persisted entry to remove | removeFromStagedDescriptor:%@", v32];
    [v30 trackAnomaly:@"AUTO-STAGER" forReason:v33 withResult:6110 withError:0];
  }
}

- (void)_persistRemoveAll:(id)a3 message:(id)a4 removingDetermined:(BOOL)a5 loggingConfig:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v43 = a3;
  v10 = a4;
  v11 = [(MADAutoAssetStager *)self autoStagerFSM];
  v12 = [v11 extendedStateQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [(MADAutoAssetStager *)self persistedState];
  [v13 removeAllPersistedEntries:v10];

  if (v7)
  {
    [(MADAutoAssetStager *)self setAssetTargetOSVersion:0];
    [(MADAutoAssetStager *)self setAssetTargetBuildVersion:0];
    [(MADAutoAssetStager *)self setAssetTargetTrainName:0];
    [(MADAutoAssetStager *)self setAssetTargetRestoreVersion:0];
    [(MADAutoAssetStager *)self setStoredTargetWithOTASituation:0];
    v14 = [(MADAutoAssetStager *)self persistedState];
    v15 = [v14 persistedConfig];
    [v15 persistString:@"NO_STAGING_ATTEMPTED" forKey:@"assetTargetOSVersion" shouldPersist:0];

    v16 = [(MADAutoAssetStager *)self persistedState];
    v17 = [v16 persistedConfig];
    [v17 persistString:@"NO_STAGING_ATTEMPTED" forKey:@"assetTargetBuildVersion" shouldPersist:0];

    v18 = [(MADAutoAssetStager *)self persistedState];
    v19 = [v18 persistedConfig];
    [v19 persistString:@"NO_STAGING_ATTEMPTED" forKey:@"assetTargetTrainName" shouldPersist:0];

    v20 = [(MADAutoAssetStager *)self persistedState];
    v21 = [v20 persistedConfig];
    [v21 persistString:@"NO_STAGING_ATTEMPTED" forKey:@"assetTargetRestoreVersion" shouldPersist:0];

    v22 = [(MADAutoAssetStager *)self persistedState];
    v23 = [v22 persistedConfig];
    [v23 persistBoolean:-[MADAutoAssetStager storedTargetWithOTASituation](self forKey:"storedTargetWithOTASituation") shouldPersist:{@"storedTargetWithOTASituation", 0}];

    [(MADAutoAssetStager *)self stagingClientUsingGroups];
  }

  else if ([(MADAutoAssetStager *)self stagingClientUsingGroups])
  {
    goto LABEL_5;
  }

  v24 = [(MADAutoAssetStager *)self persistedState];
  v25 = [v24 persistedConfig];
  [v25 persistULL:0 forKey:@"candidateAssetCount" shouldPersist:0];

  v26 = [(MADAutoAssetStager *)self persistedState];
  v27 = [v26 persistedConfig];
  [v27 persistULL:0 forKey:@"determinedAvailableAssetCount" shouldPersist:0];

LABEL_5:
  v28 = [(MADAutoAssetStager *)self persistedState];
  v29 = [v28 persistedConfig];
  [v29 persistULL:0 forKey:@"activelyStagingAssetCount" shouldPersist:0];

  v30 = [(MADAutoAssetStager *)self persistedState];
  v31 = [v30 persistedConfig];
  [v31 persistULL:0 forKey:@"awaitingStagingAssetCount" shouldPersist:0];

  v32 = [(MADAutoAssetStager *)self persistedState];
  v33 = [v32 persistedConfig];
  [v33 persistULL:0 forKey:@"stagedAssetCount" shouldPersist:0];

  v34 = [(MADAutoAssetStager *)self persistedState];
  v35 = [v34 persistedConfig];
  [v35 persistULL:0 forKey:@"stagedAssetTotalContentBytes" shouldPersist:0];

  v36 = [(MADAutoAssetStager *)self persistedState];
  v37 = [v36 persistedConfig];
  [v37 persistBoolean:0 forKey:@"stagedNoContent" shouldPersist:0];

  v38 = [(MADAutoAssetStager *)self persistedState];
  v39 = [v38 persistedConfig];
  [v39 persistBoolean:-[MADAutoAssetStager stagingClientUsingGroups](self forKey:"stagingClientUsingGroups") shouldPersist:{@"modeByGroups", 1}];

  if (v6)
  {
    [(MADAutoAssetStager *)self _logPersistedConfigSet:v43 message:v10];
  }

  if (![(MADAutoAssetStager *)self stagingClientUsingGroups]|| v7)
  {
    v40 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
    [v40 removeAllPersistedEntries:v43];

    v41 = [(MADAutoAssetStager *)self persistedSetLookupResults];
    [v41 removeAllPersistedEntries:v43];

    v42 = [(MADAutoAssetStager *)self persistedAvailableForStagingByTarget];
    [v42 removeAllPersistedEntries:v43];
  }

  [(MADAutoAssetStager *)self _logPersistedTableOfContents:v43];
  [(MADAutoAssetStager *)self _logPersistedTargetLookupResultsTableOfContents:v43];
  [(MADAutoAssetStager *)self _logPersistedSetLookupResultsTableOfContents:v43];
  [(MADAutoAssetStager *)self _logPersistedAvailableForStagingByTargetTableOfContents:v43];
}

- (void)_persistEraseLookupResults:(id)a3 forTargetTrainName:(id)a4 forTargetRestoreVersion:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MADAutoAssetStager *)self autoStagerFSM];
  v11 = [v10 extendedStateQueue];
  dispatch_assert_queue_V2(v11);

  if ([(MADAutoAssetStager *)self stagingClientUsingGroups])
  {
    [(MADAutoAssetStager *)self _lookupCacheRemoveResult:v13 forTargetTrainName:v8 withRestoreVersion:v9];
    [(MADAutoAssetStager *)self _availableForStagingRemove:v13 forTargetTrainName:v8 withRestoreVersion:v9];
    [(MADAutoAssetStager *)self _candidatesRemove:v13 forTargetTrainName:v8 withRestoreVersion:v9];
    v12 = objc_alloc_init(NSCache);
    [(MADAutoAssetStager *)self setTargetLookupResults:v12];
  }
}

- (void)_logPersistedSetLookupResult:(id)a3 operation:(id)a4 forPersistedEntryID:(id)a5 withSetLookupResult:(id)a6 message:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(MADAutoAssetStager *)self autoStagerFSM];
  v18 = [v17 extendedStateQueue];
  dispatch_assert_queue_V2(v18);

  if (v14)
  {
    v19 = [MADAutoAssetPersisted persistedOperationSymbol:v13];
    v20 = [MADAutoAssetPersisted persistedComponentSymbol:@"AUTO-STAGER-SET-LOOKUP-RESULTS"];
    v21 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v15 newSummaryWithoutEntryID];
      *buf = 138546434;
      v27 = @"PERSISTED";
      v28 = 2114;
      v29 = @"AUTO-STAGER-SET-LOOKUP-RESULTS";
      v30 = 2114;
      v31 = v13;
      v32 = 2114;
      v33 = v20;
      v34 = 2114;
      v35 = @">----->";
      v36 = 2114;
      v37 = v12;
      v38 = 2114;
      v39 = v16;
      v40 = 2114;
      v41 = v20;
      v42 = 2114;
      v43 = v19;
      v44 = 2114;
      v45 = v14;
      v46 = 2114;
      v47 = v22;
      v48 = 2114;
      v49 = v20;
      v50 = 2114;
      v51 = @"<-----<";
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@\n#_%{public}@:(%{public}@) [%{public}@] | %{public}@\n#_%{public}@:%{public}@", buf, 0x84u);
    }
  }

  else
  {
    v19 = [(MADAutoAssetStager *)self autoStagerFSM];
    v20 = [v19 diag];
    v23 = [NSString alloc];
    v24 = [v15 summary];
    v25 = [v23 initWithFormat:@"{%@:_logPersistedSetLookupResult} %@:%@ | no persistedEntryID | %@ | setLookupResult:%@", v12, @"AUTO-STAGER-SET-LOOKUP-RESULTS", v13, v16, v24];
    [v20 trackAnomaly:@"AUTO-STAGER" forReason:v25 withResult:6110 withError:0];
  }
}

- (void)_logPersistedSetLookupResultRemoved:(id)a3 removedPersistedEntryID:(id)a4 removedSetLookupResult:(id)a5 message:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MADAutoAssetStager *)self autoStagerFSM];
  v15 = [v14 extendedStateQueue];
  dispatch_assert_queue_V2(v15);

  v16 = [MADAutoAssetPersisted persistedOperationSymbol:@"ENTRY_REMOVE"];
  v17 = [MADAutoAssetPersisted persistedComponentSymbol:@"AUTO-STAGER-SET-LOOKUP-RESULTS"];
  if (v11)
  {
    v18 = _MADLog(@"AutoStager");
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v19)
      {
        v20 = v10;
        v21 = [v12 newSummaryWithoutEntryID];
        *buf = 138546434;
        v30 = @"PERSISTED";
        v31 = 2114;
        v32 = @"AUTO-STAGER-SET-LOOKUP-RESULTS";
        v33 = 2114;
        v34 = @"ENTRY_REMOVE";
        v35 = 2114;
        v36 = v17;
        v37 = 2114;
        v38 = @">----->";
        v39 = 2114;
        v40 = v20;
        v41 = 2114;
        v42 = v13;
        v43 = 2114;
        v44 = v17;
        v45 = 2114;
        v46 = v16;
        v47 = 2114;
        v48 = v11;
        v49 = 2114;
        v50 = v21;
        v51 = 2114;
        v52 = v17;
        v53 = 2114;
        v54 = @"<-----<";
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@\n#_%{public}@:(%{public}@) [%{public}@] | %{public}@\n#_%{public}@:%{public}@", buf, 0x84u);

        v10 = v20;
      }
    }

    else if (v19)
    {
      *buf = 138546178;
      v30 = @"PERSISTED";
      v31 = 2114;
      v32 = @"AUTO-STAGER-SET-LOOKUP-RESULTS";
      v33 = 2114;
      v34 = @"ENTRY_REMOVE";
      v35 = 2114;
      v36 = v17;
      v37 = 2114;
      v38 = @">----->";
      v39 = 2114;
      v40 = v10;
      v41 = 2114;
      v42 = v13;
      v43 = 2114;
      v44 = v17;
      v45 = 2114;
      v46 = v16;
      v47 = 2114;
      v48 = v11;
      v49 = 2114;
      v50 = v17;
      v51 = 2114;
      v52 = @"<-----<";
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@\n#_%{public}@:(%{public}@) [%{public}@]\n#_%{public}@:%{public}@", buf, 0x7Au);
    }
  }

  else
  {
    v28 = v16;
    v22 = v10;
    v23 = [(MADAutoAssetStager *)self autoStagerFSM];
    v24 = [v23 diag];
    v25 = [NSString alloc];
    if (v12)
    {
      v26 = [v12 summary];
    }

    else
    {
      v26 = @"N";
    }

    v27 = [v25 initWithFormat:@"{%@:_logPersistedSetLookupResultRemoved} %@ | no persistedEntryID to remove | %@ | removedSetLookupResult:%@", v22, @"AUTO-STAGER-SET-LOOKUP-RESULTS", v13, v26];
    [v24 trackAnomaly:@"AUTO-STAGER" forReason:v27 withResult:6110 withError:0];

    if (v12)
    {
    }

    v10 = v22;
    v16 = v28;
  }
}

- (void)_logPersistedSetLookupResultsTableOfContents:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  if (+[MADAutoAssetControlManager preferencePersistedTableLoggingEnabled])
  {
    v7 = [MADAutoAssetPersisted persistedComponentSymbol:@"AUTO-STAGER-SET-LOOKUP-RESULTS"];
    v8 = [(MADAutoAssetStager *)self persistedSetLookupResults];
    v9 = [v8 persistedEntryIDs:v4];

    if ([v9 count])
    {
      v10 = [v9 count];
      v11 = _MADLog(@"AutoStager");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544642;
        v28 = @"PERSISTED";
        v29 = 2114;
        v30 = @"AUTO-STAGER-SET-LOOKUP-RESULTS";
        v31 = 2114;
        v32 = @"ENTRY_LOAD";
        v33 = 2114;
        v34 = v7;
        v35 = 2114;
        v36 = @">----->";
        v37 = 2114;
        v38 = v4;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} table-of-contents...", buf, 0x3Eu);
      }

      v25 = v7;

      if (v10 >= 1)
      {
        v12 = 0;
        v24 = v10;
        do
        {
          context = objc_autoreleasePoolPush();
          v13 = [v9 objectAtIndexedSubscript:v12];
          v14 = [(MADAutoAssetStager *)self persistedSetLookupResults];
          v15 = [v14 persistedEntry:v13 fromLocation:v4];

          if (v15)
          {
            v16 = [(MADAutoAssetStager *)self persistedSetLookupResults];
            v17 = [v16 decodeFromLocation:v4 ofEntryName:v13 fromPersistedEntry:v15 decodingObjectForKey:@"setLookupResult" ofClass:objc_opt_class() allowingNilObject:0];

            if (v17)
            {
              v18 = _MADLog(@"AutoStager");
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = [v17 newSummaryWithoutEntryID];
                *buf = 138544642;
                v28 = v25;
                v29 = 2114;
                v30 = @"E_LOD";
                v31 = 2048;
                v32 = (v12 + 1);
                v10 = v24;
                v33 = 2048;
                v34 = v24;
                v35 = 2114;
                v36 = v13;
                v37 = 2114;
                v38 = v19;
                _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "\n#_%{public}@:%{public}@ (%ld of %ld) [%{public}@] | %{public}@", buf, 0x3Eu);
              }

              goto LABEL_13;
            }
          }

          else
          {
            v17 = _MADLog(@"AutoStager");
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = [(MADAutoAssetStager *)self summary];
              *buf = 138544130;
              v28 = v4;
              v29 = 2114;
              v30 = @"AUTO-STAGER-SET-LOOKUP-RESULTS";
              v31 = 2114;
              v32 = v18;
              v33 = 2114;
              v34 = v13;
              _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "{%{public}@:_logPersistedSetLookupResultsTableOfContents} | (%{public}@) %{public}@ | unable to load entry:%{public}@", buf, 0x2Au);
LABEL_13:
            }
          }

          objc_autoreleasePoolPop(context);
          ++v12;
        }

        while (v10 != v12);
      }

      v20 = _MADLog(@"AutoStager");
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v25;
        goto LABEL_21;
      }

      *buf = 138544642;
      v28 = @"PERSISTED";
      v29 = 2114;
      v30 = @"AUTO-STAGER-SET-LOOKUP-RESULTS";
      v31 = 2114;
      v32 = @"ENTRY_LOAD";
      v33 = 2114;
      v7 = v25;
      v34 = v25;
      v35 = 2114;
      v36 = @"<-----<";
      v37 = 2114;
      v38 = v4;
      v21 = "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} ...table-of-contents";
      v22 = v20;
      v23 = 62;
    }

    else
    {
      v20 = _MADLog(@"AutoStager");
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
LABEL_21:

        goto LABEL_22;
      }

      *buf = 138545410;
      v28 = @"PERSISTED";
      v29 = 2114;
      v30 = @"AUTO-STAGER-SET-LOOKUP-RESULTS";
      v31 = 2114;
      v32 = @"ENTRY_LOAD";
      v33 = 2114;
      v34 = v7;
      v35 = 2114;
      v36 = @">----->";
      v37 = 2114;
      v38 = v4;
      v39 = 2114;
      v40 = @"empty table-of-contents";
      v41 = 2114;
      v42 = v7;
      v43 = 2114;
      v44 = @"<-----<";
      v21 = "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@\n#_%{public}@:%{public}@";
      v22 = v20;
      v23 = 92;
    }

    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
    goto LABEL_21;
  }

LABEL_22:
}

- (BOOL)_stagedAllDesiredForCurrentTarget
{
  v3 = [(MADAutoAssetStager *)self autoStagerFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(MADAutoAssetStager *)self assetTargetTrainName];
  v6 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  v7 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v5 withRestoreVersion:v6];

  v8 = [(MADAutoAssetStager *)self availableForStagingRequiredByTarget];
  v9 = [v8 safeObjectForKey:v7 ofClass:objc_opt_class()];

  v10 = [(MADAutoAssetStager *)self availableForStagingOptionalByTarget];
  v11 = [v10 safeObjectForKey:v7 ofClass:objc_opt_class()];

  v12 = [(MADAutoAssetStager *)self successfullyStaged];
  v13 = [v12 count];
  v14 = [v9 count];
  LOBYTE(v13) = v13 >= &v14[[v11 count]];

  return v13;
}

- (void)purgeAlreadyStagedNotApplicableForRequiredByTarget:(id)a3 andNotApplicableForOptionalByTarget:(id)a4
{
  v5 = [(MADAutoAssetStager *)self autoStagerFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  [(MADAutoAssetStager *)self _removeAllStagedContent:@"purgeAlreadyStagedNotApplicableForRequiredByTarget"];
}

- (void)loadPersistedSetLookupResults
{
  v3 = [(MADAutoAssetStager *)self autoStagerFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(MADAutoAssetStager *)self persistedSetLookupResults];
  [v5 loadPersistedState:@"loadPersistedSetLookupResults"];

  v6 = [(MADAutoAssetStager *)self persistedSetLookupResults];
  v7 = [v6 persistedEntryIDs:@"loadPersistedSetLookupResults"];

  if ([v7 count])
  {
    v38 = objc_alloc_init(NSMutableArray);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v37 = v7;
    v8 = v7;
    obj = [v8 countByEnumeratingWithState:&v46 objects:v57 count:16];
    if (obj)
    {
      v9 = *v47;
      v39 = *v47;
      do
      {
        for (i = 0; i != obj; i = i + 1)
        {
          if (*v47 != v9)
          {
            objc_enumerationMutation(v8);
          }

          v11 = *(*(&v46 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v13 = [(MADAutoAssetStager *)self persistedSetLookupResults];
          v14 = [v13 persistedEntry:v11 fromLocation:@"loadPersistedSetLookupResults"];

          if (v14)
          {
            v15 = [(MADAutoAssetStager *)self persistedSetLookupResults];
            v16 = [v15 decodeFromLocation:@"loadPersistedSetLookupResults" ofEntryName:v11 fromPersistedEntry:v14 decodingObjectForKey:@"setLookupResult" ofClass:objc_opt_class() allowingNilObject:0];

            v17 = _MADLog(@"AutoStager");
            v18 = v17;
            if (v16)
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                v19 = [(MADAutoAssetStager *)self _updateLatestSummary];
                [v16 summary];
                v21 = v20 = v8;
                *buf = 138543874;
                v52 = v19;
                v53 = 2114;
                v54 = v11;
                v55 = 2114;
                v56 = v21;
                _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {loadPersistedSetLookupResults} content on filesystem validated | entryID:%{public}@, adopted setLookupResult:%{public}@", buf, 0x20u);

                v8 = v20;
                v9 = v39;
              }

              [(MADAutoAssetStager *)self setLookupResultLoadedFromPersisted:v16 persistedEntryID:v11];
            }

            else
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                v23 = [(MADAutoAssetStager *)self _updateLatestSummary];
                *buf = 138543618;
                v52 = v23;
                v53 = 2114;
                v54 = v11;
                _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "[%{public}@] {loadPersistedSetLookupResults} unable to load set-lookup-result | entryID:%{public}@", buf, 0x16u);

                v9 = v39;
              }

              [v38 addObject:v11];
            }
          }

          else
          {
            v16 = _MADLog(@"AutoStager");
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v22 = [(MADAutoAssetStager *)self _updateLatestSummary];
              *buf = 138543618;
              v52 = v22;
              v53 = 2114;
              v54 = v11;
              _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {loadPersistedSetLookupResults} unable to retrieve set-lookup-result | entryID:%{public}@", buf, 0x16u);
            }
          }

          objc_autoreleasePoolPop(v12);
        }

        obj = [v8 countByEnumeratingWithState:&v46 objects:v57 count:16];
      }

      while (obj);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obja = v38;
    v24 = [obja countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v43;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v43 != v26)
          {
            objc_enumerationMutation(obja);
          }

          v28 = *(*(&v42 + 1) + 8 * j);
          v29 = objc_autoreleasePoolPush();
          v30 = [(MADAutoAssetStager *)self persistedSetLookupResults];
          v31 = [v30 persistedEntry:v28 fromLocation:@"loadPersistedSetLookupResults"];

          v32 = [(MADAutoAssetStager *)self persistedSetLookupResults];
          v33 = [v32 decodeFromLocation:@"loadPersistedSetLookupResults" ofEntryName:v28 fromPersistedEntry:v31 decodingObjectForKey:@"setLookupResult" ofClass:objc_opt_class() allowingNilObject:0];

          if (v33)
          {
            v34 = [(MADAutoAssetStager *)self persistedSetLookupResults];
            [v34 removePersistedEntry:v28 fromLocation:@"loadPersistedSetLookupResults"];

            [(MADAutoAssetStager *)self _logPersistedSetLookupResultRemoved:@"loadPersistedSetLookupResults" removedPersistedEntryID:v28 removedSetLookupResult:v33 message:@"dropped while loading persisted-state"];
          }

          objc_autoreleasePoolPop(v29);
        }

        v25 = [obja countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v25);
    }

    v35 = obja;

    v7 = v37;
  }

  else
  {
    v35 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [(MADAutoAssetStager *)self _updateLatestSummary];
      *buf = 138543362;
      v52 = v36;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {loadPersistedSetLookupResults} no persisted set-lookup-results to be resumed", buf, 0xCu);
    }
  }

  [(MADAutoAssetStager *)self _logPersistedSetLookupResultsTableOfContents:@"loadPersistedSetLookupResults"];
}

- (void)targetLookupResultsLoadedFromPersisted:(id)a3 targetLookupResultsKey:(id)a4 persistedEntryID:(id)a5 withTargetOTASituation:(int64_t)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(MADAutoAssetStager *)self autoStagerFSM];
  v13 = [v12 extendedStateQueue];
  dispatch_assert_queue_V2(v13);

  v14 = [(MADAutoAssetStager *)self cachingEnabled];
  if (v16 && v10 && v14)
  {
    v15 = [(MADAutoAssetStager *)self targetLookupResults];
    [v15 setObject:v16 forKey:v10];
  }

  [(MADAutoAssetStager *)self _logPersistedTargetLookupResults:@"targetLookupResultsLoadedFromPersisted" operation:@"ENTRY_LOAD" forPersistedEntryID:v11 withTargetLookupResults:v16 withTargetOTASituation:a6 message:@"target-lookup-results validated"];
}

- (void)setLookupResultLoadedFromPersisted:(id)a3 persistedEntryID:(id)a4
{
  v6 = a4;
  v11 = a3;
  v7 = [(MADAutoAssetStager *)self autoStagerFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(MADAutoAssetStager *)self setLookupResults];
  v10 = [v11 assetType];
  [v9 setSafeObject:v11 forKey:v10];

  [(MADAutoAssetStager *)self _logPersistedSetLookupResult:@"setLookupResultLoadedFromPersisted" operation:@"ENTRY_LOAD" forPersistedEntryID:v6 withSetLookupResult:v11 message:@"set-lookup-result validated"];
}

- (id)targetLookupResultsKeyForTrainName:(id)a3 withRestoreVersion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  v9 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v7 withRestoreVersion:v6 withTargetBuildVersion:v8];

  return v9;
}

- (id)targetLookupResultsKeyForTrainName:(id)a3 withRestoreVersion:(id)a4 withTargetBuildVersion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MADAutoAssetStager *)self autoStagerFSM];
  v12 = [v11 extendedStateQueue];
  dispatch_assert_queue_V2(v12);

  v13 = v9;
  if (!v9)
  {
    v13 = v10;
  }

  if (v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = @"CURRENT-TRAIN";
  }

  v15 = v9;
  v16 = v8;
  v17 = [[NSString alloc] initWithFormat:@"%@+%@", v14, v13];

  return v17;
}

- (void)_logPersistedTargetLookupResults:(id)a3 operation:(id)a4 forPersistedEntryID:(id)a5 withTargetLookupResults:(id)a6 withTargetOTASituation:(int64_t)a7 message:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = [(MADAutoAssetStager *)self autoStagerFSM];
  v20 = [v19 extendedStateQueue];
  dispatch_assert_queue_V2(v20);

  if (v16)
  {
    v21 = [MADAutoAssetPersisted persistedOperationSymbol:v15];
    v22 = [MADAutoAssetPersisted persistedComponentSymbol:@"AUTO-STAGER-TARGET-LOOKUP-RESULTS"];
    v23 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v14;
      v24 = [v17 newSummaryWithoutEntryID];
      v25 = [MANAutoAssetControlStagerInformation previousOTASituationName:a7];
      *buf = 138546690;
      v32 = @"PERSISTED";
      v33 = 2114;
      v34 = @"AUTO-STAGER-TARGET-LOOKUP-RESULTS";
      v35 = 2114;
      v36 = v15;
      v37 = 2114;
      v38 = v22;
      v39 = 2114;
      v40 = @">----->";
      v41 = 2114;
      v42 = v30;
      v43 = 2114;
      v44 = v18;
      v45 = 2114;
      v46 = v22;
      v47 = 2114;
      v48 = v21;
      v49 = 2114;
      v50 = v16;
      v51 = 2114;
      v52 = v24;
      v53 = 2114;
      v54 = v25;
      v55 = 2114;
      v56 = v22;
      v57 = 2114;
      v58 = @"<-----<";
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@\n#_%{public}@:(%{public}@) [%{public}@] | %{public}@ situation:%{public}@\n#_%{public}@:%{public}@", buf, 0x8Eu);

      v14 = v30;
    }
  }

  else
  {
    v21 = [(MADAutoAssetStager *)self autoStagerFSM];
    v26 = [v21 diag];
    v27 = [NSString alloc];
    v28 = [v17 summary];
    v29 = [v27 initWithFormat:@"{%@:_logPersistedTargetLookupResults} %@:%@ | no persistedEntryID | %@ | targetLookupResults:%@", v14, @"AUTO-STAGER-TARGET-LOOKUP-RESULTS", v15, v18, v28];
    [v26 trackAnomaly:@"AUTO-STAGER" forReason:v29 withResult:6110 withError:0];
  }
}

- (void)_logPersistedActiveTargetLookupResults:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  if ([(MADAutoAssetStager *)self stagingClientUsingGroups])
  {
    v7 = [(MADAutoAssetStager *)self assetTargetTrainName];
    v8 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
    v9 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v7 withRestoreVersion:v8];

    v10 = [(MADAutoAssetStager *)self persistedAvailableForStagingByTarget];
    v11 = [v10 persistedEntry:v9 fromLocation:v4];

    if (v11)
    {
      v12 = [(MADAutoAssetStager *)self persistedAvailableForStagingByTarget];
      v13 = [v12 decodeFromLocation:v4 ofEntryName:v9 fromPersistedEntry:v11 decodingObjectForKey:@"AvailableForStagingByTarget" ofClass:objc_opt_class() allowingNilObject:0];

      if (v13)
      {
        v14 = [NSString alloc];
        v15 = [v13 newSummaryWithoutEntryID];
        v16 = [v14 initWithFormat:@"final available-for-staging | targetLookupResultsKey:%@ | availableForStaging:%@", v9, v15];
        [(MADAutoAssetStager *)self _logPersistedAvailableForStagingByTarget:v4 operation:@"ENTRY_MODIFY" forPersistedEntryID:v9 withAvailableForStaging:v13 message:v16];
      }
    }

    else
    {
      v13 = _MADLog(@"AutoStager");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v17 = [(MADAutoAssetStager *)self summary];
        *buf = 138543874;
        v19 = v17;
        v20 = 2114;
        v21 = v4;
        v22 = 2114;
        v23 = v9;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%{public}@\n{%{public}@} unable to load persisted available-for-staging file | targetLookupResultsKey:%{public}@", buf, 0x20u);
      }
    }
  }
}

- (void)_logPersistedTargetLookupResultsRemoved:(id)a3 removedPersistedEntryID:(id)a4 removedTargetLookupResults:(id)a5 message:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MADAutoAssetStager *)self autoStagerFSM];
  v15 = [v14 extendedStateQueue];
  dispatch_assert_queue_V2(v15);

  v16 = [MADAutoAssetPersisted persistedOperationSymbol:@"ENTRY_REMOVE"];
  v17 = [MADAutoAssetPersisted persistedComponentSymbol:@"AUTO-STAGER-TARGET-LOOKUP-RESULTS"];
  if (v11)
  {
    v18 = _MADLog(@"AutoStager");
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v19)
      {
        v20 = v10;
        v21 = [v12 newSummaryWithoutEntryID];
        *buf = 138546434;
        v30 = @"PERSISTED";
        v31 = 2114;
        v32 = @"AUTO-STAGER-TARGET-LOOKUP-RESULTS";
        v33 = 2114;
        v34 = @"ENTRY_REMOVE";
        v35 = 2114;
        v36 = v17;
        v37 = 2114;
        v38 = @">----->";
        v39 = 2114;
        v40 = v20;
        v41 = 2114;
        v42 = v13;
        v43 = 2114;
        v44 = v17;
        v45 = 2114;
        v46 = v16;
        v47 = 2114;
        v48 = v11;
        v49 = 2114;
        v50 = v21;
        v51 = 2114;
        v52 = v17;
        v53 = 2114;
        v54 = @"<-----<";
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@\n#_%{public}@:(%{public}@) [%{public}@] | %{public}@\n#_%{public}@:%{public}@", buf, 0x84u);

        v10 = v20;
      }
    }

    else if (v19)
    {
      *buf = 138546178;
      v30 = @"PERSISTED";
      v31 = 2114;
      v32 = @"AUTO-STAGER-TARGET-LOOKUP-RESULTS";
      v33 = 2114;
      v34 = @"ENTRY_REMOVE";
      v35 = 2114;
      v36 = v17;
      v37 = 2114;
      v38 = @">----->";
      v39 = 2114;
      v40 = v10;
      v41 = 2114;
      v42 = v13;
      v43 = 2114;
      v44 = v17;
      v45 = 2114;
      v46 = v16;
      v47 = 2114;
      v48 = v11;
      v49 = 2114;
      v50 = v17;
      v51 = 2114;
      v52 = @"<-----<";
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@\n#_%{public}@:(%{public}@) [%{public}@]\n#_%{public}@:%{public}@", buf, 0x7Au);
    }
  }

  else
  {
    v28 = v16;
    v22 = v10;
    v23 = [(MADAutoAssetStager *)self autoStagerFSM];
    v24 = [v23 diag];
    v25 = [NSString alloc];
    if (v12)
    {
      v26 = [v12 summary];
    }

    else
    {
      v26 = @"N";
    }

    v27 = [v25 initWithFormat:@"{%@:_logPersistedTargetLookupResultsRemoved} %@ | no persistedEntryID to remove | %@ | removedTargetLookupResults:%@", v22, @"AUTO-STAGER-TARGET-LOOKUP-RESULTS", v13, v26];
    [v24 trackAnomaly:@"AUTO-STAGER" forReason:v27 withResult:6110 withError:0];

    if (v12)
    {
    }

    v10 = v22;
    v16 = v28;
  }
}

- (void)_logPersistedTargetLookupResultsTableOfContents:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  if (+[MADAutoAssetControlManager preferencePersistedTableLoggingEnabled])
  {
    v7 = [MADAutoAssetPersisted persistedComponentSymbol:@"AUTO-STAGER-TARGET-LOOKUP-RESULTS"];
    v8 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
    v9 = [v8 persistedEntryIDs:v4];

    if ([v9 count])
    {
      v10 = [v9 count];
      v11 = _MADLog(@"AutoStager");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544642;
        v32 = @"PERSISTED";
        v33 = 2114;
        v34 = @"AUTO-STAGER-TARGET-LOOKUP-RESULTS";
        v35 = 2114;
        v36 = @"ENTRY_LOAD";
        v37 = 2114;
        v38 = v7;
        v39 = 2114;
        v40 = @">----->";
        v41 = 2114;
        v42 = v4;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} table-of-contents...", buf, 0x3Eu);
      }

      v29 = v7;

      if (v10 >= 1)
      {
        v12 = 0;
        v27 = v10;
        v28 = self;
        do
        {
          v13 = objc_autoreleasePoolPush();
          v14 = [v9 objectAtIndexedSubscript:v12];
          v15 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
          v16 = [v15 persistedEntry:v14 fromLocation:v4];

          if (v16)
          {
            v30 = v13;
            v17 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
            v18 = [v17 decodeFromLocation:v4 ofEntryName:v14 fromPersistedEntry:v16 decodingObjectForKey:@"targetLookupResults" ofClass:objc_opt_class() allowingNilObject:0];

            v19 = +[MANAutoAssetControlStagerInformation previousOTASituationName:](MANAutoAssetControlStagerInformation, "previousOTASituationName:", [v16 ullForKey:@"targetLookupResultsOTASituation"]);
            if (v18)
            {
              v20 = _MADLog(@"AutoStager");
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                v21 = [v18 newSummaryWithoutEntryID];
                *buf = 138544898;
                v32 = v29;
                v33 = 2114;
                v34 = @"E_LOD";
                v35 = 2048;
                v36 = (v12 + 1);
                v10 = v27;
                v37 = 2048;
                v38 = v27;
                v39 = 2114;
                v40 = v14;
                v41 = 2114;
                v42 = v19;
                v43 = 2114;
                v44 = v21;
                _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "\n#_%{public}@:%{public}@ (%ld of %ld) [%{public}@] | situation:%{public}@ | %{public}@", buf, 0x48u);

                self = v28;
              }
            }

            v13 = v30;
          }

          else
          {
            v18 = _MADLog(@"AutoStager");
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v22 = [(MADAutoAssetStager *)self summary];
              *buf = 138544130;
              v32 = v4;
              v33 = 2114;
              v34 = @"AUTO-STAGER-TARGET-LOOKUP-RESULTS";
              v35 = 2114;
              v36 = v22;
              v37 = 2114;
              v38 = v14;
              _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "{%{public}@:_logPersistedSetLookupResultsTableOfContents} | (%{public}@) %{public}@ | unable to load entry:%{public}@", buf, 0x2Au);
            }
          }

          objc_autoreleasePoolPop(v13);
          ++v12;
        }

        while (v10 != v12);
      }

      v23 = _MADLog(@"AutoStager");
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v29;
        goto LABEL_22;
      }

      *buf = 138544642;
      v32 = @"PERSISTED";
      v33 = 2114;
      v34 = @"AUTO-STAGER-TARGET-LOOKUP-RESULTS";
      v35 = 2114;
      v36 = @"ENTRY_LOAD";
      v37 = 2114;
      v7 = v29;
      v38 = v29;
      v39 = 2114;
      v40 = @"<-----<";
      v41 = 2114;
      v42 = v4;
      v24 = "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} ...table-of-contents";
      v25 = v23;
      v26 = 62;
    }

    else
    {
      v23 = _MADLog(@"AutoStager");
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
LABEL_22:

        goto LABEL_23;
      }

      *buf = 138545410;
      v32 = @"PERSISTED";
      v33 = 2114;
      v34 = @"AUTO-STAGER-TARGET-LOOKUP-RESULTS";
      v35 = 2114;
      v36 = @"ENTRY_LOAD";
      v37 = 2114;
      v38 = v7;
      v39 = 2114;
      v40 = @">----->";
      v41 = 2114;
      v42 = v4;
      v43 = 2114;
      v44 = @"empty table-of-contents";
      v45 = 2114;
      v46 = v7;
      v47 = 2114;
      v48 = @"<-----<";
      v24 = "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@\n#_%{public}@:%{public}@";
      v25 = v23;
      v26 = 92;
    }

    _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
    goto LABEL_22;
  }

LABEL_23:
}

- (void)availableForStagingLoadedFromPersisted:(id)a3 persistedEntryID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MADAutoAssetStager *)self autoStagerFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [v7 targetTrainName];
  v11 = [v7 targetRestoreVersion];
  v12 = [v7 targetBuild];
  v19 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v10 withRestoreVersion:v11 withTargetBuildVersion:v12];

  v13 = [(MADAutoAssetStager *)self _targetNameAvailableForStaging:v7];
  v14 = [(MADAutoAssetStager *)self availableForStagingRequiredByTarget];
  v15 = [v7 descriptorsRequiredForStaging];
  [v14 setSafeObject:v15 forKey:v19];

  v16 = [(MADAutoAssetStager *)self availableForStagingOptionalByTarget];
  v17 = [v7 descriptorsOptionalForStaging];
  [v16 setSafeObject:v17 forKey:v19];

  v18 = [[NSString alloc] initWithFormat:@"[%@] available-for-staging validated", v13];
  [(MADAutoAssetStager *)self _logPersistedAvailableForStagingByTarget:@"availableForStagingLoadedFromPersisted" operation:@"ENTRY_LOAD" forPersistedEntryID:v6 withAvailableForStaging:v7 message:v18];
}

- (void)_logPersistedAvailableForStagingByTarget:(id)a3 operation:(id)a4 forPersistedEntryID:(id)a5 withAvailableForStaging:(id)a6 message:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(MADAutoAssetStager *)self autoStagerFSM];
  v18 = [v17 extendedStateQueue];
  dispatch_assert_queue_V2(v18);

  v19 = [(MADAutoAssetStager *)self _targetNameAvailableForStaging:v15];
  if (v14)
  {
    v20 = [MADAutoAssetPersisted persistedOperationSymbol:v13];
    v21 = [MADAutoAssetPersisted persistedComponentSymbol:@"AUTO-STAGER-TARGET-AVAILABLE"];
    v22 = [[NSString alloc] initWithFormat:@"[%@] %@", v19, v16];

    v23 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v15 newSummaryWithoutEntryID];
      *buf = 138546434;
      v28 = @"PERSISTED";
      v29 = 2114;
      v30 = @"AUTO-STAGER-TARGET-AVAILABLE";
      v31 = 2114;
      v32 = v13;
      v33 = 2114;
      v34 = v21;
      v35 = 2114;
      v36 = @">----->";
      v37 = 2114;
      v38 = v12;
      v39 = 2114;
      v40 = v22;
      v41 = 2114;
      v42 = v21;
      v43 = 2114;
      v44 = v20;
      v45 = 2114;
      v46 = v14;
      v47 = 2114;
      v48 = v24;
      v49 = 2114;
      v50 = v21;
      v51 = 2114;
      v52 = @"<-----<";
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@\n#_%{public}@:(%{public}@) [%{public}@] | %{public}@\n#_%{public}@:%{public}@", buf, 0x84u);
    }
  }

  else
  {
    v20 = [(MADAutoAssetStager *)self autoStagerFSM];
    v21 = [v20 diag];
    v25 = [NSString alloc];
    v22 = [v15 newSummaryWithoutEntryID];
    v26 = [v25 initWithFormat:@"[%@] {%@:_logPersistedAvailableForStagingByTarget} %@:%@ | no persistedEntryID | %@ | availableForStaging:%@", v19, v12, @"AUTO-STAGER-TARGET-AVAILABLE", v13, v16, v22];

    [v21 trackAnomaly:@"AUTO-STAGER" forReason:v26 withResult:6110 withError:0];
  }
}

- (void)_logPersistedAvailableForStagingByTargetRemoved:(id)a3 removedPersistedEntryID:(id)a4 removedAvailableForStaging:(id)a5 message:(id)a6
{
  v31 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(MADAutoAssetStager *)self autoStagerFSM];
  v14 = [v13 extendedStateQueue];
  dispatch_assert_queue_V2(v14);

  v15 = [MADAutoAssetPersisted persistedOperationSymbol:@"ENTRY_REMOVE"];
  v16 = [MADAutoAssetPersisted persistedComponentSymbol:@"AUTO-STAGER-TARGET-AVAILABLE"];
  v17 = [(MADAutoAssetStager *)self _targetNameAvailableForStaging:v11];
  if (v10)
  {
    v18 = [[NSString alloc] initWithFormat:@"[%@] %@", v17, v12];
    v19 = _MADLog(@"AutoStager");
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    v21 = v12;
    if (v11)
    {
      if (v20)
      {
        v22 = [v11 newSummaryWithoutEntryID];
        *buf = 138546434;
        v33 = @"PERSISTED";
        v34 = 2114;
        v35 = @"AUTO-STAGER-TARGET-AVAILABLE";
        v36 = 2114;
        v37 = @"ENTRY_REMOVE";
        v38 = 2114;
        v39 = v16;
        v40 = 2114;
        v41 = @">----->";
        v42 = 2114;
        v43 = v31;
        v44 = 2114;
        v45 = v18;
        v46 = 2114;
        v47 = v16;
        v48 = 2114;
        v49 = v15;
        v50 = 2114;
        v51 = v10;
        v52 = 2114;
        v53 = v22;
        v54 = 2114;
        v55 = v16;
        v56 = 2114;
        v57 = @"<-----<";
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@\n#_%{public}@:(%{public}@) [%{public}@] | %{public}@\n#_%{public}@:%{public}@", buf, 0x84u);
      }
    }

    else if (v20)
    {
      *buf = 138546178;
      v33 = @"PERSISTED";
      v34 = 2114;
      v35 = @"AUTO-STAGER-TARGET-AVAILABLE";
      v36 = 2114;
      v37 = @"ENTRY_REMOVE";
      v38 = 2114;
      v39 = v16;
      v40 = 2114;
      v41 = @">----->";
      v42 = 2114;
      v43 = v31;
      v44 = 2114;
      v45 = v18;
      v46 = 2114;
      v47 = v16;
      v48 = 2114;
      v49 = v15;
      v50 = 2114;
      v51 = v10;
      v52 = 2114;
      v53 = v16;
      v54 = 2114;
      v55 = @"<-----<";
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@\n#_%{public}@:(%{public}@) [%{public}@]\n#_%{public}@:%{public}@", buf, 0x7Au);
    }

    v28 = v31;
  }

  else
  {
    v23 = v12;
    v24 = [(MADAutoAssetStager *)self autoStagerFSM];
    v25 = [v24 diag];
    v26 = [NSString alloc];
    if (v11)
    {
      v27 = [v11 summary];
    }

    else
    {
      v27 = @"N";
    }

    v30 = v12;
    v28 = v31;
    v29 = [v26 initWithFormat:@"[%@] {%@:_logPersistedAvailableForStagingByTargetRemoved} %@ | no persistedEntryID to remove | %@ | removedAvailableForStaging:%@", v17, v31, @"AUTO-STAGER-TARGET-AVAILABLE", v30, v27];
    [v25 trackAnomaly:@"AUTO-STAGER" forReason:v29 withResult:6110 withError:0];

    if (v11)
    {
    }

    v21 = v23;
    v10 = 0;
  }
}

- (void)_logPersistedAvailableForStagingByTargetTableOfContents:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  if (+[MADAutoAssetControlManager preferencePersistedTableLoggingEnabled])
  {
    v7 = [MADAutoAssetPersisted persistedComponentSymbol:@"AUTO-STAGER-TARGET-AVAILABLE"];
    v8 = [(MADAutoAssetStager *)self persistedAvailableForStagingByTarget];
    v9 = [v8 persistedEntryIDs:v4];

    if ([v9 count])
    {
      v10 = [v9 count];
      v11 = _MADLog(@"AutoStager");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544642;
        v34 = @"PERSISTED";
        v35 = 2114;
        v36 = @"AUTO-STAGER-TARGET-AVAILABLE";
        v37 = 2114;
        v38 = @"ENTRY_LOAD";
        v39 = 2114;
        v40 = v7;
        v41 = 2114;
        v42 = @">----->";
        v43 = 2114;
        v44 = v4;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} table-of-contents...", buf, 0x3Eu);
      }

      v29 = v7;

      if (v10 >= 1)
      {
        v12 = 0;
        v31 = v4;
        v32 = v9;
        v30 = self;
        do
        {
          v13 = objc_autoreleasePoolPush();
          v14 = [v9 objectAtIndexedSubscript:v12];
          v15 = [(MADAutoAssetStager *)self persistedAvailableForStagingByTarget];
          v16 = [v15 persistedEntry:v14 fromLocation:v4];

          if (v16)
          {
            v17 = [(MADAutoAssetStager *)self persistedAvailableForStagingByTarget];
            v18 = [v17 decodeFromLocation:v4 ofEntryName:v14 fromPersistedEntry:v16 decodingObjectForKey:@"AvailableForStagingByTarget" ofClass:objc_opt_class() allowingNilObject:0];

            if (v18)
            {
              v19 = [NSString alloc];
              v20 = [(MADAutoAssetStager *)self _targetNameAvailableForStaging:v18];
              v21 = [v18 newSummaryWithoutEntryID];
              v22 = [v19 initWithFormat:@"[%@] %@", v20, v21];

              v23 = _MADLog(@"AutoStager");
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138544642;
                v34 = v29;
                v35 = 2114;
                v36 = @"E_LOD";
                v37 = 2048;
                v38 = (v12 + 1);
                v39 = 2048;
                v40 = v10;
                v41 = 2114;
                v42 = v14;
                v43 = 2114;
                v44 = v22;
                _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "\n#_%{public}@:%{public}@ (%ld of %ld) [%{public}@] | %{public}@", buf, 0x3Eu);
              }

              v4 = v31;
              v9 = v32;
              self = v30;
            }
          }

          else
          {
            v18 = _MADLog(@"AutoStager");
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v24 = [(MADAutoAssetStager *)self summary];
              *buf = 138544130;
              v34 = v4;
              v35 = 2114;
              v36 = @"AUTO-STAGER-TARGET-AVAILABLE";
              v37 = 2114;
              v38 = v24;
              v39 = 2114;
              v40 = v14;
              _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "{%{public}@:_logPersistedSetLookupResultsTableOfContents} | (%{public}@) %{public}@ | unable to load entry:%{public}@", buf, 0x2Au);
            }
          }

          objc_autoreleasePoolPop(v13);
          ++v12;
        }

        while (v10 != v12);
      }

      v25 = _MADLog(@"AutoStager");
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v29;
        goto LABEL_21;
      }

      *buf = 138544642;
      v34 = @"PERSISTED";
      v35 = 2114;
      v36 = @"AUTO-STAGER-TARGET-AVAILABLE";
      v37 = 2114;
      v38 = @"ENTRY_LOAD";
      v39 = 2114;
      v7 = v29;
      v40 = v29;
      v41 = 2114;
      v42 = @"<-----<";
      v43 = 2114;
      v44 = v4;
      v26 = "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} ...table-of-contents";
      v27 = v25;
      v28 = 62;
    }

    else
    {
      v25 = _MADLog(@"AutoStager");
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
LABEL_21:

        goto LABEL_22;
      }

      *buf = 138545410;
      v34 = @"PERSISTED";
      v35 = 2114;
      v36 = @"AUTO-STAGER-TARGET-AVAILABLE";
      v37 = 2114;
      v38 = @"ENTRY_LOAD";
      v39 = 2114;
      v40 = v7;
      v41 = 2114;
      v42 = @">----->";
      v43 = 2114;
      v44 = v4;
      v45 = 2114;
      v46 = @"empty table-of-contents";
      v47 = 2114;
      v48 = v7;
      v49 = 2114;
      v50 = @"<-----<";
      v26 = "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@\n#_%{public}@:%{public}@";
      v27 = v25;
      v28 = 92;
    }

    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
    goto LABEL_21;
  }

LABEL_22:
}

- (id)getTargetLookupResultsForKey:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  if (v4)
  {
    v7 = [(MADAutoAssetStager *)self targetLookupResults];
    v8 = [v7 objectForKey:v4];

    if (v8)
    {
      v9 = v8;
      goto LABEL_58;
    }

    v10 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(MADAutoAssetStager *)self _updateLatestSummary];
      v12 = [(MADAutoAssetStager *)self cachingEnabled];
      v13 = @"N";
      *buf = 138543874;
      v78 = v11;
      if (v12)
      {
        v13 = @"Y";
      }

      v79 = 2114;
      v80 = v4;
      v81 = 2112;
      v82 = v13;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {getTargetLookupResultsForKey} cache miss | lookupResultsKey:%{public}@ cachingEnabled:%@", buf, 0x20u);
    }
  }

  [(MADAutoAssetStager *)self loadPersistedTargetLookupResults:@"getTargetLookupResultsForKey"];
  v14 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
  v15 = [v14 persistedEntryIDs:@"getTargetLookupResultsForKey"];

  if ([v15 count])
  {
    v63 = objc_alloc_init(NSMutableArray);
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v57 = v15;
    obj = v15;
    v59 = v4;
    v66 = [obj countByEnumeratingWithState:&v72 objects:v85 count:16];
    if (!v66)
    {
      v58 = 0;
      goto LABEL_49;
    }

    v58 = 0;
    v65 = *v73;
    while (1)
    {
      v16 = 0;
      do
      {
        if (*v73 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v72 + 1) + 8 * v16);
        v18 = objc_autoreleasePoolPush();
        v19 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
        v20 = [v19 persistedEntry:v17 fromLocation:@"getTargetLookupResultsForKey"];

        if (v20)
        {
          v21 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
          v22 = [v21 decodeFromLocation:@"getTargetLookupResultsForKey" ofEntryName:v17 fromPersistedEntry:v20 decodingObjectForKey:@"targetLookupResults" ofClass:objc_opt_class() allowingNilObject:0];

          v23 = [v20 dateForKey:@"targetLookupResultsByGroupDate"];
          v24 = v23;
          if (v22)
          {
            if (v23)
            {
              [(__CFString *)v23 timeIntervalSinceNow];
              if (v25 <= 604800.0)
              {
                v61 = v18;
                v60 = [v20 ullForKey:@"targetLookupResultsOTASituation"];
                v62 = [MANAutoAssetControlStagerInformation previousOTASituationName:?];
                v31 = _MADLog(@"AutoStager");
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  v32 = [(MADAutoAssetStager *)self _updateLatestSummary];
                  v33 = [v22 summary];
                  *buf = 138544130;
                  v78 = v32;
                  v79 = 2114;
                  v80 = v17;
                  v81 = 2114;
                  v82 = v62;
                  v83 = 2114;
                  v84 = v33;
                  _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {getTargetLookupResultsForKey} content on filesystem validated (adopted) | entryID:%{public}@ | targetOTASituation:%{public}@ | targetLookupResults:%{public}@", buf, 0x2Au);
                }

                v34 = [v22 targetTrainName];
                v35 = [v22 targetRestoreVersion];
                v36 = [v22 targetBuild];
                v37 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v34 withRestoreVersion:v35 withTargetBuildVersion:v36];

                if (v59)
                {
                  v18 = v61;
                  if ([SUCore stringIsEqual:v59 to:v37])
                  {
                    if (v58)
                    {
                      v38 = _MADLog(@"AutoStager");
                      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                      {
                        v39 = [(MADAutoAssetStager *)self _updateLatestSummary];
                        *buf = 138543618;
                        v78 = v39;
                        v79 = 2114;
                        v80 = v37;
                        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {getTargetLookupResultsForKey} multiple entries | lookupResultsKey:%{public}@", buf, 0x16u);
                      }
                    }

                    v40 = v22;

                    v58 = v40;
                    goto LABEL_41;
                  }
                }

                else
                {
LABEL_41:
                  v18 = v61;
                }

                [(MADAutoAssetStager *)self targetLookupResultsLoadedFromPersisted:v22 targetLookupResultsKey:v37 persistedEntryID:v17 withTargetOTASituation:v60];

                goto LABEL_29;
              }

              v26 = _MADLog(@"AutoStager");
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v27 = [(MADAutoAssetStager *)self _updateLatestSummary];
                *buf = 138543618;
                v78 = v27;
                v79 = 2114;
                v80 = v24;
                v28 = v26;
                v29 = OS_LOG_TYPE_DEFAULT;
                v30 = "[%{public}@] {getTargetLookupResultsForKey} entry too old | dateOfEntry:%{public}@";
                goto LABEL_27;
              }

LABEL_28:

              [v63 addObject:v17];
              goto LABEL_29;
            }

            v26 = _MADLog(@"AutoStager");
            if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_28;
            }

            v27 = [(MADAutoAssetStager *)self _updateLatestSummary];
            *buf = 138543618;
            v78 = v27;
            v79 = 2114;
            v80 = @"N";
            v28 = v26;
            v29 = OS_LOG_TYPE_ERROR;
            v30 = "[%{public}@] {getTargetLookupResultsForKey} unable to determine recency | dateOfEntry:%{public}@";
          }

          else
          {
            v26 = _MADLog(@"AutoStager");
            if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_28;
            }

            v27 = [(MADAutoAssetStager *)self _updateLatestSummary];
            *buf = 138543618;
            v78 = v27;
            v79 = 2114;
            v80 = v17;
            v28 = v26;
            v29 = OS_LOG_TYPE_ERROR;
            v30 = "[%{public}@] {getTargetLookupResultsForKey} unable to load set-lookup-result | entryID:%{public}@";
          }

LABEL_27:
          _os_log_impl(&dword_0, v28, v29, v30, buf, 0x16u);

          goto LABEL_28;
        }

        v22 = _MADLog(@"AutoStager");
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        v24 = [(MADAutoAssetStager *)self _updateLatestSummary];
        *buf = 138543618;
        v78 = v24;
        v79 = 2114;
        v80 = v17;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {getTargetLookupResultsForKey} unable to retrieve set-lookup-result | entryID:%{public}@", buf, 0x16u);
LABEL_29:

LABEL_30:
        objc_autoreleasePoolPop(v18);
        v16 = v16 + 1;
      }

      while (v66 != v16);
      v41 = [obj countByEnumeratingWithState:&v72 objects:v85 count:16];
      v66 = v41;
      if (!v41)
      {
LABEL_49:

        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v42 = v63;
        v45 = [v42 countByEnumeratingWithState:&v68 objects:v76 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v69;
          v67 = v42;
          do
          {
            for (i = 0; i != v46; i = i + 1)
            {
              if (*v69 != v47)
              {
                objc_enumerationMutation(v67);
              }

              v49 = *(*(&v68 + 1) + 8 * i);
              v50 = objc_autoreleasePoolPush();
              v51 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
              v52 = [v51 persistedEntry:v49 fromLocation:@"loadPersistedSetLookupResults"];

              v53 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
              v54 = [v53 decodeFromLocation:@"getTargetLookupResultsForKey" ofEntryName:v49 fromPersistedEntry:v52 decodingObjectForKey:@"targetLookupResults" ofClass:objc_opt_class() allowingNilObject:0];

              v55 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
              [v55 removePersistedEntry:v49 fromLocation:@"getTargetLookupResultsForKey"];

              [(MADAutoAssetStager *)self _logPersistedTargetLookupResultsRemoved:@"getTargetLookupResultsForKey" removedPersistedEntryID:v49 removedTargetLookupResults:v54 message:@"dropped while loading persisted-state"];
              objc_autoreleasePoolPop(v50);
            }

            v42 = v67;
            v46 = [v67 countByEnumeratingWithState:&v68 objects:v76 count:16];
          }

          while (v46);
        }

        v44 = v58;
        v4 = v59;
        v15 = v57;
        goto LABEL_57;
      }
    }
  }

  v42 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = [(MADAutoAssetStager *)self _updateLatestSummary];
    *buf = 138543362;
    v78 = v43;
    _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {getTargetLookupResultsForKey} no persisted set-lookup-results to be resumed", buf, 0xCu);
  }

  v44 = 0;
LABEL_57:

  [(MADAutoAssetStager *)self _logPersistedSetLookupResultsTableOfContents:@"getTargetLookupResultsForKey"];
  v9 = v44;

LABEL_58:

  return v9;
}

- (void)loadPersistedTargetLookupResults:(id)a3
{
  v7 = a3;
  v4 = [(MADAutoAssetStager *)self autoStagerFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  if (![(MADAutoAssetStager *)self loadedPersistedTargetLookupResults])
  {
    v6 = [(MADAutoAssetStager *)self persistedTargetLookupResults];
    [v6 loadPersistedState:v7];

    [(MADAutoAssetStager *)self setLoadedPersistedTargetLookupResults:1];
    [(MADAutoAssetStager *)self _limitCachePersistResultByGroupToCount:2 fromLocation:v7];
  }
}

- (void)loadPersistedAvailableForStagingByTarget
{
  v3 = [(MADAutoAssetStager *)self autoStagerFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(MADAutoAssetStager *)self persistedAvailableForStagingByTarget];
  [v5 loadPersistedState:@"loadPersistedAvailableForStagingByTarget"];

  v6 = [(MADAutoAssetStager *)self persistedAvailableForStagingByTarget];
  v7 = [v6 persistedEntryIDs:@"loadPersistedAvailableForStagingByTarget"];

  if ([v7 count])
  {
    v39 = objc_alloc_init(NSMutableArray);
    v40 = [[NSMutableString alloc] initWithString:&stru_4BD3F0];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v38 = v7;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v49;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v49 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v48 + 1) + 8 * i);
          v13 = objc_autoreleasePoolPush();
          v14 = [(MADAutoAssetStager *)self persistedAvailableForStagingByTarget];
          v15 = [v14 persistedEntry:v12 fromLocation:@"loadPersistedAvailableForStagingByTarget"];

          if (v15)
          {
            v16 = [(MADAutoAssetStager *)self persistedAvailableForStagingByTarget];
            v17 = [v16 decodeFromLocation:@"loadPersistedAvailableForStagingByTarget" ofEntryName:v12 fromPersistedEntry:v15 decodingObjectForKey:@"AvailableForStagingByTarget" ofClass:objc_opt_class() allowingNilObject:0];

            if (v17)
            {
              v18 = [v17 summary];
              [v40 appendFormat:@"%@|", v18];

              [(MADAutoAssetStager *)self availableForStagingLoadedFromPersisted:v17 persistedEntryID:v12];
            }

            else
            {
              v20 = _MADLog(@"AutoStager");
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                v21 = [(MADAutoAssetStager *)self _updateLatestSummary];
                *buf = 138543618;
                v54 = v21;
                v55 = 2114;
                v56 = v12;
                _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "[%{public}@] {loadPersistedAvailableForStagingByTarget} unable to load available-for-staging | entryID:%{public}@", buf, 0x16u);
              }

              [v39 addObject:v12];
            }
          }

          else
          {
            v17 = _MADLog(@"AutoStager");
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v19 = [(MADAutoAssetStager *)self _updateLatestSummary];
              *buf = 138543618;
              v54 = v19;
              v55 = 2114;
              v56 = v12;
              _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {loadPersistedAvailableForStagingByTarget} unable to retrieve set-lookup-result | entryID:%{public}@", buf, 0x16u);
            }
          }

          objc_autoreleasePoolPop(v13);
        }

        v9 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v9);
    }

    v22 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(MADAutoAssetStager *)self _updateLatestSummary];
      *buf = 138543618;
      v54 = v23;
      v55 = 2114;
      v56 = v40;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {loadPersistedAvailableForStagingByTarget} validated as available-for-staging\n>>> validatedEntries:%{public}@", buf, 0x16u);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v24 = v39;
    v25 = [v24 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v25)
    {
      v26 = v25;
      obja = *v45;
      v41 = v24;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v45 != obja)
          {
            objc_enumerationMutation(v41);
          }

          v28 = *(*(&v44 + 1) + 8 * j);
          v29 = objc_autoreleasePoolPush();
          v30 = [(MADAutoAssetStager *)self persistedAvailableForStagingByTarget];
          v31 = [v30 persistedEntry:v28 fromLocation:@"loadPersistedAvailableForStagingByTarget"];

          v32 = [(MADAutoAssetStager *)self persistedAvailableForStagingByTarget];
          v33 = [v32 decodeFromLocation:@"loadPersistedAvailableForStagingByTarget" ofEntryName:v28 fromPersistedEntry:v31 decodingObjectForKey:@"AvailableForStagingByTarget" ofClass:objc_opt_class() allowingNilObject:0];

          if (v33)
          {
            v34 = [(MADAutoAssetStager *)self _targetNameAvailableForStaging:v33];
            v35 = [(MADAutoAssetStager *)self persistedAvailableForStagingByTarget];
            [v35 removePersistedEntry:v28 fromLocation:@"loadPersistedAvailableForStagingByTarget"];

            v36 = [[NSString alloc] initWithFormat:@"[%@] dropped while loading persisted-state", v34];
            [(MADAutoAssetStager *)self _logPersistedAvailableForStagingByTargetRemoved:@"loadPersistedAvailableForStagingByTarget" removedPersistedEntryID:v28 removedAvailableForStaging:v33 message:v36];
          }

          objc_autoreleasePoolPop(v29);
        }

        v24 = v41;
        v26 = [v41 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v26);
    }

    v7 = v38;
  }

  else
  {
    v24 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [(MADAutoAssetStager *)self _updateLatestSummary];
      *buf = 138543362;
      v54 = v37;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {loadPersistedAvailableForStagingByTarget} no persisted available-for-staging instances to be resumed", buf, 0xCu);
    }
  }

  [(MADAutoAssetStager *)self _logPersistedSetLookupResultsTableOfContents:@"loadPersistedAvailableForStagingByTarget"];
}

- (id)newAssetMetadataFromAssetCatalog:(id)a3 forAssetype:(id)a4 forAssetSpecifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v70 = self;
  v11 = [(MADAutoAssetStager *)self autoStagerFSM];
  v12 = [v11 extendedStateQueue];
  dispatch_assert_queue_V2(v12);

  v69 = objc_alloc_init(NSMutableDictionary);
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v78 objects:v89 count:16];
  if (!v14)
  {

    goto LABEL_61;
  }

  v15 = v14;
  v73 = 0;
  v61 = 0;
  v16 = *v79;
  v67 = v9;
  if (v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = @"N";
  }

  v65 = v17;
  v66 = *v79;
  v60 = v13;
  do
  {
    v18 = 0;
    v71 = v15;
    do
    {
      if (*v79 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v19 = *(*(&v78 + 1) + 8 * v18);
      v20 = objc_autoreleasePoolPush();
      v21 = [v13 objectForKey:v19];
      v22 = v21;
      if (v19)
      {
        v23 = v21 == 0;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        v24 = v20;
        v25 = v18;
        v26 = _MADLog(@"AutoStager");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = [(MADAutoAssetStager *)v70 _updateLatestSummary];
          v28 = v27;
          v29 = @"N";
          if (v19)
          {
            v30 = v19;
          }

          else
          {
            v30 = @"N";
          }

          *buf = 138543874;
          v84 = v27;
          if (v22)
          {
            v29 = @"Y";
          }

          v85 = 2114;
          v86 = v30;
          v87 = 2114;
          v88 = v29;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {newAssetMetadataFromAssetCatalog} unable to determine key/value from set-catalog | setCatalogKey:%{public}@ | setCatalogValue:%{public}@", buf, 0x20u);

          v15 = v71;
        }

        v18 = v25;
        v20 = v24;
      }

      else
      {
        if (![SUCore stringIsEqual:v19 to:@"Assets"])
        {
          [v69 setObject:v22 forKey:v19];
          goto LABEL_54;
        }

        v72 = v18;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = objc_alloc_init(NSMutableArray);
          v33 = [v13 safeStringForKey:@"AssetType"];
          v34 = [v13 safeObjectForKey:@"Assets" ofClass:objc_opt_class()];
          v68 = v34;
          if (([SUCore stringIsEqual:v33 to:v67]& 1) != 0)
          {
            if ([v34 count])
            {
              v76 = 0u;
              v77 = 0u;
              v74 = 0u;
              v75 = 0u;
              v35 = v34;
              v36 = [v35 countByEnumeratingWithState:&v74 objects:v82 count:16];
              if (v36)
              {
                v37 = v36;
                v62 = v33;
                v63 = v22;
                v64 = v20;
                v38 = *v75;
                do
                {
                  for (i = 0; i != v37; i = i + 1)
                  {
                    if (*v75 != v38)
                    {
                      objc_enumerationMutation(v35);
                    }

                    v40 = *(*(&v74 + 1) + 8 * i);
                    v41 = objc_autoreleasePoolPush();
                    v42 = [v40 safeStringForKey:@"AssetSpecifier"];
                    if ([SUCore stringIsEqual:v42 to:v10])
                    {
                      [v32 addObject:v40];
                      v73 = 1;
                    }

                    objc_autoreleasePoolPop(v41);
                  }

                  v37 = [v35 countByEnumeratingWithState:&v74 objects:v82 count:16];
                }

                while (v37);
                v61 = 1;
                v13 = v60;
                v15 = v71;
                v18 = v72;
                v22 = v63;
                v20 = v64;
                v33 = v62;
              }

              else
              {
                v61 = 1;
                v13 = v60;
              }

              goto LABEL_48;
            }

            v35 = _MADLog(@"AutoStager");
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v46 = [(MADAutoAssetStager *)v70 _updateLatestSummary];
              *buf = 138543618;
              v84 = v46;
              v85 = 2114;
              v86 = v65;
              v48 = v35;
              v49 = "%{public}@\n[AUTO-STAGER] {newAssetMetadataFromAssetCatalog} set-catalog lookup response has no auto-assets for asset-type | assetType:%{public}@";
              v50 = 22;
              goto LABEL_46;
            }
          }

          else
          {
            v35 = _MADLog(@"AutoStager");
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v45 = [(MADAutoAssetStager *)v70 _updateLatestSummary];
              v46 = v45;
              *buf = 138543874;
              v47 = @"N";
              if (v33)
              {
                v47 = v33;
              }

              v84 = v45;
              v85 = 2114;
              v86 = v65;
              v87 = 2114;
              v88 = v47;
              v48 = v35;
              v49 = "%{public}@\n[AUTO-STAGER] {newAssetMetadataFromAssetCatalog} set-catalog lookup response for different asset-type | assetType:%{public}@ | catalogAssetType:%{public}@";
              v50 = 32;
LABEL_46:
              _os_log_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, v49, buf, v50);

              v15 = v71;
            }
          }

LABEL_48:

          if ([v32 count])
          {
            [v69 setObject:v32 forKey:@"Assets"];
          }

          else
          {
            v51 = _MADLog(@"AutoStager");
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              v52 = [(MADAutoAssetStager *)v70 _updateLatestSummary];
              *buf = 138543618;
              v84 = v52;
              v85 = 2114;
              v86 = v65;
              _os_log_impl(&dword_0, v51, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {newAssetMetadataFromAssetCatalog} found no matching asset-specifier in set-catalog lookup response | assetType:%{public}@", buf, 0x16u);

              v15 = v71;
            }
          }

          v16 = v66;
          goto LABEL_54;
        }

        v43 = _MADLog(@"AutoStager");
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = [(MADAutoAssetStager *)v70 _updateLatestSummary];
          *buf = 138543618;
          v84 = v44;
          v85 = 2114;
          v86 = v19;
          _os_log_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {newAssetMetadataFromAssetCatalog} key value is not an array | setCatalogKey:%{public}@", buf, 0x16u);

          v15 = v71;
        }

        v18 = v72;
      }

LABEL_54:

      objc_autoreleasePoolPop(v20);
      v18 = v18 + 1;
    }

    while (v18 != v15);
    v15 = [v13 countByEnumeratingWithState:&v78 objects:v89 count:16];
  }

  while (v15);

  v9 = v67;
  if (v61)
  {
    if ((v73 & 1) == 0)
    {
      v53 = _MADLog(@"AutoStager");
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v54 = [(MADAutoAssetStager *)v70 _updateLatestSummary];
        v55 = [v13 safeSummary];
        *buf = 138543874;
        v84 = v54;
        v85 = 2114;
        v86 = v10;
        v87 = 2114;
        v88 = v55;
        v56 = "%{public}@\n[AUTO-STAGER] {newAssetMetadataFromAssetCatalog} Assets array in set-catalog lookup response missing asset-specifier | assetSpecifier:%{public}@ | autoAssetSetCatalog:%{public}@";
        v57 = v53;
        v58 = 32;
        goto LABEL_63;
      }

      goto LABEL_64;
    }

    goto LABEL_65;
  }

LABEL_61:
  v53 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
  {
    v54 = [(MADAutoAssetStager *)v70 _updateLatestSummary];
    v55 = [v13 safeSummary];
    *buf = 138543618;
    v84 = v54;
    v85 = 2114;
    v86 = v55;
    v56 = "%{public}@\n[AUTO-STAGER] {newAssetMetadataFromAssetCatalog} no Assets array in set-catalog lookup response | autoAssetSetCatalog:%{public}@";
    v57 = v53;
    v58 = 22;
LABEL_63:
    _os_log_impl(&dword_0, v57, OS_LOG_TYPE_ERROR, v56, buf, v58);
  }

LABEL_64:

  v69 = 0;
LABEL_65:

  return v69;
}

- (id)baseForPatchingToSelector:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(MADAutoAssetStager *)self baseForStagingDescriptors];
  v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = *v24;
    p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
    do
    {
      v10 = 0;
      v21 = v7;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        v12 = p_weak_ivar_lyt[223];
        v13 = [v11 assetType];
        v14 = [v4 assetType];
        if ([v12 stringIsEqual:v13 to:v14])
        {
          v15 = p_weak_ivar_lyt[223];
          [v11 assetSpecifier];
          v16 = v8;
          v18 = v17 = p_weak_ivar_lyt;
          v19 = [v4 assetSpecifier];
          LODWORD(v15) = [v15 stringIsEqual:v18 to:v19];

          p_weak_ivar_lyt = v17;
          v8 = v16;
          v7 = v21;

          if (v15)
          {
            v7 = v11;
            goto LABEL_12;
          }
        }

        else
        {
        }

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

LABEL_12:

  return v7;
}

- (id)assetMetadataFromAssetCatalog:(id)a3 forAssetype:(id)a4 forAssetSpecifier:(id)a5 preferringBestFormat:(BOOL)a6
{
  v60 = a6;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(MADAutoAssetStager *)self autoStagerFSM];
  v13 = [v12 extendedStateQueue];
  dispatch_assert_queue_V2(v13);

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v14 = v9;
  v15 = [v14 countByEnumeratingWithState:&v67 objects:v78 count:16];
  v56 = v11;
  if (!v15)
  {

    v47 = 0;
    goto LABEL_53;
  }

  v16 = v15;
  v52 = v10;
  v62 = 0;
  v57 = 0;
  v58 = *v68;
  v53 = self;
  v54 = v14;
  do
  {
    v17 = 0;
    v55 = v16;
    do
    {
      if (*v68 != v58)
      {
        objc_enumerationMutation(v14);
      }

      v18 = *(*(&v67 + 1) + 8 * v17);
      context = objc_autoreleasePoolPush();
      v19 = [v14 objectForKey:v18];
      v61 = v19;
      if (v18)
      {
        v20 = v19 == 0;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
        v21 = _MADLog(@"AutoStager");
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }

        v22 = [(MADAutoAssetStager *)self _updateLatestSummary];
        v23 = v22;
        v24 = @"N";
        if (v18)
        {
          v25 = v18;
        }

        else
        {
          v25 = @"N";
        }

        *buf = 138543874;
        v73 = v22;
        if (v61)
        {
          v24 = @"Y";
        }

        v74 = 2114;
        v75 = v25;
        v76 = 2114;
        v77 = v24;
        v26 = v21;
        v27 = "%{public}@\n[AUTO-STAGER] {assetMetadataFromAssetCatalog} unable to determine key/value from set-catalog | setCatalogKey:%{public}@ | setCatalogValue:%{public}@";
        v28 = 32;
        goto LABEL_18;
      }

      if (![SUCore stringIsEqual:v18 to:@"Assets"])
      {
        goto LABEL_47;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = _MADLog(@"AutoStager");
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }

        v23 = [(MADAutoAssetStager *)self _updateLatestSummary];
        *buf = 138543618;
        v73 = v23;
        v74 = 2114;
        v75 = v18;
        v26 = v21;
        v27 = "%{public}@\n[AUTO-STAGER] {assetMetadataFromAssetCatalog} key value is not an array | setCatalogKey:%{public}@";
        v28 = 22;
LABEL_18:
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, v27, buf, v28);

        goto LABEL_46;
      }

      v30 = [v14 safeObjectForKey:@"Assets" ofClass:objc_opt_class()];
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v21 = v30;
      v31 = [v21 countByEnumeratingWithState:&v63 objects:v71 count:16];
      if (!v31)
      {
        goto LABEL_45;
      }

      v32 = v31;
      v33 = *v64;
      while (2)
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v64 != v33)
          {
            objc_enumerationMutation(v21);
          }

          v35 = *(*(&v63 + 1) + 8 * i);
          v36 = objc_autoreleasePoolPush();
          v37 = [v35 safeStringForKey:@"AssetFormat"];
          v38 = [v35 safeStringForKey:@"AssetSpecifier"];
          if ([SUCore stringIsEqual:v38 to:v11])
          {
            if (!v60)
            {
              v45 = v35;

              objc_autoreleasePoolPop(v36);
              v62 = v45;
              goto LABEL_45;
            }

            if ([SUCore stringIsEqual:v38 to:v11])
            {
              if (v37)
              {
                v39 = v62 == 0;
              }

              else
              {
                v39 = 1;
              }

              if (v39)
              {
                v40 = v35;
                v41 = v62;
LABEL_37:

                v62 = v35;
                goto LABEL_39;
              }

              if ([MADAutoAssetDescriptor isMorePreferredAssetFormat:v37 comparedTo:v57])
              {
                v43 = v35;

                v44 = v37;
                v41 = v57;
                v57 = v44;
                v11 = v56;
                goto LABEL_37;
              }

              v11 = v56;
            }
          }

LABEL_39:

          objc_autoreleasePoolPop(v36);
        }

        v32 = [v21 countByEnumeratingWithState:&v63 objects:v71 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }

LABEL_45:

      self = v53;
      v14 = v54;
      v16 = v55;
LABEL_46:

LABEL_47:
      objc_autoreleasePoolPop(context);
      v17 = v17 + 1;
    }

    while (v17 != v16);
    v16 = [v14 countByEnumeratingWithState:&v67 objects:v78 count:16];
  }

  while (v16);

  if (v62)
  {
    v46 = v62;
    v10 = v52;
    v47 = v57;
    goto LABEL_56;
  }

  v10 = v52;
  v47 = v57;
LABEL_53:
  v48 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    v49 = [(MADAutoAssetStager *)self _updateLatestSummary];
    v50 = [v14 safeSummary];
    *buf = 138543874;
    v73 = v49;
    v74 = 2114;
    v75 = v56;
    v76 = 2114;
    v77 = v50;
    _os_log_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {assetMetadataFromAssetCatalog} Assets array in set-catalog lookup response missing asset-specifier | assetSpecifier:%{public}@ | autoAssetSetCatalog:%{public}@", buf, 0x20u);
  }

  v46 = 0;
LABEL_56:

  return v46;
}

- (id)newSetLookupResult:(id)a3 forAssetType:(id)a4 forSetCatalog:(id)a5
{
  v8 = a3;
  v75 = a4;
  v9 = a5;
  v10 = [(MADAutoAssetStager *)self autoStagerFSM];
  v11 = [v10 extendedStateQueue];
  dispatch_assert_queue_V2(v11);

  v68 = v8;
  v71 = [[NSString alloc] initWithFormat:@"%@:newSetLookupResult", v8];
  v70 = v9;
  v12 = [v9 safeObjectForKey:@"Assets" ofClass:objc_opt_class()];
  v74 = objc_alloc_init(NSMutableDictionary);
  v69 = objc_alloc_init(NSMutableArray);
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v94 objects:v106 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v95;
    p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
    v72 = self;
    v73 = *v95;
    do
    {
      v17 = 0;
      v76 = v14;
      do
      {
        if (*v95 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v94 + 1) + 8 * v17);
        v19 = objc_autoreleasePoolPush();
        if ([p_weak_ivar_lyt[316] doesMetatadaIndicateEmptyEntry:v18])
        {
          v20 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            [(MADAutoAssetStager *)self summary];
            v22 = v21 = v19;
            v23 = [v18 safeSummary];
            *buf = 138543874;
            v101 = v22;
            v102 = 2114;
            v103 = v71;
            v104 = 2114;
            v105 = v23;
            _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] {%{public}@} ignoring empty entry | assetMetadata:%{public}@", buf, 0x20u);

            v19 = v21;
          }

          goto LABEL_29;
        }

        v79 = v19;
        v80 = v17;
        v24 = [MAAutoAssetSelector alloc];
        v25 = [v18 safeStringForKey:@"AssetSpecifier"];
        v26 = [v18 safeStringForKey:@"AssetVersion"];
        v81 = [v24 initForAssetType:v75 withAssetSpecifier:v25 matchingAssetVersion:v26];

        v27 = v18;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v28 = [(MADAutoAssetStager *)self alreadyDownloadedDescriptors];
        v84 = [v28 countByEnumeratingWithState:&v90 objects:v99 count:16];
        if (v84)
        {
          v78 = v27;
          v29 = *v91;
          v30 = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
          v31 = v81;
          v82 = *v91;
LABEL_11:
          v32 = 0;
          while (1)
          {
            if (*v91 != v29)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v90 + 1) + 8 * v32);
            v34 = v30[223];
            v35 = [v31 assetType];
            v36 = [v33 assetType];
            if (![v34 stringIsEqual:v35 to:v36])
            {
              goto LABEL_19;
            }

            v37 = v28;
            v38 = v30[223];
            v39 = [v31 assetSpecifier];
            v40 = [v33 assetSpecifier];
            if (![v38 stringIsEqual:v39 to:v40])
            {
              break;
            }

            v41 = v30[223];
            v42 = [v31 assetVersion];
            v43 = [v33 assetVersion];
            LOBYTE(v41) = [v41 stringIsEqual:v42 to:v43];

            v30 = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
            v31 = v81;

            v28 = v37;
            v29 = v82;
            if (v41)
            {
              v46 = v33;

              if (v46)
              {
                v47 = [v46 metadata];

                v45 = [v46 assetId];
                v28 = [v46 assetType];
                v48 = [v46 assetId];
                v44 = getAutoLocalUrlFromTypeAndIdWithPurpose(v28, v48, 2, @"auto");

                v27 = v47;
                v31 = v81;
                self = v72;
                v14 = v76;
                goto LABEL_26;
              }

              v44 = 0;
              v45 = 0;
              self = v72;
              v14 = v76;
              v27 = v78;
              goto LABEL_28;
            }

LABEL_20:
            if (v84 == ++v32)
            {
              v84 = [v28 countByEnumeratingWithState:&v90 objects:v99 count:16];
              if (v84)
              {
                goto LABEL_11;
              }

              v46 = 0;
              v44 = 0;
              v45 = 0;
              self = v72;
              v14 = v76;
              v27 = v78;
              goto LABEL_26;
            }
          }

          v28 = v37;
          v29 = v82;
LABEL_19:

          goto LABEL_20;
        }

        v46 = 0;
        v44 = 0;
        v45 = 0;
        v14 = v76;
        v31 = v81;
LABEL_26:

LABEL_28:
        v20 = v31;
        v49 = [[MANAutoAssetSetAtomicEntry alloc] initWithFullAssetSelector:v31 withAssetID:v45 withLocalContentURL:v44 withAssetAttributes:v27 inhibitedFromEmergencyRemoval:0];
        [(MANAutoAssetSetAtomicEntry *)v49 fullAssetSelector];
        v51 = v50 = v27;
        v52 = [v51 assetSpecifier];
        [v74 setSafeObject:v49 forKey:v52];

        v15 = v73;
        p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
        v19 = v79;
        v17 = v80;
LABEL_29:

        objc_autoreleasePoolPop(v19);
        v17 = v17 + 1;
      }

      while (v17 != v14);
      v14 = [obj countByEnumeratingWithState:&v94 objects:v106 count:16];
    }

    while (v14);
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v53 = v74;
  v54 = [v53 countByEnumeratingWithState:&v86 objects:v98 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v87;
    do
    {
      for (i = 0; i != v55; i = i + 1)
      {
        if (*v87 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = [v53 safeObjectForKey:*(*(&v86 + 1) + 8 * i) ofClass:objc_opt_class()];
        if (v58)
        {
          [v69 addObject:v58];
        }
      }

      v55 = [v53 countByEnumeratingWithState:&v86 objects:v98 count:16];
    }

    while (v55);
  }

  v59 = [v70 safeStringForKey:@"DownloadedFromLive"];
  v85 = v59;
  if (v59)
  {
    v60 = [[NSURL alloc] initWithString:v59];
  }

  else
  {
    v60 = 0;
  }

  v61 = [MADAutoSetLookupResult alloc];
  v62 = [v70 safeStringForKey:@"CachedAssetSetId"];
  v63 = [v70 safeDateForKey:@"lastTimeChecked"];
  v64 = [v70 safeDateForKey:@"postedDate"];
  v65 = [(MADAutoAssetStager *)self activeSetJobConfiguration];
  v66 = [v65 autoAssetEntries];
  v83 = [(MADAutoSetLookupResult *)v61 initForAssetType:v75 withCatalogCachedAssetSetID:v62 withCatalogDownloadedFromLive:v60 withCatalogLastTimeChecked:v63 withCatalogPostedDate:v64 withRequestedAutoAssetEntries:v66 withDiscoveredAtomicEntries:v69 withCatalogFromPallasResponse:v70];

  return v83;
}

- (id)newSetLookupResultsForTargetOS
{
  v3 = [(MADAutoAssetStager *)self autoStagerFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(NSArray);
  v7 = [(MADAutoAssetStager *)self persistedSetLookupResults];
  v8 = [v7 persistedEntryIDs:@"newSetLookupResultsForTargetOS"];

  if ([v8 count])
  {
    v24 = v8;
    v25 = v6;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = v8;
    v27 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (!v27)
    {
      goto LABEL_17;
    }

    v10 = *v29;
    v26 = *v29;
    while (1)
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v9);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [(MADAutoAssetStager *)self persistedSetLookupResults];
        v15 = [v14 persistedEntry:v12 fromLocation:@"newSetLookupResultsForTargetOS"];

        if (v15)
        {
          v16 = [(MADAutoAssetStager *)self persistedSetLookupResults];
          v17 = [v16 decodeFromLocation:@"newSetLookupResultsForTargetOS" ofEntryName:v12 fromPersistedEntry:v15 decodingObjectForKey:@"setLookupResult" ofClass:objc_opt_class() allowingNilObject:0];

          if (v17)
          {
            [v5 addObject:v17];
            goto LABEL_15;
          }

          v18 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [(MADAutoAssetStager *)self _updateLatestSummary];
            v19 = v9;
            v21 = v20 = v5;
            *buf = 138543618;
            v33 = v21;
            v34 = 2114;
            v35 = v12;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "[%{public}@] {newSetLookupResultsForTargetOS} unable to load set-lookup-result | entryID:%{public}@", buf, 0x16u);

            v5 = v20;
            v9 = v19;
            v10 = v26;
          }
        }

        else
        {
          v17 = _MADLog(@"AutoStager");
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_15;
          }

          v18 = [(MADAutoAssetStager *)self _updateLatestSummary];
          *buf = 138543618;
          v33 = v18;
          v34 = 2114;
          v35 = v12;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {newSetLookupResultsForTargetOS} unable to retrieve set-lookup-result | entryID:%{public}@", buf, 0x16u);
        }

LABEL_15:
        objc_autoreleasePoolPop(v13);
      }

      v27 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (!v27)
      {
LABEL_17:

        v8 = v24;
        v6 = v25;
        break;
      }
    }
  }

  if ([v5 count])
  {
    v22 = v5;

    v6 = v22;
  }

  return v6;
}

- (void)updateLookupResultsJustStaged:(id)a3
{
  v6 = a3;
  v4 = [(MADAutoAssetStager *)self autoStagerFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  if ([(MADAutoAssetStager *)self stagingClientUsingGroups])
  {
    [(MADAutoAssetStager *)self _updateLookupResultsJustStagedByGroupMode:v6];
  }

  else
  {
    [(MADAutoAssetStager *)self _updateLookupResultsJustStagedAllMode:v6];
  }
}

- (void)_updateLookupResultsJustStagedByGroupMode:(id)a3
{
  v75 = a3;
  v4 = [(MADAutoAssetStager *)self autoStagerFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MADAutoAssetStager *)self assetTargetTrainName];
  v7 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  v8 = [(MADAutoAssetStager *)self targetLookupResultsKeyForTrainName:v6 withRestoreVersion:v7];

  v65 = self;
  v9 = [(MADAutoAssetStager *)self getTargetLookupResultsForKey:v8];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v10 = [v9 setLookupResults];
  v11 = [v10 allKeys];
  v12 = [v11 copy];

  obj = v12;
  v13 = [v12 countByEnumeratingWithState:&v87 objects:v96 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v88;
    v67 = v9;
    v68 = v8;
    v66 = *v88;
    do
    {
      v16 = 0;
      v69 = v14;
      do
      {
        if (*v88 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v87 + 1) + 8 * v16);
        v18 = objc_autoreleasePoolPush();
        v19 = [v9 setLookupResults];
        v20 = [v19 safeObjectForKey:v17 ofClass:objc_opt_class()];

        if (v20)
        {
          [v20 assetType];
          v21 = v72 = v20;
          [v75 assetType];
          v22 = v73 = v18;
          v23 = [SUCore stringIsEqual:v21 to:v22];

          v18 = v73;
          if (v23)
          {
            v71 = v16;
            v81 = objc_alloc_init(NSMutableArray);
            v83 = 0u;
            v84 = 0u;
            v85 = 0u;
            v86 = 0u;
            v79 = [v20 discoveredAtomicEntries];
            v24 = v75;
            v82 = [v79 countByEnumeratingWithState:&v83 objects:v95 count:16];
            if (!v82)
            {
              goto LABEL_28;
            }

            v80 = *v84;
            while (1)
            {
              v25 = 0;
              do
              {
                if (*v84 != v80)
                {
                  objc_enumerationMutation(v79);
                }

                v26 = *(*(&v83 + 1) + 8 * v25);
                v27 = [v24 assetType];
                v28 = [(MANAutoAssetSetAtomicEntry *)v26 fullAssetSelector];
                v29 = [v28 assetType];
                if (![SUCore stringIsEqual:v27 to:v29])
                {
                  goto LABEL_21;
                }

                v30 = [v24 assetSpecifier];
                v31 = [(MANAutoAssetSetAtomicEntry *)v26 fullAssetSelector];
                v32 = [v31 assetSpecifier];
                if (![SUCore stringIsEqual:v30 to:v32])
                {
                  goto LABEL_20;
                }

                v78 = v30;
                v33 = [v24 assetVersion];
                v76 = [(MANAutoAssetSetAtomicEntry *)v26 fullAssetSelector];
                v34 = [v76 assetVersion];
                v77 = v33;
                if (![SUCore stringIsEqual:v33 to:v34])
                {

                  v24 = v75;
                  v30 = v78;
LABEL_20:

LABEL_21:
LABEL_22:
                  [v81 addObject:v26];
                  goto LABEL_23;
                }

                v35 = [v75 assetId];
                v36 = [(MANAutoAssetSetAtomicEntry *)v26 assetID];
                v74 = [SUCore stringIsEqual:v35 to:v36];

                v24 = v75;
                if (v74)
                {
                  goto LABEL_22;
                }

                v37 = [v75 assetType];
                v38 = [v75 assetId];
                v39 = getAutoLocalUrlFromTypeAndIdWithPurpose(v37, v38, 2, @"auto");

                v40 = [MANAutoAssetSetAtomicEntry alloc];
                v41 = [(MANAutoAssetSetAtomicEntry *)v26 fullAssetSelector];
                v42 = [v75 assetId];
                v43 = [v75 metadata];
                v44 = [(MANAutoAssetSetAtomicEntry *)v40 initWithFullAssetSelector:v41 withAssetID:v42 withLocalContentURL:v39 withAssetAttributes:v43 inhibitedFromEmergencyRemoval:0];

                if (v44)
                {
                  v45 = v44;
                }

                else
                {
                  v45 = v26;
                }

                [v81 addObject:v45];

                v24 = v75;
LABEL_23:
                v25 = v25 + 1;
              }

              while (v82 != v25);
              v46 = [v79 countByEnumeratingWithState:&v83 objects:v95 count:16];
              v82 = v46;
              if (!v46)
              {
LABEL_28:

                v47 = [MADAutoSetLookupResult alloc];
                v20 = v72;
                v48 = [v72 assetType];
                v49 = [v72 catalogCachedAssetSetID];
                v50 = [v72 catalogDownloadedFromLive];
                v51 = [v72 catalogLastTimeChecked];
                v52 = [v72 catalogPostedDate];
                v53 = [v72 requestedAutoAssetEntries];
                v54 = [v72 autoAssetSetCatalog];
                v55 = [(MADAutoSetLookupResult *)v47 initForAssetType:v48 withCatalogCachedAssetSetID:v49 withCatalogDownloadedFromLive:v50 withCatalogLastTimeChecked:v51 withCatalogPostedDate:v52 withRequestedAutoAssetEntries:v53 withDiscoveredAtomicEntries:v81 withCatalogFromPallasResponse:v54];

                v9 = v67;
                v56 = [v67 setLookupResults];
                v57 = [v72 assetType];
                [v56 setSafeObject:v55 forKey:v57];

                v8 = v68;
                v14 = v69;
                v15 = v66;
                v16 = v71;
                v18 = v73;
                break;
              }
            }
          }
        }

        objc_autoreleasePoolPop(v18);
        v16 = v16 + 1;
      }

      while (v16 != v14);
      v14 = [obj countByEnumeratingWithState:&v87 objects:v96 count:16];
    }

    while (v14);
  }

  v58 = v65;
  v59 = [(MADAutoAssetStager *)v65 persistedTargetLookupResults];
  v60 = [v59 persistedEntry:v8 fromLocation:@"_updateLookupResultsJustStagedByGroupMode"];

  if (v60)
  {
    [(MADAutoAssetStager *)v65 _persistTargetOTASituation:500 fromLocation:@"_updateLookupResultsJustStagedByGroupMode"];
    [v60 persistSecureCodedObject:v9 forKey:@"targetLookupResults"];
    v61 = [(MADAutoAssetStager *)v65 persistedTargetLookupResults];
    v62 = [v9 summary];
    [v61 storePersistedEntry:v8 withEntrySummary:v62 fromLocation:@"_updateLookupResultsJustStagedByGroupMode"];
  }

  else
  {
    v61 = _MADLog(@"AutoStager");
    v58 = v65;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v63 = [(MADAutoAssetStager *)v65 summary];
      *buf = 138543618;
      v92 = v63;
      v93 = 2114;
      v94 = v8;
      _os_log_impl(&dword_0, v61, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {_updateLookupResultsJustStagedByGroupMode} unable to load persisted set-lookup-result file | targetLookupResultsKey:%{public}@", buf, 0x16u);
    }
  }

  v64 = [(MADAutoAssetStager *)v58 targetLookupResults];
  [v64 removeAllObjects];
}

- (void)_updateLookupResultsJustStagedAllMode:(id)a3
{
  v77 = a3;
  v4 = [(MADAutoAssetStager *)self autoStagerFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MADAutoAssetStager *)self persistedSetLookupResults];
  v7 = [v6 persistedEntryIDs:@"_updateLookupResultsJustStagedAllMode"];

  if ([v7 count])
  {
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v73 = v7;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v92 objects:v101 count:16];
    if (!v8)
    {
      goto LABEL_41;
    }

    v9 = v8;
    v10 = *v93;
    v74 = self;
    while (1)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v93 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v92 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v13 = [(MADAutoAssetStager *)self persistedSetLookupResults];
        v14 = [v13 persistedEntry:v12 fromLocation:@"_updateLookupResultsJustStagedAllMode"];

        if (v14)
        {
          v15 = [(MADAutoAssetStager *)self persistedSetLookupResults];
          v76 = v14;
          v16 = [v15 decodeFromLocation:@"_updateLookupResultsJustStagedAllMode" ofEntryName:v12 fromPersistedEntry:v14 decodingObjectForKey:@"setLookupResult" ofClass:objc_opt_class() allowingNilObject:0];

          if (v16)
          {
            v17 = [v16 assetType];
            v18 = [v77 assetType];
            v19 = [SUCore stringIsEqual:v17 to:v18];

            if (!v19)
            {
              self = v74;
              goto LABEL_17;
            }

            v86 = objc_alloc_init(NSMutableArray);
            v88 = 0u;
            v89 = 0u;
            v90 = 0u;
            v91 = 0u;
            v72 = v16;
            v85 = [v16 discoveredAtomicEntries];
            v24 = v77;
            p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
            v87 = [v85 countByEnumeratingWithState:&v88 objects:v96 count:16];
            if (!v87)
            {
              goto LABEL_40;
            }

            v26 = *v89;
            v84 = *v89;
            while (2)
            {
              v27 = 0;
LABEL_23:
              if (*v89 != v26)
              {
                objc_enumerationMutation(v85);
              }

              v28 = *(*(&v88 + 1) + 8 * v27);
              v29 = p_weak_ivar_lyt[223];
              v30 = [v24 assetType];
              v31 = [(MANAutoAssetSetAtomicEntry *)v28 fullAssetSelector];
              v32 = [v31 assetType];
              if ([v29 stringIsEqual:v30 to:v32])
              {
                v33 = p_weak_ivar_lyt[223];
                v34 = [v24 assetSpecifier];
                [(MANAutoAssetSetAtomicEntry *)v28 fullAssetSelector];
                v36 = v35 = v24;
                v37 = [v36 assetSpecifier];
                v38 = v33;
                v39 = v37;
                if ([v38 stringIsEqual:v34 to:v37])
                {
                  v81 = v39;
                  v82 = v36;
                  v83 = v34;
                  v40 = p_weak_ivar_lyt[223];
                  v41 = [v35 assetVersion];
                  v42 = [(MANAutoAssetSetAtomicEntry *)v28 fullAssetSelector];
                  v43 = [v42 assetVersion];
                  v80 = v41;
                  if ([v40 stringIsEqual:v41 to:v43])
                  {
                    v44 = [v35 assetId];
                    v45 = [(MANAutoAssetSetAtomicEntry *)v28 assetID];
                    v78 = [SUCore stringIsEqual:v44 to:v45];

                    v24 = v77;
                    p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
                    v26 = v84;
                    if ((v78 & 1) == 0)
                    {
                      v46 = [v77 assetType];
                      v47 = [v77 assetId];
                      v48 = getAutoLocalUrlFromTypeAndIdWithPurpose(v46, v47, 2, @"auto");

                      v49 = [MANAutoAssetSetAtomicEntry alloc];
                      v50 = [(MANAutoAssetSetAtomicEntry *)v28 fullAssetSelector];
                      v51 = [v77 assetId];
                      v52 = [(MANAutoAssetSetAtomicEntry *)v28 assetAttributes];
                      v53 = [(MANAutoAssetSetAtomicEntry *)v49 initWithFullAssetSelector:v50 withAssetID:v51 withLocalContentURL:v48 withAssetAttributes:v52 inhibitedFromEmergencyRemoval:0];

                      if (v53)
                      {
                        v54 = v53;
                      }

                      else
                      {
                        v54 = v28;
                      }

                      [v86 addObject:v54];

                      v24 = v77;
LABEL_35:
                      if (v87 == ++v27)
                      {
                        v55 = [v85 countByEnumeratingWithState:&v88 objects:v96 count:16];
                        v87 = v55;
                        if (!v55)
                        {
LABEL_40:

                          v56 = [MADAutoSetLookupResult alloc];
                          v57 = [v72 assetType];
                          v58 = [v72 catalogCachedAssetSetID];
                          v59 = [v72 catalogDownloadedFromLive];
                          v60 = [v72 catalogLastTimeChecked];
                          v61 = [v72 catalogPostedDate];
                          v62 = [v72 requestedAutoAssetEntries];
                          v63 = [v72 autoAssetSetCatalog];
                          v64 = [(MADAutoSetLookupResult *)v56 initForAssetType:v57 withCatalogCachedAssetSetID:v58 withCatalogDownloadedFromLive:v59 withCatalogLastTimeChecked:v60 withCatalogPostedDate:v61 withRequestedAutoAssetEntries:v62 withDiscoveredAtomicEntries:v86 withCatalogFromPallasResponse:v63];

                          [v76 persistSecureCodedObject:v64 forKey:@"setLookupResult"];
                          v65 = [(MADAutoAssetStager *)v74 persistedSetLookupResults];
                          v66 = [v72 assetType];
                          v67 = [v64 summary];
                          [v65 storePersistedEntry:v66 withEntrySummary:v67 fromLocation:@"_updateLookupResultsJustStagedAllMode"];

                          v68 = [v72 assetType];
                          v69 = [NSString alloc];
                          v70 = [v77 assetId];
                          v71 = [v69 initWithFormat:@"set-lookup-result modified for just-staged descriptor | assetID:%@", v70];
                          [(MADAutoAssetStager *)v74 _logPersistedSetLookupResult:@"_updateLookupResultsJustStagedAllMode" operation:@"ENTRY_MODIFY" forPersistedEntryID:v68 withSetLookupResult:v64 message:v71];

                          objc_autoreleasePoolPop(context);
                          goto LABEL_41;
                        }

                        continue;
                      }

                      goto LABEL_23;
                    }

LABEL_34:
                    [v86 addObject:v28];
                    goto LABEL_35;
                  }

                  p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
                  v36 = v82;
                  v34 = v83;
                  v39 = v81;
                }

                v26 = v84;
                v24 = v35;
              }

              break;
            }

            goto LABEL_34;
          }

          v22 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = [(MADAutoAssetStager *)self _updateLatestSummary];
            *buf = 138543618;
            v98 = v23;
            v99 = 2114;
            v100 = v12;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "[%{public}@] {_updateLookupResultsJustStagedAllMode} unable to load set-lookup-result | entryID:%{public}@", buf, 0x16u);

            self = v74;
          }
        }

        else
        {
          v20 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = [(MADAutoAssetStager *)self _updateLatestSummary];
            *buf = 138543618;
            v98 = v21;
            v99 = 2114;
            v100 = v12;
            v16 = v20;
            _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {_updateLookupResultsJustStagedAllMode} unable to retrieve set-lookup-result | entryID:%{public}@", buf, 0x16u);
          }

          else
          {
            v16 = v20;
          }
        }

LABEL_17:

        objc_autoreleasePoolPop(context);
      }

      v9 = [obj countByEnumeratingWithState:&v92 objects:v101 count:16];
      if (!v9)
      {
LABEL_41:

        v7 = v73;
        break;
      }
    }
  }
}

- (void)_logPersistedConfigLoad:(id)a3 message:(id)a4
{
  v29 = a3;
  v30 = a4;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [NSString alloc];
  v9 = [(MADAutoAssetStager *)self startupLastStagingFromOSVersion];
  v10 = [(MADAutoAssetStager *)self startupLastStagingFromBuildVersion];
  v11 = [(MADAutoAssetStager *)self startupAssetTargetOSVersion];
  v12 = [(MADAutoAssetStager *)self startupAssetTargetBuildVersion];
  v13 = [(MADAutoAssetStager *)self startupAssetTargetTrainName];
  v14 = [(MADAutoAssetStager *)self startupAssetTargetRestoreVersion];
  v15 = [v8 initWithFormat:@"lastStagingFrom[OSVersion:%@, BuildVersion:%@] | assetTarget[OSVersion:%@, BuildVersion:%@, TrainName:%@, RestoreVersion:%@]", v9, v10, v11, v12, v13, v14];

  v16 = [NSString alloc];
  if ([(MADAutoAssetStager *)self startupModeByGroups])
  {
    v17 = @"BY-GROUP";
  }

  else
  {
    v17 = @"ALL";
  }

  v18 = [(MADAutoAssetStager *)self startupCandidateAssetCount];
  v19 = [(MADAutoAssetStager *)self startupDeterminedAvailableAssetCount];
  v20 = [(MADAutoAssetStager *)self startupActivelyStagingAssetCount];
  v21 = [(MADAutoAssetStager *)self startupAwaitingStagingAssetCount];
  v22 = [(MADAutoAssetStager *)self startupStagedAssetCount];
  v23 = [(MADAutoAssetStager *)self startupStagedAssetTotalContentBytes];
  v24 = [(MADAutoAssetStager *)self startupStagedNoContent];
  v25 = @"N";
  if (v24)
  {
    v25 = @"Y";
  }

  v26 = [v16 initWithFormat:@"targetMode:%@ | candidate:%llu | determinedAvailable:%llu | activelyStaging:%llu | awaitingStaging:%llu | staged:%llu(totalContentBytes:%llu, noContent:%@)", v17, v18, v19, v20, v21, v22, v23, v25];
  v27 = [MADAutoAssetPersisted persistedOperationSymbol:@"CONFIG_LOAD"];
  v28 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138546946;
    v32 = @"PERSISTED";
    v33 = 2114;
    v34 = @"AUTO-STAGER";
    v35 = 2114;
    v36 = @"CONFIG_LOAD";
    v37 = 2114;
    v38 = @"STAGR";
    v39 = 2114;
    v40 = @">----->";
    v41 = 2114;
    v42 = v29;
    v43 = 2114;
    v44 = v30;
    v45 = 2114;
    v46 = @"STAGR";
    v47 = 2114;
    v48 = v27;
    v49 = 2114;
    v50 = v15;
    v51 = 2114;
    v52 = @"STAGR";
    v53 = 2114;
    v54 = v27;
    v55 = 2114;
    v56 = v26;
    v57 = 2114;
    v58 = @"STAGR";
    v59 = 2114;
    v60 = @"<-----<";
    _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@\n#_%{public}@:(%{public}@) %{public}@\n#_%{public}@:(%{public}@) %{public}@\n#_%{public}@:%{public}@", buf, 0x98u);
  }
}

- (void)_logPersistedConfigSet:(id)a3 message:(id)a4
{
  v59 = a3;
  v58 = a4;
  v6 = [(MADAutoAssetStager *)self autoStagerFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(MADAutoAssetStager *)self persistedState];
  v9 = [v8 persistedConfig];
  v57 = [v9 BOOLeanForKey:@"modeByGroups"];

  v10 = [(MADAutoAssetStager *)self persistedState];
  v11 = [v10 persistedConfig];
  v63 = [v11 stringForKey:@"lastStagingFromOSVersion"];

  v12 = [(MADAutoAssetStager *)self persistedState];
  v13 = [v12 persistedConfig];
  v61 = [v13 stringForKey:@"lastStagingFromBuildVersion"];

  v14 = [(MADAutoAssetStager *)self persistedState];
  v15 = [v14 persistedConfig];
  v62 = [v15 stringForKey:@"assetTargetOSVersion"];

  v16 = [(MADAutoAssetStager *)self persistedState];
  v17 = [v16 persistedConfig];
  v60 = [v17 stringForKey:@"assetTargetBuildVersion"];

  v18 = [(MADAutoAssetStager *)self persistedState];
  v19 = [v18 persistedConfig];
  v56 = [v19 stringForKey:@"assetTargetTrainName"];

  v20 = [(MADAutoAssetStager *)self persistedState];
  v21 = [v20 persistedConfig];
  v22 = [v21 stringForKey:@"assetTargetRestoreVersion"];

  v23 = [(MADAutoAssetStager *)self persistedState];
  v24 = [v23 persistedConfig];
  v55 = [v24 ullForKey:@"candidateAssetCount"];

  v25 = [(MADAutoAssetStager *)self persistedState];
  v26 = [v25 persistedConfig];
  v54 = [v26 ullForKey:@"determinedAvailableAssetCount"];

  v27 = [(MADAutoAssetStager *)self persistedState];
  v28 = [v27 persistedConfig];
  v29 = [v28 ullForKey:@"activelyStagingAssetCount"];

  v30 = [(MADAutoAssetStager *)self persistedState];
  v31 = [v30 persistedConfig];
  v32 = [v31 ullForKey:@"awaitingStagingAssetCount"];

  v33 = [(MADAutoAssetStager *)self persistedState];
  v34 = [v33 persistedConfig];
  v35 = [v34 ullForKey:@"stagedAssetCount"];

  v36 = [(MADAutoAssetStager *)self persistedState];
  v37 = [v36 persistedConfig];
  v38 = [v37 ullForKey:@"stagedAssetTotalContentBytes"];

  v39 = [(MADAutoAssetStager *)self persistedState];
  v40 = [v39 persistedConfig];
  v41 = [v40 BOOLeanForKey:@"stagedNoContent"];

  v42 = [(MADAutoAssetStager *)self persistedState];
  v43 = [v42 persistedConfig];
  v44 = [v43 ullForKey:@"previousOTASituation"];

  v45 = [NSString alloc];
  v46 = [MANAutoAssetControlStagerInformation previousOTASituationName:v44];
  v47 = [v45 initWithFormat:@"lastStagingFrom[OSVersion:%@, BuildVersion:%@] | assetTarget[OSVersion:%@, BuildVersion:%@, TrainName:%@, RestoreVersion:%@] | previousOTASituation:%@", v63, v61, v62, v60, v56, v22, v46];

  v48 = [NSString alloc];
  v49 = @"ALL";
  if (v57)
  {
    v49 = @"BY-GROUP";
  }

  v50 = @"N";
  if (v41)
  {
    v50 = @"Y";
  }

  v51 = [v48 initWithFormat:@"targetMode:%@ | candidate:%llu | determinedAvailable:%llu | activelyStaging:%llu | awaitingStaging:%llu | staged:%llu(totalContentBytes:%llu)(noContent:%@)", v49, v55, v54, v29, v32, v35, v38, v50];
  v52 = [MADAutoAssetPersisted persistedOperationSymbol:@"CONFIG_SET"];
  v53 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138546946;
    v65 = @"PERSISTED";
    v66 = 2114;
    v67 = @"AUTO-STAGER";
    v68 = 2114;
    v69 = @"CONFIG_SET";
    v70 = 2114;
    v71 = @"STAGR";
    v72 = 2114;
    v73 = @">----->";
    v74 = 2114;
    v75 = v59;
    v76 = 2114;
    v77 = v58;
    v78 = 2114;
    v79 = @"STAGR";
    v80 = 2114;
    v81 = v52;
    v82 = 2114;
    v83 = v47;
    v84 = 2114;
    v85 = @"STAGR";
    v86 = 2114;
    v87 = v52;
    v88 = 2114;
    v89 = v51;
    v90 = 2114;
    v91 = @"STAGR";
    v92 = 2114;
    v93 = @"<-----<";
    _os_log_impl(&dword_0, v53, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@\n#_%{public}@:(%{public}@) %{public}@\n#_%{public}@:(%{public}@) %{public}@\n#_%{public}@:%{public}@", buf, 0x98u);
  }
}

- (void)_logPersistedEntry:(id)a3 operation:(id)a4 persistingDescriptor:(id)a5 withRepresentation:(int64_t)a6 message:(id)a7
{
  v34 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [(MADAutoAssetStager *)self autoStagerFSM];
  v16 = [v15 extendedStateQueue];
  dispatch_assert_queue_V2(v16);

  v17 = [MADAutoAssetPersisted persistedOperationSymbol:v12];
  v18 = [MAAutoAssetSelector alloc];
  v19 = [v13 assetType];
  v20 = [v13 assetSpecifier];
  v21 = [v13 assetVersion];
  v22 = [v18 initForAssetType:v19 withAssetSpecifier:v20 matchingAssetVersion:v21];

  v23 = [v22 persistedEntryID];
  v24 = [MASAutoAssetSummary newAssetRepresentationName:a6];
  if (v23)
  {
    v25 = _MADLog(@"AutoStager");
    v26 = v34;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v13 newSummaryWithoutSelector];
      *buf = 138546690;
      v36 = @"PERSISTED";
      v37 = 2114;
      v38 = @"AUTO-STAGER";
      v39 = 2114;
      v40 = v12;
      v41 = 2114;
      v42 = @"STAGR";
      v43 = 2114;
      v44 = @">----->";
      v45 = 2114;
      v46 = v34;
      v47 = 2114;
      v48 = v14;
      v49 = 2114;
      v50 = @"STAGR";
      v51 = 2114;
      v52 = v17;
      v53 = 2114;
      v54 = v23;
      v55 = 2114;
      v56 = v24;
      v57 = 2114;
      v58 = v27;
      v59 = 2114;
      v60 = @"STAGR";
      v61 = 2114;
      v62 = @"<-----<";
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@\n#_%{public}@:(%{public}@) [%{public}@] | [%{public}@] %{public}@\n#_%{public}@:%{public}@", buf, 0x8Eu);
    }
  }

  else
  {
    v25 = [(MADAutoAssetStager *)self autoStagerFSM];
    [v25 diag];
    v28 = v32 = v22;
    v29 = [NSString alloc];
    [v13 summary];
    v30 = v33 = v17;
    v26 = v34;
    v31 = [v29 initWithFormat:@"{%@:_logPersistedEntry} %@ | no persistedEntryID | %@ | [%@] assetDescriptor:%@", v34, v12, v14, v24, v30];
    [v28 trackAnomaly:@"AUTO-STAGER" forReason:v31 withResult:6110 withError:0];

    v17 = v33;
    v22 = v32;
  }
}

- (void)_logPersistedRemovedEntry:(id)a3 removedDescriptor:(id)a4 message:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MADAutoAssetStager *)self autoStagerFSM];
  v12 = [v11 extendedStateQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [MADAutoAssetPersisted persistedOperationSymbol:@"ENTRY_REMOVE"];
  v14 = [MAAutoAssetSelector alloc];
  v15 = [v9 assetType];
  v16 = [v9 assetSpecifier];
  v17 = [v9 assetVersion];
  v18 = [v14 initForAssetType:v15 withAssetSpecifier:v16 matchingAssetVersion:v17];

  v19 = [v18 persistedEntryID];
  if (v19)
  {
    v20 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v9 newSummaryWithoutSelector];
      *buf = 138546434;
      v27 = @"PERSISTED";
      v28 = 2114;
      v29 = @"AUTO-STAGER";
      v30 = 2114;
      v31 = @"ENTRY_REMOVE";
      v32 = 2114;
      v33 = @"STAGR";
      v34 = 2114;
      v35 = @">----->";
      v36 = 2114;
      v37 = v8;
      v38 = 2114;
      v39 = v10;
      v40 = 2114;
      v41 = @"STAGR";
      v42 = 2114;
      v43 = v13;
      v44 = 2114;
      v45 = v19;
      v46 = 2114;
      v47 = v21;
      v48 = 2114;
      v49 = @"STAGR";
      v50 = 2114;
      v51 = @"<-----<";
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@\n#_%{public}@:(%{public}@) [%{public}@] | %{public}@\n#_%{public}@:%{public}@", buf, 0x84u);
    }
  }

  else
  {
    v20 = [(MADAutoAssetStager *)self autoStagerFSM];
    v22 = [v20 diag];
    v23 = [NSString alloc];
    v24 = [v9 summary];
    v25 = [v23 initWithFormat:@"{%@:_logPersistedRemovedEntry} | no persistedEntryID to remove | %@ | removedDescriptor:%@", v8, v10, v24];
    [v22 trackAnomaly:@"AUTO-STAGER" forReason:v25 withResult:6110 withError:0];
  }
}

- (void)_logPersistedTableOfContents:(id)a3
{
  v28 = a3;
  v3 = [(MADAutoAssetStager *)self autoStagerFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  if (+[MADAutoAssetControlManager preferencePersistedTableLoggingEnabled])
  {
    v5 = [(MADAutoAssetStager *)self persistedState];
    v6 = [v5 persistedEntryIDs:v28];

    if ([v6 count])
    {
      v7 = [v6 count];
      v8 = _MADLog(@"AutoStager");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544642;
        v30 = @"PERSISTED";
        v31 = 2114;
        v32 = @"AUTO-STAGER";
        v33 = 2114;
        v34 = @"ENTRY_LOAD";
        v35 = 2114;
        v36 = @"STAGR";
        v37 = 2114;
        v38 = @">----->";
        v39 = 2114;
        v40 = v28;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} table-of-contents...", buf, 0x3Eu);
      }

      if (v7 >= 1)
      {
        v10 = 0;
        *&v9 = 138543874;
        v25 = v9;
        v26 = v6;
        do
        {
          v11 = [v6 objectAtIndexedSubscript:{v10, v25}];
          v12 = [(MADAutoAssetStager *)self persistedState];
          v13 = [v12 persistedEntry:v11 fromLocation:v28];

          if (v13)
          {
            v14 = [v13 ullForKey:@"assetRepresentation"];
            v15 = [(MADAutoAssetStager *)self persistedState];
            v16 = [v15 decodeFromLocation:v28 ofEntryName:v11 fromPersistedEntry:v13 decodingObjectForKey:@"assetDescriptor" ofClass:objc_opt_class() allowingNilObject:0];

            if (v16)
            {
              v17 = _MADLog(@"AutoStager");
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                v18 = [MASAutoAssetSummary newAssetRepresentationName:v14];
                v19 = [v16 newSummaryWithoutSelector];
                *buf = 138544898;
                v30 = @"STAGR";
                v31 = 2114;
                v32 = @"E_LOD";
                v33 = 2048;
                v34 = (v10 + 1);
                v35 = 2048;
                v36 = v7;
                v37 = 2114;
                v38 = v11;
                v39 = 2114;
                v40 = v18;
                v41 = 2114;
                v42 = v19;
                _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "\n#_%{public}@:%{public}@ (%ld of %ld) [%{public}@] | (%{public}@) %{public}@", buf, 0x48u);

                v6 = v26;
              }
            }
          }

          else
          {
            v16 = _MADLog(@"AutoStager");
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v20 = [(MADAutoAssetStager *)self summary];
              *buf = v25;
              v30 = v28;
              v31 = 2114;
              v32 = v20;
              v33 = 2114;
              v34 = v11;
              _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%{public}@\n[AUTO-STAGER] {%{public}@:_logPersistedTableOfContents} unable to load entry:%{public}@", buf, 0x20u);
            }
          }

          ++v10;
        }

        while (v7 != v10);
      }

      v21 = _MADLog(@"AutoStager");
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      *buf = 138544642;
      v30 = @"PERSISTED";
      v31 = 2114;
      v32 = @"AUTO-STAGER";
      v33 = 2114;
      v34 = @"ENTRY_LOAD";
      v35 = 2114;
      v36 = @"STAGR";
      v37 = 2114;
      v38 = @"<-----<";
      v39 = 2114;
      v40 = v28;
      v22 = "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} ...table-of-contents";
      v23 = v21;
      v24 = 62;
    }

    else
    {
      v21 = _MADLog(@"AutoStager");
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
LABEL_20:

        goto LABEL_21;
      }

      *buf = 138545410;
      v30 = @"PERSISTED";
      v31 = 2114;
      v32 = @"AUTO-STAGER";
      v33 = 2114;
      v34 = @"ENTRY_LOAD";
      v35 = 2114;
      v36 = @"STAGR";
      v37 = 2114;
      v38 = @">----->";
      v39 = 2114;
      v40 = v28;
      v41 = 2114;
      v42 = @"empty table-of-contents";
      v43 = 2114;
      v44 = @"STAGR";
      v45 = 2114;
      v46 = @"<-----<";
      v22 = "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@\n#_%{public}@:%{public}@";
      v23 = v21;
      v24 = 92;
    }

    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
    goto LABEL_20;
  }

LABEL_21:
}

- (id)_targetNameActiveRequired
{
  v3 = [(MADAutoAssetStager *)self autoStagerFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [[NSString alloc] initWithFormat:@"%@(%@)", @"ACTIVE", @"REQUIRED"];
  v6 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  v7 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  v8 = [(MADAutoAssetStager *)self assetTargetTrainName];
  v9 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  v10 = [(MADAutoAssetStager *)self _targetName:v5 forOSVersion:v6 forBuildVersion:v7 forTrainName:v8 forRestoreVersion:v9];

  return v10;
}

- (id)_targetNameActiveOptional
{
  v3 = [(MADAutoAssetStager *)self autoStagerFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [[NSString alloc] initWithFormat:@"%@(%@)", @"ACTIVE", @"OPTIONAL"];
  v6 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  v7 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  v8 = [(MADAutoAssetStager *)self assetTargetTrainName];
  v9 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  v10 = [(MADAutoAssetStager *)self _targetName:v5 forOSVersion:v6 forBuildVersion:v7 forTrainName:v8 forRestoreVersion:v9];

  return v10;
}

- (id)_targetNameActive
{
  v3 = [(MADAutoAssetStager *)self autoStagerFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  v6 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  v7 = [(MADAutoAssetStager *)self assetTargetTrainName];
  v8 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  v9 = [(MADAutoAssetStager *)self _targetName:0 forOSVersion:v5 forBuildVersion:v6 forTrainName:v7 forRestoreVersion:v8];

  return v9;
}

- (id)_targetNameActive:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetStager *)self autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  v8 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  v9 = [(MADAutoAssetStager *)self assetTargetTrainName];
  v10 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  v11 = [(MADAutoAssetStager *)self _targetName:v4 forOSVersion:v7 forBuildVersion:v8 forTrainName:v9 forRestoreVersion:v10];

  return v11;
}

- (id)_targetNameActiveClient
{
  v3 = [(MADAutoAssetStager *)self autoStagerFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  v6 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  v7 = [(MADAutoAssetStager *)self assetTargetTrainName];
  v8 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
  v9 = [(MADAutoAssetStager *)self _targetName:@"CLIENT" forOSVersion:v5 forBuildVersion:v6 forTrainName:v7 forRestoreVersion:v8];

  return v9;
}

- (id)_targetNameAvailableForStaging:(id)a3
{
  v4 = a3;
  v5 = [v4 targetOSVersion];
  v6 = [v4 targetBuild];
  v7 = [v4 targetTrainName];
  v8 = [v4 targetRestoreVersion];

  v9 = [(MADAutoAssetStager *)self _targetName:@"AVAILABLE" forOSVersion:v5 forBuildVersion:v6 forTrainName:v7 forRestoreVersion:v8];

  return v9;
}

- (id)_targetName:(id)a3 forOSVersion:(id)a4 forBuildVersion:(id)a5 forTrainName:(id)a6 forRestoreVersion:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (a3)
  {
    v15 = a3;
    v16 = [[NSString alloc] initWithFormat:@"[%@]", v15];
  }

  else
  {
    v16 = &stru_4BD3F0;
  }

  v17 = [NSString alloc];
  v18 = @"N";
  if (v11)
  {
    v19 = v11;
  }

  else
  {
    v19 = @"N";
  }

  if (v12)
  {
    v20 = v12;
  }

  else
  {
    v20 = @"N";
  }

  if (v13)
  {
    v21 = v13;
  }

  else
  {
    v21 = @"N";
  }

  if (v14)
  {
    v18 = v14;
  }

  v22 = [v17 initWithFormat:@">TARGET>OS:%@|build:%@|train:%@|restore:%@%@", v19, v20, v21, v18, v16];

  return v22;
}

- (id)_fromToName
{
  v3 = [(MADAutoAssetStager *)self autoStagerFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = v7;
  v9 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  if ([SUCore stringIsEqual:v9 to:@"NO_STAGING_ATTEMPTED"])
  {

LABEL_5:
LABEL_6:
    v10 = [NSString alloc];
    v11 = [(MADAutoAssetStager *)self stagingFromOSVersion];
    v12 = [(MADAutoAssetStager *)self stagingFromBuildVersion];
    v13 = [v10 initWithFormat:@"F=%@(%@)", v11, v12];
    goto LABEL_7;
  }

  v15 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  v16 = [SUCore stringIsEqual:v15 to:@"NO_STAGING_ATTEMPTED"];

  if (v16)
  {
    goto LABEL_6;
  }

  v17 = [NSString alloc];
  v11 = [(MADAutoAssetStager *)self stagingFromOSVersion];
  v12 = [(MADAutoAssetStager *)self stagingFromBuildVersion];
  v18 = [(MADAutoAssetStager *)self assetTargetOSVersion];
  v19 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
  v13 = [v17 initWithFormat:@"F=%@(%@)->T=%@(%@)", v11, v12, v18, v19];

LABEL_7:

  return v13;
}

- (void)_logMilestoneFromLocation:(id)a3 resultingInEvent:(id)a4 forMilestoneActivity:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v117 = self;
  v11 = [(MADAutoAssetStager *)self autoStagerFSM];
  v12 = [v11 extendedStateQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [NSString alloc];
  if (v9)
  {
    v14 = [v13 initWithFormat:@"{%@} | %@ | (%@)", v8, v9, v10];
  }

  else
  {
    v14 = [v13 initWithFormat:@"{%@} (%@)", v8, v10, v112];
  }

  v15 = v14;
  v16 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(MADAutoAssetStager *)self description];
    *buf = 138543618;
    v148 = v17;
    v149 = 2114;
    v150 = v15;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}@\n[AUTO-STAGER] (%{public}@) | MA_MILESTONE", buf, 0x16u);
  }

  if (![(MADAutoAssetStager *)self stagingClientUsingGroups])
  {
    v37 = _MADLog(@"AutoStager");
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_88;
    }

    *buf = 138543362;
    v148 = v15;
    v38 = "\n[AUTO-STAGER] (%{public}@) | [ALL-MODE]";
LABEL_87:
    _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, v38, buf, 0xCu);
    goto LABEL_88;
  }

  v18 = [(MADAutoAssetStager *)self candidatesForStagingRequiredByTarget];
  v19 = [v18 count];

  v114 = v9;
  v115 = v8;
  v113 = v10;
  v116 = v15;
  if (v19)
  {
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v20 = [(MADAutoAssetStager *)self candidatesForStagingRequiredByTarget];
    v21 = [v20 countByEnumeratingWithState:&v138 objects:v155 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v139;
      p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
      v25 = @"AutoStager";
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v139 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v27 = *(*(&v138 + 1) + 8 * i);
          v28 = [(MADAutoAssetStager *)v117 candidatesForStagingRequiredByTarget];
          v29 = [v28 safeObjectForKey:v27 ofClass:objc_opt_class()];

          v30 = _MADLog(v25);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            [(MADAutoAssetStager *)v117 _targetNameActiveRequired];
            v31 = v22;
            v32 = v25;
            v33 = p_weak_ivar_lyt;
            v35 = v34 = v20;
            v36 = [v29 count];
            *buf = 138544130;
            v148 = v116;
            v149 = 2114;
            v150 = v35;
            v151 = 2114;
            v152 = v27;
            v153 = 2048;
            v154 = v36;
            _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "\n[AUTO-STAGER] (%{public}@) | [%{public}@] [%{public}@] (asset-descriptors) candidatesForStaging:%ld", buf, 0x2Au);

            v20 = v34;
            p_weak_ivar_lyt = v33;
            v25 = v32;
            v22 = v31;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v138 objects:v155 count:16];
      }

      while (v22);
      v9 = v114;
      v8 = v115;
      v10 = v113;
      v15 = v116;
    }
  }

  else
  {
    v20 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v148 = v15;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "\n[AUTO-STAGER] (%{public}@) | [NO-TARGETS] [REQUIRED] (asset-descriptors) EMPTY candidatesForStagingRequiredByTarget", buf, 0xCu);
    }
  }

  v39 = [(MADAutoAssetStager *)v117 candidatesForStagingOptionalByTarget];
  v40 = [v39 count];

  if (v40)
  {
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v41 = [(MADAutoAssetStager *)v117 candidatesForStagingOptionalByTarget];
    v42 = [v41 countByEnumeratingWithState:&v134 objects:v146 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v135;
      v45 = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
      v46 = @"AutoStager";
      do
      {
        for (j = 0; j != v43; j = j + 1)
        {
          if (*v135 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v48 = *(*(&v134 + 1) + 8 * j);
          v49 = [(MADAutoAssetStager *)v117 candidatesForStagingOptionalByTarget];
          v50 = [v49 safeObjectForKey:v48 ofClass:objc_opt_class()];

          v51 = _MADLog(v46);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            [(MADAutoAssetStager *)v117 _targetNameActiveOptional];
            v52 = v46;
            v53 = v45;
            v55 = v54 = v41;
            v56 = [v50 count];
            *buf = 138544130;
            v148 = v116;
            v149 = 2114;
            v150 = v55;
            v151 = 2114;
            v152 = v48;
            v153 = 2048;
            v154 = v56;
            _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "\n[AUTO-STAGER] (%{public}@) | [%{public}@] [%{public}@] (asset-descriptors) candidatesForStagingOptionalByTarget:%ld", buf, 0x2Au);

            v41 = v54;
            v45 = v53;
            v46 = v52;
          }
        }

        v43 = [v41 countByEnumeratingWithState:&v134 objects:v146 count:16];
      }

      while (v43);
      v9 = v114;
      v8 = v115;
      v10 = v113;
      v15 = v116;
    }
  }

  else
  {
    v41 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v148 = v15;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "\n[AUTO-STAGER] (%{public}@) | [NO-TARGETS] [OPTIONAL] (asset-descriptors) EMPTY candidatesForStagingOptionalByTarget", buf, 0xCu);
    }
  }

  v57 = [(MADAutoAssetStager *)v117 candidateSetConfigurationsRequiredByTarget];
  v58 = [v57 count];

  if (v58)
  {
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v59 = [(MADAutoAssetStager *)v117 candidateSetConfigurationsRequiredByTarget];
    v60 = [v59 countByEnumeratingWithState:&v130 objects:v145 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v131;
      do
      {
        for (k = 0; k != v61; k = k + 1)
        {
          if (*v131 != v62)
          {
            objc_enumerationMutation(v59);
          }

          v64 = *(*(&v130 + 1) + 8 * k);
          v65 = [(MADAutoAssetStager *)v117 candidateSetConfigurationsRequiredByTarget];
          v66 = [v65 safeObjectForKey:v64 ofClass:objc_opt_class()];

          v67 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            [(MADAutoAssetStager *)v117 _targetNameActiveRequired];
            v69 = v68 = v59;
            v70 = [v66 count];
            *buf = 138544130;
            v148 = v116;
            v149 = 2114;
            v150 = v69;
            v151 = 2114;
            v152 = v64;
            v153 = 2048;
            v154 = v70;
            _os_log_impl(&dword_0, v67, OS_LOG_TYPE_DEFAULT, "\n[AUTO-STAGER] (%{public}@) | [%{public}@] [%{public}@] (set-configurations) candidateSetConfigurationsRequiredByTarget:%ld", buf, 0x2Au);

            v59 = v68;
          }
        }

        v61 = [v59 countByEnumeratingWithState:&v130 objects:v145 count:16];
      }

      while (v61);
      v9 = v114;
      v8 = v115;
      v10 = v113;
      v15 = v116;
    }
  }

  else
  {
    v59 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v148 = v15;
      _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEFAULT, "\n[AUTO-STAGER] (%{public}@) | [NO-TARGETS] [REQUIRED] (set-configurations) EMPTY candidateSetConfigurationsRequiredByTarget", buf, 0xCu);
    }
  }

  v71 = [(MADAutoAssetStager *)v117 candidateSetConfigurationsOptionalByTarget];
  v72 = [v71 count];

  if (v72)
  {
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v73 = [(MADAutoAssetStager *)v117 candidateSetConfigurationsOptionalByTarget];
    v74 = [v73 countByEnumeratingWithState:&v126 objects:v144 count:16];
    if (v74)
    {
      v75 = v74;
      v76 = *v127;
      do
      {
        for (m = 0; m != v75; m = m + 1)
        {
          if (*v127 != v76)
          {
            objc_enumerationMutation(v73);
          }

          v78 = *(*(&v126 + 1) + 8 * m);
          v79 = [(MADAutoAssetStager *)v117 candidateSetConfigurationsOptionalByTarget];
          v80 = [v79 safeObjectForKey:v78 ofClass:objc_opt_class()];

          v81 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            [(MADAutoAssetStager *)v117 _targetNameActiveOptional];
            v83 = v82 = v73;
            v84 = [v80 count];
            *buf = 138544130;
            v148 = v116;
            v149 = 2114;
            v150 = v83;
            v151 = 2114;
            v152 = v78;
            v153 = 2048;
            v154 = v84;
            _os_log_impl(&dword_0, v81, OS_LOG_TYPE_DEFAULT, "\n[AUTO-STAGER] (%{public}@) | [%{public}@] [%{public}@] [OPTIONAL] (set-configurations) candidateSetConfigurationsOptionalByTarget:%ld", buf, 0x2Au);

            v73 = v82;
          }
        }

        v75 = [v73 countByEnumeratingWithState:&v126 objects:v144 count:16];
      }

      while (v75);
      v9 = v114;
      v8 = v115;
      v10 = v113;
      v15 = v116;
    }
  }

  else
  {
    v73 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v148 = v15;
      _os_log_impl(&dword_0, v73, OS_LOG_TYPE_DEFAULT, "\n[AUTO-STAGER] (%{public}@) | [NO-TARGETS] [OPTIONAL] (set-configurations) EMPTY candidateSetConfigurationsOptionalByTarget", buf, 0xCu);
    }
  }

  v85 = [(MADAutoAssetStager *)v117 availableForStagingRequiredByTarget];
  v86 = [v85 count];

  if (v86)
  {
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v87 = [(MADAutoAssetStager *)v117 availableForStagingRequiredByTarget];
    v88 = [v87 countByEnumeratingWithState:&v122 objects:v143 count:16];
    if (v88)
    {
      v89 = v88;
      v90 = *v123;
      do
      {
        for (n = 0; n != v89; n = n + 1)
        {
          if (*v123 != v90)
          {
            objc_enumerationMutation(v87);
          }

          v92 = *(*(&v122 + 1) + 8 * n);
          v93 = [(MADAutoAssetStager *)v117 availableForStagingRequiredByTarget];
          v94 = [v93 safeObjectForKey:v92 ofClass:objc_opt_class()];

          v95 = _MADLog(@"AutoStager");
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
          {
            [(MADAutoAssetStager *)v117 _targetNameActiveRequired];
            v97 = v96 = v87;
            v98 = [v94 count];
            *buf = 138544130;
            v148 = v116;
            v149 = 2114;
            v150 = v97;
            v151 = 2114;
            v152 = v92;
            v153 = 2048;
            v154 = v98;
            _os_log_impl(&dword_0, v95, OS_LOG_TYPE_DEFAULT, "\n[AUTO-STAGER] (%{public}@) | [%{public}@] [%{public}@] (asset-descriptors) availableForStagingRequiredByTarget:%ld", buf, 0x2Au);

            v87 = v96;
          }
        }

        v89 = [v87 countByEnumeratingWithState:&v122 objects:v143 count:16];
      }

      while (v89);
      v9 = v114;
      v8 = v115;
      v10 = v113;
      v15 = v116;
    }
  }

  else
  {
    v87 = _MADLog(@"AutoStager");
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v148 = v15;
      _os_log_impl(&dword_0, v87, OS_LOG_TYPE_DEFAULT, "\n[AUTO-STAGER] (%{public}@) | [NO-TARGETS] [REQUIRED] (asset-descriptors) EMPTY availableForStagingRequiredByTarget", buf, 0xCu);
    }
  }

  v99 = [(MADAutoAssetStager *)v117 availableForStagingOptionalByTarget];
  v100 = [v99 count];

  if (!v100)
  {
    v37 = _MADLog(@"AutoStager");
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_88;
    }

    *buf = 138543362;
    v148 = v15;
    v38 = "\n[AUTO-STAGER] (%{public}@) | [NO-TARGETS] [OPTIONAL] (asset-descriptors) EMPTY availableForStagingOptionalByTarget";
    goto LABEL_87;
  }

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v37 = [(MADAutoAssetStager *)v117 availableForStagingOptionalByTarget];
  v101 = [v37 countByEnumeratingWithState:&v118 objects:v142 count:16];
  if (v101)
  {
    v102 = v101;
    v103 = *v119;
    do
    {
      for (ii = 0; ii != v102; ii = ii + 1)
      {
        if (*v119 != v103)
        {
          objc_enumerationMutation(v37);
        }

        v105 = *(*(&v118 + 1) + 8 * ii);
        v106 = [(MADAutoAssetStager *)v117 availableForStagingOptionalByTarget];
        v107 = [v106 safeObjectForKey:v105 ofClass:objc_opt_class()];

        v108 = _MADLog(@"AutoStager");
        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
        {
          [(MADAutoAssetStager *)v117 _targetNameActiveOptional];
          v110 = v109 = v37;
          v111 = [v107 count];
          *buf = 138544130;
          v148 = v116;
          v149 = 2114;
          v150 = v110;
          v151 = 2114;
          v152 = v105;
          v153 = 2048;
          v154 = v111;
          _os_log_impl(&dword_0, v108, OS_LOG_TYPE_DEFAULT, "\n[AUTO-STAGER] (%{public}@) | [%{public}@] [%{public}@] (asset-descriptors) availableForStagingOptionalByTarget:%ld", buf, 0x2Au);

          v37 = v109;
        }
      }

      v102 = [v37 countByEnumeratingWithState:&v118 objects:v142 count:16];
    }

    while (v102);
    v9 = v114;
    v8 = v115;
    v10 = v113;
    v15 = v116;
  }

LABEL_88:
}

- (id)description
{
  v3 = [(MADAutoAssetStager *)self eliminationSelectors];
  if ([v3 count])
  {
    goto LABEL_4;
  }

  v4 = [(MADAutoAssetStager *)self eliminationSetConfigurationCurrentJob];
  if (v4)
  {

LABEL_4:
LABEL_5:
    v5 = @"Y";
    goto LABEL_6;
  }

  v38 = [(MADAutoAssetStager *)self eliminationSelectorsAcknowledged];
  v39 = [v38 count];

  if (v39)
  {
    goto LABEL_5;
  }

  v5 = @"N";
LABEL_6:
  v92 = v5;
  v6 = [(MADAutoAssetStager *)self assetTargetGroupNames];
  v7 = [v6 count];

  if (v7)
  {
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v8 = [(MADAutoAssetStager *)self assetTargetGroupNames];
    v9 = [v8 countByEnumeratingWithState:&v93 objects:v97 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v94;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v94 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v93 + 1) + 8 * i);
          v15 = @"REQUIRED";
          if (([SUCore stringIsEqual:v14 to:@"STAGE_GROUP_REQUIRED"]& 1) != 0 || (v15 = @"OPTIONAL", [SUCore stringIsEqual:v14 to:@"STAGE_GROUP_OPTIONAL"]))
          {

            v14 = v15;
          }

          if (v11)
          {
            [(__CFString *)v11 appendFormat:@", %@", v14];
          }

          else
          {
            v11 = [[NSMutableString alloc] initWithString:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v93 objects:v97 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v16 = [(MADAutoAssetStager *)self stagingClientUsingGroups];
  v17 = @"ALL-MODE";
  if (v16)
  {
    v17 = @"GROUP-MODE";
  }

  v84 = v17;
  v18 = [(MADAutoAssetStager *)self stagingFromOSVersion];
  if (v18)
  {
    v19 = [(MADAutoAssetStager *)self stagingFromOSVersion];
  }

  else
  {
    v19 = @"N";
  }

  v89 = [(MADAutoAssetStager *)self stagingFromBuildVersion];
  if (v89)
  {
    v20 = [(MADAutoAssetStager *)self stagingFromBuildVersion];
  }

  else
  {
    v20 = @"N";
  }

  v87 = [(MADAutoAssetStager *)self _targetNameActive];
  v86 = [(MADAutoAssetStager *)self stagingClientDetermineRequests];
  v78 = [v86 count];
  if ([(MADAutoAssetStager *)self stagingClientUsingGroups])
  {
    [(MADAutoAssetStager *)self stagingClientDownloadRequest];
  }

  else
  {
    [(MADAutoAssetStager *)self stagingClientRequest];
  }
  v85 = ;
  if (v85)
  {
    v21 = @"Y";
  }

  else
  {
    v21 = @"N";
  }

  v75 = v21;
  v83 = [(MADAutoAssetStager *)self stagingClientName];
  v91 = v18;
  v90 = v19;
  v88 = v20;
  if (v83)
  {
    v82 = [(MADAutoAssetStager *)self stagingClientName];
  }

  else
  {
    v82 = @"N";
  }

  v81 = [(MADAutoAssetStager *)self activeSetJobConfiguration];
  if (v81)
  {
    v22 = @"Y";
  }

  else
  {
    v22 = @"N";
  }

  v72 = v22;
  v80 = [(MADAutoAssetStager *)self activeJobDescriptor];
  if (v80)
  {
    v23 = @"Y";
  }

  else
  {
    v23 = @"N";
  }

  v70 = v23;
  v79 = [(MADAutoAssetStager *)self alreadyDownloadedDescriptors];
  v68 = [v79 count];
  v77 = [(MADAutoAssetStager *)self setConfigurations];
  v66 = [v77 count];
  v76 = [(MADAutoAssetStager *)self setTargets];
  v65 = [v76 count];
  v74 = [(MADAutoAssetStager *)self scheduledJobs];
  v63 = [v74 count];
  v73 = [(MADAutoAssetStager *)self candidatesForStagingRequiredByTarget];
  v61 = [(MADAutoAssetStager *)self _countOfEntriesDictionaryOfArray:v73];
  v71 = [(MADAutoAssetStager *)self candidatesForStagingOptionalByTarget];
  v59 = [(MADAutoAssetStager *)self _countOfEntriesDictionaryOfArray:v71];
  v69 = [(MADAutoAssetStager *)self candidatesForStaging];
  v58 = [v69 count];
  v67 = [(MADAutoAssetStager *)self candidateSetConfigurationsRequiredByTarget];
  v56 = [(MADAutoAssetStager *)self _countOfEntriesDictionaryOfArray:v67];
  v64 = [(MADAutoAssetStager *)self candidateSetConfigurationsOptionalByTarget];
  v54 = [(MADAutoAssetStager *)self _countOfEntriesDictionaryOfArray:v64];
  v62 = [(MADAutoAssetStager *)self candidateSetConfigurations];
  v24 = [v62 count];
  if (v11)
  {
    v25 = v11;
  }

  else
  {
    v25 = @"N";
  }

  v51 = v25;
  v52 = v24;
  v60 = [(MADAutoAssetStager *)self setLookupResults];
  v49 = [v60 count];
  v57 = [(MADAutoAssetStager *)self baseForStagingDescriptors];
  v47 = [v57 count];
  v55 = [(MADAutoAssetStager *)self determiningBySelector];
  v46 = [v55 count];
  v53 = [(MADAutoAssetStager *)self availableForStagingRequiredByTarget];
  v44 = [(MADAutoAssetStager *)self _countOfEntriesDictionaryOfArray:v53];
  v50 = [(MADAutoAssetStager *)self availableForStagingOptionalByTarget];
  v42 = [(MADAutoAssetStager *)self _countOfEntriesDictionaryOfArray:v50];
  v48 = [(MADAutoAssetStager *)self availableForStaging];
  v41 = [v48 count];
  v45 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
  v40 = [v45 count];
  v43 = [(MADAutoAssetStager *)self successfullyStaged];
  v26 = [v43 count];
  if ([(MADAutoAssetStager *)self loadPersistedPostponed])
  {
    v27 = @"Y";
  }

  else
  {
    v27 = @"N";
  }

  if ([(MADAutoAssetStager *)self alwaysPromoteStagedAssets])
  {
    v28 = @"Y";
  }

  else
  {
    v28 = @"N";
  }

  v29 = [(MADAutoAssetStager *)self overallStagedTotalExpectedBytes];
  v30 = [(MADAutoAssetStager *)self overallStagedDownloadedSoFarBytes];
  if ([(MADAutoAssetStager *)self stagingClientChosen])
  {
    v31 = @"Y";
  }

  else
  {
    v31 = @"N";
  }

  v32 = ![(MADAutoAssetStager *)self stagingClientUsingGroups];
  v33 = self;
  if (v32)
  {
    v34 = @"N";
  }

  else
  {
    v34 = @"Y";
  }

  if ([(MADAutoAssetStager *)v33 stagingClientCompleteOnceRequired])
  {
    v35 = @"Y";
  }

  else
  {
    v35 = @"N";
  }

  v36 = [NSString stringWithFormat:@"\n>>> [AUTO-STAGER] >>>\n    stagingFrom: [%@] OSVersion:%@ | BuildVersion:%@\n   activeTarget: %@\n  stagingClient: Determines:%ld | DownloadRequest:%@ | Name:%@\n         active: Config:%@ | Job:%@\n  nowDownloaded: %ld\n            set: Configs:%ld | Targets:%ld\n      scheduled: Jobs:%ld\ncandidateAssets: RequiredByTarget:%ld | OptionalByTarget:%ld | Available:%ld\n  candidateSets: RequiredByTarget:%ld | OptionalByTarget:%ld | Configurations:%ld\n  lookupResults: GroupNames:%@ | [GROUP]SetLookups:%@ | [ALL]SetLookups:%ld\n     baseAssets: ForStaging:%ld\n    determining: BySelector:%ld\navailableAssets: RequiredByTarget:%ld | OptionalByTarget:%ld | Available:%ld\n  stagingCounts: awaiting:%ld | staged:%ld\n        control: loadPostponed:%@ | alwaysPromote:%@\n  overallStaged: TotalExpectedBytes:%lld | DownloadedSoFarBytes:%lld\n    elimination: %@\n    stagingMode: Chosen:%@ | UsingGroups:%@ | OnceRequired:%@\n<<<]", v84, v90, v88, v87, v78, v75, v82, v72, v70, v68, v66, v65, v63, v61, v59, v58, v56, v54, v52, v51, @"N", v49, v47, v46, v44, v42, v41, v40, v26, v27, v28, v29, v30, v92, v31, v34, v35];

  if (v83)
  {
  }

  if (v89)
  {
  }

  if (v91)
  {
  }

  return v36;
}

- (id)fullSummary
{
  v3 = [(MADAutoAssetStager *)self stagingClientUsingGroups];
  v4 = [(MADAutoAssetStager *)self stagingFromOSVersion];
  v102 = v4;
  if (v3)
  {
    if (v4)
    {
      v5 = [(MADAutoAssetStager *)self stagingFromOSVersion];
    }

    else
    {
      v5 = @"N";
    }

    v91 = [(MADAutoAssetStager *)self stagingFromBuildVersion];
    if (v91)
    {
      v89 = [(MADAutoAssetStager *)self stagingFromBuildVersion];
    }

    else
    {
      v89 = @"N";
    }

    v87 = [(MADAutoAssetStager *)self assetTargetOSVersion];
    if (v87)
    {
      v8 = [(MADAutoAssetStager *)self assetTargetOSVersion];
    }

    else
    {
      v8 = @"N";
    }

    v10 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
    if (v10)
    {
      v97 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
    }

    else
    {
      v97 = @"N";
    }

    v12 = [(MADAutoAssetStager *)self assetTargetTrainName];
    if (v12)
    {
      v95 = [(MADAutoAssetStager *)self assetTargetTrainName];
    }

    else
    {
      v95 = @"N";
    }

    v14 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
    if (v14)
    {
      v94 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
    }

    else
    {
      v94 = @"N";
    }

    v77 = [(MADAutoAssetStager *)self stagingClientDetermineRequests];
    v69 = [v77 count];
    v75 = [(MADAutoAssetStager *)self stagingClientDownloadRequest];
    if (v75)
    {
      v16 = @"Y";
    }

    else
    {
      v16 = @"N";
    }

    v67 = v16;
    if ([(MADAutoAssetStager *)self stagingClientChosen])
    {
      v17 = @"Y";
    }

    else
    {
      v17 = @"N";
    }

    v64 = v17;
    if ([(MADAutoAssetStager *)self stagingClientUsingGroups])
    {
      v18 = @"Y";
    }

    else
    {
      v18 = @"N";
    }

    v62 = v18;
    if ([(MADAutoAssetStager *)self stagingClientCompleteOnceRequired])
    {
      v19 = @"Y";
    }

    else
    {
      v19 = @"N";
    }

    v60 = v19;
    [(MADAutoAssetStager *)self activeJobDescriptor];
    v100 = v5;
    v83 = v10;
    v86 = v8;
    v79 = v14;
    v73 = v81 = v12;
    if (v73)
    {
      v48 = [(MADAutoAssetStager *)self activeJobDescriptor];
      v71 = [v48 summary];
    }

    else
    {
      v71 = @"N";
    }

    v65 = [(MADAutoAssetStager *)self candidatesForStagingRequiredByTarget];
    v56 = [(MADAutoAssetStager *)self _countOfEntriesDictionaryOfArray:v65];
    v61 = [(MADAutoAssetStager *)self candidatesForStagingOptionalByTarget];
    v54 = [(MADAutoAssetStager *)self _countOfEntriesDictionaryOfArray:v61];
    v59 = [(MADAutoAssetStager *)self candidatesForStaging];
    v52 = [v59 count];
    v58 = [(MADAutoAssetStager *)self determiningBySelector];
    v51 = [v58 count];
    v57 = [(MADAutoAssetStager *)self optionalAssetSizeAllowed];
    v50 = [v57 longLongValue];
    v55 = [(MADAutoAssetStager *)self availableForStagingRequiredByTarget];
    v49 = [(MADAutoAssetStager *)self _countOfEntriesDictionaryOfArray:v55];
    v53 = [(MADAutoAssetStager *)self availableForStagingOptionalByTarget];
    v22 = [(MADAutoAssetStager *)self _countOfEntriesDictionaryOfArray:v53];
    v23 = [(MADAutoAssetStager *)self availableForStaging];
    v24 = [v23 count];
    v25 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
    v26 = [v25 count];
    v27 = [(MADAutoAssetStager *)self successfullyStaged];
    v28 = [v27 count];
    v29 = [(MADAutoAssetStager *)self eliminationSelectors];
    v30 = [v29 count];
    v31 = [(MADAutoAssetStager *)self eliminationSelectorsAcknowledged];
    v47 = v26;
    v32 = v100;
    v99 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[GROUP][fromOS:%@,fromBuild:%@,targetOS:%@,targetBuild:%@|targetTrain:%@|targetRestoreVersion:%@|determineRequests:%ld|downloadRequest:%@(chosen:%@,usingGroups:%@,OnceRequired:%@)|activeDescriptor:%@|candidates:(R:%ld,O:%ld,a:%ld),determining:%ld,optionalSizeAllowed:%lld,available:(R:%ld,O:%ld,a:%ld)|awaitingStaging:%ld|staged:%ld|elimination:%ld,eliminationAck:%ld]", v100, v89, v86, v97, v95, v94, v69, v67, v64, v62, v60, v71, v56, v54, v52, v51, v50, v49, v22, v24, v47, v28, v30, [v31 count]);

    if (v73)
    {
    }

    v33 = v102;
    v34 = v91;
    if (v79)
    {
    }

    if (v81)
    {
    }

    if (v83)
    {
    }

    if (v87)
    {
    }

    if (v91)
    {
    }
  }

  else
  {
    if (v4)
    {
      v6 = [(MADAutoAssetStager *)self stagingFromOSVersion];
    }

    else
    {
      v6 = @"N";
    }

    v93 = [(MADAutoAssetStager *)self stagingFromBuildVersion];
    if (v93)
    {
      v7 = [(MADAutoAssetStager *)self stagingFromBuildVersion];
    }

    else
    {
      v7 = @"N";
    }

    v90 = [(MADAutoAssetStager *)self assetTargetOSVersion];
    if (v90)
    {
      v9 = [(MADAutoAssetStager *)self assetTargetOSVersion];
    }

    else
    {
      v9 = @"N";
    }

    v85 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
    if (v85)
    {
      v11 = [(MADAutoAssetStager *)self assetTargetBuildVersion];
    }

    else
    {
      v11 = @"N";
    }

    v13 = [(MADAutoAssetStager *)self assetTargetTrainName];
    if (v13)
    {
      v98 = [(MADAutoAssetStager *)self assetTargetTrainName];
    }

    else
    {
      v98 = @"N";
    }

    v15 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
    if (v15)
    {
      v96 = [(MADAutoAssetStager *)self assetTargetRestoreVersion];
    }

    else
    {
      v96 = @"N";
    }

    v20 = [(MADAutoAssetStager *)self stagingClientRequest];
    v21 = @"Y";
    v78 = v20;
    if (!v20)
    {
      v21 = @"N";
    }

    v72 = v21;
    v76 = [(MADAutoAssetStager *)self activeJobDescriptor];
    v101 = v6;
    v92 = v7;
    v88 = v9;
    v82 = v13;
    v84 = v11;
    v80 = v15;
    if (v76)
    {
      v63 = [(MADAutoAssetStager *)self activeJobDescriptor];
      v74 = [v63 summary];
    }

    else
    {
      v74 = @"N";
    }

    v70 = [(MADAutoAssetStager *)self candidatesForStaging];
    v66 = [v70 count];
    v68 = [(MADAutoAssetStager *)self determiningBySelector];
    v35 = [v68 count];
    v36 = [(MADAutoAssetStager *)self availableForStaging];
    v37 = [v36 count];
    v38 = [(MADAutoAssetStager *)self awaitingStagingAttempt];
    v39 = [v38 count];
    v40 = [(MADAutoAssetStager *)self successfullyStaged];
    v41 = [v40 count];
    v42 = [(MADAutoAssetStager *)self eliminationSelectors];
    v43 = [v42 count];
    v44 = [(MADAutoAssetStager *)self eliminationSelectorsAcknowledged];
    v46 = v39;
    v32 = v101;
    v99 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[ALL][fromOS:%@,fromBuild:%@,targetOS:%@,targetBuild:%@|targetTrain:%@|targetRestoreVersion:%@|clientRequest:%@|activeDescriptor:%@|candidates:%ld,determining:%ld,available:%ld|awaitingStaging:%ld|staged:%ld|elimination:%ld,eliminationAck:%ld]", v101, v92, v88, v84, v98, v96, v72, v74, v66, v35, v37, v46, v41, v43, [v44 count]);

    if (v76)
    {
    }

    v33 = v102;
    v34 = v93;
    if (v80)
    {
    }

    if (v82)
    {
    }

    if (v85)
    {
    }

    if (v90)
    {
    }

    if (v93)
    {
    }
  }

  if (v33)
  {
  }

  return v99;
}

- (id)_updateLatestSummary
{
  v3 = [(MADAutoAssetStager *)self autoStagerFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(MADAutoAssetStager *)self summary];
  [(MADAutoAssetStager *)self setLatestSafeSummary:v5];

  return [(MADAutoAssetStager *)self latestSafeSummary];
}

- (int64_t)_countOfEntriesDictionaryOfArray:(id)a3
{
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [v3 safeObjectForKey:*(*(&v11 + 1) + 8 * i) ofClass:objc_opt_class()];
        v6 += [v9 count];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)setPersistedStateCaching:(BOOL)a3
{
  v4 = +[MADAutoAssetStager autoAssetStager];
  v5 = [v4 autoStagerFSM];
  v6 = [v5 extendedStateQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __47__MADAutoAssetStager_setPersistedStateCaching___block_invoke;
  v8[3] = &unk_4B3488;
  v9 = v4;
  v10 = a3;
  v7 = v4;
  dispatch_sync(v6, v8);
}

void __47__MADAutoAssetStager_setPersistedStateCaching___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCachingEnabled:*(a1 + 40)];
  v2 = [*(a1 + 32) persistedState];
  [v2 flushPersistedStateCacheAndSetCachingBehaviour:*(a1 + 40)];

  v3 = [*(a1 + 32) persistedTargetLookupResults];
  [v3 flushPersistedStateCacheAndSetCachingBehaviour:*(a1 + 40)];

  v4 = [*(a1 + 32) persistedSetLookupResults];
  [v4 flushPersistedStateCacheAndSetCachingBehaviour:*(a1 + 40)];

  v5 = [*(a1 + 32) persistedAvailableForStagingByTarget];
  [v5 flushPersistedStateCacheAndSetCachingBehaviour:*(a1 + 40)];

  v6 = [*(a1 + 32) targetLookupResults];
  [v6 removeAllObjects];
}

- (void)trackSelectorForDescriptor:(id)a3 inContainer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [v7 assetType];
  v8 = [v7 assetSpecifier];
  v9 = [v7 assetVersion];

  [(MADAutoAssetStager *)self trackSelectorInContainer:v6 forAssetType:v10 forAssetSpecifier:v8 forAssetVersion:v9];
}

- (void)trackSelectorForSetEntry:(id)a3 inContainer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v13 = [v7 assetSelector];
  v8 = [v13 assetType];
  v9 = [v7 assetSelector];
  v10 = [v9 assetSpecifier];
  v11 = [v7 assetSelector];

  v12 = [v11 assetVersion];
  [(MADAutoAssetStager *)self trackSelectorInContainer:v6 forAssetType:v8 forAssetSpecifier:v10 forAssetVersion:v12];
}

- (void)trackSelectorInContainer:(id)a3 forAssetType:(id)a4 forAssetSpecifier:(id)a5 forAssetVersion:(id)a6
{
  v15 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = v11;
  if (v9 && v10 && v11)
  {
    v13 = [v15 safeObjectForKey:v9 ofClass:objc_opt_class()];
    if (!v13)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
    }

    v14 = v13;
    [v13 setSafeObject:v12 forKey:v10];
    [v15 setSafeObject:v14 forKey:v9];
  }
}

- (id)selectorContainerAsString:(id)a3
{
  v3 = a3;
  v4 = [[NSMutableString alloc] initWithString:@"["];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
  v21 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v21)
  {
    v5 = 1;
    v20 = *v29;
    do
    {
      v6 = 0;
      do
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v6;
        v7 = *(*(&v28 + 1) + 8 * v6);
        v8 = [obj safeObjectForKey:v7 ofClass:objc_opt_class()];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v25;
          v12 = 1;
          v13 = v5;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v25 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v15 = *(*(&v24 + 1) + 8 * i);
              v16 = [v8 safeObjectForKey:v15 ofClass:objc_opt_class()];
              v17 = v16;
              if (v13)
              {
                [v4 appendFormat:@"%@:%@^%@", v7, v15, v16];
              }

              else if (v12)
              {
                [v4 appendFormat:@"||%@:%@^%@", v7, v15, v16];
              }

              else
              {
                [v4 appendFormat:@"|%@^%@", v15, v16, v19];
              }

              v12 = 0;
              v13 = 0;
            }

            v10 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
            v12 = 0;
            v13 = 0;
            v5 = 0;
          }

          while (v10);
        }

        v6 = v23 + 1;
      }

      while ((v23 + 1) != v21);
      v21 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v21);
  }

  [v4 appendString:@"]"];

  return v4;
}

+ (void)shutdown
{
  v2 = +[MADAutoAssetStager autoAssetStager];
  v3 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "{AUTO-STAGER:shutdown}: Dispatching shutdown request for autoAssetStager", buf, 2u);
  }

  v4 = [v2 autoStagerFSM];
  v5 = [v4 extendedStateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __30__MADAutoAssetStager_shutdown__block_invoke;
  block[3] = &unk_4B2AA0;
  v9 = v2;
  v6 = v2;
  dispatch_sync(v5, block);

  v7 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "{AUTO-STAGER:shutdown}: Successfully shut down autoAssetStager", buf, 2u);
  }
}

void __30__MADAutoAssetStager_shutdown__block_invoke(uint64_t a1)
{
  v2 = _MADLog(@"AutoStager");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "{AUTO-STAGER:shutdown}: Shutdown request running on queue", v5, 2u);
  }

  v3 = [*(a1 + 32) autoStagerFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_suspend(v4);
}

@end