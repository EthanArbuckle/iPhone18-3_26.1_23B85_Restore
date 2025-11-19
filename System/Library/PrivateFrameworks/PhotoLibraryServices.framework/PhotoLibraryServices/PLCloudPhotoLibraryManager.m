@interface PLCloudPhotoLibraryManager
+ (BOOL)needResetSyncErrorType:(id)a3;
+ (id)_lastKnownCloudVersionInLibrary:(id)a3;
- ($3CC19D079FD0B010EE84973AA846B91B)currentTransferProgress;
- (BOOL)_canExternallyTransitionToNewLibraryStateIgnoringPause:(BOOL)a3;
- (BOOL)_hasAvalancheIncomingWork;
- (BOOL)_hasIncomingWorkFileMarker;
- (BOOL)_hasItemToDownload;
- (BOOL)_setupTimerForUnpause;
- (BOOL)_shouldResetICloudBackupExclusionPaths;
- (BOOL)isCloudPhotoLibraryEnabled;
- (BOOL)isReadyForAnalysis;
- (BOOL)isResourceTransferTaskAliveWithTaskWithIdentifier:(id)a3;
- (BOOL)overrideSystemBudgetsForSyncSession:(BOOL)a3 pauseReason:(id)a4 forSystemBudgets:(unint64_t)a5;
- (BOOL)setPrefetchMode:(int64_t)a3 error:(id *)a4;
- (CGSize)_targetSizeForInputSize:(CGSize)a3 maxPixelSize:(unint64_t)a4;
- (PLCloudPhotoLibraryManager)initWithLibraryServicesManager:(id)a3;
- (PLLibraryServicesManager)libraryServicesManager;
- (PLPhotoLibraryPathManager)pathManager;
- (id)_assetResourceForAsset:(id)a3 resourceType:(unint64_t)a4 masterResourceOnly:(BOOL)a5 isPhoto:(BOOL *)a6;
- (id)_calculateUnpauseTimeForPauseTime:(id)a3;
- (id)_convertToIdentifierMapFromCPLScopeIdentifierMap:(id)a3;
- (id)_debugNameForState:(unint64_t)a3;
- (id)_fetchEventsFromCloudChangeTrackerInLibrary:(id)a3;
- (id)_identifierForResource:(id)a3;
- (id)_inMemoryTrackerStateForDebug;
- (id)cacheDeleteSupport;
- (id)cplConfiguration;
- (id)cplLibrary;
- (id)cplStatus;
- (id)readCloudTrackerToken;
- (id)readLocalVersion;
- (id)readRulesTrackerToken;
- (int64_t)sizeOfResourcesToUploadByCPL:(id *)a3;
- (unint64_t)_inq_numberOfOtherItemsToDownloadInLibrary:(id)a3;
- (unint64_t)_inq_numberOfOtherItemsToUploadInLibrary:(id)a3;
- (unint64_t)_inq_numberOfPhotosToDownloadInLibrary:(id)a3;
- (unint64_t)_inq_numberOfPhotosToUploadInLibrary:(id)a3;
- (unint64_t)_inq_numberOfVideosToDownloadInLibrary:(id)a3;
- (unint64_t)_inq_numberOfVideosToUploadInLibrary:(id)a3;
- (void)_appWithBundleIdentifier:(id)a3 changedStateToForeground:(BOOL)a4;
- (void)_callBlocksWaitingForLibraryOpen;
- (void)_callDeviceLibraryConfigurationChangeRequestCompletionHandlersWithError:(id)a3;
- (void)_callPushAllChangesCompletionHandlersIfNecessary;
- (void)_cameraChangedStateToForeground:(BOOL)a3;
- (void)_checkAndMarkPurgeableResources:(id)a3 checkIfSafe:(BOOL)a4 checkServerIfNecessary:(BOOL)a5 urgency:(int64_t)a6 completionHandler:(id)a7;
- (void)_checkEnableState;
- (void)_checkForPushedMastersInLibrary:(id)a3;
- (void)_checkForWorkInProgress;
- (void)_checkIfSharedLibraryDedupeIsDisabled;
- (void)_constructUnpauseTimerFrom:(id)a3 to:(id)a4;
- (void)_createDeletionRecordsIfNecessary;
- (void)_disableOpportunisticTasks;
- (void)_disableaCPLAfterZoneWipedInCloudIfNecessaryWithStatus:(id)a3 transaction:(id)a4;
- (void)_disableiCPLSyncWithResetMode:(int64_t)a3;
- (void)_disableiCPLWillBecomeNonSyncablePhotoLibrary:(BOOL)a3 resetMode:(int64_t)a4;
- (void)_doPause;
- (void)_doResetSync:(int64_t)a3 inLibrary:(id)a4;
- (void)_doUnpause;
- (void)_downloadFromCloudInLibrary:(id)a3;
- (void)_enableOpportunisticTasks;
- (void)_enableiCPL;
- (void)_fetchNewEventsFromCloudChangeTrackerInLibrary:(id)a3;
- (void)_finishUploadWithNoBatchesToUploadInLibrary:(id)a3;
- (void)_finishedUnsharingPendingAssetsSharedToScopeWithTransaction:(id)a3 error:(id)a4;
- (void)_fixMasterStatusIn:(id)a3 inLibrary:(id)a4;
- (void)_getStatusChanges:(id)a3 transaction:(id)a4 notificationGeneration:(unint64_t)a5 inLibrary:(id)a6;
- (void)_getStatusForPendingRecordsSharedToScopeWithIdentifier:(id)a3 maximumCount:(unint64_t)a4 completionHandler:(id)a5;
- (void)_handleFinalizeSessionError:(id)a3 commitError:(id)a4 uploadBatchContainer:(id)a5 needResetSync:(BOOL)a6 forTransaction:(id)a7 inLibrary:(id)a8;
- (void)_handleOptimizeSettingChange;
- (void)_handleOptimizeSettingChangeInLibrary:(id)a3 withCompletionHandler:(id)a4;
- (void)_handleStateTransistionAfterDisableiCPL;
- (void)_initCPLLibraryMode;
- (void)_initCacheDeleteSupport;
- (void)_initDeviceLibraryConfiguration;
- (void)_initRecoveryManager;
- (void)_initResourceManager;
- (void)_initializeMasterAndSizeCalculationinLibrary:(id)a3;
- (void)_linkFileFrom:(id)a3 to:(id)a4;
- (void)_markPurgeableNextBatchOfResources:(id)a3 urgency:(int64_t)a4 checkIfSafe:(BOOL)a5 inLibrary:(id)a6 completionHandler:(id)a7;
- (void)_markResourceObjectIDsAsPurgeable:(id)a3 urgency:(int64_t)a4 inLibrary:(id)a5;
- (void)_migrateFromChangeHubToCoreDataIfNecessary;
- (void)_notifyCPLStatus:(id)a3 didChange:(BOOL)a4 andCPLConfiguration:(id)a5;
- (void)_openCPLLibrary;
- (void)_pause;
- (void)_processDownloadBatchWithSession:(id)a3 inLibrary:(id)a4;
- (void)_processNextTransaction;
- (void)_processRulesEvaluationIfNeeded;
- (void)_processUploadBatchInLibrary:(id)a3;
- (void)_processUploadBatchWithStartupFailureCount:(unint64_t)a3 orderKeyManager:(id)a4 inLibrary:(id)a5;
- (void)_reconcileNextCollectionShare:(id)a3 completionHandler:(id)a4;
- (void)_reconcileSharedStreamCollectionShareParticipantsWithCPLSettings:(id)a3;
- (void)_reportOptimizeSettingChangeWithCompletionHandler:(id)a3;
- (void)_repushAssetsWithImportedByBundleIdentifier;
- (void)_repushMasterWithMissingMediaMetadata;
- (void)_repushVideoAssetsMetadata;
- (void)_resetCPLLibrary;
- (void)_resetCacheDeleteSupport;
- (void)_resetResourceManager;
- (void)_runAsyncOnIsolationQueueWithTransaction:(id)a3 afterDelay:(double)a4 block:(id)a5;
- (void)_runAsyncOnIsolationQueueWithTransaction:(id)a3 block:(id)a4;
- (void)_runOnLibraryOpenWithTransaction:(id)a3 block:(id)a4;
- (void)_runOneTimeMigrationStepsIfNecessaryInLibrary:(id)a3;
- (void)_runOneTimeMigrationStepsWithoutiCPLIfNecessary;
- (void)_runSyncOnIsolationQueueWithBlock:(id)a3;
- (void)_saveLastKnownCloudChangeTrackerTokenToDiskWithContext:(id)a3;
- (void)_setReadyForAnalysisWithCPLStatus:(id)a3;
- (void)_setToDownloadCountsForImages:(unint64_t)a3 videos:(unint64_t)a4;
- (void)_setupPLCPLPlistInLibrary:(id)a3;
- (void)_startLibraryScopeRulesChangeTrackerInQueue;
- (void)_startWorkInProgressTimer;
- (void)_stopUnpauseTimer;
- (void)_stopWorkInProgressTimer;
- (void)_transitionToState:(unint64_t)a3;
- (void)_unpause;
- (void)_unshareBatchOfPendingAssetsSharedToScopeWithTransaction:(id)a3;
- (void)_updateBackupExclusionPathsAfterRemoveCPLDirectory;
- (void)_updateLocalStaleResourceWithCPLResource:(id)a3 inLibrary:(id)a4;
- (void)_updatePendingResetSyncDate;
- (void)_updateThumbnailDataForAsset:(id)a3 withImageFileURL:(id)a4;
- (void)_updateThumbnailForAsset:(id)a3 withCloudThumbnailImageFileURL:(id)a4;
- (void)_updateTransferCountsInLibrary:(id)a3;
- (void)_updateWithCPLResource:(id)a3 isHighPriority:(BOOL)a4 isForeground:(BOOL)a5 inLibrary:(id)a6 completionHandler:(id)a7;
- (void)_uploadFullPhotoLibraryToCloud:(id)a3;
- (void)_uploadToCloudForEventsResult:(id)a3 inLibrary:(id)a4;
- (void)acceptCPLShare:(id)a3 completionHandler:(id)a4;
- (void)activateScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)beginsSignificantWorkWithResourcesSize:(unint64_t)a3;
- (void)boostPriorityForMomentShareWithScopeIdentifier:(id)a3 completionHandler:(id)a4;
- (void)clearPrefetchState;
- (void)clearPurgeableResourcesMatchingPredicate:(id)a3 inLibrary:(id)a4 completionHandler:(id)a5;
- (void)cloudChangeTrackerDidReceiveChangesWithTransaction:(id)a3;
- (void)configurationDidChange:(id)a3;
- (void)cplConfigurationWithCompletionHandler:(id)a3;
- (void)cplHasBackgroundDownloadOperationsWithCompletionHandler:(id)a3;
- (void)deactivateScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)deleteResources:(id)a3 checkServerIfNecessary:(BOOL)a4 completionHandler:(id)a5;
- (void)disableiCPLWithCompletionHandler:(id)a3;
- (void)downloadAsset:(id)a3 resourceType:(unint64_t)a4 masterResourceOnly:(BOOL)a5 highPriority:(BOOL)a6 clientBundleID:(id)a7 proposedTaskIdentifier:(id)a8 taskDidBeginHandler:(id)a9 progressBlock:(id)a10 completionHandler:(id)a11;
- (void)downloadResource:(id)a3 highPriority:(BOOL)a4 clientBundleID:(id)a5 proposedTaskIdentifier:(id)a6 taskDidBeginHandler:(id)a7 progressBlock:(id)a8 completionHandler:(id)a9;
- (void)downloadResource:(id)a3 options:(id)a4 clientBundleID:(id)a5 proposedTaskIdentifier:(id)a6 taskDidBeginHandler:(id)a7 progressBlock:(id)a8 completionHandler:(id)a9;
- (void)downloadResourceInMemory:(id)a3 clientBundleID:(id)a4 proposedTaskIdentifier:(id)a5 taskDidBeginHandler:(id)a6 completionHandler:(id)a7;
- (void)downloadResourceInMemoryForAsset:(id)a3 resourceType:(unint64_t)a4 masterResourceOnly:(BOOL)a5 clientBundleID:(id)a6 proposedTaskIdentifier:(id)a7 taskDidBeginHandler:(id)a8 completionHandler:(id)a9;
- (void)enableiCPLWithCompletionHandler:(id)a3;
- (void)endUserSessionWithCompletionHandler:(id)a3;
- (void)endsSignificantWork;
- (void)fetchAdjustmentDataForAsset:(id)a3 completionHandler:(id)a4;
- (void)fetchComputeStatesForRecordsWithScopedIdentifiers:(id)a3 onDemand:(BOOL)a4 completionHandler:(id)a5;
- (void)fetchResourcesForAsset:(id)a3 completionHandler:(id)a4;
- (void)fetchShareFromShareURL:(id)a3 completionHandler:(id)a4;
- (void)forceSyncMomentSharesWithScopeIdentifiers:(id)a3;
- (void)getCPLStateForDebug:(BOOL)a3 completionHandler:(id)a4;
- (void)getCloudScopedIdentifiersForLocalIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)getLibraryScopeStatusCountsForScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getStreamingURLForAsset:(id)a3 resourceType:(unint64_t)a4 intent:(unint64_t)a5 hints:(id)a6 timeRange:(id *)a7 clientBundleID:(id)a8 completionHandler:(id)a9;
- (void)getSystemBudgetsWithCompletionHandler:(id)a3;
- (void)invalidate;
- (void)invalidateUploadDownloadCountCoalescer;
- (void)libraryManager:(id)a3 backgroundDownloadDidFailForResource:(id)a4;
- (void)libraryManager:(id)a3 backgroundDownloadDidFinishForResource:(id)a4;
- (void)libraryManager:(id)a3 downloadDidFinishForResourceTransferTask:(id)a4 finalResource:(id)a5 withError:(id)a6;
- (void)libraryManager:(id)a3 downloadDidProgress:(float)a4 forResourceTransferTask:(id)a5;
- (void)libraryManager:(id)a3 downloadDidStartForResourceTransferTask:(id)a4;
- (void)libraryManager:(id)a3 inMemoryDownloadDidFinishForResourceTransferTask:(id)a4 data:(id)a5 withError:(id)a6;
- (void)libraryManager:(id)a3 provideLocalResource:(id)a4 recordClass:(Class)a5 completionHandler:(id)a6;
- (void)libraryManager:(id)a3 providePayloadForComputeStates:(id)a4 inFolderWithURL:(id)a5 completionHandler:(id)a6;
- (void)libraryManager:(id)a3 pushAllChangesWithCompletionHandler:(id)a4;
- (void)libraryManager:(id)a3 uploadDidFinishForResourceTransferTask:(id)a4 withError:(id)a5;
- (void)libraryManager:(id)a3 uploadDidProgress:(float)a4 forResourceTransferTask:(id)a5;
- (void)libraryManager:(id)a3 uploadDidStartForResourceTransferTask:(id)a4;
- (void)libraryManagerDidChangeConfiguration:(id)a3;
- (void)libraryManagerHasChangesToPull:(id)a3;
- (void)libraryManagerHasStatusChanges:(id)a3;
- (void)libraryManagerStatusDidChange:(id)a3;
- (void)markPurgeableResourcesMatchingPredicate:(id)a3 urgency:(int64_t)a4 checkIfSafe:(BOOL)a5 inLibrary:(id)a6 completionHandler:(id)a7;
- (void)photosPreferencesChanged;
- (void)publishCPLScopeChange:(id)a3 completionHandler:(id)a4;
- (void)publishLibraryScopeWithCPLShare:(id)a3 title:(id)a4 completionHandler:(id)a5;
- (void)queryUserIdentitiesWithParticipants:(id)a3 completionHandler:(id)a4;
- (void)refreshLibraryScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)removeAllChangeHubKeys;
- (void)removeParticipantsWithParticipantUUIDs:(id)a3 fromLibraryScopeWithIdentifier:(id)a4 retentionPolicy:(int64_t)a5 exitSource:(int64_t)a6 completionHandler:(id)a7;
- (void)reportMiscInformation:(id)a3;
- (void)requestDeviceLibraryConfigurationChange:(int64_t)a3 completionHandler:(id)a4;
- (void)resetSyncDueToMigrationMarker;
- (void)resolveLocalIdentifiersForCloudIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)saveCloudTrackerToken:(id)a3 withContext:(id)a4;
- (void)saveRulesTrackerToken:(id)a3;
- (void)sendBudgetOverrideAnalytics:(BOOL)a3 pauseReason:(id)a4;
- (void)setCPLConfiguration:(id)a3;
- (void)setCPLLibrary:(id)a3;
- (void)setCPLStatus:(id)a3;
- (void)setPause:(BOOL)a3 reason:(signed __int16)a4;
- (void)sharedLibraryRampCheckWithCompletionHandler:(id)a3;
- (void)sizeOfResourcesToUploadDidChangeForLibraryManager:(id)a3;
- (void)startAssetRecoveryWithTransaction:(id)a3;
- (void)startAutomaticPrefetchOrPrune;
- (void)startExitFromLibraryScopeWithIdentifier:(id)a3 retentionPolicy:(int64_t)a4 exitSource:(int64_t)a5 completionHandler:(id)a6;
- (void)startLibraryScopeRulesChangeTracker;
- (void)startUnsharingPendingAssetsSharedToScopeWithIdentifier:(id)a3;
- (void)statusDidChange:(id)a3;
- (void)stopLibraryScopeRulesChangeTracker;
- (void)sync;
- (void)updateLibraryScopeWithCPLScopeChange:(id)a3 completionHandler:(id)a4;
- (void)updateTransferCountsWithInsertedPhotoCount:(unint64_t)a3 insertedVideoCount:(unint64_t)a4 inLibrary:(id)a5;
- (void)workerCoordinatorDidFinishAllSubmittedJobsOnBundle:(id)a3;
@end

@implementation PLCloudPhotoLibraryManager

- (BOOL)isReadyForAnalysis
{
  v2 = self;
  objc_sync_enter(v2);
  unsafe_readyForAnalysis = v2->_unsafe_readyForAnalysis;
  objc_sync_exit(v2);

  return unsafe_readyForAnalysis;
}

- (PLLibraryServicesManager)libraryServicesManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);

  return WeakRetained;
}

- (id)_inMemoryTrackerStateForDebug
{
  v2 = [(PLCloudPhotoLibraryUploadTracker *)self->_uploadTracker currentStateForDebug];
  v3 = v2;
  v4 = MEMORY[0x1E696AEC0];
  if (v2)
  {
    v5 = [v2 componentsSeparatedByString:@"\n"];
    v6 = [v5 componentsJoinedByString:@"\n\t"];
    v7 = [v4 stringWithFormat:@"In-memory tracker: %@", v6];
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"In-memory tracker: %@", @"not initialized"];
  }

  return v7;
}

- (id)_debugNameForState:(unint64_t)a3
{
  if (a3 > 4)
  {
    if (a3 <= 6)
    {
      v9 = @"Idle";
      if (a3 != 6)
      {
        v9 = 0;
      }

      if (a3 == 5)
      {
        v8 = @"Downloading";
      }

      else
      {
        v8 = v9;
      }
    }

    else
    {
      switch(a3)
      {
        case 7uLL:
          v8 = @"ForceResetSync";
          break;
        case 8uLL:
          v10 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
          v11 = [v10 libraryBundle];
          v12 = [v11 indicatorFileCoordinator];

          v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Paused (%d)", objc_msgSend(v12, "currentPauseReason")];

          break;
        case 9uLL:
          v8 = @"Deactivated";
          break;
        default:
          v8 = 0;
          break;
      }
    }
  }

  else
  {
    v3 = @"Opened";
    v4 = @"Fetching";
    v5 = @"Uploading";
    if (a3 != 4)
    {
      v5 = 0;
    }

    if (a3 != 3)
    {
      v4 = v5;
    }

    if (a3 != 2)
    {
      v3 = v4;
    }

    v6 = @"Uninitialized";
    v7 = @"Opening";
    if (a3 != 1)
    {
      v7 = 0;
    }

    if (a3)
    {
      v6 = v7;
    }

    if (a3 <= 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }
  }

  return v8;
}

- (id)_convertToIdentifierMapFromCPLScopeIdentifierMap:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v17}];
        v12 = [v10 identifier];
        v13 = [v11 identifier];
        v14 = v13;
        if (v12)
        {
          v15 = v13 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          [v4 setObject:v13 forKey:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)getCloudScopedIdentifiersForLocalIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager getCloudScopedIdentifiersForLocalIdentifiers:completionHandler:]"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__PLCloudPhotoLibraryManager_getCloudScopedIdentifiersForLocalIdentifiers_completionHandler___block_invoke;
  v11[3] = &unk_1E7576F38;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v8 block:v11];
}

void __93__PLCloudPhotoLibraryManager_getCloudScopedIdentifiersForLocalIdentifiers_completionHandler___block_invoke(id *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] cplLibrary];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1[5], "count")}];
    WeakRetained = objc_loadWeakRetained(a1[4] + 58);
    v5 = [WeakRetained mainScopeIdentifier];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = a1[5];
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [objc_alloc(MEMORY[0x1E6994BB8]) initWithScopeIdentifier:v5 identifier:*(*(&v17 + 1) + 8 * i)];
          [v3 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __93__PLCloudPhotoLibraryManager_getCloudScopedIdentifiersForLocalIdentifiers_completionHandler___block_invoke_2;
    v14[3] = &unk_1E7567290;
    v12 = a1[6];
    v15 = v3;
    v16 = v12;
    v14[4] = a1[4];
    v13 = v3;
    [v2 getCloudScopedIdentifiersForLocalScopedIdentifiers:v13 completionHandler:v14];

    goto LABEL_12;
  }

  if (a1[6])
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41022 userInfo:0];
    (*(a1[6] + 2))();
LABEL_12:
  }
}

void __93__PLCloudPhotoLibraryManager_getCloudScopedIdentifiersForLocalIdentifiers_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 48);
  if (v6)
  {
    if (v7)
    {
      (*(v7 + 16))(*(a1 + 48), 0, v6);
    }

    else if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v9 = *(*(a1 + 32) + 96);
      if (v9 == 2)
      {
        v10 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v9 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v10 = ;
      }

      v11 = v10;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 40);
        v13 = 138543618;
        v14 = v12;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Failed to get cloud scoped identifiers from local identifiers %{public}@. Error: %@", &v13, 0x16u);
      }
    }
  }

  else if (v7)
  {
    v8 = [*(a1 + 32) _convertToIdentifierMapFromCPLScopeIdentifierMap:v5];
    (*(v7 + 16))(v7, v8, 0);
  }
}

- (void)resolveLocalIdentifiersForCloudIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager resolveLocalIdentifiersForCloudIdentifiers:completionHandler:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __91__PLCloudPhotoLibraryManager_resolveLocalIdentifiersForCloudIdentifiers_completionHandler___block_invoke;
  v12[3] = &unk_1E7573C00;
  v12[4] = self;
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v9 = v8;
  v10 = v7;
  v11 = v6;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v9 block:v12];
}

void __91__PLCloudPhotoLibraryManager_resolveLocalIdentifiersForCloudIdentifiers_completionHandler___block_invoke(id *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] cplLibrary];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1[5], "count")}];
    WeakRetained = objc_loadWeakRetained(a1[4] + 58);
    v5 = [WeakRetained mainScopeIdentifier];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = a1[5];
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [objc_alloc(MEMORY[0x1E6994BB8]) initWithScopeIdentifier:v5 identifier:*(*(&v17 + 1) + 8 * i)];
          [v3 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __91__PLCloudPhotoLibraryManager_resolveLocalIdentifiersForCloudIdentifiers_completionHandler___block_invoke_2;
    v14[3] = &unk_1E7567290;
    v12 = a1[7];
    v13 = a1[4];
    v16 = v12;
    v14[4] = v13;
    v15 = a1[6];
    [v2 resolveLocalScopedIdentifiersForCloudScopedIdentifiers:v3 completionHandler:v14];

    goto LABEL_12;
  }

  if (a1[7])
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41022 userInfo:0];
    (*(a1[7] + 2))();
LABEL_12:
  }
}

void __91__PLCloudPhotoLibraryManager_resolveLocalIdentifiersForCloudIdentifiers_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 48);
  if (v5)
  {
    if (v6)
    {
      (*(v6 + 16))(*(a1 + 48), 0, v5);
    }
  }

  else if (v6)
  {
    v7 = [*(a1 + 32) _convertToIdentifierMapFromCPLScopeIdentifierMap:v8];
    (*(v6 + 16))(v6, v7, 0);
  }

  [*(a1 + 40) stillAlive];
}

- (void)queryUserIdentitiesWithParticipants:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager queryUserIdentitiesWithParticipants:completionHandler:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__PLCloudPhotoLibraryManager_queryUserIdentitiesWithParticipants_completionHandler___block_invoke;
  v12[3] = &unk_1E7573C00;
  v12[4] = self;
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v9 = v8;
  v10 = v7;
  v11 = v6;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v9 block:v12];
}

void __84__PLCloudPhotoLibraryManager_queryUserIdentitiesWithParticipants_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cplLibrary];
  if (v2)
  {
    v3 = *(a1 + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __84__PLCloudPhotoLibraryManager_queryUserIdentitiesWithParticipants_completionHandler___block_invoke_2;
    v6[3] = &unk_1E75671A0;
    v8 = *(a1 + 56);
    v7 = *(a1 + 48);
    [v2 queryUserDetailsForShareParticipants:v3 completionHandler:v6];
  }

  else
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6994990] code:2 userInfo:0];
      (*(v4 + 16))(v4, 0, v5);
    }
  }
}

uint64_t __84__PLCloudPhotoLibraryManager_queryUserIdentitiesWithParticipants_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 stillAlive];
}

- (void)forceSyncMomentSharesWithScopeIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager forceSyncMomentSharesWithScopeIdentifiers:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__PLCloudPhotoLibraryManager_forceSyncMomentSharesWithScopeIdentifiers___block_invoke;
  v8[3] = &unk_1E75761B8;
  v8[4] = self;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v6 block:v8];
}

void __72__PLCloudPhotoLibraryManager_forceSyncMomentSharesWithScopeIdentifiers___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cplLibrary];
  if (v2)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v3 = *(*(a1 + 32) + 96);
      if (v3 == 2)
      {
        v4 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v3 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v4 = ;
      }

      v7 = v4;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        *buf = 138412290;
        v15 = v8;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Forcing sync for %@", buf, 0xCu);
      }
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __72__PLCloudPhotoLibraryManager_forceSyncMomentSharesWithScopeIdentifiers___block_invoke_595;
    v12[3] = &unk_1E7567268;
    v9 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = *(a1 + 48);
    [v2 forceSynchronizingScopeWithIdentifiers:v9 completionHandler:v12];
  }

  else if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v5 = *(*(a1 + 32) + 96);
    if (v5 == 2)
    {
      v6 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v5 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v6 = ;
    }

    v10 = v6;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Failed to force sync for %@: No CPL library", buf, 0xCu);
    }
  }
}

void __72__PLCloudPhotoLibraryManager_forceSyncMomentSharesWithScopeIdentifiers___block_invoke_595(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v4 = *(*(a1 + 32) + 96);
    if (v4 == 2)
    {
      v5 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v4 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v5 = ;
    }

    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Force sync task %@", &v7, 0xCu);
    }
  }

  [*(a1 + 40) stillAlive];
}

- (void)boostPriorityForMomentShareWithScopeIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager boostPriorityForMomentShareWithScopeIdentifier:completionHandler:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __95__PLCloudPhotoLibraryManager_boostPriorityForMomentShareWithScopeIdentifier_completionHandler___block_invoke;
  v12[3] = &unk_1E7573C00;
  v12[4] = self;
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v9 = v8;
  v10 = v7;
  v11 = v6;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v9 block:v12];
}

void __95__PLCloudPhotoLibraryManager_boostPriorityForMomentShareWithScopeIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cplLibrary];
  if (v2)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v3 = *(*(a1 + 32) + 96);
      if (v3 == 2)
      {
        v4 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v3 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v4 = ;
      }

      v7 = v4;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        *buf = 138412290;
        v26 = v8;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Boosting priority for %@", buf, 0xCu);
      }
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __95__PLCloudPhotoLibraryManager_boostPriorityForMomentShareWithScopeIdentifier_completionHandler___block_invoke_594;
    v20[3] = &unk_1E7577FC0;
    v19 = *(a1 + 32);
    v9 = *(&v19 + 1);
    v10 = *(a1 + 56);
    *&v11 = *(a1 + 48);
    *(&v11 + 1) = v10;
    v21 = v19;
    v22 = v11;
    [v2 boostPriorityForScopeWithIdentifier:v9 completionHandler:v20];
  }

  else
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v5 = *(*(a1 + 32) + 96);
      if (v5 == 2)
      {
        v6 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v5 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v6 = ;
      }

      v12 = v6;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 40);
        *buf = 138412290;
        v26 = v13;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Failed to boost priority for %@: No CPL library", buf, 0xCu);
      }
    }

    v14 = *(a1 + 56);
    if (v14)
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E6994990];
      v23 = *MEMORY[0x1E696A578];
      v24 = @"CPL hasn't been setup yet";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v18 = [v15 errorWithDomain:v16 code:2 userInfo:v17];
      (*(v14 + 16))(v14, v18);
    }
  }
}

void __95__PLCloudPhotoLibraryManager_boostPriorityForMomentShareWithScopeIdentifier_completionHandler___block_invoke_594(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (*MEMORY[0x1E6994D48])
    {
      goto LABEL_22;
    }

    v4 = *(*(a1 + 32) + 96);
    if (v4 == 2)
    {
      v5 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v4 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v5 = ;
    }

    v8 = v5;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v9 = *(a1 + 40);
    *v15 = 138412290;
    *&v15[4] = v9;
    v10 = "Failed to boost priority for %@";
    v11 = v8;
    v12 = OS_LOG_TYPE_ERROR;
    goto LABEL_20;
  }

  if (*MEMORY[0x1E6994D48])
  {
    goto LABEL_22;
  }

  v6 = *(*(a1 + 32) + 96);
  if (v6 == 2)
  {
    v7 = __CPLAppLibraryOSLogDomain();
  }

  else
  {
    if (v6 == 1)
    {
      __CPLSyndicationOSLogDomain();
    }

    else
    {
      __CPLSystemLibraryOSLogDomain();
    }
    v7 = ;
  }

  v8 = v7;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 40);
    *v15 = 138412290;
    *&v15[4] = v13;
    v10 = "Boosted priority for %@";
    v11 = v8;
    v12 = OS_LOG_TYPE_DEFAULT;
LABEL_20:
    _os_log_impl(&dword_19BF1F000, v11, v12, v10, v15, 0xCu);
  }

LABEL_21:

LABEL_22:
  v14 = *(a1 + 56);
  if (v14)
  {
    (*(v14 + 16))(v14, v3);
  }

  [*(a1 + 48) stillAlive];
}

- (void)acceptCPLShare:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager acceptCPLShare:completionHandler:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__PLCloudPhotoLibraryManager_acceptCPLShare_completionHandler___block_invoke;
  v12[3] = &unk_1E7573C00;
  v12[4] = self;
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v9 = v8;
  v10 = v7;
  v11 = v6;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v9 block:v12];
}

void __63__PLCloudPhotoLibraryManager_acceptCPLShare_completionHandler___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cplLibrary];
  if (v2)
  {
    v3 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__PLCloudPhotoLibraryManager_acceptCPLShare_completionHandler___block_invoke_2;
    v9[3] = &unk_1E7576050;
    v11 = *(a1 + 56);
    v10 = *(a1 + 48);
    [v2 acceptSharedScope:v3 completionHandler:v9];

    v4 = v11;
LABEL_5:

    goto LABEL_6;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E6994990];
    v12 = *MEMORY[0x1E696A578];
    v13[0] = @"CPL hasn't been setup yet";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v8 = [v6 errorWithDomain:v7 code:2 userInfo:v4];
    (*(v5 + 16))(v5, v8);

    goto LABEL_5;
  }

LABEL_6:
}

uint64_t __63__PLCloudPhotoLibraryManager_acceptCPLShare_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 stillAlive];
}

- (void)fetchShareFromShareURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager fetchShareFromShareURL:completionHandler:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__PLCloudPhotoLibraryManager_fetchShareFromShareURL_completionHandler___block_invoke;
  v12[3] = &unk_1E7573C00;
  v12[4] = self;
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v9 = v8;
  v10 = v7;
  v11 = v6;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v9 block:v12];
}

void __71__PLCloudPhotoLibraryManager_fetchShareFromShareURL_completionHandler___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cplLibrary];
  if (v2)
  {
    v3 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71__PLCloudPhotoLibraryManager_fetchShareFromShareURL_completionHandler___block_invoke_2;
    v9[3] = &unk_1E7567240;
    v11 = *(a1 + 56);
    v10 = *(a1 + 48);
    [v2 fetchSharedScopeFromShareURL:v3 completionHandler:v9];

    v4 = v11;
LABEL_5:

    goto LABEL_6;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E6994990];
    v12 = *MEMORY[0x1E696A578];
    v13[0] = @"CPL hasn't been setup yet";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v8 = [v6 errorWithDomain:v7 code:2 userInfo:v4];
    (*(v5 + 16))(v5, 0, v8);

    goto LABEL_5;
  }

LABEL_6:
}

uint64_t __71__PLCloudPhotoLibraryManager_fetchShareFromShareURL_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 stillAlive];
}

- (void)publishCPLScopeChange:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager publishCPLScopeChange:completionHandler:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__PLCloudPhotoLibraryManager_publishCPLScopeChange_completionHandler___block_invoke;
  v12[3] = &unk_1E7573C00;
  v12[4] = self;
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v9 = v8;
  v10 = v6;
  v11 = v7;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v9 block:v12];
}

void __70__PLCloudPhotoLibraryManager_publishCPLScopeChange_completionHandler___block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cplLibrary];
  if (v2)
  {
    if ([*(a1 + 32) isCloudPhotoLibraryEnabled])
    {
      v3 = *(a1 + 40);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __70__PLCloudPhotoLibraryManager_publishCPLScopeChange_completionHandler___block_invoke_2;
      v14[3] = &unk_1E7567240;
      v16 = *(a1 + 56);
      v15 = *(a1 + 48);
      [v2 createScope:v3 completionHandler:v14];

      v4 = v16;
LABEL_9:

      goto LABEL_10;
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E6994990];
      v17 = *MEMORY[0x1E696A578];
      v18 = @"iCloud Photo Library is not enabled";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v8 = v11;
      v9 = v12;
      v10 = 33;
      goto LABEL_8;
    }
  }

  else
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = *MEMORY[0x1E6994990];
      v19 = *MEMORY[0x1E696A578];
      v20[0] = @"CPL hasn't been setup yet";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v8 = v6;
      v9 = v7;
      v10 = 2;
LABEL_8:
      v13 = [v8 errorWithDomain:v9 code:v10 userInfo:v4];
      (*(v5 + 16))(v5, 0, v13);

      goto LABEL_9;
    }
  }

LABEL_10:
  [*(a1 + 48) stillAlive];
}

uint64_t __70__PLCloudPhotoLibraryManager_publishCPLScopeChange_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 stillAlive];
}

- (void)fetchComputeStatesForRecordsWithScopedIdentifiers:(id)a3 onDemand:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager fetchComputeStatesForRecordsWithScopedIdentifiers:onDemand:completionHandler:]"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __107__PLCloudPhotoLibraryManager_fetchComputeStatesForRecordsWithScopedIdentifiers_onDemand_completionHandler___block_invoke;
  v13[3] = &unk_1E75760C8;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v10 block:v13];
}

void __107__PLCloudPhotoLibraryManager_fetchComputeStatesForRecordsWithScopedIdentifiers_onDemand_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cplLibrary];
  if (v2)
  {
    v3 = [*(a1 + 32) libraryServicesManager];
    v4 = [v3 databaseContext];
    v5 = [v4 newShortLivedCplLibraryWithNameSuffix:"-[PLCloudPhotoLibraryManager fetchComputeStatesForRecordsWithScopedIdentifiers:onDemand:completionHandler:]_block_invoke"];

    if ([PLManagedAsset isComputeSyncEnabledForDirection:1 library:v5])
    {
      v6 = objc_alloc_init(MEMORY[0x1E6994B70]);
      v7 = *(a1 + 56);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __107__PLCloudPhotoLibraryManager_fetchComputeStatesForRecordsWithScopedIdentifiers_onDemand_completionHandler___block_invoke_2;
      v12[3] = &unk_1E7577458;
      v8 = *(a1 + 40);
      v13 = *(a1 + 48);
      [v2 fetchComputeStatesForRecordsWithScopedIdentifiers:v8 validator:v6 onDemand:v7 completionHandler:v12];
    }

    else
    {
      v11 = *(a1 + 48);
      v6 = [PLCloudPhotoLibraryError createErrorWithType:18 withDebugMessage:@"CCSS download feature disabled"];
      (*(v11 + 16))(v11, 0, v6);
    }
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = [PLCloudPhotoLibraryError createErrorWithType:15];
    (*(v9 + 16))(v9, 0, v10);
  }
}

- (void)requestDeviceLibraryConfigurationChange:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager requestDeviceLibraryConfigurationChange:completionHandler:]"];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__PLCloudPhotoLibraryManager_requestDeviceLibraryConfigurationChange_completionHandler___block_invoke;
  aBlock[3] = &unk_1E75782F8;
  aBlock[4] = self;
  v8 = v7;
  v19 = v8;
  v20 = a3;
  v9 = _Block_copy(aBlock);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__PLCloudPhotoLibraryManager_requestDeviceLibraryConfigurationChange_completionHandler___block_invoke_583;
  v13[3] = &unk_1E7567218;
  v16 = v9;
  v17 = a3;
  v13[4] = self;
  v14 = v8;
  v15 = v6;
  v10 = v9;
  v11 = v8;
  v12 = v6;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v11 block:v13];
}

void __88__PLCloudPhotoLibraryManager_requestDeviceLibraryConfigurationChange_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cplLibrary];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __88__PLCloudPhotoLibraryManager_requestDeviceLibraryConfigurationChange_completionHandler___block_invoke_2;
  v6[3] = &unk_1E7576168;
  v7 = v2;
  v8 = v4;
  v10 = *(a1 + 48);
  v9 = v3;
  v5 = v2;
  [v4 _runAsyncOnIsolationQueueWithTransaction:v9 block:v6];
}

void __88__PLCloudPhotoLibraryManager_requestDeviceLibraryConfigurationChange_completionHandler___block_invoke_583(uint64_t a1)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[12])
  {
    v3 = *(a1 + 48);
    if (!v3)
    {
      return;
    }

    v4 = v2[57];
    v5 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E69BFF48];
    v25 = *MEMORY[0x1E696A278];
    v26[0] = @"Cannot change library configuration on non-SPL";
    v7 = MEMORY[0x1E695DF20];
    v8 = v26;
    v9 = &v25;
    goto LABEL_4;
  }

  v12 = [v2 isCloudPhotoLibraryEnabled];
  v4 = *(a1 + 64);
  if (v12)
  {
    v13 = *(a1 + 32);
    if (v4 == *(v13 + 456))
    {
      v3 = *(a1 + 48);
      if (v3)
      {
        v5 = MEMORY[0x1E696ABC0];
        v6 = *MEMORY[0x1E69BFF48];
        v23 = *MEMORY[0x1E696A278];
        v24 = @"Cannot change device-libary configuration to the current configuration";
        v7 = MEMORY[0x1E695DF20];
        v8 = &v24;
        v9 = &v23;
LABEL_4:
        v10 = [v7 dictionaryWithObjects:v8 forKeys:v9 count:1];
        v11 = [v5 errorWithDomain:v6 code:41032 userInfo:v10];
        (*(v3 + 16))(v3, 0, v4, v11);
      }
    }

    else
    {
      if (!*(v13 + 416))
      {
        v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v17 = *(a1 + 32);
        v18 = *(v17 + 416);
        *(v17 + 416) = v16;

        v19 = *(a1 + 32);
        if (v19[51] == v19[57])
        {
          [v19 _runOnLibraryOpenWithTransaction:*(a1 + 40) block:*(a1 + 56)];
        }
      }

      v20 = *(a1 + 48);
      if (v20)
      {
        v21 = *(*(a1 + 32) + 416);
        v22 = _Block_copy(v20);
        [v21 addObject:?];
      }
    }
  }

  else
  {
    PLSetCPLDeviceLibraryConfiguration(*(a1 + 64));
    [*(a1 + 32) setDeviceLibraryConfiguration:*(a1 + 64)];
    *(*(a1 + 32) + 408) = *(a1 + 64);
    v14 = *(a1 + 48);
    if (v14)
    {
      v15 = *(v14 + 16);

      v15();
    }
  }
}

void __88__PLCloudPhotoLibraryManager_requestDeviceLibraryConfigurationChange_completionHandler___block_invoke_2(void *a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v3 = *(a1[5] + 96);
      if (v3 == 2)
      {
        v4 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v3 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v4 = ;
      }

      v10 = v4;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1[5] + 456);
        if (v11 > 2)
        {
          v12 = @"unknown";
        }

        else
        {
          v12 = off_1E756E888[v11];
        }

        v13 = v12;
        v14 = a1[7];
        if (v14 > 2)
        {
          v15 = @"unknown";
        }

        else
        {
          v15 = off_1E756E888[v14];
        }

        v16 = v15;
        *buf = 138412546;
        v24 = v13;
        v25 = 2112;
        v26 = v16;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Starting force-backup in preparation for device-library configuration change from %@ to %@", buf, 0x16u);
      }

      v2 = a1[4];
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __88__PLCloudPhotoLibraryManager_requestDeviceLibraryConfigurationChange_completionHandler___block_invoke_578;
    v20[3] = &unk_1E75671F0;
    v17 = a1[6];
    v20[4] = a1[5];
    v18 = v17;
    v19 = a1[7];
    v21 = v18;
    v22 = v19;
    [v2 forceBackupWithCompletionHandler:v20];
  }

  else
  {
    v5 = a1[5];
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E6994990];
    v27 = *MEMORY[0x1E696A578];
    v28[0] = @"CPL hasn't been setup yet";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v9 = [v6 errorWithDomain:v7 code:2 userInfo:v8];
    [v5 _callDeviceLibraryConfigurationChangeRequestCompletionHandlersWithError:v9];
  }
}

void __88__PLCloudPhotoLibraryManager_requestDeviceLibraryConfigurationChange_completionHandler___block_invoke_578(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__PLCloudPhotoLibraryManager_requestDeviceLibraryConfigurationChange_completionHandler___block_invoke_2_579;
  v7[3] = &unk_1E75782F8;
  v8 = v3;
  v9 = v4;
  v10 = a1[6];
  v6 = v3;
  [v4 _runAsyncOnIsolationQueueWithTransaction:v5 block:v7];
}

void __88__PLCloudPhotoLibraryManager_requestDeviceLibraryConfigurationChange_completionHandler___block_invoke_2_579(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {

    [v2 _callDeviceLibraryConfigurationChangeRequestCompletionHandlersWithError:?];
  }

  else
  {
    v4 = [v2 libraryServicesManager];
    v5 = [v4 libraryBundle];
    v6 = [v5 indicatorFileCoordinator];

    if ([v6 isDisableICloudPhotos])
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v7 = *(*(a1 + 40) + 96);
        if (v7 == 2)
        {
          v8 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v7 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v8 = ;
        }

        v11 = v8;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "iCPL requested to disable, unable to change device-library configuration", buf, 2u);
        }
      }

      v12 = *(a1 + 40);
      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E69BFF48];
      v25 = *MEMORY[0x1E696A278];
      v26 = @"Cannot change device-library, iCPL was disabled";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v16 = [v13 errorWithDomain:v14 code:41032 userInfo:v15];
      [v12 _callDeviceLibraryConfigurationChangeRequestCompletionHandlersWithError:v16];
    }

    else
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v9 = *(*(a1 + 40) + 96);
        if (v9 == 2)
        {
          v10 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v9 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v10 = ;
        }

        v17 = v10;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(*(a1 + 40) + 456);
          if (v18 > 2)
          {
            v19 = @"unknown";
          }

          else
          {
            v19 = off_1E756E888[v18];
          }

          v20 = v19;
          v21 = *(a1 + 48);
          if (v21 > 2)
          {
            v22 = @"unknown";
          }

          else
          {
            v22 = off_1E756E888[v21];
          }

          v23 = v22;
          *buf = 138412546;
          v28 = v20;
          v29 = 2112;
          v30 = v23;
          _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Changing device-library configuration from %@ to %@", buf, 0x16u);
        }
      }

      v24 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
      PLSetPendingCPLDeviceLibraryConfiguration(v24);

      *(*(a1 + 40) + 408) = *(a1 + 48);
      [*(a1 + 40) _disableiCPLWillBecomeNonSyncablePhotoLibrary:0 resetMode:3];
    }
  }
}

- (void)_callDeviceLibraryConfigurationChangeRequestCompletionHandlersWithError:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_deviceLibraryConfigurationChangeCompletionHandlers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v11 + 1) + 8 * v9) + 16))(*(*(&v11 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  deviceLibraryConfigurationChangeCompletionHandlers = self->_deviceLibraryConfigurationChangeCompletionHandlers;
  self->_deviceLibraryConfigurationChangeCompletionHandlers = 0;
}

- (void)startUnsharingPendingAssetsSharedToScopeWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager startUnsharingPendingAssetsSharedToScopeWithIdentifier:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__PLCloudPhotoLibraryManager_startUnsharingPendingAssetsSharedToScopeWithIdentifier___block_invoke;
  v8[3] = &unk_1E75761B8;
  v8[4] = self;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v6 block:v8];
}

void __85__PLCloudPhotoLibraryManager_startUnsharingPendingAssetsSharedToScopeWithIdentifier___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 424))
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v3 = *(v2 + 96);
      if (v3 == 2)
      {
        v4 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v3 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v4 = ;
      }

      v7 = v4;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Already un-sharing assets pending push to scope: %@", &v11, 0xCu);
      }
    }
  }

  else
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v5 = *(v2 + 96);
      if (v5 == 2)
      {
        v6 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v5 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v6 = ;
      }

      v9 = v6;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v11 = 138412290;
        v12 = v10;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Start un-sharing assets pending push to scope: %@", &v11, 0xCu);
      }

      v2 = *(a1 + 32);
    }

    objc_storeStrong((v2 + 424), *(a1 + 40));
    [*(a1 + 32) _unshareBatchOfPendingAssetsSharedToScopeWithTransaction:*(a1 + 48)];
  }
}

- (void)_unshareBatchOfPendingAssetsSharedToScopeWithTransaction:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = self->_scopeIdentifierToUnsharePendingAssetsFrom;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__PLCloudPhotoLibraryManager__unshareBatchOfPendingAssetsSharedToScopeWithTransaction___block_invoke;
  v8[3] = &unk_1E75671C8;
  v8[4] = self;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  [(PLCloudPhotoLibraryManager *)self _getStatusForPendingRecordsSharedToScopeWithIdentifier:v7 maximumCount:100 completionHandler:v8];
}

void __87__PLCloudPhotoLibraryManager__unshareBatchOfPendingAssetsSharedToScopeWithTransaction___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v8 = *(a1 + 32);
    v13 = *(a1 + 48);
    v14 = v6;
LABEL_6:
    [v8 _finishedUnsharingPendingAssetsSharedToScopeWithTransaction:v13 error:v14];
    goto LABEL_7;
  }

  v7 = [v5 count];
  v8 = *(a1 + 32);
  if (!v7)
  {
    v13 = *(a1 + 48);
    v14 = 0;
    goto LABEL_6;
  }

  v9 = [v8 libraryServicesManager];
  v10 = [v9 databaseContext];
  v11 = [v10 newShortLivedLibraryWithName:"-[PLCloudPhotoLibraryManager _unshareBatchOfPendingAssetsSharedToScopeWithTransaction:]_block_invoke"];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __87__PLCloudPhotoLibraryManager__unshareBatchOfPendingAssetsSharedToScopeWithTransaction___block_invoke_2;
  v17[3] = &unk_1E75730F8;
  v18 = v5;
  v19 = *(a1 + 40);
  v20 = v11;
  v21 = *(a1 + 32);
  v22 = *(a1 + 48);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __87__PLCloudPhotoLibraryManager__unshareBatchOfPendingAssetsSharedToScopeWithTransaction___block_invoke_576;
  v15[3] = &unk_1E7578848;
  v15[4] = *(a1 + 32);
  v16 = *(a1 + 48);
  v12 = v11;
  [v12 performTransaction:v17 completionHandler:v15];

LABEL_7:
}

void __87__PLCloudPhotoLibraryManager__unshareBatchOfPendingAssetsSharedToScopeWithTransaction___block_invoke_2(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:100];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v42;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v42 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v41 + 1) + 8 * i) record];
        v9 = [v8 scopedIdentifier];
        v10 = [v9 identifier];
        [v2 addObject:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v5);
  }

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@ AND noindex:(%K) = %@", @"cloudAssetGUID", v2, @"libraryScope.scopeIdentifier", *(a1 + 40)];
  v12 = MEMORY[0x1E695D5E0];
  v13 = +[PLManagedAsset entityName];
  v14 = [v12 fetchRequestWithEntityName:v13];

  [v14 setPredicate:v11];
  v15 = [*(a1 + 48) managedObjectContext];
  v40 = 0;
  v16 = [v15 executeFetchRequest:v14 error:&v40];
  v17 = v40;

  if (v16)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v18 = *(*(a1 + 56) + 96);
      if (v18 == 2)
      {
        v19 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v18 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v19 = ;
      }

      v20 = v19;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 40);
        v22 = [v16 count];
        *buf = 138412546;
        v47 = v21;
        v48 = 1024;
        v49 = v22;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "Unsharing pending assets shared to scope: %@, batch count: %d", buf, 0x12u);
      }
    }

    v33 = v17;
    v34 = v16;
    v35 = v14;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v23 = v16;
    v24 = [v23 countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v37;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v37 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v36 + 1) + 8 * j);
          [v28 removeLibraryScopeAndContributors];
          v29 = [v28 libraryScopeShareState];
          v30 = (v29 & 1) - 1;
          if ((v29 & 2) != 0)
          {
            v30 = 1;
          }

          if ((v29 & 4) != 0)
          {
            v30 = 2;
          }

          if ((v29 & 8) != 0)
          {
            v30 = 3;
          }

          if ((v29 & 0x10) != 0)
          {
            v31 = 4;
          }

          else
          {
            v31 = v30;
          }

          [v28 setLibraryScopeShareState:0];
          PLLibraryScopeAssetSetSuggestedByClientType(v31, v28);
          PLLibraryScopeAssetSetUserManuallyRejectedState(1, v28);
          v32 = v28;
          [v32 setLibraryScopeShareState:{objc_msgSend(v32, "libraryScopeShareState") & 0xFFFFFFFFFF7FFFFFLL}];
        }

        v25 = [v23 countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v25);
    }

    v14 = v35;
    v17 = v33;
    v16 = v34;
  }

  else
  {
    [*(a1 + 56) _finishedUnsharingPendingAssetsSharedToScopeWithTransaction:*(a1 + 64) error:v17];
  }
}

uint64_t __87__PLCloudPhotoLibraryManager__unshareBatchOfPendingAssetsSharedToScopeWithTransaction___block_invoke_576(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __87__PLCloudPhotoLibraryManager__unshareBatchOfPendingAssetsSharedToScopeWithTransaction___block_invoke_2_577;
  v4[3] = &unk_1E75781E8;
  v4[4] = v2;
  return [v2 _runAsyncOnIsolationQueueWithTransaction:v1 block:v4];
}

uint64_t __87__PLCloudPhotoLibraryManager__unshareBatchOfPendingAssetsSharedToScopeWithTransaction___block_invoke_2_577(uint64_t a1)
{
  result = [*(a1 + 32) _canExternallyTransitionToNewLibraryStateIgnoringPause:0];
  if (result)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v3 = *(*(a1 + 32) + 96);
      if (v3 == 2)
      {
        v4 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v3 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v4 = ;
      }

      v5 = v4;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *v6 = 0;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Going to fetch new events from change hub from UNSHARE PENDING ASSETS", v6, 2u);
      }
    }

    return [*(a1 + 32) _transitionToState:3];
  }

  else
  {
    *(*(a1 + 32) + 90) = 1;
  }

  return result;
}

- (void)_finishedUnsharingPendingAssetsSharedToScopeWithTransaction:(id)a3 error:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __96__PLCloudPhotoLibraryManager__finishedUnsharingPendingAssetsSharedToScopeWithTransaction_error___block_invoke;
  v8[3] = &unk_1E7578848;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:a3 block:v8];
}

void __96__PLCloudPhotoLibraryManager__finishedUnsharingPendingAssetsSharedToScopeWithTransaction_error___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v2 = *(*(a1 + 32) + 96);
    if (v2 == 2)
    {
      v3 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v2 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v3 = ;
    }

    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(*(a1 + 32) + 424);
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Finished un-sharing assets pending push to scope: %@, error: %@", &v9, 0x16u);
    }
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 424);
  *(v7 + 424) = 0;
}

- (void)_getStatusForPendingRecordsSharedToScopeWithIdentifier:(id)a3 maximumCount:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager _getStatusForPendingRecordsSharedToScopeWithIdentifier:maximumCount:completionHandler:]"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __116__PLCloudPhotoLibraryManager__getStatusForPendingRecordsSharedToScopeWithIdentifier_maximumCount_completionHandler___block_invoke;
  v14[3] = &unk_1E7576190;
  v14[4] = self;
  v15 = v8;
  v17 = v9;
  v18 = a4;
  v16 = v10;
  v11 = v10;
  v12 = v8;
  v13 = v9;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v11 block:v14];
}

void __116__PLCloudPhotoLibraryManager__getStatusForPendingRecordsSharedToScopeWithIdentifier_maximumCount_completionHandler___block_invoke(uint64_t a1)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cplLibrary];
  if (!v2)
  {
    v9 = *(a1 + 56);
    if (!v9)
    {
      goto LABEL_11;
    }

    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E6994990];
    v31 = *MEMORY[0x1E696A578];
    v32[0] = @"CPL hasn't been setup yet";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v13 = v10;
    v14 = v11;
    v15 = 2;
LABEL_10:
    v18 = [v13 errorWithDomain:v14 code:v15 userInfo:v12];
    (*(v9 + 16))(v9, 0, v18);

    goto LABEL_11;
  }

  if (([*(a1 + 32) isCloudPhotoLibraryEnabled] & 1) == 0)
  {
    v9 = *(a1 + 56);
    if (!v9)
    {
      goto LABEL_11;
    }

    v16 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E6994990];
    v29 = *MEMORY[0x1E696A578];
    v30 = @"iCloud Photo Library is not enabled";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v13 = v16;
    v14 = v17;
    v15 = 33;
    goto LABEL_10;
  }

  v3 = [*(a1 + 32) cplStatus];
  if (v3 && (v4 = v3, [*(a1 + 32) cplStatus], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isExceedingSharedLibraryQuota"), v5, v4, (v6 & 1) == 0))
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v19 = *(*(a1 + 32) + 96);
      if (v19 == 2)
      {
        v20 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v19 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v20 = ;
      }

      v21 = v20;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 40);
        *buf = 138412290;
        v28 = v22;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "Not exceeding shared library quota, not fetching pending record statuses for scope identifier: %@", buf, 0xCu);
      }
    }

    v23 = *(a1 + 56);
    if (v23)
    {
      (*(v23 + 16))(v23, 0, 0);
    }
  }

  else
  {
    v7 = *(a1 + 40);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __116__PLCloudPhotoLibraryManager__getStatusForPendingRecordsSharedToScopeWithIdentifier_maximumCount_completionHandler___block_invoke_566;
    v24[3] = &unk_1E75671A0;
    v8 = *(a1 + 64);
    v26 = *(a1 + 56);
    v25 = *(a1 + 48);
    [v2 getStatusForPendingRecordsSharedToScopeWithIdentifier:v7 maximumCount:v8 completionHandler:v24];
  }

LABEL_11:
}

uint64_t __116__PLCloudPhotoLibraryManager__getStatusForPendingRecordsSharedToScopeWithIdentifier_maximumCount_completionHandler___block_invoke_566(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 stillAlive];
}

- (void)getLibraryScopeStatusCountsForScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager getLibraryScopeStatusCountsForScopeWithIdentifier:completionHandler:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __98__PLCloudPhotoLibraryManager_getLibraryScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke;
  v12[3] = &unk_1E7573C00;
  v12[4] = self;
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v9 = v8;
  v10 = v6;
  v11 = v7;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v9 block:v12];
}

void __98__PLCloudPhotoLibraryManager_getLibraryScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cplLibrary];
  if (v2)
  {
    if ([*(a1 + 32) isCloudPhotoLibraryEnabled])
    {
      v3 = *(a1 + 40);
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __98__PLCloudPhotoLibraryManager_getLibraryScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke_2;
      v17 = &unk_1E756BAB0;
      v18 = *(a1 + 56);
      [v2 getScopeStatusCountsForScopeWithIdentifier:v3 completionHandler:&v14];
      [*(a1 + 48) stillAlive];
      v4 = v18;
LABEL_9:

      goto LABEL_10;
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E6994990];
      v19 = *MEMORY[0x1E696A578];
      v20 = @"iCloud Photo Library is not enabled";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v8 = v11;
      v9 = v12;
      v10 = 33;
      goto LABEL_8;
    }
  }

  else
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = *MEMORY[0x1E6994990];
      v21 = *MEMORY[0x1E696A578];
      v22[0] = @"CPL hasn't been setup yet";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v8 = v6;
      v9 = v7;
      v10 = 2;
LABEL_8:
      v13 = [v8 errorWithDomain:v9 code:v10 userInfo:v4];
      (*(v5 + 16))(v5, 0, v13);

      goto LABEL_9;
    }
  }

LABEL_10:
}

uint64_t __98__PLCloudPhotoLibraryManager_getLibraryScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)refreshLibraryScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager refreshLibraryScopeWithIdentifier:completionHandler:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__PLCloudPhotoLibraryManager_refreshLibraryScopeWithIdentifier_completionHandler___block_invoke;
  v12[3] = &unk_1E7573C00;
  v12[4] = self;
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v9 = v8;
  v10 = v6;
  v11 = v7;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v9 block:v12];
}

void __82__PLCloudPhotoLibraryManager_refreshLibraryScopeWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cplLibrary];
  if (v2)
  {
    if ([*(a1 + 32) isCloudPhotoLibraryEnabled])
    {
      v3 = *(a1 + 40);
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __82__PLCloudPhotoLibraryManager_refreshLibraryScopeWithIdentifier_completionHandler___block_invoke_2;
      v17 = &unk_1E756BA88;
      v18 = *(a1 + 56);
      [v2 refreshScopeWithIdentifier:v3 completionHandler:&v14];
      [*(a1 + 48) stillAlive];
      v4 = v18;
LABEL_9:

      goto LABEL_10;
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E6994990];
      v19 = *MEMORY[0x1E696A578];
      v20 = @"iCloud Photo Library is not enabled";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v8 = v11;
      v9 = v12;
      v10 = 33;
      goto LABEL_8;
    }
  }

  else
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = *MEMORY[0x1E6994990];
      v21 = *MEMORY[0x1E696A578];
      v22[0] = @"CPL hasn't been setup yet";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v8 = v6;
      v9 = v7;
      v10 = 2;
LABEL_8:
      v13 = [v8 errorWithDomain:v9 code:v10 userInfo:v4];
      (*(v5 + 16))(v5, 0, v13);

      goto LABEL_9;
    }
  }

LABEL_10:
}

uint64_t __82__PLCloudPhotoLibraryManager_refreshLibraryScopeWithIdentifier_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateLibraryScopeWithCPLScopeChange:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager updateLibraryScopeWithCPLScopeChange:completionHandler:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__PLCloudPhotoLibraryManager_updateLibraryScopeWithCPLScopeChange_completionHandler___block_invoke;
  v12[3] = &unk_1E7573C00;
  v12[4] = self;
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v9 = v8;
  v10 = v6;
  v11 = v7;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v9 block:v12];
}

void __85__PLCloudPhotoLibraryManager_updateLibraryScopeWithCPLScopeChange_completionHandler___block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cplLibrary];
  if (v2)
  {
    if ([*(a1 + 32) isCloudPhotoLibraryEnabled])
    {
      v3 = *(a1 + 40);
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __85__PLCloudPhotoLibraryManager_updateLibraryScopeWithCPLScopeChange_completionHandler___block_invoke_2;
      v17 = &unk_1E756BA88;
      v18 = *(a1 + 56);
      [v2 updateShareForScope:v3 completionHandler:&v14];
      [*(a1 + 48) stillAlive];
      v4 = v18;
LABEL_9:

      goto LABEL_10;
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E6994990];
      v19 = *MEMORY[0x1E696A578];
      v20 = @"iCloud Photo Library is not enabled";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v8 = v11;
      v9 = v12;
      v10 = 33;
      goto LABEL_8;
    }
  }

  else
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = *MEMORY[0x1E6994990];
      v21 = *MEMORY[0x1E696A578];
      v22[0] = @"CPL hasn't been setup yet";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v8 = v6;
      v9 = v7;
      v10 = 2;
LABEL_8:
      v13 = [v8 errorWithDomain:v9 code:v10 userInfo:v4];
      (*(v5 + 16))(v5, 0, v13);

      goto LABEL_9;
    }
  }

LABEL_10:
}

uint64_t __85__PLCloudPhotoLibraryManager_updateLibraryScopeWithCPLScopeChange_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)publishLibraryScopeWithCPLShare:(id)a3 title:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager publishLibraryScopeWithCPLShare:title:completionHandler:]"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __86__PLCloudPhotoLibraryManager_publishLibraryScopeWithCPLShare_title_completionHandler___block_invoke;
  v16[3] = &unk_1E7576EE8;
  v19 = v11;
  v20 = v10;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v12 = v11;
  v13 = v9;
  v14 = v8;
  v15 = v10;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v12 block:v16];
}

void __86__PLCloudPhotoLibraryManager_publishLibraryScopeWithCPLShare_title_completionHandler___block_invoke(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cplLibrary];
  if (v2)
  {
    if ([*(a1 + 32) isCloudPhotoLibraryEnabled])
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 48);
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __86__PLCloudPhotoLibraryManager_publishLibraryScopeWithCPLShare_title_completionHandler___block_invoke_2;
      v18 = &unk_1E756BA88;
      v19 = *(a1 + 64);
      [v2 createOwnedLibraryShareScopeWithShare:v3 title:v4 completionHandler:&v15];
      [*(a1 + 56) stillAlive];
      v5 = v19;
LABEL_9:

      goto LABEL_10;
    }

    v6 = *(a1 + 64);
    if (v6)
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E6994990];
      v20 = *MEMORY[0x1E696A578];
      v21 = @"iCloud Photo Library is not enabled";
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v9 = v12;
      v10 = v13;
      v11 = 33;
      goto LABEL_8;
    }
  }

  else
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      v7 = MEMORY[0x1E696ABC0];
      v8 = *MEMORY[0x1E6994990];
      v22 = *MEMORY[0x1E696A578];
      v23[0] = @"CPL hasn't been setup yet";
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v9 = v7;
      v10 = v8;
      v11 = 2;
LABEL_8:
      v14 = [v9 errorWithDomain:v10 code:v11 userInfo:v5];
      (*(v6 + 16))(v6, 0, v14);

      goto LABEL_9;
    }
  }

LABEL_10:
}

uint64_t __86__PLCloudPhotoLibraryManager_publishLibraryScopeWithCPLShare_title_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)sharedLibraryRampCheckWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager sharedLibraryRampCheckWithCompletionHandler:]"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PLCloudPhotoLibraryManager_sharedLibraryRampCheckWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7577C08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v5 block:v7];
}

void __74__PLCloudPhotoLibraryManager_sharedLibraryRampCheckWithCompletionHandler___block_invoke(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cplLibrary];
  if (v2)
  {
    if ([*(a1 + 32) isCloudPhotoLibraryEnabled])
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __74__PLCloudPhotoLibraryManager_sharedLibraryRampCheckWithCompletionHandler___block_invoke_2;
      v13[3] = &unk_1E75774A8;
      v14 = *(a1 + 40);
      [v2 sharedLibraryRampCheckWithCompletionHandler:v13];
      v3 = v14;
LABEL_9:

      goto LABEL_10;
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E6994990];
      v15 = *MEMORY[0x1E696A578];
      v16 = @"iCloud Photo Library is not enabled";
      v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v7 = v10;
      v8 = v11;
      v9 = 33;
      goto LABEL_8;
    }
  }

  else
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = MEMORY[0x1E696ABC0];
      v6 = *MEMORY[0x1E6994990];
      v17 = *MEMORY[0x1E696A578];
      v18[0] = @"CPL hasn't been setup yet";
      v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v7 = v5;
      v8 = v6;
      v9 = 2;
LABEL_8:
      v12 = [v7 errorWithDomain:v8 code:v9 userInfo:v3];
      (*(v4 + 16))(v4, 0, v12);

      goto LABEL_9;
    }
  }

LABEL_10:
}

uint64_t __74__PLCloudPhotoLibraryManager_sharedLibraryRampCheckWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeParticipantsWithParticipantUUIDs:(id)a3 fromLibraryScopeWithIdentifier:(id)a4 retentionPolicy:(int64_t)a5 exitSource:(int64_t)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager removeParticipantsWithParticipantUUIDs:fromLibraryScopeWithIdentifier:retentionPolicy:exitSource:completionHandler:]"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __145__PLCloudPhotoLibraryManager_removeParticipantsWithParticipantUUIDs_fromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke;
  v20[3] = &unk_1E7567178;
  v20[4] = self;
  v21 = v12;
  v24 = v14;
  v25 = a5;
  v26 = a6;
  v22 = v13;
  v23 = v15;
  v16 = v15;
  v17 = v13;
  v18 = v12;
  v19 = v14;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v16 block:v20];
}

void __145__PLCloudPhotoLibraryManager_removeParticipantsWithParticipantUUIDs_fromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke(uint64_t a1)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cplLibrary];
  if (v2)
  {
    if ([*(a1 + 32) isCloudPhotoLibraryEnabled])
    {
      v3 = [*(a1 + 32) libraryServicesManager];
      v4 = [v3 databaseContext];
      v5 = [v4 newShortLivedCplLibraryWithNameSuffix:"-[PLCloudPhotoLibraryManager removeParticipantsWithParticipantUUIDs:fromLibraryScopeWithIdentifier:retentionPolicy:exitSource:completionHandler:]_block_invoke"];

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __145__PLCloudPhotoLibraryManager_removeParticipantsWithParticipantUUIDs_fromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_2;
      v16[3] = &unk_1E7567150;
      v17 = *(a1 + 40);
      v18 = v5;
      v19 = v2;
      v20 = *(a1 + 48);
      v23 = *(a1 + 72);
      v22 = *(a1 + 64);
      v21 = *(a1 + 56);
      v6 = v5;
      [v6 performBlockAndWait:v16];

      v7 = v17;
LABEL_9:

      goto LABEL_10;
    }

    v8 = *(a1 + 64);
    if (v8)
    {
      v14 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E6994990];
      v24 = *MEMORY[0x1E696A578];
      v25 = @"iCloud Photo Library is not enabled";
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v11 = v14;
      v12 = v15;
      v13 = 33;
      goto LABEL_8;
    }
  }

  else
  {
    v8 = *(a1 + 64);
    if (v8)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E6994990];
      v26 = *MEMORY[0x1E696A578];
      v27[0] = @"CPL hasn't been setup yet";
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      v11 = v9;
      v12 = v10;
      v13 = 2;
LABEL_8:
      v7 = [v11 errorWithDomain:v12 code:v13 userInfo:v6];
      (*(v8 + 16))(v8, 0, v7);
      goto LABEL_9;
    }
  }

LABEL_10:
}

void __145__PLCloudPhotoLibraryManager_removeParticipantsWithParticipantUUIDs_fromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [PLShareParticipant participantsWithUUIDs:*(a1 + 32) inPhotoLibrary:*(a1 + 40)];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [PLShareParticipant participantWithPLShareParticipant:*(*(&v17 + 1) + 8 * v8)];
        [v3 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __145__PLCloudPhotoLibraryManager_removeParticipantsWithParticipantUUIDs_fromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_3;
  v14[3] = &unk_1E7567128;
  v16 = *(a1 + 72);
  v15 = *(a1 + 64);
  [v10 removeParticipants:v3 fromSharedScopeWithIdentifier:v11 retentionPolicy:v12 exitSource:v13 completionHandler:v14];
}

uint64_t __145__PLCloudPhotoLibraryManager_removeParticipantsWithParticipantUUIDs_fromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 stillAlive];
}

- (void)startExitFromLibraryScopeWithIdentifier:(id)a3 retentionPolicy:(int64_t)a4 exitSource:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager startExitFromLibraryScopeWithIdentifier:retentionPolicy:exitSource:completionHandler:]"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __115__PLCloudPhotoLibraryManager_startExitFromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke;
  v16[3] = &unk_1E7570538;
  v16[4] = self;
  v17 = v10;
  v20 = a4;
  v21 = a5;
  v18 = v12;
  v19 = v11;
  v13 = v12;
  v14 = v10;
  v15 = v11;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v13 block:v16];
}

void __115__PLCloudPhotoLibraryManager_startExitFromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cplLibrary];
  if (v2)
  {
    if ([*(a1 + 32) isCloudPhotoLibraryEnabled])
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 64);
      v5 = *(a1 + 72);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __115__PLCloudPhotoLibraryManager_startExitFromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_2;
      v16[3] = &unk_1E7567128;
      v18 = *(a1 + 56);
      v17 = *(a1 + 48);
      [v2 startExitFromSharedScopeWithIdentifier:v3 retentionPolicy:v4 exitSource:v5 completionHandler:v16];

      v6 = v18;
LABEL_9:

      goto LABEL_10;
    }

    v7 = *(a1 + 56);
    if (v7)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E6994990];
      v19 = *MEMORY[0x1E696A578];
      v20 = @"iCloud Photo Library is not enabled";
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v10 = v13;
      v11 = v14;
      v12 = 33;
      goto LABEL_8;
    }
  }

  else
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      v8 = MEMORY[0x1E696ABC0];
      v9 = *MEMORY[0x1E6994990];
      v21 = *MEMORY[0x1E696A578];
      v22[0] = @"CPL hasn't been setup yet";
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v10 = v8;
      v11 = v9;
      v12 = 2;
LABEL_8:
      v15 = [v10 errorWithDomain:v11 code:v12 userInfo:v6];
      (*(v7 + 16))(v7, 0, v15);

      goto LABEL_9;
    }
  }

LABEL_10:
}

uint64_t __115__PLCloudPhotoLibraryManager_startExitFromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 stillAlive];
}

- (void)deactivateScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager deactivateScopeWithIdentifier:completionHandler:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__PLCloudPhotoLibraryManager_deactivateScopeWithIdentifier_completionHandler___block_invoke;
  v12[3] = &unk_1E7573C00;
  v12[4] = self;
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v9 = v8;
  v10 = v6;
  v11 = v7;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v9 block:v12];
}

void __78__PLCloudPhotoLibraryManager_deactivateScopeWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cplLibrary];
  if (v2)
  {
    if ([*(a1 + 32) isCloudPhotoLibraryEnabled])
    {
      v3 = *(a1 + 40);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __78__PLCloudPhotoLibraryManager_deactivateScopeWithIdentifier_completionHandler___block_invoke_2;
      v14[3] = &unk_1E7576050;
      v16 = *(a1 + 56);
      v15 = *(a1 + 48);
      [v2 deactivateScopeWithIdentifier:v3 completionHandler:v14];

      v4 = v16;
LABEL_9:

      goto LABEL_10;
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E6994990];
      v17 = *MEMORY[0x1E696A578];
      v18 = @"iCloud Photo Library is not enabled";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v8 = v11;
      v9 = v12;
      v10 = 33;
      goto LABEL_8;
    }
  }

  else
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = *MEMORY[0x1E6994990];
      v19 = *MEMORY[0x1E696A578];
      v20[0] = @"CPL hasn't been setup yet";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v8 = v6;
      v9 = v7;
      v10 = 2;
LABEL_8:
      v13 = [v8 errorWithDomain:v9 code:v10 userInfo:v4];
      (*(v5 + 16))(v5, v13);

      goto LABEL_9;
    }
  }

LABEL_10:
}

uint64_t __78__PLCloudPhotoLibraryManager_deactivateScopeWithIdentifier_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 stillAlive];
}

- (void)activateScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager activateScopeWithIdentifier:completionHandler:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__PLCloudPhotoLibraryManager_activateScopeWithIdentifier_completionHandler___block_invoke;
  v12[3] = &unk_1E7573C00;
  v12[4] = self;
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v9 = v8;
  v10 = v6;
  v11 = v7;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v9 block:v12];
}

void __76__PLCloudPhotoLibraryManager_activateScopeWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cplLibrary];
  if (v2)
  {
    if ([*(a1 + 32) isCloudPhotoLibraryEnabled])
    {
      v3 = *(a1 + 40);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __76__PLCloudPhotoLibraryManager_activateScopeWithIdentifier_completionHandler___block_invoke_2;
      v14[3] = &unk_1E7576050;
      v16 = *(a1 + 56);
      v15 = *(a1 + 48);
      [v2 activateScopeWithIdentifier:v3 completionHandler:v14];

      v4 = v16;
LABEL_9:

      goto LABEL_10;
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E6994990];
      v17 = *MEMORY[0x1E696A578];
      v18 = @"iCloud Photo Library is not enabled";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v8 = v11;
      v9 = v12;
      v10 = 33;
      goto LABEL_8;
    }
  }

  else
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = *MEMORY[0x1E6994990];
      v19 = *MEMORY[0x1E696A578];
      v20[0] = @"CPL hasn't been setup yet";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v8 = v6;
      v9 = v7;
      v10 = 2;
LABEL_8:
      v13 = [v8 errorWithDomain:v9 code:v10 userInfo:v4];
      (*(v5 + 16))(v5, v13);

      goto LABEL_9;
    }
  }

LABEL_10:
}

uint64_t __76__PLCloudPhotoLibraryManager_activateScopeWithIdentifier_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 stillAlive];
}

- (void)configurationDidChange:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager configurationDidChange:]"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PLCloudPhotoLibraryManager_configurationDidChange___block_invoke;
  v7[3] = &unk_1E7578848;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v5 block:v7];
}

void __53__PLCloudPhotoLibraryManager_configurationDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resourceManager];
  [v2 handleCPLConfigurationChange];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 464));
  v3 = [WeakRetained computeCacheManager];
  [v3 notifyCPLConfiguration:*(a1 + 40)];
}

- (void)statusDidChange:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v6 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v6 = ;
    }

    v7 = v6;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 statusDescription];
      *buf = 136315394;
      v16 = "[PLCloudPhotoLibraryManager statusDidChange:]";
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
    }
  }

  v9 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager statusDidChange:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__PLCloudPhotoLibraryManager_statusDidChange___block_invoke;
  v12[3] = &unk_1E75761B8;
  v12[4] = self;
  v13 = v4;
  v14 = v9;
  v10 = v9;
  v11 = v4;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v10 block:v12];
}

void __46__PLCloudPhotoLibraryManager_statusDidChange___block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _setReadyForAnalysisWithCPLStatus:*(a1 + 40)];
  [*(a1 + 32) _notifyCPLStatus:*(a1 + 40) didChange:1 andCPLConfiguration:0];
  v2 = [*(*(a1 + 32) + 280) currentObjectValueWithoutForcingEvaluation];
  v3 = MEMORY[0x1E6994D48];
  if (v2)
  {
    if (*MEMORY[0x1E6994D48])
    {
      goto LABEL_22;
    }

    v4 = *(*(a1 + 32) + 96);
    if (v4 == 2)
    {
      v5 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v4 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v5 = ;
    }

    v8 = v5;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v9 = "cacheDeleteSupport is non-null";
    goto LABEL_20;
  }

  if (*MEMORY[0x1E6994D48])
  {
    goto LABEL_22;
  }

  v6 = *(*(a1 + 32) + 96);
  if (v6 == 2)
  {
    v7 = __CPLAppLibraryOSLogDomain();
  }

  else
  {
    if (v6 == 1)
    {
      __CPLSyndicationOSLogDomain();
    }

    else
    {
      __CPLSystemLibraryOSLogDomain();
    }
    v7 = ;
  }

  v8 = v7;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v9 = "cacheDeleteSupport is null";
LABEL_20:
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
  }

LABEL_21:

LABEL_22:
  v10 = [v2 exitDeleteTime];
  v11 = [*(a1 + 40) exitDeleteTime];
  if (v10 == v11)
  {
    if ((*v3 & 1) == 0)
    {
      v14 = *(*(a1 + 32) + 96);
      if (v14 == 2)
      {
        v15 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v14 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v15 = ;
      }

      v23 = v15;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v59 = v10;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "exitDeleteTime (%@) is unchanged", buf, 0xCu);
      }
    }

    v18 = [*(a1 + 32) resourceManager];
    [v18 handleCPLStatusChange];
  }

  else
  {
    if ((*v3 & 1) == 0)
    {
      v12 = *(*(a1 + 32) + 96);
      if (v12 == 2)
      {
        v13 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v12 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v13 = ;
      }

      v16 = v13;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v59 = v10;
        v60 = 2112;
        v61 = v11;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Updating exitDeleteTime for CacheDelete from %@ to %@", buf, 0x16u);
      }
    }

    [*(a1 + 32) _resetCacheDeleteSupport];
    [*(a1 + 32) _resetResourceManager];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 464));
    v18 = [WeakRetained cplSettings];

    if (v10)
    {
      if (!v11)
      {
        if ((*v3 & 1) == 0)
        {
          v19 = *(*(a1 + 32) + 96);
          if (v19 == 2)
          {
            v20 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v19 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v20 = ;
          }

          v31 = v20;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEFAULT, "Leaving exit mode, marking purgeable flags for all resources", buf, 2u);
          }
        }

        v32 = +[PLInternalResource predicateForAvailableResources];
        v33 = [*(a1 + 32) libraryServicesManager];
        v34 = [v33 databaseContext];
        v35 = [v34 newShortLivedCplLibraryWithNameSuffix:"-[PLCloudPhotoLibraryManager statusDidChange:]_block_invoke"];

        [v18 setRunOnceFlag:4 error:0];
        v36 = *(a1 + 32);
        v52 = MEMORY[0x1E69E9820];
        v53 = 3221225472;
        v54 = __46__PLCloudPhotoLibraryManager_statusDidChange___block_invoke_2;
        v55 = &unk_1E7578848;
        v56 = v36;
        v18 = v18;
        v57 = v18;
        [v36 markPurgeableResourcesMatchingPredicate:v32 urgency:0 inLibrary:v35 completionHandler:&v52];
      }
    }

    else
    {
      if ((*v3 & 1) == 0)
      {
        v21 = *(*(a1 + 32) + 96);
        if (v21 == 2)
        {
          v22 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v21 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v22 = ;
        }

        v24 = v22;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "Entering exit mode, clearing purgeable flags for all resources", buf, 2u);
        }
      }

      [v18 setRunOnceFlag:8 error:0];
      v25 = [*(a1 + 32) cacheDeleteSupport];
      v26 = [v25 clearPurgeableFlagsForAllResources];

      if (v26)
      {
        if ((*v3 & 1) == 0)
        {
          v27 = *(*(a1 + 32) + 96);
          if (v27 == 2)
          {
            v28 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v27 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v28 = ;
          }

          v37 = v28;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEFAULT, "Successfully cleared all purgeable resources", buf, 2u);
          }
        }

        [v18 clearRunOnceFlag:8 error:0];
      }

      else if ((*v3 & 1) == 0)
      {
        v29 = *(*(a1 + 32) + 96);
        if (v29 == 2)
        {
          v30 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v29 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v30 = ;
        }

        v38 = v30;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_ERROR, "Failed to clear all purgeable resources", buf, 2u);
        }
      }

      v39 = objc_loadWeakRetained((*(a1 + 32) + 464));
      v40 = [v39 cplSettings];
      v41 = [v40 isKeepOriginalsEnabled];

      if ((v41 & 1) == 0)
      {
        if ((*v3 & 1) == 0)
        {
          v42 = *(*(a1 + 32) + 96);
          if (v42 == 2)
          {
            v43 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v42 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v43 = ;
          }

          v44 = v43;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_DEFAULT, "Entering exit mode, automatically switch to download & keep original mode", buf, 2u);
          }
        }

        [*(a1 + 32) setPrefetchMode:1 error:0];
      }
    }
  }

  v45 = [*(a1 + 40) initialSyncDate];
  v46 = [*(a1 + 32) libraryServicesManager];
  v47 = [v46 databaseContext];
  v48 = [v47 newShortLivedCplLibraryWithNameSuffix:"-[PLCloudPhotoLibraryManager statusDidChange:]_block_invoke"];

  if ((*(*(a1 + 32) + 448) & 1) == 0)
  {
    [v45 timeIntervalSinceNow];
    if (fabs(v49) <= 60.0)
    {
      v50 = [v48 libraryServicesManager];
      v51 = [v50 isSystemPhotoLibrary];

      if (v51)
      {
        [v48 reportLibrarySizeToDAS];
        *(*(a1 + 32) + 448) = 1;
      }
    }
  }

  [*(a1 + 32) _disableaCPLAfterZoneWipedInCloudIfNecessaryWithStatus:*(a1 + 40) transaction:{*(a1 + 48), v52, v53, v54, v55, v56}];
}

uint64_t __46__PLCloudPhotoLibraryManager_statusDidChange___block_invoke_2(uint64_t a1)
{
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v2 = *(*(a1 + 32) + 96);
    if (v2 == 2)
    {
      v3 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v2 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v3 = ;
    }

    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Successfully marked all purgeable resources", v6, 2u);
    }
  }

  return [*(a1 + 40) clearRunOnceFlag:4 error:0];
}

- (void)_setToDownloadCountsForImages:(unint64_t)a3 videos:(unint64_t)a4
{
  if ((PLIsAssetsd() & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PLCloudPhotoLibraryManager.m" lineNumber:5133 description:{@"Invalid parameter not satisfying: %@", @"PLIsAssetsd()"}];
  }

  v8 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
  v9 = [v8 libraryBundle];
  v10 = [v9 indicatorFileCoordinator];

  v11 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager _setToDownloadCountsForImages:videos:]"];
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PLCloudPhotoLibraryManager__setToDownloadCountsForImages_videos___block_invoke;
  block[3] = &unk_1E7576400;
  v19 = a3;
  v20 = a4;
  v17 = v10;
  v18 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(serialQueue, block);
}

uint64_t __67__PLCloudPhotoLibraryManager__setToDownloadCountsForImages_videos___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDownloadCountsForImages:*(a1 + 48) videos:*(a1 + 56)];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.cpl.transfercountchange", 0, 0, 0);
  v3 = *(a1 + 40);

  return [v3 stillAlive];
}

- (BOOL)_hasIncomingWorkFileMarker
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [MEMORY[0x1E69BF168] takingPhotoIndicatorFilePath];
  v5 = [MEMORY[0x1E69BF168] takingVideoIndicatorFilePath];
  v6 = [MEMORY[0x1E69BF168] nebuladkeepalivepath];
  v7 = ([v3 fileExistsAtPath:v4] & 1) != 0 || (objc_msgSend(v3, "fileExistsAtPath:", v5) & 1) != 0 || (objc_msgSend(v3, "fileExistsAtPath:", v6) & 1) != 0 || -[PLCloudPhotoLibraryManager _hasAvalancheIncomingWork](self, "_hasAvalancheIncomingWork");

  return v7;
}

- (BOOL)_hasAvalancheIncomingWork
{
  v2 = [MEMORY[0x1E69BF178] incomingDirectoryPath];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 enumeratorAtPath:v2];
  v5 = 0;
  v6 = *MEMORY[0x1E69C00B0];
  while (1)
  {
    v7 = [v4 nextObject];

    if (!v7)
    {
      break;
    }

    v8 = [v7 pathExtension];
    v9 = [v8 isEqualToString:v6];

    v5 = v7;
    v10 = v7;
    if (v9)
    {
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_6:

  return v7 != 0;
}

- (void)_checkForWorkInProgress
{
  v3 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v5 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v5 = ;
    }

    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "checking workInProgress", buf, 2u);
    }
  }

  if ([(PLCloudPhotoLibraryManager *)self _hasIncomingWorkFileMarker])
  {
    if ((*v3 & 1) == 0)
    {
      v7 = self->_libraryMode;
      if (v7 == 2)
      {
        v8 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v7 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v8 = ;
      }

      v11 = v8;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Camera work is not yet finished, retrying later", v18, 2u);
      }
    }
  }

  else
  {
    if ((*v3 & 1) == 0)
    {
      v9 = self->_libraryMode;
      if (v9 == 2)
      {
        v10 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v9 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v10 = ;
      }

      v12 = v10;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Camera work is finished, try to log out", v20, 2u);
      }
    }

    if (self->_state == 6)
    {
      if ((*v3 & 1) == 0)
      {
        v13 = self->_libraryMode;
        if (v13 == 2)
        {
          v14 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v13 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v14 = ;
        }

        v15 = v14;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "assetd is idle, try to log out", v19, 2u);
        }
      }

      v16 = [(PLCloudPhotoLibraryManager *)self _idleStateTransitionOneTimeAction];
      v17 = v16;
      if (v16)
      {
        (*(v16 + 16))(v16);
      }
    }

    [(PLCloudPhotoLibraryManager *)self _stopWorkInProgressTimer];
  }
}

- (void)_stopWorkInProgressTimer
{
  workInProgressTimer = self->_workInProgressTimer;
  if (workInProgressTimer)
  {
    dispatch_source_cancel(workInProgressTimer);
    v4 = self->_workInProgressTimer;
    self->_workInProgressTimer = 0;
  }
}

- (void)_startWorkInProgressTimer
{
  v3 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v5 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v5 = ;
    }

    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Camera still has work, assetsd is idle", buf, 2u);
    }
  }

  if (!self->_workInProgressTimer)
  {
    if ((*v3 & 1) == 0)
    {
      v7 = self->_libraryMode;
      if (v7 == 2)
      {
        v8 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v7 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v8 = ;
      }

      v9 = v8;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Setting up work in progress timer", buf, 2u);
      }
    }

    v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_isolationQueue);
    pl_dispatch_source_set_event_handler();
    v10 = dispatch_time(0, 2000000000);
    dispatch_source_set_timer(v13, v10, 0x77359400uLL, 0);
    workInProgressTimer = self->_workInProgressTimer;
    self->_workInProgressTimer = v13;
    v12 = v13;

    dispatch_resume(self->_workInProgressTimer);
  }
}

void *__55__PLCloudPhotoLibraryManager__startWorkInProgressTimer__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[29] == *(a1 + 40))
  {
    return [result _checkForWorkInProgress];
  }

  return result;
}

- (void)endUserSessionWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(PLCloudBatchUploader *)self->_uploader setShouldGenerateDerivatives:0];
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager endUserSessionWithCompletionHandler:]"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PLCloudPhotoLibraryManager_endUserSessionWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7577C08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v5 block:v7];
}

uint64_t __66__PLCloudPhotoLibraryManager_endUserSessionWithCompletionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[10];
  if (v3 == 8)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v6 = v2[12];
      if (v6 == 2)
      {
        v7 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v6 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v7 = ;
      }

      v12 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Detected endUserSession, assetsd is paused, will unpause", &v15, 2u);
      }

      v2 = *(a1 + 32);
    }

    [v2 _setIdleStateTransitionOneTimeAction:*(a1 + 40)];
    *(*(a1 + 32) + 132) = 3;
    return [*(a1 + 32) _unpause];
  }

  else if (v3 == 6)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v4 = v2[12];
      if (v4 == 2)
      {
        v5 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v4 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v5 = ;
      }

      v10 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Detected endUserSession, assetsd is idle", &v15, 2u);
      }

      v2 = *(a1 + 32);
    }

    if ([v2 _hasIncomingWorkFileMarker])
    {
      [*(a1 + 32) _setIdleStateTransitionOneTimeAction:*(a1 + 40)];
      return [*(a1 + 32) _startWorkInProgressTimer];
    }

    else
    {
      return (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v8 = v2[12];
      if (v8 == 2)
      {
        v9 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v8 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v9 = ;
      }

      v13 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [*(a1 + 32) _debugNameForState:*(*(a1 + 32) + 80)];
        v15 = 138412290;
        v16 = v14;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Detected endUserSession, assetsd is not yet idle, assetsd state: %@", &v15, 0xCu);
      }

      v2 = *(a1 + 32);
    }

    return [v2 _setIdleStateTransitionOneTimeAction:*(a1 + 40)];
  }
}

- ($3CC19D079FD0B010EE84973AA846B91B)currentTransferProgress
{
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  result = self->_uploadTracker;
  if (result)
  {
    return [($3CC19D079FD0B010EE84973AA846B91B *)result currentTransferProgress];
  }

  return result;
}

- (unint64_t)_inq_numberOfOtherItemsToDownloadInLibrary:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = [(PLCloudPhotoLibraryManager *)self _inq_numberOfOtherItemsToUploadInLibrary:v4];
  v6 = [(PLCloudPhotoLibraryManager *)self cplStatus];
  v7 = [v6 cloudAssetCountPerType];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __73__PLCloudPhotoLibraryManager__inq_numberOfOtherItemsToDownloadInLibrary___block_invoke;
  v21[3] = &unk_1E7567100;
  v21[4] = &v22;
  [v7 enumerateKeysAndObjectsUsingBlock:v21];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v8 = v4;
  PLRunWithUnfairLock();
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v10 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v10 = ;
    }

    v11 = v10;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = v23[3];
      v13 = v18[3];
      *buf = 67109632;
      v27 = v12;
      v28 = 1024;
      v29 = v13;
      v30 = 1024;
      v31 = v5;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "_inq_numberOfOtherItemsToDownload serverCount: %d, localCount: %d, uploadCount: %d", buf, 0x14u);
    }
  }

  v14 = v23[3];
  v15 = v18[3];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v22, 8);

  return (v14 - (v5 + v15)) & ~((v14 - (v5 + v15)) >> 63);
}

void __73__PLCloudPhotoLibraryManager__inq_numberOfOtherItemsToDownloadInLibrary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*MEMORY[0x1E6982EE8] identifier];
  if ([v9 isEqualToString:v6])
  {
  }

  else
  {
    v7 = [*MEMORY[0x1E6982E30] identifier];
    v8 = [v9 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      *(*(*(a1 + 32) + 8) + 24) += [v5 unsignedIntegerValue];
    }
  }
}

void __73__PLCloudPhotoLibraryManager__inq_numberOfOtherItemsToDownloadInLibrary___block_invoke_2(void *a1)
{
  *(*(a1[6] + 8) + 24) = [*(a1[4] + 392) unsignedIntegerValue];
  v2 = a1[4];
  if (!v2[49])
  {
    v3 = [v2 cplStatus];
    v4 = [v3 lastSuccessfulSyncDate];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __73__PLCloudPhotoLibraryManager__inq_numberOfOtherItemsToDownloadInLibrary___block_invoke_3;
    v10[3] = &unk_1E7578820;
    v5 = a1[5];
    v13 = a1[6];
    v11 = v5;
    v12 = v4;
    v6 = v4;
    [v11 performBlockAndWait:v10];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(a1[6] + 8) + 24)];
    v8 = a1[4];
    v9 = *(v8 + 392);
    *(v8 + 392) = v7;
  }
}

uint64_t __73__PLCloudPhotoLibraryManager__inq_numberOfOtherItemsToDownloadInLibrary___block_invoke_3(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) numberOfCPLSupportedAssetsOfKind:2 includingTrashedSinceDate:*(a1 + 40)];
  result = [*(a1 + 32) numberOfCPLSupportedAssetsOfKind:3 includingTrashedSinceDate:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) += result;
  return result;
}

- (unint64_t)_inq_numberOfVideosToDownloadInLibrary:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = [(PLCloudPhotoLibraryManager *)self _inq_numberOfVideosToUploadInLibrary:v4];
  v6 = [(PLCloudPhotoLibraryManager *)self cplStatus];
  v7 = [v6 cloudAssetCountPerType];
  v8 = [*MEMORY[0x1E6982EE8] identifier];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 unsignedIntegerValue];

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v11 = v4;
  PLRunWithUnfairLock();
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v13 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v13 = ;
    }

    v14 = v13;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = v19[3];
      *buf = 67109632;
      v23 = v10;
      v24 = 1024;
      v25 = v15;
      v26 = 1024;
      v27 = v5;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "_inq_numberOfVideosToDownload serverCount: %d, localCount: %d, uploadCount: %d", buf, 0x14u);
    }
  }

  v16 = v19[3];

  _Block_object_dispose(&v18, 8);
  return (v10 - (v5 + v16)) & ~((v10 - (v5 + v16)) >> 63);
}

void __69__PLCloudPhotoLibraryManager__inq_numberOfVideosToDownloadInLibrary___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 24) = [*(a1[4] + 384) unsignedIntegerValue];
  v2 = a1[4];
  if (!v2[48])
  {
    v3 = [v2 cplStatus];
    v4 = [v3 lastSuccessfulSyncDate];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__PLCloudPhotoLibraryManager__inq_numberOfVideosToDownloadInLibrary___block_invoke_2;
    v10[3] = &unk_1E7578820;
    v5 = a1[5];
    v13 = a1[6];
    v11 = v5;
    v12 = v4;
    v6 = v4;
    [v11 performBlockAndWait:v10];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(a1[6] + 8) + 24)];
    v8 = a1[4];
    v9 = *(v8 + 384);
    *(v8 + 384) = v7;
  }
}

uint64_t __69__PLCloudPhotoLibraryManager__inq_numberOfVideosToDownloadInLibrary___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) numberOfCPLSupportedAssetsOfKind:1 includingTrashedSinceDate:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (unint64_t)_inq_numberOfPhotosToDownloadInLibrary:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = [(PLCloudPhotoLibraryManager *)self _inq_numberOfPhotosToUploadInLibrary:v4];
  v6 = [(PLCloudPhotoLibraryManager *)self cplStatus];
  v7 = [v6 cloudAssetCountPerType];
  v8 = [*MEMORY[0x1E6982E30] identifier];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 unsignedIntegerValue];

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v11 = v4;
  PLRunWithUnfairLock();
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v13 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v13 = ;
    }

    v14 = v13;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = v19[3];
      *buf = 67109632;
      v23 = v10;
      v24 = 1024;
      v25 = v15;
      v26 = 1024;
      v27 = v5;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "_inq_numberOfPhotosToDownload serverPhotoCount: %d, localCount: %d, uploadCount: %d", buf, 0x14u);
    }
  }

  v16 = v19[3];

  _Block_object_dispose(&v18, 8);
  return (v10 - (v5 + v16)) & ~((v10 - (v5 + v16)) >> 63);
}

void __69__PLCloudPhotoLibraryManager__inq_numberOfPhotosToDownloadInLibrary___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 24) = [*(a1[4] + 376) unsignedIntegerValue];
  v2 = a1[4];
  if (!v2[47])
  {
    v3 = [v2 cplStatus];
    v4 = [v3 lastSuccessfulSyncDate];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__PLCloudPhotoLibraryManager__inq_numberOfPhotosToDownloadInLibrary___block_invoke_2;
    v10[3] = &unk_1E7578820;
    v5 = a1[5];
    v13 = a1[6];
    v11 = v5;
    v12 = v4;
    v6 = v4;
    [v11 performBlockAndWait:v10];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(a1[6] + 8) + 24)];
    v8 = a1[4];
    v9 = *(v8 + 376);
    *(v8 + 376) = v7;
  }
}

uint64_t __69__PLCloudPhotoLibraryManager__inq_numberOfPhotosToDownloadInLibrary___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) numberOfCPLSupportedAssetsOfKind:0 includingTrashedSinceDate:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (unint64_t)_inq_numberOfVideosToUploadInLibrary:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = [(PLCloudPhotoLibraryManager *)self cplLibrary];
  v6 = [v5 numberOfVideosToUpload];

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = v4;
  PLRunWithUnfairLock();
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v9 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v9 = ;
    }

    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = v15[3];
      *buf = 67109376;
      v19 = v11;
      v20 = 1024;
      v21 = v6;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "_inq_numberOfVideosToUpload assetsdCount: %d, cplCount: %d", buf, 0xEu);
    }
  }

  if (v15[3] + v6 >= self->_boundForUploadingVideos)
  {
    boundForUploadingVideos = self->_boundForUploadingVideos;
  }

  else
  {
    boundForUploadingVideos = v15[3] + v6;
  }

  _Block_object_dispose(&v14, 8);
  return boundForUploadingVideos;
}

void __67__PLCloudPhotoLibraryManager__inq_numberOfVideosToUploadInLibrary___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 360) unsignedIntegerValue];
  if (!*(*(a1 + 32) + 360))
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __67__PLCloudPhotoLibraryManager__inq_numberOfVideosToUploadInLibrary___block_invoke_2;
    v5[3] = &unk_1E7578910;
    v6 = *(a1 + 40);
    [v6 performBlockAndWait:v5];
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(*(a1 + 48) + 8) + 24)];
    v3 = *(a1 + 32);
    v4 = *(v3 + 360);
    *(v3 + 360) = v2;
  }
}

uint64_t __67__PLCloudPhotoLibraryManager__inq_numberOfVideosToUploadInLibrary___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) numberOfUnpushedAssetsOfKind:1];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)_inq_numberOfPhotosToUploadInLibrary:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = [(PLCloudPhotoLibraryManager *)self cplLibrary];
  v6 = [v5 numberOfImagesToUpload];

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = v4;
  PLRunWithUnfairLock();
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v9 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v9 = ;
    }

    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = v15[3];
      *buf = 67109376;
      v19 = v11;
      v20 = 1024;
      v21 = v6;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "_inq_numberOfPhotosToUpload assetsdCount: %d, cplCount: %d", buf, 0xEu);
    }
  }

  if (v15[3] + v6 >= self->_boundForUploadingPhotos)
  {
    boundForUploadingPhotos = self->_boundForUploadingPhotos;
  }

  else
  {
    boundForUploadingPhotos = v15[3] + v6;
  }

  _Block_object_dispose(&v14, 8);
  return boundForUploadingPhotos;
}

void __67__PLCloudPhotoLibraryManager__inq_numberOfPhotosToUploadInLibrary___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 352) unsignedIntegerValue];
  if (!*(*(a1 + 32) + 352))
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __67__PLCloudPhotoLibraryManager__inq_numberOfPhotosToUploadInLibrary___block_invoke_2;
    v5[3] = &unk_1E7578910;
    v6 = *(a1 + 40);
    [v6 performBlockAndWait:v5];
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(*(a1 + 48) + 8) + 24)];
    v3 = *(a1 + 32);
    v4 = *(v3 + 352);
    *(v3 + 352) = v2;
  }
}

uint64_t __67__PLCloudPhotoLibraryManager__inq_numberOfPhotosToUploadInLibrary___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) numberOfUnpushedAssetsOfKind:0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)_inq_numberOfOtherItemsToUploadInLibrary:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = [(PLCloudPhotoLibraryManager *)self cplLibrary];
  v6 = [v5 numberOfOtherItemsToUpload];

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = v4;
  PLRunWithUnfairLock();
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v9 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v9 = ;
    }

    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = v15[3];
      *buf = 67109376;
      v19 = v11;
      v20 = 1024;
      v21 = v6;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "_inq_numberOfOtherItemsToUpload assetsdCount: %d, cplCount: %d", buf, 0xEu);
    }
  }

  if (v15[3] + v6 >= self->_boundForUploadingOtherItems)
  {
    boundForUploadingOtherItems = self->_boundForUploadingOtherItems;
  }

  else
  {
    boundForUploadingOtherItems = v15[3] + v6;
  }

  _Block_object_dispose(&v14, 8);
  return boundForUploadingOtherItems;
}

void __71__PLCloudPhotoLibraryManager__inq_numberOfOtherItemsToUploadInLibrary___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 368) unsignedIntegerValue];
  if (!*(*(a1 + 32) + 368))
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __71__PLCloudPhotoLibraryManager__inq_numberOfOtherItemsToUploadInLibrary___block_invoke_2;
    v5[3] = &unk_1E7578910;
    v6 = *(a1 + 40);
    [v6 performBlockAndWait:v5];
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(*(a1 + 48) + 8) + 24)];
    v3 = *(a1 + 32);
    v4 = *(v3 + 368);
    *(v3 + 368) = v2;
  }
}

uint64_t __71__PLCloudPhotoLibraryManager__inq_numberOfOtherItemsToUploadInLibrary___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) numberOfUnpushedAssetsOfKind:2];
  result = [*(a1 + 32) numberOfUnpushedAssetsOfKind:3];
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

- (void)_notifyCPLStatus:(id)a3 didChange:(BOOL)a4 andCPLConfiguration:(id)a5
{
  v6 = a4;
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v10 = [v8 initialSyncDate];
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v12 = [WeakRetained computeCacheManager];

  if (v9)
  {
    [v12 notifyCPLConfiguration:v9];
  }

  v13 = [v8 hasFinishedInitialDownload];
  v14 = v13;
  if (self->_hasCompletedInitialDownload || !v13)
  {
    if ([v8 isExceedingQuota] && v12)
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        libraryMode = self->_libraryMode;
        if (libraryMode == 2)
        {
          v18 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (libraryMode == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v18 = ;
        }

        v22 = v18;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "Notifying compute cache to restore because library is over quota", &v27, 2u);
        }
      }

      [v12 notifyReadyToRestoreWithInitialSyncDate:v10];
    }
  }

  else
  {
    if (v12)
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v15 = self->_libraryMode;
        if (v15 == 2)
        {
          v16 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v15 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v16 = ;
        }

        v19 = v16;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "Notifying compute cache to restore because initial sync date was initially set", &v27, 2u);
        }
      }

      if (!v10)
      {
        v10 = [MEMORY[0x1E695DF00] now];
      }

      [v12 notifyReadyToRestoreWithInitialSyncDate:v10];
    }

    if (v6 && [(PLCloudPhotoLibraryManager *)self _shouldResetICloudBackupExclusionPaths])
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v20 = self->_libraryMode;
        if (v20 == 2)
        {
          v21 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v20 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v21 = ;
        }

        v23 = v21;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [(PLCloudPhotoLibraryManager *)self pathManager];
          v25 = [v24 libraryURL];
          v27 = 138412290;
          v28 = v25;
          _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "Setting iCPL-enabled exclusion flags on App Library because initial sync date was initially set: %@", &v27, 0xCu);
        }
      }

      v26 = [(PLCloudPhotoLibraryManager *)self pathManager];
      [v26 resetBackupExclusionPathsForBackupType:3];
    }
  }

  self->_hasCompletedInitialDownload = v14;
}

- (void)_updateTransferCountsInLibrary:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager _updateTransferCountsInLibrary:]"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__PLCloudPhotoLibraryManager__updateTransferCountsInLibrary___block_invoke;
  v7[3] = &unk_1E7578848;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v5 block:v7];
}

void __61__PLCloudPhotoLibraryManager__updateTransferCountsInLibrary___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _inq_numberOfPhotosToDownloadInLibrary:*(a1 + 40)];
  v3 = [*(a1 + 32) _inq_numberOfVideosToDownloadInLibrary:*(a1 + 40)];
  [*(a1 + 32) _setToDownloadCountsForImages:v2 videos:v3];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v4 = *(*(a1 + 32) + 96);
    if (v4 == 2)
    {
      v5 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v4 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v5 = ;
    }

    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7[0] = 67109376;
      v7[1] = v2;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "updateTransferCounts, download i: %d v: %d", v7, 0xEu);
    }
  }
}

- (void)clearPrefetchState
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__PLCloudPhotoLibraryManager_clearPrefetchState__block_invoke;
  v2[3] = &unk_1E75781E8;
  v2[4] = self;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:0 block:v2];
}

void __48__PLCloudPhotoLibraryManager_clearPrefetchState__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) resourceManager];
  [v1 clearPrefetchState];
}

- (void)_disableOpportunisticTasks
{
  if (!self->_opportunisticTasksWasDisabled)
  {
    v3 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
    v4 = [v3 databaseContext];
    v5 = [v4 newShortLivedCplLibraryWithNameSuffix:"-[PLCloudPhotoLibraryManager _disableOpportunisticTasks]"];

    if (v5)
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        libraryMode = self->_libraryMode;
        if (libraryMode == 2)
        {
          v7 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (libraryMode == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v7 = ;
        }

        v8 = v7;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Disabling opportunistic tasks before CPL initial sync", v9, 2u);
        }
      }

      [v5 disableOpportunisticTasks];
      self->_opportunisticTasksWasDisabled = 1;
    }
  }
}

- (void)_enableOpportunisticTasks
{
  if (self->_opportunisticTasksWasDisabled)
  {
    v16 = v2;
    v17 = v3;
    v5 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
    v6 = [v5 databaseContext];
    v7 = [v6 newShortLivedCplLibraryWithNameSuffix:"-[PLCloudPhotoLibraryManager _enableOpportunisticTasks]"];

    if (v7)
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        libraryMode = self->_libraryMode;
        if (libraryMode == 2)
        {
          v9 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (libraryMode == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v9 = ;
        }

        v12 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Enabling opportunistic tasks after CPL initial sync", buf, 2u);
        }
      }

      [v7 enableOpportunisticTasks];
      self->_opportunisticTasksWasDisabled = 0;
    }

    else if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v10 = self->_libraryMode;
      if (v10 == 2)
      {
        v11 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v10 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v11 = ;
      }

      v13 = v11;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to enable opportunistic tasks. Unable to access photolibrary", v14, 2u);
      }
    }
  }
}

- (void)_setReadyForAnalysisWithCPLStatus:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = v6;
  if (v6)
  {
    if ([v6 hasFinishedInitialDownload])
    {
      v5 = 1;
    }

    else
    {
      v5 = [v6 isExceedingQuota];
    }
  }

  v4->_unsafe_readyForAnalysis = v5;
  objc_sync_exit(v4);

  if (v4->_unsafe_readyForAnalysis)
  {
    [(PLCloudPhotoLibraryManager *)v4 _enableOpportunisticTasks];
  }
}

- (void)cplConfigurationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__PLCloudPhotoLibraryManager_cplConfigurationWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7577C08;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:0 block:v6];
}

void __68__PLCloudPhotoLibraryManager_cplConfigurationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) cplConfiguration];
    (*(v1 + 16))(v1, v2);
  }
}

- (void)setCPLConfiguration:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = v5->_libraryMode;
    if (libraryMode == 2)
    {
      v7 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v7 = ;
    }

    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v4;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "PLCloudPhotoLibraryManager setting cplConfiguration to %p", &v10, 0xCu);
    }
  }

  cplConfiguration = v5->_cplConfiguration;
  v5->_cplConfiguration = v4;

  objc_sync_exit(v5);
}

- (id)cplConfiguration
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_cplConfiguration;
  objc_sync_exit(v2);

  if (!v3 && (*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = v2->_libraryMode;
    if (libraryMode == 2)
    {
      v5 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v5 = ;
    }

    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "PLCloudPhotoLibraryManager cplConfiguration is nil", v8, 2u);
    }
  }

  return v3;
}

- (void)setCPLStatus:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = v5->_libraryMode;
    if (libraryMode == 2)
    {
      v7 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v7 = ;
    }

    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v4;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "PLCloudPhotoLibraryManager setting cplStatus to %p", &v10, 0xCu);
    }
  }

  unsafe_cplStatus = v5->_unsafe_cplStatus;
  v5->_unsafe_cplStatus = v4;

  objc_sync_exit(v5);
}

- (id)cplStatus
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_unsafe_cplStatus;
  objc_sync_exit(v2);

  if (!v3 && (*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = v2->_libraryMode;
    if (libraryMode == 2)
    {
      v5 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v5 = ;
    }

    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "PLCloudPhotoLibraryManager cplStatus is nil", v8, 2u);
    }
  }

  return v3;
}

- (void)getCPLStateForDebug:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__PLCloudPhotoLibraryManager_getCPLStateForDebug_completionHandler___block_invoke;
  v8[3] = &unk_1E7574750;
  v10 = a3;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:0 block:v8];
}

void __68__PLCloudPhotoLibraryManager_getCPLStateForDebug_completionHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [*(a1 + 32) _debugNameForState:*(*(a1 + 32) + 80)];
  v4 = [*(a1 + 32) _inMemoryTrackerStateForDebug];
  v5 = [*(a1 + 32) resourceManager];
  v6 = [v5 statusForDebug:*(a1 + 48)];
  v7 = [v2 stringWithFormat:@"%@\n%@\n%@", v3, v4, v6];

  (*(*(a1 + 40) + 16))();
}

- (void)_appWithBundleIdentifier:(id)a3 changedStateToForeground:(BOOL)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager _appWithBundleIdentifier:changedStateToForeground:]"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__PLCloudPhotoLibraryManager__appWithBundleIdentifier_changedStateToForeground___block_invoke;
  v9[3] = &unk_1E7576AC8;
  v11 = a4;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v7 block:v9];
}

void __80__PLCloudPhotoLibraryManager__appWithBundleIdentifier_changedStateToForeground___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[8])
  {
    return;
  }

  if (v2[12])
  {
    v3 = *(a1 + 48);
    v4 = [v2 cplLibrary];
    v10 = v4;
    if (v3 == 1)
    {
      v5 = 0;
LABEL_15:
      [v4 noteClientIsInForegroundQuietly:v5];
LABEL_18:

      return;
    }

    goto LABEL_17;
  }

  if (kCPLMaximumOutgoingResourcesSize_block_invoke_onceToken != -1)
  {
    dispatch_once(&kCPLMaximumOutgoingResourcesSize_block_invoke_onceToken, &__block_literal_global_544);
  }

  if ([kCPLMaximumOutgoingResourcesSize_block_invoke_bundleIdentifiersForCPLNotification containsObject:*(a1 + 40)])
  {
    v6 = *(a1 + 48);
    v7 = [*(a1 + 32) cplLibrary];
    v8 = v7;
    if (v6 == 1)
    {
      [v7 noteClientIsInForegroundQuietly:0];
    }

    else
    {
      [v7 noteClientIsInBackground];
    }
  }

  if ([kCPLMaximumOutgoingResourcesSize_block_invoke_bundleIdentifiersForCPLQuietNotification containsObject:*(a1 + 40)])
  {
    v9 = *(a1 + 48);
    v4 = [*(a1 + 32) cplLibrary];
    v10 = v4;
    if (v9 == 1)
    {
      v5 = 1;
      goto LABEL_15;
    }

LABEL_17:
    [v4 noteClientIsInBackground];
    goto LABEL_18;
  }
}

void __80__PLCloudPhotoLibraryManager__appWithBundleIdentifier_changedStateToForeground___block_invoke_2()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = [v0 initWithObjects:{*MEMORY[0x1E69BFF18], @"com.apple.mobileslideshow.photospicker", @"com.apple.mobileslideshow.photo-picker", 0}];
  v2 = kCPLMaximumOutgoingResourcesSize_block_invoke_bundleIdentifiersForCPLNotification;
  kCPLMaximumOutgoingResourcesSize_block_invoke_bundleIdentifiersForCPLNotification = v1;

  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = [v3 initWithObjects:{*MEMORY[0x1E69BFF00], 0}];
  v5 = kCPLMaximumOutgoingResourcesSize_block_invoke_bundleIdentifiersForCPLQuietNotification;
  kCPLMaximumOutgoingResourcesSize_block_invoke_bundleIdentifiersForCPLQuietNotification = v4;
}

- (void)_cameraChangedStateToForeground:(BOOL)a3
{
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager _cameraChangedStateToForeground:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__PLCloudPhotoLibraryManager__cameraChangedStateToForeground___block_invoke;
  v6[3] = &unk_1E7576F80;
  v6[4] = self;
  v7 = a3;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v5 block:v6];
}

void *__62__PLCloudPhotoLibraryManager__cameraChangedStateToForeground___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[9])
  {
    return [result setPause:*(a1 + 40) reason:1];
  }

  return result;
}

- (void)_updateThumbnailForAsset:(id)a3 withCloudThumbnailImageFileURL:(id)a4
{
  v39[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v7 options:1 error:0];
  if ([(__CFData *)v8 length])
  {
    v9 = MEMORY[0x1E69C08F0];
    v10 = [v7 pathExtension];
    v11 = [v9 typeWithFilenameExtension:v10 conformingToType:*MEMORY[0x1E6982E30]];

    v12 = MEMORY[0x1E6982E58];
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = *MEMORY[0x1E6982E58];
    }

    v16 = [v13 identifier];
    v17 = MEMORY[0x1E695DF90];
    v38 = *MEMORY[0x1E696E118];
    v39[0] = v16;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v19 = [v17 dictionaryWithDictionary:v18];

    v20 = [v6 momentShare];

    if (v20)
    {
      v21 = [*v12 identifier];
      v37[0] = v21;
      v22 = [*MEMORY[0x1E6982E00] identifier];
      v37[1] = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
      [v19 setObject:v23 forKeyedSubscript:*MEMORY[0x1E696E010]];
    }

    v24 = CGImageSourceCreateWithData(v8, v19);
    if (v24)
    {
      v25 = v24;
      [v6 generateAndUpdateThumbnailsWithPreviewImage:0 thumbnailImage:0 fromImageSource:v24 imageData:v8 forceSRGBConversion:0];
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        libraryMode = self->_libraryMode;
        if (libraryMode == 2)
        {
          v27 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (libraryMode == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v27 = ;
        }

        v30 = v27;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v33 = 138412546;
          v34 = v6;
          v35 = 2112;
          v36 = v7;
          _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEBUG, "Generated new thumbnail for asset %@ with %@", &v33, 0x16u);
        }
      }

      CFRelease(v25);
    }

    else if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v28 = self->_libraryMode;
      if (v28 == 2)
      {
        v29 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v28 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v29 = ;
      }

      v31 = v29;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v32 = [v7 path];
        v33 = 138412290;
        v34 = v32;
        _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "Unable to create image source for '%@'.", &v33, 0xCu);
      }
    }

LABEL_39:
    goto LABEL_40;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v14 = self->_libraryMode;
    if (v14 == 2)
    {
      v15 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v14 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v15 = ;
    }

    v11 = v15;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v33 = 138412290;
      v34 = v7;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Unable to read imageData from file '%@'.", &v33, 0xCu);
    }

    goto LABEL_39;
  }

LABEL_40:
}

- (void)_updateThumbnailDataForAsset:(id)a3 withImageFileURL:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v7 options:1 error:0];
  if ([(__CFData *)v8 length])
  {
    v9 = [v6 uniformTypeIdentifier];
    v10 = v9;
    if (v9)
    {
      v22 = *MEMORY[0x1E696E118];
      v23 = v9;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    }

    else
    {
      v11 = 0;
    }

    v14 = CGImageSourceCreateWithData(v8, v11);
    if (v14)
    {
      v15 = v14;
      v20 = *MEMORY[0x1E696DFD8];
      v21 = *MEMORY[0x1E695E4D0];
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v17 = CGImageSourceCopyPropertiesAtIndex(v15, 0, v16);
      [v6 setThumbnailDataFromImageProperties:v17];
      CFRelease(v15);
    }

    else
    {
      if (*MEMORY[0x1E6994D48])
      {
LABEL_26:

LABEL_27:
        goto LABEL_28;
      }

      libraryMode = self->_libraryMode;
      if (libraryMode == 2)
      {
        v19 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (libraryMode == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v19 = ;
      }

      v16 = v19;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v7;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Unable to create image source for '%@'.", buf, 0xCu);
      }
    }

    goto LABEL_26;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v12 = self->_libraryMode;
    if (v12 == 2)
    {
      v13 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v12 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v13 = ;
    }

    v10 = v13;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v7;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Unable to read imageData from file '%@'.", buf, 0xCu);
    }

    goto LABEL_27;
  }

LABEL_28:
}

- (void)_updateWithCPLResource:(id)a3 isHighPriority:(BOOL)a4 isForeground:(BOOL)a5 inLibrary:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __109__PLCloudPhotoLibraryManager__updateWithCPLResource_isHighPriority_isForeground_inLibrary_completionHandler___block_invoke;
  v16[3] = &unk_1E7575ED8;
  v17 = v12;
  v18 = self;
  v19 = v13;
  v20 = a4;
  v21 = a5;
  v14 = v13;
  v15 = v12;
  [v14 performTransaction:v16 completionHandler:a7];
}

void __109__PLCloudPhotoLibraryManager__updateWithCPLResource_isHighPriority_isForeground_inLibrary_completionHandler___block_invoke(uint64_t a1)
{
  v1 = a1;
  v208 = *MEMORY[0x1E69E9840];
  v160 = [*(a1 + 32) identity];
  v2 = [v160 fileURL];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  if (v2)
  {
    v4 = [v2 path];
    v5 = [v3 fileExistsAtPath:v4];

    if (v5)
    {
      v6 = [*(v1 + 32) itemScopedIdentifier];
      v7 = [PLManagedAsset assetWithScopedIdentifier:v6 inLibrary:*(v1 + 48) prefetchResources:1];
      v180 = v1;
      v181 = [*(v1 + 32) resourceType];
      v158 = v6;
      v159 = v7;
      v170 = v3;
      if (v7)
      {
        v8 = MEMORY[0x1E6994D48];
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v9 = *(*(v1 + 40) + 96);
          if (v9 == 2)
          {
            v10 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v9 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v10 = ;
          }

          v20 = v10;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v21 = *(v1 + 32);
            *buf = 138412546;
            v199 = v7;
            v200 = 2112;
            *v201 = v21;
            _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEBUG, "Updating owningAsset %@ with resource %@", buf, 0x16u);
          }
        }

        v17 = [*(v1 + 48) thumbnailManager];
        v22 = [v7 hasMasterThumb];
        v23 = v22 ^ 1;
        if (v22)
        {
          v24 = v7;
          v25 = 0;
        }

        else
        {
          v26 = [v17 thumbnailJPEGPathForPhoto:v7];
          v24 = v7;
          v25 = v26;
        }

        v27 = [v24 thumbnailIdentifier];
        v28 = [v17 beginThumbnailSafePropertyUpdatesOnAssetThumbnailIdentifier:v27];

        if (v181 == 5)
        {
          v29 = 1;
        }

        else
        {
          v29 = v23;
        }

        if (v29 == 1)
        {
          if ((*v8 & 1) == 0)
          {
            v30 = *(*(v1 + 40) + 96);
            if (v30 == 2)
            {
              v31 = __CPLAppLibraryOSLogDomain();
            }

            else
            {
              if (v30 == 1)
              {
                __CPLSyndicationOSLogDomain();
              }

              else
              {
                __CPLSystemLibraryOSLogDomain();
              }
              v31 = ;
            }

            v37 = v31;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v199 = v159;
              v200 = 1024;
              *v201 = v23;
              *&v201[4] = 1024;
              *&v201[6] = v181 == 5;
              _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEBUG, "Generating new thumbnails for asset %@ (missingThumbnail %d, isPlaceholderThumbnail %d)", buf, 0x18u);
            }
          }

          v38 = v159;
          [*(v1 + 40) _updateThumbnailForAsset:v159 withCloudThumbnailImageFileURL:v2];
        }

        else
        {
          v32 = v170;
          if ((*v8 & 1) == 0)
          {
            v33 = *(*(v1 + 40) + 96);
            if (v33 == 2)
            {
              v34 = __CPLAppLibraryOSLogDomain();
            }

            else
            {
              if (v33 == 1)
              {
                __CPLSyndicationOSLogDomain();
              }

              else
              {
                __CPLSystemLibraryOSLogDomain();
              }
              v34 = ;
            }

            v39 = v34;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              v40 = [v159 cloudAssetGUID];
              *buf = 138412290;
              v199 = v40;
              _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_DEBUG, "Skipping thumbnail generation for asset with cloudAssetGUID %@", buf, 0xCu);

              v32 = v170;
            }
          }

          v38 = v159;
          if (!v25 || !-[NSObject isVideo](v159, "isVideo") || ![v32 fileExistsAtPath:v25] || !-[NSObject isVideo](v159, "isVideo"))
          {
LABEL_68:
            v43 = [v38 thumbnailIdentifier];
            [v17 endThumbnailSafePropertyUpdatesOnAssetThumbnailIdentifier:v43 withToken:v28];

            if (v181 != 5)
            {
              if (v181 != 27)
              {
                v47 = [v159 assetResourceForCPLType:?];
                if (v47)
                {
                  v48 = v47;
                  v49 = [v2 path];
                  [v48 markAsLocallyAvailableWithFilePath:v49];

                  if (*(v1 + 56) == 1)
                  {
                    v50 = [MEMORY[0x1E695DF00] date];
                    [v48 setCloudLastOnDemandDownloadDate:v50];
                  }

                  v51 = *(v1 + 57);
                  v52 = [*(v1 + 40) cacheDeleteSupport];
                  [v52 markResourceAsPurgeable:v48 withUrgency:v51];
                }

                else
                {
                  if (*v8)
                  {
                    v48 = 0;
                    goto LABEL_208;
                  }

                  v55 = *(*(v1 + 40) + 96);
                  if (v55 == 2)
                  {
                    v56 = __CPLAppLibraryOSLogDomain();
                  }

                  else
                  {
                    if (v55 == 1)
                    {
                      __CPLSyndicationOSLogDomain();
                    }

                    else
                    {
                      __CPLSystemLibraryOSLogDomain();
                    }
                    v56 = ;
                  }

                  v52 = v56;
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                  {
                    v126 = [MEMORY[0x1E6994B90] descriptionForResourceType:v181];
                    *buf = 138412546;
                    v199 = v126;
                    v200 = 2112;
                    *v201 = v158;
                    _os_log_impl(&dword_19BF1F000, v52, OS_LOG_TYPE_DEFAULT, "Didn't find resource type: %@ in asset: %@ we tried to mark as available", buf, 0x16u);
                  }

                  v48 = 0;
                }

LABEL_207:

LABEL_208:
                v11 = v160;
                v3 = v170;
                goto LABEL_209;
              }

              v196 = 0;
              v44 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v2 options:0 error:&v196];
              v45 = v196;
              if (v44)
              {
                v46 = [v159 additionalAttributes];
                [v46 setMediaMetadataData:v44];

                [PLManagedAsset processAdjustedMediaMetadataForAsset:v159];
              }

              else if ((*v8 & 1) == 0)
              {
                v53 = *(*(v1 + 40) + 96);
                if (v53 == 2)
                {
                  v54 = __CPLAppLibraryOSLogDomain();
                }

                else
                {
                  if (v53 == 1)
                  {
                    __CPLSyndicationOSLogDomain();
                  }

                  else
                  {
                    __CPLSystemLibraryOSLogDomain();
                  }
                  v54 = ;
                }

                v121 = v54;
                if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v199 = v2;
                  v200 = 2112;
                  *v201 = v45;
                  _os_log_impl(&dword_19BF1F000, v121, OS_LOG_TYPE_ERROR, "Unable to read metadata file at url: %@, error: %@", buf, 0x16u);
                }
              }

              v32 = v170;
            }

            v195 = 0;
            v122 = [v32 removeItemAtURL:v2 error:&v195];
            v48 = v195;
            if (v122 & 1) != 0 || (*v8)
            {
              goto LABEL_208;
            }

            v123 = *(*(v1 + 40) + 96);
            if (v123 == 2)
            {
              v124 = __CPLAppLibraryOSLogDomain();
            }

            else
            {
              if (v123 == 1)
              {
                __CPLSyndicationOSLogDomain();
              }

              else
              {
                __CPLSystemLibraryOSLogDomain();
              }
              v124 = ;
            }

            v52 = v124;
            if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
            {
              v125 = *(v1 + 32);
              *buf = 138412546;
              v199 = v125;
              v200 = 2112;
              *v201 = v48;
              _os_log_impl(&dword_19BF1F000, v52, OS_LOG_TYPE_ERROR, "Unable to remove cloud resource %@: %@", buf, 0x16u);
            }

            goto LABEL_207;
          }

          v41 = *(v1 + 40);
          v42 = [v159 pathForVideoPreviewFile];
          [v41 _linkFileFrom:v25 to:v42];
        }

        v32 = v170;
        goto LABEL_68;
      }

      v16 = [PLCloudMaster cloudMasterWithScopedIdentifier:v6 prefetchResources:1 inLibrary:*(v1 + 48)];
      if (!v16)
      {
        if (*MEMORY[0x1E6994D48])
        {
          v17 = 0;
          v11 = v160;
          goto LABEL_210;
        }

        v35 = *(*(v1 + 40) + 96);
        v11 = v160;
        if (v35 == 2)
        {
          v36 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v35 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v36 = ;
        }

        v25 = v36;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v120 = *(v1 + 32);
          *buf = 138412546;
          v199 = v158;
          v200 = 2112;
          *v201 = v120;
          _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "can't find the master with identifier %@ for resource %@", buf, 0x16u);
        }

        v17 = 0;
        goto LABEL_209;
      }

      v17 = v16;
      v176 = v2;
      v171 = v16;
      if (v181 == 10)
      {
        v194 = 0;
        v18 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v2 options:0 error:&v194];
        obj = v194;
        if (v18)
        {
          v19 = [v17 mediaMetadata];
          [v19 setValue:v18 forKey:@"data"];
        }

        else
        {
          if (*MEMORY[0x1E6994D48])
          {
            goto LABEL_218;
          }

          v118 = *(*(v1 + 40) + 96);
          if (v118 == 2)
          {
            v119 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v118 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v119 = ;
          }

          v19 = v119;
          if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v199 = v2;
            v200 = 2112;
            *v201 = obj;
            _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Unable to read metadata file at url: %@, error: %@", buf, 0x16u);
          }
        }

LABEL_218:
LABEL_219:

        v177 = 0;
LABEL_220:
        v185 = 0u;
        v186 = 0u;
        v183 = 0u;
        v184 = 0u;
        v127 = [v17 assets];
        v128 = [v127 countByEnumeratingWithState:&v183 objects:v197 count:16];
        if (!v128)
        {
LABEL_278:

          if (v181 != 10 && v181 != 5)
          {
            v11 = v160;
            v2 = v176;
            v3 = v170;
            goto LABEL_210;
          }

          v182 = 0;
          v3 = v170;
          v2 = v176;
          v153 = [v170 removeItemAtURL:v176 error:&v182];
          v25 = v182;
          if ((v153 & 1) == 0 && (*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v154 = *(*(v1 + 40) + 96);
            if (v154 == 2)
            {
              v155 = __CPLAppLibraryOSLogDomain();
            }

            else
            {
              if (v154 == 1)
              {
                __CPLSyndicationOSLogDomain();
              }

              else
              {
                __CPLSystemLibraryOSLogDomain();
              }
              v155 = ;
            }

            v156 = v155;
            if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
            {
              v157 = *(v1 + 32);
              *buf = 138412546;
              v199 = v157;
              v200 = 2112;
              *v201 = v25;
              _os_log_impl(&dword_19BF1F000, v156, OS_LOG_TYPE_ERROR, "Unable to remove cloud resource %@: %@", buf, 0x16u);
            }
          }

          v11 = v160;
LABEL_209:

LABEL_210:
          v14 = v158;
LABEL_211:

          goto LABEL_212;
        }

        v129 = v128;
        v130 = *v184;
        v131 = MEMORY[0x1E6994D48];
        v175 = v127;
LABEL_222:
        v132 = 0;
        while (1)
        {
          if (*v184 != v130)
          {
            objc_enumerationMutation(v127);
          }

          v133 = *(*(&v183 + 1) + 8 * v132);
          if (!v133)
          {
            goto LABEL_276;
          }

          if ((*v131 & 1) == 0)
          {
            v134 = *(*(v1 + 40) + 96);
            if (v134 == 2)
            {
              v135 = __CPLAppLibraryOSLogDomain();
            }

            else
            {
              if (v134 == 1)
              {
                __CPLSyndicationOSLogDomain();
              }

              else
              {
                __CPLSystemLibraryOSLogDomain();
              }
              v135 = ;
            }

            v136 = v135;
            if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
            {
              v137 = [v133 uuid];
              *buf = 138412546;
              v199 = v137;
              v200 = 2112;
              *v201 = v17;
              _os_log_impl(&dword_19BF1F000, v136, OS_LOG_TYPE_DEBUG, "Asset %@ mapped to master %@ during duplicate copy", buf, 0x16u);
            }
          }

          v138 = [v133 assetResourceForCPLType:v181];
          if (v138)
          {
            break;
          }

          v141 = [PLCloudResourcePrefetchManager shouldGenerateThumbnailFromResource:*(v1 + 32) forAsset:v133];
          if ((v177 | v141) == 1)
          {
            if ((*v131 & 1) == 0)
            {
              v142 = v141;
              v143 = *(*(v1 + 40) + 96);
              if (v143 == 2)
              {
                v144 = __CPLAppLibraryOSLogDomain();
              }

              else
              {
                if (v143 == 1)
                {
                  __CPLSyndicationOSLogDomain();
                }

                else
                {
                  __CPLSystemLibraryOSLogDomain();
                }
                v144 = ;
              }

              v148 = v144;
              if (os_log_type_enabled(v144, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412802;
                v199 = v133;
                v200 = 1024;
                *v201 = v142;
                *&v201[4] = 1024;
                *&v201[6] = v177;
                _os_log_impl(&dword_19BF1F000, v148, OS_LOG_TYPE_DEBUG, "Generating new thumbnails for asset %@ during duplicate copy (missingThumbnail %d, isThumbnail %d)", buf, 0x18u);
              }

              v17 = v171;
            }

            [*(v1 + 40) _updateThumbnailForAsset:v133 withCloudThumbnailImageFileURL:v176];
          }

          if (v181 == 1)
          {
            if ((*v131 & 1) == 0)
            {
              v149 = *(*(v1 + 40) + 96);
              if (v149 == 2)
              {
                v150 = __CPLAppLibraryOSLogDomain();
              }

              else
              {
                if (v149 == 1)
                {
                  __CPLSyndicationOSLogDomain();
                }

                else
                {
                  __CPLSystemLibraryOSLogDomain();
                }
                v150 = ;
              }

              v151 = v150;
              if (os_log_type_enabled(v150, OS_LOG_TYPE_DEBUG))
              {
                v152 = [v133 uuid];
                *buf = 138412290;
                v199 = v152;
                _os_log_impl(&dword_19BF1F000, v151, OS_LOG_TYPE_DEBUG, "Persisting metadata for %@ during duplicate copy", buf, 0xCu);

                v127 = v175;
                v1 = v180;
              }
            }

            [v133 persistMetadataToFilesystem];
            goto LABEL_275;
          }

          if (v181 != 2)
          {
            goto LABEL_253;
          }

          [*(v1 + 40) _updateThumbnailDataForAsset:v133 withImageFileURL:v176];
LABEL_275:

LABEL_276:
          if (v129 == ++v132)
          {
            v129 = [v127 countByEnumeratingWithState:&v183 objects:v197 count:16];
            if (!v129)
            {
              goto LABEL_278;
            }

            goto LABEL_222;
          }
        }

        if ((*v131 & 1) == 0)
        {
          v139 = *(*(v1 + 40) + 96);
          if (v139 == 2)
          {
            v140 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v139 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v140 = ;
          }

          v145 = v140;
          if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
          {
            v146 = [v133 uuid];
            v147 = *(v180 + 32);
            *buf = 138412546;
            v199 = v146;
            v200 = 2112;
            *v201 = v147;
            _os_log_impl(&dword_19BF1F000, v145, OS_LOG_TYPE_DEFAULT, "Skipping update duplicate asset %@ with master resource %@", buf, 0x16u);

            v127 = v175;
            v1 = v180;
          }
        }

LABEL_253:
        if (v181 == 10)
        {
          [PLManagedAsset processMediaMetadataForAsset:v133 withCloudMaster:v17];
        }

        goto LABEL_275;
      }

      if (v181 == 5)
      {
        v177 = 1;
        goto LABEL_220;
      }

      v57 = [*(v1 + 40) pathManager];
      v168 = [v57 isUBF];

      [v17 rm_assetAttachedResourcesForResourceType:v181];
      v190 = 0u;
      v191 = 0u;
      v192 = 0u;
      obj = v193 = 0u;
      v58 = [obj countByEnumeratingWithState:&v190 objects:v207 count:16];
      if (!v58)
      {
        goto LABEL_219;
      }

      v59 = v58;
      v60 = *v191;
      v162 = *MEMORY[0x1E696A388];
      v163 = *MEMORY[0x1E696A3A0];
      v167 = *v191;
LABEL_88:
      v61 = 0;
      v164 = v59;
      while (1)
      {
        if (*v191 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v62 = *(*(&v190 + 1) + 8 * v61);
        v63 = [v2 path];
        v64 = [v62 cplFileURL];
        v65 = [v64 path];
        v66 = v65;
        if (v63)
        {
          if (v65)
          {
            break;
          }
        }

        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v83 = *(*(v1 + 40) + 96);
          v84 = v62;
          if (v83 == 2)
          {
            v85 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v83 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v85 = ;
          }

          v90 = v85;
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            v91 = *(v1 + 32);
            *buf = 138412546;
            v199 = v91;
            v200 = 2112;
            *v201 = v84;
            _os_log_impl(&dword_19BF1F000, v90, OS_LOG_TYPE_ERROR, "Missing file path, downloaded resource %@ local resource %@", buf, 0x16u);
          }

          goto LABEL_172;
        }

LABEL_173:

        if (v59 == ++v61)
        {
          v59 = [obj countByEnumeratingWithState:&v190 objects:v207 count:16];
          if (!v59)
          {
            v17 = v171;
            goto LABEL_219;
          }

          goto LABEL_88;
        }
      }

      v178 = v63;
      v179 = v65;
      v174 = v64;
      if (v168)
      {
        v67 = [v171 originalFilenameForResourceType:-[NSObject cplType](v62 filePath:{"cplType"), v65}];
        v68 = [v62 uniformTypeIdentifier];
        v172 = [v68 identifier];

        v69 = v62;
        v70 = v63;
        v71 = objc_alloc(MEMORY[0x1E69BF298]);
        v72 = [v69 asset];
        v73 = [v72 uuid];
        v74 = [0 bundleScope];
        v75 = [v69 resourceType];
        v76 = [v69 recipeID];
        v165 = v69;
        v77 = [v69 customSuffix];
        v78 = v74;
        v66 = v179;
        v79 = [v71 initWithAssetUuid:v73 bundleScope:v78 uti:v172 resourceVersion:0 resourceType:v75 recipeID:v76 originalFilename:v67 customSuffix:v77];

        if (([v70 isEqualToString:v179]& 1) != 0)
        {
          v1 = v180;
          v80 = [*(v180 + 40) pathManager];
          [v80 setExtendedAttributesWithIdentifier:v79 andURL:v174];

          v66 = v179;
          v81 = v170;
          v59 = v164;
          v82 = v165;
          goto LABEL_168;
        }

        v173 = 0;
        v81 = v170;
        v1 = v180;
        v82 = v165;
        goto LABEL_109;
      }

      v86 = v62;
      v87 = v62;
      if ([v87 resourceType]== 4 && ![v87 version])
      {
        v107 = [v87 recipeID];

        if ((v107 & 1) == 0)
        {
          v108 = objc_alloc_init(PLValidatedExternalResource);
          [(PLValidatedExternalResource *)v108 setResourceType:4];
          v173 = v108;
          [(PLValidatedExternalResource *)v108 setFileURL:v64];
          goto LABEL_105;
        }
      }

      else
      {
      }

      v173 = 0;
LABEL_105:
      v82 = v86;
      v81 = v170;
      if (([v63 isEqualToString:v66]& 1) != 0)
      {
        v79 = v173;
        [(PLValidatedExternalResource *)v173 persistResourceTypeToFileURL];
        goto LABEL_168;
      }

      v79 = 0;
LABEL_109:
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v88 = *(*(v1 + 40) + 96);
        if (v88 == 2)
        {
          v89 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v88 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v89 = ;
        }

        v92 = v89;
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v199 = v178;
          v200 = 2112;
          *v201 = v66;
          _os_log_impl(&dword_19BF1F000, v92, OS_LOG_TYPE_DEBUG, "Resource is downloaded to %@ during duplicate copy, copying to %@", buf, 0x16u);
        }
      }

      v205 = v163;
      v206 = v162;
      v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v206 forKeys:&v205 count:1];
      v189 = 0;
      v94 = [v81 setAttributes:v93 ofItemAtPath:v178 error:&v189];
      v95 = v189;

      v66 = v179;
      if ((v94 & 1) == 0)
      {
        v96 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v199 = v178;
          v200 = 2112;
          *v201 = v95;
          _os_log_impl(&dword_19BF1F000, v96, OS_LOG_TYPE_ERROR, "Unable to assign data protection to %@ during duplicate copy: %@", buf, 0x16u);
        }
      }

      if ([v81 fileExistsAtPath:v179])
      {
        v59 = v164;
        if (*MEMORY[0x1E6994D48])
        {
LABEL_167:

LABEL_168:
          v113 = [v81 fileExistsAtPath:v66];
          v60 = v167;
          v2 = v176;
          v63 = v178;
          v64 = v174;
          if (v113)
          {
            [v82 markAsLocallyAvailableWithFilePath:v66];
            if (*(v1 + 56) == 1)
            {
              v114 = [MEMORY[0x1E695DF00] date];
              [v82 setCloudLastOnDemandDownloadDate:v114];
            }

            v115 = *(v1 + 57);
            v116 = [*(v1 + 40) cacheDeleteSupport];
            v117 = v82;
            v90 = v116;
            [v116 markResourceAsPurgeable:v117 withUrgency:v115];
            v66 = v179;
LABEL_172:

            goto LABEL_173;
          }

          goto LABEL_173;
        }

        v97 = *(*(v1 + 40) + 96);
        if (v97 == 2)
        {
          v98 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v97 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v98 = ;
        }

        v101 = v98;
        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
        {
          v111 = [MEMORY[0x1E6994B90] descriptionForResourceType:{objc_msgSend(*(v1 + 32), "resourceType")}];
          *buf = 138412802;
          v199 = v111;
          v200 = 2112;
          *v201 = v179;
          *&v201[8] = 2112;
          v202 = v82;
          _os_log_impl(&dword_19BF1F000, v101, OS_LOG_TYPE_DEBUG, "File exist at path %@ during duplicate copy on master for type %@, will not overwrite, localResource: %@", buf, 0x20u);

          v66 = v179;
        }

LABEL_166:

        goto LABEL_167;
      }

      v161 = v95;
      v99 = [v179 stringByDeletingLastPathComponent];
      v188 = 0;
      v166 = v99;
      v100 = [v81 createDirectoryIfNeededAtPath:? error:?];
      v101 = v188;
      v59 = v164;
      if (v100)
      {
        v187 = 0;
        v102 = [v81 copyItemAtPath:v178 toPath:v179 error:&v187];
        v103 = v187;
        if (v102)
        {
          if (v168)
          {
            v104 = [*(v1 + 40) pathManager];
            [v104 setExtendedAttributesWithIdentifier:v79 andURL:v174];
          }

          else
          {
            [(PLValidatedExternalResource *)v173 persistResourceTypeToFileURL];
          }
        }

        else if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v109 = *(*(v1 + 40) + 96);
          v66 = v179;
          if (v109 == 2)
          {
            v110 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v109 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v110 = ;
          }

          v112 = v110;
          if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
          {
            *buf = 138413058;
            v199 = v178;
            v200 = 2112;
            *v201 = v179;
            *&v201[8] = 2112;
            v202 = v103;
            v203 = 2112;
            v204 = v82;
            _os_log_impl(&dword_19BF1F000, v112, OS_LOG_TYPE_ERROR, "Failed to copy from %@ to %@ during duplicate copy on master. Error: %@, localResource: %@", buf, 0x2Au);
          }

          goto LABEL_164;
        }

        v66 = v179;
      }

      else
      {
        v66 = v179;
        if (*MEMORY[0x1E6994D48])
        {
LABEL_165:

          v95 = v161;
          goto LABEL_166;
        }

        v105 = *(*(v1 + 40) + 96);
        if (v105 == 2)
        {
          v106 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v105 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v106 = ;
        }

        v103 = v106;
        if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v199 = v166;
          v200 = 2112;
          *v201 = v101;
          *&v201[8] = 2112;
          v202 = v82;
          _os_log_impl(&dword_19BF1F000, v103, OS_LOG_TYPE_ERROR, "Failed to create directory %@ during duplicate copy on master. Error: %@, localResource: %@", buf, 0x20u);
        }
      }

LABEL_164:

      v81 = v170;
      goto LABEL_165;
    }
  }

  v11 = v160;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v12 = *(*(v1 + 40) + 96);
    if (v12 == 2)
    {
      v13 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v12 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v13 = ;
    }

    v14 = v13;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = *(v1 + 32);
      *buf = 138412546;
      v199 = v15;
      v200 = 2112;
      *v201 = v2;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "downloaded resource file not found for resource %@ at %@", buf, 0x16u);
    }

    goto LABEL_211;
  }

LABEL_212:
}

- (void)_updateLocalStaleResourceWithCPLResource:(id)a3 inLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__PLCloudPhotoLibraryManager__updateLocalStaleResourceWithCPLResource_inLibrary___block_invoke;
  v10[3] = &unk_1E75761B8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [v8 performBlock:v10];
}

void __81__PLCloudPhotoLibraryManager__updateLocalStaleResourceWithCPLResource_inLibrary___block_invoke(id *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v3 = *(a1[4] + 12);
    if (v3 == 2)
    {
      v4 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v3 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v4 = ;
    }

    v5 = v4;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[5];
      *buf = 138412290;
      v35 = v6;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Updating local stale resource for %@", buf, 0xCu);
    }
  }

  v7 = [a1[5] itemScopedIdentifier];
  v8 = [a1[5] resourceType];
  v9 = [PLManagedAsset assetWithScopedIdentifier:v7 inLibrary:a1[6] prefetchResources:1];
  if (v9)
  {
    v10 = [a1[4] cplLibrary];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __81__PLCloudPhotoLibraryManager__updateLocalStaleResourceWithCPLResource_inLibrary___block_invoke_536;
    v27[3] = &unk_1E75670D8;
    v11 = a1[6];
    v12 = a1[4];
    v28 = v11;
    v29 = v12;
    v30 = v7;
    v31 = a1[5];
    v32 = v9;
    v33 = v8;
    [v10 getCloudCacheForRecordWithScopedIdentifier:v30 completionHandler:v27];

    v13 = v28;
  }

  else
  {
    v13 = [PLCloudMaster cloudMasterWithScopedIdentifier:v7 prefetchResources:1 inLibrary:a1[6]];
    if (v13)
    {
      v14 = [a1[4] cplLibrary];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __81__PLCloudPhotoLibraryManager__updateLocalStaleResourceWithCPLResource_inLibrary___block_invoke_537;
      v20[3] = &unk_1E75670D8;
      v15 = a1[6];
      v16 = a1[4];
      v21 = v15;
      v22 = v16;
      v23 = v7;
      v24 = a1[5];
      v25 = v13;
      v26 = v8;
      [v14 getCloudCacheForRecordWithScopedIdentifier:v23 completionHandler:v20];

      v17 = v21;
    }

    else
    {
      if (*v2)
      {
        v13 = 0;
        goto LABEL_25;
      }

      v18 = *(a1[4] + 12);
      if (v18 == 2)
      {
        v19 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v18 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v19 = ;
      }

      v17 = v19;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v35 = v7;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Unable to find local asset/master with itemScopedIdentifier %@", buf, 0xCu);
      }
    }
  }

LABEL_25:
}

void __81__PLCloudPhotoLibraryManager__updateLocalStaleResourceWithCPLResource_inLibrary___block_invoke_536(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__PLCloudPhotoLibraryManager__updateLocalStaleResourceWithCPLResource_inLibrary___block_invoke_2;
  v14[3] = &unk_1E7568BD8;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v15 = v6;
  v16 = v7;
  v17 = v9;
  v18 = v5;
  v19 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v20 = v10;
  v21 = v11;
  v12 = v5;
  v13 = v6;
  [v8 performTransaction:v14];
}

void __81__PLCloudPhotoLibraryManager__updateLocalStaleResourceWithCPLResource_inLibrary___block_invoke_537(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__PLCloudPhotoLibraryManager__updateLocalStaleResourceWithCPLResource_inLibrary___block_invoke_2_538;
  v14[3] = &unk_1E7568BD8;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v15 = v6;
  v16 = v7;
  v17 = v9;
  v18 = v5;
  v19 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v20 = v10;
  v21 = v11;
  v12 = v5;
  v13 = v6;
  [v8 performTransaction:v14];
}

void __81__PLCloudPhotoLibraryManager__updateLocalStaleResourceWithCPLResource_inLibrary___block_invoke_2_538(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if (*MEMORY[0x1E6994D48])
    {
      return;
    }

    v2 = *(*(a1 + 40) + 96);
    if (v2 == 2)
    {
      v3 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v2 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v3 = ;
    }

    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 48);
      v17 = *(a1 + 32);
      *buf = 138412546;
      v43 = v16;
      v44 = 2112;
      v45 = v17;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Failed to get cloud cache for master record %@: %@", buf, 0x16u);
    }
  }

  else
  {
    v4 = *(a1 + 56);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v5 = [v4 resources];
    v6 = [v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v37;
LABEL_9:
      v9 = 0;
      while (1)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v36 + 1) + 8 * v9);
        v11 = [0 resourceType];
        if (v11 == [*(a1 + 64) resourceType])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
          if (v7)
          {
            goto LABEL_9;
          }

          goto LABEL_15;
        }
      }

      v12 = v10;

      if (!v12)
      {
        goto LABEL_53;
      }

      v13 = MEMORY[0x1E6994D48];
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v14 = *(*(a1 + 40) + 96);
        if (v14 == 2)
        {
          v15 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v14 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v15 = ;
        }

        v18 = v15;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v43 = v12;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Updating local stale master resource with %@", buf, 0xCu);
        }
      }

      v31 = v4;
      v19 = [*(a1 + 72) rm_assetAttachedResourcesForResourceType:*(a1 + 80)];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v20 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v33;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v33 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v32 + 1) + 8 * i);
            if (v24 && ([*(*(&v32 + 1) + 8 * i) isLocallyAvailable] & 1) == 0)
            {
              v25 = [v24 asset];
              v26 = [v24 asset];
              v27 = [v25 storedResourceForCPLResource:v12 asset:v26 adjusted:0];

              if ((*v13 & 1) == 0)
              {
                v28 = *(*(a1 + 40) + 96);
                if (v28 == 2)
                {
                  v29 = __CPLAppLibraryOSLogDomain();
                }

                else
                {
                  if (v28 == 1)
                  {
                    __CPLSyndicationOSLogDomain();
                  }

                  else
                  {
                    __CPLSystemLibraryOSLogDomain();
                  }
                  v29 = ;
                }

                v30 = v29;
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v43 = v27;
                  _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "Updated local stale master resource to %@", buf, 0xCu);
                }
              }
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v21);
      }

      v4 = v31;
    }

    else
    {
LABEL_15:
      v12 = v5;
    }
  }

LABEL_53:
}

void __81__PLCloudPhotoLibraryManager__updateLocalStaleResourceWithCPLResource_inLibrary___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if (*MEMORY[0x1E6994D48])
    {
      return;
    }

    v2 = *(*(a1 + 40) + 96);
    if (v2 == 2)
    {
      v3 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v2 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v3 = ;
    }

    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 48);
      v16 = *(a1 + 32);
      *buf = 138412546;
      v30 = v15;
      v31 = 2112;
      v32 = v16;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Failed to get cloud cache for asset record %@: %@", buf, 0x16u);
    }
  }

  else
  {
    v4 = *(a1 + 56);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = [v4 resources];
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          v11 = [v10 resourceType];
          if (v11 == [*(a1 + 64) resourceType])
          {
            v12 = MEMORY[0x1E6994D48];
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v13 = *(*(a1 + 40) + 96);
              if (v13 == 2)
              {
                v14 = __CPLAppLibraryOSLogDomain();
              }

              else
              {
                if (v13 == 1)
                {
                  __CPLSyndicationOSLogDomain();
                }

                else
                {
                  __CPLSystemLibraryOSLogDomain();
                }
                v14 = ;
              }

              v17 = v14;
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v30 = v10;
                _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Updating local stale asset resource with %@", buf, 0xCu);
              }
            }

            v18 = [*(a1 + 72) assetResourceForCPLType:*(a1 + 80)];
            v19 = v18;
            if (v18 && ([v18 isLocallyAvailable] & 1) == 0)
            {
              v20 = [*(a1 + 72) storedResourceForCPLResource:v10 asset:*(a1 + 72) adjusted:1];
              if ((*v12 & 1) == 0)
              {
                v21 = *(*(a1 + 40) + 96);
                if (v21 == 2)
                {
                  v22 = __CPLAppLibraryOSLogDomain();
                }

                else
                {
                  if (v21 == 1)
                  {
                    __CPLSyndicationOSLogDomain();
                  }

                  else
                  {
                    __CPLSystemLibraryOSLogDomain();
                  }
                  v22 = ;
                }

                v23 = v22;
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v30 = v20;
                  _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "Updated local stale asset resource to %@", buf, 0xCu);
                }
              }
            }

            goto LABEL_44;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_44:
  }
}

- (CGSize)_targetSizeForInputSize:(CGSize)a3 maxPixelSize:(unint64_t)a4
{
  v4 = 1.0;
  if (a3.height * a3.width > a4)
  {
    v4 = sqrt(a4 / (a3.height * a3.width));
  }

  v5 = a3.width * v4;
  v6 = roundf(v5);
  v7 = a3.height * v4;
  v8 = roundf(v7);
  result.height = v8;
  result.width = v6;
  return result;
}

- (void)_linkFileFrom:(id)a3 to:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [v7 stringByDeletingLastPathComponent];
  v10 = [v8 fileExistsAtPath:v9];
  v11 = MEMORY[0x1E6994D48];
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      libraryMode = self->_libraryMode;
      if (libraryMode == 2)
      {
        v14 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (libraryMode == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v14 = ;
      }

      v15 = v14;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v26 = v9;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEBUG, "Creating destination path = %@", buf, 0xCu);
      }
    }

    v24 = 0;
    [v8 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:&v24];
    v12 = v24;
  }

  if ((*v11 & 1) == 0)
  {
    v16 = self->_libraryMode;
    if (v16 == 2)
    {
      v17 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v16 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v17 = ;
    }

    v18 = v17;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v26 = v6;
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEBUG, "Linking old thumb in %@ to new location in %@", buf, 0x16u);
    }
  }

  v23 = v12;
  [v8 linkItemAtPath:v6 toPath:v7 error:&v23];
  v19 = v23;

  if (v19 && (*v11 & 1) == 0)
  {
    v20 = self->_libraryMode;
    if (v20 == 2)
    {
      v21 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v20 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v21 = ;
    }

    v22 = v21;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v26 = v6;
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Unable to link file from '%@' to '%@'", buf, 0x16u);
    }
  }
}

- (void)libraryManager:(id)a3 providePayloadForComputeStates:(id)a4 inFolderWithURL:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager libraryManager:providePayloadForComputeStates:inFolderWithURL:completionHandler:]"];
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v14 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:{objc_msgSend(v9, "count")}];
  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __110__PLCloudPhotoLibraryManager_libraryManager_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke;
  v24[3] = &unk_1E75670B0;
  v24[4] = self;
  v25 = v9;
  v26 = v14;
  v27 = v16;
  v28 = v10;
  v29 = v13;
  v30 = v15;
  v31 = v11;
  v17 = v11;
  v18 = v15;
  v19 = v13;
  v20 = v10;
  v21 = v16;
  v22 = v14;
  v23 = v9;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v12 block:v24];
}

void __110__PLCloudPhotoLibraryManager_libraryManager_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke(id *a1)
{
  v2 = a1 + 4;
  v3 = [a1[4] libraryServicesManager];
  v4 = [v3 databaseContext];
  v5 = [v4 newShortLivedCplLibraryWithNameSuffix:"-[PLCloudPhotoLibraryManager libraryManager:providePayloadForComputeStates:inFolderWithURL:completionHandler:]_block_invoke"];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __110__PLCloudPhotoLibraryManager_libraryManager_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke_2;
  v17[3] = &unk_1E7567088;
  v6 = a1[5];
  v7 = a1[6];
  *&v8 = a1[7];
  *(&v8 + 1) = *v2;
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v18 = v9;
  v19 = v8;
  v20 = a1[8];
  v21 = v5;
  v22 = a1[9];
  v23 = a1[10];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __110__PLCloudPhotoLibraryManager_libraryManager_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke_535;
  v11[3] = &unk_1E75738F8;
  v11[4] = a1[4];
  v12 = a1[9];
  v13 = a1[5];
  v14 = a1[10];
  v15 = a1[7];
  v16 = a1[11];
  v10 = v5;
  [v10 performTransaction:v17 completionHandler:v11];
}

void __110__PLCloudPhotoLibraryManager_libraryManager_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        if ([*(a1 + 40) isCancelled])
        {
          v13 = *(a1 + 48);
          v14 = [v8 itemScopedIdentifier];
          [v13 addObject:v14];

          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v15 = *(*(a1 + 56) + 96);
            if (v15 == 2)
            {
              v16 = __CPLAppLibraryOSLogDomain();
            }

            else
            {
              if (v15 == 1)
              {
                __CPLSyndicationOSLogDomain();
              }

              else
              {
                __CPLSystemLibraryOSLogDomain();
              }
              v16 = ;
            }

            v17 = v16;
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *v18 = 0;
              _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "[CCSS] providePayloadForComputeStates: Cancelled!", v18, 2u);
            }
          }

          goto LABEL_23;
        }

        v9 = [PLManagedAsset generateFullComputeStateRecordForRecord:v8 payloadHelper:v2 destinationDirectoryURL:*(a1 + 64) inPhotoLibrary:*(a1 + 72)];
        if (v9)
        {
          [*(a1 + 80) addObject:v9];
          v10 = *(a1 + 88);
          v11 = v9;
        }

        else
        {
          v10 = *(a1 + 48);
          v11 = v8;
        }

        v12 = [v11 itemScopedIdentifier];
        [v10 addObject:v12];

        [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:
}

uint64_t __110__PLCloudPhotoLibraryManager_libraryManager_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke_535(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 96);
    if (v3 == 2)
    {
      v4 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v3 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v4 = ;
    }

    v5 = v4;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 40) count];
      v7 = [*(a1 + 48) count];
      v17 = 134218240;
      v18 = v6;
      v19 = 2048;
      v20 = v7;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "[CCSS] providePayloadForComputeStates: Returning %tu generated compute states payloads for %tu received", &v17, 0x16u);
    }
  }

  if ([*(a1 + 56) count] && (*v2 & 1) == 0)
  {
    v8 = *(*(a1 + 32) + 96);
    if (v8 == 2)
    {
      v9 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v8 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v9 = ;
    }

    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 56);
      v17 = 138412290;
      v18 = v11;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "[CCSS] providePayloadForComputeStates: Payloads generated for: %@", &v17, 0xCu);
    }
  }

  if ([*(a1 + 64) count] && (*v2 & 1) == 0)
  {
    v12 = *(*(a1 + 32) + 96);
    if (v12 == 2)
    {
      v13 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v12 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v13 = ;
    }

    v14 = v13;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 64);
      v17 = 138412290;
      v18 = v15;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "[CCSS] providePayloadForComputeStates: Payload generation skipped for: %@", &v17, 0xCu);
    }
  }

  return (*(*(a1 + 72) + 16))();
}

- (void)libraryManager:(id)a3 inMemoryDownloadDidFinishForResourceTransferTask:(id)a4 data:(id)a5 withError:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = [a4 resource];
  v12 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager libraryManager:inMemoryDownloadDidFinishForResourceTransferTask:data:withError:]"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __109__PLCloudPhotoLibraryManager_libraryManager_inMemoryDownloadDidFinishForResourceTransferTask_data_withError___block_invoke;
  v16[3] = &unk_1E7578100;
  v16[4] = self;
  v17 = v11;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v11;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v12 block:v16];
}

- (void)libraryManager:(id)a3 uploadDidProgress:(float)a4 forResourceTransferTask:(id)a5
{
  v7 = [a5 resource];
  v8 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager libraryManager:uploadDidProgress:forResourceTransferTask:]"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__PLCloudPhotoLibraryManager_libraryManager_uploadDidProgress_forResourceTransferTask___block_invoke;
  v10[3] = &unk_1E7567060;
  v11 = v7;
  v12 = self;
  v13 = a4;
  v9 = v7;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v8 block:v10];
}

void __87__PLCloudPhotoLibraryManager_libraryManager_uploadDidProgress_forResourceTransferTask___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x1E6994B90] resourceTypeTrackedForUpload:{objc_msgSend(*(a1 + 32), "resourceType")}])
  {
    v2 = *(*(a1 + 40) + 256);
    v3 = [*(a1 + 32) itemScopedIdentifier];
    v4 = *(a1 + 48);
    v5 = [*(a1 + 32) identity];
    v6 = [v5 fileSize];
    v7 = [*(a1 + 32) resourceType];
    LODWORD(v8) = v4;
    [v2 updateForMasterResourceUploadWithScopedIdentifier:v3 progress:v6 fileSize:v7 type:v8];
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.cpl.currenttransferprogresschange", 0, 0, 0);
}

- (void)libraryManager:(id)a3 uploadDidFinishForResourceTransferTask:(id)a4 withError:(id)a5
{
  v7 = a5;
  v8 = [a4 resource];
  v9 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager libraryManager:uploadDidFinishForResourceTransferTask:withError:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __94__PLCloudPhotoLibraryManager_libraryManager_uploadDidFinishForResourceTransferTask_withError___block_invoke;
  v12[3] = &unk_1E75761B8;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v9 block:v12];
}

void __94__PLCloudPhotoLibraryManager_libraryManager_uploadDidFinishForResourceTransferTask_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryServicesManager];
  v3 = [v2 databaseContext];
  v4 = [v3 newShortLivedCplLibraryWithNameSuffix:"-[PLCloudPhotoLibraryManager libraryManager:uploadDidFinishForResourceTransferTask:withError:]_block_invoke"];

  if (*(a1 + 40))
  {
    v5 = *(*(a1 + 32) + 256);
    v6 = [*(a1 + 48) itemScopedIdentifier];
    [v5 uploadFinishedForMasterResourceWithScopedIdentifier:v6 fileSize:0 type:0 withError:1];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __94__PLCloudPhotoLibraryManager_libraryManager_uploadDidFinishForResourceTransferTask_withError___block_invoke_532;
    v14[3] = &unk_1E7578848;
    v15 = *(a1 + 48);
    v16 = v4;
    [v16 performBlock:v14];

    v7 = v15;
  }

  else
  {
    v8 = [*(a1 + 48) itemScopedIdentifier];
    if ([MEMORY[0x1E6994B90] resourceTypeTrackedForUpload:{objc_msgSend(*(a1 + 48), "resourceType")}])
    {
      v9 = [*(a1 + 48) identity];
      v10 = [v9 fileSize];

      v11 = *(*(a1 + 32) + 256);
      v12 = [*(a1 + 48) itemScopedIdentifier];
      [v11 uploadFinishedForMasterResourceWithScopedIdentifier:v12 fileSize:v10 type:objc_msgSend(*(a1 + 48) withError:{"resourceType"), 0}];
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __94__PLCloudPhotoLibraryManager_libraryManager_uploadDidFinishForResourceTransferTask_withError___block_invoke_2;
    v17[3] = &unk_1E7578100;
    v18 = *(a1 + 48);
    v19 = v4;
    v20 = v8;
    v21 = *(a1 + 32);
    v7 = v8;
    [v19 performTransactionAndWait:v17];
  }

  [*(*(a1 + 32) + 256) resetIfNeededWithLibrary:v4 isInitialUpload:{objc_msgSend(*(*(a1 + 32) + 8), "initialUpload")}];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.cpl.currenttransferprogresschange", 0, 0, 0);
}

void __94__PLCloudPhotoLibraryManager_libraryManager_uploadDidFinishForResourceTransferTask_withError___block_invoke_2(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [PLManagedAsset rm_cplResourceWasUploaded:a1[4] photoLibrary:a1[5]];
  v2 = [PLCloudMaster cloudMasterWithScopedIdentifier:a1[6] prefetchResources:0 inLibrary:a1[5]];
  v3 = v2;
  if (v2 && [v2 allOriginalsAreUploaded])
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v4 = *(a1[7] + 96);
      if (v4 == 2)
      {
        v5 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v4 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v5 = ;
      }

      v6 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v3 scopedIdentifier];
        v10 = 138412546;
        v11 = v7;
        v12 = 1024;
        v13 = [v3 cloudLocalState];
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "uploadDidFinishForResourceTransferTask: setting master %@ (%d) to uploaded", &v10, 0x12u);
      }
    }

    [v3 setCloudLocalState:3];
    v8 = *(a1[7] + 256);
    v9 = [v3 scopedIdentifier];
    [v8 uploadFinishedForMasterRecordWithScopedIdentifier:v9 didUpdateStatus:0];
  }
}

void __94__PLCloudPhotoLibraryManager_libraryManager_uploadDidFinishForResourceTransferTask_withError___block_invoke_532(uint64_t a1)
{
  v2 = [*(a1 + 32) itemScopedIdentifier];
  v5 = [PLManagedAsset assetWithScopedIdentifier:v2 inLibrary:*(a1 + 40) prefetchResources:0];

  v3 = v5;
  if (v5)
  {
    v4 = [v5 isPlaceholderAsset];
    v3 = v5;
    if (v4)
    {
      [v5 setDestinationAssetCopyStateOnSourceAsset:0xFFFFFFFFLL];
      v3 = v5;
    }
  }
}

- (void)libraryManager:(id)a3 uploadDidStartForResourceTransferTask:(id)a4
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.cpl.currenttransferprogresschange", 0, 0, 0);
}

- (void)libraryManager:(id)a3 backgroundDownloadDidFailForResource:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v9 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v9 = ;
    }

    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "backgroundDownloadDidFailForResource: %@", &v13, 0xCu);
    }
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6994990] code:26 userInfo:0];
  v12 = [(PLCloudPhotoLibraryManager *)self _identifierForResource:v7];
  [(PLCloudTaskManager *)self->_taskManager reportCompletionForResourceIdentifier:v12 highPriority:0 withError:v11];
}

- (void)libraryManager:(id)a3 backgroundDownloadDidFinishForResource:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v9 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v9 = ;
    }

    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v21 = v7;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "Finished low priority download for resource: %@", buf, 0xCu);
    }
  }

  v11 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
  v12 = [v11 databaseContext];
  v13 = [v12 newShortLivedCplLibraryWithNameSuffix:"-[PLCloudPhotoLibraryManager libraryManager:backgroundDownloadDidFinishForResource:]"];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__PLCloudPhotoLibraryManager_libraryManager_backgroundDownloadDidFinishForResource___block_invoke;
  v16[3] = &unk_1E75761B8;
  v17 = v7;
  v18 = v13;
  v19 = self;
  v14 = v13;
  v15 = v7;
  [v14 performBlock:v16];
}

void __84__PLCloudPhotoLibraryManager_libraryManager_backgroundDownloadDidFinishForResource___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) itemScopedIdentifier];
  v3 = [PLManagedAsset assetWithScopedIdentifier:v2 inLibrary:*(a1 + 40) prefetchResources:1];
  if (v3)
  {
    v4 = [v3 rm_cplResourceForResourceType:{objc_msgSend(*(a1 + 32), "resourceType")}];
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [PLCloudMaster cloudMasterWithScopedIdentifier:v2 prefetchResources:1 inLibrary:*(a1 + 40)];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 assets];
      v20 = [v19 anyObject];

      v4 = [v20 rm_cplMasterResourceForResourceType:{objc_msgSend(*(a1 + 32), "resourceType")}];
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
LABEL_3:
      v5 = [v4 identity];
      v6 = [*(a1 + 32) identity];
      v7 = [v5 fingerPrint];
      v8 = [v6 fingerPrint];
      if ([v7 isEqualToString:v8])
      {
        [v5 fileUTI];
        v9 = v30 = v2;
        [v6 fileUTI];
        v10 = v4;
        v11 = v3;
        v13 = v12 = v6;
        v14 = [v9 isEqualToString:v13];

        v6 = v12;
        v3 = v11;
        v4 = v10;

        v2 = v30;
        if (v14)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v15 = *(*(a1 + 48) + 96);
            if (v15 == 2)
            {
              v16 = __CPLAppLibraryOSLogDomain();
            }

            else
            {
              if (v15 == 1)
              {
                __CPLSyndicationOSLogDomain();
              }

              else
              {
                __CPLSystemLibraryOSLogDomain();
              }
              v16 = ;
            }

            v28 = v16;
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v29 = *(a1 + 32);
              *buf = 138412290;
              v32 = v29;
              _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEBUG, "O-----> Rerequesting bg download for resource: %@", buf, 0xCu);
            }
          }

          v25 = [*(a1 + 48) cplLibrary];
          [v25 beginDownloadForResource:v10 clientBundleID:*MEMORY[0x1E69BFF18] highPriority:0 completionHandler:&__block_literal_global_531];
          goto LABEL_39;
        }
      }

      else
      {
      }

      if (*MEMORY[0x1E6994D48])
      {
LABEL_40:

LABEL_41:
        goto LABEL_42;
      }

      v21 = *(*(a1 + 48) + 96);
      if (v21 == 2)
      {
        v22 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v21 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v22 = ;
      }

      v25 = v22;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v26 = *(a1 + 32);
        *buf = 138412546;
        v32 = v26;
        v33 = 2112;
        v34 = v4;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Fingerprint of background download resource: %@ didn't match local resource: %@", buf, 0x16u);
      }

LABEL_39:

      goto LABEL_40;
    }
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v23 = *(*(a1 + 48) + 96);
    if (v23 == 2)
    {
      v24 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v23 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v24 = ;
    }

    v5 = v24;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 32);
      *buf = 138412290;
      v32 = v27;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Failed to find local resource for background downloaded resource %@", buf, 0xCu);
    }

    goto LABEL_41;
  }

LABEL_42:
}

- (void)libraryManager:(id)a3 downloadDidFinishForResourceTransferTask:(id)a4 finalResource:(id)a5 withError:(id)a6
{
  v77 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v16 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v16 = ;
    }

    v17 = v16;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v74 = v11;
      v75 = 2112;
      *v76 = v13;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "downloadDidFinishForResourceTransferTask: %@, with error: %@", buf, 0x16u);
    }
  }

  if (![v13 isCPLError] || objc_msgSend(v13, "code") != 10)
  {
    v20 = [v11 taskIdentifier];
    v21 = [v20 hash];

    kdebug_trace();
    v63 = v12;
    v60 = v10;
    if (v12)
    {
      v22 = v12;
    }

    else
    {
      v22 = [v11 resource];
    }

    v23 = v22;
    v24 = [v11 options];
    v25 = [v24 isForeground];

    v26 = [v11 options];
    v59 = [v26 hasValidTimeRange];

    v27 = [(PLCloudPhotoLibraryManager *)self _identifierForResource:v23];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __110__PLCloudPhotoLibraryManager_libraryManager_downloadDidFinishForResourceTransferTask_finalResource_withError___block_invoke;
    aBlock[3] = &unk_1E75729B0;
    v71 = v21;
    aBlock[4] = self;
    v61 = v13;
    v62 = v27;
    v68 = v62;
    v72 = v25;
    v28 = v13;
    v69 = v28;
    v29 = v23;
    v70 = v29;
    v30 = _Block_copy(aBlock);
    [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
    v32 = v31 = v11;
    v33 = [v32 databaseContext];
    v34 = [v33 newShortLivedCplLibraryWithNameSuffix:"-[PLCloudPhotoLibraryManager libraryManager:downloadDidFinishForResourceTransferTask:finalResource:withError:]"];

    v64 = v31;
    if (v28)
    {
      v10 = v60;
      v35 = v30;
      v36 = v29;
      if ((*v14 & 1) == 0)
      {
        v37 = self->_libraryMode;
        if (v37 == 2)
        {
          v38 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v37 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v38 = ;
        }

        v46 = v38;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v74 = v29;
          v75 = 2112;
          *v76 = v28;
          _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_DEFAULT, "Failed to download resource %@. Error: %@", buf, 0x16u);
        }
      }

      v47 = [v28 code] != 27;
      v43 = v34;
      if (((v47 | v59) & 1) == 0)
      {
        [(PLCloudPhotoLibraryManager *)self _updateLocalStaleResourceWithCPLResource:v29 inLibrary:v34];
      }

      v30[2](v30);
      v13 = v61;
      goto LABEL_73;
    }

    v39 = [v31 options];
    v40 = [v39 isHighPriority];

    v41 = *v14;
    v36 = v29;
    if (v29)
    {
      v42 = v40;
      v10 = v60;
      v43 = v34;
      v35 = v30;
      if ((v59 & 1) == 0)
      {
        v13 = v61;
        if ((v41 & 1) == 0)
        {
          v50 = self->_libraryMode;
          if (v50 == 2)
          {
            v51 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v50 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v51 = ;
          }

          v58 = v51;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v74 = v29;
            v75 = 1024;
            *v76 = v42;
            *&v76[4] = 1024;
            *&v76[6] = v25;
            _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_DEBUG, "Update local state of resource %@, isHighPriority: %d, isForeground: %d", buf, 0x18u);
          }
        }

        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __110__PLCloudPhotoLibraryManager_libraryManager_downloadDidFinishForResourceTransferTask_finalResource_withError___block_invoke_528;
        v65[3] = &unk_1E7576AA0;
        v66 = v35;
        [(PLCloudPhotoLibraryManager *)self _updateWithCPLResource:v29 isHighPriority:v42 isForeground:v25 inLibrary:v43 completionHandler:v65];

        goto LABEL_73;
      }

      v13 = v61;
      if (v41)
      {
        goto LABEL_67;
      }

      v44 = self->_libraryMode;
      if (v44 == 2)
      {
        v45 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v44 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v45 = ;
      }

      v53 = v45;
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_66;
      }

      *buf = 138412802;
      v74 = v29;
      v75 = 1024;
      *v76 = v42;
      *&v76[4] = 1024;
      *&v76[6] = v25;
      v54 = "Skip updating local state of time ranged video resource %@, isHighPriority: %d, isForeground: %d";
      v55 = v53;
      v56 = OS_LOG_TYPE_DEBUG;
      v57 = 24;
    }

    else
    {
      v43 = v34;
      v10 = v60;
      v13 = v61;
      v35 = v30;
      if (*v14)
      {
LABEL_67:
        v35[2](v35);
LABEL_73:

        v12 = v63;
        v11 = v64;
LABEL_74:

        goto LABEL_75;
      }

      v48 = self->_libraryMode;
      if (v48 == 2)
      {
        v49 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v48 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v49 = ;
      }

      v53 = v49;
      if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
LABEL_66:

        goto LABEL_67;
      }

      *buf = 138412290;
      v74 = v64;
      v54 = "resource transfer task %@ finished for unknown asset";
      v55 = v53;
      v56 = OS_LOG_TYPE_ERROR;
      v57 = 12;
    }

    _os_log_impl(&dword_19BF1F000, v55, v56, v54, buf, v57);
    goto LABEL_66;
  }

  if ((*v14 & 1) == 0)
  {
    v18 = self->_libraryMode;
    if (v18 == 2)
    {
      v19 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v18 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v19 = ;
    }

    v36 = v19;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v52 = [v11 resource];
      *buf = 138412290;
      v74 = v52;
      _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_DEBUG, "resource %@ will be downloaded in background, skip reporting its completion", buf, 0xCu);
    }

    goto LABEL_74;
  }

LABEL_75:
}

void __110__PLCloudPhotoLibraryManager_libraryManager_downloadDidFinishForResourceTransferTask_finalResource_withError___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  [*(*(a1 + 32) + 136) reportCompletionForResourceIdentifier:*(a1 + 40) highPriority:*(a1 + 72) withError:*(a1 + 48)];
  if (!*(a1 + 48) && [*(a1 + 56) resourceType] == 1)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.cpl.originaldownloaded", 0, 0, 0);
  }

  if (*(a1 + 72) == 1)
  {
    v3 = *(a1 + 64);
    v4 = PLCPLSignpostsTelemetryGetLog();
    v5 = v4;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      v6 = [*(a1 + 56) resourceType];
      v7 = [*(a1 + 56) identity];
      v8 = [v7 fileSize];
      v9 = [*(a1 + 56) itemScopedIdentifier];
      v10 = 134349570;
      v11 = v6;
      v12 = 2050;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v5, OS_SIGNPOST_INTERVAL_END, v3, "OnDemandDownload", " enableTelemetry=YES type=%{signpost.telemetry:number1,public}lu size=%{signpost.telemetry:number2,public}lu identifier=%@", &v10, 0x20u);
    }
  }
}

- (void)libraryManager:(id)a3 downloadDidStartForResourceTransferTask:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 resource];
  v7 = [(PLCloudPhotoLibraryManager *)self _identifierForResource:v6];
  v8 = [v5 options];
  v9 = [v8 isForeground];

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v11 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v11 = ;
    }

    v12 = v11;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEBUG, "downloadDidStartForResourceTransferTask: %@", &v13, 0xCu);
    }
  }

  [(PLCloudTaskManager *)self->_taskManager reportProgress:v7 forResourceIdentifier:v9 highPriority:0.0];
}

- (void)libraryManager:(id)a3 downloadDidProgress:(float)a4 forResourceTransferTask:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = [v7 resource];
  v9 = [(PLCloudPhotoLibraryManager *)self _identifierForResource:v8];
  v10 = [v7 options];
  v11 = [v10 isForeground];

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v14 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v14 = ;
    }

    v15 = v14;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v16 = 134218242;
      v17 = a4;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEBUG, "downloadDidProgress %f forResourceTransferTask: %@", &v16, 0x16u);
    }
  }

  *&v12 = a4;
  [(PLCloudTaskManager *)self->_taskManager reportProgress:v9 forResourceIdentifier:v11 highPriority:v12];
}

- (void)sizeOfResourcesToUploadDidChangeForLibraryManager:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager sizeOfResourcesToUploadDidChangeForLibraryManager:]"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__PLCloudPhotoLibraryManager_sizeOfResourcesToUploadDidChangeForLibraryManager___block_invoke;
  v7[3] = &unk_1E7578848;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v5 block:v7];
}

void __80__PLCloudPhotoLibraryManager_sizeOfResourcesToUploadDidChangeForLibraryManager___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryServicesManager];
  v3 = [v2 databaseContext];
  v5 = [v3 newShortLivedCplLibraryWithNameSuffix:"-[PLCloudPhotoLibraryManager sizeOfResourcesToUploadDidChangeForLibraryManager:]_block_invoke"];

  if (![*(a1 + 40) sizeOfOriginalResourcesToUpload] && objc_msgSend(*(*(a1 + 32) + 256), "totalSizeOfUnpushedOriginals"))
  {
    [*(*(a1 + 32) + 256) reset];
    [*(*(a1 + 32) + 256) setupFromLibrary:v5 isInitialUpload:{objc_msgSend(*(*(a1 + 32) + 8), "initialUpload")}];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.cpl.currenttransferprogresschange", 0, 0, 0);
  }

  [*(a1 + 32) _updateTransferCountsInLibrary:v5];
}

- (void)workerCoordinatorDidFinishAllSubmittedJobsOnBundle:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager workerCoordinatorDidFinishAllSubmittedJobsOnBundle:]"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__PLCloudPhotoLibraryManager_workerCoordinatorDidFinishAllSubmittedJobsOnBundle___block_invoke;
  v7[3] = &unk_1E7578848;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v5 block:v7];
}

void __81__PLCloudPhotoLibraryManager_workerCoordinatorDidFinishAllSubmittedJobsOnBundle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 464));
  v3 = [WeakRetained libraryBundle];

  if ([*(a1 + 32) isCloudPhotoLibraryEnabled])
  {
    v4 = *(a1 + 40);
    v5 = +[PLBackgroundJobWorkerTypes maskForUrgentResourceCriteria];
    v6 = [v4 pendingJobsForBundle:v3 workerTypes:v5];

    v7 = +[PLBackgroundJobCriteria criteriaForUrgentResourceWorker];
    v8 = [v6 containsObject:v7];

    v9 = MEMORY[0x1E6994D48];
    if (v8)
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v10 = *(*(a1 + 32) + 96);
        if (v10 == 2)
        {
          v11 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v10 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v11 = ;
        }

        v14 = v11;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Requested to push all changes: jobs still pending, re-submitting bundle for processing...", buf, 2u);
        }
      }

      v15 = *(*(a1 + 32) + 296);
      v16 = +[PLBackgroundJobCriteria criteriaForUrgentResourceWorker];
      [v15 submitBundleForProcessing:v3 withCriteria:v16 reportProgressUsingBlock:0];
    }

    else
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v12 = *(*(a1 + 32) + 96);
        if (v12 == 2)
        {
          v13 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v12 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v13 = ;
        }

        v17 = v13;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 0;
          _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Requested to push all changes: pushing all changes to CPL...", v24, 2u);
        }
      }

      *(*(a1 + 32) + 304) = 1;
      v18 = [*(a1 + 32) _canExternallyTransitionToNewLibraryStateIgnoringPause:1];
      v19 = *(a1 + 32);
      if (v18)
      {
        if (*(v19 + 80) == 8)
        {
          *(v19 + 128) = 1;
          v19 = *(a1 + 32);
        }

        if ((*v9 & 1) == 0)
        {
          v20 = *(v19 + 96);
          if (v20 == 2)
          {
            v21 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v20 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v21 = ;
          }

          v22 = v21;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *v23 = 0;
            _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEBUG, "Going to fetch new events from change hub from PUSHALLCHANGES", v23, 2u);
          }

          v19 = *(a1 + 32);
        }

        [v19 _transitionToState:3];
      }

      else
      {
        *(v19 + 90) = 1;
      }
    }
  }

  else
  {
    *(*(a1 + 32) + 304) = 1;
    [*(a1 + 32) _callPushAllChangesCompletionHandlersIfNecessary];
  }
}

- (void)libraryManager:(id)a3 pushAllChangesWithCompletionHandler:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager libraryManager:pushAllChangesWithCompletionHandler:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__PLCloudPhotoLibraryManager_libraryManager_pushAllChangesWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7577C08;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v6 block:v8];
}

void __81__PLCloudPhotoLibraryManager_libraryManager_pushAllChangesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[37])
  {
    v3 = [[PLBackgroundJobWorkerCoordinator alloc] initWithWorkerCoordinatorWorkerMode:1 statusCenter:0];
    v4 = *(a1 + 32);
    v5 = *(v4 + 296);
    *(v4 + 296) = v3;

    [*(*(a1 + 32) + 296) setDelegate:?];
    v2 = *(a1 + 32);
  }

  v6 = [v2 isCloudPhotoLibraryEnabled];
  v7 = *(a1 + 40);
  if (v6)
  {
    if (v7)
    {
      v8 = *(*(a1 + 32) + 288);
      v9 = _Block_copy(v7);
      [v8 addObject:v9];
    }

    if ([*(*(a1 + 32) + 288) count] == 1)
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v10 = *(*(a1 + 32) + 96);
        if (v10 == 2)
        {
          v11 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v10 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v11 = ;
        }

        v13 = v11;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Requested to push all changes: submitting bundle for processing...", v19, 2u);
        }
      }

      v14 = *(a1 + 32);
      v15 = *(v14 + 296);
      WeakRetained = objc_loadWeakRetained((v14 + 464));
      v17 = [WeakRetained libraryBundle];
      v18 = +[PLBackgroundJobCriteria criteriaForUrgentResourceWorker];
      [v15 submitBundleForProcessing:v17 withCriteria:v18 reportProgressUsingBlock:0];
    }
  }

  else
  {
    v12 = v7[2];

    v12();
  }
}

- (void)libraryManager:(id)a3 provideLocalResource:(id)a4 recordClass:(Class)a5 completionHandler:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v14 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v14 = ;
    }

    v15 = v14;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(PLCloudPhotoLibraryManager *)self _debugNameForState:self->_state];
      *buf = 138412546;
      v25 = v11;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Requested to tentatively provide %@. assetsd state is currently in %@", buf, 0x16u);
    }
  }

  v17 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager libraryManager:provideLocalResource:recordClass:completionHandler:]"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __96__PLCloudPhotoLibraryManager_libraryManager_provideLocalResource_recordClass_completionHandler___block_invoke;
  v20[3] = &unk_1E7567018;
  v20[4] = self;
  v21 = v11;
  v22 = v12;
  v23 = a5;
  v18 = v11;
  v19 = v12;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v17 block:v20];
}

void __96__PLCloudPhotoLibraryManager_libraryManager_provideLocalResource_recordClass_completionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _isAssetsdNotReadyToAnswer])
  {
    v2 = *(*(a1 + 48) + 16);

    v2();
  }

  else
  {
    v3 = [*(a1 + 32) libraryServicesManager];
    v4 = [v3 databaseContext];
    v5 = [v4 newShortLivedCplLibraryWithNameSuffix:"-[PLCloudPhotoLibraryManager libraryManager:provideLocalResource:recordClass:completionHandler:]_block_invoke"];

    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__11895;
    v27 = __Block_byref_object_dispose__11896;
    v28 = 0;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __96__PLCloudPhotoLibraryManager_libraryManager_provideLocalResource_recordClass_completionHandler___block_invoke_2;
    v18 = &unk_1E7566FF0;
    v6 = *(a1 + 40);
    v7 = *(a1 + 56);
    v19 = v6;
    v22 = v7;
    v8 = v5;
    v20 = v8;
    v21 = &v23;
    [v8 performBlockAndWait:&v15];
    if (v24[5])
    {
      v11 = [*(a1 + 40) identity];
      v12 = [v11 fileURL];
      if (!v12 || ([MEMORY[0x1E696AC08] defaultManager], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "copyItemAtURL:toURL:error:", v24[5], v12, 0), v13, (v14 & 1) == 0))
      {
        [v11 setFileURL:v24[5]];
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      (*(*(a1 + 48) + 16))(*(a1 + 48), 0, 1, v9, v10);
    }

    _Block_object_dispose(&v23, 8);
  }
}

void __96__PLCloudPhotoLibraryManager_libraryManager_provideLocalResource_recordClass_completionHandler___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) resourceType];
  v3 = [*(a1 + 32) itemScopedIdentifier];
  v4 = *(a1 + 56);
  if (v4 == objc_opt_class())
  {
    v6 = [PLManagedAsset assetWithScopedIdentifier:v3 inLibrary:*(a1 + 40) prefetchResources:1];
    v7 = [v6 assetResourceForCPLType:v2];
    if ([v7 isLocallyAvailable])
    {
      v13 = [v7 fileURL];
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }

LABEL_16:

    goto LABEL_17;
  }

  v5 = *(a1 + 56);
  if (v5 == objc_opt_class())
  {
    v6 = [PLCloudMaster cloudMasterWithScopedIdentifier:v3 prefetchResources:1 inLibrary:*(a1 + 40)];
    [v6 rm_assetAttachedResourcesForResourceType:v2];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v22 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          if ([v12 isLocallyAvailable])
          {
            v16 = [v12 fileURL];
            v17 = *(*(a1 + 48) + 8);
            v18 = *(v17 + 40);
            *(v17 + 40) = v16;

            goto LABEL_15;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    goto LABEL_16;
  }

LABEL_17:
}

- (void)_getStatusChanges:(id)a3 transaction:(id)a4 notificationGeneration:(unint64_t)a5 inLibrary:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __93__PLCloudPhotoLibraryManager__getStatusChanges_transaction_notificationGeneration_inLibrary___block_invoke;
  v16[3] = &unk_1E7566FC8;
  v16[4] = self;
  v17 = v11;
  v19 = v10;
  v20 = a5;
  v18 = v12;
  v13 = v10;
  v14 = v12;
  v15 = v11;
  [v13 getChangedStatusesWithCompletionHandler:v16];
}

void __93__PLCloudPhotoLibraryManager__getStatusChanges_transaction_notificationGeneration_inLibrary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __93__PLCloudPhotoLibraryManager__getStatusChanges_transaction_notificationGeneration_inLibrary___block_invoke_2;
  v18[3] = &unk_1E7568BD8;
  v19 = v5;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v23 = *(a1 + 64);
  *&v11 = v9;
  *(&v11 + 1) = *(a1 + 32);
  v17 = v11;
  v12 = v10;
  v13 = *(a1 + 40);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  v20 = v17;
  v21 = v14;
  v22 = v6;
  v15 = v6;
  v16 = v5;
  [v7 _runAsyncOnIsolationQueueWithTransaction:v8 block:v18];
}

void __93__PLCloudPhotoLibraryManager__getStatusChanges_transaction_notificationGeneration_inLibrary___block_invoke_2(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __93__PLCloudPhotoLibraryManager__getStatusChanges_transaction_notificationGeneration_inLibrary___block_invoke_3;
    v29[3] = &unk_1E7577BE0;
    v2 = *(a1 + 40);
    v28 = *(a1 + 48);
    v3 = *(a1 + 32);
    v33 = *(a1 + 80);
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    *&v6 = v4;
    *(&v6 + 1) = v5;
    *&v7 = v28;
    *(&v7 + 1) = v3;
    v30 = v7;
    v31 = v6;
    v32 = *(a1 + 64);
    [v2 performTransactionAndWait:v29];
  }

  else
  {
    v8 = MEMORY[0x1E6994D48];
    v9 = *MEMORY[0x1E6994D48];
    if (*(a1 + 72) && (*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v10 = *(*(a1 + 48) + 96);
      if (v10 == 2)
      {
        v11 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v10 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v11 = ;
      }

      v12 = v11;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 72);
        v14 = *(a1 + 80);
        *buf = 138412546;
        v35 = v13;
        v36 = 2048;
        v37 = v14;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Error getting statuses %@, notification generation (%lu)", buf, 0x16u);
      }

      v9 = *v8;
    }

    v15 = *(a1 + 80);
    v16 = *(a1 + 48);
    v17 = v16[42];
    if (v15 == v17)
    {
      if ((v9 & 1) == 0)
      {
        v18 = v16[12];
        if (v18 == 2)
        {
          v19 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v18 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v19 = ;
        }

        v22 = v19;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [*(a1 + 48) _debugNameForState:*(*(a1 + 48) + 80)];
          v24 = *(a1 + 80);
          *buf = 138412546;
          v35 = v23;
          v36 = 2048;
          v37 = v24;
          _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "Finished handling record status change notification, state is currently %@, notification generation (%lu)", buf, 0x16u);
        }

        v16 = *(a1 + 48);
        v15 = v16[42];
      }

      v16[42] = v15 + 1;
      *(*(a1 + 48) + 328) = 0;
    }

    else
    {
      if ((v9 & 1) == 0)
      {
        v20 = v16[12];
        if (v20 == 2)
        {
          v21 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v20 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v21 = ;
        }

        v25 = v21;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [*(a1 + 48) _debugNameForState:*(*(a1 + 48) + 80)];
          v27 = *(*(a1 + 48) + 336);
          *buf = 138412546;
          v35 = v26;
          v36 = 2048;
          v37 = v27;
          _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "Notified for record status changes (pending notifications), state is currently %@, notification generation (%lu)", buf, 0x16u);
        }

        v16 = *(a1 + 48);
        v17 = v16[42];
      }

      [v16 _getStatusChanges:*(a1 + 56) transaction:*(a1 + 64) notificationGeneration:v17 inLibrary:*(a1 + 40)];
    }
  }
}

void __93__PLCloudPhotoLibraryManager__getStatusChanges_transaction_notificationGeneration_inLibrary___block_invoke_3(uint64_t a1)
{
  v129 = *MEMORY[0x1E69E9840];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v2 = *(*(a1 + 32) + 96);
    if (v2 == 2)
    {
      v3 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v2 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v3 = ;
    }

    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 40) count];
      v6 = *(a1 + 72);
      *buf = 134218240;
      v126 = v5;
      v127 = 2048;
      v128 = v6;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Handling %lu record status changes, notification generation (%lu)", buf, 0x16u);
    }
  }

  v87 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v86 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v7 = MEMORY[0x1E69BF208];
  v8 = [*(a1 + 32) pathManager];
  v9 = [v8 libraryURL];
  v10 = [v9 path];
  v89 = [v7 freeSpaceBelowDesiredSpaceThresholdForPath:v10];

  v119 = 0;
  v90 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v88 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v11 = *(a1 + 40);
  v12 = [v11 countByEnumeratingWithState:&v115 objects:v124 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v116;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v116 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v115 + 1) + 8 * i);
        v17 = [v16 record];
        if ([v16 isQuarantined])
        {
          [*(*(a1 + 32) + 8) quarantineRecord:v17 uploadTracker:*(*(a1 + 32) + 256) inLibrary:*(a1 + 48)];
        }

        else if (([v16 isUploaded] & v89 & 1) != 0 || objc_msgSend(v16, "isConfirmed"))
        {
          v18 = [v17 scopedIdentifier];
          if (v18)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v87 addObject:v18];
              [*(*(a1 + 32) + 256) uploadFinishedForMasterRecordWithScopedIdentifier:v18 didUpdateStatus:&v119];
              if ((*MEMORY[0x1E6994D48] & 1) == 0)
              {
                v19 = *(*(a1 + 32) + 96);
                if (v19 == 2)
                {
                  v20 = __CPLAppLibraryOSLogDomain();
                }

                else
                {
                  if (v19 == 1)
                  {
                    __CPLSyndicationOSLogDomain();
                  }

                  else
                  {
                    __CPLSystemLibraryOSLogDomain();
                  }
                  v20 = ;
                }

                v23 = v20;
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v126 = v18;
                  v24 = v23;
                  v25 = OS_LOG_TYPE_DEBUG;
                  v26 = "Marking master record as uploaded in tracker: %@";
LABEL_42:
                  _os_log_impl(&dword_19BF1F000, v24, v25, v26, buf, 0xCu);
                }

                goto LABEL_43;
              }
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v86 addObject:v18];
              }
            }
          }

          else if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v21 = *(*(a1 + 32) + 96);
            if (v21 == 2)
            {
              v22 = __CPLAppLibraryOSLogDomain();
            }

            else
            {
              if (v21 == 1)
              {
                __CPLSyndicationOSLogDomain();
              }

              else
              {
                __CPLSystemLibraryOSLogDomain();
              }
              v22 = ;
            }

            v23 = v22;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v126 = v17;
              v24 = v23;
              v25 = OS_LOG_TYPE_ERROR;
              v26 = "Missing scopedIdentifier for %@";
              goto LABEL_42;
            }

LABEL_43:
          }
        }

        if ([v16 isUploaded])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = [v17 scopedIdentifier];
            if ([v27 isInACPLShare])
            {
              v28 = [PLManagedAsset assetWithScopedIdentifier:v27 inLibrary:*(a1 + 48) prefetchResources:0];
              v29 = [v28 shareRelationship];
              v30 = [v29 status];
              if (v28 && v29 && v30 == 1 && (([v28 isPlaceholderAsset] & 1) != 0 || objc_msgSend(v28, "isCPLSharingScopeAsset")))
              {
                if ([v28 isPlaceholderAsset])
                {
                  if ([objc_opt_class() subclassKind] == 1)
                  {
                    v31 = [MEMORY[0x1E69BF328] savedAssetTypeForMomentSharedAsset];
                    goto LABEL_58;
                  }

                  if ([objc_opt_class() subclassKind] == 3)
                  {
                    v31 = [MEMORY[0x1E69BF328] savedAssetTypeForCollectionShareAsset];
LABEL_58:
                    [v28 fixupPlaceholderAssetWithSavedAssetType:v31];
                  }
                }

                v32 = [objc_opt_class() subclassKind];
                v33 = v90;
                if (v32 == 1 || (v34 = [objc_opt_class() subclassKind], v33 = v88, v34 == 3))
                {
                  [v33 addObject:v29];
                }
              }
            }
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v115 objects:v124 count:16];
    }

    while (v13);
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  obj = v90;
  v35 = [obj countByEnumeratingWithState:&v111 objects:v123 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v112;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v112 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v111 + 1) + 8 * j);
        [v39 recomputeCachedValues];
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v40 = *(*(a1 + 32) + 96);
          if (v40 == 2)
          {
            v41 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v40 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v41 = ;
          }

          v42 = v41;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v43 = [v39 scopeIdentifier];
            v44 = [v39 uuid];
            *buf = 138543618;
            v126 = v43;
            v127 = 2114;
            v128 = v44;
            _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_DEFAULT, "Recomputed uploaded asset counts on MomentShare %{public}@ %{public}@ after receiving record status changes", buf, 0x16u);
          }
        }
      }

      v36 = [obj countByEnumeratingWithState:&v111 objects:v123 count:16];
    }

    while (v36);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v91 = v88;
  v45 = [v91 countByEnumeratingWithState:&v107 objects:v122 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v108;
    do
    {
      for (k = 0; k != v46; ++k)
      {
        if (*v108 != v47)
        {
          objc_enumerationMutation(v91);
        }

        v49 = *(*(&v107 + 1) + 8 * k);
        [v49 recomputeCachedValues];
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v50 = *(*(a1 + 32) + 96);
          if (v50 == 2)
          {
            v51 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v50 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v51 = ;
          }

          v52 = v51;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v53 = [v49 scopeIdentifier];
            v54 = [v49 uuid];
            *buf = 138543618;
            v126 = v53;
            v127 = 2114;
            v128 = v54;
            _os_log_impl(&dword_19BF1F000, v52, OS_LOG_TYPE_DEFAULT, "Recomputed uploaded asset counts on CollectionShare %{public}@ %{public}@ after receiving record status changes", buf, 0x16u);
          }
        }
      }

      v46 = [v91 countByEnumeratingWithState:&v107 objects:v122 count:16];
    }

    while (v46);
  }

  if (v119 == 1)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.cpl.currenttransferprogresschange", 0, 0, 0);
  }

  v56 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v57 = [v86 allObjects];
  v58 = [PLManagedAsset assetsByScopedIdentifiers:v57 relationshipKeyPathsForPrefetching:0 inLibrary:*(a1 + 48)];

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v59 = [v58 allValues];
  v60 = [v59 countByEnumeratingWithState:&v103 objects:v121 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v104;
    do
    {
      for (m = 0; m != v61; ++m)
      {
        if (*v104 != v62)
        {
          objc_enumerationMutation(v59);
        }

        v64 = [*(*(&v103 + 1) + 8 * m) allAssetCPLResources];
        [v56 unionSet:v64];
      }

      v61 = [v59 countByEnumeratingWithState:&v103 objects:v121 count:16];
    }

    while (v61);
  }

  v102 = 0u;
  v100 = 0u;
  v101 = 0u;
  v99 = 0u;
  v65 = v87;
  v66 = [v65 countByEnumeratingWithState:&v99 objects:v120 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v100;
    do
    {
      for (n = 0; n != v67; ++n)
      {
        if (*v100 != v68)
        {
          objc_enumerationMutation(v65);
        }

        v70 = [PLCloudMaster cloudMasterWithScopedIdentifier:*(*(&v99 + 1) + 8 * n) prefetchResources:1 inLibrary:*(a1 + 48)];
        v71 = [v70 allAssetAttachedResources];
        [v56 unionSet:v71];
      }

      v67 = [v65 countByEnumeratingWithState:&v99 objects:v120 count:16];
    }

    while (v67);
  }

  v72 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > %d", @"localAvailability", 0xFFFFFFFFLL];
  [v56 filterUsingPredicate:v72];

  if ([v56 count] && (*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v73 = *(*(a1 + 32) + 96);
    if (v73 == 2)
    {
      v74 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v73 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v74 = ;
    }

    v75 = v74;
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      v76 = [v56 valueForKey:@"objectID"];
      v77 = *(a1 + 72);
      *buf = 138412546;
      v126 = v76;
      v127 = 2048;
      v128 = v77;
      _os_log_impl(&dword_19BF1F000, v75, OS_LOG_TYPE_DEFAULT, "Checking and marking purgeable resources %@, notification generation (%lu)", buf, 0x16u);
    }
  }

  v78 = *(a1 + 32);
  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __93__PLCloudPhotoLibraryManager__getStatusChanges_transaction_notificationGeneration_inLibrary___block_invoke_517;
  v93[3] = &unk_1E7568BD8;
  v94 = v65;
  v79 = *(a1 + 48);
  v80 = *(a1 + 56);
  *&v81 = *(a1 + 40);
  *(&v81 + 1) = *(a1 + 32);
  *&v82 = v79;
  *(&v82 + 1) = v80;
  v95 = v82;
  v96 = v81;
  v83 = *(a1 + 64);
  v84 = *(a1 + 72);
  v97 = v83;
  v98 = v84;
  v85 = v65;
  [v78 _checkAndMarkPurgeableResources:v56 checkIfSafe:1 checkServerIfNecessary:v89 urgency:1 completionHandler:v93];
}

uint64_t __93__PLCloudPhotoLibraryManager__getStatusChanges_transaction_notificationGeneration_inLibrary___block_invoke_517(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v4 = MEMORY[0x1E69E9820];
    v5 = 3221225472;
    v6 = __93__PLCloudPhotoLibraryManager__getStatusChanges_transaction_notificationGeneration_inLibrary___block_invoke_2_518;
    v7 = &unk_1E7578848;
    v2 = *(a1 + 40);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v2 performTransactionAndWait:&v4];
  }

  [*(a1 + 48) acknowledgeChangedStatuses:{*(a1 + 56), v4, v5, v6, v7}];
  return [*(a1 + 64) _getStatusChanges:*(a1 + 48) transaction:*(a1 + 72) notificationGeneration:*(a1 + 80) inLibrary:*(a1 + 40)];
}

void __93__PLCloudPhotoLibraryManager__getStatusChanges_transaction_notificationGeneration_inLibrary___block_invoke_2_518(uint64_t a1)
{
  v2 = [*(a1 + 32) allObjects];
  v3 = [PLCloudMaster cloudMastersByScopedIdentifiers:v2 relationshipKeyPathsForPrefetching:0 inLibrary:*(a1 + 40)];

  [v3 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_522];
}

- (void)libraryManagerHasStatusChanges:(id)a3
{
  v4 = a3;
  if (PLIsAssetsd())
  {
    v5 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager libraryManagerHasStatusChanges:]"];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__PLCloudPhotoLibraryManager_libraryManagerHasStatusChanges___block_invoke;
    v10[3] = &unk_1E75761B8;
    v10[4] = self;
    v11 = v4;
    v12 = v5;
    v6 = v5;
    [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v6 block:v10];

LABEL_12:
    goto LABEL_13;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v8 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v8 = ;
    }

    v6 = v8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Notified for record status change, but PLCloudPhotoLibrary is not running in assetsd", v9, 2u);
    }

    goto LABEL_12;
  }

LABEL_13:
}

void __61__PLCloudPhotoLibraryManager_libraryManagerHasStatusChanges___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 328))
  {
    ++*(v2 + 336);
  }

  else
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v3 = *(v2 + 96);
      if (v3 == 2)
      {
        v4 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v3 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v4 = ;
      }

      v5 = v4;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(a1 + 32) _debugNameForState:*(*(a1 + 32) + 80)];
        v7 = *(*(a1 + 32) + 336);
        v11 = 138412546;
        v12 = v6;
        v13 = 2048;
        v14 = v7;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Notified for record status changes, state is currently %@, notification generation (%lu)", &v11, 0x16u);
      }

      v2 = *(a1 + 32);
    }

    v8 = [v2 libraryServicesManager];
    v9 = [v8 databaseContext];
    v10 = [v9 newShortLivedCplLibraryWithNameSuffix:"-[PLCloudPhotoLibraryManager libraryManagerHasStatusChanges:]_block_invoke"];

    [*(a1 + 32) _getStatusChanges:*(a1 + 40) transaction:*(a1 + 48) notificationGeneration:*(*(a1 + 32) + 336) inLibrary:v10];
    *(*(a1 + 32) + 328) = 1;
  }
}

- (void)libraryManagerHasChangesToPull:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v6 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v6 = ;
    }

    v7 = v6;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(PLCloudPhotoLibraryManager *)self _debugNameForState:self->_state];
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Notified for changes to pull, assetsd state is currently in %@", &v13, 0xCu);
    }
  }

  if (PLIsAssetsd())
  {
    [(PLCloudPhotoLibraryManager *)self sync];
  }

  else
  {
    v9 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
    v10 = [v9 libraryBundle];
    v11 = [v10 assetsdClient];
    v12 = [v11 cloudInternalClient];
    [v12 syncCloudPhotoLibrary];
  }
}

- (void)libraryManagerDidChangeConfiguration:(id)a3
{
  v4 = [(PLCloudPhotoLibraryManager *)self cplConfiguration];
  [(PLCloudPhotoLibraryManager *)self configurationDidChange:v4];
}

- (void)libraryManagerStatusDidChange:(id)a3
{
  v4 = [(PLCloudPhotoLibraryManager *)self cplStatus];
  [(PLCloudPhotoLibraryManager *)self statusDidChange:v4];
}

- (void)_markResourceObjectIDsAsPurgeable:(id)a3 urgency:(int64_t)a4 inLibrary:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v11 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v11 = ;
    }

    v12 = v11;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = [v8 count];
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Marking %lu resources as purgeable", buf, 0xCu);
    }
  }

  v13 = [v9 managedObjectContext];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __82__PLCloudPhotoLibraryManager__markResourceObjectIDsAsPurgeable_urgency_inLibrary___block_invoke;
  v16[3] = &unk_1E7576168;
  v17 = v8;
  v18 = v13;
  v19 = self;
  v20 = a4;
  v14 = v13;
  v15 = v8;
  [v9 performBlock:v16];
}

void __82__PLCloudPhotoLibraryManager__markResourceObjectIDsAsPurgeable_urgency_inLibrary___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLInternalResource entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", *(a1 + 32)];
  [v4 setPredicate:v5];

  if ([*(a1 + 32) count] >= 0x65)
  {
    [v4 setFetchBatchSize:100];
  }

  v6 = *(a1 + 40);
  v24 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v24];
  v8 = v24;
  v9 = [v7 count];
  if (v9 != [*(a1 + 32) count] && (*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v10 = *(*(a1 + 48) + 96);
    if (v10 == 2)
    {
      v11 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v10 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v11 = ;
    }

    v12 = v11;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v7 count];
      v14 = [*(a1 + 32) count];
      v15 = *(a1 + 32);
      *buf = 134218498;
      v26 = v13;
      v27 = 2048;
      v28 = v14;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Only found %lu resources from %lu resourceIDs: %@", buf, 0x20u);
    }
  }

  if (v7)
  {
    v16 = [v7 count];
    v17 = *(a1 + 48);
    v18 = [MEMORY[0x1E695DFD8] setWithArray:v7];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __82__PLCloudPhotoLibraryManager__markResourceObjectIDsAsPurgeable_urgency_inLibrary___block_invoke_504;
    v23[3] = &unk_1E7577B90;
    v19 = *(a1 + 56);
    v23[4] = *(a1 + 48);
    v23[5] = v16;
    [v17 _checkAndMarkPurgeableResources:v18 checkIfSafe:1 checkServerIfNecessary:0 urgency:v19 completionHandler:v23];
  }

  else if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v20 = *(*(a1 + 48) + 96);
    if (v20 == 2)
    {
      v21 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v20 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v21 = ;
    }

    v22 = v21;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v8;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Failed to fetch confirmed resources %@", buf, 0xCu);
    }
  }
}

void __82__PLCloudPhotoLibraryManager__markResourceObjectIDsAsPurgeable_urgency_inLibrary___block_invoke_504(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v2 = *(*(a1 + 32) + 96);
    if (v2 == 2)
    {
      v3 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v2 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v3 = ;
    }

    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = 134217984;
      v7 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Successfully checked and marked %lu purgeable resources", &v6, 0xCu);
    }
  }
}

- (void)_processDownloadBatchWithSession:(id)a3 inLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v8 = PLCPLGetLog();
  v9 = os_signpost_id_generate(v8);
  v10 = v8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "BatchDownload", "", buf, 2u);
  }

  v12 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager _processDownloadBatchWithSession:inLibrary:]"];
  v13 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
  v14 = [v13 postRunningProgress];
  v15 = [v14 isCancelled];

  if (v15)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      libraryMode = self->_libraryMode;
      if (libraryMode == 2)
      {
        v17 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (libraryMode == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v17 = ;
      }

      v18 = v17;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "LibraryServicesManager is shutting down, bailing out", buf, 2u);
      }
    }

    v19 = v11;
    v20 = v19;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v20, OS_SIGNPOST_INTERVAL_END, v9, "BatchDownload", "Shutting Down", buf, 2u);
    }
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __73__PLCloudPhotoLibraryManager__processDownloadBatchWithSession_inLibrary___block_invoke;
    v21[3] = &unk_1E7566F80;
    v21[4] = self;
    v22 = v12;
    v23 = v7;
    v24 = v11;
    v26 = v9;
    v25 = v6;
    [v25 getChangeBatchWithCompletionHandler:v21];
  }
}

void __73__PLCloudPhotoLibraryManager__processDownloadBatchWithSession_inLibrary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __73__PLCloudPhotoLibraryManager__processDownloadBatchWithSession_inLibrary___block_invoke_2;
  v18[3] = &unk_1E7566EE0;
  v19 = v5;
  v20 = v7;
  v21 = v6;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v24 = *(a1 + 72);
  v12 = v11;
  v13 = *(a1 + 40);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v22 = v15;
  v23 = v14;
  v16 = v6;
  v17 = v5;
  [v7 _runAsyncOnIsolationQueueWithTransaction:v8 block:v18];
}

void __73__PLCloudPhotoLibraryManager__processDownloadBatchWithSession_inLibrary___block_invoke_2(uint64_t a1)
{
  v92 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6994D48];
  if (!*(a1 + 32))
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v5 = *(*(a1 + 40) + 96);
      if (v5 == 2)
      {
        v6 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v5 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v6 = ;
      }

      v18 = v6;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 48);
        *buf = 138412290;
        v91 = v19;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Pulled change batch: %@", buf, 0xCu);
      }
    }

    if (*(a1 + 48))
    {
      v20 = *(a1 + 40);
      v21 = *(v20 + 8);
      v22 = [*(v20 + 16) deletedRecordsFromBatch:?];
      [v21 recordDeletions:v22];

      v23 = [*(*(a1 + 40) + 16) handleIncomingBatch:*(a1 + 48)];
      v24 = [v23 hasResourceChanges];
      v25 = [v23 numberOfPhotos];
      v26 = [v23 numberOfVideos];
      if (v25 | v26)
      {
        v27 = *(a1 + 40);
        v83 = MEMORY[0x1E69E9820];
        v84 = 3221225472;
        v85 = __73__PLCloudPhotoLibraryManager__processDownloadBatchWithSession_inLibrary___block_invoke_477;
        v86 = &unk_1E7578320;
        v87 = v27;
        v88 = v25;
        v89 = v26;
        PLRunWithUnfairLock();
        [*(a1 + 40) _updateTransferCountsInLibrary:*(a1 + 56)];
      }

      v28 = [v23 cmmUUIDsToNotify];
      if ([v28 count])
      {
        v29 = *(a1 + 56);
        v79[0] = MEMORY[0x1E69E9820];
        v79[1] = 3221225472;
        v79[2] = __73__PLCloudPhotoLibraryManager__processDownloadBatchWithSession_inLibrary___block_invoke_2_478;
        v79[3] = &unk_1E75761B8;
        v30 = v28;
        v31 = *(a1 + 40);
        v80 = v30;
        v81 = v31;
        v82 = *(a1 + 56);
        [v29 performBlock:v79 withPriority:0];
      }

      if ([v23 needsWidgetTimelineReload])
      {
        _processDownloadBatchWithSession_inLibrary__sessionNeedsWidgetTimelineReload = 1;
      }

      v32 = [*(a1 + 40) libraryServicesManager];
      v33 = [v32 postRunningProgress];
      v34 = [v33 isCancelled];

      if (v34)
      {
        if ((*v2 & 1) == 0)
        {
          v35 = *(*(a1 + 40) + 96);
          if (v35 == 2)
          {
            v36 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v35 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v36 = ;
          }

          v55 = v36;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v55, OS_LOG_TYPE_DEFAULT, "LibraryServicesManager is shutting down, bailing out", buf, 2u);
          }
        }

        v56 = *(a1 + 64);
        v57 = v56;
        v58 = *(a1 + 88);
        if (v58 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19BF1F000, v57, OS_SIGNPOST_INTERVAL_END, v58, "BatchDownload", "Shutting Down", buf, 2u);
        }
      }

      else
      {
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __73__PLCloudPhotoLibraryManager__processDownloadBatchWithSession_inLibrary___block_invoke_481;
        v71[3] = &unk_1E7566F58;
        v39 = *(a1 + 48);
        v71[4] = *(a1 + 40);
        v40 = *(a1 + 72);
        v72 = *(a1 + 80);
        v73 = v23;
        v74 = *(a1 + 56);
        v78 = v24;
        v41 = *(a1 + 64);
        v42 = *(a1 + 88);
        v75 = v41;
        v77 = v42;
        v76 = *(a1 + 72);
        [v40 acknowledgeChangeBatch:v39 withCompletionHandler:v71];
      }

      goto LABEL_80;
    }

    if ((*v2 & 1) == 0)
    {
      v37 = *(*(a1 + 40) + 96);
      if (v37 == 2)
      {
        v38 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v37 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v38 = ;
      }

      v46 = v38;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_DEFAULT, "No more pull batches available, finalizing pull session", buf, 2u);
      }
    }

    [*(a1 + 40) _setToDownloadCountsForImages:0 videos:0];
    v47 = [*(a1 + 40) libraryServicesManager];
    v48 = [v47 postRunningProgress];
    v49 = [v48 isCancelled];

    if (v49)
    {
      if ((*v2 & 1) == 0)
      {
        v50 = *(*(a1 + 40) + 96);
        if (v50 == 2)
        {
          v51 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v50 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v51 = ;
        }

        v59 = v51;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v59, OS_LOG_TYPE_DEFAULT, "LibraryServicesManager is shutting down, bailing out", buf, 2u);
        }
      }

      v60 = *(a1 + 64);
      v23 = v60;
      v45 = *(a1 + 88);
      if (v45 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v60))
      {
        goto LABEL_80;
      }

      *buf = 0;
      goto LABEL_57;
    }

    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __73__PLCloudPhotoLibraryManager__processDownloadBatchWithSession_inLibrary___block_invoke_489;
    v66[3] = &unk_1E7566E18;
    v66[4] = *(a1 + 40);
    v52 = *(a1 + 72);
    v67 = *(a1 + 80);
    v68 = *(a1 + 56);
    v53 = *(a1 + 64);
    v54 = *(a1 + 88);
    v69 = v53;
    v70 = v54;
    [v52 finalizeWithCompletionHandler:v66];

    v17 = v67;
LABEL_24:

    return;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 96);
    if (v3 == 2)
    {
      v4 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v3 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v4 = ;
    }

    v7 = v4;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v91 = v8;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Received error while pulling changes: %@", buf, 0xCu);
    }
  }

  v9 = [*(a1 + 40) libraryServicesManager];
  v10 = [v9 postRunningProgress];
  v11 = [v10 isCancelled];

  if (!v11)
  {
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __73__PLCloudPhotoLibraryManager__processDownloadBatchWithSession_inLibrary___block_invoke_494;
    v61[3] = &unk_1E7566E18;
    v61[4] = *(a1 + 40);
    v14 = *(a1 + 72);
    v62 = *(a1 + 80);
    v63 = *(a1 + 32);
    v15 = *(a1 + 64);
    v16 = *(a1 + 88);
    v64 = v15;
    v65 = v16;
    [v14 finalizeWithCompletionHandler:v61];

    v17 = v62;
    goto LABEL_24;
  }

  if ((*v2 & 1) == 0)
  {
    v12 = *(*(a1 + 40) + 96);
    if (v12 == 2)
    {
      v13 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v12 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v13 = ;
    }

    v43 = v13;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_DEFAULT, "LibraryServicesManager is shutting down, bailing out", buf, 2u);
    }
  }

  v44 = *(a1 + 64);
  v23 = v44;
  v45 = *(a1 + 88);
  if (v45 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v44))
  {
    goto LABEL_80;
  }

  *buf = 0;
LABEL_57:
  _os_signpost_emit_with_name_impl(&dword_19BF1F000, v23, OS_SIGNPOST_INTERVAL_END, v45, "BatchDownload", "Shutting Down", buf, 2u);
LABEL_80:
}

void __73__PLCloudPhotoLibraryManager__processDownloadBatchWithSession_inLibrary___block_invoke_477(void *a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{a1[5] + objc_msgSend(*(a1[4] + 376), "unsignedIntegerValue")}];
  v3 = a1[4];
  v4 = *(v3 + 376);
  *(v3 + 376) = v2;

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{a1[6] + objc_msgSend(*(a1[4] + 384), "unsignedIntegerValue")}];
  v6 = a1[4];
  v7 = *(v6 + 384);
  *(v6 + 384) = v5;
}

void __73__PLCloudPhotoLibraryManager__processDownloadBatchWithSession_inLibrary___block_invoke_2_478(void *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __73__PLCloudPhotoLibraryManager__processDownloadBatchWithSession_inLibrary___block_invoke_3;
  v3[3] = &unk_1E7572788;
  v1 = a1[4];
  v2 = a1[6];
  v3[4] = a1[5];
  v4 = v2;
  [v1 enumerateObjectsUsingBlock:v3];
}

void __73__PLCloudPhotoLibraryManager__processDownloadBatchWithSession_inLibrary___block_invoke_481(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __73__PLCloudPhotoLibraryManager__processDownloadBatchWithSession_inLibrary___block_invoke_2_482;
  v18[3] = &unk_1E7566F30;
  v19 = v5;
  v20 = v7;
  v21 = v6;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v26 = *(a1 + 88);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v25 = *(a1 + 80);
  v13 = v12;
  *&v14 = v11;
  *(&v14 + 1) = v13;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v22 = v15;
  v23 = v14;
  v24 = *(a1 + 40);
  v16 = v6;
  v17 = v5;
  [v7 _runAsyncOnIsolationQueueWithTransaction:v8 block:v18];
}

void __73__PLCloudPhotoLibraryManager__processDownloadBatchWithSession_inLibrary___block_invoke_489(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__PLCloudPhotoLibraryManager__processDownloadBatchWithSession_inLibrary___block_invoke_2_490;
  v9[3] = &unk_1E7573520;
  v9[4] = v4;
  v10 = *(a1 + 48);
  v11 = v3;
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v12 = v6;
  v13 = v7;
  v8 = v3;
  [v4 _runAsyncOnIsolationQueueWithTransaction:v5 block:v9];
}

void __73__PLCloudPhotoLibraryManager__processDownloadBatchWithSession_inLibrary___block_invoke_494(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__PLCloudPhotoLibraryManager__processDownloadBatchWithSession_inLibrary___block_invoke_2_495;
  v9[3] = &unk_1E7573520;
  v10 = v3;
  v11 = v4;
  v12 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v13 = v6;
  v14 = v7;
  v8 = v3;
  [v4 _runAsyncOnIsolationQueueWithTransaction:v5 block:v9];
}

void __73__PLCloudPhotoLibraryManager__processDownloadBatchWithSession_inLibrary___block_invoke_2_495(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) && (*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v2 = *(*(a1 + 40) + 96);
    if (v2 == 2)
    {
      v3 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v2 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v3 = ;
    }

    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Error finalizing session: %@", &v11, 0xCu);
    }
  }

  if ([PLCloudPhotoLibraryManager needResetSyncErrorType:*(a1 + 48)]|| *(a1 + 32) && [PLCloudPhotoLibraryManager needResetSyncErrorType:?])
  {
    [MEMORY[0x1E6994B88] registerLikelyResetReason:@"assetsd detected an error when finalizing a pull session during pull"];
    v6 = 7;
  }

  else
  {
    v6 = 6;
  }

  [*(a1 + 40) _transitionToState:v6];
  v7 = *(a1 + 56);
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(a1 + 48);
    v11 = 138412290;
    v12 = v10;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v8, OS_SIGNPOST_INTERVAL_END, v9, "BatchDownload", "Error while pulling changes: %@", &v11, 0xCu);
  }
}

void __73__PLCloudPhotoLibraryManager__processDownloadBatchWithSession_inLibrary___block_invoke_2_490(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6994D48];
  if (_processDownloadBatchWithSession_inLibrary__sessionNeedsWidgetTimelineReload == 1)
  {
    _processDownloadBatchWithSession_inLibrary__sessionNeedsWidgetTimelineReload = 0;
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v3 = *(*(a1 + 32) + 96);
      if (v3 == 2)
      {
        v4 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v3 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v4 = ;
      }

      v5 = v4;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating widget timeline due to changes in batch download session", &v15, 2u);
      }
    }

    v6 = [*(a1 + 40) photoAnalysisClient];
    [v6 reloadForYouWidgetTimelineWithReply:0];
  }

  if ([PLCloudPhotoLibraryManager needResetSyncErrorType:*(a1 + 48)])
  {
    if ((*v2 & 1) == 0)
    {
      v7 = *(*(a1 + 32) + 96);
      if (v7 == 2)
      {
        v8 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v7 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v8 = ;
      }

      v10 = v8;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 48);
        v15 = 138412290;
        v16 = v11;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Error while finalizing ack change batch: %@", &v15, 0xCu);
      }
    }

    [MEMORY[0x1E6994B88] registerLikelyResetReason:@"assetsd detected an error while finalizing a pull session"];
    v9 = 7;
  }

  else
  {
    v9 = 6;
  }

  [*(a1 + 32) _transitionToState:v9];
  v12 = *(a1 + 56);
  v13 = v12;
  v14 = *(a1 + 64);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_END, v14, "BatchDownload", "", &v15, 2u);
  }
}

void __73__PLCloudPhotoLibraryManager__processDownloadBatchWithSession_inLibrary___block_invoke_2_482(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6994D48];
  if (*(a1 + 32))
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v3 = *(*(a1 + 40) + 96);
      if (v3 == 2)
      {
        v4 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v3 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v4 = ;
      }

      v7 = v4;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 32);
        *buf = 138412290;
        v36 = v8;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Received error while acknowledging change batch: %@", buf, 0xCu);
      }
    }

    v9 = [*(a1 + 40) libraryServicesManager];
    v10 = [v9 postRunningProgress];
    v11 = [v10 isCancelled];

    if (!v11)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __73__PLCloudPhotoLibraryManager__processDownloadBatchWithSession_inLibrary___block_invoke_483;
      v30[3] = &unk_1E7566E18;
      v30[4] = *(a1 + 40);
      v14 = *(a1 + 80);
      v31 = *(a1 + 88);
      v32 = *(a1 + 32);
      v15 = *(a1 + 72);
      v16 = *(a1 + 96);
      v33 = v15;
      v34 = v16;
      [v14 finalizeWithCompletionHandler:v30];

      return;
    }

    if ((*v2 & 1) == 0)
    {
      v12 = *(*(a1 + 40) + 96);
      if (v12 == 2)
      {
        v13 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v12 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v13 = ;
      }

      v27 = v13;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEFAULT, "LibraryServicesManager is shutting down, bailing out", buf, 2u);
      }
    }

    v28 = *(a1 + 72);
    v19 = v28;
    v29 = *(a1 + 96);
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v19, OS_SIGNPOST_INTERVAL_END, v29, "BatchDownload", "Shutting Down", buf, 2u);
    }
  }

  else
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v5 = *(*(a1 + 40) + 96);
      if (v5 == 2)
      {
        v6 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v5 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v6 = ;
      }

      v17 = v6;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 48);
        *buf = 138412290;
        v36 = v18;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Change batch acknowledged, new version: %@", buf, 0xCu);
      }
    }

    v19 = [*(a1 + 56) confirmedResourceIDs];
    if ([v19 count])
    {
      [*(a1 + 40) _markResourceObjectIDsAsPurgeable:v19 urgency:1 inLibrary:*(a1 + 64)];
    }

    if (*(a1 + 48))
    {
      v20 = [PLGlobalValues alloc];
      v21 = [*(a1 + 64) managedObjectContext];
      v22 = [(PLGlobalValues *)v20 initWithManagedObjectContext:v21];

      [(PLGlobalValues *)v22 setCloudTrackerLastKnownCloudVersion:*(a1 + 48)];
    }

    if (*(a1 + 104) == 1)
    {
      v23 = [*(a1 + 40) resourceManager];
      [v23 startAutomaticPrefetchAndPruneWithTimeout:0];
    }

    v24 = *(a1 + 72);
    v25 = v24;
    v26 = *(a1 + 96);
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v25, OS_SIGNPOST_INTERVAL_END, v26, "BatchDownload", "", buf, 2u);
    }

    [*(a1 + 40) _processDownloadBatchWithSession:*(a1 + 80) inLibrary:*(a1 + 64)];
  }
}

void __73__PLCloudPhotoLibraryManager__processDownloadBatchWithSession_inLibrary___block_invoke_483(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__PLCloudPhotoLibraryManager__processDownloadBatchWithSession_inLibrary___block_invoke_2_484;
  v9[3] = &unk_1E7573520;
  v10 = v3;
  v11 = v4;
  v12 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v13 = v6;
  v14 = v7;
  v8 = v3;
  [v4 _runAsyncOnIsolationQueueWithTransaction:v5 block:v9];
}

void __73__PLCloudPhotoLibraryManager__processDownloadBatchWithSession_inLibrary___block_invoke_2_484(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) && (*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v2 = *(*(a1 + 40) + 96);
    if (v2 == 2)
    {
      v3 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v2 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v3 = ;
    }

    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Error finalizing session: %@", &v10, 0xCu);
    }
  }

  if ([PLCloudPhotoLibraryManager needResetSyncErrorType:*(a1 + 48)]|| *(a1 + 32) && [PLCloudPhotoLibraryManager needResetSyncErrorType:?])
  {
    [MEMORY[0x1E6994B88] registerLikelyResetReason:@"assetsd detected an error while acknowledging change batch"];
    v6 = 7;
  }

  else
  {
    v6 = 6;
  }

  [*(a1 + 40) _transitionToState:v6];
  v7 = *(a1 + 56);
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v8, OS_SIGNPOST_INTERVAL_END, v9, "BatchDownload", "", &v10, 2u);
  }
}

void __73__PLCloudPhotoLibraryManager__processDownloadBatchWithSession_inLibrary___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v5 = *(*(a1 + 32) + 96);
    if (v5 == 2)
    {
      v6 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v5 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v6 = ;
    }

    v7 = v6;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v3;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Sending notification CMM %@ has finished uploading.", &v13, 0xCu);
    }
  }

  v8 = [*(a1 + 40) managedObjectContext];
  v9 = [(PLShare *)PLMomentShare shareWithUUID:v3 includeTrashed:0 inManagedObjectContext:v8];

  if (v9)
  {
    v10 = +[PLNotificationManager sharedManager];
    [v10 noteUserAssetsAreReadyForMomentShare:v9];
LABEL_22:

    goto LABEL_23;
  }

  if ((*v4 & 1) == 0)
  {
    v11 = *(*(a1 + 32) + 96);
    if (v11 == 2)
    {
      v12 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v11 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v12 = ;
    }

    v10 = v12;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v3;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Failed to find CMM with UUID %@ to post notification", &v13, 0xCu);
    }

    goto LABEL_22;
  }

LABEL_23:
}

- (void)_downloadFromCloudInLibrary:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = PLCPLGetLog();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Download", "_downloadFromCloud", buf, 2u);
  }

  v9 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager _downloadFromCloudInLibrary:]"];
  v10 = [objc_opt_class() _lastKnownCloudVersionInLibrary:v4];
  v11 = [(PLCloudPhotoLibraryManager *)self cplLibrary];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__PLCloudPhotoLibraryManager__downloadFromCloudInLibrary___block_invoke;
  v16[3] = &unk_1E7566F08;
  v16[4] = self;
  v17 = v9;
  v18 = v10;
  v19 = v4;
  v20 = v8;
  v21 = v6;
  v12 = v8;
  v13 = v4;
  v14 = v10;
  v15 = v9;
  [v11 beginPullChangeSessionWithKnownLibraryVersion:v14 completionHandler:v16];
}

void __58__PLCloudPhotoLibraryManager__downloadFromCloudInLibrary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__PLCloudPhotoLibraryManager__downloadFromCloudInLibrary___block_invoke_2;
  v13[3] = &unk_1E7566EE0;
  v14 = v6;
  v15 = v7;
  v16 = *(a1 + 48);
  v17 = v5;
  v18 = *(a1 + 56);
  v19 = *(a1 + 40);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v20 = v9;
  v21 = v10;
  v11 = v5;
  v12 = v6;
  [v7 _runAsyncOnIsolationQueueWithTransaction:v8 block:v13];
}

void __58__PLCloudPhotoLibraryManager__downloadFromCloudInLibrary___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 72);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__PLCloudPhotoLibraryManager__downloadFromCloudInLibrary___block_invoke_472;
    v13[3] = &unk_1E7578848;
    v13[4] = v3;
    v14 = v2;
    [v3 _runAsyncOnIsolationQueueWithTransaction:v4 block:v13];
  }

  else
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v5 = *(*(a1 + 40) + 96);
      if (v5 == 2)
      {
        v6 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v5 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v6 = ;
      }

      v7 = v6;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 48);
        *buf = 138412290;
        v16 = v8;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Pull session started with last known version: %@", buf, 0xCu);
      }
    }

    [*(a1 + 40) _processDownloadBatchWithSession:*(a1 + 56) inLibrary:*(a1 + 64)];
  }

  v9 = *(a1 + 80);
  v10 = v9;
  v11 = *(a1 + 88);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = *(a1 + 32) == 0;
    *buf = 67109120;
    LODWORD(v16) = v12;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_END, v11, "Download", "_downloadFromCloud success: %d", buf, 8u);
  }
}

uint64_t __58__PLCloudPhotoLibraryManager__downloadFromCloudInLibrary___block_invoke_472(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v2 = *(*(a1 + 32) + 96);
    if (v2 == 2)
    {
      v3 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v2 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v3 = ;
    }

    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Error beginning pull session: %@", &v8, 0xCu);
    }
  }

  if ([PLCloudPhotoLibraryManager needResetSyncErrorType:*(a1 + 40)])
  {
    [MEMORY[0x1E6994B88] registerLikelyResetReason:@"assetsd detected an error beginning pull session"];
    v6 = 7;
  }

  else
  {
    v6 = 6;
  }

  return [*(a1 + 32) _transitionToState:v6];
}

- (void)sendBudgetOverrideAnalytics:(BOOL)a3 pauseReason:(id)a4
{
  v4 = a3;
  v43 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __70__PLCloudPhotoLibraryManager_sendBudgetOverrideAnalytics_pauseReason___block_invoke;
  v20[3] = &unk_1E7574728;
  v20[4] = self;
  v20[5] = &v37;
  v20[6] = &v33;
  v20[7] = &v29;
  [(PLCloudPhotoLibraryManager *)self _runSyncOnIsolationQueueWithBlock:v20];
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v8 = [WeakRetained cloudPhotoLibraryManager];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __70__PLCloudPhotoLibraryManager_sendBudgetOverrideAnalytics_pauseReason___block_invoke_2;
  v19[3] = &unk_1E7566EB8;
  v19[4] = &v25;
  v19[5] = &v21;
  [v8 getLibraryScopeStatusCountsForScopeWithIdentifier:@"PrimarySync" completionHandler:v19];

  if (v30[3])
  {
    v9 = v6;
    v10 = objc_alloc_init(MEMORY[0x1E69BF1F0]);
    v11 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    v12 = *MEMORY[0x1E69BFAA0];
    [v10 setPayloadValue:v11 forKey:*MEMORY[0x1E69BFAD8] onEventWithName:*MEMORY[0x1E69BFAA0]];

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v38[3]];
    [v10 setPayloadValue:v13 forKey:*MEMORY[0x1E69BFAC0] onEventWithName:v12];

    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v34[3]];
    [v10 setPayloadValue:v14 forKey:*MEMORY[0x1E69BFAC8] onEventWithName:v12];

    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v30[3]];
    [v10 setPayloadValue:v15 forKey:*MEMORY[0x1E69BFAB8] onEventWithName:v12];

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v26[3]];
    [v10 setPayloadValue:v16 forKey:*MEMORY[0x1E69BFAB0] onEventWithName:v12];

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v22[3]];
    [v10 setPayloadValue:v17 forKey:*MEMORY[0x1E69BFAA8] onEventWithName:v12];

    [v10 setPayloadValue:v9 forKey:*MEMORY[0x1E69BFAD0] onEventWithName:v12];
    v18 = PLBackendGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v42 = v10;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEBUG, "SystemBudgets overriden metrics: %{public}@", buf, 0xCu);
    }

    [v10 publishEventWithName:v12];
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
}

void __70__PLCloudPhotoLibraryManager_sendBudgetOverrideAnalytics_pauseReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cplLibrary];
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 40) + 8) + 24) = [v2 numberOfImagesToUpload];
    *(*(*(a1 + 48) + 8) + 24) = [v3 numberOfVideosToUpload];
    v2 = v3;
    *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + *(*(*(a1 + 40) + 8) + 24);
  }
}

void __70__PLCloudPhotoLibraryManager_sendBudgetOverrideAnalytics_pauseReason___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v3 countOfUnsharingRecords];
  v4 = [v3 countOfSharingRecords];

  *(*(*(a1 + 40) + 8) + 24) = v4;
}

- (BOOL)overrideSystemBudgetsForSyncSession:(BOOL)a3 pauseReason:(id)a4 forSystemBudgets:(unint64_t)a5
{
  v6 = a3;
  v8 = a4;
  PLSAggregateDictionaryAddValueForScalarKey(@"com.apple.mobileslideshow.overrideBudgetCount", 1);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __95__PLCloudPhotoLibraryManager_overrideSystemBudgetsForSyncSession_pauseReason_forSystemBudgets___block_invoke;
  v11[3] = &unk_1E7566E90;
  v12 = v6;
  v11[5] = &v13;
  v11[6] = a5;
  v11[4] = self;
  [(PLCloudPhotoLibraryManager *)self _runSyncOnIsolationQueueWithBlock:v11];
  if (v6)
  {
    [(PLCloudPhotoLibraryManager *)self sendBudgetOverrideAnalytics:*(v14 + 24) pauseReason:v8];
  }

  v9 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return v9;
}

void __95__PLCloudPhotoLibraryManager_overrideSystemBudgetsForSyncSession_pauseReason_forSystemBudgets___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cplLibrary];
  if (v2)
  {
    v3 = v2;
    [v2 setShouldOverride:*(a1 + 56) forSystemBudgets:*(a1 + 48)];
    v2 = v3;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)getSystemBudgetsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager getSystemBudgetsWithCompletionHandler:]"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__PLCloudPhotoLibraryManager_getSystemBudgetsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7577C08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v5 block:v7];
}

void __68__PLCloudPhotoLibraryManager_getSystemBudgetsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cplLibrary];
  if (v2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __68__PLCloudPhotoLibraryManager_getSystemBudgetsWithCompletionHandler___block_invoke_2;
    v5[3] = &unk_1E7577458;
    v6 = *(a1 + 40);
    [v2 getSystemBudgetsWithCompletionHandler:v5];
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = [PLCloudPhotoLibraryError createErrorWithType:15];
    (*(v3 + 16))(v3, 0, v4);
  }
}

- (void)startAutomaticPrefetchOrPrune
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __59__PLCloudPhotoLibraryManager_startAutomaticPrefetchOrPrune__block_invoke;
  v2[3] = &unk_1E75781E8;
  v2[4] = self;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:0 block:v2];
}

void __59__PLCloudPhotoLibraryManager_startAutomaticPrefetchOrPrune__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resourceManager];
  [v2 startAutomaticPrefetchAndPruneWithTimeout:1];

  v3 = [*(a1 + 32) resourceManager];
  [v3 updateCacheDeletePurgeableAmount];
}

- (void)_processUploadBatchWithStartupFailureCount:(unint64_t)a3 orderKeyManager:(id)a4 inLibrary:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v10 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v12 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v12 = ;
    }

    v13 = v12;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = [(PLCloudBatchUploader *)self->_uploader numberOfBatchesToUpload];
      *buf = 67109120;
      LODWORD(v44) = v14;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "Processing %d upload batches", buf, 8u);
    }
  }

  if ([(PLCloudBatchUploader *)self->_uploader hasBatchesToUpload])
  {
    v30 = a3;
    v15 = [(PLCloudPhotoLibraryUploadTracker *)self->_uploadTracker totalSizeOfUnpushedOriginals];
    v16 = PLCPLGetLog();
    v17 = os_signpost_id_generate(v16);
    v18 = v16;
    v19 = v18;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 134217984;
      v44 = v15;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "Upload", "total size of unpushed originals: %llu", buf, 0xCu);
    }

    v38 = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = __99__PLCloudPhotoLibraryManager__processUploadBatchWithStartupFailureCount_orderKeyManager_inLibrary___block_invoke;
    v41 = &unk_1E75781E8;
    v42 = self;
    PLRunWithUnfairLock();
    v20 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager _processUploadBatchWithStartupFailureCount:orderKeyManager:inLibrary:]"];
    v21 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
    v22 = [v21 postRunningProgress];
    v23 = [v22 isCancelled];

    if (v23)
    {
      if ((*v10 & 1) == 0)
      {
        v24 = self->_libraryMode;
        if (v24 == 2)
        {
          v25 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v24 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v25 = ;
        }

        v28 = v25;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "LibraryServicesManager is shutting down, bailing out", buf, 2u);
        }
      }

      v29 = v19;
      v26 = v29;
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19BF1F000, v26, OS_SIGNPOST_INTERVAL_END, v17, "Upload", "Shutting Down", buf, 2u);
      }
    }

    else
    {
      v26 = [objc_opt_class() _lastKnownCloudVersionInLibrary:v9];
      v27 = [(PLCloudPhotoLibraryManager *)self cplLibrary];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __99__PLCloudPhotoLibraryManager__processUploadBatchWithStartupFailureCount_orderKeyManager_inLibrary___block_invoke_415;
      v31[3] = &unk_1E7566E68;
      v31[4] = self;
      v32 = v20;
      v33 = v9;
      v34 = v8;
      v35 = v19;
      v36 = v17;
      v37 = v30;
      [v27 beginPushChangeSessionWithKnownLibraryVersion:v26 completionHandler:v31];
    }
  }

  else
  {
    [(PLCloudPhotoLibraryManager *)self _finishUploadWithNoBatchesToUploadInLibrary:v9];
  }
}

void __99__PLCloudPhotoLibraryManager__processUploadBatchWithStartupFailureCount_orderKeyManager_inLibrary___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 352) unsignedIntegerValue];
  v3 = [*(a1 + 32) cplLibrary];
  *(*(a1 + 32) + 208) = [v3 numberOfImagesToUpload] + v2;

  v4 = [*(*(a1 + 32) + 360) unsignedIntegerValue];
  v5 = [*(a1 + 32) cplLibrary];
  *(*(a1 + 32) + 216) = [v5 numberOfVideosToUpload] + v4;
}

void __99__PLCloudPhotoLibraryManager__processUploadBatchWithStartupFailureCount_orderKeyManager_inLibrary___block_invoke_415(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v7 = *(*(a1 + 32) + 96);
    if (v7 == 2)
    {
      v8 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v7 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v8 = ;
    }

    v9 = v8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v27 = v6;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "beginPushError: %@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __99__PLCloudPhotoLibraryManager__processUploadBatchWithStartupFailureCount_orderKeyManager_inLibrary___block_invoke_416;
  v20[3] = &unk_1E7566E40;
  v20[4] = v11;
  v21 = v6;
  v22 = v5;
  v12 = v10;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  *&v16 = v14;
  *(&v16 + 1) = v15;
  *&v17 = v12;
  *(&v17 + 1) = v13;
  v23 = v17;
  v24 = v16;
  v25 = *(a1 + 72);
  v18 = v5;
  v19 = v6;
  [v11 _runAsyncOnIsolationQueueWithTransaction:v12 block:v20];
}

void __99__PLCloudPhotoLibraryManager__processUploadBatchWithStartupFailureCount_orderKeyManager_inLibrary___block_invoke_416(uint64_t a1)
{
  v72 = *MEMORY[0x1E69E9840];
  if (![*(*(a1 + 32) + 8) hasBatchesToUpload])
  {
    v6 = [*(a1 + 32) libraryServicesManager];
    v7 = [v6 postRunningProgress];
    v8 = [v7 isCancelled];

    if (!v8)
    {
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __99__PLCloudPhotoLibraryManager__processUploadBatchWithStartupFailureCount_orderKeyManager_inLibrary___block_invoke_456;
      v52[3] = &unk_1E7566E18;
      v52[4] = *(a1 + 32);
      v11 = *(a1 + 48);
      v53 = *(a1 + 56);
      v54 = *(a1 + 64);
      v12 = *(a1 + 80);
      v13 = *(a1 + 88);
      v55 = v12;
      v56 = v13;
      [v11 finalizeWithCompletionHandler:v52];

      return;
    }

    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v9 = *(*(a1 + 32) + 96);
      if (v9 == 2)
      {
        v10 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v9 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v10 = ;
      }

      v32 = v10;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEFAULT, "LibraryServicesManager is shutting down, bailing out", buf, 2u);
      }
    }

    v33 = *(a1 + 80);
    v34 = v33;
    v35 = *(a1 + 88);
    if (v35 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v33))
    {
      goto LABEL_59;
    }

    *buf = 0;
    v36 = "Shutting Down";
    v37 = v34;
    v38 = v35;
    v39 = 2;
    goto LABEL_58;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    v14 = [*(*(a1 + 32) + 8) pop];
    v15 = [v14 batch];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __99__PLCloudPhotoLibraryManager__processUploadBatchWithStartupFailureCount_orderKeyManager_inLibrary___block_invoke_2;
    v63[3] = &unk_1E7566DF0;
    v63[4] = *(a1 + 32);
    v64 = v15;
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    v18 = *(a1 + 64);
    v19 = *(a1 + 72);
    v20 = *(a1 + 80);
    *&v21 = v19;
    *(&v21 + 1) = v20;
    *&v22 = v17;
    *(&v22 + 1) = v18;
    v65 = v22;
    v66 = v21;
    v69 = *(a1 + 88);
    v67 = *(a1 + 48);
    v68 = v14;
    v23 = v14;
    v24 = v15;
    [v16 commitChangeBatch:v24 completionHandler:v63];

    return;
  }

  v3 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v4 = *(*(a1 + 32) + 96);
    if (v4 == 2)
    {
      v5 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v4 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v5 = ;
    }

    v25 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 40);
      *buf = 138412290;
      *v71 = v26;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Got a push error: %@", buf, 0xCu);
    }

    v2 = *(a1 + 40);
  }

  if ([PLCloudPhotoLibraryManager needResetSyncErrorType:v2])
  {
    v27 = *(a1 + 32);
    v28 = *(a1 + 56);
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __99__PLCloudPhotoLibraryManager__processUploadBatchWithStartupFailureCount_orderKeyManager_inLibrary___block_invoke_451;
    v61[3] = &unk_1E7578848;
    v61[4] = v27;
    v62 = *(a1 + 40);
    [v27 _runAsyncOnIsolationQueueWithTransaction:v28 block:v61];
    v29 = v62;
  }

  else
  {
    if ((*v3 & 1) == 0)
    {
      v30 = *(*(a1 + 32) + 96);
      if (v30 == 2)
      {
        v31 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v30 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v31 = ;
      }

      v40 = v31;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v41 = *(a1 + 96);
        *buf = 67109376;
        *v71 = 5;
        *&v71[4] = 1024;
        *&v71[6] = v41;
        _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_ERROR, "Waiting %d seconds then retrying upload after error beginning push, startupFaiureCount: %d", buf, 0xEu);
      }
    }

    v42 = *(a1 + 96);
    if (v42 > 0x18)
    {
      if ((*v3 & 1) == 0)
      {
        v45 = *(*(a1 + 32) + 96);
        if (v45 == 2)
        {
          v46 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v45 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v46 = ;
        }

        v47 = v46;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v48 = *(a1 + 96);
          *buf = 67109120;
          *v71 = v48;
          _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_ERROR, "Reached max startupFailureCount: %d, transitioning to library error state", buf, 8u);
        }
      }

      [*(a1 + 32) _transitionToState:0];
      goto LABEL_55;
    }

    v43 = *(a1 + 32);
    v44 = *(a1 + 56);
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __99__PLCloudPhotoLibraryManager__processUploadBatchWithStartupFailureCount_orderKeyManager_inLibrary___block_invoke_455;
    v57[3] = &unk_1E7576168;
    v57[4] = v43;
    v60 = v42;
    v58 = *(a1 + 72);
    v59 = *(a1 + 64);
    [v43 _runAsyncOnIsolationQueueWithTransaction:v44 afterDelay:v57 block:5.0];

    v29 = v58;
  }

LABEL_55:
  v49 = *(a1 + 80);
  v34 = v49;
  v50 = *(a1 + 88);
  if (v50 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v49))
  {
    goto LABEL_59;
  }

  v51 = *(a1 + 40);
  *buf = 138412290;
  *v71 = v51;
  v36 = "Error during beginPushChangeSession: %@";
  v37 = v34;
  v38 = v50;
  v39 = 12;
LABEL_58:
  _os_signpost_emit_with_name_impl(&dword_19BF1F000, v37, OS_SIGNPOST_INTERVAL_END, v38, "Upload", v36, buf, v39);
LABEL_59:
}

void __99__PLCloudPhotoLibraryManager__processUploadBatchWithStartupFailureCount_orderKeyManager_inLibrary___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v81 = *MEMORY[0x1E69E9840];
  v51 = a2;
  v50 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v9 = *(*(a1 + 32) + 96);
    if (v9 == 2)
    {
      v10 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v9 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v10 = ;
    }

    v11 = v10;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v51;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "commitError: %@", &buf, 0xCu);
    }
  }

  v12 = [MEMORY[0x1E695DF90] dictionary];
  v49 = [MEMORY[0x1E695DFA8] set];
  v48 = [MEMORY[0x1E695DFA8] set];
  v47 = [MEMORY[0x1E695DFA8] set];
  v46 = [MEMORY[0x1E695DFA8] set];
  v45 = [MEMORY[0x1E695DFA8] set];
  v44 = [MEMORY[0x1E695DFA8] set];
  v43 = [MEMORY[0x1E695DFA8] set];
  v42 = [MEMORY[0x1E695DFA8] set];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v79 = 0x2020000000;
  v80 = 0;
  if (v51)
  {
    if ((*v8 & 1) == 0)
    {
      v13 = *(*(a1 + 32) + 96);
      if (v13 == 2)
      {
        v14 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v13 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v14 = ;
      }

      v15 = v14;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v76 = 138412290;
        v77 = v51;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Got a commit error: %@", v76, 0xCu);
      }

      if ((*v8 & 1) == 0)
      {
        v16 = *(*(a1 + 32) + 96);
        if (v16 == 2)
        {
          v17 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v16 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v17 = ;
        }

        v18 = v17;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v76 = 138412290;
          v77 = v50;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Tasks: %@", v76, 0xCu);
        }
      }
    }

    v41 = v7;
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __99__PLCloudPhotoLibraryManager__processUploadBatchWithStartupFailureCount_orderKeyManager_inLibrary___block_invoke_417;
    v64[3] = &unk_1E7566DA0;
    v19 = v45;
    v65 = v19;
    v20 = v48;
    v66 = v20;
    v21 = v47;
    v67 = v21;
    v22 = v49;
    v68 = v22;
    v23 = v46;
    v69 = v23;
    v24 = v44;
    v70 = v24;
    v25 = v43;
    v71 = v25;
    v26 = v42;
    v27 = *(a1 + 32);
    v28 = *(a1 + 40);
    v72 = v26;
    v73 = v27;
    v74 = v28;
    p_buf = &buf;
    [v50 enumerateScopedTasksWithBlock:v64];
    [v12 setObject:v22 forKey:@"regenerateDerivativeError"];
    [v12 setObject:v21 forKey:@"needMasterError"];
    [v12 setObject:v20 forKey:@"needFullChangeError"];
    [v12 setObject:v23 forKey:@"repushAlbumError"];
    [v12 setObject:v19 forKey:@"quarantinedRecordError"];
    [v12 setObject:v24 forKey:@"invalidScopeError"];
    [v12 setObject:v25 forKey:@"invalidResourceCopySourceError"];
    [v12 setObject:v26 forKey:@"invalidExpungeableResourceTypes"];

    v7 = v41;
  }

  v29 = *(a1 + 32);
  v30 = *(a1 + 48);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __99__PLCloudPhotoLibraryManager__processUploadBatchWithStartupFailureCount_orderKeyManager_inLibrary___block_invoke_447;
  v52[3] = &unk_1E7569E98;
  v31 = v51;
  v32 = *(a1 + 32);
  v53 = v31;
  v54 = v32;
  v33 = v7;
  v55 = v33;
  v56 = *(a1 + 40);
  v57 = *(a1 + 56);
  v62 = &buf;
  v34 = v12;
  v58 = v34;
  v35 = *(a1 + 64);
  v36 = *(a1 + 72);
  v63 = *(a1 + 96);
  v37 = *(a1 + 80);
  v38 = *(a1 + 88);
  *&v39 = v37;
  *(&v39 + 1) = v38;
  *&v40 = v35;
  *(&v40 + 1) = v36;
  v59 = v40;
  v60 = v39;
  v61 = *(a1 + 48);
  [v29 _runAsyncOnIsolationQueueWithTransaction:v30 block:v52];

  _Block_object_dispose(&buf, 8);
}

uint64_t __99__PLCloudPhotoLibraryManager__processUploadBatchWithStartupFailureCount_orderKeyManager_inLibrary___block_invoke_451(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v2 = *(*(a1 + 32) + 96);
    if (v2 == 2)
    {
      v3 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v2 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v3 = ;
    }

    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Error beginning push session: %@, need to force a reset sync", &v7, 0xCu);
    }
  }

  [*(*(a1 + 32) + 8) clearUploadArray];
  [MEMORY[0x1E6994B88] registerLikelyResetReason:@"assetsd detected an error beginning push session"];
  return [*(a1 + 32) _transitionToState:7];
}

void __99__PLCloudPhotoLibraryManager__processUploadBatchWithStartupFailureCount_orderKeyManager_inLibrary___block_invoke_456(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _handleFinalizeSessionError:a2 commitError:0 uploadBatchContainer:0 needResetSync:0 forTransaction:*(a1 + 40) inLibrary:*(a1 + 48)];
  v3 = *(a1 + 56);
  v4 = v3;
  v5 = *(a1 + 64);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v4, OS_SIGNPOST_INTERVAL_END, v5, "Upload", "No batch to upload", v6, 2u);
  }
}

void __99__PLCloudPhotoLibraryManager__processUploadBatchWithStartupFailureCount_orderKeyManager_inLibrary___block_invoke_417(void *a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      if (a2 == 5)
      {
        v6 = a1[8];
      }

      else
      {
        v6 = a1[9];
      }

      goto LABEL_24;
    }

    switch(a2)
    {
      case 7:
        v6 = a1[10];
        goto LABEL_24;
      case 8:
        v6 = a1[11];
        goto LABEL_24;
      case 9:
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v7 = *(a1[12] + 96);
          if (v7 == 2)
          {
            v8 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v7 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v8 = ;
          }

          v9 = v8;
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v10 = a1[13];
            *buf = 138412802;
            v14 = v10;
            v15 = 2112;
            v16 = v5;
            v17 = 1024;
            v18 = 9;
            _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Received unknown taskType on commit, forcing a resetSync, upload batch: %@, record: %@, type: %d", buf, 0x1Cu);
          }
        }

        v11 = MEMORY[0x1E6994B88];
        v12 = [MEMORY[0x1E6994B50] descriptionForTaskType:9];
        [v11 registerLikelyResetReason:{@"assetsd rejected pushed change for an unsupported reason: %@", v12}];

        *(*(a1[14] + 8) + 24) = 1;
        break;
    }
  }

  else
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v6 = a1[7];
      }

      else
      {
        v6 = a1[6];
      }

      goto LABEL_24;
    }

    if (a2 < 2)
    {
      v6 = a1[4];
LABEL_24:
      [v6 addObject:v5];
      goto LABEL_25;
    }

    if (a2 == 2)
    {
      v6 = a1[5];
      goto LABEL_24;
    }
  }

LABEL_25:
}

void __99__PLCloudPhotoLibraryManager__processUploadBatchWithStartupFailureCount_orderKeyManager_inLibrary___block_invoke_447(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    if ((*(*(*(a1 + 120) + 8) + 24) & 1) == 0)
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v3 = *(*(a1 + 40) + 96);
        if (v3 == 2)
        {
          v4 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v3 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v4 = ;
        }

        v18 = v4;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v19 = *(a1 + 56);
          v20 = *(a1 + 32);
          *buf = 138412546;
          v47 = v19;
          v48 = 2112;
          v49 = v20;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Received error while upload batch: %@: Error: %@", buf, 0x16u);
        }

        v2 = *(a1 + 32);
      }

      [*(*(a1 + 40) + 8) tryToFixCommitError:v2 inUploadBatch:*(a1 + 56) forRecords:*(a1 + 72) uploadTracker:*(*(a1 + 40) + 256) orderKeyManager:*(a1 + 80) inLibrary:*(a1 + 64)];
    }
  }

  else
  {
    v5 = MEMORY[0x1E6994D48];
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v6 = *(*(a1 + 40) + 96);
      if (v6 == 2)
      {
        v7 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v6 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v7 = ;
      }

      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 48);
        *buf = 138412290;
        v47 = v9;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Change batch committed, new version: %@, finalizing push session", buf, 0xCu);
      }

      if ((*v5 & 1) == 0)
      {
        v10 = *(*(a1 + 40) + 96);
        if (v10 == 2)
        {
          v11 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v10 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v11 = ;
        }

        v12 = v11;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [*(a1 + 56) records];
          v14 = [v13 count];
          *buf = 134217984;
          v47 = v14;
          _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "uploaded %lu records", buf, 0xCu);
        }
      }
    }

    if (*(a1 + 48))
    {
      v15 = [PLGlobalValues alloc];
      v16 = [*(a1 + 64) managedObjectContext];
      v17 = [(PLGlobalValues *)v15 initWithManagedObjectContext:v16];

      [(PLGlobalValues *)v17 setCloudTrackerLastKnownCloudVersion:*(a1 + 48)];
    }
  }

  v21 = [*(a1 + 40) libraryServicesManager];
  v22 = [v21 postRunningProgress];
  v23 = [v22 isCancelled];

  if (v23)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v24 = *(*(a1 + 40) + 96);
      if (v24 == 2)
      {
        v25 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v24 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v25 = ;
      }

      v33 = v25;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "LibraryServicesManager is shutting down, bailing out", buf, 2u);
      }
    }

    v34 = *(a1 + 88);
    v35 = v34;
    v36 = *(a1 + 128);
    if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v35, OS_SIGNPOST_INTERVAL_END, v36, "Upload", "Shutting Down", buf, 2u);
    }
  }

  else
  {
    v26 = *(a1 + 96);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __99__PLCloudPhotoLibraryManager__processUploadBatchWithStartupFailureCount_orderKeyManager_inLibrary___block_invoke_448;
    v38[3] = &unk_1E7566DC8;
    v37 = *(a1 + 32);
    v27 = v37.i64[0];
    v39 = vextq_s8(v37, v37, 8uLL);
    v28 = *(a1 + 104);
    v30 = *(a1 + 112);
    v29 = *(a1 + 120);
    v40 = v28;
    v44 = v29;
    v41 = v30;
    v42 = *(a1 + 64);
    v31 = *(a1 + 88);
    v32 = *(a1 + 128);
    v43 = v31;
    v45 = v32;
    [v26 finalizeWithCompletionHandler:v38];
  }
}

void __99__PLCloudPhotoLibraryManager__processUploadBatchWithStartupFailureCount_orderKeyManager_inLibrary___block_invoke_448(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _handleFinalizeSessionError:a2 commitError:*(a1 + 40) uploadBatchContainer:*(a1 + 48) needResetSync:*(*(*(a1 + 80) + 8) + 24) forTransaction:*(a1 + 56) inLibrary:*(a1 + 64)];
  v3 = *(a1 + 72);
  v4 = v3;
  v5 = *(a1 + 88);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v4, OS_SIGNPOST_INTERVAL_END, v5, "Upload", "Finalize upload session", v6, 2u);
  }
}

- (void)_finishUploadWithNoBatchesToUploadInLibrary:(id)a3
{
  v4 = a3;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v6 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v6 = ;
    }

    v7 = v6;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "No batches to upload", v11, 2u);
    }
  }

  v8 = [v4 managedObjectContext];
  [(PLCloudPhotoLibraryManager *)self _saveLastKnownCloudChangeTrackerTokenToDiskWithContext:v8];

  [(PLCloudBatchUploader *)self->_uploader processMomentSharesNeedingForceSyncInLibrary:v4];
  if ([(PLCloudBatchUploader *)self->_uploader initialUpload])
  {
    v9 = 3;
    v10 = 90;
  }

  else
  {
    v10 = 90;
    if (self->_pushOnIdle)
    {
      v9 = 3;
    }

    else
    {
      v10 = 91;
      v9 = 5;
    }
  }

  *(&self->super.isa + v10) = 0;
  [(PLCloudPhotoLibraryManager *)self _transitionToState:v9];
}

- (void)_handleFinalizeSessionError:(id)a3 commitError:(id)a4 uploadBatchContainer:(id)a5 needResetSync:(BOOL)a6 forTransaction:(id)a7 inLibrary:(id)a8
{
  v36 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v20 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v20 = ;
    }

    v21 = v20;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v35 = v14;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEBUG, "finalizeError: %@", buf, 0xCu);
    }
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __130__PLCloudPhotoLibraryManager__handleFinalizeSessionError_commitError_uploadBatchContainer_needResetSync_forTransaction_inLibrary___block_invoke;
  v27[3] = &unk_1E7573B88;
  v27[4] = self;
  v28 = v15;
  v29 = v14;
  v30 = v16;
  v33 = a6;
  v31 = v18;
  v32 = v17;
  v22 = v17;
  v23 = v18;
  v24 = v16;
  v25 = v14;
  v26 = v15;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v22 block:v27];
}

void __130__PLCloudPhotoLibraryManager__handleFinalizeSessionError_commitError_uploadBatchContainer_needResetSync_forTransaction_inLibrary___block_invoke(uint64_t a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) processCommitError:*(a1 + 40) andFinalizeError:*(a1 + 48) forUploadBatchContainer:*(a1 + 56) withUploadTracker:*(*(a1 + 32) + 256) inLibrary:*(a1 + 64)];
  v3 = [v2 objectForKey:@"resetSyncNeeded"];
  if ([v3 BOOLValue])
  {
    v4 = 1;
  }

  else
  {
    v4 = *(a1 + 80);
  }

  v5 = [v2 objectForKey:@"hadError"];
  v6 = [v5 BOOLValue];

  v7 = [v2 objectForKey:@"hadPermanentError"];
  v8 = [v7 BOOLValue];

  v9 = *(a1 + 32);
  if ((*(v9 + 93) & 1) == 0)
  {
    *(v9 + 93) = 1;
  }

  if (v4)
  {
    v10 = *(a1 + 32);
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v11 = *(v10 + 96);
      if (v11 == 2)
      {
        v12 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v11 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v12 = ;
      }

      v37 = v12;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "Need to perform a reset sync", buf, 2u);
      }

      v10 = *(a1 + 32);
    }

    [*(v10 + 8) clearUploadArray];
    [MEMORY[0x1E6994B88] registerLikelyResetReason:@"assetsd detected an error while processing batch"];
    [*(a1 + 32) _transitionToState:7];
  }

  else
  {
    if (v8 & 1 | ((v6 & 1) == 0))
    {
      v13 = [v2 objectForKey:@"pushedPhotoCount"];
      v14 = [v13 unsignedIntegerValue];

      v15 = [v2 objectForKey:@"pushedVideoCount"];
      v16 = [v15 unsignedIntegerValue];

      v17 = *(a1 + 32);
      v56 = MEMORY[0x1E69E9820];
      v57 = 3221225472;
      v58 = __130__PLCloudPhotoLibraryManager__handleFinalizeSessionError_commitError_uploadBatchContainer_needResetSync_forTransaction_inLibrary___block_invoke_2;
      v59 = &unk_1E7578320;
      v60 = v17;
      v61 = v14;
      v62 = v16;
      PLRunWithUnfairLock();
      [*(a1 + 32) _updateTransferCountsInLibrary:*(a1 + 64)];
      if (v8)
      {
        v18 = [v2 objectForKey:@"changedTotalSizeOfUnpushedOriginal"];
        v19 = [v18 BOOLValue];

        if (v19)
        {
          [*(a1 + 64) performBlock:&__block_literal_global_408];
        }
      }

      v20 = [PLMomentShare momentSharesReferencedInUploadBatchContainer:*(a1 + 56) inPhotoLibrary:*(a1 + 64)];
      if ([v20 count])
      {
        [*(*(a1 + 32) + 8) recordMomentSharesNeedingForceSync:v20 inLibrary:*(a1 + 64)];
      }

      if ([PLManagedAsset isComputeSyncEnabledForDirection:0 library:*(a1 + 64)])
      {
        v21 = [*(a1 + 56) computeSyncRelevantAssetsInBatch];
        v22 = [v21 count];

        if (v22)
        {
          v23 = [*(a1 + 56) computeSyncRelevantAssetsInBatch];
          v24 = [v23 allObjects];

          v25 = [PLManagedAsset createSparseComputeStateRecordsForAssets:v24 inPhotoLibrary:*(a1 + 64)];
          if ([v25 count])
          {
            v46 = v24;
            v47 = v20;
            v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v52 = 0u;
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            v45 = v25;
            v27 = v25;
            v28 = [v27 countByEnumeratingWithState:&v52 objects:v67 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v53;
              do
              {
                for (i = 0; i != v29; ++i)
                {
                  if (*v53 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v32 = *(*(&v52 + 1) + 8 * i);
                  v33 = [v32 itemScopedIdentifier];
                  [v26 setObject:v32 forKeyedSubscript:v33];
                }

                v29 = [v27 countByEnumeratingWithState:&v52 objects:v67 count:16];
              }

              while (v29);
            }

            v34 = [*(a1 + 32) cplLibrary];
            v24 = v46;
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v35 = *(*(a1 + 32) + 96);
              if (v35 == 2)
              {
                v36 = __CPLAppLibraryOSLogDomain();
              }

              else
              {
                if (v35 == 1)
                {
                  __CPLSyndicationOSLogDomain();
                }

                else
                {
                  __CPLSystemLibraryOSLogDomain();
                }
                v36 = ;
              }

              v38 = v36;
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                v39 = [v27 count];
                *buf = 134218242;
                v64 = v39;
                v65 = 2112;
                v66 = v27;
                _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_DEFAULT, "[CCSS] Attaching %lu sparse compute state records to cpl library %@", buf, 0x16u);
              }
            }

            v50[0] = MEMORY[0x1E69E9820];
            v50[1] = 3221225472;
            v50[2] = __130__PLCloudPhotoLibraryManager__handleFinalizeSessionError_commitError_uploadBatchContainer_needResetSync_forTransaction_inLibrary___block_invoke_410;
            v50[3] = &unk_1E756E0D8;
            v50[4] = *(a1 + 32);
            v51 = v27;
            [v34 attachComputeStates:v51 completionHandler:v50];

            v20 = v47;
            v25 = v45;
          }
        }
      }
    }

    if (v6)
    {
      v40 = *(a1 + 32);
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v41 = v40[12];
        if (v41 == 2)
        {
          v42 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v41 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v42 = ;
        }

        v43 = v42;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v64) = 5;
          _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_ERROR, "Waiting %d seconds then retrying upload after error processing batch", buf, 8u);
        }

        v40 = *(a1 + 32);
      }

      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __130__PLCloudPhotoLibraryManager__handleFinalizeSessionError_commitError_uploadBatchContainer_needResetSync_forTransaction_inLibrary___block_invoke_411;
      v48[3] = &unk_1E7578848;
      v48[4] = v40;
      v44 = *(a1 + 72);
      v49 = *(a1 + 64);
      [v40 _runAsyncOnIsolationQueueWithTransaction:v44 afterDelay:v48 block:5.0];
    }

    else
    {
      [*(a1 + 32) _processUploadBatchInLibrary:*(a1 + 64)];
    }
  }
}

void __130__PLCloudPhotoLibraryManager__handleFinalizeSessionError_commitError_uploadBatchContainer_needResetSync_forTransaction_inLibrary___block_invoke_2(void *a1)
{
  if ([*(a1[4] + 352) integerValue] >= a1[5])
  {
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1[4] + 352), "integerValue") - a1[5]}];
  }

  else
  {
    v2 = &unk_1F0FBAFC0;
  }

  v3 = a1[4];
  v4 = *(v3 + 352);
  *(v3 + 352) = v2;

  if ([*(a1[4] + 360) integerValue] >= a1[6])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1[4] + 360), "integerValue") - a1[6]}];
  }

  else
  {
    v5 = &unk_1F0FBAFC0;
  }

  v6 = a1[4];
  v7 = *(v6 + 360);
  *(v6 + 360) = v5;
}

void __130__PLCloudPhotoLibraryManager__handleFinalizeSessionError_commitError_uploadBatchContainer_needResetSync_forTransaction_inLibrary___block_invoke_410(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v4 = *(*(a1 + 32) + 96);
      if (v4 == 2)
      {
        v5 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v4 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v5 = ;
      }

      v8 = v5;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      v9 = [*(a1 + 40) count];
      v10 = *(a1 + 40);
      v16 = 134218498;
      v17 = v9;
      v18 = 2112;
      v19 = v3;
      v20 = 2112;
      v21 = v10;
      v11 = "[CCSS] Failed to attach %lu sparse compute state records to cpl library: %@ %@";
      v12 = v8;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 32;
LABEL_20:
      _os_log_impl(&dword_19BF1F000, v12, v13, v11, &v16, v14);
LABEL_21:
    }
  }

  else if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v6 = *(*(a1 + 32) + 96);
    if (v6 == 2)
    {
      v7 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v6 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v7 = ;
    }

    v8 = v7;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v15 = [*(a1 + 40) count];
    v16 = 134217984;
    v17 = v15;
    v11 = "[CCSS] Successfully attached %lu sparse compute state records to cpl library";
    v12 = v8;
    v13 = OS_LOG_TYPE_DEFAULT;
    v14 = 12;
    goto LABEL_20;
  }
}

void __130__PLCloudPhotoLibraryManager__handleFinalizeSessionError_commitError_uploadBatchContainer_needResetSync_forTransaction_inLibrary___block_invoke_406()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.cpl.currenttransferprogresschange", 0, 0, 0);
}

- (void)_processUploadBatchInLibrary:(id)a3
{
  v4 = a3;
  v5 = [v4 libraryServicesManager];
  v6 = [v5 databaseContext];

  v7 = [PLRelationshipOrderKeyManager alloc];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__PLCloudPhotoLibraryManager__processUploadBatchInLibrary___block_invoke;
  v10[3] = &unk_1E7574C88;
  v11 = v6;
  v8 = v6;
  v9 = [(PLRelationshipOrderKeyManager *)v7 initWithGenerateContextBlock:v10];
  [(PLCloudPhotoLibraryManager *)self _processUploadBatchWithStartupFailureCount:0 orderKeyManager:v9 inLibrary:v4];
}

uint64_t __59__PLCloudPhotoLibraryManager__processUploadBatchInLibrary___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) newShortLivedLibraryForOrderKeyManagerWithName:a2];

  return [v2 managedObjectContext];
}

- (void)updateTransferCountsWithInsertedPhotoCount:(unint64_t)a3 insertedVideoCount:(unint64_t)a4 inLibrary:(id)a5
{
  if (a4 | a3)
  {
    v6 = a5;
    PLRunWithUnfairLock();
    [(PLCloudPhotoLibraryManager *)self _updateTransferCountsInLibrary:v6];
  }
}

void __102__PLCloudPhotoLibraryManager_updateTransferCountsWithInsertedPhotoCount_insertedVideoCount_inLibrary___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{a1[5] + objc_msgSend(*(a1[4] + 352), "unsignedIntegerValue")}];
  v3 = a1[4];
  v4 = *(v3 + 352);
  *(v3 + 352) = v2;

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{a1[6] + objc_msgSend(*(a1[4] + 360), "unsignedIntegerValue")}];
  v6 = a1[4];
  v7 = *(v6 + 360);
  *(v6 + 360) = v5;

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{a1[5] + objc_msgSend(*(a1[4] + 376), "unsignedIntegerValue")}];
  v9 = a1[4];
  v10 = *(v9 + 376);
  *(v9 + 376) = v8;

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{a1[6] + objc_msgSend(*(a1[4] + 384), "unsignedIntegerValue")}];
  v12 = a1[4];
  v13 = *(v12 + 384);
  *(v12 + 384) = v11;
}

- (void)_uploadToCloudForEventsResult:(id)a3 inLibrary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__PLCloudPhotoLibraryManager__uploadToCloudForEventsResult_inLibrary___block_invoke;
  v11[3] = &unk_1E7576168;
  v11[4] = self;
  v12 = v7;
  v13 = v8;
  v14 = a2;
  v9 = v8;
  v10 = v7;
  [v9 performBlockAndWait:v11];
}

void __70__PLCloudPhotoLibraryManager__uploadToCloudForEventsResult_inLibrary___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(*(a1 + 32) + 56));
  v2 = *(a1 + 40);
  if (!v2)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PLCloudPhotoLibraryManager.m" lineNumber:3022 description:{@"Invalid parameter not satisfying: %@", @"eventsResult != nil"}];

    v2 = *(a1 + 40);
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__PLCloudPhotoLibraryManager__uploadToCloudForEventsResult_inLibrary___block_invoke_2;
  v12[3] = &unk_1E7566D78;
  v12[4] = *(a1 + 32);
  v14 = v18;
  v15 = &v28;
  v16 = &v24;
  v13 = *(a1 + 48);
  v17 = &v20;
  [v2 enumerateLocalEventsWithBlock:v12];
  *(*(a1 + 32) + 90) = [*(a1 + 40) hasMoreEvents];
  [*(*(a1 + 32) + 24) updateLastKnownTokenToResult:*(a1 + 40)];
  if (*(v21 + 24) == 1)
  {
    v3 = [*(a1 + 32) resourceManager];
    [v3 startAutomaticPrefetchAndPruneWithTimeout:1];
  }

  [*(a1 + 32) updateTransferCountsWithInsertedPhotoCount:v29[3] insertedVideoCount:v25[3] inLibrary:*(a1 + 48)];
  if ([*(*(a1 + 32) + 8) hasBatchesToUpload])
  {
    v4 = 4;
  }

  else
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v5 = *(*(a1 + 32) + 96);
      if (v5 == 2)
      {
        v6 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v5 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v6 = ;
      }

      v7 = v6;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v8 = [*(*(a1 + 32) + 24) lastKnownTokenDescription];
        *buf = 138412290;
        v33 = v8;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "didn't upload, no batch, updating change traker token on disk to %@", buf, 0xCu);
      }
    }

    v9 = *(a1 + 32);
    v10 = [*(a1 + 48) managedObjectContext];
    [v9 _saveLastKnownCloudChangeTrackerTokenToDiskWithContext:v10];

    v4 = 6;
  }

  [*(a1 + 32) _transitionToState:v4];

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
}

void __70__PLCloudPhotoLibraryManager__uploadToCloudForEventsResult_inLibrary___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v6 = *(*(a1 + 32) + 96);
    if (v6 == 2)
    {
      v7 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v6 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v7 = ;
    }

    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "local event for upload = %@", &v11, 0xCu);
    }
  }

  v9 = *(*(a1 + 48) + 8);
  if ((*(v9 + 24) & 1) == 0)
  {
    *(v9 + 24) = 1;
    v10 = [*(a1 + 32) cplLibrary];
    [v10 willBeginPushSession];
  }

  LOBYTE(v11) = 0;
  [*(*(a1 + 32) + 8) handleUploadBatchesFromLocalEvent:v5 outInsertedPhotoCount:*(*(a1 + 56) + 8) + 24 outInsertedVideoCount:*(*(a1 + 64) + 8) + 24 shouldTriggerPrefetch:&v11 withUploadTracker:*(*(a1 + 32) + 256) inLibrary:*(a1 + 40)];
  *(*(*(a1 + 72) + 8) + 24) |= v11;
  if ([*(*(a1 + 32) + 8) hasBatchesToUpload])
  {
    *a3 = 1;
  }
}

- (void)_uploadFullPhotoLibraryToCloud:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  [(PLCloudPhotoLibraryManager *)self _migrateFromChangeHubToCoreDataIfNecessary];
  v5 = [(PLCloudPhotoLibraryManager *)self cplLibrary];
  [v5 willBeginPushSession];

  [(PLCloudBatchUploader *)self->_uploader uploadFullPhotoLibraryToCloud:v4];
  if ([(PLCloudBatchUploader *)self->_uploader hasBatchesToUpload])
  {
    if (*MEMORY[0x1E6994D48])
    {
      v12 = 4;
      goto LABEL_24;
    }

    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v7 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v7 = ;
    }

    v10 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = [(PLCloudBatchUploader *)self->_uploader numberOfBatchesToUpload];
      v14[0] = 67109120;
      v14[1] = v11;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "Uploading full library (%d batches) to cloud", v14, 8u);
    }

    v12 = 4;
  }

  else
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v8 = self->_libraryMode;
      if (v8 == 2)
      {
        v9 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v8 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v9 = ;
      }

      v13 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14[0]) = 0;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Finished initial upload", v14, 2u);
      }
    }

    [(PLCloudBatchUploader *)self->_uploader setInitialUpload:0];
    v10 = [v4 globalValues];
    [v10 setCloudInitialUploadCompleted:1];
    v12 = 6;
  }

LABEL_24:
  [(PLCloudPhotoLibraryManager *)self _transitionToState:v12];
}

- (void)_checkForPushedMastersInLibrary:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = [v4 managedObjectContext];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__PLCloudPhotoLibraryManager__checkForPushedMastersInLibrary___block_invoke;
  v8[3] = &unk_1E75761B8;
  v9 = v5;
  v10 = self;
  v11 = v4;
  v6 = v4;
  v7 = v5;
  [v6 performTransaction:v8];
}

void __62__PLCloudPhotoLibraryManager__checkForPushedMastersInLibrary___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLCloudMaster entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"cloudMasterGUID != nil AND cloudLocalState == %d", 1];
  [v4 setPredicate:v5];
  [v4 setFetchBatchSize:100];
  v6 = *(a1 + 32);
  v25 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v25];
  v8 = v25;
  v9 = v8;
  if (v7)
  {
    v19 = v8;
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:50];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = v7;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v21 + 1) + 8 * i) scopedIdentifier];
          [v10 addObject:v16];

          if (__ROR8__(0x8F5C28F5C28F5C29 * [v10 count], 1) <= 0x51EB851EB851EB8uLL)
          {
            [*(a1 + 40) _fixMasterStatusIn:v10 inLibrary:*(a1 + 48)];
            [v10 removeAllObjects];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v28 count:16];
      }

      while (v13);
    }

    if ([v10 count])
    {
      [*(a1 + 40) _fixMasterStatusIn:v10 inLibrary:*(a1 + 48)];
      [v10 removeAllObjects];
    }

    v7 = v20;
    v9 = v19;
LABEL_23:

    goto LABEL_24;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v17 = *(*(a1 + 40) + 96);
    if (v17 == 2)
    {
      v18 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v17 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v18 = ;
    }

    v10 = v18;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Fetch for pushed master failed, error:%@", buf, 0xCu);
    }

    goto LABEL_23;
  }

LABEL_24:
}

- (void)_fixMasterStatusIn:(id)a3 inLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [v6 copy];
    v9 = [(PLCloudPhotoLibraryManager *)self cplLibrary];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__PLCloudPhotoLibraryManager__fixMasterStatusIn_inLibrary___block_invoke;
    v10[3] = &unk_1E7566D50;
    v10[4] = self;
    v11 = v7;
    [v9 getStatusForRecordsWithScopedIdentifiers:v8 completionHandler:v10];
  }
}

void __59__PLCloudPhotoLibraryManager__fixMasterStatusIn_inLibrary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v7 = *(*(a1 + 32) + 96);
      if (v7 == 2)
      {
        v8 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v7 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v8 = ;
      }

      v12 = v8;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v6;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "getStatusForRecords for pushed master failed, error:%@", buf, 0xCu);
      }

      goto LABEL_13;
    }
  }

  else if ([v5 count])
  {
    v9 = *(a1 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__PLCloudPhotoLibraryManager__fixMasterStatusIn_inLibrary___block_invoke_375;
    v13[3] = &unk_1E75761B8;
    v14 = v5;
    v10 = *(a1 + 40);
    v11 = *(a1 + 32);
    v15 = v10;
    v16 = v11;
    [v9 performTransaction:v13];

    v12 = v14;
LABEL_13:
  }
}

void __59__PLCloudPhotoLibraryManager__fixMasterStatusIn_inLibrary___block_invoke_375(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v19;
    v7 = MEMORY[0x1E6994D48];
    *&v4 = 67109120;
    v17 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [*(a1 + 32) objectForKeyedSubscript:{v9, v17, v18}];
        v11 = [v10 isUploaded];

        if (v11)
        {
          v12 = [PLCloudMaster cloudMasterWithScopedIdentifier:v9 prefetchResources:0 inLibrary:*(a1 + 40)];
          if ((*v7 & 1) == 0)
          {
            v13 = *(*(a1 + 48) + 96);
            if (v13 == 2)
            {
              v14 = __CPLAppLibraryOSLogDomain();
            }

            else
            {
              if (v13 == 1)
              {
                __CPLSyndicationOSLogDomain();
              }

              else
              {
                __CPLSystemLibraryOSLogDomain();
              }
              v14 = ;
            }

            v15 = v14;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v16 = [v12 cloudLocalState];
              *buf = v17;
              v23 = v16;
              _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "_fixMasterStatusIn: setting master (%d) to uploaded", buf, 8u);
            }
          }

          [v12 setCloudLocalState:3];
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v5);
  }
}

- (id)_fetchEventsFromCloudChangeTrackerInLibrary:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__11895;
  v15 = __Block_byref_object_dispose__11896;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__PLCloudPhotoLibraryManager__fetchEventsFromCloudChangeTrackerInLibrary___block_invoke;
  v8[3] = &unk_1E7578820;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [v5 performBlockAndWait:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __74__PLCloudPhotoLibraryManager__fetchEventsFromCloudChangeTrackerInLibrary___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v6 = [*(a1 + 40) managedObjectContext];
  v3 = [v2 fetchAllEventsInContext:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_fetchNewEventsFromCloudChangeTrackerInLibrary:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v7 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v7 = ;
    }

    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v47) = 0;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "Fetching new events from cloud change tracker", &v47, 2u);
    }
  }

  dispatch_assert_queue_V2(self->_isolationQueue);
  if ([(PLCloudPhotoLibraryManager *)self isConnectedToCloudChangeTracker])
  {
    if ([(PLCloudBatchUploader *)self->_uploader initialUpload])
    {
      if ((*v5 & 1) == 0)
      {
        v9 = self->_libraryMode;
        if (v9 == 2)
        {
          v10 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v9 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v10 = ;
        }

        v16 = v10;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v47) = 0;
          _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Is initial upload so uploading full library", &v47, 2u);
        }
      }

      [(PLCloudPhotoLibraryManager *)self _uploadFullPhotoLibraryToCloud:v4];
      goto LABEL_106;
    }

    if ((*v5 & 1) == 0)
    {
      v13 = self->_libraryMode;
      if (v13 == 2)
      {
        v14 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v13 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v14 = ;
      }

      v17 = v14;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v47) = 0;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEBUG, "Fetching events from cloud change tracker", &v47, 2u);
      }
    }

    v18 = [(PLCloudPhotoLibraryManager *)self _fetchEventsFromCloudChangeTrackerInLibrary:v4];
    if ([v18 resultType] == 4)
    {
      if ((*v5 & 1) == 0)
      {
        v19 = self->_libraryMode;
        if (v19 == 2)
        {
          v20 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v19 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v20 = ;
        }

        v27 = v20;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v47) = 0;
          _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEBUG, "No history when fetching events", &v47, 2u);
        }
      }

      if ([(PLCloudPersistentHistoryChangeTracker *)self->_syncChangeTracker hasChangeTrackerToken])
      {
        if ((*v5 & 1) == 0)
        {
          v28 = self->_libraryMode;
          if (v28 == 2)
          {
            v29 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v28 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v29 = ;
          }

          v36 = v29;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v47) = 0;
            _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_DEFAULT, "Cloud change tracker has no history but an existing token so doing a reset sync", &v47, 2u);
          }
        }

        [MEMORY[0x1E6994B88] registerLikelyResetReason:@"assetsd changeStore has no history"];
        [(PLCloudPhotoLibraryManager *)self _doResetSync:1 inLibrary:v4];
        [(PLCloudPersistentHistoryChangeTracker *)self->_syncChangeTracker clearToken];
      }

      else
      {
        if ((*v5 & 1) == 0)
        {
          v30 = self->_libraryMode;
          if (v30 == 2)
          {
            v31 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v30 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v31 = ;
          }

          v37 = v31;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v47) = 0;
            _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEFAULT, "Cloud change tracker has no history and no existing token so uploading full library", &v47, 2u);
          }
        }

        [(PLCloudPhotoLibraryManager *)self _uploadFullPhotoLibraryToCloud:v4];
      }

      goto LABEL_105;
    }

    if ([v18 resultType] == 3)
    {
      if ((*v5 & 1) == 0)
      {
        v21 = self->_libraryMode;
        if (v21 == 2)
        {
          v22 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v21 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v22 = ;
        }

        v32 = v22;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v47) = 0;
          _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEFAULT, "Change token is unexpectedly up-to-date", &v47, 2u);
        }
      }

      v33 = [v4 managedObjectContext];
      [(PLCloudPhotoLibraryManager *)self _saveLastKnownCloudChangeTrackerTokenToDiskWithContext:v33];
LABEL_92:

      goto LABEL_93;
    }

    if ([v18 resultType] == 5)
    {
      if ((*v5 & 1) == 0)
      {
        v23 = self->_libraryMode;
        if (v23 == 2)
        {
          v24 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v23 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v24 = ;
        }

        v33 = v24;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [v18 currentTokenDescription];
          v39 = [(PLCloudPersistentHistoryChangeTracker *)self->_syncChangeTracker lastKnownTokenDescription];
          v47 = 138543618;
          v48 = v38;
          v49 = 2114;
          v50 = v39;
          _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "We're not up to date, be there were no new events. Current token: %{public}@, we have %{public}@", &v47, 0x16u);
        }

        goto LABEL_92;
      }
    }

    else
    {
      if ((*v5 & 1) == 0)
      {
        v25 = self->_libraryMode;
        if (v25 == 2)
        {
          v26 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v25 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v26 = ;
        }

        v40 = v26;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v41 = [(PLCloudPersistentHistoryChangeTracker *)self->_syncChangeTracker lastKnownTokenDescription];
          v42 = [v18 resultType];
          v47 = 138543618;
          v48 = v41;
          v49 = 2048;
          v50 = v42;
          _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_DEFAULT, "fetched history from assetd since: %{public}@, resultType: %zd", &v47, 0x16u);
        }
      }

      if ([v18 resultType] != 1)
      {
        if ([v18 resultType] != 2)
        {
          [(PLCloudPhotoLibraryManager *)self _uploadToCloudForEventsResult:v18 inLibrary:v4];
          goto LABEL_105;
        }

        if ((*v5 & 1) == 0)
        {
          v43 = self->_libraryMode;
          if (v43 == 2)
          {
            v44 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v43 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v44 = ;
          }

          v45 = v44;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v46 = [(PLCloudPersistentHistoryChangeTracker *)self->_syncChangeTracker lastKnownTokenDescription];
            v47 = 138543362;
            v48 = v46;
            _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_DEFAULT, "assetsd doesn't have change history for what we need. We're now going to re-push our current local library to the cloud, last token = %{public}@", &v47, 0xCu);
          }
        }

        [MEMORY[0x1E6994B88] registerLikelyResetReason:@"assetsd can't find its change history"];
        [(PLCloudPhotoLibraryManager *)self _doResetSync:1 inLibrary:v4];
        v34 = self;
        v35 = 3;
LABEL_94:
        [(PLCloudPhotoLibraryManager *)v34 _transitionToState:v35];
LABEL_105:

        goto LABEL_106;
      }
    }

LABEL_93:
    v34 = self;
    v35 = 6;
    goto LABEL_94;
  }

  if ((*v5 & 1) == 0)
  {
    v11 = self->_libraryMode;
    if (v11 == 2)
    {
      v12 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v11 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v12 = ;
    }

    v15 = v12;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v47) = 0;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Skip fetching new events when iCPL is not enabled", &v47, 2u);
    }
  }

  [(PLCloudPhotoLibraryManager *)self _transitionToState:6];
LABEL_106:
}

- (void)_processRulesEvaluationIfNeeded
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (self->_rulesChangeTracker)
  {
    v3 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
    v4 = [v3 databaseContext];
    v5 = [v4 newShortLivedLibraryWithName:"-[PLCloudPhotoLibraryManager _processRulesEvaluationIfNeeded]"];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__PLCloudPhotoLibraryManager__processRulesEvaluationIfNeeded__block_invoke;
    v7[3] = &unk_1E7578848;
    v7[4] = self;
    v8 = v5;
    v6 = v5;
    [v6 performTransactionAndWait:v7];
  }
}

void __61__PLCloudPhotoLibraryManager__processRulesEvaluationIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) fetchObjectsNeedingEvaluation];
  v3 = [v2 assetObjectIDs];
  v4 = [v2 detectedFaceObjectIDs];
  if ([v3 count] || objc_msgSend(v4, "count"))
  {
    v5 = *(a1 + 40);
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __61__PLCloudPhotoLibraryManager__processRulesEvaluationIfNeeded__block_invoke_2;
    v11 = &unk_1E7578100;
    v12 = v5;
    v6 = v3;
    v7 = *(a1 + 32);
    v13 = v6;
    v14 = v7;
    v15 = v4;
    [v12 performTransactionAndWait:&v8];
  }

  [*(*(a1 + 32) + 40) updateLastKnownTokenToResult:{v2, v8, v9, v10, v11}];
}

void __61__PLCloudPhotoLibraryManager__processRulesEvaluationIfNeeded__block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [PLLibraryScope activeLibraryScopeInManagedObjectContext:v2];

  v4 = [[PLLibraryScopeRuleManager alloc] initWithLibraryScope:v3];
  v5 = [*(a1 + 40) count];
  v6 = MEMORY[0x1E6994D48];
  if (v5)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v7 = *(*(a1 + 48) + 96);
      if (v7 == 2)
      {
        v8 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v7 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v8 = ;
      }

      v9 = v8;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 40) count];
        v15 = 134217984;
        v16 = v10;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Rules change tracker: %lu assets need evaluation, sending to library scope rule manager", &v15, 0xCu);
      }
    }

    [(PLLibraryScopeRuleManager *)v4 evaluateAssetObjectIDs:*(a1 + 40) withResultEnumerationBlock:0];
  }

  if ([*(a1 + 56) count])
  {
    if ((*v6 & 1) == 0)
    {
      v11 = *(*(a1 + 48) + 96);
      if (v11 == 2)
      {
        v12 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v11 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v12 = ;
      }

      v13 = v12;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [*(a1 + 40) count];
        v15 = 134217984;
        v16 = v14;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Rules change tracker: %lu faces need evaluation, sending to library scope rule manager", &v15, 0xCu);
      }
    }

    [(PLLibraryScopeRuleManager *)v4 evaluateFaceObjectIDs:*(a1 + 56) withResultEnumerationBlock:0];
  }
}

- (void)photosPreferencesChanged
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __54__PLCloudPhotoLibraryManager_photosPreferencesChanged__block_invoke;
  v2[3] = &unk_1E75781E8;
  v2[4] = self;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:0 block:v2];
}

void *__54__PLCloudPhotoLibraryManager_photosPreferencesChanged__block_invoke(uint64_t a1)
{
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v2 = *(*(a1 + 32) + 96);
    if (v2 == 2)
    {
      v3 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v2 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v3 = ;
    }

    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Photos preferences changed", v8, 2u);
    }
  }

  v5 = PLIsSharedLibrarySuggestionsEnabled();
  result = *(a1 + 32);
  v7 = result[5];
  if (v5)
  {
    if (!v7)
    {
      return [result _startLibraryScopeRulesChangeTrackerInQueue];
    }
  }

  else if (v7)
  {
    return [result stopLibraryScopeRulesChangeTracker];
  }

  return result;
}

- (void)stopLibraryScopeRulesChangeTracker
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v4 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v4 = ;
    }

    v5 = v4;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Disconnecting and clearing rules change tracker", v7, 2u);
    }
  }

  [(PLLibraryScopeChangeTracker *)self->_rulesChangeTracker stop];
  rulesChangeTracker = self->_rulesChangeTracker;
  self->_rulesChangeTracker = 0;
}

- (void)resetSyncDueToMigrationMarker
{
  [MEMORY[0x1E6994B88] registerLikelyResetReason:@"Change Hub migration marker found"];
  v3 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
  v4 = [v3 databaseContext];
  v5 = [v4 newShortLivedCplLibraryWithNameSuffix:"-[PLCloudPhotoLibraryManager resetSyncDueToMigrationMarker]"];

  [(PLCloudPhotoLibraryManager *)self _doResetSync:1 inLibrary:v5];
}

- (id)readLocalVersion
{
  objc_opt_class();
  v3 = MEMORY[0x1E69BF1C0];
  v4 = *MEMORY[0x1E69BF410];
  v5 = [(PLCloudPhotoLibraryManager *)self pathManager];
  v6 = [v3 readCPLPlistObjectWithKey:v4 pathManager:v5];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)removeAllChangeHubKeys
{
  v2 = MEMORY[0x1E69BF1C0];
  v3 = *MEMORY[0x1E69BF410];
  v4 = [(PLCloudPhotoLibraryManager *)self pathManager];
  [v2 saveCPLPlistObject:0 forKey:v3 pathManager:v4];
}

- (void)_startLibraryScopeRulesChangeTrackerInQueue
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (!self->_libraryMode)
  {
    if (PLIsSharedLibrarySuggestionsEnabled())
    {
      v3 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
      v4 = [v3 databaseContext];
      v5 = [v4 newShortLivedLibraryForHistoryPersistenceReadingWithName:"PLLibraryScopeChangeTracker persistence history tracker"];

      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __73__PLCloudPhotoLibraryManager__startLibraryScopeRulesChangeTrackerInQueue__block_invoke;
      v7[3] = &unk_1E7578848;
      v8 = v5;
      v9 = self;
      v6 = v5;
      [v6 performBlockAndWait:v7];
    }
  }
}

void __73__PLCloudPhotoLibraryManager__startLibraryScopeRulesChangeTrackerInQueue__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [PLLibraryScope activeLibraryScopeInManagedObjectContext:v2];

  if ([v3 shouldEnableRulesChangeTracker])
  {
    v4 = MEMORY[0x1E6994D48];
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v5 = *(*(a1 + 40) + 96);
      if (v5 == 2)
      {
        v6 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v5 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v6 = ;
      }

      v7 = v6;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Setting up rules change tracker", buf, 2u);
      }
    }

    v8 = [PLLibraryScopeChangeTracker alloc];
    v9 = [*(a1 + 32) managedObjectContext];
    v10 = [(PLLibraryScopeChangeTracker *)v8 initWithManagedObjectContext:v9];
    v11 = *(a1 + 40);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (([*(*(a1 + 40) + 40) start] & 1) == 0 && (*v4 & 1) == 0)
    {
      v13 = *(*(a1 + 40) + 96);
      if (v13 == 2)
      {
        v14 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v13 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v14 = ;
      }

      v15 = v14;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Failed to connect to rules change tracker", v16, 2u);
      }
    }
  }
}

- (void)startLibraryScopeRulesChangeTracker
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __65__PLCloudPhotoLibraryManager_startLibraryScopeRulesChangeTracker__block_invoke;
  v2[3] = &unk_1E75781E8;
  v2[4] = self;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:0 block:v2];
}

- (void)startAssetRecoveryWithTransaction:(id)a3
{
  v5 = a3;
  if ([(PLCloudPhotoLibraryManager *)self isCloudPhotoLibraryEnabled])
  {
    v4 = [(PLCloudPhotoLibraryManager *)self recoveryManager];
    [v4 startRecoveryUsingCloudPhotoLibraryManager:self transaction:v5 shouldIdentifyInconsistentAssets:1];
  }
}

- (void)_doResetSync:(int64_t)a3 inLibrary:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a4;
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (a3 != 2)
  {
    self->_initializedMaster = 1;
  }

  v7 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v9 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v9 = ;
    }

    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v34 = a3;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Re-push local library to the cloud due to starting reset sync of type: %ld", buf, 0xCu);
    }
  }

  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __53__PLCloudPhotoLibraryManager__doResetSync_inLibrary___block_invoke;
  v31 = &unk_1E75781E8;
  v32 = self;
  PLRunWithUnfairLock();
  [(PLCloudPhotoLibraryUploadTracker *)self->_uploadTracker reset];
  [(PLCloudBatchUploader *)self->_uploader setInitialUpload:1];
  self->_pullOnIdle = 1;
  v11 = MEMORY[0x1E69BF1C0];
  v12 = [(PLCloudPhotoLibraryManager *)self pathManager];
  LODWORD(v11) = [v11 CPLPlistFileExistsWithPathManager:v12];

  if (v11)
  {
    self->_pendingResetSyncType = a3;
  }

  v13 = [(PLCloudPhotoLibraryManager *)self resourceManager];
  [v13 stop];

  if (a3 == 2 && self->_syncChangeTracker)
  {
    if ((*v7 & 1) == 0)
    {
      v14 = self->_libraryMode;
      if (v14 == 2)
      {
        v15 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v14 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v15 = ;
      }

      v16 = v15;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Tried to hard reset while we had an existing hub connection.  This could cause data loss so ignoring.  PLEASE REPORT THIS!", buf, 2u);
      }
    }
  }

  else
  {
    PLResetSyncStatusWithLibrary(v6, 0, a3 == 2, 0, 0);
  }

  if ((*v7 & 1) == 0)
  {
    v17 = self->_libraryMode;
    if (v17 == 2)
    {
      v18 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v17 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v18 = ;
    }

    v19 = v18;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "Clearing cloud version and last initial upload date from PLGlobalValues...", buf, 2u);
    }
  }

  v20 = [v6 globalValues];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __53__PLCloudPhotoLibraryManager__doResetSync_inLibrary___block_invoke_361;
  v26 = &unk_1E75781E8;
  v27 = v20;
  v21 = v20;
  [v6 performTransactionAndWait:&v23];
  [(PLCloudPersistentHistoryChangeTracker *)self->_syncChangeTracker forceTokenToCurrent:v23];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.ResetSyncStateChanged", 0, 0, 1u);
}

void __53__PLCloudPhotoLibraryManager__doResetSync_inLibrary___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 352);
  *(v2 + 352) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 360);
  *(v4 + 360) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 368);
  *(v6 + 368) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 376);
  *(v8 + 376) = 0;

  v10 = *(a1 + 32);
  v11 = *(v10 + 384);
  *(v10 + 384) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 392);
  *(v12 + 392) = 0;
}

uint64_t __53__PLCloudPhotoLibraryManager__doResetSync_inLibrary___block_invoke_361(uint64_t a1)
{
  [*(a1 + 32) setCloudTrackerLastKnownCloudVersion:0];
  v2 = *(a1 + 32);

  return [v2 setCloudInitialUploadCompleted:0];
}

- (void)deleteResources:(id)a3 checkServerIfNecessary:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager deleteResources:checkServerIfNecessary:completionHandler:]"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87__PLCloudPhotoLibraryManager_deleteResources_checkServerIfNecessary_completionHandler___block_invoke;
  v13[3] = &unk_1E75760C8;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v10 block:v13];
}

void __87__PLCloudPhotoLibraryManager_deleteResources_checkServerIfNecessary_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cplLibrary];
  v3 = v2;
  if (v2)
  {
    [v2 deleteResources:*(a1 + 40) checkServerIfNecessary:*(a1 + 56) completionHandler:*(a1 + 48)];
  }

  else
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v4 = *(*(a1 + 32) + 96);
      if (v4 == 2)
      {
        v5 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v4 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v5 = ;
      }

      v6 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "CPL Library is not yet enabled", v13, 2u);
      }
    }

    v7 = MEMORY[0x1E6994AB0];
    v10 = a1 + 40;
    v8 = *(a1 + 40);
    v9 = *(v10 + 8);
    v11 = [PLCloudPhotoLibraryError createErrorWithType:15];
    v12 = [v7 unsafeResources:v8 withError:v11 resourceStorage:0];
    (*(v9 + 16))(v9, 0, v12);
  }
}

- (void)downloadResourceInMemory:(id)a3 clientBundleID:(id)a4 proposedTaskIdentifier:(id)a5 taskDidBeginHandler:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (v12 && v16)
  {
    v18 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager downloadResourceInMemory:clientBundleID:proposedTaskIdentifier:taskDidBeginHandler:completionHandler:]"];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __131__PLCloudPhotoLibraryManager_downloadResourceInMemory_clientBundleID_proposedTaskIdentifier_taskDidBeginHandler_completionHandler___block_invoke;
    v20[3] = &unk_1E7566D28;
    v20[4] = self;
    v21 = v12;
    v25 = v15;
    v22 = v14;
    v26 = v17;
    v23 = v13;
    v24 = v18;
    v19 = v18;
    [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v19 block:v20];
  }
}

void __131__PLCloudPhotoLibraryManager_downloadResourceInMemory_clientBundleID_proposedTaskIdentifier_taskDidBeginHandler_completionHandler___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _isPausedForDownloadRequestHighPriority:0])
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"iCloud Photo Library is paused, unable to download in-memory resource %@", *(a1 + 40)];
    v3 = [PLCloudPhotoLibraryError createErrorWithType:1 withDebugMessage:v2];
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v4 = *(*(a1 + 32) + 96);
      if (v4 == 2)
      {
        v5 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v4 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v5 = ;
      }

      v10 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v3;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    (*(*(a1 + 72) + 16))(*(a1 + 72), 0, [*(a1 + 40) resourceType], v3);
  }

  else
  {
    v6 = [*(a1 + 32) cplLibrary];
    if (v6)
    {
      v2 = v6;
      v7 = *(a1 + 48);
      if (v7)
      {
        v3 = v7;
      }

      else
      {
        v11 = [MEMORY[0x1E696AFB0] UUID];
        v3 = [v11 UUIDString];
      }

      if ([*(*(a1 + 32) + 248) addClientHandlerAndCreateTaskIfNecessaryForResource:*(a1 + 40) taskIdentifier:v3 completionHandler:*(a1 + 80)])
      {
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v12 = *(*(a1 + 32) + 96);
          if (v12 == 2)
          {
            v13 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v12 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v13 = ;
          }

          v19 = v13;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v20 = *(a1 + 40);
            *buf = 138412546;
            v31 = v20;
            v32 = 2112;
            v33 = v3;
            _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEBUG, "Going to download in-memory CPLResource %@ with taskIdentifier %@", buf, 0x16u);
          }
        }

        v21 = *(a1 + 56);
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __131__PLCloudPhotoLibraryManager_downloadResourceInMemory_clientBundleID_proposedTaskIdentifier_taskDidBeginHandler_completionHandler___block_invoke_359;
        v25[3] = &unk_1E7566D00;
        v22 = *(a1 + 40);
        v25[4] = *(a1 + 32);
        v26 = v22;
        v29 = *(a1 + 72);
        v3 = v3;
        v27 = v3;
        v28 = *(a1 + 64);
        [v2 beginInMemoryDownloadOfResource:v26 clientBundleID:v21 completionHandler:v25];
      }

      else if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v14 = *(*(a1 + 32) + 96);
        if (v14 == 2)
        {
          v15 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v14 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v15 = ;
        }

        v23 = v15;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v24 = *(a1 + 40);
          *buf = 138412546;
          v31 = v24;
          v32 = 2112;
          v33 = v3;
          _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEBUG, "Resource download for in-memory CPLResource %@ is inflight with taskIdentifier %@", buf, 0x16u);
        }
      }
    }

    else
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v8 = *(*(a1 + 32) + 96);
        if (v8 == 2)
        {
          v9 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v8 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v9 = ;
        }

        v16 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "CPL Library is not yet enabled", buf, 2u);
        }
      }

      v17 = *(a1 + 72);
      v18 = [*(a1 + 40) resourceType];
      v3 = [PLCloudPhotoLibraryError createErrorWithType:15];
      (*(v17 + 16))(v17, 0, v18, v3);
      v2 = 0;
    }
  }
}

void __131__PLCloudPhotoLibraryManager_downloadResourceInMemory_clientBundleID_proposedTaskIdentifier_taskDidBeginHandler_completionHandler___block_invoke_359(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v6 = [PLCloudPhotoLibraryError createErrorWithType:2];
    [*(*(a1 + 32) + 248) reportCompletionForResource:*(a1 + 40) withData:0 error:v6];
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v7 = *(*(a1 + 32) + 96);
      if (v7 == 2)
      {
        v8 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v7 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v8 = ;
      }

      v10 = v8;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 40);
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Failed to start download in-memory for resource %@", &v12, 0xCu);
      }
    }

    goto LABEL_21;
  }

  [*(*(a1 + 32) + 248) setTransferTask:v3 forResource:*(a1 + 40)];
  (*(*(a1 + 64) + 16))(*(a1 + 64), *(a1 + 48), [*(a1 + 40) resourceType], 0);
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v4 = *(*(a1 + 32) + 96);
    if (v4 == 2)
    {
      v5 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v4 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v5 = ;
    }

    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "Began download in-memory resource %@", &v12, 0xCu);
    }

LABEL_21:
  }

  [*(a1 + 56) stillAlive];
}

- (void)downloadResourceInMemoryForAsset:(id)a3 resourceType:(unint64_t)a4 masterResourceOnly:(BOOL)a5 clientBundleID:(id)a6 proposedTaskIdentifier:(id)a7 taskDidBeginHandler:(id)a8 completionHandler:(id)a9
{
  if (a3 && a9)
  {
    v12 = a5;
    v16 = a9;
    v17 = a8;
    v18 = a7;
    v19 = a6;
    v20 = [(PLCloudPhotoLibraryManager *)self _assetResourceForAsset:a3 resourceType:a4 masterResourceOnly:v12 isPhoto:0];
    [(PLCloudPhotoLibraryManager *)self downloadResourceInMemory:v20 clientBundleID:v19 proposedTaskIdentifier:v18 taskDidBeginHandler:v17 completionHandler:v16];
  }
}

- (void)downloadAsset:(id)a3 resourceType:(unint64_t)a4 masterResourceOnly:(BOOL)a5 highPriority:(BOOL)a6 clientBundleID:(id)a7 proposedTaskIdentifier:(id)a8 taskDidBeginHandler:(id)a9 progressBlock:(id)a10 completionHandler:(id)a11
{
  v13 = a6;
  v14 = a5;
  v46 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  if (!v20)
  {
    v20 = &__block_literal_global_355;
  }

  v33 = 0;
  v23 = [(PLCloudPhotoLibraryManager *)self _assetResourceForAsset:v17 resourceType:a4 masterResourceOnly:v14 isPhoto:&v33];
  if (v23)
  {
    [(PLCloudPhotoLibraryManager *)self downloadResource:v23 highPriority:v13 clientBundleID:v18 proposedTaskIdentifier:v19 taskDidBeginHandler:v20 progressBlock:v21 completionHandler:v22];
  }

  else
  {
    if (v33)
    {
      v24 = 3;
    }

    else
    {
      v24 = 4;
    }

    v25 = [PLCloudPhotoLibraryError createErrorWithType:v24];
    v32 = [v17 allAssetCPLResources];
    v31 = [v17 allMasterCPLResources];
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      libraryMode = self->_libraryMode;
      if (libraryMode == 2)
      {
        v27 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (libraryMode == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v27 = ;
      }

      v28 = v27;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [v17 master];
        v29 = v30 = v25;
        *buf = 138413570;
        v35 = v30;
        v36 = 2112;
        v37 = v17;
        v38 = 2112;
        v39 = v32;
        v40 = 2112;
        v41 = v29;
        v42 = 2112;
        v43 = v31;
        v44 = 2048;
        v45 = a4;
        _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "%@. Asset: %@ %@, Master: %@ %@, resourceType: %lu", buf, 0x3Eu);

        v25 = v30;
      }
    }

    v20[2](v20, 0, a4, v25);
  }
}

- (id)_assetResourceForAsset:(id)a3 resourceType:(unint64_t)a4 masterResourceOnly:(BOOL)a5 isPhoto:(BOOL *)a6
{
  v9 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__11895;
  v24 = __Block_byref_object_dispose__11896;
  v25 = 0;
  v10 = [v9 photoLibrary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93__PLCloudPhotoLibraryManager__assetResourceForAsset_resourceType_masterResourceOnly_isPhoto___block_invoke;
  v14[3] = &unk_1E7566CD8;
  v16 = &v26;
  v11 = v9;
  v19 = a5;
  v15 = v11;
  v17 = &v20;
  v18 = a4;
  [v10 performBlockAndWait:v14];

  if (a6)
  {
    *a6 = *(v27 + 24);
  }

  v12 = v21[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v12;
}

void __93__PLCloudPhotoLibraryManager__assetResourceForAsset_resourceType_masterResourceOnly_isPhoto___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) isPhoto];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  if (*(a1 + 64) == 1)
  {
    [v2 rm_cplMasterResourceForResourceType:v3];
  }

  else
  {
    [v2 rm_cplResourceForResourceType:v3];
  }
  v7 = ;
  v4 = [v7 copy];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)downloadResource:(id)a3 options:(id)a4 clientBundleID:(id)a5 proposedTaskIdentifier:(id)a6 taskDidBeginHandler:(id)a7 progressBlock:(id)a8 completionHandler:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = [v15 resourceType];
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = &__block_literal_global_344;
  }

  if (!v19)
  {
    v19 = &__block_literal_global_347;
  }

  if (v15)
  {
    v24 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager downloadResource:options:clientBundleID:proposedTaskIdentifier:taskDidBeginHandler:progressBlock:completionHandler:]"];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __145__PLCloudPhotoLibraryManager_downloadResource_options_clientBundleID_proposedTaskIdentifier_taskDidBeginHandler_progressBlock_completionHandler___block_invoke_3;
    v27[3] = &unk_1E7566CB0;
    v28 = v16;
    v29 = self;
    v30 = v15;
    v34 = v19;
    v37 = v22;
    v31 = v18;
    v35 = v20;
    v36 = v23;
    v32 = v17;
    v33 = v24;
    v25 = v24;
    [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v25 block:v27];
  }

  else
  {
    v26 = [PLCloudPhotoLibraryError createErrorWithType:12];
    (*(v19 + 2))(v19, 0, v22, v26);
  }
}

void __145__PLCloudPhotoLibraryManager_downloadResource_options_clientBundleID_proposedTaskIdentifier_taskDidBeginHandler_progressBlock_completionHandler___block_invoke_3(uint64_t a1)
{
  v48[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) isForeground];
  if ([*(a1 + 40) _isPausedForDownloadRequestHighPriority:v2])
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"iCloud Photo Library is paused, unable to download resource %@", *(a1 + 48)];
    v4 = [PLCloudPhotoLibraryError createErrorWithType:1 withDebugMessage:v3];
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v5 = *(*(a1 + 40) + 96);
      if (v5 == 2)
      {
        v6 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v5 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v6 = ;
      }

      v11 = v6;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v44 = v4;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    (*(*(a1 + 80) + 16))();
  }

  else
  {
    v7 = [*(a1 + 40) cplLibrary];
    if (v7)
    {
      v3 = v7;
      v8 = *(a1 + 56);
      if (v8)
      {
        v4 = v8;
      }

      else
      {
        v12 = [MEMORY[0x1E696AFB0] UUID];
        v4 = [v12 UUIDString];
      }

      v13 = [*(a1 + 40) _identifierForResource:*(a1 + 48)];
      if ([*(*(a1 + 40) + 136) addProgressBlock:*(a1 + 88) completionHandler:*(a1 + 96) forResourceIdentifier:v13 highPriority:v2 withTaskIdentifier:v4])
      {
        (*(*(a1 + 80) + 16))();
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v14 = *(*(a1 + 40) + 96);
          if (v14 == 2)
          {
            v15 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v14 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v15 = ;
          }

          v24 = v15;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v25 = *(a1 + 48);
            v26 = *(a1 + 32);
            *buf = 138543874;
            v44 = v25;
            v45 = 2114;
            v46 = v4;
            v47 = 2114;
            v48[0] = v26;
            _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "Download is inflight for resource %{public}@ with taskIdentifier %{public}@, options: %{public}@", buf, 0x20u);
          }
        }
      }

      else
      {
        if (v2)
        {
          v16 = [v4 hash];
          v17 = PLCPLSignpostsTelemetryGetLog();
          v18 = v17;
          if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "OnDemandDownload", "", buf, 2u);
          }
        }

        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v19 = *(*(a1 + 40) + 96);
          if (v19 == 2)
          {
            v20 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v19 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v20 = ;
          }

          v27 = v20;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v28 = *(a1 + 48);
            v29 = *(a1 + 32);
            *buf = 138544130;
            v44 = v28;
            v45 = 2114;
            v46 = v4;
            v47 = 1024;
            LODWORD(v48[0]) = v2;
            WORD2(v48[0]) = 2114;
            *(v48 + 6) = v29;
            _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEFAULT, "Going to start download for resource %{public}@ with taskIdentifier %{public}@, highPriority %d, %{public}@", buf, 0x26u);
          }
        }

        v30 = *(a1 + 64);
        v31 = *(a1 + 32);
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __145__PLCloudPhotoLibraryManager_downloadResource_options_clientBundleID_proposedTaskIdentifier_taskDidBeginHandler_progressBlock_completionHandler___block_invoke_352;
        v35[3] = &unk_1E7566C88;
        v32 = *(a1 + 48);
        v35[4] = *(a1 + 40);
        v36 = v4;
        v37 = *(a1 + 48);
        v38 = v13;
        v42 = v2;
        v33 = *(a1 + 80);
        v34 = *(a1 + 104);
        v40 = v33;
        v41 = v34;
        v39 = *(a1 + 72);
        [v3 beginDownloadForResource:v32 clientBundleID:v30 options:v31 proposedTaskIdentifier:v36 completionHandler:v35];
      }
    }

    else
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v9 = *(*(a1 + 40) + 96);
        if (v9 == 2)
        {
          v10 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v9 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v10 = ;
        }

        v21 = v10;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "CPL Library is not yet enabled", buf, 2u);
        }
      }

      v22 = *(a1 + 80);
      v23 = *(a1 + 104);
      v4 = [PLCloudPhotoLibraryError createErrorWithType:15];
      (*(v22 + 16))(v22, 0, v23, v4);
      v3 = 0;
    }
  }
}

void __145__PLCloudPhotoLibraryManager_downloadResource_options_clientBundleID_proposedTaskIdentifier_taskDidBeginHandler_progressBlock_completionHandler___block_invoke_352(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    [*(*(a1 + 32) + 136) setPendingTaskWithTransferTask:v3 withTaskIdentifier:*(a1 + 40)];
    if (*MEMORY[0x1E6994D48])
    {
      v6 = 0;
      goto LABEL_22;
    }

    v4 = *(*(a1 + 32) + 96);
    if (v4 == 2)
    {
      v5 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v4 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v5 = ;
    }

    v9 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 48);
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "Start download for resource %@ with task: %@", &v12, 0x16u);
    }

    v6 = 0;
    goto LABEL_21;
  }

  v6 = [PLCloudPhotoLibraryError createErrorWithType:2];
  [*(*(a1 + 32) + 136) reportCompletionForResourceIdentifier:*(a1 + 56) highPriority:*(a1 + 88) withError:v6];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v7 = *(*(a1 + 32) + 96);
    if (v7 == 2)
    {
      v8 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v7 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v8 = ;
    }

    v9 = v8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 48);
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Failed to start download for resource %@", &v12, 0xCu);
    }

LABEL_21:
  }

LABEL_22:
  (*(*(a1 + 72) + 16))();
  [*(a1 + 64) stillAlive];
}

- (void)downloadResource:(id)a3 highPriority:(BOOL)a4 clientBundleID:(id)a5 proposedTaskIdentifier:(id)a6 taskDidBeginHandler:(id)a7 progressBlock:(id)a8 completionHandler:(id)a9
{
  v13 = a4;
  v16 = MEMORY[0x1E6994BA8];
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a3;
  v23 = [[v16 alloc] initWithHighPriority:v13];
  [(PLCloudPhotoLibraryManager *)self downloadResource:v22 options:v23 clientBundleID:v21 proposedTaskIdentifier:v20 taskDidBeginHandler:v19 progressBlock:v18 completionHandler:v17];
}

- (id)_identifierForResource:(id)a3
{
  v3 = a3;
  v4 = [v3 itemScopedIdentifier];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [v4 descriptionWithNoScopeIndex];
  v7 = [v3 resourceType];

  v8 = [v5 stringWithFormat:@"%@_%lu", v6, v7];

  return v8;
}

- (void)getStreamingURLForAsset:(id)a3 resourceType:(unint64_t)a4 intent:(unint64_t)a5 hints:(id)a6 timeRange:(id *)a7 clientBundleID:(id)a8 completionHandler:(id)a9
{
  v15 = a3;
  v16 = a6;
  v17 = a8;
  v18 = a9;
  v19 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager getStreamingURLForAsset:resourceType:intent:hints:timeRange:clientBundleID:completionHandler:]"];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v20 = *&a7->var0.var3;
  v33 = *&a7->var0.var0;
  v34 = v20;
  v25[2] = __123__PLCloudPhotoLibraryManager_getStreamingURLForAsset_resourceType_intent_hints_timeRange_clientBundleID_completionHandler___block_invoke;
  v25[3] = &unk_1E7566C20;
  v26 = v16;
  v27 = v15;
  v31 = a4;
  v32 = a5;
  v35 = *&a7->var1.var1;
  v28 = self;
  v29 = v17;
  v30 = v18;
  v21 = v18;
  v22 = v17;
  v23 = v15;
  v24 = v16;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v19 block:v25];
}

void __123__PLCloudPhotoLibraryManager_getStreamingURLForAsset_resourceType_intent_hints_timeRange_clientBundleID_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) photoLibrary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __123__PLCloudPhotoLibraryManager_getStreamingURLForAsset_resourceType_intent_hints_timeRange_clientBundleID_completionHandler___block_invoke_2;
  v8[3] = &unk_1E7566BF8;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v9 = v4;
  v10 = v5;
  v15 = *(a1 + 72);
  v11 = *(a1 + 32);
  v12 = v2;
  v6 = *(a1 + 104);
  v16 = *(a1 + 88);
  v17 = v6;
  v18 = *(a1 + 120);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v7 = v2;
  [v3 performBlock:v8 withPriority:1];
}

void __123__PLCloudPhotoLibraryManager_getStreamingURLForAsset_resourceType_intent_hints_timeRange_clientBundleID_completionHandler___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) rm_cplResourceForResourceType:*(a1 + 80)];
  v3 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v4 = *(*(a1 + 40) + 96);
    if (v4 == 2)
    {
      v5 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v4 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v5 = ;
    }

    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) cloudAssetGUID];
      v8 = *(a1 + 80);
      v9 = *(a1 + 88);
      v10 = *(a1 + 48);
      *buf = 138413314;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = v8;
      *&buf[22] = 2112;
      *&buf[24] = v2;
      *v29 = 2048;
      *&v29[2] = v9;
      *&v29[10] = 2112;
      *&v29[12] = v10;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Going to get streaming URL for asset %@ type %lu CPLResource %@ intent %lu hints %@", buf, 0x34u);
    }
  }

  if (v2)
  {
    v11 = [*(a1 + 40) cplLibrary];
    if (v11)
    {
      v12 = v11;
      v13 = *(a1 + 88);
      v14 = *(a1 + 56);
      v15 = *(a1 + 64);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __123__PLCloudPhotoLibraryManager_getStreamingURLForAsset_resourceType_intent_hints_timeRange_clientBundleID_completionHandler___block_invoke_336;
      v26[3] = &unk_1E7566BD0;
      v26[4] = *(a1 + 40);
      v27 = *(a1 + 72);
      v16 = *(a1 + 112);
      *buf = *(a1 + 96);
      *&buf[16] = v16;
      *v29 = *(a1 + 128);
      [v12 getStreamingURLOrMediaMakerDataForResource:v2 intent:v13 hints:v14 timeRange:buf clientBundleID:v15 completionHandler:v26];
    }

    else
    {
      if ((*v3 & 1) == 0)
      {
        v20 = *(*(a1 + 40) + 96);
        if (v20 == 2)
        {
          v21 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v20 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v21 = ;
        }

        v23 = v21;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "CPL Library is not yet enabled, unable to fetch publicURL", buf, 2u);
        }
      }

      v24 = *(a1 + 72);
      v25 = [PLCloudPhotoLibraryError createErrorWithType:15];
      (*(v24 + 16))(v24, 0, 0, 0, 0, v25);

      v12 = 0;
    }
  }

  else
  {
    if ([*(a1 + 32) isPhoto])
    {
      v17 = 3;
    }

    else
    {
      v17 = 4;
    }

    v12 = [PLCloudPhotoLibraryError createErrorWithType:v17];
    if ((*v3 & 1) == 0)
    {
      v18 = *(*(a1 + 40) + 96);
      if (v18 == 2)
      {
        v19 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v18 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v19 = ;
      }

      v22 = v19;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v12;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    (*(*(a1 + 72) + 16))();
  }
}

void __123__PLCloudPhotoLibraryManager_getStreamingURLForAsset_resourceType_intent_hints_timeRange_clientBundleID_completionHandler___block_invoke_336(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v27 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v16 = *(*(a1 + 32) + 96);
    if (v16 == 2)
    {
      v17 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v16 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v17 = ;
    }

    v18 = v17;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138413058;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Got streaming URL %@/media item maker data %@, expiration %@, error %@", &v19, 0x2Au);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchResourcesForAsset:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager fetchResourcesForAsset:completionHandler:]"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__PLCloudPhotoLibraryManager_fetchResourcesForAsset_completionHandler___block_invoke;
  v11[3] = &unk_1E7576F38;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v8 block:v11];
}

void __71__PLCloudPhotoLibraryManager_fetchResourcesForAsset_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photoLibrary];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__PLCloudPhotoLibraryManager_fetchResourcesForAsset_completionHandler___block_invoke_2;
  v5[3] = &unk_1E7576F38;
  v4 = *(a1 + 32);
  v3 = v4.i64[0];
  v6 = vextq_s8(v4, v4, 8uLL);
  v7 = *(a1 + 48);
  [v2 performBlock:v5];
}

void __71__PLCloudPhotoLibraryManager_fetchResourcesForAsset_completionHandler___block_invoke_2(id *a1)
{
  v2 = [a1[4] cplLibrary];
  if (v2)
  {
    v3 = [a1[5] scopedIdentifier];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71__PLCloudPhotoLibraryManager_fetchResourcesForAsset_completionHandler___block_invoke_3;
    v9[3] = &unk_1E7566BA8;
    v10 = a1[6];
    [v2 getCloudCacheForRecordWithScopedIdentifier:v3 completionHandler:v9];
  }

  else
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v4 = *(a1[4] + 12);
      if (v4 == 2)
      {
        v5 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v4 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v5 = ;
      }

      v6 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 0;
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "CPL Library is not yet enabled", &v8, 2u);
      }
    }

    v7 = a1[6];
    v3 = [PLCloudPhotoLibraryError createErrorWithType:15];
    v7[2](v7, 0, v3);
  }
}

void __71__PLCloudPhotoLibraryManager_fetchResourcesForAsset_completionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = *(a1 + 32);
    if (isKindOfClass)
    {
      v7 = [v8 resources];
      (*(v6 + 16))(v6, v7, 0);
    }

    else
    {
      (*(v6 + 16))(v6, 0, 0);
    }
  }
}

- (void)fetchAdjustmentDataForAsset:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager fetchAdjustmentDataForAsset:completionHandler:]"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__PLCloudPhotoLibraryManager_fetchAdjustmentDataForAsset_completionHandler___block_invoke;
  v11[3] = &unk_1E7576F38;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v8 block:v11];
}

void __76__PLCloudPhotoLibraryManager_fetchAdjustmentDataForAsset_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photoLibrary];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__PLCloudPhotoLibraryManager_fetchAdjustmentDataForAsset_completionHandler___block_invoke_2;
  v5[3] = &unk_1E7576F38;
  v4 = *(a1 + 32);
  v3 = v4.i64[0];
  v6 = vextq_s8(v4, v4, 8uLL);
  v7 = *(a1 + 48);
  [v2 performBlock:v5];
}

void __76__PLCloudPhotoLibraryManager_fetchAdjustmentDataForAsset_completionHandler___block_invoke_2(id *a1)
{
  v2 = [a1[4] cplLibrary];
  if (v2)
  {
    v3 = [a1[5] scopedIdentifier];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __76__PLCloudPhotoLibraryManager_fetchAdjustmentDataForAsset_completionHandler___block_invoke_3;
    v9[3] = &unk_1E7566BA8;
    v10 = a1[6];
    [v2 getCloudCacheForRecordWithScopedIdentifier:v3 completionHandler:v9];
  }

  else
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v4 = *(a1[4] + 12);
      if (v4 == 2)
      {
        v5 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v4 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v5 = ;
      }

      v6 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 0;
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "CPL Library is not yet enabled", &v8, 2u);
      }
    }

    v7 = a1[6];
    v3 = [PLCloudPhotoLibraryError createErrorWithType:15];
    v7[2](v7, 0, v3);
  }
}

void __76__PLCloudPhotoLibraryManager_fetchAdjustmentDataForAsset_completionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (a3)
  {
    v5 = *(*(a1 + 32) + 16);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v7 adjustments];
      (*(*(a1 + 32) + 16))();

      goto LABEL_7;
    }

    v5 = *(*(a1 + 32) + 16);
  }

  v5();
LABEL_7:
}

- (BOOL)isResourceTransferTaskAliveWithTaskWithIdentifier:(id)a3
{
  v3 = [(PLCloudTaskManager *)self->_taskManager getPendingTaskForTaskIdentifier:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)sync
{
  v3 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager sync]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__PLCloudPhotoLibraryManager_sync__block_invoke;
  v4[3] = &unk_1E75781E8;
  v4[4] = self;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v3 block:v4];
}

void __34__PLCloudPhotoLibraryManager_sync__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _canExternallyTransitionToNewLibraryStateIgnoringPause:0])
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v2 = *(*(a1 + 32) + 96);
      if (v2 == 2)
      {
        v3 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v2 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v3 = ;
      }

      v6 = v3;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "Going to pull changes from CPL", &v9, 2u);
      }
    }

    [*(a1 + 32) _transitionToState:5];
  }

  else
  {
    *(*(a1 + 32) + 91) = 1;
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v4 = *(*(a1 + 32) + 96);
      if (v4 == 2)
      {
        v5 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v4 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v5 = ;
      }

      v7 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v8 = [*(a1 + 32) _debugNameForState:*(*(a1 + 32) + 80)];
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "Deferring sync because state is %@", &v9, 0xCu);
      }
    }
  }
}

- (void)saveRulesTrackerToken:(id)a3
{
  v4 = a3;
  v5 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
  v6 = [v5 databaseContext];
  v10 = [v6 newShortLivedLibraryForHistoryPersistenceReadingWithName:"-[PLCloudPhotoLibraryManager saveRulesTrackerToken:]"];

  v7 = [PLGlobalValues alloc];
  v8 = [v10 managedObjectContext];
  v9 = [(PLGlobalValues *)v7 initWithManagedObjectContext:v8];

  [(PLGlobalValues *)v9 setLibraryScopeRulesTrackerLastKnownToken:v4];
}

- (id)readRulesTrackerToken
{
  v2 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
  v3 = [v2 databaseContext];
  v4 = [v3 newShortLivedLibraryForHistoryPersistenceReadingWithName:"-[PLCloudPhotoLibraryManager readRulesTrackerToken]"];

  v5 = [PLGlobalValues alloc];
  v6 = [v4 managedObjectContext];
  v7 = [(PLGlobalValues *)v5 initWithManagedObjectContext:v6];

  v8 = [(PLGlobalValues *)v7 libraryScopeRulesTrackerLastKnownToken];

  return v8;
}

- (void)cloudChangeTrackerDidReceiveChangesWithTransaction:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __81__PLCloudPhotoLibraryManager_cloudChangeTrackerDidReceiveChangesWithTransaction___block_invoke;
  v3[3] = &unk_1E75781E8;
  v3[4] = self;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:a3 block:v3];
}

uint64_t __81__PLCloudPhotoLibraryManager_cloudChangeTrackerDidReceiveChangesWithTransaction___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _canExternallyTransitionToNewLibraryStateIgnoringPause:0];
  if (result)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v3 = *(*(a1 + 32) + 96);
      if (v3 == 2)
      {
        v4 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v3 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v4 = ;
      }

      v5 = v4;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *v6 = 0;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Going to fetch new events from change hub from NOTIFICATION", v6, 2u);
      }
    }

    return [*(a1 + 32) _transitionToState:3];
  }

  else
  {
    *(*(a1 + 32) + 90) = 1;
  }

  return result;
}

- (void)saveCloudTrackerToken:(id)a3 withContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PLGlobalValues alloc] initWithManagedObjectContext:v5];

  [(PLGlobalValues *)v7 setCloudTrackerLastKnownToken:v6];
}

- (id)readCloudTrackerToken
{
  if (self->_wasRebuild)
  {
    v2 = 0;
  }

  else
  {
    v3 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
    v4 = [v3 databaseContext];
    v5 = [v4 newShortLivedLibraryForHistoryPersistenceReadingWithName:"-[PLCloudPhotoLibraryManager readCloudTrackerToken]"];

    v6 = [PLGlobalValues alloc];
    v7 = [v5 managedObjectContext];
    v8 = [(PLGlobalValues *)v6 initWithManagedObjectContext:v7];

    v2 = [(PLGlobalValues *)v8 cloudTrackerLastKnownToken];
  }

  return v2;
}

- (void)_saveLastKnownCloudChangeTrackerTokenToDiskWithContext:(id)a3
{
  v4 = a3;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v6 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v6 = ;
    }

    v7 = v6;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "saveLastKnownCloudChangeTrackerTokenToDisk", v8, 2u);
    }
  }

  [(PLCloudPersistentHistoryChangeTracker *)self->_syncChangeTracker saveLastKnownChangeTrackerTokenToDiskWithContext:v4];
}

- (void)_callPushAllChangesCompletionHandlersIfNecessary
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_pushingAllChanges)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      libraryMode = self->_libraryMode;
      if (libraryMode == 2)
      {
        v4 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (libraryMode == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v4 = ;
      }

      v5 = v4;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Requested to push all changes: complete, calling completion handlers", buf, 2u);
      }
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_pushAllChangesCompletionHandlers;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v8);
    }

    [(NSMutableArray *)self->_pushAllChangesCompletionHandlers removeAllObjects];
    self->_pushingAllChanges = 0;
  }
}

- (void)_setupPLCPLPlistInLibrary:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v6 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v6 = ;
    }

    v7 = v6;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Setting up PLCPLPlist", buf, 2u);
    }
  }

  v8 = MEMORY[0x1E69BF1C0];
  v9 = *MEMORY[0x1E69BF418];
  v10 = [(PLCloudPhotoLibraryManager *)self pathManager];
  v11 = [v8 readCPLPlistObjectWithKey:v9 pathManager:v10];

  self->_wasRebuild = 0;
  v12 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
  v13 = [v12 libraryBundle];
  v14 = [v13 persistentContainer];
  v47 = 0;
  v15 = [v14 sharedPersistentStoreCoordinatorWithError:&v47];
  v16 = v47;

  if (!v15 && (*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v17 = self->_libraryMode;
    if (v17 == 2)
    {
      v18 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v17 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v18 = ;
    }

    v19 = v18;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v49 = v16;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Failed to get shared PSC: %@", buf, 0xCu);
    }
  }

  v20 = [v15 persistentStores];
  v21 = [v20 firstObject];
  v22 = [v21 metadata];
  v23 = [v22 objectForKeyedSubscript:*MEMORY[0x1E695D4B8]];

  if (v11)
  {
    v24 = [v11 isEqualToString:v23];
    self->_wasRebuild = v24 ^ 1;
    if (v24)
    {
      v25 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
      v26 = [v25 libraryBundle];
      v27 = [v26 indicatorFileCoordinator];

      v28 = [v27 isForceSoftResetSync];
      if (v28)
      {
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v29 = self->_libraryMode;
          if (v29 == 2)
          {
            v30 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v29 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v30 = ;
          }

          v39 = v30;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_DEFAULT, "Force soft reset sync filemarker detected, will reset and upload Cloud Photo Library", buf, 2u);
          }
        }

        [MEMORY[0x1E6994B88] registerLikelyResetReason:@"assetsd detected a reset sync marker"];
        [(PLCloudPhotoLibraryManager *)self _doResetSync:1 inLibrary:v4];
      }
    }

    else
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v33 = self->_libraryMode;
        if (v33 == 2)
        {
          v34 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v33 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v34 = ;
        }

        v36 = v34;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_DEFAULT, "Rebuild was detected, will reset and upload Cloud Photo Library", buf, 2u);
        }
      }

      [MEMORY[0x1E6994B88] registerLikelyResetReason:@"assetsd detected a Photo Library rebuild"];
      v37 = [(PLCloudPhotoLibraryManager *)self pathManager];
      v38 = [PLRebuildJournalManager isEnabledWithPathManager:v37 error:0];

      if (v38)
      {
        v28 = 1;
        [(PLCloudPhotoLibraryManager *)self _doResetSync:1 inLibrary:v4];
      }

      else
      {
        [(PLCloudPhotoLibraryManager *)self _doResetSync:2 inLibrary:v4];
        v28 = 1;
      }
    }
  }

  else
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v31 = self->_libraryMode;
      if (v31 == 2)
      {
        v32 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v31 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v32 = ;
      }

      v35 = v32;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEFAULT, "Force soft reset sync due to missing previous store UUID", buf, 2u);
      }
    }

    [MEMORY[0x1E6994B88] registerLikelyResetReason:@"missing previous store UUID"];
    v28 = 1;
    [(PLCloudPhotoLibraryManager *)self _doResetSync:1 inLibrary:v4];
  }

  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v41 = [WeakRetained cplSettings];

  if (v28 && [v41 runOnceFlagIsSet:4])
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v42 = self->_libraryMode;
      if (v42 == 2)
      {
        v43 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v42 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v43 = ;
      }

      v44 = v43;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_DEFAULT, "Clearing shouldMarkPurgeableResourcesOnce due to reset sync", buf, 2u);
      }
    }

    [v41 setRunOnceFlag:4 error:0];
  }

  if (([v23 isEqualToString:v11] & 1) == 0)
  {
    v45 = MEMORY[0x1E69BF1C0];
    v46 = [(PLCloudPhotoLibraryManager *)self pathManager];
    [v45 saveCPLPlistObject:v23 forKey:v9 pathManager:v46];
  }
}

- (void)_checkEnableState
{
  v37 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_isolationQueue);
  v3 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v5 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v5 = ;
    }

    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v35) = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Checking enable state, clearing cached primaryAppleAccount", &v35, 2u);
    }
  }

  v7 = +[PLAccountStore pl_sharedAccountStore];
  [v7 clearCachedProperties];

  v8 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
  v9 = [v8 libraryBundle];
  v10 = [v9 indicatorFileCoordinator];

  if ([v10 isDisableICloudPhotos])
  {
    if ((*v3 & 1) == 0)
    {
      v11 = self->_libraryMode;
      if (v11 == 2)
      {
        v12 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v11 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v12 = ;
      }

      v17 = v12;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v35) = 0;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "CloudPhotos was switched OFF, will reset and stop Cloud Photo Library", &v35, 2u);
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
    v19 = [WeakRetained cplSettings];
    [v19 setICPLEnabled:0 error:0];

    v20 = self;
    v21 = 2;
LABEL_52:
    [(PLCloudPhotoLibraryManager *)v20 _disableiCPLWillBecomeNonSyncablePhotoLibrary:0 resetMode:v21];
    goto LABEL_53;
  }

  if (self->_pendingDeviceLibraryConfiguration != self->_deviceLibraryConfiguration)
  {
    if ((*v3 & 1) == 0)
    {
      v15 = self->_libraryMode;
      if (v15 == 2)
      {
        v16 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v15 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v16 = ;
      }

      v24 = v16;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        deviceLibraryConfiguration = self->_deviceLibraryConfiguration;
        if (deviceLibraryConfiguration > 2)
        {
          v26 = @"unknown";
        }

        else
        {
          v26 = off_1E756E888[deviceLibraryConfiguration];
        }

        v27 = v26;
        v35 = 138412290;
        v36 = v27;
        _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "Handle device-library configuration change on check enable to %@", &v35, 0xCu);
      }
    }

    v20 = self;
    v21 = 3;
    goto LABEL_52;
  }

  if (-[PLCloudPhotoLibraryManager isCloudPhotoLibraryEnabled](self, "isCloudPhotoLibraryEnabled") || [v10 isEnableICloudPhotos])
  {
    if ([v10 isEnableICloudPhotos])
    {
      if ((*v3 & 1) == 0)
      {
        v13 = self->_libraryMode;
        if (v13 == 2)
        {
          v14 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v13 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v14 = ;
        }

        v28 = v14;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v35) = 0;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "CloudPhotos was switched ON, enabling iCPL after opening CPL", &v35, 2u);
        }
      }

      v29 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
      v30 = [v29 databaseContext];
      v31 = [v30 newShortLivedLibraryForHistoryPersistenceReadingWithName:"CPL library: Global Values"];

      v32 = [v31 globalValues];
      [v32 setLastInitialDuplicateDetectorProcessingCompletedDate:0];

      v33 = objc_loadWeakRetained(&self->_libraryServicesManager);
      v34 = [v33 cplSettings];
      [v34 setICPLEnabled:1 error:0];
    }

    else
    {
      if (*v3)
      {
LABEL_65:
        [(PLCloudPhotoLibraryManager *)self _enableiCPL];
        goto LABEL_53;
      }

      v22 = self->_libraryMode;
      if (v22 == 2)
      {
        v23 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v22 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v23 = ;
      }

      v31 = v23;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v35) = 0;
        _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEFAULT, "Enabling iCPL after opening CPL", &v35, 2u);
      }
    }

    goto LABEL_65;
  }

  [(PLCloudPhotoLibraryManager *)self _transitionToState:6];
LABEL_53:
}

- (void)_disableaCPLAfterZoneWipedInCloudIfNecessaryWithStatus:(id)a3 transaction:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __97__PLCloudPhotoLibraryManager__disableaCPLAfterZoneWipedInCloudIfNecessaryWithStatus_transaction___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v6;
  v10 = self;
  v7 = v6;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:a4 block:v8];
}

void __97__PLCloudPhotoLibraryManager__disableaCPLAfterZoneWipedInCloudIfNecessaryWithStatus_transaction___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) iCloudLibraryHasBeenWiped])
  {
    v2 = *(a1 + 40);
    if (*(v2 + 96) == 2)
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v3 = __CPLAppLibraryOSLogDomain();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 464));
          v5 = [WeakRetained mainScopeIdentifier];
          *buf = 138543362;
          v16 = v5;
          _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Disabling sync, because zone has been wiped for library with main scope identifier: %{public}@", buf, 0xCu);
        }

        v2 = *(a1 + 40);
      }

      v6 = objc_loadWeakRetained((v2 + 464));
      v7 = [v6 libraryURL];
      v8 = [PLPhotoLibraryIdentifier photoLibraryIdentifierWithPhotoLibraryURL:v7 createIfMissing:1 error:0];

      if ([v8 isImagePlaygroundDefaultLibraryIdentifier])
      {
        v9 = +[PLAccountStore pl_sharedAccountStore];
        v10 = [v9 cachedPrimaryAppleAccount];

        v11 = *MEMORY[0x1E6959680];
        if ([v10 isEnabledForDataclass:*MEMORY[0x1E6959680]])
        {
          [v10 setEnabled:0 forDataclass:v11];
          v12 = +[PLAccountStore pl_sharedAccountStore];
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __97__PLCloudPhotoLibraryManager__disableaCPLAfterZoneWipedInCloudIfNecessaryWithStatus_transaction___block_invoke_321;
          v14[3] = &unk_1E7572C50;
          v14[4] = *(a1 + 40);
          [v12 saveAccount:v10 withDataclassActions:0 doVerify:0 completion:v14];
        }
      }

      else
      {
        v13 = [*(a1 + 40) libraryServicesManager];
        [v13 setICloudPhotosEnabledInternal:0];

        [*(a1 + 40) _disableiCPLWillBecomeNonSyncablePhotoLibrary:0 resetMode:2];
      }
    }
  }
}

void __97__PLCloudPhotoLibraryManager__disableaCPLAfterZoneWipedInCloudIfNecessaryWithStatus_transaction___block_invoke_321(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v6 = *(*(a1 + 32) + 96);
      if (v6 == 2)
      {
        v7 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v6 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v7 = ;
      }

      v10 = v7;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 464));
      v12 = [WeakRetained mainScopeIdentifier];
      v17 = 138543362;
      v18 = v12;
      v13 = "Disabled sync, because zone has been wiped for library with main scope identifier: %{public}@";
      v14 = v10;
      v15 = OS_LOG_TYPE_DEFAULT;
      v16 = 12;
LABEL_20:
      _os_log_impl(&dword_19BF1F000, v14, v15, v13, &v17, v16);

LABEL_21:
    }
  }

  else if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v8 = *(*(a1 + 32) + 96);
    if (v8 == 2)
    {
      v9 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v8 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v9 = ;
    }

    v10 = v9;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 464));
    v12 = [WeakRetained mainScopeIdentifier];
    v17 = 138543618;
    v18 = v12;
    v19 = 2112;
    v20 = v5;
    v13 = "Failed to disabled sync, because zone has been wiped for library with main scope identifier: %{public}@, error: %@";
    v14 = v10;
    v15 = OS_LOG_TYPE_ERROR;
    v16 = 22;
    goto LABEL_20;
  }
}

- (BOOL)isCloudPhotoLibraryEnabled
{
  v3 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isCloudPhotoLibraryEnabled];
  }

  else
  {
    v6 = [(PLCloudPhotoLibraryManager *)self pathManager];
    v7 = [v6 libraryURL];
    v5 = PLIsCloudPhotoLibraryEnabledForPhotoLibraryURL(v7);
  }

  return v5;
}

- (void)_checkIfSharedLibraryDedupeIsDisabled
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PLCloudPhotoLibraryManager__checkIfSharedLibraryDedupeIsDisabled__block_invoke;
  block[3] = &unk_1E75781E8;
  block[4] = self;
  if (_checkIfSharedLibraryDedupeIsDisabled_onceToken != -1)
  {
    dispatch_once(&_checkIfSharedLibraryDedupeIsDisabled_onceToken, block);
  }
}

void __67__PLCloudPhotoLibraryManager__checkIfSharedLibraryDedupeIsDisabled__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryServicesManager];
  v3 = [v2 databaseContext];
  v4 = [v3 newShortLivedLibraryForHistoryPersistenceReadingWithName:"-[PLCloudPhotoLibraryManager _checkIfSharedLibraryDedupeIsDisabled]_block_invoke"];

  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__PLCloudPhotoLibraryManager__checkIfSharedLibraryDedupeIsDisabled__block_invoke_2;
    v7[3] = &unk_1E7578848;
    v5 = v4;
    v6 = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    [v5 performBlockAndWait:v7];
  }
}

void __67__PLCloudPhotoLibraryManager__checkIfSharedLibraryDedupeIsDisabled__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) cplConfiguration];
  [PLDuplicateProcessor updateSharedLibraryIsEnabledFeatureVersionIfNeededWithPhotoLibrary:v1 cplConfiguration:v2];
}

- (void)_processNextTransaction
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v3 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager _processNextTransaction]"];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__PLCloudPhotoLibraryManager__processNextTransaction__block_invoke;
  v5[3] = &unk_1E7578848;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v4 block:v5];
}

void __53__PLCloudPhotoLibraryManager__processNextTransaction__block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 92) = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  if (v3 > 4)
  {
    if (v3 > 6)
    {
      switch(v3)
      {
        case 7:
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v13 = *(v2 + 96);
            if (v13 == 2)
            {
              v14 = __CPLAppLibraryOSLogDomain();
            }

            else
            {
              if (v13 == 1)
              {
                __CPLSyndicationOSLogDomain();
              }

              else
              {
                __CPLSystemLibraryOSLogDomain();
              }
              v14 = ;
            }

            v34 = v14;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_DEFAULT, "Doing soft reset sync", buf, 2u);
            }

            v2 = *(a1 + 32);
          }

          v35 = [v2 libraryServicesManager];
          v36 = [v35 databaseContext];
          v37 = [v36 newShortLivedCplLibraryWithNameSuffix:"_processNextTransaction.ForceResetSync"];

          [*(a1 + 32) _doResetSync:1 inLibrary:v37];
          [*(a1 + 32) _transitionToState:3];

          break;
        case 8:
          v20 = *(v2 + 128);
          if (v20)
          {
            if (v20 == 2)
            {
              *(v2 + 128) = 0;
              if ((*MEMORY[0x1E6994D48] & 1) == 0)
              {
                v21 = *(*(a1 + 32) + 96);
                if (v21 == 2)
                {
                  v22 = __CPLAppLibraryOSLogDomain();
                }

                else
                {
                  if (v21 == 1)
                  {
                    __CPLSyndicationOSLogDomain();
                  }

                  else
                  {
                    __CPLSystemLibraryOSLogDomain();
                  }
                  v22 = ;
                }

                v40 = v22;
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
                {
                  v41 = *(*(a1 + 32) + 132);
                  *buf = 67109120;
                  LODWORD(v57) = v41;
                  _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_DEBUG, "Unpause (%d) request detected, will now unpause", buf, 8u);
                }
              }

              [*(a1 + 32) _doUnpause];
            }

            else
            {
              *(v2 + 128) = 0;
            }
          }

          break;
        case 9:
          goto LABEL_16;
        default:
          return;
      }

      return;
    }

    if (v3 == 5)
    {
      v11 = [v2 libraryServicesManager];
      v12 = [v11 databaseContext];
      v52 = [v12 newShortLivedCplLibraryWithNameSuffix:"_processNextTransaction.DownloadingBatch"];

      [*(a1 + 32) _downloadFromCloudInLibrary:v52];
      goto LABEL_28;
    }

    v8 = MEMORY[0x1E6994D48];
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v9 = *(v2 + 96);
      if (v9 == 2)
      {
        v10 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v9 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v10 = ;
      }

      v24 = v10;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "Cloud photo manager now idle", buf, 2u);
      }
    }

    +[PLFileDescriptorFuse checkFileDescriptorFuse];
    v25 = *(a1 + 32);
    if (*(v25 + 128) == 1)
    {
      if (*(v25 + 304) != 1 || *(v25 + 90) != 1)
      {
        [v25 _callPushAllChangesCompletionHandlersIfNecessary];
        if ((*v8 & 1) == 0)
        {
          v30 = *(*(a1 + 32) + 96);
          if (v30 == 2)
          {
            v31 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v30 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v31 = ;
          }

          v38 = v31;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v39 = *(*(a1 + 32) + 132);
            *buf = 67109120;
            LODWORD(v57) = v39;
            _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_DEBUG, "Pause (%d) request detected, will now pause", buf, 8u);
          }
        }

        *(*(a1 + 32) + 128) = 0;
        [*(a1 + 32) _doPause];
        goto LABEL_116;
      }

      if ((*v8 & 1) == 0)
      {
        v26 = *(v25 + 96);
        if (v26 == 2)
        {
          v27 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v26 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v27 = ;
        }

        v46 = v27;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v47 = *(*(a1 + 32) + 132);
          *buf = 67109120;
          LODWORD(v57) = v47;
          _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_DEBUG, "Pause (%d) request detected, but pushing all changes, will pause when push is complete", buf, 8u);
        }

        v25 = *(a1 + 32);
      }

      *(v25 + 90) = 0;
    }

    else
    {
      if (*(v25 + 88) == 1)
      {
        *(v25 + 88) = 0;
        if ((*v8 & 1) == 0)
        {
          v28 = *(*(a1 + 32) + 96);
          if (v28 == 2)
          {
            v29 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v28 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v29 = ;
          }

          v44 = v29;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_DEFAULT, "Checking enable state at idle", buf, 2u);
          }
        }

        [*(a1 + 32) _checkEnableState];
        goto LABEL_116;
      }

      v32 = [*(v25 + 8) initialUpload];
      v33 = *(a1 + 32);
      if ((v32 & 1) == 0 && v33[90] != 1)
      {
        if (v33[91] != 1)
        {
          v33[93] = 1;
          PFSharedFigDecodeSessionDiscardCachedBuffers();
          [*(*(a1 + 32) + 192) update];
          [*(a1 + 32) _processRulesEvaluationIfNeeded];
          [*(a1 + 32) _updatePendingResetSyncDate];
          [*(a1 + 32) _callPushAllChangesCompletionHandlersIfNecessary];
          v45 = *(a1 + 32);
          if (v45[53])
          {
            [v45 _unshareBatchOfPendingAssetsSharedToScopeWithTransaction:*(a1 + 40)];
            v45 = *(a1 + 32);
          }

          [v45 _checkIfSharedLibraryDedupeIsDisabled];
          goto LABEL_116;
        }

        v33[91] = 0;
        v42 = *(a1 + 32);
        v43 = 5;
        goto LABEL_115;
      }

      v33[90] = 0;
    }

    v42 = *(a1 + 32);
    v43 = 3;
LABEL_115:
    [v42 _transitionToState:v43];
LABEL_116:
    if (!PLIsEDUMode())
    {
      return;
    }

    v48 = *(a1 + 32);
    if (v48[12])
    {
      return;
    }

    v17 = [v48 _idleStateTransitionOneTimeAction];
    if (v17)
    {
      if ([*(a1 + 32) _hasIncomingWorkFileMarker])
      {
        [*(a1 + 32) _startWorkInProgressTimer];
      }

      else
      {
        if ((*v8 & 1) == 0)
        {
          v49 = *(*(a1 + 32) + 96);
          if (v49 == 2)
          {
            v50 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v49 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v50 = ;
          }

          v51 = v50;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v51, OS_LOG_TYPE_DEFAULT, "Will run idleStateTransitionOneTimeAction", buf, 2u);
          }
        }

        [*(a1 + 32) _setIdleStateTransitionOneTimeAction:0];
        (*(v17 + 16))(v17);
      }
    }

    goto LABEL_49;
  }

  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v3 != 3)
      {
        v4 = [v2 libraryServicesManager];
        v5 = [v4 databaseContext];
        v52 = [v5 newShortLivedCplLibraryWithNameSuffix:"_processNextTransaction.UploadingBatch"];

        [*(a1 + 32) _processUploadBatchInLibrary:v52];
LABEL_28:

        return;
      }

      v15 = [v2 libraryServicesManager];
      v16 = [v15 databaseContext];
      v17 = [v16 newShortLivedLibraryWithName:"CPL library: _processNextTransaction.FetchNewEventsFromChangeHub"];

      if (v17)
      {
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __53__PLCloudPhotoLibraryManager__processNextTransaction__block_invoke_2;
        v53[3] = &unk_1E7578848;
        v18 = v17;
        v19 = *(a1 + 32);
        v54 = v18;
        v55 = v19;
        [v18 performBlockAndWait:v53];
      }

LABEL_49:

      return;
    }

LABEL_16:
    if (*MEMORY[0x1E6994D48])
    {
      return;
    }

    v6 = *(v2 + 96);
    if (v6 == 2)
    {
      v7 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v6 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v7 = ;
    }

    v17 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v23 = [*(a1 + 32) _debugNameForState:*(*(a1 + 32) + 80)];
      *buf = 138412290;
      v57 = v23;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Unsupported state for processing: %@", buf, 0xCu);
    }

    goto LABEL_49;
  }

  if (!v3)
  {
    goto LABEL_16;
  }

  if (v3 == 1)
  {

    [v2 _openCPLLibrary];
  }
}

uint64_t __53__PLCloudPhotoLibraryManager__processNextTransaction__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  [v2 setChangeSource:1];

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 _fetchNewEventsFromCloudChangeTrackerInLibrary:v4];
}

- (void)_checkAndMarkPurgeableResources:(id)a3 checkIfSafe:(BOOL)a4 checkServerIfNecessary:(BOOL)a5 urgency:(int64_t)a6 completionHandler:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a7;
  v14 = [(PLCloudPhotoLibraryManager *)self cplLibrary];
  if (a4 || ![v12 count])
  {
    if (v14 && [v12 count])
    {
      v17 = [v12 anyObject];
      v18 = [v17 photoLibrary];

      v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v12, "count")}];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __123__PLCloudPhotoLibraryManager__checkAndMarkPurgeableResources_checkIfSafe_checkServerIfNecessary_urgency_completionHandler___block_invoke_3;
      v29[3] = &unk_1E756B120;
      v20 = v19;
      v30 = v20;
      [v12 enumerateObjectsUsingBlock:v29];
      v21 = [v20 allKeys];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __123__PLCloudPhotoLibraryManager__checkAndMarkPurgeableResources_checkIfSafe_checkServerIfNecessary_urgency_completionHandler___block_invoke_309;
      v24[3] = &unk_1E7566B80;
      v24[4] = self;
      v25 = v18;
      v26 = v20;
      v27 = v13;
      v28 = a6;
      v22 = v20;
      v23 = v18;
      [v14 checkResourcesAreSafeToPrune:v21 checkServerIfNecessary:v9 completionHandler:v24];
    }

    else
    {
      v13[2](v13);
    }
  }

  else
  {
    v15 = [v12 anyObject];
    v16 = [v15 photoLibrary];

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __123__PLCloudPhotoLibraryManager__checkAndMarkPurgeableResources_checkIfSafe_checkServerIfNecessary_urgency_completionHandler___block_invoke;
    v31[3] = &unk_1E75782F8;
    v32 = v12;
    v33 = self;
    v34 = a6;
    [v16 performTransactionAndWait:v31];
    v13[2](v13);
  }
}

uint64_t __123__PLCloudPhotoLibraryManager__checkAndMarkPurgeableResources_checkIfSafe_checkServerIfNecessary_urgency_completionHandler___block_invoke(void *a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __123__PLCloudPhotoLibraryManager__checkAndMarkPurgeableResources_checkIfSafe_checkServerIfNecessary_urgency_completionHandler___block_invoke_2;
  v4[3] = &unk_1E7566B08;
  v1 = a1[4];
  v2 = a1[6];
  v4[4] = a1[5];
  v4[5] = v2;
  return [v1 enumerateObjectsUsingBlock:v4];
}

void __123__PLCloudPhotoLibraryManager__checkAndMarkPurgeableResources_checkIfSafe_checkServerIfNecessary_urgency_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 cplResourceIncludeFile:1 createDirectoryIfNeeded:0];
  if (v4)
  {
    [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
  }

  else
  {
    v5 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Failed to get CPLResource for %@", &v6, 0xCu);
    }
  }
}

void __123__PLCloudPhotoLibraryManager__checkAndMarkPurgeableResources_checkIfSafe_checkServerIfNecessary_urgency_completionHandler___block_invoke_309(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __123__PLCloudPhotoLibraryManager__checkAndMarkPurgeableResources_checkIfSafe_checkServerIfNecessary_urgency_completionHandler___block_invoke_2_310;
  v12[3] = &unk_1E7566B58;
  v12[4] = v7;
  v17 = *(a1 + 56);
  v13 = *(a1 + 40);
  v14 = v5;
  v15 = v6;
  v8 = *(a1 + 48);
  v9 = *(a1 + 64);
  v16 = v8;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  [v7 _runAsyncOnIsolationQueueWithTransaction:0 block:v12];
}

void __123__PLCloudPhotoLibraryManager__checkAndMarkPurgeableResources_checkIfSafe_checkServerIfNecessary_urgency_completionHandler___block_invoke_2_310(uint64_t a1)
{
  if (*(*(a1 + 32) + 89))
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __123__PLCloudPhotoLibraryManager__checkAndMarkPurgeableResources_checkIfSafe_checkServerIfNecessary_urgency_completionHandler___block_invoke_3_311;
    v6[3] = &unk_1E7573520;
    v2 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v3 = *(a1 + 64);
    v4 = *(a1 + 32);
    v9 = v3;
    v10 = v4;
    v11 = *(a1 + 80);
    [v2 performTransactionAndWait:v6];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v5 = *(*(a1 + 72) + 16);

    v5();
  }
}

void __123__PLCloudPhotoLibraryManager__checkAndMarkPurgeableResources_checkIfSafe_checkServerIfNecessary_urgency_completionHandler___block_invoke_3_311(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    *buf = 134217984;
    v15 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "%lu resources safe to purge", buf, 0xCu);
  }

  v4 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Unsafe resources to purge: %@", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __123__PLCloudPhotoLibraryManager__checkAndMarkPurgeableResources_checkIfSafe_checkServerIfNecessary_urgency_completionHandler___block_invoke_312;
  v10[3] = &unk_1E7566B30;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v11 = v7;
  v12 = v8;
  v13 = v9;
  [v6 enumerateObjectsUsingBlock:v10];
}

void __123__PLCloudPhotoLibraryManager__checkAndMarkPurgeableResources_checkIfSafe_checkServerIfNecessary_urgency_completionHandler___block_invoke_312(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v3)
  {
    v5 = v3;
    v4 = [*(a1 + 40) cacheDeleteSupport];
    [v4 markResourceAsPurgeable:v5 withUrgency:*(a1 + 48)];

    v3 = v5;
  }
}

void __123__PLCloudPhotoLibraryManager__checkAndMarkPurgeableResources_checkIfSafe_checkServerIfNecessary_urgency_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 cacheDeleteSupport];
    [v5 markResourceAsPurgeable:v4 withUrgency:*(a1 + 40)];
  }
}

- (void)_markPurgeableNextBatchOfResources:(id)a3 urgency:(int64_t)a4 checkIfSafe:(BOOL)a5 inLibrary:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __113__PLCloudPhotoLibraryManager__markPurgeableNextBatchOfResources_urgency_checkIfSafe_inLibrary_completionHandler___block_invoke;
  v18[3] = &unk_1E7568670;
  v19 = v12;
  v20 = self;
  v24 = a5;
  v22 = v14;
  v23 = a4;
  v21 = v13;
  v15 = v13;
  v16 = v14;
  v17 = v12;
  [v15 performBlockAndWait:v18];
}

void __113__PLCloudPhotoLibraryManager__markPurgeableNextBatchOfResources_urgency_checkIfSafe_inLibrary_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = 100;
  do
  {
    v4 = [*(a1 + 32) nextObject];
    if (!v4)
    {
      break;
    }

    v5 = v4;
    [v2 addObject:v4];

    --v3;
  }

  while (v3);
  if ([v2 count])
  {
    v6 = *(a1 + 72);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __113__PLCloudPhotoLibraryManager__markPurgeableNextBatchOfResources_urgency_checkIfSafe_inLibrary_completionHandler___block_invoke_2;
    v13[3] = &unk_1E7568670;
    v7 = *(a1 + 40);
    v8 = *(a1 + 64);
    v9 = *(a1 + 56);
    v10 = *(a1 + 32);
    v16 = *(a1 + 64);
    v17 = *(a1 + 72);
    *&v11 = *(a1 + 48);
    *(&v11 + 1) = v9;
    *&v12 = v7;
    *(&v12 + 1) = v10;
    v14 = v12;
    v15 = v11;
    [v7 _checkAndMarkPurgeableResources:v2 checkIfSafe:v6 checkServerIfNecessary:1 urgency:v8 completionHandler:v13];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

uint64_t __113__PLCloudPhotoLibraryManager__markPurgeableNextBatchOfResources_urgency_checkIfSafe_inLibrary_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(*(a1 + 32) + 89))
  {
    return [*(a1 + 32) _markPurgeableNextBatchOfResources:*(a1 + 40) urgency:*(a1 + 64) checkIfSafe:*(a1 + 72) inLibrary:*(a1 + 48) completionHandler:*(a1 + 56)];
  }

  else
  {
    return (*(*(a1 + 56) + 16))();
  }
}

- (void)markPurgeableResourcesMatchingPredicate:(id)a3 urgency:(int64_t)a4 checkIfSafe:(BOOL)a5 inLibrary:(id)a6 completionHandler:(id)a7
{
  v9 = a5;
  v43 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager markPurgeableResourcesMatchingPredicate:urgency:checkIfSafe:inLibrary:completionHandler:]"];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__11895;
  v39 = __Block_byref_object_dispose__11896;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__11895;
  v33 = __Block_byref_object_dispose__11896;
  v34 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __118__PLCloudPhotoLibraryManager_markPurgeableResourcesMatchingPredicate_urgency_checkIfSafe_inLibrary_completionHandler___block_invoke;
  v24[3] = &unk_1E7578898;
  v16 = v12;
  v25 = v16;
  v17 = v13;
  v26 = v17;
  v27 = &v29;
  v28 = &v35;
  [v17 performBlockAndWait:v24];
  v18 = v36[5];
  if (v18)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __118__PLCloudPhotoLibraryManager_markPurgeableResourcesMatchingPredicate_urgency_checkIfSafe_inLibrary_completionHandler___block_invoke_305;
    v21[3] = &unk_1E7577C08;
    v23 = v14;
    v22 = v15;
    [(PLCloudPhotoLibraryManager *)self _markPurgeableNextBatchOfResources:v18 urgency:a4 checkIfSafe:v9 inLibrary:v17 completionHandler:v21];
  }

  else
  {
    v19 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = v30[5];
      *buf = 138412290;
      v42 = v20;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Failed to fetch available resources to mark purgeable: %@", buf, 0xCu);
    }

    if (v14)
    {
      v14[2](v14);
    }
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);
}

void __118__PLCloudPhotoLibraryManager_markPurgeableResourcesMatchingPredicate_urgency_checkIfSafe_inLibrary_completionHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLInternalResource entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  [v4 setPredicate:*(a1 + 32)];
  [v4 setFetchBatchSize:100];
  v5 = [*(a1 + 40) managedObjectContext];
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  v7 = [v5 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);

  if (v7)
  {
    v8 = [v7 objectEnumerator];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

uint64_t __118__PLCloudPhotoLibraryManager_markPurgeableResourcesMatchingPredicate_urgency_checkIfSafe_inLibrary_completionHandler___block_invoke_305(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 stillAlive];
}

- (void)clearPurgeableResourcesMatchingPredicate:(id)a3 inLibrary:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PLCloudPhotoLibraryManager *)self pathManager];
  v12 = [v11 capabilities];
  v13 = [v12 isCentralizedCacheDeleteCapable];

  if (v13)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __99__PLCloudPhotoLibraryManager_clearPurgeableResourcesMatchingPredicate_inLibrary_completionHandler___block_invoke;
    v16[3] = &unk_1E7578848;
    v17 = v8;
    v18 = v9;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __99__PLCloudPhotoLibraryManager_clearPurgeableResourcesMatchingPredicate_inLibrary_completionHandler___block_invoke_304;
    v14[3] = &unk_1E7576AA0;
    v15 = v10;
    [v18 performTransaction:v16 completionHandler:v14];
  }

  else if (v10)
  {
    v10[2](v10);
  }
}

void __99__PLCloudPhotoLibraryManager_clearPurgeableResourcesMatchingPredicate_inLibrary_completionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLInternalResource entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  [v4 setPredicate:*(a1 + 32)];
  v5 = [*(a1 + 40) managedObjectContext];
  v16 = 0;
  v6 = [v5 executeFetchRequest:v4 error:&v16];
  v7 = v16;
  if (v6)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v20 = 0x2020000000;
    v21 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __99__PLCloudPhotoLibraryManager_clearPurgeableResourcesMatchingPredicate_inLibrary_completionHandler___block_invoke_2;
    v15[3] = &unk_1E75741F0;
    v15[4] = &buf;
    v8 = [v5 enumerateWithIncrementalSaveUsingObjects:v6 withBlock:v15];

    if (v8)
    {
      v9 = PLResourceCachingGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v17 = 138412290;
        v18 = v8;
        v10 = "Failed to enumerate resources to clear purgeable flag: %@";
        v11 = v9;
        v12 = OS_LOG_TYPE_ERROR;
LABEL_10:
        _os_log_impl(&dword_19BF1F000, v11, v12, v10, v17, 0xCu);
      }
    }

    else
    {
      v9 = PLResourceCachingGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(*(&buf + 1) + 24);
        *v17 = 134217984;
        v18 = v14;
        v10 = "Cleared purgeable flags for %ld original resources";
        v11 = v9;
        v12 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_10;
      }
    }

    _Block_object_dispose(&buf, 8);
    goto LABEL_12;
  }

  v13 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to fetch resources to clear purgeable flag: %@", &buf, 0xCu);
  }

  v8 = v7;
LABEL_12:
}

uint64_t __99__PLCloudPhotoLibraryManager_clearPurgeableResourcesMatchingPredicate_inLibrary_completionHandler___block_invoke_304(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

BOOL __99__PLCloudPhotoLibraryManager_clearPurgeableResourcesMatchingPredicate_inLibrary_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [PLCacheDeleteSupport clearPurgeableFlagForResource:a2];
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

- (void)_reconcileNextCollectionShare:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 nextObject];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 photoLibrary];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __78__PLCloudPhotoLibraryManager__reconcileNextCollectionShare_completionHandler___block_invoke;
    v12[3] = &unk_1E7573C00;
    v13 = v10;
    v14 = self;
    v15 = v6;
    v16 = v7;
    v11 = v10;
    [v9 reconcileModelRelationshipsWithCompletionHandler:v12];
  }

  else
  {
    v7[2](v7);
  }
}

void __78__PLCloudPhotoLibraryManager__reconcileNextCollectionShare_completionHandler___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __78__PLCloudPhotoLibraryManager__reconcileNextCollectionShare_completionHandler___block_invoke_2;
  v4[3] = &unk_1E7576F38;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  v5 = v3;
  v6 = *(a1 + 56);
  [v2 performBlock:v4];
}

- (void)_reconcileSharedStreamCollectionShareParticipantsWithCPLSettings:(id)a3
{
  v4 = a3;
  v5 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
  v6 = [v5 databaseContext];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __95__PLCloudPhotoLibraryManager__reconcileSharedStreamCollectionShareParticipantsWithCPLSettings___block_invoke;
  v8[3] = &unk_1E756C1E8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 perform:v8 withName:"-[PLCloudPhotoLibraryManager _reconcileSharedStreamCollectionShareParticipantsWithCPLSettings:]"];
}

void __95__PLCloudPhotoLibraryManager__reconcileSharedStreamCollectionShareParticipantsWithCPLSettings___block_invoke(uint64_t a1, void *a2)
{
  v34[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  v4 = MEMORY[0x1E696AE18];
  v5 = a2;
  v6 = [v4 predicateWithFormat:@"%K == %d", @"collectionShareKind", 2];
  v34[0] = v6;
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(participants, $p, $p.isCurrentUser == YES).@count == 0"];
  v34[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v26 = [v3 andPredicateWithSubpredicates:v8];

  v9 = [v5 managedObjectContext];
  v10 = [(PLShare *)PLCollectionShare sharesWithPredicate:v26 fetchLimit:0 inManagedObjectContext:v9];

  v11 = MEMORY[0x1E696AB28];
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"collectionShareKind", 2];
  v33[0] = v12;
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(participants, $p, $p.isCurrentUser == YES).@count > 0"];
  v33[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v15 = [v11 andPredicateWithSubpredicates:v14];

  v16 = [v5 managedObjectContext];

  v17 = [(PLShare *)PLCollectionShare sharesWithPredicate:v15 fetchLimit:0 inManagedObjectContext:v16];

  v18 = [v10 objectEnumerator];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __95__PLCloudPhotoLibraryManager__reconcileSharedStreamCollectionShareParticipantsWithCPLSettings___block_invoke_2;
  v29[3] = &unk_1E75761B8;
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  v21 = *(a1 + 32);
  v30 = v20;
  v31 = v21;
  v32 = v10;
  v22 = v10;
  [v19 _reconcileNextCollectionShare:v18 completionHandler:v29];
  v23 = [v17 objectEnumerator];
  v24 = *(a1 + 32);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __95__PLCloudPhotoLibraryManager__reconcileSharedStreamCollectionShareParticipantsWithCPLSettings___block_invoke_302;
  v27[3] = &unk_1E7578848;
  v27[4] = v24;
  v28 = v17;
  v25 = v17;
  [v24 _reconcileNextCollectionShare:v23 completionHandler:v27];
}

void __95__PLCloudPhotoLibraryManager__reconcileSharedStreamCollectionShareParticipantsWithCPLSettings___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) clearRunOnceFlag:256 error:0];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v2 = *(*(a1 + 40) + 96);
    if (v2 == 2)
    {
      v3 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v2 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v3 = ;
    }

    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 48) count];
      v6 = 134217984;
      v7 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Fixed %lu collection shares missing the current user", &v6, 0xCu);
    }
  }
}

void __95__PLCloudPhotoLibraryManager__reconcileSharedStreamCollectionShareParticipantsWithCPLSettings___block_invoke_302(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v2 = *(*(a1 + 32) + 96);
    if (v2 == 2)
    {
      v3 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v2 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v3 = ;
    }

    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 40) count];
      v6 = 134217984;
      v7 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Fixed %lu other collection shares", &v6, 0xCu);
    }
  }
}

- (void)_repushAssetsWithImportedByBundleIdentifier
{
  v3 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
  v4 = [v3 databaseContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__PLCloudPhotoLibraryManager__repushAssetsWithImportedByBundleIdentifier__block_invoke;
  v5[3] = &unk_1E75685D0;
  v5[4] = self;
  [v4 performTransactionSync:v5 withName:"-[PLCloudPhotoLibraryManager _repushAssetsWithImportedByBundleIdentifier]"];
}

void __73__PLCloudPhotoLibraryManager__repushAssetsWithImportedByBundleIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v28 = a2;
  v3 = [v28 managedObjectContext];
  v4 = MEMORY[0x1E695D5E0];
  v5 = +[PLManagedAsset entityName];
  v6 = [v4 fetchRequestWithEntityName:v5];

  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"additionalAttributes.importedByBundleIdentifier"];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"cloudLocalState == %d OR cloudLocalState == %d", 1, 3];
  v9 = +[PLManagedAsset predicateForSupportedAssetTypesForUpload];
  v10 = [MEMORY[0x1E695DF70] array];
  [v10 addObject:v8];
  [v10 addObject:v9];
  [v10 addObject:v7];
  v11 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v10];
  [v6 setPredicate:v11];

  [v6 setFetchBatchSize:100];
  v30 = 0;
  v12 = [v3 executeFetchRequest:v6 error:&v30];
  v13 = v30;
  if (v12)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v34 = 0;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __73__PLCloudPhotoLibraryManager__repushAssetsWithImportedByBundleIdentifier__block_invoke_2;
    v29[3] = &unk_1E7568EB0;
    v29[4] = buf;
    v14 = [v3 enumerateWithIncrementalSaveUsingObjects:v12 withBlock:v29];

    if (v14)
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v15 = *(*(a1 + 32) + 96);
        if (v15 == 2)
        {
          v16 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v15 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v16 = ;
        }

        v21 = v16;
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_33;
        }

        *v31 = 138543362;
        v32 = v14;
        v22 = "_repushAssetsWithImportedByBundleIdentifier: save failed with error: %{public}@";
        v23 = v21;
        v24 = OS_LOG_TYPE_ERROR;
LABEL_32:
        _os_log_impl(&dword_19BF1F000, v23, v24, v22, v31, 0xCu);
LABEL_33:
      }
    }

    else if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v19 = *(*(a1 + 32) + 96);
      if (v19 == 2)
      {
        v20 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v19 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v20 = ;
      }

      v21 = v20;
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v27 = *(*&buf[8] + 24);
      *v31 = 134349056;
      v32 = v27;
      v22 = "_repushAssetsWithImportedByBundleIdentifier: set importedByBundleIdentifier on %{public}lu masters";
      v23 = v21;
      v24 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_32;
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_35;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v17 = *(*(a1 + 32) + 96);
    if (v17 == 2)
    {
      v18 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v17 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v18 = ;
    }

    v25 = v18;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v26 = [v6 predicate];
      *buf = 138543618;
      *&buf[4] = v26;
      *&buf[12] = 2114;
      *&buf[14] = v13;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "_repushAssetsWithImportedByBundleIdentifier: fetch failed with predicate %{public}@, error: %{public}@", buf, 0x16u);
    }
  }

  v14 = v13;
LABEL_35:
}

void __73__PLCloudPhotoLibraryManager__repushAssetsWithImportedByBundleIdentifier__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 master];
  v4 = [v3 importedByBundleIdentifier];

  [v5 setImportedByBundleIdentifier:v4];
  ++*(*(*(a1 + 32) + 8) + 24);
}

- (void)_repushMasterWithMissingMediaMetadata
{
  v3 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
  v4 = [v3 databaseContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__PLCloudPhotoLibraryManager__repushMasterWithMissingMediaMetadata__block_invoke;
  v5[3] = &unk_1E75685D0;
  v5[4] = self;
  [v4 performTransactionSync:v5 withName:"-[PLCloudPhotoLibraryManager _repushMasterWithMissingMediaMetadata]"];
}

void __67__PLCloudPhotoLibraryManager__repushMasterWithMissingMediaMetadata__block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 managedObjectContext];
  v5 = MEMORY[0x1E695D5E0];
  v6 = +[PLManagedAsset entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  [v7 setFetchBatchSize:100];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL && %K == NULL", @"master", @"master.mediaMetadata.data"];
  v9 = +[PLManagedAsset predicateForSupportedAssetTypesForUpload];
  v10 = [MEMORY[0x1E695DF70] array];
  [v10 addObject:v8];
  [v10 addObject:v9];
  v11 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v10];
  [v7 setPredicate:v11];

  [v7 setFetchBatchSize:100];
  v35 = 0;
  v12 = [v4 executeFetchRequest:v7 error:&v35];
  v13 = v35;
  if (v12)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v41 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __67__PLCloudPhotoLibraryManager__repushMasterWithMissingMediaMetadata__block_invoke_2;
    v30[3] = &unk_1E7569428;
    v30[4] = *(a1 + 32);
    v30[5] = buf;
    v30[6] = &v31;
    v14 = [v4 enumerateWithIncrementalSaveUsingObjects:v12 withBlock:v30];

    if (v14)
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v15 = *(*(a1 + 32) + 96);
        if (v15 == 2)
        {
          v16 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v15 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v16 = ;
        }

        v21 = v16;
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_33;
        }

        *v36 = 138543362;
        v37 = v14;
        v22 = "_repushMasterWithMissingMediaMetadata: save failed with error: %{public}@";
        v23 = v21;
        v24 = OS_LOG_TYPE_ERROR;
        v25 = 12;
LABEL_32:
        _os_log_impl(&dword_19BF1F000, v23, v24, v22, v36, v25);
LABEL_33:
      }
    }

    else if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v19 = *(*(a1 + 32) + 96);
      if (v19 == 2)
      {
        v20 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v19 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v20 = ;
      }

      v21 = v20;
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v28 = *(*&buf[8] + 24);
      v29 = v32[3];
      *v36 = 134349312;
      v37 = v28;
      v38 = 2050;
      v39 = v29;
      v22 = "_repushMasterWithMissingMediaMetadata: set media metadata on %{public}lu (img) %{public}lu (vid) masters";
      v23 = v21;
      v24 = OS_LOG_TYPE_DEFAULT;
      v25 = 22;
      goto LABEL_32;
    }

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(buf, 8);
    goto LABEL_35;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v17 = *(*(a1 + 32) + 96);
    if (v17 == 2)
    {
      v18 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v17 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v18 = ;
    }

    v26 = v18;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v27 = [v7 predicate];
      *buf = 138543618;
      *&buf[4] = v27;
      *&buf[12] = 2114;
      *&buf[14] = v13;
      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "_repushMasterWithMissingMediaMetadata: fetch failed with predicate %{public}@, error: %{public}@", buf, 0x16u);
    }
  }

  v14 = v13;
LABEL_35:
}

void __67__PLCloudPhotoLibraryManager__repushMasterWithMissingMediaMetadata__block_invoke_2(void *a1, void *a2)
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 masterResourceForCPLType:1];
  v5 = [v4 isLocallyAvailable];

  if (v5)
  {
    v6 = [v3 master];
    v7 = [v3 mainFileURL];
    if (v7)
    {
      if ([v3 isPhoto])
      {
        v8 = objc_alloc(MEMORY[0x1E695DEF0]);
        v9 = [v7 path];
        v61 = 0;
        v10 = [v8 initWithContentsOfFile:v9 options:1 error:&v61];
        v11 = v61;

        if (!v10)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v35 = *(a1[4] + 96);
            if (v35 == 2)
            {
              v36 = __CPLAppLibraryOSLogDomain();
            }

            else
            {
              if (v35 == 1)
              {
                __CPLSyndicationOSLogDomain();
              }

              else
              {
                __CPLSystemLibraryOSLogDomain();
              }
              v36 = ;
            }

            v48 = v36;
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v63 = v11;
              _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_ERROR, "_repushMasterWithMissingMediaMetadata (img) Reading Error: %{public}@", buf, 0xCu);
            }
          }

          goto LABEL_95;
        }

        v12 = objc_autoreleasePoolPush();
        v13 = CGImageSourceCreateWithData(v10, 0);
        if (!v13)
        {
          if (*MEMORY[0x1E6994D48])
          {
LABEL_94:
            objc_autoreleasePoolPop(v12);
            goto LABEL_95;
          }

          v38 = *(a1[4] + 96);
          if (v38 == 2)
          {
            v39 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v38 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v39 = ;
          }

          v49 = v39;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v50 = [v3 uuid];
            *buf = 138543362;
            v63 = v50;
            _os_log_impl(&dword_19BF1F000, v49, OS_LOG_TYPE_ERROR, "_repushMasterWithMissingMediaMetadata: failed to create CGImage for extracting media metadata %{public}@", buf, 0xCu);
          }

LABEL_93:

          goto LABEL_94;
        }

        v14 = v13;
        v58 = v12;
        v15 = CGImageSourceCopyPropertiesAtIndex(v13, 0, 0);
        v16 = MEMORY[0x1E696AE40];
        v57 = v15;
        v17 = [PLPropertyListFilter filterPropertyList:?];
        v60 = 0;
        v18 = [v16 dataWithPropertyList:v17 format:200 options:0 error:&v60];
        v19 = v60;

        if (v18)
        {
          v20 = [v18 length];
          if (v20 <= [MEMORY[0x1E6994B60] maxInlineDataSize])
          {
            ++*(*(a1[5] + 8) + 24);
            v44 = [v6 mediaMetadata];
            [v44 setValue:v18 forKey:@"data"];

            [v6 setMediaMetadataType:@"CGImageProperties"];
          }

          else if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v21 = *(a1[4] + 96);
            if (v21 == 2)
            {
              v22 = __CPLAppLibraryOSLogDomain();
            }

            else
            {
              if (v21 == 1)
              {
                __CPLSyndicationOSLogDomain();
              }

              else
              {
                __CPLSystemLibraryOSLogDomain();
              }
              v22 = ;
            }

            v53 = v22;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v54 = [v3 uuid];
              *buf = 138543362;
              v63 = v54;
              _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_ERROR, "_repushMasterWithMissingMediaMetadata: media metadata (img) for %{public}@ is too large, skipping", buf, 0xCu);
            }

LABEL_91:
          }
        }

        else if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v42 = *(a1[4] + 96);
          if (v42 == 2)
          {
            v43 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v42 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v43 = ;
          }

          v53 = v43;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v63 = v19;
            _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_ERROR, "_repushMasterWithMissingMediaMetadata (img) Serialization Error: %{public}@", buf, 0xCu);
          }

          goto LABEL_91;
        }

        CFRelease(v14);

        v49 = v57;
        v12 = v58;
        goto LABEL_93;
      }

      if ([v3 isVideo])
      {
        v25 = [MEMORY[0x1E6988168] URLAssetWithURL:v7 options:0];
        if (!v25)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v40 = *(a1[4] + 96);
            if (v40 == 2)
            {
              v41 = __CPLAppLibraryOSLogDomain();
            }

            else
            {
              if (v40 == 1)
              {
                __CPLSyndicationOSLogDomain();
              }

              else
              {
                __CPLSystemLibraryOSLogDomain();
              }
              v41 = ;
            }

            v51 = v41;
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              v52 = [v3 uuid];
              *buf = 138543362;
              v63 = v52;
              _os_log_impl(&dword_19BF1F000, v51, OS_LOG_TYPE_ERROR, "_repushMasterWithMissingMediaMetadata: failed to create AVAsset for extracting media metadata %{public}@", buf, 0xCu);
            }
          }

          v11 = 0;
          goto LABEL_96;
        }

        v11 = v25;
        v26 = objc_autoreleasePoolPush();
        v27 = [v11 propertyListForProxy];
        v59 = 0;
        v28 = [MEMORY[0x1E696AE40] dataWithPropertyList:v27 format:200 options:0 error:&v59];
        v29 = v59;
        if (v28)
        {
          v30 = [v28 length];
          if (v30 <= [MEMORY[0x1E6994B60] maxInlineDataSize])
          {
            ++*(*(a1[6] + 8) + 24);
            v47 = [v6 mediaMetadata];
            [v47 setValue:v28 forKey:@"data"];

            [v6 setMediaMetadataType:@"AVAssetProxy"];
          }

          else if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v31 = *(a1[4] + 96);
            if (v31 == 2)
            {
              v32 = __CPLAppLibraryOSLogDomain();
            }

            else
            {
              if (v31 == 1)
              {
                __CPLSyndicationOSLogDomain();
              }

              else
              {
                __CPLSystemLibraryOSLogDomain();
              }
              v32 = ;
            }

            v55 = v32;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v56 = [v3 uuid];
              *buf = 138543362;
              v63 = v56;
              _os_log_impl(&dword_19BF1F000, v55, OS_LOG_TYPE_ERROR, "_repushMasterWithMissingMediaMetadata: media metadata (vid) for %{public}@ is too large, skipping", buf, 0xCu);
            }

LABEL_107:
          }
        }

        else if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v45 = *(a1[4] + 96);
          if (v45 == 2)
          {
            v46 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v45 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v46 = ;
          }

          v55 = v46;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v63 = v29;
            _os_log_impl(&dword_19BF1F000, v55, OS_LOG_TYPE_ERROR, "_repushMasterWithMissingMediaMetadata (vid) Serialization Error: %{public}@", buf, 0xCu);
          }

          goto LABEL_107;
        }

        objc_autoreleasePoolPop(v26);
        goto LABEL_96;
      }

      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v33 = *(a1[4] + 96);
        if (v33 == 2)
        {
          v34 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v33 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v34 = ;
        }

        v11 = v34;
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_96;
        }

        v10 = [v3 uuid];
        *buf = 138543362;
        v63 = v10;
        v37 = "_repushMasterWithMissingMediaMetadata: unknown asset type %{public}@";
        goto LABEL_60;
      }
    }

    else if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v23 = *(a1[4] + 96);
      if (v23 == 2)
      {
        v24 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v23 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v24 = ;
      }

      v11 = v24;
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_96;
      }

      v10 = [v3 uuid];
      *buf = 138543362;
      v63 = v10;
      v37 = "_repushMasterWithMissingMediaMetadata: nil file url %{public}@";
LABEL_60:
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, v37, buf, 0xCu);
LABEL_95:

LABEL_96:
    }
  }
}

- (void)_repushVideoAssetsMetadata
{
  v3 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
  v4 = [v3 databaseContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__PLCloudPhotoLibraryManager__repushVideoAssetsMetadata__block_invoke;
  v5[3] = &unk_1E75685D0;
  v5[4] = self;
  [v4 performTransactionSync:v5 withName:"-[PLCloudPhotoLibraryManager _repushVideoAssetsMetadata]"];
}

void __56__PLCloudPhotoLibraryManager__repushVideoAssetsMetadata__block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v28 = a2;
  v3 = [v28 managedObjectContext];
  v4 = MEMORY[0x1E695D5E0];
  v5 = +[PLManagedAsset entityName];
  v6 = [v4 fetchRequestWithEntityName:v5];

  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 1];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"cloudLocalState == %d OR cloudLocalState == %d", 1, 3];
  v9 = +[PLManagedAsset predicateForSupportedAssetTypesForUpload];
  v10 = [MEMORY[0x1E695DF70] array];
  [v10 addObject:v8];
  [v10 addObject:v9];
  [v10 addObject:v7];
  v11 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v10];
  [v6 setPredicate:v11];

  [v6 setFetchBatchSize:100];
  v30 = 0;
  v12 = [v3 executeFetchRequest:v6 error:&v30];
  v13 = v30;
  if (v12)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v34 = 0;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __56__PLCloudPhotoLibraryManager__repushVideoAssetsMetadata__block_invoke_2;
    v29[3] = &unk_1E75721F8;
    v29[4] = *(a1 + 32);
    v29[5] = buf;
    v14 = [v3 enumerateWithIncrementalSaveUsingObjects:v12 withBlock:v29];

    if (v14)
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v15 = *(*(a1 + 32) + 96);
        if (v15 == 2)
        {
          v16 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v15 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v16 = ;
        }

        v21 = v16;
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_33;
        }

        *v31 = 138543362;
        v32 = v14;
        v22 = "_repushVideoAssetsMetadata: save failed with error: %{public}@";
        v23 = v21;
        v24 = OS_LOG_TYPE_ERROR;
LABEL_32:
        _os_log_impl(&dword_19BF1F000, v23, v24, v22, v31, 0xCu);
LABEL_33:
      }
    }

    else if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v19 = *(*(a1 + 32) + 96);
      if (v19 == 2)
      {
        v20 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v19 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v20 = ;
      }

      v21 = v20;
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v27 = *(*&buf[8] + 24);
      *v31 = 134349056;
      v32 = v27;
      v22 = "_repushVideoAssetsMetadata: set videoFrameRate and codecName on %{public}lu masters";
      v23 = v21;
      v24 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_32;
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_35;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v17 = *(*(a1 + 32) + 96);
    if (v17 == 2)
    {
      v18 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v17 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v18 = ;
    }

    v25 = v18;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v26 = [v6 predicate];
      *buf = 138543618;
      *&buf[4] = v26;
      *&buf[12] = 2114;
      *&buf[14] = v13;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "_repushVideoAssetsMetadata: fetch failed with predicate %{public}@, error: %{public}@", buf, 0x16u);
    }
  }

  v14 = v13;
LABEL_35:
}

void __56__PLCloudPhotoLibraryManager__repushVideoAssetsMetadata__block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 master];
  v5 = [v4 mediaMetadata];
  v6 = [v5 valueForKey:@"data"];

  if (v6)
  {
    v18 = 0;
    v7 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:&v18];
    v8 = v18;
    if (v7)
    {
      v9 = [MEMORY[0x1E6987E28] assetProxyWithPropertyList:v7];
      [v3 setVideoInfoOnMasterFromAVAsset:v9];
      ++*(*(*(a1 + 40) + 8) + 24);
    }

    else
    {
      if (*MEMORY[0x1E6994D48])
      {
LABEL_23:

LABEL_24:
        goto LABEL_25;
      }

      v12 = *(*(a1 + 32) + 96);
      if (v12 == 2)
      {
        v13 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v12 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v13 = ;
      }

      v9 = v13;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = [v4 scopedIdentifier];
        v17 = [v16 identifier];
        *buf = 138543618;
        v20 = v17;
        v21 = 2114;
        v22 = v8;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "_repushVideoAssetsMetadata: unable to serialize videoProperties for %{public}@: %{public}@", buf, 0x16u);
      }
    }

    goto LABEL_23;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v10 = *(*(a1 + 32) + 96);
    if (v10 == 2)
    {
      v11 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v10 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v11 = ;
    }

    v8 = v11;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v4 scopedIdentifier];
      v15 = [v14 identifier];
      *buf = 138543362;
      v20 = v15;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "_repushVideoAssetsMetadata: unable to find mediaPropertiesData for %{public}@", buf, 0xCu);
    }

    goto LABEL_24;
  }

LABEL_25:
}

- (void)_handleOptimizeSettingChangeInLibrary:(id)a3 withCompletionHandler:(id)a4
{
  v29[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v9 = [WeakRetained cplSettings];
  v10 = [v9 isKeepOriginalsEnabled];

  v11 = PLResourceCachingGetLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Switching mode to download and keep originals, updating purgeable flags", buf, 2u);
    }

    v13 = +[PLInternalResource predicateForPurgeableOriginalResources];
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"fileID != %lld", -1];
    v15 = MEMORY[0x1E696AB28];
    v29[0] = v13;
    v29[1] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v17 = [v15 andPredicateWithSubpredicates:v16];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __90__PLCloudPhotoLibraryManager__handleOptimizeSettingChangeInLibrary_withCompletionHandler___block_invoke;
    v25[3] = &unk_1E7577C08;
    v18 = &v26;
    v25[4] = self;
    v26 = v6;
    v19 = v6;
    [(PLCloudPhotoLibraryManager *)self clearPurgeableResourcesMatchingPredicate:v17 inLibrary:v7 completionHandler:v25];
  }

  else
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Switching mode to optimize, updating purgeable flags", buf, 2u);
    }

    v13 = +[PLInternalResource predicateForAvailableResources];
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"fileID == %lld", -1];
    v20 = MEMORY[0x1E696AB28];
    v28[0] = v13;
    v28[1] = v14;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    v17 = [v20 andPredicateWithSubpredicates:v21];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __90__PLCloudPhotoLibraryManager__handleOptimizeSettingChangeInLibrary_withCompletionHandler___block_invoke_249;
    v23[3] = &unk_1E7577C08;
    v18 = &v24;
    v23[4] = self;
    v24 = v6;
    v22 = v6;
    [(PLCloudPhotoLibraryManager *)self markPurgeableResourcesMatchingPredicate:v17 urgency:0 inLibrary:v7 completionHandler:v23];
  }
}

uint64_t __90__PLCloudPhotoLibraryManager__handleOptimizeSettingChangeInLibrary_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resourceManager];
  [v2 handleOptimizeModeChange];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __90__PLCloudPhotoLibraryManager__handleOptimizeSettingChangeInLibrary_withCompletionHandler___block_invoke_249(uint64_t a1)
{
  v2 = [*(a1 + 32) resourceManager];
  [v2 handleOptimizeModeChange];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_handleOptimizeSettingChange
{
  v3 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager _handleOptimizeSettingChange]"];
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v5 = [WeakRetained cplSettings];

  [v5 setRunOnceFlag:2 error:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__PLCloudPhotoLibraryManager__handleOptimizeSettingChange__block_invoke;
  v8[3] = &unk_1E75761B8;
  v8[4] = self;
  v9 = v5;
  v10 = v3;
  v6 = v3;
  v7 = v5;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v6 block:v8];
}

void __58__PLCloudPhotoLibraryManager__handleOptimizeSettingChange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[89] == 1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __58__PLCloudPhotoLibraryManager__handleOptimizeSettingChange__block_invoke_2;
    v5[3] = &unk_1E75761B8;
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v6 = v3;
    v7 = v4;
    v8 = *(a1 + 48);
    [v1 _reportOptimizeSettingChangeWithCompletionHandler:v5];
  }
}

void __58__PLCloudPhotoLibraryManager__handleOptimizeSettingChange__block_invoke_2(id *a1)
{
  [a1[4] clearRunOnceFlag:2 error:0];
  v2 = [a1[5] libraryServicesManager];
  v3 = [v2 databaseContext];
  v4 = [v3 newShortLivedCplLibraryWithNameSuffix:"-[PLCloudPhotoLibraryManager _handleOptimizeSettingChange]_block_invoke_2"];

  v5 = a1[5];
  v6 = v5[55] + 1;
  v5[55] = v6;
  v7 = a1[5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__PLCloudPhotoLibraryManager__handleOptimizeSettingChange__block_invoke_3;
  v8[3] = &unk_1E7576168;
  v8[4] = v7;
  v9 = a1[6];
  v11 = v6;
  v10 = a1[4];
  [v7 _handleOptimizeSettingChangeInLibrary:v4 withCompletionHandler:v8];
}

void __58__PLCloudPhotoLibraryManager__handleOptimizeSettingChange__block_invoke_3(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__PLCloudPhotoLibraryManager__handleOptimizeSettingChange__block_invoke_4;
  v4[3] = &unk_1E75782F8;
  v3 = a1[6];
  v6 = a1[7];
  v4[4] = v1;
  v5 = v3;
  [v1 _runAsyncOnIsolationQueueWithTransaction:v2 block:v4];
}

uint64_t __58__PLCloudPhotoLibraryManager__handleOptimizeSettingChange__block_invoke_4(uint64_t result)
{
  if (*(result + 48) == *(*(result + 32) + 440))
  {
    return [*(result + 40) clearRunOnceFlag:1 error:0];
  }

  return result;
}

- (BOOL)setPrefetchMode:(int64_t)a3 error:(id *)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v8 = [WeakRetained cplSettings];

  if ([v8 prefetchMode] == a3)
  {
    goto LABEL_2;
  }

  if (![v8 setRunOnceFlag:1 error:a4])
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  if (([v8 setPrefetchMode:a3 error:a4] & 1) == 0)
  {
    [v8 clearRunOnceFlag:1 error:0];
    goto LABEL_7;
  }

  [(PLCloudPhotoLibraryManager *)self _handleOptimizeSettingChange];
LABEL_2:
  v9 = 1;
LABEL_8:

  return v9;
}

- (void)_reportOptimizeSettingChangeWithCompletionHandler:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v6 = [WeakRetained cplSettings];
  v7 = [v6 prefetchMode];

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v9 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v9 = ;
    }

    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"Optimize";
      if (v7 == 1)
      {
        v11 = @"Keep Originals";
      }

      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Reporting optimized setting %@ to feedback", &v15, 0xCu);
    }
  }

  v12 = [(PLCloudPhotoLibraryManager *)self cplLibrary];
  v13 = v12;
  if (v7 == 1)
  {
    v14 = @"false";
  }

  else
  {
    v14 = @"true";
  }

  [v12 reportSetting:*MEMORY[0x1E69949B8] hasBeenSetToValue:v14];

  if (v4)
  {
    v4[2](v4);
  }
}

- (void)reportMiscInformation:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager reportMiscInformation:]"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__PLCloudPhotoLibraryManager_reportMiscInformation___block_invoke;
  v7[3] = &unk_1E7578848;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v5 block:v7];
}

void __52__PLCloudPhotoLibraryManager_reportMiscInformation___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v2 = *(*(a1 + 32) + 96);
    if (v2 == 2)
    {
      v3 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v2 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v3 = ;
    }

    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Reporting info %@", &v7, 0xCu);
    }
  }

  v6 = [*(a1 + 32) cplLibrary];
  [v6 reportMiscInformation:*(a1 + 40)];
}

- (void)_updatePendingResetSyncDate
{
  v32 = *MEMORY[0x1E69E9840];
  pendingResetSyncType = self->_pendingResetSyncType;
  if (!pendingResetSyncType || self->_hasSettledInitialBatch)
  {
    self->_pendingResetSyncType = 0;
    v4 = [(PLCloudPhotoLibraryManager *)self pathManager];
    v5 = [v4 cplDataDirectoryCreateIfNeeded:0];

    v6 = [(PLCloudPhotoLibraryManager *)self pathManager];
    v7 = PLCloudPhotoLibraryLocalModeEnabled(v6);

    if (v7)
    {
      v8 = objc_opt_class();
      v9 = [MEMORY[0x1E695DFF8] URLWithString:v5];
      v10 = [v8 fakeCPLStatusBaseURLWithBaseURL:v9];
      v11 = [v10 absoluteString];

      v5 = v11;
    }

    v12 = [v5 stringByAppendingPathComponent:@"resetevents.plist"];
    v13 = [MEMORY[0x1E696AC08] defaultManager];
    v14 = [v13 fileExistsAtPath:v12];

    if (!v14)
    {
LABEL_23:
      v22 = self->_pendingResetSyncType;
      if (pendingResetSyncType)
      {
        if (!v22)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            libraryMode = self->_libraryMode;
            if (libraryMode == 2)
            {
              v24 = __CPLAppLibraryOSLogDomain();
            }

            else
            {
              if (libraryMode == 1)
              {
                __CPLSyndicationOSLogDomain();
              }

              else
              {
                __CPLSystemLibraryOSLogDomain();
              }
              v24 = ;
            }

            v25 = v24;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v26 = [MEMORY[0x1E695DF00] date];
              v30 = 138412290;
              v31 = v26;
              _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "Finished reset sync at %@, triggering prefetching/pruning", &v30, 0xCu);
            }
          }

          v27 = [(PLCloudPhotoLibraryManager *)self resourceManager];
          [v27 startAutomaticPrefetchAndPruneWithTimeout:0];

          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.ResetSyncStateChanged", 0, 0, 1u);
          v22 = self->_pendingResetSyncType;
        }

        if (!v22 || pendingResetSyncType == v22)
        {
          goto LABEL_41;
        }
      }

      else if (!v22)
      {
        goto LABEL_41;
      }

      v29 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(v29, @"com.apple.mobileslideshow.ResetSyncStateChanged", 0, 0, 1u);
LABEL_41:

      return;
    }

    v15 = [MEMORY[0x1E695DEC8] arrayWithContentsOfFile:v12];
    v16 = [v15 lastObject];
    v17 = v16;
    if (!v16 || ([v16 objectForKey:@"pending"], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "BOOLValue"), v18, !v19))
    {
LABEL_22:

      goto LABEL_23;
    }

    v20 = [v17 objectForKey:@"type"];
    if ([v20 isEqualToString:@"soft"])
    {
      v21 = 1;
    }

    else if ([v20 isEqualToString:@"hard"])
    {
      v21 = 2;
    }

    else if ([v20 isEqualToString:@"recover"])
    {
      v21 = 3;
    }

    else if ([v20 isEqualToString:@"anchor"])
    {
      v21 = 4;
    }

    else if ([v20 isEqualToString:@"globalAnchor"])
    {
      v21 = 5;
    }

    else
    {
      if (![v20 isEqualToString:@"wipe"])
      {
LABEL_21:

        goto LABEL_22;
      }

      v21 = 6;
    }

    self->_pendingResetSyncType = v21;
    goto LABEL_21;
  }
}

- (BOOL)_setupTimerForUnpause
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v3 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
  v4 = [v3 libraryBundle];
  v5 = [v4 indicatorFileCoordinator];

  v6 = [v5 unpauseTime];
  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [v7 compare:v6];
  if (v8 == -1)
  {
    [(PLCloudPhotoLibraryManager *)self _constructUnpauseTimerFrom:v7 to:v6];
  }

  else
  {
    [v5 clearPauseMarkerForReason:3];
  }

  v9 = v8 == -1;
  v10 = [MEMORY[0x1E696AD98] numberWithBool:v8 == -1];
  CFPreferencesSetAppValue(@"cloudPhotosPaused", v10, @"com.apple.mobileslideshow");

  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  return v9;
}

- (void)_constructUnpauseTimerFrom:(id)a3 to:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  isolationQueue = self->_isolationQueue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(isolationQueue);
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v12 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v12 = ;
    }

    v13 = v12;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = v10;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Will unpaused in %f seconds", buf, 0xCu);
    }
  }

  [(PLCloudPhotoLibraryManager *)self _stopUnpauseTimer];
  v17 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_isolationQueue);
  pl_dispatch_source_set_event_handler();
  v14 = dispatch_walltime(0, 1000000000 * v10);
  dispatch_source_set_timer(v17, v14, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  unpauseDispatchTimer = self->_unpauseDispatchTimer;
  self->_unpauseDispatchTimer = v17;
  v16 = v17;

  dispatch_resume(self->_unpauseDispatchTimer);
}

void *__60__PLCloudPhotoLibraryManager__constructUnpauseTimerFrom_to___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if (result[20] == *(a1 + 40))
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v3 = result[12];
      if (v3 == 2)
      {
        v4 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v3 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v4 = ;
      }

      v5 = v4;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(*(a1 + 32) + 132);
        v7[0] = 67109120;
        v7[1] = v6;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Unpause (%d) timer triggered, will unpause Cloud Photo Library", v7, 8u);
      }

      result = *(a1 + 32);
    }

    return [result setPause:0 reason:*(a1 + 48)];
  }

  return result;
}

- (id)_calculateUnpauseTimeForPauseTime:(id)a3
{
  if (self->_pauseReason == 3)
  {
    v3 = MEMORY[0x1E695DEE8];
    v4 = a3;
    v5 = [v3 currentCalendar];
    v6 = [v5 startOfDayForDate:v4];

    v7 = [v5 dateByAddingUnit:16 value:1 toDate:v6 options:0];
    v8 = [v5 dateByAddingUnit:32 value:3 toDate:v7 options:0];
  }

  else
  {
    v5 = a3;
    v8 = [v5 dateByAddingTimeInterval:1800.0];
  }

  return v8;
}

- (void)_stopUnpauseTimer
{
  unpauseDispatchTimer = self->_unpauseDispatchTimer;
  if (unpauseDispatchTimer)
  {
    dispatch_source_cancel(unpauseDispatchTimer);
    v4 = self->_unpauseDispatchTimer;
    self->_unpauseDispatchTimer = 0;
  }
}

- (void)_transitionToState:(unint64_t)a3
{
  v33 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_isolationQueue);
  state = self->_state;
  v6 = MEMORY[0x1E6994D48];
  if (state == 9)
  {
    if (*MEMORY[0x1E6994D48])
    {
      return;
    }

    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v8 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v8 = ;
    }

    v15 = v8;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v16 = [(PLCloudPhotoLibraryManager *)self _debugNameForState:self->_state];
    v17 = [(PLCloudPhotoLibraryManager *)self _debugNameForState:a3];
    v29 = 138412546;
    v30 = v16;
    v31 = 2112;
    v32 = v17;
    v18 = "Not transitioning state from %@ to %@ because library was deactivated";
LABEL_30:
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, v18, &v29, 0x16u);

LABEL_31:
    return;
  }

  if (a3 == 1 && state)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v9 = self->_libraryMode;
      if (v9 == 2)
      {
        v10 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v9 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v10 = ;
      }

      v19 = v10;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(PLCloudPhotoLibraryManager *)self _debugNameForState:self->_state];
        v21 = [(PLCloudPhotoLibraryManager *)self _debugNameForState:1];
        v29 = 138412546;
        v30 = v20;
        v31 = 2112;
        v32 = v21;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "Not transitioning state from %@ to %@, can only transition to open from uninitialized", &v29, 0x16u);
      }
    }
  }

  else
  {
    if ((a3 & 0xFFFFFFFFFFFFFFFDLL) != 0 && state == 1)
    {
      if (*MEMORY[0x1E6994D48])
      {
        return;
      }

      v11 = self->_libraryMode;
      if (v11 == 2)
      {
        v12 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v11 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v12 = ;
      }

      v15 = v12;
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      v16 = [(PLCloudPhotoLibraryManager *)self _debugNameForState:self->_state];
      v17 = [(PLCloudPhotoLibraryManager *)self _debugNameForState:a3];
      v29 = 138412546;
      v30 = v16;
      v31 = 2112;
      v32 = v17;
      v18 = "Not transitioning state from %@ to %@ because library is opening";
      goto LABEL_30;
    }

    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v13 = self->_libraryMode;
      if (v13 == 2)
      {
        v14 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v13 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v14 = ;
      }

      v22 = v14;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [(PLCloudPhotoLibraryManager *)self _debugNameForState:self->_state];
        v24 = [(PLCloudPhotoLibraryManager *)self _debugNameForState:a3];
        v29 = 138412546;
        v30 = v23;
        v31 = 2112;
        v32 = v24;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "Transition state from %@ to %@", &v29, 0x16u);
      }

      state = self->_state;
    }

    self->_stateChangePending = 1;
    if (state && ([(PLCloudPhotoLibraryManager *)self cplLibrary], (v25 = objc_claimAutoreleasedReturnValue()) != 0))
    {

      if (a3 == 2)
      {
        a3 = 6;
      }
    }

    else if (a3 != 1)
    {
      if ((*v6 & 1) == 0)
      {
        v26 = self->_libraryMode;
        if (v26 == 2)
        {
          v27 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v26 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v27 = ;
        }

        v28 = v27;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v29) = 0;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "Forcing transition to open CPL", &v29, 2u);
        }
      }

      a3 = 1;
    }

    self->_state = a3;
    [(PLCloudPhotoLibraryManager *)self _processNextTransaction];
  }
}

- (BOOL)_canExternallyTransitionToNewLibraryStateIgnoringPause:(BOOL)a3
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (self->_stateChangePending)
  {
    return 0;
  }

  state = self->_state;
  v7 = state == 8 && a3;
  return state == 6 || v7;
}

- (void)_callBlocksWaitingForLibraryOpen
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__11895;
  v20 = __Block_byref_object_dispose__11896;
  v21 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __62__PLCloudPhotoLibraryManager__callBlocksWaitingForLibraryOpen__block_invoke;
  v13 = &unk_1E7578910;
  v14 = self;
  v15 = &v16;
  PLRunWithUnfairLock();
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v2 = v17[5];
  v3 = [v2 countByEnumeratingWithState:&v6 objects:v22 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v6 objects:v22 count:16];
    }

    while (v3);
  }

  _Block_object_dispose(&v16, 8);
}

uint64_t __62__PLCloudPhotoLibraryManager__callBlocksWaitingForLibraryOpen__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 312) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = [*(*(a1 + 32) + 312) removeAllObjects];
  *(*(a1 + 32) + 305) = 1;
  return result;
}

- (void)_runOnLibraryOpenWithTransaction:(id)a3 block:(id)a4
{
  v5 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6 = a4;
  v7 = v5;
  PLRunWithUnfairLock();
  if (*(v9 + 24) == 1)
  {
    v6[2](v6);
  }

  _Block_object_dispose(&v8, 8);
}

void __69__PLCloudPhotoLibraryManager__runOnLibraryOpenWithTransaction_block___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 24) = *(*(a1 + 32) + 305);
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v2 = *(*(a1 + 32) + 312);
    v4 = MEMORY[0x1E69E9820];
    v5 = 3221225472;
    v6 = __69__PLCloudPhotoLibraryManager__runOnLibraryOpenWithTransaction_block___block_invoke_2;
    v7 = &unk_1E7577C08;
    v9 = *(a1 + 48);
    v8 = *(a1 + 40);
    v3 = _Block_copy(&v4);
    [v2 addObject:{v3, v4, v5, v6, v7}];
  }
}

uint64_t __69__PLCloudPhotoLibraryManager__runOnLibraryOpenWithTransaction_block___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 stillAlive];
}

- (void)_runAsyncOnIsolationQueueWithTransaction:(id)a3 afterDelay:(double)a4 block:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (v8 && a4 > 30.0 && (*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v11 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v11 = ;
    }

    v12 = v11;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v18 = a4;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "warning: Cloud Photo Library scheduling work in %f seconds with open transaction", buf, 0xCu);
    }
  }

  dispatch_time(0, (a4 * 1000000000.0));
  v15 = v8;
  v16 = v9;
  v13 = v8;
  v14 = v9;
  pl_dispatch_after();
}

uint64_t __88__PLCloudPhotoLibraryManager__runAsyncOnIsolationQueueWithTransaction_afterDelay_block___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 stillAlive];
}

- (void)_runAsyncOnIsolationQueueWithTransaction:(id)a3 block:(id)a4
{
  v7 = a3;
  v8 = a4;
  v5 = v7;
  v6 = v8;
  pl_dispatch_async();
}

uint64_t __77__PLCloudPhotoLibraryManager__runAsyncOnIsolationQueueWithTransaction_block___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 stillAlive];
}

- (void)_runSyncOnIsolationQueueWithBlock:(id)a3
{
  v4 = a3;
  v3 = v4;
  pl_dispatch_sync();
}

- (void)_handleStateTransistionAfterDisableiCPL
{
  v24 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (self->_state != 9)
  {
    v5 = +[PLAccountStore pl_sharedAccountStore];
    v6 = [v5 cachedPrimaryAppleAccount];
    if (v6)
    {
      v7 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
      v8 = [v7 isCPLSyncablePhotoLibrary];

      if (v8)
      {
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          libraryMode = self->_libraryMode;
          if (libraryMode == 2)
          {
            v10 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (libraryMode == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v10 = ;
          }

          v19 = v10;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v22) = 0;
            _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "Library is still syncable, transitioning back to open", &v22, 2u);
          }
        }

        [(PLCloudPhotoLibraryManager *)self _transitionToState:1];
        goto LABEL_46;
      }

      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v13 = self->_libraryMode;
        if (v13 == 2)
        {
          v14 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v13 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v14 = ;
        }

        v18 = v14;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [(PLCloudPhotoLibraryManager *)self pathManager];
          v21 = [v20 libraryURL];
          v22 = 138412290;
          v23 = v21;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "%@ is no longer syncable, keep CPL OFF", &v22, 0xCu);
        }

LABEL_44:
      }
    }

    else if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v11 = self->_libraryMode;
      if (v11 == 2)
      {
        v12 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v11 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v12 = ;
      }

      v18 = v12;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "No Apple Account, keep CPL OFF", &v22, 2u);
      }

      goto LABEL_44;
    }

    [(PLCloudPhotoLibraryManager *)self _callBlocksWaitingForLibraryOpen];
LABEL_46:

    return;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v3 = self->_libraryMode;
    if (v3 == 2)
    {
      v4 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v3 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v4 = ;
    }

    v15 = v4;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(PLCloudPhotoLibraryManager *)self pathManager];
      v17 = [v16 libraryURL];
      v22 = 138412290;
      v23 = v17;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "%@ disabled after becoming non-syncable, keep CPL OFF", &v22, 0xCu);
    }
  }

  [(PLCloudPhotoLibraryManager *)self _callBlocksWaitingForLibraryOpen];
}

- (void)_disableiCPLWillBecomeNonSyncablePhotoLibrary:(BOOL)a3 resetMode:(int64_t)a4
{
  v5 = a3;
  v153 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (a4 == 3)
  {
    v7 = MEMORY[0x1E696AEC0];
    deviceLibraryConfiguration = self->_deviceLibraryConfiguration;
    if (deviceLibraryConfiguration > 2)
    {
      v9 = @"unknown";
    }

    else
    {
      v9 = off_1E756E888[deviceLibraryConfiguration];
    }

    v11 = v9;
    pendingDeviceLibraryConfiguration = self->_pendingDeviceLibraryConfiguration;
    if (pendingDeviceLibraryConfiguration > 2)
    {
      v13 = @"unknown";
    }

    else
    {
      v13 = off_1E756E888[pendingDeviceLibraryConfiguration];
    }

    v14 = v13;
    v141 = [v7 stringWithFormat:@"device-library configuration changing from %@ to %@", v11, v14];
  }

  else
  {
    self->_pendingDeviceLibraryConfiguration = 0;
    self->_deviceLibraryConfiguration = 0;
    PLSetCPLDeviceLibraryConfiguration(0);
    [(PLCloudPhotoLibraryManager *)self _callDeviceLibraryConfigurationChangeRequestCompletionHandlersWithError:0];
    v10 = @"will become non-Syncable";
    if (!v5)
    {
      v10 = 0;
    }

    v141 = v10;
  }

  v15 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
  v16 = [v15 libraryBundle];
  v17 = [v16 indicatorFileCoordinator];

  [v17 logCloudServiceEnableEvent:0 serviceName:@"CPL" reason:v141];
  v18 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v20 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v20 = ;
    }

    v21 = v20;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      if (v141)
      {
        v22 = v141;
      }

      else
      {
        v22 = @"account setting changed";
      }

      if (a4 > 3)
      {
        v23 = @"unknown";
      }

      else
      {
        v23 = off_1E756B2A8[a4];
      }

      v24 = v23;
      *buf = 138412546;
      *&buf[4] = v22;
      *&buf[12] = 2114;
      *&buf[14] = v24;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "Disabling iCPL reason %@, reset mode: %{public}@", buf, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v26 = [WeakRetained cplSettings];

  [v26 setRunOnceFlag:8 error:0];
  v27 = [(PLCloudPhotoLibraryManager *)self cacheDeleteSupport];
  v28 = [v27 clearPurgeableFlagsForAllResources];

  if (v28)
  {
    if ((*v18 & 1) == 0)
    {
      v29 = self->_libraryMode;
      if (v29 == 2)
      {
        v30 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v29 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v30 = ;
      }

      v33 = v30;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "Successfully cleared all purgeable resources", buf, 2u);
      }
    }

    [v26 clearRunOnceFlag:8 error:0];
  }

  else if ((*v18 & 1) == 0)
  {
    v31 = self->_libraryMode;
    if (v31 == 2)
    {
      v32 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v31 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v32 = ;
    }

    v34 = v32;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Failed to clear all purgeable resources", buf, 2u);
    }
  }

  [(PLCloudPhotoLibraryManager *)self _resetCacheDeleteSupport];
  if (self->_foregroundMonitorIdentifier)
  {
    v35 = +[PLForegroundMonitor sharedInstance];
    [v35 stopMonitoring:self->_foregroundMonitorIdentifier];

    foregroundMonitorIdentifier = self->_foregroundMonitorIdentifier;
    self->_foregroundMonitorIdentifier = 0;
  }

  if (self->_cameraMonitorIdentifier)
  {
    v37 = +[PLForegroundMonitor sharedInstance];
    [v37 stopMonitoring:self->_cameraMonitorIdentifier];

    cameraMonitorIdentifier = self->_cameraMonitorIdentifier;
    self->_cameraMonitorIdentifier = 0;
  }

  if ((*v18 & 1) == 0)
  {
    v39 = self->_libraryMode;
    if (v39 == 2)
    {
      v40 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v39 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v40 = ;
    }

    v41 = v40;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_DEFAULT, "Disconnecting CPL delegates", buf, 2u);
    }
  }

  v42 = [(PLCloudPhotoLibraryManager *)self cplLibrary];
  [v42 setResourceProgressDelegate:0];

  v43 = [(PLCloudPhotoLibraryManager *)self cplLibrary];
  [v43 setDelegate:0];

  if ((*v18 & 1) == 0)
  {
    v44 = self->_libraryMode;
    if (v44 == 2)
    {
      v45 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v44 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v45 = ;
    }

    v46 = v45;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_DEFAULT, "Disconnecting and clearing cloud change tracker", buf, 2u);
    }
  }

  [(PLCloudPersistentHistoryChangeTracker *)self->_syncChangeTracker disconnect];
  syncChangeTracker = self->_syncChangeTracker;
  self->_syncChangeTracker = 0;

  [(PLCloudPhotoLibraryManager *)self stopLibraryScopeRulesChangeTracker];
  if ((*v18 & 1) == 0)
  {
    v48 = self->_libraryMode;
    if (v48 == 2)
    {
      v49 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v48 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v49 = ;
    }

    v50 = v49;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v50, OS_LOG_TYPE_DEFAULT, "Clearing upload array", buf, 2u);
    }
  }

  [(PLCloudBatchUploader *)self->_uploader clearUploadArray];
  uploader = self->_uploader;
  self->_uploader = 0;

  if ((*v18 & 1) == 0)
  {
    v52 = self->_libraryMode;
    if (v52 == 2)
    {
      v53 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v52 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v53 = ;
    }

    v54 = v53;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_DEFAULT, "Clearing batch downloader", buf, 2u);
    }
  }

  downloader = self->_downloader;
  self->_downloader = 0;

  if ((*v18 & 1) == 0)
  {
    v56 = self->_libraryMode;
    if (v56 == 2)
    {
      v57 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v56 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v57 = ;
    }

    v58 = v57;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_DEFAULT, "Resetting task manager", buf, 2u);
    }
  }

  [(PLCloudTaskManager *)self->_taskManager reset];
  taskManager = self->_taskManager;
  self->_taskManager = 0;

  [(PLCloudInMemoryTaskManager *)self->_inMemoryTaskManager reset];
  inMemoryTaskManager = self->_inMemoryTaskManager;
  self->_inMemoryTaskManager = 0;

  if ((*v18 & 1) == 0)
  {
    v61 = self->_libraryMode;
    if (v61 == 2)
    {
      v62 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v61 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v62 = ;
    }

    v63 = v62;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v63, OS_LOG_TYPE_DEFAULT, "Stopping resource manager", buf, 2u);
    }
  }

  v64 = [(PLCloudPhotoLibraryManager *)self resourceManager];
  [v64 stop];

  [(PLCloudPhotoLibraryManager *)self _resetResourceManager];
  if ((*v18 & 1) == 0)
  {
    v65 = self->_libraryMode;
    if (v65 == 2)
    {
      v66 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v65 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v66 = ;
    }

    v67 = v66;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v67, OS_LOG_TYPE_DEFAULT, "Deleting CPL Plist", buf, 2u);
    }
  }

  v68 = MEMORY[0x1E69BF1C0];
  v69 = [(PLCloudPhotoLibraryManager *)self pathManager];
  [v68 deleteCPLPlistWithPathManager:v69];

  v70 = "[PLCloudPhotoLibraryManager _disableiCPLWillBecomeNonSyncablePhotoLibrary:resetMode:]";
  if (a4 == 3)
  {
    v71 = MEMORY[0x1E696AEC0];
    v72 = self->_pendingDeviceLibraryConfiguration;
    if (v72 > 2)
    {
      v73 = @"unknown";
    }

    else
    {
      v73 = off_1E756E888[v72];
    }

    v74 = v73;
    v75 = [v71 stringWithFormat:@"%s - %@", "-[PLCloudPhotoLibraryManager _disableiCPLWillBecomeNonSyncablePhotoLibrary:resetMode:]", v74];
    v76 = v75;
    v70 = [v75 UTF8String];
  }

  v77 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
  v78 = [v77 databaseContext];
  v79 = [v78 newShortLivedCplLibraryWithNameSuffix:v70];

  v80 = [v79 managedObjectContext];
  [v80 setLocalOnlyDelete:1];

  v145[0] = MEMORY[0x1E69E9820];
  v145[1] = 3221225472;
  v145[2] = __86__PLCloudPhotoLibraryManager__disableiCPLWillBecomeNonSyncablePhotoLibrary_resetMode___block_invoke;
  v145[3] = &unk_1E75781E8;
  v81 = v79;
  v146 = v81;
  [v81 performTransactionAndWait:v145];
  if ((*v18 & 1) == 0)
  {
    v82 = self->_libraryMode;
    if (v82 == 2)
    {
      v83 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v82 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v83 = ;
    }

    v84 = v83;
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v84, OS_LOG_TYPE_DEFAULT, "Resetting upload tracker", buf, 2u);
    }
  }

  [(PLCloudPhotoLibraryUploadTracker *)self->_uploadTracker reset];
  uploadTracker = self->_uploadTracker;
  self->_uploadTracker = 0;

  if ((*v18 & 1) == 0)
  {
    v86 = self->_libraryMode;
    if (v86 == 2)
    {
      v87 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v86 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v87 = ;
    }

    v88 = v87;
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v88, OS_LOG_TYPE_DEFAULT, "Resetting flags", buf, 2u);
    }
  }

  v89 = 9;
  if (!v5)
  {
    v89 = 0;
  }

  self->_state = v89;
  self->_initializedMaster = 0;
  self->_pauseRequest = 0;
  self->_pauseReason = 0;
  self->_pushingAllChanges = 0;
  *&self->_icplEnabled = 0;
  self->_hasSettledInitialBatch = 0;
  [(NSMutableArray *)self->_pushAllChangesCompletionHandlers removeAllObjects];
  if ((*v18 & 1) == 0)
  {
    v90 = self->_libraryMode;
    if (v90 == 2)
    {
      v91 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v90 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v91 = ;
    }

    v92 = v91;
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v92, OS_LOG_TYPE_DEFAULT, "Deactivating local library for iCPL", buf, 2u);
    }
  }

  v93 = [MEMORY[0x1E69BF200] defaultDeviceConfiguration];
  v94 = [v93 isTV];

  [(PLCloudPhotoLibraryManager *)self _enableOpportunisticTasks];
  if ([(PLCloudPhotoLibraryManager *)self _shouldResetICloudBackupExclusionPaths])
  {
    if ((*v18 & 1) == 0)
    {
      v95 = self->_libraryMode;
      if (v95 == 2)
      {
        v96 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v95 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v96 = ;
      }

      v97 = v96;
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        v98 = [(PLCloudPhotoLibraryManager *)self pathManager];
        v99 = [v98 libraryURL];
        *buf = 138412290;
        *&buf[4] = v99;
        _os_log_impl(&dword_19BF1F000, v97, OS_LOG_TYPE_DEFAULT, "Setting iCPL-disabled exclusion flags on App Library because iCPL was disabled: %@", buf, 0xCu);
      }
    }

    v100 = [(PLCloudPhotoLibraryManager *)self pathManager];
    [v100 resetBackupExclusionPathsForBackupType:2];
  }

  v101 = [(PLCloudPhotoLibraryManager *)self cplLibrary];
  PLResetSyncStatusWithLibrary(v81, v101, a4, self->_pendingDeviceLibraryConfiguration, v94);

  v102 = [(PLCloudPhotoLibraryManager *)self cplLibrary];

  if (v102)
  {
    if ((*v18 & 1) == 0)
    {
      v103 = self->_libraryMode;
      if (v103 == 2)
      {
        v104 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v103 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v104 = ;
      }

      v105 = v104;
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v105, OS_LOG_TYPE_DEFAULT, "Deactivating CPL library", buf, 2u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v150 = __Block_byref_object_copy__11895;
    v151 = __Block_byref_object_dispose__11896;
    v152 = 0;
    v106 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &__block_literal_global_210);
    v107 = [(PLCloudPhotoLibraryManager *)self cplLibrary];
    v142[0] = MEMORY[0x1E69E9820];
    v142[1] = 3221225472;
    v142[2] = __86__PLCloudPhotoLibraryManager__disableiCPLWillBecomeNonSyncablePhotoLibrary_resetMode___block_invoke_2;
    v142[3] = &unk_1E7570470;
    v144 = buf;
    v108 = v106;
    v143 = v108;
    [v107 deactivateWithCompletionHandler:v142];

    dispatch_block_wait(v108, 0xFFFFFFFFFFFFFFFFLL);
    v109 = *v18;
    if (*(*&buf[8] + 40) && (*v18 & 1) == 0)
    {
      v110 = self->_libraryMode;
      if (v110 == 2)
      {
        v111 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v110 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v111 = ;
      }

      v112 = v111;
      if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        v113 = *(*&buf[8] + 40);
        *v147 = 138412290;
        v148 = v113;
        _os_log_impl(&dword_19BF1F000, v112, OS_LOG_TYPE_ERROR, "Unable to deactivate CPL: %@", v147, 0xCu);
      }

      v109 = *v18;
    }

    if ((v109 & 1) == 0)
    {
      v114 = self->_libraryMode;
      if (v114 == 2)
      {
        v115 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v114 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v115 = ;
      }

      v116 = v115;
      if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
      {
        *v147 = 0;
        _os_log_impl(&dword_19BF1F000, v116, OS_LOG_TYPE_DEFAULT, "Clearing CPLLibrary", v147, 2u);
      }
    }

    [(PLCloudPhotoLibraryManager *)self setCPLLibrary:0];
    [(PLCloudPhotoLibraryManager *)self setCPLStatus:0];
    [(PLCloudPhotoLibraryManager *)self setCPLConfiguration:0];

    _Block_object_dispose(buf, 8);
  }

  v117 = a4 == 3;
  v118 = [(PLCloudPhotoLibraryManager *)self pathManager];
  [v118 removeCPLDataDirectory];

  [(PLCloudPhotoLibraryManager *)self _updateBackupExclusionPathsAfterRemoveCPLDirectory];
  if (v117)
  {
    if ((*v18 & 1) == 0)
    {
      v119 = self->_libraryMode;
      if (v119 == 2)
      {
        v120 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v119 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v120 = ;
      }

      v124 = v120;
      if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
      {
        v125 = self->_deviceLibraryConfiguration;
        if (v125 > 2)
        {
          v126 = @"unknown";
        }

        else
        {
          v126 = off_1E756E888[v125];
        }

        v127 = v126;
        v128 = self->_pendingDeviceLibraryConfiguration;
        if (v128 > 2)
        {
          v129 = @"unknown";
        }

        else
        {
          v129 = off_1E756E888[v128];
        }

        v130 = v129;
        *buf = 138412546;
        *&buf[4] = v127;
        *&buf[12] = 2112;
        *&buf[14] = v130;
        _os_log_impl(&dword_19BF1F000, v124, OS_LOG_TYPE_DEFAULT, "Finished changing device-library configuration from %@ to %@", buf, 0x16u);
      }
    }

    PLSetCPLDeviceLibraryConfiguration(self->_pendingDeviceLibraryConfiguration);
    [(PLCloudPhotoLibraryManager *)self setDeviceLibraryConfiguration:self->_pendingDeviceLibraryConfiguration];
    [(PLCloudPhotoLibraryManager *)self _callDeviceLibraryConfigurationChangeRequestCompletionHandlersWithError:0];
    if ((*v18 & 1) == 0)
    {
      v131 = self->_libraryMode;
      if (v131 == 2)
      {
        v132 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v131 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v132 = ;
      }

      v139 = v132;
      if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v139, OS_LOG_TYPE_DEFAULT, "Transitioning back to after configuration change", buf, 2u);
      }
    }

    [(PLCloudPhotoLibraryManager *)self _transitionToState:1];
  }

  else
  {
    v121 = [(PLCloudPhotoLibraryManager *)self pathManager];
    [v121 removePartialVideoDirectory];

    if ((*v18 & 1) == 0)
    {
      v122 = self->_libraryMode;
      if (v122 == 2)
      {
        v123 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v122 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v123 = ;
      }

      v133 = v123;
      if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v133, OS_LOG_TYPE_DEFAULT, "Updating iCPL marker", buf, 2u);
      }
    }

    [v17 deleteCPLDownloadFinishedMarkerFilePath];
    [v17 updateICloudPhotosMarkerForEnable:0];
    if (self->_state != 9)
    {
      v134 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
      v135 = [v134 isCPLSyncablePhotoLibrary];

      if ((v135 & 1) == 0)
      {
        self->_state = 9;
        v136 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
        [v136 didBecomeNonSyncablePhotoLibrary];
      }
    }

    if ((*v18 & 1) == 0)
    {
      v137 = self->_libraryMode;
      if (v137 == 2)
      {
        v138 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v137 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v138 = ;
      }

      v140 = v138;
      if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v140, OS_LOG_TYPE_DEFAULT, "iCPL is disabled", buf, 2u);
      }
    }

    [(PLCloudPhotoLibraryManager *)self _handleStateTransistionAfterDisableiCPL];
  }
}

void __86__PLCloudPhotoLibraryManager__disableiCPLWillBecomeNonSyncablePhotoLibrary_resetMode___block_invoke(uint64_t a1)
{
  v2 = [PLGlobalValues alloc];
  v3 = [*(a1 + 32) managedObjectContext];
  v4 = [(PLGlobalValues *)v2 initWithManagedObjectContext:v3];

  [(PLGlobalValues *)v4 setCloudTrackerLastKnownCloudVersion:0];
  [(PLGlobalValues *)v4 setCloudTrackerLastKnownToken:0];
  [(PLGlobalValues *)v4 setLibraryScopeRulesTrackerLastKnownToken:0];
  [(PLGlobalValues *)v4 setCloudInitialUploadCompleted:0];
  [(PLGlobalValues *)v4 setStableHashProcessingCompleted:0];
}

void __86__PLCloudPhotoLibraryManager__disableiCPLWillBecomeNonSyncablePhotoLibrary_resetMode___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

- (void)_disableiCPLSyncWithResetMode:(int64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager _disableiCPLSyncWithResetMode:]"];
  v6 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
  v7 = [v6 libraryBundle];
  v8 = [v7 indicatorFileCoordinator];

  [v8 writeDisableICloudPhotosMarker];
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v10 = [WeakRetained cplSettings];
  [v10 setICPLEnabled:0 error:0];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __60__PLCloudPhotoLibraryManager__disableiCPLSyncWithResetMode___block_invoke;
  v18[3] = &unk_1E75781E8;
  v18[4] = self;
  [(PLCloudPhotoLibraryManager *)self _runSyncOnIsolationQueueWithBlock:v18];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v12 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v12 = ;
    }

    v13 = v12;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(PLCloudPhotoLibraryManager *)self pathManager];
      v15 = [v14 libraryURL];
      *buf = 138412290;
      v20 = v15;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Waiting for CPL to open for iCPL disable before library deletion: %@", buf, 0xCu);
    }
  }

  v16 = dispatch_block_create(0, &__block_literal_global_192_12219);
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v5 block:v16];
  dispatch_block_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  [(PLCloudPhotoLibraryManager *)self _resetDidCallBlocksWaitingForLibraryOpen];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__PLCloudPhotoLibraryManager__disableiCPLSyncWithResetMode___block_invoke_2;
  v17[3] = &unk_1E7577B90;
  v17[4] = self;
  v17[5] = a3;
  [(PLCloudPhotoLibraryManager *)self _runSyncOnIsolationQueueWithBlock:v17];
}

void *__60__PLCloudPhotoLibraryManager__disableiCPLSyncWithResetMode___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if (!result[10])
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v3 = result[12];
      if (v3 == 2)
      {
        v4 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v3 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v4 = ;
      }

      v5 = v4;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(a1 + 32) pathManager];
        v7 = [v6 libraryURL];
        v8 = 138412290;
        v9 = v7;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Opening CPL for iCPL disable before library deletion: %@", &v8, 0xCu);
      }

      result = *(a1 + 32);
    }

    return [result _transitionToState:1];
  }

  return result;
}

- (void)disableiCPLWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager disableiCPLWithCompletionHandler:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__PLCloudPhotoLibraryManager_disableiCPLWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7576F38;
  v8[4] = self;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v7 block:v8];
}

void __63__PLCloudPhotoLibraryManager_disableiCPLWithCompletionHandler___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[10] == 9)
  {
    if (*MEMORY[0x1E6994D48])
    {
      return;
    }

    v3 = v2[12];
    if (v3 == 2)
    {
      v4 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v3 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v4 = ;
    }

    v7 = v4;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Not disabling, CPL already deactivated", buf, 2u);
    }
  }

  else
  {
    v5 = [v2 libraryServicesManager];
    v6 = [v5 libraryBundle];
    v7 = [v6 indicatorFileCoordinator];

    if (([v7 isDisableICloudPhotos]& 1) != 0)
    {
      v8 = *(a1 + 32);
      if (!v8[10])
      {
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v9 = v8[12];
          if (v9 == 2)
          {
            v10 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v9 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v10 = ;
          }

          v17 = v10;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [*(a1 + 32) pathManager];
            v19 = [v18 libraryURL];
            *buf = 138412290;
            v30 = v19;
            _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Opening CPL for iCPL disable: %@", buf, 0xCu);
          }

          v8 = *(a1 + 32);
        }

        [v8 _transitionToState:1];
        v8 = *(a1 + 32);
      }

      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v20 = v8[12];
        if (v20 == 2)
        {
          v21 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v20 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v21 = ;
        }

        v22 = v21;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [*(a1 + 32) pathManager];
          v24 = [v23 libraryURL];
          *buf = 138412290;
          v30 = v24;
          _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "Waiting for CPL to open for iCPL disable: %@", buf, 0xCu);
        }

        v8 = *(a1 + 32);
      }

      v25 = *(a1 + 40);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __63__PLCloudPhotoLibraryManager_disableiCPLWithCompletionHandler___block_invoke_189;
      v26[3] = &unk_1E7576F38;
      v26[4] = v8;
      v27 = v25;
      v28 = *(a1 + 48);
      [v8 _runOnLibraryOpenWithTransaction:v27 block:v26];
    }

    else if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v11 = *(*(a1 + 32) + 96);
      if (v11 == 2)
      {
        v12 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v11 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v12 = ;
      }

      v13 = v12;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [*(a1 + 32) pathManager];
        v15 = [v14 libraryURL];
        v16 = [*(a1 + 32) _debugNameForState:*(*(a1 + 32) + 80)];
        *buf = 138412546;
        v30 = v15;
        v31 = 2114;
        v32 = v16;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Not disabling, CPL disable marker missing for library %@, state: %{public}@", buf, 0x16u);
      }
    }
  }
}

void __63__PLCloudPhotoLibraryManager_disableiCPLWithCompletionHandler___block_invoke_189(uint64_t a1)
{
  [*(a1 + 32) _resetDidCallBlocksWaitingForLibraryOpen];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__PLCloudPhotoLibraryManager_disableiCPLWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E7577C08;
  v4[4] = v2;
  v5 = *(a1 + 48);
  [v2 _runAsyncOnIsolationQueueWithTransaction:v3 block:v4];
}

uint64_t __63__PLCloudPhotoLibraryManager_disableiCPLWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _disableiCPLWillBecomeNonSyncablePhotoLibrary:0 resetMode:2];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_pause
{
  v3 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager _pause]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__PLCloudPhotoLibraryManager__pause__block_invoke;
  v4[3] = &unk_1E75781E8;
  v4[4] = self;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v3 block:v4];
}

void __36__PLCloudPhotoLibraryManager__pause__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [*(a1 + 32) _calculateUnpauseTimeForPauseTime:v2];
  v4 = [*(a1 + 32) libraryServicesManager];
  v5 = [v4 libraryBundle];
  v6 = [v5 indicatorFileCoordinator];

  [v6 createPauseMarkerWithUnpauseTime:v3 reason:*(*(a1 + 32) + 132)];
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  if ([*(a1 + 32) _canExternallyTransitionToNewLibraryStateIgnoringPause:1])
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v8 = *(*(a1 + 32) + 96);
      if (v8 == 2)
      {
        v9 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v8 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v9 = ;
      }

      v10 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = *(v11 + 132);
        v13 = [v11 _debugNameForState:*(v11 + 80)];
        v14[0] = 67109378;
        v14[1] = v12;
        v15 = 2112;
        v16 = v13;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Going to pause (%d) Cloud Photo Library from %@", v14, 0x12u);
      }
    }

    [*(a1 + 32) _doPause];
  }

  else
  {
    *(*(a1 + 32) + 128) = 1;
  }

  objc_sync_exit(v7);
}

- (void)_doPause
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  [(PLCloudPhotoLibraryManager *)self _setupTimerForUnpause];
  [(PLCloudPhotoLibraryManager *)self _transitionToState:8];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.cpl.paused", 0, 0, 1u);
}

- (void)_unpause
{
  v3 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager _unpause]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__PLCloudPhotoLibraryManager__unpause__block_invoke;
  v4[3] = &unk_1E75781E8;
  v4[4] = self;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v3 block:v4];
}

void __38__PLCloudPhotoLibraryManager__unpause__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = *(a1 + 32);
  if (*(v3 + 80) == 8)
  {
    if ([v3 _canExternallyTransitionToNewLibraryStateIgnoringPause:1])
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v4 = *(*(a1 + 32) + 96);
        if (v4 == 2)
        {
          v5 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v4 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v5 = ;
        }

        v12 = v5;
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(*(a1 + 32) + 132);
          v14[0] = 67109120;
          v14[1] = v13;
          _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Going to unpause (%d) Cloud Photo Library", v14, 8u);
        }
      }

      [*(a1 + 32) _doUnpause];
    }

    else
    {
      *(*(a1 + 32) + 128) = 2;
    }
  }

  else if (*(v3 + 128) == 1)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v6 = *(v3 + 96);
      if (v6 == 2)
      {
        v7 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v6 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v7 = ;
      }

      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14[0]) = 0;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Going to cancel previous pause request for Cloud Photo Library", v14, 2u);
      }

      v3 = *(a1 + 32);
    }

    *(v3 + 128) = 0;
    *(*(a1 + 32) + 132) = 0;
    v9 = [*(a1 + 32) libraryServicesManager];
    v10 = [v9 libraryBundle];
    v11 = [v10 indicatorFileCoordinator];

    [v11 clearPauseMarkerForReason:3];
  }

  objc_sync_exit(v2);
}

- (void)setPause:(BOOL)a3 reason:(signed __int16)a4
{
  v7 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager setPause:reason:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__PLCloudPhotoLibraryManager_setPause_reason___block_invoke;
  v8[3] = &unk_1E7566AE0;
  v9 = a4;
  v8[4] = self;
  v10 = a3;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v7 block:v8];
}

_WORD *__46__PLCloudPhotoLibraryManager_setPause_reason___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = *(a1 + 32);
  if (v2 == 3 || result[66] != 3)
  {
    if (*(a1 + 42) == 1)
    {
      if (result[66] != 3)
      {
        result[66] = v2;
        result = *(a1 + 32);
      }

      return [result _pause];
    }

    else
    {
      return [result _unpause];
    }
  }

  return result;
}

- (void)_doUnpause
{
  v15 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_isolationQueue);
  v3 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
  v4 = [v3 libraryBundle];
  v5 = [v4 indicatorFileCoordinator];

  if ([v5 clearPauseMarkerForReason:self->_pauseReason])
  {
    [(PLCloudPhotoLibraryManager *)self _stopUnpauseTimer];
    self->_pauseReason = 0;
    [(PLCloudPhotoLibraryManager *)self _transitionToState:6];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.cpl.paused", 0, 0, 1u);
  }

  else if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v8 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v8 = ;
    }

    v9 = v8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 currentPauseReason];
      pauseReason = self->_pauseReason;
      v12[0] = 67109376;
      v12[1] = v10;
      v13 = 1024;
      v14 = pauseReason;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring unpause request, currentPause reason %d, unpause reason %d", v12, 0xEu);
    }
  }
}

- (void)dealloc
{
  [(PLCloudPersistentHistoryChangeTracker *)self->_syncChangeTracker disconnect];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobileslideshow.PreferenceChanged", 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self, @"com.apple.mobileslideshow.cpl.localmodeenabledchanged", 0);
  v5.receiver = self;
  v5.super_class = PLCloudPhotoLibraryManager;
  [(PLCloudPhotoLibraryManager *)&v5 dealloc];
}

- (void)_resetCPLLibrary
{
  v3 = [(PLCloudPhotoLibraryManager *)self cplLibrary];

  if (v3)
  {
    v4 = [(PLCloudPhotoLibraryManager *)self cplLibrary];
    [v4 setResourceProgressDelegate:0];

    v5 = [(PLCloudPhotoLibraryManager *)self cplLibrary];
    [v5 setDelegate:0];

    [(PLCloudPhotoLibraryManager *)self setCPLLibrary:0];
    [(PLCloudPhotoLibraryManager *)self setCPLStatus:0];

    [(PLCloudPhotoLibraryManager *)self setCPLConfiguration:0];
  }
}

- (void)cplHasBackgroundDownloadOperationsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager cplHasBackgroundDownloadOperationsWithCompletionHandler:]"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__PLCloudPhotoLibraryManager_cplHasBackgroundDownloadOperationsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7577C08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(PLCloudPhotoLibraryManager *)self _runOnLibraryOpenWithTransaction:v5 block:v7];
}

void __86__PLCloudPhotoLibraryManager_cplHasBackgroundDownloadOperationsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cplLibrary];
  if (v2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __86__PLCloudPhotoLibraryManager_cplHasBackgroundDownloadOperationsWithCompletionHandler___block_invoke_2;
    v5[3] = &unk_1E75774A8;
    v6 = *(a1 + 40);
    [v2 checkHasBackgroundDownloadOperationsWithCompletionHandler:v5];
  }

  else
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = [PLCloudPhotoLibraryError createErrorWithType:5];
      (*(v3 + 16))(v3, 0, v4);
    }
  }
}

uint64_t __86__PLCloudPhotoLibraryManager_cplHasBackgroundDownloadOperationsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)endsSignificantWork
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(PLCloudPhotoLibraryManager *)self cplStatus];
  v4 = [v3 initialSyncDate];

  v5 = [(PLCloudPhotoLibraryManager *)self cplLibrary];
  if (v5 && self->_significantWork && (-[PLCloudPhotoLibraryManager cplLibrary](self, "cplLibrary"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 sizeOfResourcesToUpload], v6, !v7) && v4)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      libraryMode = self->_libraryMode;
      if (libraryMode == 2)
      {
        v9 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (libraryMode == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v9 = ;
      }

      v13 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Ending significant work", &v14, 2u);
      }
    }

    self->_significantWork = 0;
    [v5 noteClientIsEndingSignificantWork];
  }

  else if (self->_significantWork && (*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v10 = self->_libraryMode;
    if (v10 == 2)
    {
      v11 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v10 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v11 = ;
    }

    v12 = v11;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218240;
      v15 = [v5 sizeOfResourcesToUpload];
      v16 = 1024;
      v17 = v4 == 0;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Keeping the significant work mode, sizeOfResourcesToUpload = %llu, inInitialSync = %d", &v14, 0x12u);
    }
  }
}

- (void)beginsSignificantWorkWithResourcesSize:(unint64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [(PLCloudPhotoLibraryManager *)self cplLibrary];
  if (v5 && (PLIsEDUMode() & 1) == 0 && a3 >> 22 >= 0x19 && !self->_significantWork)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      libraryMode = self->_libraryMode;
      if (libraryMode == 2)
      {
        v7 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (libraryMode == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v7 = ;
      }

      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 134217984;
        v10 = a3 >> 20;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Starting significant work with %lluMB of resources", &v9, 0xCu);
      }
    }

    self->_significantWork = 1;
    [v5 noteClientIsBeginningSignificantWork];
  }
}

- (void)_migrateFromChangeHubToCoreDataIfNecessary
{
  if (self->_hasAttemptedMigration)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      libraryMode = self->_libraryMode;
      if (libraryMode == 2)
      {
        v4 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (libraryMode == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v4 = ;
      }

      v5 = v4;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Already attempted persistent history migration so skipping it", v6, 2u);
      }
    }
  }

  else
  {
    self->_hasAttemptedMigration = 1;

    [PLCloudPersistentHistoryMigrator migrateToPersistentHistoryIfNecessaryWithMigratorContext:self];
  }
}

- (void)_createDeletionRecordsIfNecessary
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(PLCloudPhotoLibraryManager *)self pathManager];
  v8 = 0;
  v5 = [v4 photoDirectoryWithType:14 leafType:3 createIfNeeded:0 error:&v8];
  v6 = v8;

  v7 = [v5 stringByAppendingPathComponent:@"recordstodelete.plist"];
  if ([v3 fileExistsAtPath:v7])
  {
    [(PLCloudBatchUploader *)self->_uploader uploadDeletedRecordsFromPlist:v7];
  }
}

- (void)_runOneTimeMigrationStepsIfNecessaryInLibrary:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v6 = [WeakRetained cplSettings];

  if ([v6 runOnceFlagIsSet:2])
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __76__PLCloudPhotoLibraryManager__runOneTimeMigrationStepsIfNecessaryInLibrary___block_invoke;
    v18[3] = &unk_1E75781E8;
    v19 = v6;
    [(PLCloudPhotoLibraryManager *)self _reportOptimizeSettingChangeWithCompletionHandler:v18];
  }

  if ([v6 runOnceFlagIsSet:1])
  {
    v7 = self->_handlePrefetchModeChangeGeneration + 1;
    self->_handlePrefetchModeChangeGeneration = v7;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __76__PLCloudPhotoLibraryManager__runOneTimeMigrationStepsIfNecessaryInLibrary___block_invoke_2;
    v15[3] = &unk_1E75782F8;
    v17 = v7;
    v15[4] = self;
    v16 = v6;
    [(PLCloudPhotoLibraryManager *)self _handleOptimizeSettingChangeInLibrary:v4 withCompletionHandler:v15];
  }

  if ([v6 runOnceFlagIsSet:16])
  {
    [(PLCloudPhotoLibraryManager *)self _repushVideoAssetsMetadata];
    [v6 clearRunOnceFlag:16 error:0];
  }

  if ([v6 runOnceFlagIsSet:32])
  {
    [(PLCloudPhotoLibraryManager *)self _repushMasterWithMissingMediaMetadata];
    [v6 clearRunOnceFlag:32 error:0];
  }

  if ([v6 runOnceFlagIsSet:4])
  {
    v8 = +[PLInternalResource predicateForAvailableResources];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __76__PLCloudPhotoLibraryManager__runOneTimeMigrationStepsIfNecessaryInLibrary___block_invoke_3;
    v12 = &unk_1E7578848;
    v13 = self;
    v14 = v6;
    [(PLCloudPhotoLibraryManager *)self markPurgeableResourcesMatchingPredicate:v8 urgency:0 inLibrary:v4 completionHandler:&v9];
  }

  if ([v6 runOnceFlagIsSet:{64, v9, v10, v11, v12, v13}])
  {
    [(PLCloudPhotoLibraryManager *)self _repushAssetsWithImportedByBundleIdentifier];
    [v6 clearRunOnceFlag:64 error:0];
  }

  if ([v6 runOnceFlagIsSet:128])
  {
    [v6 clearRunOnceFlag:128 error:0];
  }

  [(PLCloudPhotoLibraryManager *)self _createDeletionRecordsIfNecessary];
}

uint64_t __76__PLCloudPhotoLibraryManager__runOneTimeMigrationStepsIfNecessaryInLibrary___block_invoke_2(uint64_t result)
{
  if (*(result + 48) == *(*(result + 32) + 440))
  {
    return [*(result + 40) clearRunOnceFlag:1 error:0];
  }

  return result;
}

uint64_t __76__PLCloudPhotoLibraryManager__runOneTimeMigrationStepsIfNecessaryInLibrary___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) pathManager];
  [v2 removePartialVideoDirectory];

  v3 = *(a1 + 40);

  return [v3 clearRunOnceFlag:4 error:0];
}

- (void)_runOneTimeMigrationStepsWithoutiCPLIfNecessary
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v4 = [WeakRetained cplSettings];

  if ([v4 runOnceFlagIsSet:8])
  {
    v5 = [(PLCloudPhotoLibraryManager *)self cacheDeleteSupport];
    v6 = [v5 clearPurgeableFlagsForAllResources];

    if (v6)
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        libraryMode = self->_libraryMode;
        if (libraryMode == 2)
        {
          v8 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (libraryMode == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v8 = ;
        }

        v11 = v8;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Successfully cleared all purgeable resources", buf, 2u);
        }
      }

      [v4 clearRunOnceFlag:8 error:0];
    }

    else if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v9 = self->_libraryMode;
      if (v9 == 2)
      {
        v10 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v9 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v10 = ;
      }

      v12 = v10;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Failed to clear all purgeable resources", v13, 2u);
      }
    }
  }

  if ([v4 runOnceFlagIsSet:256])
  {
    [(PLCloudPhotoLibraryManager *)self _reconcileSharedStreamCollectionShareParticipantsWithCPLSettings:v4];
  }
}

- (void)_initializeMasterAndSizeCalculationinLibrary:(id)a3
{
  v4 = a3;
  uploadTracker = self->_uploadTracker;
  v6 = [(PLCloudPhotoLibraryManager *)self cplLibrary];
  [(PLCloudPhotoLibraryUploadTracker *)uploadTracker setupFromCPLManager:v6];

  if (!self->_initializedMaster)
  {
    if ([(PLCloudBatchUploader *)self->_uploader initialUpload])
    {
      [PLManagedAsset createMastersInLibrary:v4];
    }

    [(PLCloudPhotoLibraryUploadTracker *)self->_uploadTracker setupFromLibrary:v4 isInitialUpload:[(PLCloudBatchUploader *)self->_uploader initialUpload]];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.cpl.currenttransferprogresschange", 0, 0, 0);
    self->_initializedMaster = 1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __75__PLCloudPhotoLibraryManager__initializeMasterAndSizeCalculationinLibrary___block_invoke;
    v8[3] = &unk_1E7578848;
    v9 = v4;
    v10 = self;
    [v9 performBlockAndWait:v8];
  }
}

void __75__PLCloudPhotoLibraryManager__initializeMasterAndSizeCalculationinLibrary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) librarySizesFromDBForLibraryKindMask:32];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", 32];
  v4 = [*(a1 + 40) cplLibrary];
  v5 = [v2 objectForKey:v3];
  [v4 setEstimatedInitialSizeForLocalLibrary:{objc_msgSend(v5, "unsignedIntegerValue")}];

  v7 = 0;
  v8 = 0;
  if ([*(a1 + 32) getPhotoCount:&v8 videoCount:&v7 excludeTrashed:0 excludeInvisible:0 excludeCloudShared:1])
  {
    v6 = [*(a1 + 40) cplLibrary];
    [v6 setEstimatedInitialAssetCountForLocalLibrary:v7 + v8];
  }
}

- (void)_openCPLLibrary
{
  v88 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_isolationQueue);
  [(PLCloudPhotoLibraryManager *)self _resetCacheDeleteSupport];
  [(PLCloudPhotoLibraryManager *)self _resetResourceManager];
  [(PLCloudPhotoLibraryManager *)self _resetDidCallBlocksWaitingForLibraryOpen];
  self->_isHandlingStatusChangesNotification = 0;
  v3 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
  v4 = [v3 libraryBundle];
  v5 = [v4 indicatorFileCoordinator];

  v6 = [v5 isWipeCPLOnOpen];
  v7 = MEMORY[0x1E6994D48];
  if (v6)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      libraryMode = self->_libraryMode;
      if (libraryMode == 2)
      {
        v9 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (libraryMode == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v9 = ;
      }

      v10 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Wipe CPL on open marker detected, attempting to remove CPL directory", buf, 2u);
      }
    }

    v11 = [(PLCloudPhotoLibraryManager *)self pathManager];
    [v11 removeCPLDataDirectory];

    [(PLCloudPhotoLibraryManager *)self _updateBackupExclusionPathsAfterRemoveCPLDirectory];
    [v5 clearWipeCPLOnOpen];
  }

  v12 = +[PLAccountStore pl_sharedAccountStore];
  v13 = [v12 cachedPrimaryAppleAccount];

  if (!v13)
  {
    if ((*v7 & 1) == 0)
    {
      v16 = self->_libraryMode;
      if (v16 == 2)
      {
        v17 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v16 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v17 = ;
      }

      v28 = v17;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "No Apple Account, resetting CPL library", buf, 2u);
      }
    }

    [(PLCloudPhotoLibraryManager *)self _resetCPLLibrary];
    [(PLCloudPhotoLibraryManager *)self _callBlocksWaitingForLibraryOpen];
    self->_state = 0;
    goto LABEL_120;
  }

  if ((*v7 & 1) == 0)
  {
    v14 = self->_libraryMode;
    if (v14 == 2)
    {
      v15 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v14 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v15 = ;
    }

    v18 = v15;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Creating CPL Library", buf, 2u);
    }
  }

  v19 = [(PLCloudPhotoLibraryManager *)self cplLibrary];

  if (v19)
  {
    goto LABEL_96;
  }

  v20 = [(PLCloudPhotoLibraryManager *)self pathManager];
  v21 = [v20 cplDataDirectoryCreateIfNeeded:0];

  v22 = [v21 stringByAppendingPathComponent:@"storage"];
  v23 = [MEMORY[0x1E696AC08] defaultManager];
  v83 = 0;
  v24 = [v23 createDirectoryIfNeededAtPath:v22 error:&v83];
  v25 = v83;

  if ((v24 & 1) == 0 && (*v7 & 1) == 0)
  {
    v26 = self->_libraryMode;
    if (v26 == 2)
    {
      v27 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v26 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v27 = ;
    }

    v29 = v27;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v85 = v22;
      v86 = 2112;
      v87 = v25;
      _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Unable to create directory %@: %@", buf, 0x16u);
    }
  }

  v76 = v25;
  v30 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v21 isDirectory:1];
  v78 = v21;
  v79 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v22 isDirectory:1];
  v31 = self->_libraryMode;
  v77 = v22;
  if (v31 == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
    [WeakRetained libraryURL];
    v36 = v35 = v30;
    v32 = 1;
    v37 = [PLPhotoLibraryIdentifier photoLibraryIdentifierWithPhotoLibraryURL:v36 createIfMissing:1 error:0];

    v38 = [v37 containerIdentifier];
    v39 = [v37 uuid];
    v33 = CPLLibraryIdentifierForApp();

    v30 = v35;
  }

  else if (v31 == 1)
  {
    v33 = *MEMORY[0x1E69949A8];
    v32 = 4;
  }

  else if (v31)
  {
    v33 = 0;
    v32 = 0;
  }

  else
  {
    if (PLCloudPhotoLibraryMultiLibarySyncingEnabled_onceToken != -1)
    {
      dispatch_once(&PLCloudPhotoLibraryMultiLibarySyncingEnabled_onceToken, &__block_literal_global_60348);
    }

    if (PLCloudPhotoLibraryMultiLibarySyncingEnabled_multiLibrarySyncingEnabled)
    {
      v32 = 1049;
    }

    else
    {
      v32 = 1053;
    }

    v33 = *MEMORY[0x1E69949B0];
  }

  v40 = [(PLCloudPhotoLibraryManager *)self pathManager];
  v41 = PLCloudPhotoLibraryLocalModeEnabled(v40);

  if (v41)
  {
    v42 = [PLFakeCPLLibraryManager alloc];
    v43 = [(PLFakeCPLLibraryManager *)v42 initWithClientLibraryBaseURL:v30 cloudLibraryStateStorageURL:v79 cloudLibraryResourceStorageURL:v79 libraryIdentifier:*MEMORY[0x1E69949B0] options:v32];
    if (*v7)
    {
      goto LABEL_73;
    }

    v44 = self->_libraryMode;
    if (v44 == 2)
    {
      v45 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v44 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v45 = ;
    }

    v47 = v45;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      *buf = 138412290;
      v85 = v52;
      _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_DEFAULT, "Warning: CPLLocalMode enabled, about to connect to fake library manager instead: %@", buf, 0xCu);
    }
  }

  else
  {
    if (!v33)
    {
      v43 = 0;
      goto LABEL_73;
    }

    v46 = objc_alloc(MEMORY[0x1E6994AE8]);
    v47 = objc_loadWeakRetained(&self->_libraryServicesManager);
    [v47 mainScopeIdentifier];
    v48 = v33;
    v50 = v49 = v30;
    v43 = [v46 initWithClientLibraryBaseURL:v49 cloudLibraryStateStorageURL:v79 cloudLibraryResourceStorageURL:v79 libraryIdentifier:v48 mainScopeIdentifier:v50 options:v32];

    v30 = v49;
    v33 = v48;
  }

LABEL_73:
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _localModeEnabledChanged, @"com.apple.mobileslideshow.cpl.localmodeenabledchanged", 0, 1028);
  if (v43)
  {
    [(PLCloudPhotoLibraryManager *)self setCPLLibrary:v43];
    v54 = [(PLCloudPhotoLibraryManager *)self cplLibrary];
    [v54 setDelegate:self];

    v55 = [(PLCloudPhotoLibraryManager *)self cplLibrary];
    [v55 setResourceProgressDelegate:self];

    v56 = [(PLCloudPhotoLibraryManager *)self cplLibrary];
    [v56 setRecordComputeStateDelegate:self];

    if ((*v7 & 1) == 0)
    {
      v57 = self->_libraryMode;
      if (v57 == 2)
      {
        v58 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v57 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v58 = ;
      }

      v61 = v58;
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v62 = [(PLCloudPhotoLibraryManager *)self cplLibrary];
        [(PLCloudPhotoLibraryManager *)self cplLibrary];
        v64 = v63 = v30;
        *buf = 134218242;
        v85 = v62;
        v86 = 2112;
        v87 = v64;
        _os_log_impl(&dword_19BF1F000, v61, OS_LOG_TYPE_DEFAULT, "Created cplLibrary (%p) %@", buf, 0x16u);

        v30 = v63;
      }
    }
  }

  else
  {
    if ((*v7 & 1) == 0)
    {
      v59 = self->_libraryMode;
      if (v59 == 2)
      {
        v60 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v59 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v60 = ;
      }

      v65 = v60;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v66 = self->_libraryMode;
        *buf = 134217984;
        v85 = v66;
        _os_log_impl(&dword_19BF1F000, v65, OS_LOG_TYPE_ERROR, "Error initializing cloud photo library instance - no library identifier found for library mode: %ld", buf, 0xCu);
      }
    }

    [(PLCloudPhotoLibraryManager *)self _callBlocksWaitingForLibraryOpen];
    self->_state = 0;
  }

  if (v43)
  {
LABEL_96:
    v67 = [(PLCloudPhotoLibraryManager *)self cplLibrary];
    if ([v67 state] == 2)
    {
      if ((*v7 & 1) == 0)
      {
        v68 = self->_libraryMode;
        if (v68 == 2)
        {
          v69 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v68 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v69 = ;
        }

        v73 = v69;
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v85 = v67;
          v86 = 2112;
          v87 = v67;
          _os_log_impl(&dword_19BF1F000, v73, OS_LOG_TYPE_DEFAULT, "CPLLibrary is already open: (%p) %@", buf, 0x16u);
        }
      }

      [(PLCloudPhotoLibraryManager *)self _callBlocksWaitingForLibraryOpen];
      [(PLCloudPhotoLibraryManager *)self _transitionToState:2];
    }

    else
    {
      v70 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager _openCPLLibrary]"];
      if ((*v7 & 1) == 0)
      {
        v71 = self->_libraryMode;
        if (v71 == 2)
        {
          v72 = __CPLAppLibraryOSLogDomain();
        }

        else
        {
          if (v71 == 1)
          {
            __CPLSyndicationOSLogDomain();
          }

          else
          {
            __CPLSystemLibraryOSLogDomain();
          }
          v72 = ;
        }

        v74 = v72;
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v85 = v67;
          v86 = 2112;
          v87 = v67;
          _os_log_impl(&dword_19BF1F000, v74, OS_LOG_TYPE_DEFAULT, "Opening cplLibrary: (%p) %@", buf, 0x16u);
        }
      }

      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __45__PLCloudPhotoLibraryManager__openCPLLibrary__block_invoke;
      v80[3] = &unk_1E7566AB8;
      v80[4] = self;
      v81 = v70;
      v82 = v67;
      v75 = v70;
      [v82 openWithCompletionHandler:v80];
    }
  }

LABEL_120:
}

void __45__PLCloudPhotoLibraryManager__openCPLLibrary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__PLCloudPhotoLibraryManager__openCPLLibrary__block_invoke_2;
  v7[3] = &unk_1E7578100;
  v7[4] = v4;
  v8 = *(a1 + 48);
  v9 = v3;
  v10 = *(a1 + 40);
  v6 = v3;
  [v4 _runAsyncOnIsolationQueueWithTransaction:v5 block:v7];
}

void __45__PLCloudPhotoLibraryManager__openCPLLibrary__block_invoke_2(uint64_t a1)
{
  v81 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 96);
    if (v3 == 2)
    {
      v4 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v3 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v4 = ;
    }

    v5 = v4;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      *buf = 134218498;
      v76 = v6;
      v77 = 2112;
      v78 = v6;
      v79 = 2112;
      v80 = v7;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Opened cplLibrary (%p) %@ %@", buf, 0x20u);
    }
  }

  v8 = [*(a1 + 40) state];
  if (!*(a1 + 48) && (v8 != 3 ? (v12 = v8 == 0) : (v12 = 1), v12))
  {
    if ((*v2 & 1) == 0)
    {
      v13 = *(*(a1 + 32) + 96);
      if (v13 == 2)
      {
        v14 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v13 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v14 = ;
      }

      v26 = v14;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(a1 + 40);
        v28 = [MEMORY[0x1E6994AE8] stateDescriptionForState:v8];
        *buf = 134218498;
        v76 = v27;
        v77 = 2112;
        v78 = v27;
        v79 = 2114;
        v80 = v28;
        _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "Opened cplLibrary was already closed by iCPL disable, disregarding: (%p) %@ %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    if (PLIsErrorEqualToCode())
    {
      v9 = v8 == 2;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      if (*v2)
      {
        return;
      }

      v15 = *(*(a1 + 32) + 96);
      if (v15 == 2)
      {
        v16 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v15 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v16 = ;
      }

      v19 = v16;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 40);
        v23 = *(a1 + 48);
        *buf = 134218498;
        v76 = v22;
        v77 = 2112;
        v78 = v22;
        v79 = 2112;
        v80 = v23;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "CPL Library is already open, disregarding: (%p) %@ %@", buf, 0x20u);
      }

      goto LABEL_108;
    }

    if (!*(a1 + 48))
    {
      v17 = [*(a1 + 32) libraryServicesManager];
      v18 = [v17 databaseContext];
      v19 = [v18 newShortLivedCplLibraryWithNameSuffix:"-[PLCloudPhotoLibraryManager _openCPLLibrary]_block_invoke"];

      if (v19)
      {
        if ((*v2 & 1) == 0)
        {
          v20 = *(*(a1 + 32) + 96);
          if (v20 == 2)
          {
            v21 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v20 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v21 = ;
          }

          v29 = v21;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_DEFAULT, "Setting up CPLStatus for CacheDelete support", buf, 2u);
          }
        }

        v30 = [*(a1 + 40) syncStatus];
        [*(a1 + 32) setCPLStatus:v30];
        v31 = *(a1 + 32);
        v32 = [v31 cplLibrary];
        v33 = [v32 configuration];
        [v31 setCPLConfiguration:v33];

        [*(a1 + 32) _setupPLCPLPlistInLibrary:v19];
        [*(a1 + 32) _setReadyForAnalysisWithCPLStatus:v30];
        v34 = *(a1 + 32);
        v35 = [v34 cplConfiguration];
        [v34 _notifyCPLStatus:v30 didChange:0 andCPLConfiguration:v35];

        [*(a1 + 32) _disableaCPLAfterZoneWipedInCloudIfNecessaryWithStatus:v30 transaction:*(a1 + 56)];
        if ((*v2 & 1) == 0)
        {
          v36 = *(*(a1 + 32) + 96);
          if (v36 == 2)
          {
            v37 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v36 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v37 = ;
          }

          v38 = v37;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_DEFAULT, "Creating batch downloader", buf, 2u);
          }
        }

        v39 = [PLCloudBatchDownloader alloc];
        v40 = [*(a1 + 32) libraryServicesManager];
        v41 = [(PLCloudBatchDownloader *)v39 initWithLibraryServicesManager:v40 manager:*(a1 + 32)];
        v42 = *(a1 + 32);
        v43 = *(v42 + 16);
        *(v42 + 16) = v41;

        if ((*v2 & 1) == 0)
        {
          v44 = *(*(a1 + 32) + 96);
          if (v44 == 2)
          {
            v45 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v44 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v45 = ;
          }

          v46 = v45;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_DEFAULT, "Setting up task manager", buf, 2u);
          }
        }

        v47 = objc_alloc_init(PLCloudTaskManager);
        v48 = *(a1 + 32);
        v49 = *(v48 + 136);
        *(v48 + 136) = v47;

        v50 = objc_alloc_init(PLCloudInMemoryTaskManager);
        v51 = *(a1 + 32);
        v52 = *(v51 + 248);
        *(v51 + 248) = v50;

        v53 = [*(a1 + 32) cacheDeleteSupport];

        v54 = *v2;
        if (v53 && (*v2 & 1) == 0)
        {
          v55 = *(*(a1 + 32) + 96);
          if (v55 == 2)
          {
            v56 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v55 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v56 = ;
          }

          v57 = v56;
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_DEFAULT, "CacheDelete support is initialized", buf, 2u);
          }

          v54 = *v2;
        }

        if ((v54 & 1) == 0)
        {
          v58 = *(*(a1 + 32) + 96);
          if (v58 == 2)
          {
            v59 = __CPLAppLibraryOSLogDomain();
          }

          else
          {
            if (v58 == 1)
            {
              __CPLSyndicationOSLogDomain();
            }

            else
            {
              __CPLSystemLibraryOSLogDomain();
            }
            v59 = ;
          }

          v60 = v59;
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_DEFAULT, "Setting up foreground monitor", buf, 2u);
          }
        }

        if (!*(*(a1 + 32) + 96))
        {
          v61 = +[PLForegroundMonitor bundleIdentifiersToMonitorForSystemLibrary];
          if (v61)
          {
            v62 = v61;
            v63 = +[PLForegroundMonitor sharedInstance];
            v74[0] = MEMORY[0x1E69E9820];
            v74[1] = 3221225472;
            v74[2] = __45__PLCloudPhotoLibraryManager__openCPLLibrary__block_invoke_171;
            v74[3] = &unk_1E7567860;
            v74[4] = *(a1 + 32);
            v64 = [v63 startMonitoringBundleIdentifiers:v62 block:v74];
            v65 = *(a1 + 32);
            v66 = *(v65 + 64);
            *(v65 + 64) = v64;
          }
        }

        v67 = +[PLForegroundMonitor sharedInstance];
        v68 = PLCameraBundleIdentifiers();
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __45__PLCloudPhotoLibraryManager__openCPLLibrary__block_invoke_2_173;
        v73[3] = &unk_1E7567860;
        v73[4] = *(a1 + 32);
        v69 = [v67 startMonitoringBundleIdentifiers:v68 block:v73];
        v70 = *(a1 + 32);
        v71 = *(v70 + 72);
        *(v70 + 72) = v69;

        v72 = [*(a1 + 32) resourceManager];
        [v72 startAutomaticPrefetchAndPruneWithTimeout:1];

        *(*(a1 + 32) + 91) = 1;
        *(*(a1 + 32) + 89) = 0;
        *(*(a1 + 32) + 88) = 1;
        [*(a1 + 32) _runOneTimeMigrationStepsWithoutiCPLIfNecessary];
        [*(a1 + 32) _callBlocksWaitingForLibraryOpen];
        [*(a1 + 32) _transitionToState:2];

LABEL_108:
        return;
      }
    }

    if ((*v2 & 1) == 0)
    {
      v10 = *(*(a1 + 32) + 96);
      if (v10 == 2)
      {
        v11 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v10 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v11 = ;
      }

      v24 = v11;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 48);
        *buf = 138412290;
        v76 = v25;
        _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Error opening cloud photo library: %@", buf, 0xCu);
      }
    }

    [*(a1 + 32) _callBlocksWaitingForLibraryOpen];
    [*(a1 + 32) _transitionToState:0];
  }
}

- (void)_enableiCPL
{
  v91 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_isolationQueue);
  v76 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager _enableiCPL]"];
  if (!self->_libraryMode)
  {
    v4 = MEMORY[0x1E69BF2A0];
    v5 = [(PLCloudPhotoLibraryManager *)self pathManager];
    v6 = [v5 libraryURL];
    LOBYTE(v4) = [v4 isSystemPhotoLibraryURL:v6];

    if ((v4 & 1) == 0)
    {
      v74 = [MEMORY[0x1E696AAA8] currentHandler];
      [v74 handleFailureInMethod:a2 object:self file:@"PLCloudPhotoLibraryManager.m" lineNumber:524 description:{@"Invalid parameter not satisfying: %@", @"[PLPhotoLibraryPathManager isSystemPhotoLibraryURL:self.pathManager.libraryURL]"}];
    }
  }

  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &__block_literal_global_136);
  v8 = [(PLCloudPhotoLibraryManager *)self cplLibrary];
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = __Block_byref_object_copy__11895;
  v87 = __Block_byref_object_dispose__11896;
  v88 = 0;
  if ([(PLCloudPhotoLibraryManager *)self _libraryModeSupportsEnableiCPL])
  {
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __41__PLCloudPhotoLibraryManager__enableiCPL__block_invoke_137;
    v80[3] = &unk_1E7570470;
    v82 = &v83;
    v81 = v7;
    [v8 enableMainScopeWithCompletionHandler:v80];
  }

  if (!v8)
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41022 userInfo:0];
    v10 = v84[5];
    v84[5] = v9;

    v7[2](v7);
  }

  dispatch_block_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v11 = MEMORY[0x1E6994D48];
  if (!v84[5])
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      libraryMode = self->_libraryMode;
      if (libraryMode == 2)
      {
        v15 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (libraryMode == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v15 = ;
      }

      v18 = v15;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Updating iCPL markers", buf, 2u);
      }
    }

    v19 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
    v20 = [v19 libraryBundle];
    v16 = [v20 indicatorFileCoordinator];

    [v16 updateICloudPhotosMarkerForEnable:1];
    v21 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
    v22 = [v21 databaseContext];
    v23 = [v22 newShortLivedCplLibraryWithNameSuffix:"-[PLCloudPhotoLibraryManager _enableiCPL]"];

    self->_icplEnabled = 1;
    v24 = objc_alloc_init(PLCloudPhotoLibraryUploadTracker);
    uploadTracker = self->_uploadTracker;
    self->_uploadTracker = v24;

    v26 = [PLCloudBatchUploader alloc];
    WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
    v28 = [(PLCloudBatchUploader *)v26 initWithLibraryServicesManager:WeakRetained];
    uploader = self->_uploader;
    self->_uploader = v28;

    v30 = [MEMORY[0x1E6994B90] cplShouldGenerateDerivatives];
    if (v30 && (*v11 & 1) == 0)
    {
      v31 = self->_libraryMode;
      if (v31 == 2)
      {
        v32 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v31 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v32 = ;
      }

      v33 = v32;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "CPLShouldGenerateDerivatives is set to YES", buf, 2u);
      }
    }

    [(PLCloudBatchUploader *)self->_uploader setShouldGenerateDerivatives:v30 ^ 1u];
    v34 = [v23 globalValues];
    v35 = [v34 hasCloudInitialUploadCompleted];

    if ((*v11 & 1) == 0)
    {
      v36 = self->_libraryMode;
      if (v36 == 2)
      {
        v37 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v36 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v37 = ;
      }

      v38 = v37;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v39 = @"YES";
        if (v35)
        {
          v39 = @"NO";
        }

        *buf = 138543362;
        v90 = v39;
        _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_DEFAULT, "Setting initial upload to: %{public}@", buf, 0xCu);
      }
    }

    [(PLCloudBatchUploader *)self->_uploader setInitialUpload:v35 ^ 1u];
    if ((*v11 & 1) == 0)
    {
      v40 = self->_libraryMode;
      if (v40 == 2)
      {
        v41 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v40 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v41 = ;
      }

      v42 = v41;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_DEFAULT, "Setting up cloud change tracker", buf, 2u);
      }
    }

    v43 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
    v44 = [v43 libraryBundle];
    v45 = [v44 persistentContainer];
    v79 = 0;
    v46 = [v45 sharedPersistentStoreCoordinatorWithError:&v79];
    v75 = v79;

    if (v46)
    {
      v47 = [PLCloudPersistentHistoryChangeTracker alloc];
      v48 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
      v49 = [v48 libraryBundle];
      v50 = [(PLCloudPersistentHistoryChangeTracker *)v47 initWithPersistentStoreCoordinator:v46 libraryBundle:v49];
      syncChangeTracker = self->_syncChangeTracker;
      self->_syncChangeTracker = v50;

      [(PLCloudPersistentHistoryChangeTracker *)self->_syncChangeTracker setDelegate:self];
    }

    else if ((*v11 & 1) == 0)
    {
      v52 = self->_libraryMode;
      if (v52 == 2)
      {
        v53 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v52 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v53 = ;
      }

      v54 = v53;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v90 = v75;
        _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_ERROR, "Failed to get shared PSC: %@", buf, 0xCu);
      }
    }

    if ((*v11 & 1) == 0)
    {
      v55 = self->_libraryMode;
      if (v55 == 2)
      {
        v56 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v55 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v56 = ;
      }

      v57 = v56;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v58 = [(PLCloudPersistentHistoryChangeTracker *)self->_syncChangeTracker name];
        *buf = 138412290;
        v90 = v58;
        _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_DEFAULT, "Cloud change tracker: %@", buf, 0xCu);
      }
    }

    v59 = [v23 managedObjectContext];
    v60 = [(PLCloudPhotoLibraryManager *)self _connectToCloudChangeTrackerWithContext:v59];

    if (!v60 && (*v11 & 1) == 0)
    {
      v61 = self->_libraryMode;
      if (v61 == 2)
      {
        v62 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v61 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v62 = ;
      }

      v63 = v62;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v63, OS_LOG_TYPE_ERROR, "Failed to connect to change tracker", buf, 2u);
      }
    }

    [(PLCloudPhotoLibraryManager *)self _startLibraryScopeRulesChangeTrackerInQueue];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _photosPreferencesChanged, @"com.apple.mobileslideshow.PreferenceChanged", 0, 1028);
    [(PLCloudPhotoLibraryManager *)self _updatePendingResetSyncDate];
    if (![(PLCloudPhotoLibraryManager *)self isReadyForAnalysis]&& [(PLCloudPhotoLibraryManager *)self currentResetSyncType]!= 1)
    {
      [(PLCloudPhotoLibraryManager *)self _disableOpportunisticTasks];
    }

    if ((*v11 & 1) == 0)
    {
      v65 = self->_libraryMode;
      if (v65 == 2)
      {
        v66 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v65 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v66 = ;
      }

      v67 = v66;
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v67, OS_LOG_TYPE_DEFAULT, "Resetting counts", buf, 2u);
      }
    }

    [(PLCloudPhotoLibraryManager *)self _setToDownloadCountsForImages:0 videos:0];
    self->_boundForUploadingVideos = -1;
    self->_boundForUploadingOtherItems = -1;
    self->_boundForUploadingPhotos = -1;
    objc_initWeak(buf, self);
    v68 = MEMORY[0x1E69BDD68];
    uploadDownloadCountQueue = self->_uploadDownloadCountQueue;
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __41__PLCloudPhotoLibraryManager__enableiCPL__block_invoke_156;
    v77[3] = &unk_1E7566A90;
    v77[4] = self;
    objc_copyWeak(&v78, buf);
    v70 = [v68 setCoalescerWithLabel:@"com.apple.photos.uploaddownloadcount" queue:uploadDownloadCountQueue action:v77];
    uploadDownloadCountCoalescer = self->_uploadDownloadCountCoalescer;
    self->_uploadDownloadCountCoalescer = v70;

    v72 = [v16 isICloudPhotosPaused];
    self->_pauseReason = [v16 currentPauseReason];
    if (v72)
    {
      if ([(PLCloudPhotoLibraryManager *)self _setupTimerForUnpause])
      {
        v73 = 8;
      }

      else
      {
        v73 = 3;
      }
    }

    else
    {
      v73 = 3;
    }

    [(PLCloudPhotoLibraryManager *)self _transitionToState:v73];
    [(PLCloudPhotoLibraryManager *)self _initializeMasterAndSizeCalculationinLibrary:v23];
    [(PLCloudPhotoLibraryManager *)self _updateTransferCountsInLibrary:v23];
    [(PLCloudPhotoLibraryManager *)self _checkForPushedMastersInLibrary:v23];
    [(PLCloudPhotoLibraryManager *)self _runOneTimeMigrationStepsIfNecessaryInLibrary:v23];
    objc_destroyWeak(&v78);
    objc_destroyWeak(buf);

    goto LABEL_113;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v12 = self->_libraryMode;
    if (v12 == 2)
    {
      v13 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v12 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v13 = ;
    }

    v16 = v13;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = v84[5];
      *buf = 138412290;
      v90 = v17;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Failed to enable main scope: %@", buf, 0xCu);
    }

LABEL_113:
  }

  [v76 stillAlive];
  _Block_object_dispose(&v83, 8);
}

void __41__PLCloudPhotoLibraryManager__enableiCPL__block_invoke_137(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  (*(*(a1 + 32) + 16))();
}

void __41__PLCloudPhotoLibraryManager__enableiCPL__block_invoke_156(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) libraryServicesManager];
  v6 = [v5 databaseContext];
  v7 = [v6 newShortLivedLibraryWithName:"com.apple.photos.uploaddownloadcount.coalescer"];

  v8 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v9 = *(*(a1 + 32) + 96);
    if (v9 == 2)
    {
      v10 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v9 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v10 = ;
    }

    v11 = v10;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Revalidate unpushed/pushed asset count on idle", buf, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = [WeakRetained _hasItemToDownload];

  if (v13)
  {
    if ((*v8 & 1) == 0)
    {
      v14 = *(*(a1 + 32) + 96);
      if (v14 == 2)
      {
        v15 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v14 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v15 = ;
      }

      v16 = v15;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Recalculate updateTransferCounts", v19, 2u);
      }
    }

    v17 = objc_loadWeakRetained((a1 + 40));
    [v17 _updateTransferCountsInLibrary:v7];
  }

  v18 = objc_loadWeakRetained((a1 + 40));

  if (v18)
  {
    [v4 delayNextInvocationByTimeInterval:60.0];
  }
}

- (BOOL)_hasItemToDownload
{
  v2 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
  v3 = [v2 libraryBundle];
  v4 = [v3 indicatorFileCoordinator];

  LOBYTE(v2) = [v4 hasItemToDownload];
  return v2;
}

- (void)_updateBackupExclusionPathsAfterRemoveCPLDirectory
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v3 = [(PLCloudPhotoLibraryManager *)self pathManager];
  v4 = [v3 isUBF];

  if (v4)
  {
    if ([(PLCloudPhotoLibraryManager *)self _shouldResetICloudBackupExclusionPaths])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = [(PLCloudPhotoLibraryManager *)self pathManager];
  [v6 updateBackupExclusionPathsForBackupType:v5];
}

- (BOOL)_shouldResetICloudBackupExclusionPaths
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v3 = [(PLCloudPhotoLibraryManager *)self pathManager];
  if ([v3 isDeviceRestoreSupported] && self->_libraryMode == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
    v5 = ([WeakRetained createOptions] >> 5) & 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_initDeviceLibraryConfiguration
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_libraryMode)
  {
    v3 = 0;
    self->_deviceLibraryConfiguration = 0;
LABEL_3:
    self->_pendingDeviceLibraryConfiguration = v3;
    return;
  }

  v12 = 0;
  v3 = PLGetCPLDeviceLibraryConfiguration(&v12);
  v4 = v12;
  self->_deviceLibraryConfiguration = v3;
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = v4;
  if ([v4 integerValue] == self->_deviceLibraryConfiguration)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      libraryMode = self->_libraryMode;
      if (libraryMode == 2)
      {
        v7 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (libraryMode == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v7 = ;
      }

      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        deviceLibraryConfiguration = self->_deviceLibraryConfiguration;
        if (deviceLibraryConfiguration > 2)
        {
          v10 = @"unknown";
        }

        else
        {
          v10 = off_1E756E888[deviceLibraryConfiguration];
        }

        v11 = v10;
        *buf = 138412290;
        v14 = v11;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Clearing pending device-library configuration on init because it is the same as the current configuration: %@", buf, 0xCu);
      }
    }

    PLSetPendingCPLDeviceLibraryConfiguration(0);
  }

  self->_pendingDeviceLibraryConfiguration = [v5 integerValue];
}

- (void)_initCPLLibraryMode
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v4 = [WeakRetained isSystemPhotoLibrary];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_libraryServicesManager);
    v7 = [v6 isSyndicationPhotoLibrary];

    if (v7)
    {
      v5 = 1;
    }

    else
    {
      v8 = objc_loadWeakRetained(&self->_libraryServicesManager);
      v9 = [v8 isAppPhotoLibrary];

      if (!v9)
      {
        return;
      }

      v5 = 2;
    }
  }

  self->_libraryMode = v5;
}

- (void)_initRecoveryManager
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_lazyRecoveryManager)
    {
      v4 = @"non-null";
    }

    else
    {
      v4 = @"null";
    }

    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "PLCloudPhotoLibraryManager initializing lazy recoveryManager, was %{public}@", buf, 0xCu);
  }

  v5 = objc_initWeak(buf, self);
  v6 = objc_alloc(MEMORY[0x1E69BF270]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__PLCloudPhotoLibraryManager__initRecoveryManager__block_invoke;
  v9[3] = &unk_1E7576828;
  objc_copyWeak(&v10, buf);
  v7 = [v6 initWithBlock:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
  lazyRecoveryManager = self->_lazyRecoveryManager;
  self->_lazyRecoveryManager = v7;
}

PLManagedAssetRecoveryManager *__50__PLCloudPhotoLibraryManager__initRecoveryManager__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [PLManagedAssetRecoveryManager alloc];
    v3 = [WeakRetained libraryServicesManager];
    v4 = [(PLManagedAssetRecoveryManager *)v2 initWithLibraryServicesManager:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_resetResourceManager
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412546;
    v5 = objc_opt_class();
    v6 = 2048;
    v7 = self;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "%@ %p _resetResourceManager", &v4, 0x16u);
  }

  dispatch_assert_queue_V2(self->_isolationQueue);
  [(PLCloudPhotoLibraryManager *)self invalidateResourceManager];
  [(PLCloudPhotoLibraryManager *)self _initResourceManager];
}

- (void)_initResourceManager
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_lazyResourceManager)
    {
      v4 = @"non-null";
    }

    else
    {
      v4 = @"null";
    }

    *buf = 138543362;
    v15 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "PLCloudPhotoLibraryManager initializing lazy resourceManager, was %{public}@", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_isolationQueue);
  if (PLPlatformCloudPhotosPrefetchSupported())
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      libraryMode = self->_libraryMode;
      if (libraryMode == 2)
      {
        v6 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (libraryMode == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v6 = ;
      }

      v7 = v6;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Setting up resource manager", buf, 2u);
      }
    }

    v8 = objc_initWeak(buf, self);

    v9 = objc_alloc(MEMORY[0x1E69BF270]);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__PLCloudPhotoLibraryManager__initResourceManager__block_invoke;
    v12[3] = &unk_1E7576828;
    objc_copyWeak(&v13, buf);
    v10 = [v9 initWithBlock:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
    lazyResourceManager = self->_lazyResourceManager;
    self->_lazyResourceManager = v10;
  }
}

PLCloudResourceManager *__50__PLCloudPhotoLibraryManager__initResourceManager__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [PLCloudResourceManager alloc];
    v3 = [WeakRetained libraryServicesManager];
    v4 = [(PLCloudResourceManager *)v2 initWithCPLManager:WeakRetained libraryServicesManager:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_resetCacheDeleteSupport
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412546;
    v5 = objc_opt_class();
    v6 = 2048;
    v7 = self;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "%@ %p _resetCacheDeleteSupport", &v4, 0x16u);
  }

  dispatch_assert_queue_V2(self->_isolationQueue);
  [(PLCloudPhotoLibraryManager *)self invalidateCacheDeleteSupport];
  [(PLCloudPhotoLibraryManager *)self _initCacheDeleteSupport];
}

- (id)cacheDeleteSupport
{
  lazyCacheDeleteSupport = self->_lazyCacheDeleteSupport;
  if (!lazyCacheDeleteSupport)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PLCloudPhotoLibraryManager.m" lineNumber:412 description:{@"Invalid parameter not satisfying: %@", @"_lazyCacheDeleteSupport != nil"}];

    lazyCacheDeleteSupport = self->_lazyCacheDeleteSupport;
  }

  v4 = [(PLLazyObject *)lazyCacheDeleteSupport objectValue];
  if (!v4)
  {
    v5 = PLPhotosObjectLifecycleGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "PLCloudPhotoLibraryManager requesting cacheDeleteSupport after it has been invalidated", buf, 2u);
    }
  }

  return v4;
}

- (void)_initCacheDeleteSupport
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_lazyCacheDeleteSupport)
    {
      v4 = @"non-null";
    }

    else
    {
      v4 = @"null";
    }

    *buf = 138543362;
    v15 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "PLCloudPhotoLibraryManager initializing lazy cacheDeleteSupport, was %{public}@", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_isolationQueue);
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v6 = objc_initWeak(buf, self);

  v7 = objc_alloc(MEMORY[0x1E69BF270]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__PLCloudPhotoLibraryManager__initCacheDeleteSupport__block_invoke;
  v11[3] = &unk_1E7573318;
  objc_copyWeak(&v13, buf);
  v8 = WeakRetained;
  v12 = v8;
  v9 = [v7 initWithBlock:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
  lazyCacheDeleteSupport = self->_lazyCacheDeleteSupport;
  self->_lazyCacheDeleteSupport = v9;
}

PLCacheDeleteSupport *__53__PLCloudPhotoLibraryManager__initCacheDeleteSupport__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [PLCacheDeleteSupport alloc];
    v4 = *(a1 + 32);
    v5 = [WeakRetained cplStatus];
    v6 = [(PLCacheDeleteSupport *)v3 initWithLibraryServicesManager:v4 cplStatus:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PLPhotoLibraryPathManager)pathManager
{
  v2 = [(PLCloudPhotoLibraryManager *)self libraryServicesManager];
  v3 = [v2 pathManager];

  return v3;
}

- (void)enableiCPLWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v6 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v6 = ;
    }

    v7 = v6;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Enabling iCPL", buf, 2u);
    }
  }

  v8 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager enableiCPLWithCompletionHandler:]"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__PLCloudPhotoLibraryManager_enableiCPLWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E7577C08;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [(PLCloudPhotoLibraryManager *)self _runAsyncOnIsolationQueueWithTransaction:v8 block:v10];
}

void __62__PLCloudPhotoLibraryManager_enableiCPLWithCompletionHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) libraryServicesManager];
  v3 = [v2 libraryBundle];
  v4 = [v3 indicatorFileCoordinator];

  [v4 logCloudServiceEnableEvent:1 serviceName:@"CPL" reason:0];
  v5 = *(a1 + 32);
  if (*(v5 + 89) == 1)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v6 = *(v5 + 96);
      if (v6 == 2)
      {
        v7 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v6 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v7 = ;
      }

      v12 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "iCPL already enabled, skip enabling again", &v18, 2u);
      }
    }
  }

  else if (*(v5 + 80) == 6)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v8 = *(v5 + 96);
      if (v8 == 2)
      {
        v9 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v8 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v9 = ;
      }

      v13 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Checking enable state while idle", &v18, 2u);
      }

      v5 = *(a1 + 32);
    }

    [v5 _checkEnableState];
  }

  else
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v10 = *(v5 + 96);
      if (v10 == 2)
      {
        v11 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v10 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v11 = ;
      }

      v14 = v11;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [*(a1 + 32) _debugNameForState:*(*(a1 + 32) + 80)];
        v18 = 138412290;
        v19 = v15;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Currently in state %@, will check enable state while idle", &v18, 0xCu);
      }

      v5 = *(a1 + 32);
    }

    *(v5 + 88) = 1;
    v16 = *(a1 + 32);
    if (!v16[10])
    {
      [v16 _transitionToState:1];
    }
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))();
  }
}

- (int64_t)sizeOfResourcesToUploadByCPL:(id *)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = [(PLCloudPhotoLibraryManager *)self cplLibrary];
  v5 = v4;
  if (v4 && [v4 state] == 2)
  {
    v6 = [v5 sizeOfResourcesToUpload];
  }

  else
  {
    if (a3)
    {
      v7 = MEMORY[0x1E696ABC0];
      v8 = *MEMORY[0x1E6994990];
      v11 = *MEMORY[0x1E696A578];
      v12[0] = @"CPL hasn't been setup yet";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      *a3 = [v7 errorWithDomain:v8 code:2 userInfo:v9];
    }

    v6 = -1;
  }

  return v6;
}

- (void)setCPLLibrary:(id)a3
{
  v4 = a3;
  v3 = v4;
  PLRunWithUnfairLock();
}

- (id)cplLibrary
{
  v2 = PLResultWithUnfairLock();

  return v2;
}

- (void)invalidateUploadDownloadCountCoalescer
{
  [(PFCoalescer *)self->_uploadDownloadCountCoalescer resetAndShutDown];
  uploadDownloadCountCoalescer = self->_uploadDownloadCountCoalescer;
  self->_uploadDownloadCountCoalescer = 0;
}

- (void)invalidate
{
  v3 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    libraryMode = self->_libraryMode;
    if (libraryMode == 2)
    {
      v5 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (libraryMode == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v5 = ;
    }

    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "invalidate PLCloudPhotoLibraryManager, will invalidate resourceManager, cacheDeleteSupport, recoveryManager, and uploadDownloadCountCoalescer.", buf, 2u);
    }
  }

  [(PLCloudPhotoLibraryManager *)self invalidateResourceManager];
  [(PLCloudPhotoLibraryManager *)self invalidateCacheDeleteSupport];
  [(PLCloudPhotoLibraryManager *)self invalidateRecoveryManager];
  [(PLCloudPhotoLibraryManager *)self invalidateUploadDownloadCountCoalescer];
  if ((*v3 & 1) == 0)
  {
    v7 = self->_libraryMode;
    if (v7 == 2)
    {
      v8 = __CPLAppLibraryOSLogDomain();
    }

    else
    {
      if (v7 == 1)
      {
        __CPLSyndicationOSLogDomain();
      }

      else
      {
        __CPLSystemLibraryOSLogDomain();
      }
      v8 = ;
    }

    v9 = v8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "PLCloudPhotoLibraryManager invalidation complete", v10, 2u);
    }
  }
}

- (PLCloudPhotoLibraryManager)initWithLibraryServicesManager:(id)a3
{
  v5 = a3;
  v35.receiver = self;
  v35.super_class = PLCloudPhotoLibraryManager;
  v6 = [(PLCloudPhotoLibraryManager *)&v35 init];
  if (v6)
  {
    if ((PLIsAssetsd() & 1) == 0 && (PLIsInternalTool() & 1) == 0)
    {
      v29 = [MEMORY[0x1E696AAA8] currentHandler];
      [v29 handleFailureInMethod:a2 object:v6 file:@"PLCloudPhotoLibraryManager.m" lineNumber:253 description:@"only assetsd"];
    }

    objc_storeWeak(v6 + 58, v5);
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v7 = *(v6 + 12);
      if (v7 == 2)
      {
        v8 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v7 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v8 = ;
      }

      v9 = v8;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Initialize PLCPLLibraryManager", buf, 2u);
      }
    }

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = pl_dispatch_queue_create_with_fallback_qos();
    v12 = *(v6 + 7);
    *(v6 + 7) = v11;

    v13 = dispatch_queue_create("upload-download-count-update", 0);
    v14 = *(v6 + 25);
    *(v6 + 25) = v13;

    v15 = PLCloudCopyDefaultSerialQueueAttributes();
    v16 = dispatch_queue_create("com.apple.plcplstatus", v15);
    v17 = *(v6 + 33);
    *(v6 + 33) = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = *(v6 + 36);
    *(v6 + 36) = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = *(v6 + 39);
    *(v6 + 39) = v20;

    *(v6 + 87) = 0;
    *(v6 + 40) = 0;
    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = pl_dispatch_queue_create_with_fallback_qos();
    v24 = *(v6 + 50);
    *(v6 + 50) = v23;

    *(v6 + 344) = 0;
    *(v6 + 55) = 0;
    [v6 _initCPLLibraryMode];
    [v6 _initDeviceLibraryConfiguration];
    [v6 _initRecoveryManager];
    v25 = *(v6 + 7);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__PLCloudPhotoLibraryManager_initWithLibraryServicesManager___block_invoke;
    block[3] = &unk_1E75781E8;
    v26 = v6;
    v33 = v26;
    dispatch_async(v25, block);
    v27 = [v5 cplReadiness];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __61__PLCloudPhotoLibraryManager_initWithLibraryServicesManager___block_invoke_2;
    v30[3] = &unk_1E75781E8;
    v31 = v26;
    [v27 performOnceLibraryIsReadyForCPLManager:v30];
  }

  return v6;
}

uint64_t __61__PLCloudPhotoLibraryManager_initWithLibraryServicesManager___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _initCacheDeleteSupport];
  v2 = *(a1 + 32);

  return [v2 _initResourceManager];
}

void __61__PLCloudPhotoLibraryManager_initWithLibraryServicesManager___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 80) != 9)
  {
    *(v2 + 80) = 0;
  }

  v3 = +[PLAccountStore pl_sharedAccountStore];
  v4 = [v3 cachedPrimaryAppleAccount];

  if (v4)
  {
    v5 = PLIsEDUMode();
    v6 = *(a1 + 32);
    if (v5 && !v6[12])
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v7 = __CPLSystemLibraryOSLogDomain();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v4 appleID];
          *buf = 138412290;
          v22 = v8;
          _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "EDU Mode: Registering user switch stakeholder for user: %@", buf, 0xCu);
        }
      }

      v9 = objc_alloc_init(PLCloudPhotoLibraryUserSwitchHandler);
      v10 = *(a1 + 32);
      v11 = *(v10 + 272);
      *(v10 + 272) = v9;

      [*(*(a1 + 32) + 272) setSessionHandler:?];
      v6 = *(a1 + 32);
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __61__PLCloudPhotoLibraryManager_initWithLibraryServicesManager___block_invoke_97;
    v19[3] = &unk_1E75781E8;
    v20 = v6;
    [v20 _runSyncOnIsolationQueueWithBlock:v19];
    v12 = v20;
  }

  else
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v13 = *(*(a1 + 32) + 96);
      if (v13 == 2)
      {
        v14 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v13 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v14 = ;
      }

      v15 = v14;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "No Apple Account, skip opening cloud photo library at init time", buf, 2u);
      }
    }

    v12 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudPhotoLibraryManager initWithLibraryServicesManager:]_block_invoke"];
    v16 = *(a1 + 32);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __61__PLCloudPhotoLibraryManager_initWithLibraryServicesManager___block_invoke_2_99;
    v17[3] = &unk_1E75781E8;
    v18 = v16;
    [v18 _runAsyncOnIsolationQueueWithTransaction:v12 block:v17];
  }
}

uint64_t __61__PLCloudPhotoLibraryManager_initWithLibraryServicesManager___block_invoke_97(uint64_t result)
{
  v3 = *(result + 32);
  if (!*(v3 + 80))
  {
    v9 = v1;
    v10 = v2;
    v4 = result;
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v5 = *(v3 + 96);
      if (v5 == 2)
      {
        v6 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v5 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v6 = ;
      }

      v7 = v6;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Opening CPL library after ready for CPL", v8, 2u);
      }

      v3 = *(v4 + 32);
    }

    *(v3 + 80) = 1;
    return [*(v4 + 32) _openCPLLibrary];
  }

  return result;
}

void __61__PLCloudPhotoLibraryManager_initWithLibraryServicesManager___block_invoke_2_99(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryServicesManager];
  v3 = [v2 libraryBundle];
  v4 = [v3 indicatorFileCoordinator];

  if ([v4 isDisableICloudPhotos])
  {
    v5 = MEMORY[0x1E6994D48];
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v6 = *(*(a1 + 32) + 96);
      if (v6 == 2)
      {
        v7 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v6 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v7 = ;
      }

      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Found disable marker, will reset and stop Cloud Photo Library", buf, 2u);
      }
    }

    v9 = [*(a1 + 32) libraryServicesManager];
    [v9 setICloudPhotosEnabledInternal:0];

    v10 = [*(a1 + 32) cacheDeleteSupport];

    if (v10 && (*v5 & 1) == 0)
    {
      v11 = *(*(a1 + 32) + 96);
      if (v11 == 2)
      {
        v12 = __CPLAppLibraryOSLogDomain();
      }

      else
      {
        if (v11 == 1)
        {
          __CPLSyndicationOSLogDomain();
        }

        else
        {
          __CPLSystemLibraryOSLogDomain();
        }
        v12 = ;
      }

      v13 = v12;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "No user account, but cacheDeleteSupport is now available", v14, 2u);
      }
    }

    [*(a1 + 32) _disableiCPLWillBecomeNonSyncablePhotoLibrary:0 resetMode:2];
  }

  else
  {
    [*(a1 + 32) _callBlocksWaitingForLibraryOpen];
  }
}

+ (BOOL)needResetSyncErrorType:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isCPLErrorWithCode:1] & 1) == 0)
  {
    if ([v3 isCPLErrorWithCode:20])
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 isCPLErrorWithCode:21];
    }
  }

  if ([v3 isCPLErrorWithCode:1])
  {
    v5 = @"Library version mismatch";
LABEL_11:
    [MEMORY[0x1E6994B88] registerLikelyResetReason:v5];
    goto LABEL_12;
  }

  if ([v3 isCPLErrorWithCode:20])
  {
    v5 = @"Client cache is invalid";
    goto LABEL_11;
  }

  if ([v3 isCPLErrorWithCode:21])
  {
    v5 = @"Cloud cache is invalid";
    goto LABEL_11;
  }

LABEL_12:

  return v4;
}

+ (id)_lastKnownCloudVersionInLibrary:(id)a3
{
  v3 = a3;
  v4 = [PLGlobalValues alloc];
  v5 = [v3 managedObjectContext];

  v6 = [(PLGlobalValues *)v4 initWithManagedObjectContext:v5];
  v7 = [(PLGlobalValues *)v6 cloudTrackerLastKnownCloudVersion];

  return v7;
}

@end