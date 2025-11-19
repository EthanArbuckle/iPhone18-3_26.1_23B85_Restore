@interface PLGlobalValues
+ (id)searchIndexSpotlightClientStateDataWithDictionary:(id)a3;
+ (id)searchIndexSpotlightClientStateDictionaryWithIdentifier:(id)a3 timestamp:(id)a4;
+ (id)searchIndexSpotlightClientStateWithData:(id)a3;
+ (void)setJournalRebuildRequired:(BOOL)a3 managedObjectContext:(id)a4;
+ (void)setLibraryCreateOptions:(unint64_t)a3 managedObjectContext:(id)a4;
- (BOOL)_isNewLibraryOrRebuildWithPathManager:(id)a3;
- (BOOL)backgroundJobServiceNeedsProcessing;
- (BOOL)didImportFileSystemAssets;
- (BOOL)hasCloudInitialUploadCompleted;
- (BOOL)hasStableHashProcessingCompleted;
- (BOOL)isInitialDuplicateDetectorProcessingCompleted;
- (BOOL)isJournalRebuildRequired;
- (BOOL)isRebuildComplete;
- (BOOL)markRebuildPhaseCompleted:(unint64_t)a3;
- (BOOL)rebuildWorkIsRequiredForEntity:(unint64_t)a3;
- (BOOL)shouldDropGlobalSpotlightIndexForLibraryIdentifier:(int64_t)a3;
- (BOOL)shouldPrefetchWidgetResources;
- (NSDate)_deprecated_lastFullIndexSyndicationSyncDate;
- (NSDate)dateOfLastExternalAvailabilitySignal;
- (NSDate)inProgressFullIndexSyndicationSyncDate;
- (NSDate)lastAttachmentSyndicationSyncDate;
- (NSDate)lastChatSyndicationSyncDate;
- (NSDate)lastCompletePrefetchDate;
- (NSDate)lastDeleteSyndicationSyncDate;
- (NSDate)lastFullIndexSyndicationSyncStartDate;
- (NSDate)lastInitialDuplicateDetectorProcessingCompletedDate;
- (NSDate)libraryReadyForAnalysisDate;
- (NSDate)locationOfInterestUpdateDate;
- (NSDate)mediaAnalysisEmbeddingVersionBumpDate;
- (NSDate)memoriesCreationPreviewAvailableDate;
- (NSDate)searchFeatureReadyDate;
- (NSDate)searchIndexRebuildEndDate;
- (NSDate)searchIndexRebuildStartDate;
- (NSDate)syndicationPrefetchDownloadThrottlingDate;
- (NSDate)syndicationStartDate;
- (NSDate)timeOfLastFeatureAvailabilityJob;
- (NSDictionary)featureAvailability;
- (NSDictionary)greenValues;
- (NSDictionary)searchIndexSpotlightClientState;
- (NSManagedObjectID)searchIndexRebuildResumeObjectID;
- (NSManagedObjectID)stableHashResumeObjectID;
- (NSNumber)featureAvailabilityJobDidFail;
- (NSNumber)greenTeaContactsAuthorization;
- (NSNumber)guestAssetSyncStatus;
- (NSNumber)mediaAnalysisEmbeddingVersion;
- (NSNumber)orphanedSceneClassificationsCount;
- (NSNumber)searchFeatureReadyFraction;
- (NSNumber)searchIndexEmbeddingModelVersion;
- (NSNumber)searchIndexFeatureSettings;
- (NSNumber)searchIndexRebuildCoalescedReasons;
- (NSNumber)searchIndexRebuildRequiredExternalReasons;
- (NSNumber)searchIndexSpotlightClientStateMismatchedCount;
- (NSNumber)searchIndexSpotlightClientStateMissingCount;
- (NSNumber)searchIndexStatus;
- (NSNumber)searchIndexUtilityTypeClassifierVersion;
- (NSNumber)searchIndexVersion;
- (NSPersistentHistoryToken)lastGuestAssetSyncToken;
- (NSString)cloudTrackerLastKnownCloudVersion;
- (NSString)guestAssetInitialSyncResumeMarker;
- (NSString)lastGuestAssetSyncTargetLibraryPath;
- (NSString)lastUpdatedGraphLabelsAgainstPLSImageUUID;
- (NSString)localeIdentifier;
- (NSString)personSyncResumeMarker;
- (NSString)personSyncState;
- (NSString)searchIndexLocaleIdentifier;
- (NSString)searchIndexRebuildResumeMarker;
- (NSString)searchIndexSceneTaxonomySHA;
- (PLGlobalValues)initWithManagedObjectContext:(id)a3;
- (char)duplicateProcessingStatus;
- (double)searchIndexRebuildTimeIsRebuildInProgress:(BOOL *)a3;
- (double)searchIndexUptimeIsRebuildInProgress:(BOOL *)a3;
- (double)syndicationSyncRangeDenominator;
- (id)_getValueUsingPerformBlockAndWait:(id)a3;
- (id)_lastKnownTransactionTokenWithTransactionNumberKey:(id)a3 andStoreUUIDKey:(id)a4;
- (id)searchIndexSpotlightClientStateData;
- (int64_t)importFilesystemAssetsState;
- (unint64_t)libraryCreateOptions;
- (unint64_t)searchIndexRebuildReasonsWithSceneTaxonomyDigests:(id)a3 spotlightRequestedRebuild:(BOOL)a4 pathManager:(id)a5;
- (unint64_t)searchIndexingEntityToRebuild;
- (unint64_t)unpackedSearchIndexFeatureSettings;
- (unint64_t)unpackedSearchIndexRebuildCoalescedReasons;
- (unint64_t)unpackedSearchIndexRebuildRequiredExternalReasons;
- (unint64_t)unpackedSearchIndexStatus;
- (void)_setBackgroundJobServiceNeedsProcessing:(BOOL)a3;
- (void)_setImportFilesystemAssetsState:(int64_t)a3;
- (void)_setLastKnownTransactionToken:(id)a3 withTransactionNumberKey:(id)a4 andStoreUUIDKey:(id)a5;
- (void)_setRebuildComplete;
- (void)_setValueUsingPerformBlockAndWait:(id)a3 responsibleCaller:(const char *)a4;
- (void)addRebuildRequiredExternalReasons:(unint64_t)a3;
- (void)addSearchIndexRebuildCoalescedReasons:(unint64_t)a3;
- (void)clearRebuildFinishedFlags;
- (void)dontImportFileSystemDataIntoDatabase;
- (void)incrementSpotlightClientStateMismatchedCount;
- (void)incrementSpotlightClientStateMissingCount;
- (void)resetSearchIndexRebuildMetadataWithSceneTaxonomyDigests:(id)a3;
- (void)setBackgroundJobServiceNeedsProcessing:(BOOL)a3;
- (void)setCloudInitialUploadCompleted:(BOOL)a3;
- (void)setCloudTrackerLastKnownCloudVersion:(id)a3;
- (void)setDateOfLastExternalAvailabilitySignal:(id)a3;
- (void)setDuplicateProcessingStatus:(char)a3;
- (void)setFeatureAvailability:(id)a3;
- (void)setFeatureAvailabilityJobDidFail:(id)a3;
- (void)setGreenTeaContactsAuthorization:(id)a3;
- (void)setGreenValues:(id)a3;
- (void)setGuestAssetInitialSyncResumeMarker:(id)a3;
- (void)setGuestAssetSyncStatus:(id)a3;
- (void)setImportFilesystemAssetsState:(int64_t)a3;
- (void)setInProgressFullIndexSyndicationSyncDate:(id)a3;
- (void)setJournalRebuildRequired:(BOOL)a3;
- (void)setLastAttachmentSyndicationSyncDate:(id)a3;
- (void)setLastChatSyndicationSyncDate:(id)a3;
- (void)setLastCompletePrefetchDate:(id)a3;
- (void)setLastDeleteSyndicationSyncDate:(id)a3;
- (void)setLastFullIndexSyndicationSyncStartDate:(id)a3;
- (void)setLastGuestAssetSyncTargetLibraryPath:(id)a3;
- (void)setLastGuestAssetSyncToken:(id)a3;
- (void)setLastInitialDuplicateDetectorProcessingCompletedDate:(id)a3;
- (void)setLastUpdatedGraphLabelsAgainstPLSImageUUID:(id)a3;
- (void)setLibraryReadyForAnalysisDate:(id)a3;
- (void)setLocaleIdentifier:(id)a3;
- (void)setLocationOfInterestUpdateDate:(id)a3;
- (void)setMediaAnalysisEmbeddingVersion:(id)a3;
- (void)setMediaAnalysisEmbeddingVersionBumpDate:(id)a3;
- (void)setMemoriesCreationPreviewAvailableDate:(id)a3;
- (void)setOrphanedSceneClassificationsCount:(id)a3;
- (void)setPersonSyncResumeMarker:(id)a3;
- (void)setPersonSyncState:(id)a3;
- (void)setRebuildComplete;
- (void)setSearchFeatureReadyDate:(id)a3;
- (void)setSearchFeatureReadyFraction:(id)a3;
- (void)setSearchIndexEmbeddingModelVersion:(id)a3;
- (void)setSearchIndexFeatureSettings:(id)a3;
- (void)setSearchIndexLocaleIdentifier:(id)a3;
- (void)setSearchIndexRebuildCoalescedReasons:(id)a3;
- (void)setSearchIndexRebuildEndDate:(id)a3;
- (void)setSearchIndexRebuildRequiredExternalReasons:(id)a3;
- (void)setSearchIndexRebuildResumeMarker:(id)a3;
- (void)setSearchIndexRebuildResumeObjectID:(id)a3;
- (void)setSearchIndexRebuildStartDate:(id)a3;
- (void)setSearchIndexSceneTaxonomySHA:(id)a3;
- (void)setSearchIndexSpotlightClientState:(id)a3;
- (void)setSearchIndexSpotlightClientStateMismatchedCount:(id)a3;
- (void)setSearchIndexSpotlightClientStateMissingCount:(id)a3;
- (void)setSearchIndexStatus:(id)a3;
- (void)setSearchIndexUtilityTypeClassifierVersion:(id)a3;
- (void)setSearchIndexVersion:(id)a3;
- (void)setStableHashProcessingCompleted:(BOOL)a3;
- (void)setStableHashResumeObjectID:(id)a3;
- (void)setSyndicationPrefetchDownloadThrottlingDate:(id)a3;
- (void)setSyndicationStartDate:(id)a3;
- (void)setSyndicationSyncRangeDenominator:(double)a3;
- (void)setTimeOfLastFeatureAvailabilityJob:(id)a3;
- (void)setWidgetTimelineGeneratedForDisplaySize:(CGSize)a3;
@end

