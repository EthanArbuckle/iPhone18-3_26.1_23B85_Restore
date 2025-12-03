@interface PLGlobalValues
+ (id)searchIndexSpotlightClientStateDataWithDictionary:(id)dictionary;
+ (id)searchIndexSpotlightClientStateDictionaryWithIdentifier:(id)identifier timestamp:(id)timestamp;
+ (id)searchIndexSpotlightClientStateWithData:(id)data;
+ (void)setJournalRebuildRequired:(BOOL)required managedObjectContext:(id)context;
+ (void)setLibraryCreateOptions:(unint64_t)options managedObjectContext:(id)context;
- (BOOL)_isNewLibraryOrRebuildWithPathManager:(id)manager;
- (BOOL)backgroundJobServiceNeedsProcessing;
- (BOOL)didImportFileSystemAssets;
- (BOOL)hasCloudInitialUploadCompleted;
- (BOOL)hasStableHashProcessingCompleted;
- (BOOL)isInitialDuplicateDetectorProcessingCompleted;
- (BOOL)isJournalRebuildRequired;
- (BOOL)isRebuildComplete;
- (BOOL)markRebuildPhaseCompleted:(unint64_t)completed;
- (BOOL)rebuildWorkIsRequiredForEntity:(unint64_t)entity;
- (BOOL)shouldDropGlobalSpotlightIndexForLibraryIdentifier:(int64_t)identifier;
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
- (PLGlobalValues)initWithManagedObjectContext:(id)context;
- (char)duplicateProcessingStatus;
- (double)searchIndexRebuildTimeIsRebuildInProgress:(BOOL *)progress;
- (double)searchIndexUptimeIsRebuildInProgress:(BOOL *)progress;
- (double)syndicationSyncRangeDenominator;
- (id)_getValueUsingPerformBlockAndWait:(id)wait;
- (id)_lastKnownTransactionTokenWithTransactionNumberKey:(id)key andStoreUUIDKey:(id)dKey;
- (id)searchIndexSpotlightClientStateData;
- (int64_t)importFilesystemAssetsState;
- (unint64_t)libraryCreateOptions;
- (unint64_t)searchIndexRebuildReasonsWithSceneTaxonomyDigests:(id)digests spotlightRequestedRebuild:(BOOL)rebuild pathManager:(id)manager;
- (unint64_t)searchIndexingEntityToRebuild;
- (unint64_t)unpackedSearchIndexFeatureSettings;
- (unint64_t)unpackedSearchIndexRebuildCoalescedReasons;
- (unint64_t)unpackedSearchIndexRebuildRequiredExternalReasons;
- (unint64_t)unpackedSearchIndexStatus;
- (void)_setBackgroundJobServiceNeedsProcessing:(BOOL)processing;
- (void)_setImportFilesystemAssetsState:(int64_t)state;
- (void)_setLastKnownTransactionToken:(id)token withTransactionNumberKey:(id)key andStoreUUIDKey:(id)dKey;
- (void)_setRebuildComplete;
- (void)_setValueUsingPerformBlockAndWait:(id)wait responsibleCaller:(const char *)caller;
- (void)addRebuildRequiredExternalReasons:(unint64_t)reasons;
- (void)addSearchIndexRebuildCoalescedReasons:(unint64_t)reasons;
- (void)clearRebuildFinishedFlags;
- (void)dontImportFileSystemDataIntoDatabase;
- (void)incrementSpotlightClientStateMismatchedCount;
- (void)incrementSpotlightClientStateMissingCount;
- (void)resetSearchIndexRebuildMetadataWithSceneTaxonomyDigests:(id)digests;
- (void)setBackgroundJobServiceNeedsProcessing:(BOOL)processing;
- (void)setCloudInitialUploadCompleted:(BOOL)completed;
- (void)setCloudTrackerLastKnownCloudVersion:(id)version;
- (void)setDateOfLastExternalAvailabilitySignal:(id)signal;
- (void)setDuplicateProcessingStatus:(char)status;
- (void)setFeatureAvailability:(id)availability;
- (void)setFeatureAvailabilityJobDidFail:(id)fail;
- (void)setGreenTeaContactsAuthorization:(id)authorization;
- (void)setGreenValues:(id)values;
- (void)setGuestAssetInitialSyncResumeMarker:(id)marker;
- (void)setGuestAssetSyncStatus:(id)status;
- (void)setImportFilesystemAssetsState:(int64_t)state;
- (void)setInProgressFullIndexSyndicationSyncDate:(id)date;
- (void)setJournalRebuildRequired:(BOOL)required;
- (void)setLastAttachmentSyndicationSyncDate:(id)date;
- (void)setLastChatSyndicationSyncDate:(id)date;
- (void)setLastCompletePrefetchDate:(id)date;
- (void)setLastDeleteSyndicationSyncDate:(id)date;
- (void)setLastFullIndexSyndicationSyncStartDate:(id)date;
- (void)setLastGuestAssetSyncTargetLibraryPath:(id)path;
- (void)setLastGuestAssetSyncToken:(id)token;
- (void)setLastInitialDuplicateDetectorProcessingCompletedDate:(id)date;
- (void)setLastUpdatedGraphLabelsAgainstPLSImageUUID:(id)d;
- (void)setLibraryReadyForAnalysisDate:(id)date;
- (void)setLocaleIdentifier:(id)identifier;
- (void)setLocationOfInterestUpdateDate:(id)date;
- (void)setMediaAnalysisEmbeddingVersion:(id)version;
- (void)setMediaAnalysisEmbeddingVersionBumpDate:(id)date;
- (void)setMemoriesCreationPreviewAvailableDate:(id)date;
- (void)setOrphanedSceneClassificationsCount:(id)count;
- (void)setPersonSyncResumeMarker:(id)marker;
- (void)setPersonSyncState:(id)state;
- (void)setRebuildComplete;
- (void)setSearchFeatureReadyDate:(id)date;
- (void)setSearchFeatureReadyFraction:(id)fraction;
- (void)setSearchIndexEmbeddingModelVersion:(id)version;
- (void)setSearchIndexFeatureSettings:(id)settings;
- (void)setSearchIndexLocaleIdentifier:(id)identifier;
- (void)setSearchIndexRebuildCoalescedReasons:(id)reasons;
- (void)setSearchIndexRebuildEndDate:(id)date;
- (void)setSearchIndexRebuildRequiredExternalReasons:(id)reasons;
- (void)setSearchIndexRebuildResumeMarker:(id)marker;
- (void)setSearchIndexRebuildResumeObjectID:(id)d;
- (void)setSearchIndexRebuildStartDate:(id)date;
- (void)setSearchIndexSceneTaxonomySHA:(id)a;
- (void)setSearchIndexSpotlightClientState:(id)state;
- (void)setSearchIndexSpotlightClientStateMismatchedCount:(id)count;
- (void)setSearchIndexSpotlightClientStateMissingCount:(id)count;
- (void)setSearchIndexStatus:(id)status;
- (void)setSearchIndexUtilityTypeClassifierVersion:(id)version;
- (void)setSearchIndexVersion:(id)version;
- (void)setStableHashProcessingCompleted:(BOOL)completed;
- (void)setStableHashResumeObjectID:(id)d;
- (void)setSyndicationPrefetchDownloadThrottlingDate:(id)date;
- (void)setSyndicationStartDate:(id)date;
- (void)setSyndicationSyncRangeDenominator:(double)denominator;
- (void)setTimeOfLastFeatureAvailabilityJob:(id)job;
- (void)setWidgetTimelineGeneratedForDisplaySize:(CGSize)size;
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
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)_setValueUsingPerformBlockAndWait:(id)wait responsibleCaller:(const char *)caller
{
  waitCopy = wait;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__PLGlobalValues__setValueUsingPerformBlockAndWait_responsibleCaller___block_invoke;
  v8[3] = &unk_1E7575338;
  v8[4] = self;
  v9 = waitCopy;
  callerCopy = caller;
  v7 = waitCopy;
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

- (id)_getValueUsingPerformBlockAndWait:(id)wait
{
  waitCopy = wait;
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
  v5 = waitCopy;
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

- (void)setLocationOfInterestUpdateDate:(id)date
{
  dateCopy = date;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__PLGlobalValues_setLocationOfInterestUpdateDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = dateCopy;
  v10 = v5;
  v6 = v5;
  v7 = dateCopy;
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

- (void)setLibraryReadyForAnalysisDate:(id)date
{
  dateCopy = date;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PLGlobalValues_setLibraryReadyForAnalysisDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = dateCopy;
  v10 = v5;
  v6 = v5;
  v7 = dateCopy;
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

- (void)setMediaAnalysisEmbeddingVersionBumpDate:(id)date
{
  dateCopy = date;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__PLGlobalValues_setMediaAnalysisEmbeddingVersionBumpDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = dateCopy;
  v10 = v5;
  v6 = v5;
  v7 = dateCopy;
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

- (void)setMediaAnalysisEmbeddingVersion:(id)version
{
  versionCopy = version;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PLGlobalValues_setMediaAnalysisEmbeddingVersion___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = versionCopy;
  v10 = v5;
  v6 = v5;
  v7 = versionCopy;
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

- (void)setDateOfLastExternalAvailabilitySignal:(id)signal
{
  signalCopy = signal;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__PLGlobalValues_setDateOfLastExternalAvailabilitySignal___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = signalCopy;
  v10 = v5;
  v6 = v5;
  v7 = signalCopy;
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

- (void)setMemoriesCreationPreviewAvailableDate:(id)date
{
  dateCopy = date;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__PLGlobalValues_setMemoriesCreationPreviewAvailableDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = dateCopy;
  v10 = v5;
  v6 = v5;
  v7 = dateCopy;
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

- (void)setSearchFeatureReadyFraction:(id)fraction
{
  fractionCopy = fraction;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__PLGlobalValues_setSearchFeatureReadyFraction___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = fractionCopy;
  v10 = v5;
  v6 = v5;
  v7 = fractionCopy;
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

- (void)setSearchFeatureReadyDate:(id)date
{
  dateCopy = date;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__PLGlobalValues_setSearchFeatureReadyDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = dateCopy;
  v10 = v5;
  v6 = v5;
  v7 = dateCopy;
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

- (void)setFeatureAvailabilityJobDidFail:(id)fail
{
  failCopy = fail;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PLGlobalValues_setFeatureAvailabilityJobDidFail___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = failCopy;
  v10 = v5;
  v6 = v5;
  v7 = failCopy;
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

- (void)setTimeOfLastFeatureAvailabilityJob:(id)job
{
  jobCopy = job;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__PLGlobalValues_setTimeOfLastFeatureAvailabilityJob___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = jobCopy;
  v10 = v5;
  v6 = v5;
  v7 = jobCopy;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setTimeOfLastFeatureAvailabilityJob:]"];
}

- (void)setFeatureAvailability:(id)availability
{
  availabilityCopy = availability;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__PLGlobalValues_setFeatureAvailability___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = availabilityCopy;
  v10 = v5;
  v6 = v5;
  v7 = availabilityCopy;
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

- (void)setLastUpdatedGraphLabelsAgainstPLSImageUUID:(id)d
{
  dCopy = d;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__PLGlobalValues_setLastUpdatedGraphLabelsAgainstPLSImageUUID___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = dCopy;
  v10 = v5;
  v6 = v5;
  v7 = dCopy;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setLastUpdatedGraphLabelsAgainstPLSImageUUID:]"];
}

- (void)setSearchIndexRebuildCoalescedReasons:(id)reasons
{
  reasonsCopy = reasons;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__PLGlobalValues_setSearchIndexRebuildCoalescedReasons___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = reasonsCopy;
  v10 = v5;
  v6 = v5;
  v7 = reasonsCopy;
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

- (void)setSearchIndexRebuildRequiredExternalReasons:(id)reasons
{
  reasonsCopy = reasons;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__PLGlobalValues_setSearchIndexRebuildRequiredExternalReasons___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = reasonsCopy;
  v10 = v5;
  v6 = v5;
  v7 = reasonsCopy;
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

- (void)setSearchIndexRebuildEndDate:(id)date
{
  dateCopy = date;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__PLGlobalValues_setSearchIndexRebuildEndDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = dateCopy;
  v10 = v5;
  v6 = v5;
  v7 = dateCopy;
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

- (void)setSearchIndexRebuildStartDate:(id)date
{
  dateCopy = date;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PLGlobalValues_setSearchIndexRebuildStartDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = dateCopy;
  v10 = v5;
  v6 = v5;
  v7 = dateCopy;
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

- (void)setSearchIndexSpotlightClientStateMismatchedCount:(id)count
{
  countCopy = count;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__PLGlobalValues_setSearchIndexSpotlightClientStateMismatchedCount___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = countCopy;
  v10 = v5;
  v6 = v5;
  v7 = countCopy;
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

- (void)setSearchIndexSpotlightClientStateMissingCount:(id)count
{
  countCopy = count;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__PLGlobalValues_setSearchIndexSpotlightClientStateMissingCount___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = countCopy;
  v10 = v5;
  v6 = v5;
  v7 = countCopy;
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

- (void)setSearchIndexSpotlightClientState:(id)state
{
  stateCopy = state;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__PLGlobalValues_setSearchIndexSpotlightClientState___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = stateCopy;
  v10 = v5;
  v6 = v5;
  v7 = stateCopy;
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

- (void)setSearchIndexRebuildResumeMarker:(id)marker
{
  markerCopy = marker;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__PLGlobalValues_setSearchIndexRebuildResumeMarker___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = markerCopy;
  v10 = v5;
  v6 = v5;
  v7 = markerCopy;
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

- (void)setSearchIndexStatus:(id)status
{
  statusCopy = status;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__PLGlobalValues_setSearchIndexStatus___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = statusCopy;
  v10 = v5;
  v6 = v5;
  v7 = statusCopy;
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

- (void)setSearchIndexFeatureSettings:(id)settings
{
  settingsCopy = settings;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__PLGlobalValues_setSearchIndexFeatureSettings___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = settingsCopy;
  v10 = v5;
  v6 = v5;
  v7 = settingsCopy;
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

- (void)setSearchIndexSceneTaxonomySHA:(id)a
{
  aCopy = a;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PLGlobalValues_setSearchIndexSceneTaxonomySHA___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = aCopy;
  v10 = v5;
  v6 = v5;
  v7 = aCopy;
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

- (void)setSearchIndexLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PLGlobalValues_setSearchIndexLocaleIdentifier___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = identifierCopy;
  v10 = v5;
  v6 = v5;
  v7 = identifierCopy;
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

- (void)setSearchIndexUtilityTypeClassifierVersion:(id)version
{
  versionCopy = version;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__PLGlobalValues_setSearchIndexUtilityTypeClassifierVersion___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = versionCopy;
  v10 = v5;
  v6 = v5;
  v7 = versionCopy;
  [(PLGlobalValues *)self _setValueUsingPerformBlockAndWait:v8 responsibleCaller:"[PLGlobalValues setSearchIndexUtilityTypeClassifierVersion:]"];
}

- (void)setSearchIndexEmbeddingModelVersion:(id)version
{
  versionCopy = version;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__PLGlobalValues_setSearchIndexEmbeddingModelVersion___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = versionCopy;
  v10 = v5;
  v6 = v5;
  v7 = versionCopy;
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

- (void)setSearchIndexVersion:(id)version
{
  versionCopy = version;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__PLGlobalValues_setSearchIndexVersion___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = versionCopy;
  v10 = v5;
  v6 = v5;
  v7 = versionCopy;
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

- (void)setLastCompletePrefetchDate:(id)date
{
  dateCopy = date;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__PLGlobalValues_setLastCompletePrefetchDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = dateCopy;
  v10 = v5;
  v6 = v5;
  v7 = dateCopy;
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

- (void)setCloudInitialUploadCompleted:(BOOL)completed
{
  v5 = self->_moc;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PLGlobalValues_setCloudInitialUploadCompleted___block_invoke;
  v7[3] = &unk_1E7576F80;
  completedCopy = completed;
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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
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

- (void)setStableHashResumeObjectID:(id)d
{
  dCopy = d;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__PLGlobalValues_setStableHashResumeObjectID___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = dCopy;
  v10 = v5;
  v6 = v5;
  v7 = dCopy;
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

  persistentStoreCoordinator = [(NSManagedObjectContext *)v4 persistentStoreCoordinator];
  v7 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:v5];

  return v7;
}

- (void)setStableHashProcessingCompleted:(BOOL)completed
{
  v5 = self->_moc;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__PLGlobalValues_setStableHashProcessingCompleted___block_invoke;
  v7[3] = &unk_1E7576F80;
  completedCopy = completed;
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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
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

- (void)setCloudTrackerLastKnownCloudVersion:(id)version
{
  versionCopy = version;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__PLGlobalValues_setCloudTrackerLastKnownCloudVersion___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = versionCopy;
  v10 = v5;
  v6 = v5;
  v7 = versionCopy;
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

- (void)setOrphanedSceneClassificationsCount:(id)count
{
  countCopy = count;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__PLGlobalValues_setOrphanedSceneClassificationsCount___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = countCopy;
  v10 = v5;
  v6 = v5;
  v7 = countCopy;
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

- (void)setLastInitialDuplicateDetectorProcessingCompletedDate:(id)date
{
  dateCopy = date;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__PLGlobalValues_setLastInitialDuplicateDetectorProcessingCompletedDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = dateCopy;
  v10 = v5;
  v6 = v5;
  v7 = dateCopy;
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
  lastInitialDuplicateDetectorProcessingCompletedDate = [(PLGlobalValues *)self lastInitialDuplicateDetectorProcessingCompletedDate];
  v3 = lastInitialDuplicateDetectorProcessingCompletedDate != 0;

  return v3;
}

- (void)setDuplicateProcessingStatus:(char)status
{
  v5 = self->_moc;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__PLGlobalValues_setDuplicateProcessingStatus___block_invoke;
  v7[3] = &unk_1E7576F80;
  statusCopy = status;
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
  intValue = [v2 intValue];

  return intValue;
}

- (void)setPersonSyncResumeMarker:(id)marker
{
  markerCopy = marker;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__PLGlobalValues_setPersonSyncResumeMarker___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = markerCopy;
  v10 = v5;
  v6 = v5;
  v7 = markerCopy;
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

- (void)setPersonSyncState:(id)state
{
  stateCopy = state;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__PLGlobalValues_setPersonSyncState___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = stateCopy;
  v10 = v5;
  v6 = v5;
  v7 = stateCopy;
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

- (void)setLastGuestAssetSyncTargetLibraryPath:(id)path
{
  pathCopy = path;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__PLGlobalValues_setLastGuestAssetSyncTargetLibraryPath___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = pathCopy;
  v10 = v5;
  v6 = v5;
  v7 = pathCopy;
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

- (void)setGuestAssetInitialSyncResumeMarker:(id)marker
{
  markerCopy = marker;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__PLGlobalValues_setGuestAssetInitialSyncResumeMarker___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = markerCopy;
  v10 = v5;
  v6 = v5;
  v7 = markerCopy;
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

- (void)setGuestAssetSyncStatus:(id)status
{
  statusCopy = status;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__PLGlobalValues_setGuestAssetSyncStatus___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = statusCopy;
  v10 = v5;
  v6 = v5;
  v7 = statusCopy;
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

- (void)setLastGuestAssetSyncToken:(id)token
{
  tokenCopy = token;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__PLGlobalValues_setLastGuestAssetSyncToken___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = tokenCopy;
  v10 = v5;
  v6 = v5;
  v7 = tokenCopy;
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

- (void)setSyndicationSyncRangeDenominator:(double)denominator
{
  if (denominator >= 1.0)
  {
    denominatorCopy = denominator;
  }

  else
  {
    denominatorCopy = 1.0;
  }

  v5 = self->_moc;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PLGlobalValues_setSyndicationSyncRangeDenominator___block_invoke;
  v7[3] = &unk_1E7577B90;
  v9 = denominatorCopy;
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

- (void)setSyndicationPrefetchDownloadThrottlingDate:(id)date
{
  dateCopy = date;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__PLGlobalValues_setSyndicationPrefetchDownloadThrottlingDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = dateCopy;
  v10 = v5;
  v6 = v5;
  v7 = dateCopy;
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

- (void)setSyndicationStartDate:(id)date
{
  dateCopy = date;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__PLGlobalValues_setSyndicationStartDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = dateCopy;
  v10 = v5;
  v6 = v5;
  v7 = dateCopy;
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

- (void)setLastDeleteSyndicationSyncDate:(id)date
{
  dateCopy = date;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PLGlobalValues_setLastDeleteSyndicationSyncDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = dateCopy;
  v10 = v5;
  v6 = v5;
  v7 = dateCopy;
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

- (void)setLastChatSyndicationSyncDate:(id)date
{
  dateCopy = date;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PLGlobalValues_setLastChatSyndicationSyncDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = dateCopy;
  v10 = v5;
  v6 = v5;
  v7 = dateCopy;
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

- (void)setLastAttachmentSyndicationSyncDate:(id)date
{
  dateCopy = date;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__PLGlobalValues_setLastAttachmentSyndicationSyncDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = dateCopy;
  v10 = v5;
  v6 = v5;
  v7 = dateCopy;
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

- (void)setInProgressFullIndexSyndicationSyncDate:(id)date
{
  dateCopy = date;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__PLGlobalValues_setInProgressFullIndexSyndicationSyncDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = dateCopy;
  v10 = v5;
  v6 = v5;
  v7 = dateCopy;
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

- (void)setLastFullIndexSyndicationSyncStartDate:(id)date
{
  dateCopy = date;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__PLGlobalValues_setLastFullIndexSyndicationSyncStartDate___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = dateCopy;
  v10 = v5;
  v6 = v5;
  v7 = dateCopy;
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

- (void)setWidgetTimelineGeneratedForDisplaySize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

- (void)setGreenTeaContactsAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PLGlobalValues_setGreenTeaContactsAuthorization___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = authorizationCopy;
  v10 = v5;
  v6 = v5;
  v7 = authorizationCopy;
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

- (void)setLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__PLGlobalValues_setLocaleIdentifier___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = identifierCopy;
  v10 = v5;
  v6 = v5;
  v7 = identifierCopy;
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

- (void)setGreenValues:(id)values
{
  valuesCopy = values;
  v5 = self->_moc;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__PLGlobalValues_setGreenValues___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = valuesCopy;
  v10 = v5;
  v6 = v5;
  v7 = valuesCopy;
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

- (void)_setBackgroundJobServiceNeedsProcessing:(BOOL)processing
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:processing];
  [PLGlobalKeyValue setGlobalValue:v4 forKey:@"BackgroundJobServiceNeedsProcessing" managedObjectContext:self->_moc];
}

- (void)setBackgroundJobServiceNeedsProcessing:(BOOL)processing
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__PLGlobalValues_setBackgroundJobServiceNeedsProcessing___block_invoke;
  v5[3] = &unk_1E756CEE8;
  objc_copyWeak(&v6, &location);
  processingCopy = processing;
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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
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

- (void)setJournalRebuildRequired:(BOOL)required
{
  v5 = self->_moc;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__PLGlobalValues_setJournalRebuildRequired___block_invoke;
  v7[3] = &unk_1E7576F80;
  requiredCopy = required;
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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
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

- (void)_setImportFilesystemAssetsState:(int64_t)state
{
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [PLGlobalKeyValue setGlobalValue:v5 forKey:@"ImportedFileSystemAssets" managedObjectContext:self->_moc];

  if (state == 1)
  {
    date = [MEMORY[0x1E695DF00] date];
    [PLGlobalKeyValue setGlobalValue:date forKey:@"ImportedFileSystemAssetsDate" managedObjectContext:self->_moc];
  }

  else
  {
    moc = self->_moc;

    [PLGlobalKeyValue setGlobalValue:0 forKey:@"ImportedFileSystemAssetsDate" managedObjectContext:moc];
  }
}

- (void)setImportFilesystemAssetsState:(int64_t)state
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__PLGlobalValues_setImportFilesystemAssetsState___block_invoke;
  v5[3] = &unk_1E756CE10;
  objc_copyWeak(v6, &location);
  v6[1] = state;
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
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)didImportFileSystemAssets
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__PLGlobalValues_didImportFileSystemAssets__block_invoke;
  v5[3] = &unk_1E75787F8;
  v5[4] = self;
  v2 = [(PLGlobalValues *)self _getValueUsingPerformBlockAndWait:v5];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

id __43__PLGlobalValues_didImportFileSystemAssets__block_invoke(uint64_t a1)
{
  v1 = [PLGlobalKeyValue globalValueForKey:@"ImportedFileSystemAssets" managedObjectContext:*(*(a1 + 32) + 16)];
  v2 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v1, "integerValue") == 1}];

  return v2;
}

- (PLGlobalValues)initWithManagedObjectContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = PLGlobalValues;
  v6 = [(PLGlobalValues *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_moc, context);
    photoLibrary = [contextCopy photoLibrary];
    photoLibrary = v7->_photoLibrary;
    v7->_photoLibrary = photoLibrary;
  }

  return v7;
}

- (void)_setLastKnownTransactionToken:(id)token withTransactionNumberKey:(id)key andStoreUUIDKey:(id)dKey
{
  tokenCopy = token;
  keyCopy = key;
  dKeyCopy = dKey;
  v12 = dKeyCopy;
  if (keyCopy)
  {
    if (dKeyCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGlobalValues.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"transactionNumberKey"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLGlobalValues.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"storeUUIDKey"}];

LABEL_3:
  v13 = self->_moc;
  if (tokenCopy)
  {
    storeTokens = [tokenCopy storeTokens];
    if ([storeTokens count] != 1)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLGlobalValues.m" lineNumber:62 description:@"unexpected number of tokens"];
    }

    allKeys = [storeTokens allKeys];
    firstObject = [allKeys firstObject];

    allValues = [storeTokens allValues];
    firstObject2 = [allValues firstObject];
  }

  else
  {
    firstObject2 = 0;
    firstObject = 0;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __89__PLGlobalValues__setLastKnownTransactionToken_withTransactionNumberKey_andStoreUUIDKey___block_invoke;
  v27[3] = &unk_1E75730F8;
  v28 = v12;
  v29 = v13;
  v30 = firstObject;
  v31 = firstObject2;
  v32 = keyCopy;
  v19 = keyCopy;
  v20 = firstObject2;
  v21 = firstObject;
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

- (id)_lastKnownTransactionTokenWithTransactionNumberKey:(id)key andStoreUUIDKey:(id)dKey
{
  keyCopy = key;
  dKeyCopy = dKey;
  v9 = dKeyCopy;
  if (keyCopy)
  {
    if (dKeyCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGlobalValues.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"transactionNumberKey"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLGlobalValues.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"storeUUIDKey"}];

LABEL_3:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__PLGlobalValues__lastKnownTransactionTokenWithTransactionNumberKey_andStoreUUIDKey___block_invoke;
  v16[3] = &unk_1E7565A80;
  v17 = v9;
  selfCopy = self;
  v19 = keyCopy;
  v10 = keyCopy;
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

+ (void)setLibraryCreateOptions:(unint64_t)options managedObjectContext:(id)context
{
  if (options)
  {
    v5 = MEMORY[0x1E696AD98];
    contextCopy = context;
    v7 = [v5 numberWithUnsignedInteger:options];
    [PLGlobalKeyValue setGlobalValue:v7 forKey:@"LibraryCreateOptions" managedObjectContext:contextCopy];
  }
}

+ (void)setJournalRebuildRequired:(BOOL)required managedObjectContext:(id)context
{
  if (required)
  {
    v4 = MEMORY[0x1E696AD98];
    contextCopy = context;
    v6 = [v4 numberWithBool:1];
    [PLGlobalKeyValue setGlobalValue:v6 forKey:@"JournalRebuildRequired" managedObjectContext:contextCopy];

    v7 = @"RebuildCompleteDate";
    contextCopy2 = contextCopy;
  }

  else
  {
    contextCopy2 = context;
    v7 = @"JournalRebuildRequired";
  }

  [PLGlobalKeyValue setGlobalValue:0 forKey:v7 managedObjectContext:contextCopy2];
}

- (void)incrementSpotlightClientStateMismatchedCount
{
  searchIndexSpotlightClientStateMismatchedCount = [(PLGlobalValues *)self searchIndexSpotlightClientStateMismatchedCount];
  unsignedIntegerValue = [searchIndexSpotlightClientStateMismatchedCount unsignedIntegerValue];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + 1];
  [(PLGlobalValues *)self setSearchIndexSpotlightClientStateMismatchedCount:v5];
}

- (void)incrementSpotlightClientStateMissingCount
{
  searchIndexSpotlightClientStateMissingCount = [(PLGlobalValues *)self searchIndexSpotlightClientStateMissingCount];
  unsignedIntegerValue = [searchIndexSpotlightClientStateMissingCount unsignedIntegerValue];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + 1];
  [(PLGlobalValues *)self setSearchIndexSpotlightClientStateMissingCount:v5];
}

- (id)searchIndexSpotlightClientStateData
{
  searchIndexSpotlightClientState = [(PLGlobalValues *)self searchIndexSpotlightClientState];
  if (searchIndexSpotlightClientState)
  {
    v3 = [objc_opt_class() searchIndexSpotlightClientStateDataWithDictionary:searchIndexSpotlightClientState];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)searchIndexUptimeIsRebuildInProgress:(BOOL *)progress
{
  v28 = *MEMORY[0x1E69E9840];
  searchIndexRebuildStartDate = [(PLGlobalValues *)self searchIndexRebuildStartDate];
  searchIndexRebuildEndDate = [(PLGlobalValues *)self searchIndexRebuildEndDate];
  isSearchIndexRebuildFinished = [(PLGlobalValues *)self isSearchIndexRebuildFinished];
  if (isSearchIndexRebuildFinished)
  {
    [searchIndexRebuildEndDate timeIntervalSinceReferenceDate];
    v9 = v8;
    [searchIndexRebuildStartDate timeIntervalSinceReferenceDate];
    if (v9 > v10)
    {
      v11 = [MEMORY[0x1E695DF00] now];
      [v11 timeIntervalSinceDate:searchIndexRebuildEndDate];
      v13 = v12;

      goto LABEL_13;
    }

    goto LABEL_7;
  }

  [searchIndexRebuildStartDate timeIntervalSinceReferenceDate];
  v15 = v14;
  [searchIndexRebuildEndDate timeIntervalSinceReferenceDate];
  if (v15 <= v16)
  {
LABEL_7:
    v18 = PLSearchBackendIndexRebuildGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = @"YES";
      if (isSearchIndexRebuildFinished)
      {
        v19 = @"NO";
      }

      v20 = v19;
      v22 = 138543874;
      v23 = v20;
      v24 = 2114;
      v25 = searchIndexRebuildStartDate;
      v26 = 2114;
      v27 = searchIndexRebuildEndDate;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Failed to get search index uptime. Invalid index rebuild completion status [%{public}@], start date [%{public}@], end date [%{public}@]", &v22, 0x20u);
    }

    goto LABEL_12;
  }

  if (searchIndexRebuildEndDate)
  {
    [searchIndexRebuildStartDate timeIntervalSinceDate:searchIndexRebuildEndDate];
    v13 = v17;
    goto LABEL_13;
  }

LABEL_12:
  v13 = 0.0;
LABEL_13:
  if (progress)
  {
    *progress = !isSearchIndexRebuildFinished;
  }

  return v13;
}

- (double)searchIndexRebuildTimeIsRebuildInProgress:(BOOL *)progress
{
  v28 = *MEMORY[0x1E69E9840];
  searchIndexRebuildStartDate = [(PLGlobalValues *)self searchIndexRebuildStartDate];
  searchIndexRebuildEndDate = [(PLGlobalValues *)self searchIndexRebuildEndDate];
  isSearchIndexRebuildFinished = [(PLGlobalValues *)self isSearchIndexRebuildFinished];
  if (isSearchIndexRebuildFinished)
  {
    [searchIndexRebuildEndDate timeIntervalSinceReferenceDate];
    v9 = v8;
    [searchIndexRebuildStartDate timeIntervalSinceReferenceDate];
    if (v9 > v10)
    {
      if (searchIndexRebuildStartDate)
      {
        [searchIndexRebuildEndDate timeIntervalSinceDate:searchIndexRebuildStartDate];
        v12 = v11;
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    [searchIndexRebuildStartDate timeIntervalSinceReferenceDate];
    v14 = v13;
    [searchIndexRebuildEndDate timeIntervalSinceReferenceDate];
    if (v14 > v15)
    {
      v16 = [MEMORY[0x1E695DF00] now];
      [v16 timeIntervalSinceDate:searchIndexRebuildStartDate];
      v12 = v17;

      goto LABEL_13;
    }
  }

  v18 = PLSearchBackendIndexRebuildGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = @"YES";
    if (isSearchIndexRebuildFinished)
    {
      v19 = @"NO";
    }

    v20 = v19;
    v22 = 138543874;
    v23 = v20;
    v24 = 2114;
    v25 = searchIndexRebuildStartDate;
    v26 = 2114;
    v27 = searchIndexRebuildEndDate;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Failed to get search index rebuild time. Invalid index rebuild completion status [%{public}@], start date [%{public}@], end date [%{public}@]", &v22, 0x20u);
  }

LABEL_12:
  v12 = 0.0;
LABEL_13:
  if (progress)
  {
    *progress = !isSearchIndexRebuildFinished;
  }

  return v12;
}

- (void)addSearchIndexRebuildCoalescedReasons:(unint64_t)reasons
{
  unpackedSearchIndexRebuildCoalescedReasons = [(PLGlobalValues *)self unpackedSearchIndexRebuildCoalescedReasons];
  if (unpackedSearchIndexRebuildCoalescedReasons != (unpackedSearchIndexRebuildCoalescedReasons | reasons))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [(PLGlobalValues *)self setSearchIndexRebuildCoalescedReasons:v6];
  }
}

- (void)addRebuildRequiredExternalReasons:(unint64_t)reasons
{
  unpackedSearchIndexRebuildRequiredExternalReasons = [(PLGlobalValues *)self unpackedSearchIndexRebuildRequiredExternalReasons];
  if (unpackedSearchIndexRebuildRequiredExternalReasons != (unpackedSearchIndexRebuildRequiredExternalReasons | reasons))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [(PLGlobalValues *)self setSearchIndexRebuildRequiredExternalReasons:v6];
  }
}

- (BOOL)shouldDropGlobalSpotlightIndexForLibraryIdentifier:(int64_t)identifier
{
  result = 0;
  if ([PLSpotlightDonationUtilities shouldUseSpotlightPrivateIndexForLibraryIdentifier:identifier])
  {
    searchIndexVersion = [(PLGlobalValues *)self searchIndexVersion];
    if (!searchIndexVersion)
    {
      return 1;
    }

    v5 = searchIndexVersion;
    integerValue = [searchIndexVersion integerValue];

    if (integerValue < 18004)
    {
      return 1;
    }
  }

  return result;
}

- (unint64_t)searchIndexRebuildReasonsWithSceneTaxonomyDigests:(id)digests spotlightRequestedRebuild:(BOOL)rebuild pathManager:(id)manager
{
  rebuildCopy = rebuild;
  v57 = *MEMORY[0x1E69E9840];
  digestsCopy = digests;
  if ([(PLGlobalValues *)self _isNewLibraryOrRebuildWithPathManager:manager])
  {
    v9 = 1024;
  }

  else
  {
    v9 = 0;
  }

  searchIndexVersion = [(PLGlobalValues *)self searchIndexVersion];
  unsignedIntegerValue = [searchIndexVersion unsignedIntegerValue];

  v12 = v9;
  if (unsignedIntegerValue != 19008)
  {
    v12 = v9 | 1;
    v13 = PLSearchBackendIndexRebuildGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      searchIndexVersion2 = [(PLGlobalValues *)self searchIndexVersion];
      v53 = 134218240;
      unsignedIntegerValue2 = [searchIndexVersion2 unsignedIntegerValue];
      v55 = 1024;
      LODWORD(v56) = 19008;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "searchIndexVersion: %tu != SEARCH_INDEX_VERSION: %d", &v53, 0x12u);
    }

    searchIndexVersion3 = [(PLGlobalValues *)self searchIndexVersion];
    unsignedIntegerValue3 = [searchIndexVersion3 unsignedIntegerValue];

    if (unsignedIntegerValue3 <= 0x4653)
    {
      v12 = v9 | 0x21;
      v17 = PLSearchBackendIndexRebuildGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        searchIndexVersion4 = [(PLGlobalValues *)self searchIndexVersion];
        unsignedIntegerValue4 = [searchIndexVersion4 unsignedIntegerValue];
        v53 = 134218240;
        unsignedIntegerValue2 = unsignedIntegerValue4;
        v55 = 1024;
        LODWORD(v56) = 18004;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "searchIndexVersion: %tu != LAST_DROP_INDEX_VERSION: %d", &v53, 0x12u);
      }
    }
  }

  v20 = +[PLSearchIndexConfiguration currentEmbeddingModelVersion];
  searchIndexEmbeddingModelVersion = [(PLGlobalValues *)self searchIndexEmbeddingModelVersion];
  unsignedIntegerValue5 = [searchIndexEmbeddingModelVersion unsignedIntegerValue];

  if (v20 != unsignedIntegerValue5)
  {
    v12 |= 0x40uLL;
    v23 = PLSearchBackendIndexRebuildGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = +[PLSearchIndexConfiguration currentEmbeddingModelVersion];
      searchIndexEmbeddingModelVersion2 = [(PLGlobalValues *)self searchIndexEmbeddingModelVersion];
      unsignedIntegerValue6 = [searchIndexEmbeddingModelVersion2 unsignedIntegerValue];
      v53 = 134218240;
      unsignedIntegerValue2 = v24;
      v55 = 2048;
      v56 = unsignedIntegerValue6;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "currentEmbeddingModelVersion: %tu != searchIndexEmbeddingModelVersion: %tu", &v53, 0x16u);
    }
  }

  v27 = +[PLSearchIndexConfiguration currentUtilityTypeClassifierVersion];
  searchIndexUtilityTypeClassifierVersion = [(PLGlobalValues *)self searchIndexUtilityTypeClassifierVersion];
  unsignedIntegerValue7 = [searchIndexUtilityTypeClassifierVersion unsignedIntegerValue];

  if (v27 != unsignedIntegerValue7)
  {
    v12 |= 0x80uLL;
    v30 = PLSearchBackendIndexRebuildGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = +[PLSearchIndexConfiguration currentUtilityTypeClassifierVersion];
      searchIndexUtilityTypeClassifierVersion2 = [(PLGlobalValues *)self searchIndexUtilityTypeClassifierVersion];
      unsignedIntegerValue8 = [searchIndexUtilityTypeClassifierVersion2 unsignedIntegerValue];
      v53 = 134218240;
      unsignedIntegerValue2 = v31;
      v55 = 2048;
      v56 = unsignedIntegerValue8;
      _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "currentUtilityTypeClassifierVersion: %tu != searchIndexUtilityTypeClassifierVersion: %tu", &v53, 0x16u);
    }
  }

  v34 = +[PLSearchIndexConfiguration locale];
  localeIdentifier = [v34 localeIdentifier];
  searchIndexLocaleIdentifier = [(PLGlobalValues *)self searchIndexLocaleIdentifier];
  v37 = [localeIdentifier isEqualToString:searchIndexLocaleIdentifier];

  if ((v37 & 1) == 0)
  {
    v12 |= 2uLL;
    v38 = PLSearchBackendIndexRebuildGetLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = +[PLSearchIndexConfiguration locale];
      localeIdentifier2 = [v39 localeIdentifier];
      searchIndexLocaleIdentifier2 = [(PLGlobalValues *)self searchIndexLocaleIdentifier];
      v53 = 138543618;
      unsignedIntegerValue2 = localeIdentifier2;
      v55 = 2114;
      v56 = searchIndexLocaleIdentifier2;
      _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_DEFAULT, "localeIdentifier: %{public}@ != searchIndexLocaleIdentifier: %{public}@", &v53, 0x16u);
    }
  }

  searchIndexSceneTaxonomySHA = [(PLGlobalValues *)self searchIndexSceneTaxonomySHA];
  if (searchIndexSceneTaxonomySHA != digestsCopy && ([digestsCopy isEqualToString:searchIndexSceneTaxonomySHA] & 1) == 0)
  {
    v12 |= 4uLL;
    v43 = PLSearchBackendIndexRebuildGetLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v53 = 138543618;
      unsignedIntegerValue2 = digestsCopy;
      v55 = 2114;
      v56 = searchIndexSceneTaxonomySHA;
      _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_DEFAULT, "sceneTaxonomyDigests: %{public}@ != searchIndexSceneTaxonomySHA: %{public}@", &v53, 0x16u);
    }
  }

  unpackedSearchIndexStatus = [(PLGlobalValues *)self unpackedSearchIndexStatus];
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
  if ((v45 & ~unpackedSearchIndexStatus) != 0)
  {
    v49 = v12 | 0x10;
  }

  else
  {
    v49 = v12;
  }

  unpackedSearchIndexRebuildRequiredExternalReasons = [(PLGlobalValues *)self unpackedSearchIndexRebuildRequiredExternalReasons];
  if (rebuildCopy)
  {
    v51 = v49 | unpackedSearchIndexRebuildRequiredExternalReasons | 8;
  }

  else
  {
    v51 = v49 | unpackedSearchIndexRebuildRequiredExternalReasons;
  }

  return v51;
}

- (BOOL)_isNewLibraryOrRebuildWithPathManager:(id)manager
{
  v21 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  searchIndexVersion = [(PLGlobalValues *)self searchIndexVersion];

  if (searchIndexVersion)
  {
    v6 = 0;
  }

  else
  {
    v18 = 0;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    searchIndexSystemInfoFilePath = [managerCopy searchIndexSystemInfoFilePath];
    v9 = [defaultManager fileExistsAtPath:searchIndexSystemInfoFilePath isDirectory:&v18];

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

      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      searchIndexSystemInfoFilePath2 = [managerCopy searchIndexSystemInfoFilePath];
      v17 = 0;
      v13 = [defaultManager2 removeItemAtPath:searchIndexSystemInfoFilePath2 error:&v17];
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

- (BOOL)markRebuildPhaseCompleted:(unint64_t)completed
{
  unpackedSearchIndexStatus = [(PLGlobalValues *)self unpackedSearchIndexStatus];
  v6 = unpackedSearchIndexStatus & completed;
  if ((unpackedSearchIndexStatus & completed) != completed)
  {
    completed = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:unpackedSearchIndexStatus | completed];
    [(PLGlobalValues *)self setSearchIndexStatus:completed];

    [(PLGlobalValues *)self setSearchIndexRebuildResumeMarker:0];
    if ([(PLGlobalValues *)self isSearchIndexRebuildFinished])
    {
      v8 = [MEMORY[0x1E695DF00] now];
      [(PLGlobalValues *)self setSearchIndexRebuildEndDate:v8];
    }
  }

  return v6 != completed;
}

- (void)resetSearchIndexRebuildMetadataWithSceneTaxonomyDigests:(id)digests
{
  digestsCopy = digests;
  [(PLGlobalValues *)self clearRebuildFinishedFlags];
  [(PLGlobalValues *)self setSearchIndexRebuildResumeMarker:0];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{+[PLSearchIndexConfiguration currentSearchIndexVersion](PLSearchIndexConfiguration, "currentSearchIndexVersion")}];
  [(PLGlobalValues *)self setSearchIndexVersion:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{+[PLSearchIndexConfiguration currentEmbeddingModelVersion](PLSearchIndexConfiguration, "currentEmbeddingModelVersion")}];
  [(PLGlobalValues *)self setSearchIndexEmbeddingModelVersion:v6];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{+[PLSearchIndexConfiguration currentUtilityTypeClassifierVersion](PLSearchIndexConfiguration, "currentUtilityTypeClassifierVersion")}];
  [(PLGlobalValues *)self setSearchIndexUtilityTypeClassifierVersion:v7];

  v8 = +[PLSearchIndexConfiguration locale];
  localeIdentifier = [v8 localeIdentifier];
  [(PLGlobalValues *)self setSearchIndexLocaleIdentifier:localeIdentifier];

  [(PLGlobalValues *)self setSearchIndexSceneTaxonomySHA:digestsCopy];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{+[PLSearchIndexConfiguration featureSettings](PLSearchIndexConfiguration, "featureSettings")}];
  [(PLGlobalValues *)self setSearchIndexFeatureSettings:v10];

  [(PLGlobalValues *)self setSearchIndexSpotlightClientState:0];

  [(PLGlobalValues *)self setSearchIndexRebuildRequiredExternalReasons:0];
}

- (void)clearRebuildFinishedFlags
{
  unpackedSearchIndexStatus = [(PLGlobalValues *)self unpackedSearchIndexStatus];
  if ((unpackedSearchIndexStatus & 0xFFFFFFFFFFFFFFC0) != unpackedSearchIndexStatus)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    [(PLGlobalValues *)self setSearchIndexStatus:v4];
  }
}

- (void)setSearchIndexRebuildResumeObjectID:(id)d
{
  uRIRepresentation = [d URIRepresentation];
  absoluteString = [uRIRepresentation absoluteString];
  [(PLGlobalValues *)self setSearchIndexRebuildResumeMarker:absoluteString];
}

- (NSManagedObjectID)searchIndexRebuildResumeObjectID
{
  v20 = *MEMORY[0x1E69E9840];
  searchIndexRebuildResumeMarker = [(PLGlobalValues *)self searchIndexRebuildResumeMarker];
  if (searchIndexRebuildResumeMarker)
  {
    v4 = [(PLGlobalValues *)self moc];
    persistentStoreCoordinator = [v4 persistentStoreCoordinator];
    v6 = [MEMORY[0x1E695DFF8] URLWithString:searchIndexRebuildResumeMarker];
    v7 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:v6];

    searchIndexingEntityToRebuild = [(PLGlobalValues *)self searchIndexingEntityToRebuild];
    entity = [v7 entity];
    name = [entity name];
    v11 = PLSearchIndexingEntityForEntityName(name);

    if (v11 == searchIndexingEntityToRebuild)
    {
      goto LABEL_10;
    }

    v12 = PLSearchBackendIndexRebuildGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if (searchIndexingEntityToRebuild > 9)
      {
        v13 = @"invalid";
      }

      else
      {
        v13 = off_1E7571300[searchIndexingEntityToRebuild];
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

- (BOOL)rebuildWorkIsRequiredForEntity:(unint64_t)entity
{
  if (entity > 9 || ((0x105uLL >> entity) & 1) != 0)
  {
    return 0;
  }

  v3 = qword_19C60FB90[entity];
  return ([(PLGlobalValues *)self unpackedSearchIndexStatus]& v3) == 0;
}

- (unint64_t)searchIndexingEntityToRebuild
{
  unpackedSearchIndexStatus = [(PLGlobalValues *)self unpackedSearchIndexStatus];
  result = 0;
  while (((0x105uLL >> result) & 1) != 0 || (qword_19C60FB90[result] & ~unpackedSearchIndexStatus) == 0)
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
  searchIndexRebuildCoalescedReasons = [(PLGlobalValues *)self searchIndexRebuildCoalescedReasons];
  if (searchIndexRebuildCoalescedReasons)
  {
    searchIndexRebuildCoalescedReasons2 = [(PLGlobalValues *)self searchIndexRebuildCoalescedReasons];
    unsignedIntegerValue = [searchIndexRebuildCoalescedReasons2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (unint64_t)unpackedSearchIndexRebuildRequiredExternalReasons
{
  searchIndexRebuildRequiredExternalReasons = [(PLGlobalValues *)self searchIndexRebuildRequiredExternalReasons];
  if (searchIndexRebuildRequiredExternalReasons)
  {
    searchIndexRebuildRequiredExternalReasons2 = [(PLGlobalValues *)self searchIndexRebuildRequiredExternalReasons];
    unsignedIntegerValue = [searchIndexRebuildRequiredExternalReasons2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (unint64_t)unpackedSearchIndexFeatureSettings
{
  searchIndexFeatureSettings = [(PLGlobalValues *)self searchIndexFeatureSettings];
  if (searchIndexFeatureSettings)
  {
    searchIndexFeatureSettings2 = [(PLGlobalValues *)self searchIndexFeatureSettings];
    unsignedIntegerValue = [searchIndexFeatureSettings2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (unint64_t)unpackedSearchIndexStatus
{
  searchIndexStatus = [(PLGlobalValues *)self searchIndexStatus];
  if (searchIndexStatus)
  {
    searchIndexStatus2 = [(PLGlobalValues *)self searchIndexStatus];
    unsignedIntegerValue = [searchIndexStatus2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

+ (id)searchIndexSpotlightClientStateWithData:(id)data
{
  v13[1] = *MEMORY[0x1E69E9840];
  v11 = 0;
  v3 = [MEMORY[0x1E696AE40] propertyListWithData:data options:0 format:0 error:&v11];
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

+ (id)searchIndexSpotlightClientStateDataWithDictionary:(id)dictionary
{
  v6 = 0;
  v3 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionary format:200 options:0 error:&v6];
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

+ (id)searchIndexSpotlightClientStateDictionaryWithIdentifier:(id)identifier timestamp:(id)timestamp
{
  v17[3] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  timestampCopy = timestamp;
  v7 = identifierCopy;
  if ([identifierCopy length] >= 0x25)
  {
    v8 = [identifierCopy substringToIndex:33];
    v7 = [v8 stringByAppendingString:@"..."];
  }

  v16[0] = @"v";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:PLSearchIndexSpotlightClientStateVersion];
  v17[0] = v9;
  v16[1] = @"t";
  v10 = MEMORY[0x1E696AD98];
  [timestampCopy timeIntervalSinceReferenceDate];
  v12 = v11;

  v13 = [v10 numberWithDouble:v12];
  v16[2] = @"i";
  v17[1] = v13;
  v17[2] = v7;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  return v14;
}

@end