@implementation PLGlobalValues

- (NSDictionary)featureAvailability
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__PLGlobalValues_featureAvailability__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (unint64_t)libraryCreateOptions
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__PLGlobalValues_libraryCreateOptions__block_invoke;
  v5[3] = &unk_1E75787F8;
  v5[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v5];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)_setValueUsingPerformBlockAndWait:(id)a3 responsibleCaller:(const char *)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__PLGlobalValues__setValueUsingPerformBlockAndWait_responsibleCaller___block_invoke;
  v8[3] = &unk_1E7575338;
  v8[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  [PLManagedObjectContext _pl_megamoc_runWithPerformWarningsSuppressed:v8];
}

void __70__PLGlobalValues__setValueUsingPerformBlockAndWait_responsibleCaller___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__PLGlobalValues__setValueUsingPerformBlockAndWait_responsibleCaller___block_invoke_2;
  v4[3] = &unk_1E7575338;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 pl_performBlockAndWait:v4];
}

void __70__PLGlobalValues__setValueUsingPerformBlockAndWait_responsibleCaller___block_invoke_2(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  (*(a1[5] + 16))();
  v2 = [*(a1[4] + 16) photoLibrary];
  v3 = v2;
  if (!v2 || ![v2 pendingTransactions])
  {
    v4 = *(a1[4] + 16);
    v9 = 0;
    v5 = [v4 save:&v9];
    v6 = v9;
    if ((v5 & 1) == 0)
    {
      v7 = PLBackendGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = a1[6];
        *buf = 136446466;
        v11 = v8;
        v12 = 2112;
        v13 = v6;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Error setting value from caller: %{public}s, error: %@", buf, 0x16u);
      }
    }
  }
}

- (id)_getValueUsingPerformBlockAndWait:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5028;
  v15 = __Block_byref_object_dispose__5029;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__PLGlobalValues__getValueUsingPerformBlockAndWait___block_invoke;
  v8[3] = &unk_1E7577918;
  v8[4] = self;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [PLManagedObjectContext _pl_megamoc_runWithPerformWarningsSuppressed:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __52__PLGlobalValues__getValueUsingPerformBlockAndWait___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__PLGlobalValues__getValueUsingPerformBlockAndWait___block_invoke_2;
  v4[3] = &unk_1E7573998;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 pl_performBlockAndWait:v4];
}

void __52__PLGlobalValues__getValueUsingPerformBlockAndWait___block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSDate)locationOfInterestUpdateDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__PLGlobalValues_locationOfInterestUpdateDate__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setLocationOfInterestUpdateDate:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__PLGlobalValues_setLocationOfInterestUpdateDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setLocationOfInterestUpdateDate:]"];
}

- (NSDate)libraryReadyForAnalysisDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__PLGlobalValues_libraryReadyForAnalysisDate__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setLibraryReadyForAnalysisDate:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PLGlobalValues_setLibraryReadyForAnalysisDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setLibraryReadyForAnalysisDate:]"];
}

- (NSDate)mediaAnalysisEmbeddingVersionBumpDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__PLGlobalValues_mediaAnalysisEmbeddingVersionBumpDate__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setMediaAnalysisEmbeddingVersionBumpDate:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__PLGlobalValues_setMediaAnalysisEmbeddingVersionBumpDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setMediaAnalysisEmbeddingVersionBumpDate:]"];
}

- (NSNumber)mediaAnalysisEmbeddingVersion
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__PLGlobalValues_mediaAnalysisEmbeddingVersion__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setMediaAnalysisEmbeddingVersion:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PLGlobalValues_setMediaAnalysisEmbeddingVersion___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setMediaAnalysisEmbeddingVersion:]"];
}

- (NSDate)dateOfLastExternalAvailabilitySignal
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__PLGlobalValues_dateOfLastExternalAvailabilitySignal__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setDateOfLastExternalAvailabilitySignal:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__PLGlobalValues_setDateOfLastExternalAvailabilitySignal___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setDateOfLastExternalAvailabilitySignal:]"];
}

- (NSDate)memoriesCreationPreviewAvailableDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__PLGlobalValues_memoriesCreationPreviewAvailableDate__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setMemoriesCreationPreviewAvailableDate:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__PLGlobalValues_setMemoriesCreationPreviewAvailableDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setMemoriesCreationPreviewAvailableDate:]"];
}

- (NSNumber)searchFeatureReadyFraction
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__PLGlobalValues_searchFeatureReadyFraction__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setSearchFeatureReadyFraction:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__PLGlobalValues_setSearchFeatureReadyFraction___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setSearchFeatureReadyFraction:]"];
}

- (NSDate)searchFeatureReadyDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__PLGlobalValues_searchFeatureReadyDate__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setSearchFeatureReadyDate:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__PLGlobalValues_setSearchFeatureReadyDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setSearchFeatureReadyDate:]"];
}

- (NSNumber)featureAvailabilityJobDidFail
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__PLGlobalValues_featureAvailabilityJobDidFail__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setFeatureAvailabilityJobDidFail:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PLGlobalValues_setFeatureAvailabilityJobDidFail___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setFeatureAvailabilityJobDidFail:]"];
}

- (NSDate)timeOfLastFeatureAvailabilityJob
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__PLGlobalValues_timeOfLastFeatureAvailabilityJob__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setTimeOfLastFeatureAvailabilityJob:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__PLGlobalValues_setTimeOfLastFeatureAvailabilityJob___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setTimeOfLastFeatureAvailabilityJob:]"];
}

- (void)setFeatureAvailability:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__PLGlobalValues_setFeatureAvailability___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setFeatureAvailability:]"];
}

- (NSString)lastUpdatedGraphLabelsAgainstPLSImageUUID
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__PLGlobalValues_lastUpdatedGraphLabelsAgainstPLSImageUUID__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setLastUpdatedGraphLabelsAgainstPLSImageUUID:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__PLGlobalValues_setLastUpdatedGraphLabelsAgainstPLSImageUUID___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setLastUpdatedGraphLabelsAgainstPLSImageUUID:]"];
}

- (void)setSearchIndexRebuildCoalescedReasons:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__PLGlobalValues_setSearchIndexRebuildCoalescedReasons___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setSearchIndexRebuildCoalescedReasons:]"];
}

- (NSNumber)searchIndexRebuildCoalescedReasons
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__PLGlobalValues_searchIndexRebuildCoalescedReasons__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setSearchIndexRebuildRequiredExternalReasons:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__PLGlobalValues_setSearchIndexRebuildRequiredExternalReasons___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setSearchIndexRebuildRequiredExternalReasons:]"];
}

- (NSNumber)searchIndexRebuildRequiredExternalReasons
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__PLGlobalValues_searchIndexRebuildRequiredExternalReasons__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setSearchIndexRebuildEndDate:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__PLGlobalValues_setSearchIndexRebuildEndDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setSearchIndexRebuildEndDate:]"];
}

- (NSDate)searchIndexRebuildEndDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__PLGlobalValues_searchIndexRebuildEndDate__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setSearchIndexRebuildStartDate:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PLGlobalValues_setSearchIndexRebuildStartDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setSearchIndexRebuildStartDate:]"];
}

- (NSDate)searchIndexRebuildStartDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__PLGlobalValues_searchIndexRebuildStartDate__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setSearchIndexSpotlightClientStateMismatchedCount:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__PLGlobalValues_setSearchIndexSpotlightClientStateMismatchedCount___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setSearchIndexSpotlightClientStateMismatchedCount:]"];
}

- (NSNumber)searchIndexSpotlightClientStateMismatchedCount
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__PLGlobalValues_searchIndexSpotlightClientStateMismatchedCount__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setSearchIndexSpotlightClientStateMissingCount:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__PLGlobalValues_setSearchIndexSpotlightClientStateMissingCount___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setSearchIndexSpotlightClientStateMissingCount:]"];
}

- (NSNumber)searchIndexSpotlightClientStateMissingCount
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__PLGlobalValues_searchIndexSpotlightClientStateMissingCount__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setSearchIndexSpotlightClientState:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__PLGlobalValues_setSearchIndexSpotlightClientState___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setSearchIndexSpotlightClientState:]"];
}

- (NSDictionary)searchIndexSpotlightClientState
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__PLGlobalValues_searchIndexSpotlightClientState__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setSearchIndexRebuildResumeMarker:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__PLGlobalValues_setSearchIndexRebuildResumeMarker___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setSearchIndexRebuildResumeMarker:]"];
}

- (NSString)searchIndexRebuildResumeMarker
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__PLGlobalValues_searchIndexRebuildResumeMarker__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setSearchIndexStatus:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__PLGlobalValues_setSearchIndexStatus___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setSearchIndexStatus:]"];
}

- (NSNumber)searchIndexStatus
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__PLGlobalValues_searchIndexStatus__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setSearchIndexFeatureSettings:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__PLGlobalValues_setSearchIndexFeatureSettings___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setSearchIndexFeatureSettings:]"];
}

- (NSNumber)searchIndexFeatureSettings
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__PLGlobalValues_searchIndexFeatureSettings__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setSearchIndexSceneTaxonomySHA:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PLGlobalValues_setSearchIndexSceneTaxonomySHA___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setSearchIndexSceneTaxonomySHA:]"];
}

- (NSString)searchIndexSceneTaxonomySHA
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__PLGlobalValues_searchIndexSceneTaxonomySHA__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setSearchIndexLocaleIdentifier:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PLGlobalValues_setSearchIndexLocaleIdentifier___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setSearchIndexLocaleIdentifier:]"];
}

- (NSString)searchIndexLocaleIdentifier
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__PLGlobalValues_searchIndexLocaleIdentifier__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (NSNumber)searchIndexUtilityTypeClassifierVersion
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__PLGlobalValues_searchIndexUtilityTypeClassifierVersion__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setSearchIndexUtilityTypeClassifierVersion:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__PLGlobalValues_setSearchIndexUtilityTypeClassifierVersion___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setSearchIndexUtilityTypeClassifierVersion:]"];
}

- (void)setSearchIndexEmbeddingModelVersion:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__PLGlobalValues_setSearchIndexEmbeddingModelVersion___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setSearchIndexEmbeddingModelVersion:]"];
}

- (NSNumber)searchIndexEmbeddingModelVersion
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__PLGlobalValues_searchIndexEmbeddingModelVersion__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setSearchIndexVersion:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__PLGlobalValues_setSearchIndexVersion___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setSearchIndexVersion:]"];
}

- (NSNumber)searchIndexVersion
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__PLGlobalValues_searchIndexVersion__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setLastCompletePrefetchDate:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__PLGlobalValues_setLastCompletePrefetchDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setLastCompletePrefetchDate:]"];
}

- (NSDate)lastCompletePrefetchDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__PLGlobalValues_lastCompletePrefetchDate__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setCloudInitialUploadCompleted:(BOOL)a3
{
  v5 = self->_moc;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PLGlobalValues_setCloudInitialUploadCompleted___block_invoke;
  v7[3] = &unk_1E7576F80;
  v9 = a3;
  v8 = v5;
  v6 = v5;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v7 responsibleCaller:"[PLGlobalValues setCloudInitialUploadCompleted:]"];
}

void __49__PLGlobalValues_setCloudInitialUploadCompleted___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [MEMORY[0x1E695DF00] now];
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [PLGlobalKeyValue setGlobalValue:v2 forKey:@"CloudInitialUploadDate" managedObjectContext:*(a1 + 32)];
}

- (BOOL)hasCloudInitialUploadCompleted
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__PLGlobalValues_hasCloudInitialUploadCompleted__block_invoke;
  v5[3] = &unk_1E75787F8;
  v5[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v5];
  v3 = [v2 BOOLValue];

  return v3;
}

void *__48__PLGlobalValues_hasCloudInitialUploadCompleted__block_invoke(uint64_t a1)
{
  v1 = [PLGlobalKeyValue globalValueForKey:@"CloudInitialUploadDate" managedObjectContext:*(*(a1 + 32) + 16)];
  if (v1)
  {
    v2 = MEMORY[0x1E695E118];
  }

  else
  {
    v2 = MEMORY[0x1E695E110];
  }

  v3 = v2;

  return v2;
}

- (void)setStableHashResumeObjectID:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__PLGlobalValues_setStableHashResumeObjectID___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setStableHashResumeObjectID:]"];
}

void __46__PLGlobalValues_setStableHashResumeObjectID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 URIRepresentation];
    v4 = [v3 absoluteString];
  }

  else
  {
    v4 = 0;
  }

  [PLGlobalKeyValue setGlobalValue:v4 forKey:@"StableHashProcessingResumeObjectID" managedObjectContext:*(a1 + 40)];
}

- (NSManagedObjectID)stableHashResumeObjectID
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__PLGlobalValues_stableHashResumeObjectID__block_invoke;
  v9[3] = &unk_1E75787F8;
  v9[4] = self;
  v3 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v9];
  v4 = self->_moc;
  if (v3)
  {
    v5 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSManagedObjectContext *)v4 persistentStoreCoordinator];
  v7 = [v6 managedObjectIDForURIRepresentation:v5];

  return v7;
}

- (void)setStableHashProcessingCompleted:(BOOL)a3
{
  v5 = self->_moc;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__PLGlobalValues_setStableHashProcessingCompleted___block_invoke;
  v7[3] = &unk_1E7576F80;
  v9 = a3;
  v8 = v5;
  v6 = v5;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v7 responsibleCaller:"[PLGlobalValues setStableHashProcessingCompleted:]"];
}

void __51__PLGlobalValues_setStableHashProcessingCompleted___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [MEMORY[0x1E695DF00] now];
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [PLGlobalKeyValue setGlobalValue:v2 forKey:@"StableHashProcessingCompletedDate" managedObjectContext:*(a1 + 32)];
}

- (BOOL)hasStableHashProcessingCompleted
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__PLGlobalValues_hasStableHashProcessingCompleted__block_invoke;
  v5[3] = &unk_1E75787F8;
  v5[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v5];
  v3 = [v2 BOOLValue];

  return v3;
}

void *__50__PLGlobalValues_hasStableHashProcessingCompleted__block_invoke(uint64_t a1)
{
  v1 = [PLGlobalKeyValue globalValueForKey:@"StableHashProcessingCompletedDate" managedObjectContext:*(*(a1 + 32) + 16)];
  if (v1)
  {
    v2 = MEMORY[0x1E695E118];
  }

  else
  {
    v2 = MEMORY[0x1E695E110];
  }

  v3 = v2;

  return v2;
}

- (void)setCloudTrackerLastKnownCloudVersion:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__PLGlobalValues_setCloudTrackerLastKnownCloudVersion___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setCloudTrackerLastKnownCloudVersion:]"];
}

- (NSString)cloudTrackerLastKnownCloudVersion
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__PLGlobalValues_cloudTrackerLastKnownCloudVersion__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setOrphanedSceneClassificationsCount:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__PLGlobalValues_setOrphanedSceneClassificationsCount___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setOrphanedSceneClassificationsCount:]"];
}

- (NSNumber)orphanedSceneClassificationsCount
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__PLGlobalValues_orphanedSceneClassificationsCount__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setLastInitialDuplicateDetectorProcessingCompletedDate:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__PLGlobalValues_setLastInitialDuplicateDetectorProcessingCompletedDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setLastInitialDuplicateDetectorProcessingCompletedDate:]"];
}

- (NSDate)lastInitialDuplicateDetectorProcessingCompletedDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__PLGlobalValues_lastInitialDuplicateDetectorProcessingCompletedDate__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (BOOL)isInitialDuplicateDetectorProcessingCompleted
{
  v2 = [(PLGlobalValues *)self lastInitialDuplicateDetectorProcessingCompletedDate];
  v3 = v2 != 0;

  return v3;
}

- (void)setDuplicateProcessingStatus:(char)a3
{
  v5 = self->_moc;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__PLGlobalValues_setDuplicateProcessingStatus___block_invoke;
  v7[3] = &unk_1E7576F80;
  v9 = a3;
  v8 = v5;
  v6 = v5;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v7 responsibleCaller:"[PLGlobalValues setDuplicateProcessingStatus:]"];
}

void __47__PLGlobalValues_setDuplicateProcessingStatus___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithChar:*(a1 + 40)];
  [PLGlobalKeyValue setGlobalValue:v2 forKey:@"DuplicateProcessingStatus" managedObjectContext:*(a1 + 32)];
}

- (char)duplicateProcessingStatus
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__PLGlobalValues_duplicateProcessingStatus__block_invoke;
  v5[3] = &unk_1E75787F8;
  v5[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v5];
  v3 = [v2 intValue];

  return v3;
}

- (void)setPersonSyncResumeMarker:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__PLGlobalValues_setPersonSyncResumeMarker___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setPersonSyncResumeMarker:]"];
}

- (NSString)personSyncResumeMarker
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__PLGlobalValues_personSyncResumeMarker__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setPersonSyncState:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__PLGlobalValues_setPersonSyncState___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setPersonSyncState:]"];
}

- (NSString)personSyncState
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__PLGlobalValues_personSyncState__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setLastGuestAssetSyncTargetLibraryPath:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__PLGlobalValues_setLastGuestAssetSyncTargetLibraryPath___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setLastGuestAssetSyncTargetLibraryPath:]"];
}

- (NSString)lastGuestAssetSyncTargetLibraryPath
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__PLGlobalValues_lastGuestAssetSyncTargetLibraryPath__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setGuestAssetInitialSyncResumeMarker:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__PLGlobalValues_setGuestAssetInitialSyncResumeMarker___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setGuestAssetInitialSyncResumeMarker:]"];
}

- (NSString)guestAssetInitialSyncResumeMarker
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__PLGlobalValues_guestAssetInitialSyncResumeMarker__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setGuestAssetSyncStatus:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__PLGlobalValues_setGuestAssetSyncStatus___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setGuestAssetSyncStatus:]"];
}

- (NSNumber)guestAssetSyncStatus
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__PLGlobalValues_guestAssetSyncStatus__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setLastGuestAssetSyncToken:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__PLGlobalValues_setLastGuestAssetSyncToken___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setLastGuestAssetSyncToken:]"];
}

- (NSPersistentHistoryToken)lastGuestAssetSyncToken
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__PLGlobalValues_lastGuestAssetSyncToken__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setSyndicationSyncRangeDenominator:(double)a3
{
  if (a3 >= 1.0)
  {
    v4 = a3;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = self->_moc;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PLGlobalValues_setSyndicationSyncRangeDenominator___block_invoke;
  v7[3] = &unk_1E7577B90;
  v9 = v4;
  v8 = v5;
  v6 = v5;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v7 responsibleCaller:"[PLGlobalValues setSyndicationSyncRangeDenominator:]"];
}

void __53__PLGlobalValues_setSyndicationSyncRangeDenominator___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40)];
  [PLGlobalKeyValue setGlobalValue:v2 forKey:@"PLSyndicationSyncRangeDenominator" managedObjectContext:*(a1 + 32)];
}

- (double)syndicationSyncRangeDenominator
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PLGlobalValues_syndicationSyncRangeDenominator__block_invoke;
  v7[3] = &unk_1E75787F8;
  v7[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v7];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (void)setSyndicationPrefetchDownloadThrottlingDate:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__PLGlobalValues_setSyndicationPrefetchDownloadThrottlingDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setSyndicationPrefetchDownloadThrottlingDate:]"];
}

- (NSDate)syndicationPrefetchDownloadThrottlingDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__PLGlobalValues_syndicationPrefetchDownloadThrottlingDate__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setSyndicationStartDate:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__PLGlobalValues_setSyndicationStartDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setSyndicationStartDate:]"];
}

- (NSDate)syndicationStartDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__PLGlobalValues_syndicationStartDate__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setLastDeleteSyndicationSyncDate:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PLGlobalValues_setLastDeleteSyndicationSyncDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setLastDeleteSyndicationSyncDate:]"];
}

- (NSDate)lastDeleteSyndicationSyncDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__PLGlobalValues_lastDeleteSyndicationSyncDate__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setLastChatSyndicationSyncDate:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PLGlobalValues_setLastChatSyndicationSyncDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setLastChatSyndicationSyncDate:]"];
}

- (NSDate)lastChatSyndicationSyncDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__PLGlobalValues_lastChatSyndicationSyncDate__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setLastAttachmentSyndicationSyncDate:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__PLGlobalValues_setLastAttachmentSyndicationSyncDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setLastAttachmentSyndicationSyncDate:]"];
}

- (NSDate)lastAttachmentSyndicationSyncDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__PLGlobalValues_lastAttachmentSyndicationSyncDate__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setInProgressFullIndexSyndicationSyncDate:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__PLGlobalValues_setInProgressFullIndexSyndicationSyncDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setInProgressFullIndexSyndicationSyncDate:]"];
}

- (NSDate)inProgressFullIndexSyndicationSyncDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__PLGlobalValues_inProgressFullIndexSyndicationSyncDate__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setLastFullIndexSyndicationSyncStartDate:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__PLGlobalValues_setLastFullIndexSyndicationSyncStartDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setLastFullIndexSyndicationSyncStartDate:]"];
}

- (NSDate)lastFullIndexSyndicationSyncStartDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__PLGlobalValues_lastFullIndexSyndicationSyncStartDate__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (NSDate)_deprecated_lastFullIndexSyndicationSyncDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__PLGlobalValues__deprecated_lastFullIndexSyndicationSyncDate__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (BOOL)shouldPrefetchWidgetResources
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  moc = self->_moc;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__PLGlobalValues_shouldPrefetchWidgetResources__block_invoke;
  v5[3] = &unk_1E7578910;
  v5[4] = self;
  v5[5] = &v6;
  [(NSManagedObjectContext *)moc performBlockAndWait:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __47__PLGlobalValues_shouldPrefetchWidgetResources__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"LastWidgetUpdateDate", @"LargestWidgetPixelSize", 0}];
  v9 = [PLGlobalKeyValue globalValuesForKeys:v2 managedObjectContext:*(*(a1 + 32) + 16)];

  v3 = [v9 objectForKeyedSubscript:@"LastWidgetUpdateDate"];
  v4 = [v9 objectForKeyedSubscript:@"LargestWidgetPixelSize"];
  v5 = [v4 integerValue];

  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-259200.0];
  [v3 timeIntervalSinceDate:v6];
  v8 = v7 > 0.0 && v5 > [MEMORY[0x1E6994B90] maxPixelSizeForResourceType:5];
  *(*(*(a1 + 40) + 8) + 24) = v8;
}

- (void)setWidgetTimelineGeneratedForDisplaySize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__PLGlobalValues_setWidgetTimelineGeneratedForDisplaySize___block_invoke;
  v8[3] = &unk_1E7578320;
  v9 = v6;
  v10 = width;
  v11 = height;
  v7 = v6;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setWidgetTimelineGeneratedForDisplaySize:]"];
}

void __59__PLGlobalValues_setWidgetTimelineGeneratedForDisplaySize___block_invoke(uint64_t a1)
{
  v13 = [MEMORY[0x1E695DF00] date];
  [PLGlobalKeyValue setGlobalValue:"setGlobalValue:forKey:managedObjectContext:" forKey:? managedObjectContext:?];
  if (*(a1 + 40) != *MEMORY[0x1E695F060] || *(a1 + 48) != *(MEMORY[0x1E695F060] + 8))
  {
    v3 = [MEMORY[0x1E695DFD8] setWithObjects:{@"LargestWidgetSizeDate", @"LargestWidgetPixelSize", 0}];
    v4 = [PLGlobalKeyValue globalValuesForKeys:v3 managedObjectContext:*(a1 + 32)];

    v5 = [v4 objectForKeyedSubscript:@"LargestWidgetSizeDate"];
    v6 = [v4 objectForKeyedSubscript:@"LargestWidgetPixelSize"];
    v7 = [v6 integerValue];

    v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-86400.0];
    v9 = vcvtpd_u64_f64(*(a1 + 40) * *(a1 + 48));
    [v5 timeIntervalSinceDate:v8];
    if (v10 <= 0.0 || v7 < v9)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
      [PLGlobalKeyValue setGlobalValue:v12 forKey:@"LargestWidgetPixelSize" managedObjectContext:*(a1 + 32)];

      [PLGlobalKeyValue setGlobalValue:v13 forKey:@"LargestWidgetSizeDate" managedObjectContext:*(a1 + 32)];
    }
  }
}

- (void)setGreenTeaContactsAuthorization:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PLGlobalValues_setGreenTeaContactsAuthorization___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setGreenTeaContactsAuthorization:]"];
}

- (NSNumber)greenTeaContactsAuthorization
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__PLGlobalValues_greenTeaContactsAuthorization__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setLocaleIdentifier:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__PLGlobalValues_setLocaleIdentifier___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setLocaleIdentifier:]"];
}

- (NSString)localeIdentifier
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__PLGlobalValues_localeIdentifier__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)setGreenValues:(id)a3
{
  v4 = a3;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__PLGlobalValues_setGreenValues___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setGreenValues:]"];
}

- (NSDictionary)greenValues
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__PLGlobalValues_greenValues__block_invoke;
  v4[3] = &unk_1E75787F8;
  v4[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v4];

  return v2;
}

- (void)_setBackgroundJobServiceNeedsProcessing:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [PLGlobalKeyValue setGlobalValue:v4 forKey:@"BackgroundJobServiceNeedsProcessing" managedObjectContext:self->_moc];
}

- (void)setBackgroundJobServiceNeedsProcessing:(BOOL)a3
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__PLGlobalValues_setBackgroundJobServiceNeedsProcessing___block_invoke;
  v5[3] = &unk_1E756CEE8;
  objc_copyWeak(&v6, &location);
  v7 = a3;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v5 responsibleCaller:"[PLGlobalValues setBackgroundJobServiceNeedsProcessing:]"];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __57__PLGlobalValues_setBackgroundJobServiceNeedsProcessing___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setBackgroundJobServiceNeedsProcessing:*(a1 + 40)];
}

- (BOOL)backgroundJobServiceNeedsProcessing
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__PLGlobalValues_backgroundJobServiceNeedsProcessing__block_invoke;
  v5[3] = &unk_1E75787F8;
  v5[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v5];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)_setRebuildComplete
{
  v3 = [MEMORY[0x1E695DF00] now];
  [PLGlobalKeyValue setGlobalValue:v3 forKey:@"RebuildCompleteDate" managedObjectContext:self->_moc];

  moc = self->_moc;

  [PLGlobalKeyValue setGlobalValue:0 forKey:@"JournalRebuildRequired" managedObjectContext:moc];
}

- (void)setRebuildComplete
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__PLGlobalValues_setRebuildComplete__block_invoke;
  v3[3] = &unk_1E75788C0;
  objc_copyWeak(&v4, &location);
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v3 responsibleCaller:"[PLGlobalValues setRebuildComplete]"];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __36__PLGlobalValues_setRebuildComplete__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setRebuildComplete];
}

- (BOOL)isRebuildComplete
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__PLGlobalValues_isRebuildComplete__block_invoke;
  v7[3] = &unk_1E75787F8;
  v7[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v7];
  v3 = [v2 objectForKeyedSubscript:@"JournalRebuildRequired"];
  if ([v3 BOOLValue])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v2 objectForKeyedSubscript:@"RebuildCompleteDate"];
    v4 = v5 != 0;
  }

  return v4;
}

id __35__PLGlobalValues_isRebuildComplete__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"JournalRebuildRequired", @"RebuildCompleteDate", 0}];
  v3 = [PLGlobalKeyValue globalValuesForKeys:v2 managedObjectContext:*(*(a1 + 32) + 16)];

  return v3;
}

- (void)setJournalRebuildRequired:(BOOL)a3
{
  v5 = self->_moc;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__PLGlobalValues_setJournalRebuildRequired___block_invoke;
  v7[3] = &unk_1E7576F80;
  v9 = a3;
  v8 = v5;
  v6 = v5;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v7 responsibleCaller:"[PLGlobalValues setJournalRebuildRequired:]"];
}

- (BOOL)isJournalRebuildRequired
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__PLGlobalValues_isJournalRebuildRequired__block_invoke;
  v5[3] = &unk_1E75787F8;
  v5[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v5];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)dontImportFileSystemDataIntoDatabase
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__PLGlobalValues_dontImportFileSystemDataIntoDatabase__block_invoke;
  v3[3] = &unk_1E75788C0;
  objc_copyWeak(&v4, &location);
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v3 responsibleCaller:"[PLGlobalValues dontImportFileSystemDataIntoDatabase]"];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __54__PLGlobalValues_dontImportFileSystemDataIntoDatabase__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setImportFilesystemAssetsState:1];
  [WeakRetained _setRebuildComplete];
}

- (void)_setImportFilesystemAssetsState:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [PLGlobalKeyValue setGlobalValue:v5 forKey:@"ImportedFileSystemAssets" managedObjectContext:self->_moc];

  if (a3 == 1)
  {
    v7 = [MEMORY[0x1E695DF00] date];
    [PLGlobalKeyValue setGlobalValue:v7 forKey:@"ImportedFileSystemAssetsDate" managedObjectContext:self->_moc];
  }

  else
  {
    moc = self->_moc;

    [PLGlobalKeyValue setGlobalValue:0 forKey:@"ImportedFileSystemAssetsDate" managedObjectContext:moc];
  }
}

- (void)setImportFilesystemAssetsState:(int64_t)a3
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__PLGlobalValues_setImportFilesystemAssetsState___block_invoke;
  v5[3] = &unk_1E756CE10;
  objc_copyWeak(v6, &location);
  v6[1] = a3;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v5 responsibleCaller:"[PLGlobalValues setImportFilesystemAssetsState:]"];
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

void __49__PLGlobalValues_setImportFilesystemAssetsState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setImportFilesystemAssetsState:*(a1 + 40)];
}

- (int64_t)importFilesystemAssetsState
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__PLGlobalValues_importFilesystemAssetsState__block_invoke;
  v5[3] = &unk_1E75787F8;
  v5[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v5];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)didImportFileSystemAssets
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__PLGlobalValues_didImportFileSystemAssets__block_invoke;
  v5[3] = &unk_1E75787F8;
  v5[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v5];
  v3 = [v2 BOOLValue];

  return v3;
}

id __43__PLGlobalValues_didImportFileSystemAssets__block_invoke(uint64_t a1)
{
  v1 = [PLGlobalKeyValue globalValueForKey:@"ImportedFileSystemAssets" managedObjectContext:*(*(a1 + 32) + 16)];
  v2 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v1, "integerValue") == 1}];

  return v2;
}

- (PLGlobalValues)initWithManagedObjectContext:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PLGlobalValues;
  v6 = [(PLGlobalValues *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_moc, a3);
    v8 = [v5 photoLibrary];
    photoLibrary = v7->_photoLibrary;
    v7->_photoLibrary = v8;
  }

  return v7;
}

- (void)_setLastKnownTransactionToken:(id)a3 withTransactionNumberKey:(id)a4 andStoreUUIDKey:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PLGlobalValues.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"transactionNumberKey"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"PLGlobalValues.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"storeUUIDKey"}];

LABEL_3:
  v13 = self->_moc;
  if (v9)
  {
    v14 = [v9 storeTokens];
    if ([v14 count] != 1)
    {
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      [v26 handleFailureInMethod:a2 object:self file:@"PLGlobalValues.m" lineNumber:62 description:@"unexpected number of tokens"];
    }

    v15 = [v14 allKeys];
    v16 = [v15 firstObject];

    v17 = [v14 allValues];
    v18 = [v17 firstObject];
  }

  else
  {
    v18 = 0;
    v16 = 0;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __89__PLGlobalValues__setLastKnownTransactionToken_withTransactionNumberKey_andStoreUUIDKey___block_invoke;
  v27[3] = &unk_1E75730F8;
  v28 = v12;
  v29 = v13;
  v30 = v16;
  v31 = v18;
  v32 = v10;
  v19 = v10;
  v20 = v18;
  v21 = v16;
  v22 = v13;
  v23 = v12;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v27 responsibleCaller:"[PLGlobalValues _setLastKnownTransactionToken:withTransactionNumberKey:andStoreUUIDKey:]"];
}

void __89__PLGlobalValues__setLastKnownTransactionToken_withTransactionNumberKey_andStoreUUIDKey___block_invoke(void *a1)
{
  v2 = [PLGlobalKeyValue globalValueForKey:a1[4] managedObjectContext:a1[5]];
  if ((PLObjectIsEqual() & 1) == 0)
  {
    [PLGlobalKeyValue setGlobalValue:a1[6] forKey:a1[4] managedObjectContext:a1[5]];
  }

  [PLGlobalKeyValue setGlobalValue:a1[7] forKey:a1[8] managedObjectContext:a1[5]];
}

- (id)_lastKnownTransactionTokenWithTransactionNumberKey:(id)a3 andStoreUUIDKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PLGlobalValues.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"transactionNumberKey"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"PLGlobalValues.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"storeUUIDKey"}];

LABEL_3:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__PLGlobalValues__lastKnownTransactionTokenWithTransactionNumberKey_andStoreUUIDKey___block_invoke;
  v16[3] = &unk_1E7565A80;
  v17 = v9;
  v18 = self;
  v19 = v7;
  v10 = v7;
  v11 = v9;
  v12 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v16];

  return v12;
}

id __85__PLGlobalValues__lastKnownTransactionTokenWithTransactionNumberKey_andStoreUUIDKey___block_invoke(void *a1)
{
  v2 = [PLGlobalKeyValue globalValueForKey:a1[4] managedObjectContext:*(a1[5] + 16)];
  v3 = [PLGlobalKeyValue globalValueForKey:a1[6] managedObjectContext:*(a1[5] + 16)];
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E695D6A8]) initWithTransactionNumber:v3 andStoreID:v2];
  }

  return v5;
}

+ (void)setLibraryCreateOptions:(unint64_t)a3 managedObjectContext:(id)a4
{
  if (a3)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = a4;
    v7 = [v5 numberWithUnsignedInteger:a3];
    [PLGlobalKeyValue setGlobalValue:v7 forKey:@"LibraryCreateOptions" managedObjectContext:v6];
  }
}

+ (void)setJournalRebuildRequired:(BOOL)a3 managedObjectContext:(id)a4
{
  if (a3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = a4;
    v6 = [v4 numberWithBool:1];
    [PLGlobalKeyValue setGlobalValue:v6 forKey:@"JournalRebuildRequired" managedObjectContext:v5];

    v7 = @"RebuildCompleteDate";
    v8 = v5;
  }

  else
  {
    v8 = a4;
    v7 = @"JournalRebuildRequired";
  }

  [PLGlobalKeyValue setGlobalValue:0 forKey:v7 managedObjectContext:v8];
}

- (void)incrementSpotlightClientStateMismatchedCount
{
  v3 = [(PLGlobalValues *)self searchIndexSpotlightClientStateMismatchedCount];
  v4 = [v3 unsignedIntegerValue];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4 + 1];
  [(PLGlobalValues *)self setSearchIndexSpotlightClientStateMismatchedCount:v5];
}

- (void)incrementSpotlightClientStateMissingCount
{
  v3 = [(PLGlobalValues *)self searchIndexSpotlightClientStateMissingCount];
  v4 = [v3 unsignedIntegerValue];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4 + 1];
  [(PLGlobalValues *)self setSearchIndexSpotlightClientStateMissingCount:v5];
}

- (id)searchIndexSpotlightClientStateData
{
  v2 = [(PLGlobalValues *)self searchIndexSpotlightClientState];
  if (v2)
  {
    v3 = [objc_opt_class() searchIndexSpotlightClientStateDataWithDictionary:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)searchIndexUptimeIsRebuildInProgress:(BOOL *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [(PLGlobalValues *)self searchIndexRebuildStartDate];
  v6 = [(PLGlobalValues *)self searchIndexRebuildEndDate];
  v7 = [(PLGlobalValues *)self isSearchIndexRebuildFinished];
  if (v7)
  {
    [v6 timeIntervalSinceReferenceDate];
    v9 = v8;
    [v5 timeIntervalSinceReferenceDate];
    if (v9 > v10)
    {
      v11 = [MEMORY[0x1E695DF00] now];
      [v11 timeIntervalSinceDate:v6];
      v13 = v12;

      goto LABEL_13;
    }

    goto LABEL_7;
  }

  [v5 timeIntervalSinceReferenceDate];
  v15 = v14;
  [v6 timeIntervalSinceReferenceDate];
  if (v15 <= v16)
  {
LABEL_7:
    v18 = PLSearchBackendIndexRebuildGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = @"YES";
      if (v7)
      {
        v19 = @"NO";
      }

      v20 = v19;
      v22 = 138543874;
      v23 = v20;
      v24 = 2114;
      v25 = v5;
      v26 = 2114;
      v27 = v6;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Failed to get search index uptime. Invalid index rebuild completion status [%{public}@], start date [%{public}@], end date [%{public}@]", &v22, 0x20u);
    }

    goto LABEL_12;
  }

  if (v6)
  {
    [v5 timeIntervalSinceDate:v6];
    v13 = v17;
    goto LABEL_13;
  }

LABEL_12:
  v13 = 0.0;
LABEL_13:
  if (a3)
  {
    *a3 = !v7;
  }

  return v13;
}

- (double)searchIndexRebuildTimeIsRebuildInProgress:(BOOL *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [(PLGlobalValues *)self searchIndexRebuildStartDate];
  v6 = [(PLGlobalValues *)self searchIndexRebuildEndDate];
  v7 = [(PLGlobalValues *)self isSearchIndexRebuildFinished];
  if (v7)
  {
    [v6 timeIntervalSinceReferenceDate];
    v9 = v8;
    [v5 timeIntervalSinceReferenceDate];
    if (v9 > v10)
    {
      if (v5)
      {
        [v6 timeIntervalSinceDate:v5];
        v12 = v11;
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    [v5 timeIntervalSinceReferenceDate];
    v14 = v13;
    [v6 timeIntervalSinceReferenceDate];
    if (v14 > v15)
    {
      v16 = [MEMORY[0x1E695DF00] now];
      [v16 timeIntervalSinceDate:v5];
      v12 = v17;

      goto LABEL_13;
    }
  }

  v18 = PLSearchBackendIndexRebuildGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = @"YES";
    if (v7)
    {
      v19 = @"NO";
    }

    v20 = v19;
    v22 = 138543874;
    v23 = v20;
    v24 = 2114;
    v25 = v5;
    v26 = 2114;
    v27 = v6;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Failed to get search index rebuild time. Invalid index rebuild completion status [%{public}@], start date [%{public}@], end date [%{public}@]", &v22, 0x20u);
  }

LABEL_12:
  v12 = 0.0;
LABEL_13:
  if (a3)
  {
    *a3 = !v7;
  }

  return v12;
}

- (void)addSearchIndexRebuildCoalescedReasons:(unint64_t)a3
{
  v5 = [(PLGlobalValues *)self unpackedSearchIndexRebuildCoalescedReasons];
  if (v5 != (v5 | a3))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [(PLGlobalValues *)self setSearchIndexRebuildCoalescedReasons:v6];
  }
}

- (void)addRebuildRequiredExternalReasons:(unint64_t)a3
{
  v5 = [(PLGlobalValues *)self unpackedSearchIndexRebuildRequiredExternalReasons];
  if (v5 != (v5 | a3))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [(PLGlobalValues *)self setSearchIndexRebuildRequiredExternalReasons:v6];
  }
}

- (BOOL)shouldDropGlobalSpotlightIndexForLibraryIdentifier:(int64_t)a3
{
  result = 0;
  if ([PLSpotlightDonationUtilities shouldUseSpotlightPrivateIndexForLibraryIdentifier:a3])
  {
    v4 = [(PLGlobalValues *)self searchIndexVersion];
    if (!v4)
    {
      return 1;
    }

    v5 = v4;
    v6 = [v4 integerValue];

    if (v6 < 18004)
    {
      return 1;
    }
  }

  return result;
}

- (unint64_t)searchIndexRebuildReasonsWithSceneTaxonomyDigests:(id)a3 spotlightRequestedRebuild:(BOOL)a4 pathManager:(id)a5
{
  v6 = a4;
  v57 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if ([(PLGlobalValues *)self _isNewLibraryOrRebuildWithPathManager:a5])
  {
    v9 = 1024;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(PLGlobalValues *)self searchIndexVersion];
  v11 = [v10 unsignedIntegerValue];

  v12 = v9;
  if (v11 != 19008)
  {
    v12 = v9 | 1;
    v13 = PLSearchBackendIndexRebuildGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(PLGlobalValues *)self searchIndexVersion];
      v53 = 134218240;
      v54 = [v14 unsignedIntegerValue];
      v55 = 1024;
      LODWORD(v56) = 19008;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "searchIndexVersion: %tu != SEARCH_INDEX_VERSION: %d", &v53, 0x12u);
    }

    v15 = [(PLGlobalValues *)self searchIndexVersion];
    v16 = [v15 unsignedIntegerValue];

    if (v16 <= 0x4653)
    {
      v12 = v9 | 0x21;
      v17 = PLSearchBackendIndexRebuildGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(PLGlobalValues *)self searchIndexVersion];
        v19 = [v18 unsignedIntegerValue];
        v53 = 134218240;
        v54 = v19;
        v55 = 1024;
        LODWORD(v56) = 18004;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "searchIndexVersion: %tu != LAST_DROP_INDEX_VERSION: %d", &v53, 0x12u);
      }
    }
  }

  v20 = +[PLSearchIndexConfiguration currentEmbeddingModelVersion];
  v21 = [(PLGlobalValues *)self searchIndexEmbeddingModelVersion];
  v22 = [v21 unsignedIntegerValue];

  if (v20 != v22)
  {
    v12 |= 0x40uLL;
    v23 = PLSearchBackendIndexRebuildGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = +[PLSearchIndexConfiguration currentEmbeddingModelVersion];
      v25 = [(PLGlobalValues *)self searchIndexEmbeddingModelVersion];
      v26 = [v25 unsignedIntegerValue];
      v53 = 134218240;
      v54 = v24;
      v55 = 2048;
      v56 = v26;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "currentEmbeddingModelVersion: %tu != searchIndexEmbeddingModelVersion: %tu", &v53, 0x16u);
    }
  }

  v27 = +[PLSearchIndexConfiguration currentUtilityTypeClassifierVersion];
  v28 = [(PLGlobalValues *)self searchIndexUtilityTypeClassifierVersion];
  v29 = [v28 unsignedIntegerValue];

  if (v27 != v29)
  {
    v12 |= 0x80uLL;
    v30 = PLSearchBackendIndexRebuildGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = +[PLSearchIndexConfiguration currentUtilityTypeClassifierVersion];
      v32 = [(PLGlobalValues *)self searchIndexUtilityTypeClassifierVersion];
      v33 = [v32 unsignedIntegerValue];
      v53 = 134218240;
      v54 = v31;
      v55 = 2048;
      v56 = v33;
      _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "currentUtilityTypeClassifierVersion: %tu != searchIndexUtilityTypeClassifierVersion: %tu", &v53, 0x16u);
    }
  }

  v34 = +[PLSearchIndexConfiguration locale];
  v35 = [v34 localeIdentifier];
  v36 = [(PLGlobalValues *)self searchIndexLocaleIdentifier];
  v37 = [v35 isEqualToString:v36];

  if ((v37 & 1) == 0)
  {
    v12 |= 2uLL;
    v38 = PLSearchBackendIndexRebuildGetLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = +[PLSearchIndexConfiguration locale];
      v40 = [v39 localeIdentifier];
      v41 = [(PLGlobalValues *)self searchIndexLocaleIdentifier];
      v53 = 138543618;
      v54 = v40;
      v55 = 2114;
      v56 = v41;
      _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_DEFAULT, "localeIdentifier: %{public}@ != searchIndexLocaleIdentifier: %{public}@", &v53, 0x16u);
    }
  }

  v42 = [(PLGlobalValues *)self searchIndexSceneTaxonomySHA];
  if (v42 != v8 && ([v8 isEqualToString:v42] & 1) == 0)
  {
    v12 |= 4uLL;
    v43 = PLSearchBackendIndexRebuildGetLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v53 = 138543618;
      v54 = v8;
      v55 = 2114;
      v56 = v42;
      _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_DEFAULT, "sceneTaxonomyDigests: %{public}@ != searchIndexSceneTaxonomySHA: %{public}@", &v53, 0x16u);
    }
  }

  v44 = [(PLGlobalValues *)self unpackedSearchIndexStatus];
  v45 = 0;
  v46 = 1;
  do
  {
    v47 = v46 | v45;
    if (((1 << (v46 - 1)) & 0x800000008000808BLL) == 0)
    {
      v47 = v45;
    }

    if (v46 - 1 <= 0x3F)
    {
      v45 = v47;
    }

    v48 = v46 >= 0x21;
    v46 *= 2;
  }

  while (!v48);
  if ((v45 & ~v44) != 0)
  {
    v49 = v12 | 0x10;
  }

  else
  {
    v49 = v12;
  }

  v50 = [(PLGlobalValues *)self unpackedSearchIndexRebuildRequiredExternalReasons];
  if (v6)
  {
    v51 = v49 | v50 | 8;
  }

  else
  {
    v51 = v49 | v50;
  }

  return v51;
}

- (BOOL)_isNewLibraryOrRebuildWithPathManager:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLGlobalValues *)self searchIndexVersion];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v18 = 0;
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [v4 searchIndexSystemInfoFilePath];
    v9 = [v7 fileExistsAtPath:v8 isDirectory:&v18];

    if (v9)
    {
      if (v18 == 1)
      {
        v10 = PLSearchBackendIndexRebuildGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Legacy search index system info file is a directory", buf, 2u);
        }
      }

      v11 = [MEMORY[0x1E696AC08] defaultManager];
      v12 = [v4 searchIndexSystemInfoFilePath];
      v17 = 0;
      v13 = [v11 removeItemAtPath:v12 error:&v17];
      v14 = v17;

      if ((v13 & 1) == 0)
      {
        v15 = PLSearchBackendIndexRebuildGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v20 = v14;
          _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Failed to remove legacy search index system info file: %@", buf, 0xCu);
        }
      }
    }

    v6 = v9 ^ 1;
  }

  return v6;
}

- (BOOL)markRebuildPhaseCompleted:(unint64_t)a3
{
  v5 = [(PLGlobalValues *)self unpackedSearchIndexStatus];
  v6 = v5 & a3;
  if ((v5 & a3) != a3)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5 | a3];
    [(PLGlobalValues *)self setSearchIndexStatus:v7];

    [(PLGlobalValues *)self setSearchIndexRebuildResumeMarker:0];
    if ([(PLGlobalValues *)self isSearchIndexRebuildFinished])
    {
      v8 = [MEMORY[0x1E695DF00] now];
      [(PLGlobalValues *)self setSearchIndexRebuildEndDate:v8];
    }
  }

  return v6 != a3;
}

- (void)resetSearchIndexRebuildMetadataWithSceneTaxonomyDigests:(id)a3
{
  v4 = a3;
  [(PLGlobalValues *)self clearRebuildFinishedFlags];
  [(PLGlobalValues *)self setSearchIndexRebuildResumeMarker:0];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{+[PLSearchIndexConfiguration currentSearchIndexVersion](PLSearchIndexConfiguration, "currentSearchIndexVersion")}];
  [(PLGlobalValues *)self setSearchIndexVersion:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{+[PLSearchIndexConfiguration currentEmbeddingModelVersion](PLSearchIndexConfiguration, "currentEmbeddingModelVersion")}];
  [(PLGlobalValues *)self setSearchIndexEmbeddingModelVersion:v6];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{+[PLSearchIndexConfiguration currentUtilityTypeClassifierVersion](PLSearchIndexConfiguration, "currentUtilityTypeClassifierVersion")}];
  [(PLGlobalValues *)self setSearchIndexUtilityTypeClassifierVersion:v7];

  v8 = +[PLSearchIndexConfiguration locale];
  v9 = [v8 localeIdentifier];
  [(PLGlobalValues *)self setSearchIndexLocaleIdentifier:v9];

  [(PLGlobalValues *)self setSearchIndexSceneTaxonomySHA:v4];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{+[PLSearchIndexConfiguration featureSettings](PLSearchIndexConfiguration, "featureSettings")}];
  [(PLGlobalValues *)self setSearchIndexFeatureSettings:v10];

  [(PLGlobalValues *)self setSearchIndexSpotlightClientState:0];

  [(PLGlobalValues *)self setSearchIndexRebuildRequiredExternalReasons:0];
}

- (void)clearRebuildFinishedFlags
{
  v3 = [(PLGlobalValues *)self unpackedSearchIndexStatus];
  if ((v3 & 0xFFFFFFFFFFFFFFC0) != v3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    [(PLGlobalValues *)self setSearchIndexStatus:v4];
  }
}

- (void)setSearchIndexRebuildResumeObjectID:(id)a3
{
  v5 = [a3 URIRepresentation];
  v4 = [v5 absoluteString];
  [(PLGlobalValues *)self setSearchIndexRebuildResumeMarker:v4];
}

- (NSManagedObjectID)searchIndexRebuildResumeObjectID
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(PLGlobalValues *)self searchIndexRebuildResumeMarker];
  if (v3)
  {
    v4 = [(PLGlobalValues *)self moc];
    v5 = [v4 persistentStoreCoordinator];
    v6 = [MEMORY[0x1E695DFF8] URLWithString:v3];
    v7 = [v5 managedObjectIDForURIRepresentation:v6];

    v8 = [(PLGlobalValues *)self searchIndexingEntityToRebuild];
    v9 = [v7 entity];
    v10 = [v9 name];
    v11 = PLSearchIndexingEntityForEntityName(v10);

    if (v11 == v8)
    {
      goto LABEL_10;
    }

    v12 = PLSearchBackendIndexRebuildGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if (v8 > 9)
      {
        v13 = @"invalid";
      }

      else
      {
        v13 = off_1E7571300[v8];
      }

      v14 = v13;
      v16 = 138543618;
      v17 = v7;
      v18 = 2114;
      v19 = v14;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Rebuild resume object ID %{public}@ does not match stored entity to rebuild: %{public}@, cannot resume from this token", &v16, 0x16u);
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (BOOL)rebuildWorkIsRequiredForEntity:(unint64_t)a3
{
  if (a3 > 9 || ((0x105uLL >> a3) & 1) != 0)
  {
    return 0;
  }

  v3 = qword_19C60FB90[a3];
  return ([(PLGlobalValues *)self unpackedSearchIndexStatus]& v3) == 0;
}

- (unint64_t)searchIndexingEntityToRebuild
{
  v2 = [(PLGlobalValues *)self unpackedSearchIndexStatus];
  result = 0;
  while (((0x105uLL >> result) & 1) != 0 || (qword_19C60FB90[result] & ~v2) == 0)
  {
    if (++result == 10)
    {
      return 0;
    }
  }

  return result;
}

- (unint64_t)unpackedSearchIndexRebuildCoalescedReasons
{
  v3 = [(PLGlobalValues *)self searchIndexRebuildCoalescedReasons];
  if (v3)
  {
    v4 = [(PLGlobalValues *)self searchIndexRebuildCoalescedReasons];
    v5 = [v4 unsignedIntegerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)unpackedSearchIndexRebuildRequiredExternalReasons
{
  v3 = [(PLGlobalValues *)self searchIndexRebuildRequiredExternalReasons];
  if (v3)
  {
    v4 = [(PLGlobalValues *)self searchIndexRebuildRequiredExternalReasons];
    v5 = [v4 unsignedIntegerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)unpackedSearchIndexFeatureSettings
{
  v3 = [(PLGlobalValues *)self searchIndexFeatureSettings];
  if (v3)
  {
    v4 = [(PLGlobalValues *)self searchIndexFeatureSettings];
    v5 = [v4 unsignedIntegerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)unpackedSearchIndexStatus
{
  v3 = [(PLGlobalValues *)self searchIndexStatus];
  if (v3)
  {
    v4 = [(PLGlobalValues *)self searchIndexStatus];
    v5 = [v4 unsignedIntegerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)searchIndexSpotlightClientStateWithData:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v11 = 0;
  v3 = [MEMORY[0x1E696AE40] propertyListWithData:a3 options:0 format:0 error:&v11];
  v4 = v11;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [MEMORY[0x1E69BF2D0] successWithResult:v3];

      goto LABEL_6;
    }

    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E69BFF48];
    v12 = *MEMORY[0x1E696A278];
    v13[0] = @"Spotlight client state is not a dictionary";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [v6 errorWithDomain:v7 code:46514 userInfo:v8];

    v4 = v9;
  }

  v5 = [MEMORY[0x1E69BF2D0] failureWithError:v4];
LABEL_6:

  return v5;
}

+ (id)searchIndexSpotlightClientStateDataWithDictionary:(id)a3
{
  v6 = 0;
  v3 = [MEMORY[0x1E696AE40] dataWithPropertyList:a3 format:200 options:0 error:&v6];
  if (v3)
  {
    [MEMORY[0x1E69BF2D0] successWithResult:v3];
  }

  else
  {
    [MEMORY[0x1E69BF2D0] failureWithError:v6];
  }
  v4 = ;

  return v4;
}

+ (id)searchIndexSpotlightClientStateDictionaryWithIdentifier:(id)a3 timestamp:(id)a4
{
  v17[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v5;
  if ([v5 length] >= 0x25)
  {
    v8 = [v5 substringToIndex:33];
    v7 = [v8 stringByAppendingString:@"..."];
  }

  v16[0] = @"v";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:PLSearchIndexSpotlightClientStateVersion];
  v17[0] = v9;
  v16[1] = @"t";
  v10 = MEMORY[0x1E696AD98];
  [v6 timeIntervalSinceReferenceDate];
  v12 = v11;

  v13 = [v10 numberWithDouble:v12];
  v16[2] = @"i";
  v17[1] = v13;
  v17[2] = v7;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  return v14;
}

@end