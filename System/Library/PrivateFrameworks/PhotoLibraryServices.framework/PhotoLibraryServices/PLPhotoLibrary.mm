@interface PLPhotoLibrary
+ (BOOL)areOpportunisticTasksDisabled;
+ (BOOL)canSaveVideoToLibrary:(id)a3;
+ (BOOL)isAdjustmentEnvelopeExtension:(id)a3;
+ (BOOL)isAudioFileExtension:(id)a3;
+ (BOOL)isBackgroundProcessingEnabledWithManagedObjectContext:(id)a3;
+ (BOOL)isImageFileExtension:(id)a3;
+ (BOOL)isNonRawImageFileExtension:(id)a3;
+ (BOOL)isRawImageFileExtension:(id)a3;
+ (BOOL)isVideoFileExtension:(id)a3;
+ (BOOL)removeFaceMetadataAtURL:(id)a3 includingPeople:(BOOL)a4;
+ (BOOL)shouldTryFastPathWithLibraryBundle:(id)a3;
+ (BOOL)systemPhotoLibraryIsObtainable;
+ (id)_debugStatisticsDescription;
+ (id)_internalSystemPhotoLibrary;
+ (id)_resourcesInfoFromMoc:(id)a3;
+ (id)_stateDictionary;
+ (id)deferredPhotoPreviewDestinationURLForPrimaryAssetURL:(id)a3;
+ (id)fileReservationForFileAtPath:(id)a3 exclusive:(BOOL)a4;
+ (id)masterURLFromSidecarURLs:(id)a3;
+ (id)newPhotoLibraryWithName:(const char *)a3 loadedFromBundle:(id)a4 options:(id)a5 error:(id *)a6;
+ (id)newPhotoLibraryWithName:(const char *)a3 loadedFromURL:(id)a4 options:(id)a5 error:(id *)a6;
+ (id)opportunisticTaskIsolationQueue;
+ (id)photoOutboundSharingTmpDirectoryURL;
+ (id)queueStatusDescription;
+ (id)requestIdentifierFromDeferredIdentifier:(id)a3;
+ (id)savedPhotosOriginalsSizeWithSizeDataRef:(id)a3;
+ (id)savedPhotosReferenceMediaSizeWithSizeDataRef:(id)a3;
+ (id)stringFromLibraryRole:(unint64_t)a3;
+ (id)systemMainQueuePhotoLibrary;
+ (int)priorityForFileExtension:(id)a3;
+ (os_state_data_s)_stateDataWithHints:(os_state_hints_s *)a3;
+ (unint64_t)CloudPhotoLibrarySize;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_ABORT_4_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_AUTH_23_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_BUSY_5_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_CANTOPEN_14_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_CONSTRAINT_19_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_CORRUPT_11_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_DONE_101_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_EMPTY_16_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_ERROR_1_SQLITE_ERROR_SNAPSHOT_769_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_ERROR_1_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_FORMAT_24_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_FULL_13_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_INTERNAL_2_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_INTERRUPT_9_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_IOERR_10_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_LOCKED_6_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_MISMATCH_20_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_MISUSE_21_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_NOLFS_22_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_NOMEM_7_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_NOTADB_26_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_NOTFOUND_12_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_NOTICE_27_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_OTHER_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_PERM_3_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_PROTOCOL_15_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_RANGE_25_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_READONLY_8_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_ROW_100_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_SCHEMA_17_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_TOOBIG_18_withCode:(int)a3;
+ (void)_abortFromMocExecFail_NSMOC_SQLITE_WARNING_28_withCode:(int)a3;
+ (void)_context:(id)a3 saveFailedWithError:(id)a4;
+ (void)_contextSaveFailedDueToChangingSPL:(id)a3;
+ (void)_contextSaveFailedDueToClientRequestedShutdown:(id)a3;
+ (void)_contextSaveFailedWithCocoaError:(id)a3 message:(id)a4;
+ (void)_contextSaveFailedWithError:(id)a3;
+ (void)_contextSaveFailedWithNSManagedObjectConstraintValidationError:(id)a3;
+ (void)_contextSaveFailedWithNSManagedObjectContextRecursiveSaveError:(id)a3;
+ (void)_contextSaveFailedWithNSManagedObjectValidationError:(id)a3;
+ (void)_contextSaveFailedWithNSPersistentStoreSaveError:(id)a3;
+ (void)_contextSaveFailedWithNSPersistentStoreTimeoutError:(id)a3;
+ (void)_contextSaveFailedWithNSValidationDateTooLateError:(id)a3;
+ (void)_contextSaveFailedWithNSValidationDateTooSoonError:(id)a3;
+ (void)_contextSaveFailedWithNSValidationInvalidDateError:(id)a3;
+ (void)_contextSaveFailedWithNSValidationInvalidURIError:(id)a3;
+ (void)_contextSaveFailedWithNSValidationMissingMandatoryPropertyError:(id)a3;
+ (void)_contextSaveFailedWithNSValidationMultipleErrorsError:(id)a3;
+ (void)_contextSaveFailedWithNSValidationNumberTooLargeError:(id)a3;
+ (void)_contextSaveFailedWithNSValidationNumberTooSmallError:(id)a3;
+ (void)_contextSaveFailedWithNSValidationRelationshipDeniedDeleteError:(id)a3;
+ (void)_contextSaveFailedWithNSValidationRelationshipExceedsMaximumCountError:(id)a3;
+ (void)_contextSaveFailedWithNSValidationRelationshipLacksMinimumCountError:(id)a3;
+ (void)_contextSaveFailedWithNSValidationStringPatternMatchingError:(id)a3;
+ (void)_contextSaveFailedWithNSValidationStringTooLongError:(id)a3;
+ (void)_contextSaveFailedWithNSValidationStringTooShortError:(id)a3;
+ (void)_contextSaveFailedWithNoPersistentStores:(id)a3;
+ (void)_contextSaveFailedWithOtherCocoaError:(id)a3;
+ (void)_contextSaveFailedWithTimeoutError:(id)a3;
+ (void)_getResourceData:(id)a3 nonDerivativeSizeOut:(unint64_t *)a4 derivativesSizeOut:(unint64_t *)a5 fileBackedThumbnailsSizeOut:(unint64_t *)a6 tableThumbnailsSizeOut:(unint64_t *)a7;
+ (void)_loadFileExtensionInformation;
+ (void)_registerStateHandler;
+ (void)_withDispatchGroup:(id)a3 onContext:(id)a4 synchronously:(BOOL)a5 shouldSave:(BOOL)a6 refreshAfterSave:(BOOL)a7 performTransaction:(id)a8 completionHandler:(id)a9;
+ (void)configureEnumeratorForLibrarySizeInfo:(id)a3 completion:(id)a4;
+ (void)contextExecuteFailedWithSQLiteResultCode:(int)a3;
+ (void)postGlobalPhotoLibraryAvailableIfNecessary;
+ (void)refreshCachedCountsAndDates:(BOOL)a3 onAssetsContainerClass:(Class)a4 inContext:(id)a5 withPredicate:(id)a6;
+ (void)refreshCachedCountsOnAllAssetContainersInContext:(id)a3;
+ (void)setCloudAlbumSharingEnabled:(BOOL)a3;
+ (void)setPhotoStreamEnabled:(BOOL)a3;
- (BOOL)_hasIncompleteAsset;
- (BOOL)_isUnknownAssetColumnError:(id)a3;
- (BOOL)batchDeleteAssetsWithPredicate:(id)a3 reason:(id)a4 error:(id *)a5;
- (BOOL)batchDeleteObjectsWithEntity:(id)a3 predicate:(id)a4 error:(id *)a5;
- (BOOL)deleteAllDiagnosticFiles:(id *)a3;
- (BOOL)getPhotoCount:(unint64_t *)a3 videoCount:(unint64_t *)a4 excludeTrashed:(BOOL)a5 excludeInvisible:(BOOL)a6 excludeCloudShared:(BOOL)a7;
- (BOOL)hasCompletedMomentAnalysis;
- (BOOL)hasCompletedRestorePostProcessing;
- (BOOL)hasITunesSyncedContent;
- (BOOL)hasPendingAssetsIgnoreiTunes:(BOOL)a3;
- (BOOL)isBackgroundProcessingEnabled;
- (BOOL)isCloudPhotoLibraryEnabled;
- (BOOL)isReadyForCloudPhotoLibrary;
- (BOOL)isWalrusEnabled;
- (BOOL)loadDatabaseWithOptions:(id)a3 error:(id *)a4;
- (BOOL)safeSave:(id)a3 error:(id *)a4;
- (NSArray)photoStreamAlbums;
- (NSArray)photoStreamAlbumsForPreferences;
- (NSArray)syncedAlbums;
- (PAImageConversionServiceClient)imageConversionServiceClient;
- (PAVideoConversionServiceClient)videoConversionServiceClient;
- (PLGlobalValues)globalValues;
- (PLKeywordManager)keywordManager;
- (PLLibraryServicesManager)libraryServicesManager;
- (PLManagedObjectContext)managedObjectContext;
- (PLPhotoLibrary)init;
- (PLPhotoLibrary)initWithName:(const char *)a3 libraryBundle:(id)a4 options:(id)a5;
- (PLThumbnailIndexes)thumbnailIndexes;
- (id)_fetchCompleteAssetIDsWithValidatedSavedAssetTypeMask:(unsigned int)a3 context:(id)a4;
- (id)_fetchedObjectsForDeleteWithEntity:(id)a3 predicate:(id)a4 batchSize:(unint64_t)a5 error:(id *)a6;
- (id)_initWithPathManager:(id)a3;
- (id)_internal_managedObjectContext;
- (id)_loadClientDatabaseContextFastPath;
- (id)_loadClientDatabaseContextWithOptions:(id)a3 error:(id *)a4;
- (id)_loadDatabaseContextWithOptions:(id)a3 error:(id *)a4;
- (id)_loadServerDatabaseContextWithOptions:(id)a3 error:(id *)a4;
- (id)addBackgroundJobWorkItemIfNeededWithIdentifier:(id)a3 jobType:(signed __int16)a4 jobFlags:(int64_t)a5;
- (id)addBackgroundJobWorkItemWithIdentifier:(id)a3 jobType:(signed __int16)a4 jobFlags:(int64_t)a5;
- (id)addDCIMEntryAtFileURL:(id)a3 mainFileMetadata:(id)a4 previewImage:(id)a5 thumbnailImage:(id)a6 savedAssetType:(signed __int16)a7 replacementUUID:(id)a8 publicGlobalUUID:(id)a9 extendedInfo:(id)a10 withUUID:(id)a11 isPlaceholder:(BOOL)a12 placeholderFileURL:(id)a13 forFinalCameraImage:(BOOL)a14;
- (id)albumListForAlbumOfKind:(int)a3;
- (id)albumListForContentMode:(int)a3;
- (id)allImportedPhotosAlbumCreateIfNeeded:(BOOL)a3;
- (id)assetWithUUID:(id)a3 inContainer:(id)a4;
- (id)cplStatus;
- (id)description;
- (id)estimatedLibrarySizes;
- (id)eventAlbumContainingPhoto:(id)a3;
- (id)eventWithName:(id)a3 andImportSessionIdentifier:(id)a4;
- (id)fingerprintContext;
- (id)iTunesSyncedContentInfo;
- (id)incompleteRestoreProcesses;
- (id)lastImportedPhotosAlbumCreateIfNeeded:(BOOL)a3;
- (id)librarySizes;
- (id)librarySizesFromDB:(BOOL)a3;
- (id)librarySizesFromDBForLibraryKindMask:(unint64_t)a3;
- (id)mainScopeIdentifier;
- (id)managedObjectContextStoreUUID;
- (id)objectWithObjectID:(id)a3;
- (id)personInfoManager;
- (id)photoAnalysisClient;
- (id)photoOutboundSharingTmpDirectoryURL;
- (id)shortLivedLibraryCopyByAppendingName:(const char *)a3;
- (id)syncProgressAlbumsIgnoreiTunes:(BOOL)a3;
- (id)syncedAlbumSubtitleStringFormat;
- (unint64_t)_dbFileSizes;
- (unint64_t)_fileSizeAtPath:(id)a3;
- (unint64_t)countOfLocalAlbumsContainingAssets:(id)a3 assetsInSomeAlbumCount:(int64_t *)a4;
- (unint64_t)numberOfCPLSupportedAssetsOfKind:(signed __int16)a3 includingTrashedSinceDate:(id)a4;
- (unint64_t)numberOfUnpushedAssetsOfKind:(signed __int16)a3;
- (unint64_t)role;
- (unint64_t)sharedStreamsSize;
- (void)_cancelAllDeferredPrewarming;
- (void)_deleteEmptyImportAlbumsWithAddedAlbums:(id)a3;
- (void)_deleteObsoleteMetadataFiles;
- (void)_enumerateFilesAtURL:(id)a3 withBlock:(id)a4;
- (void)_enumerateFilesAtURLs:(id)a3 withBlock:(id)a4;
- (void)_filterAlbums:(id)a3 toTrashableAlbums:(id *)a4 deletableAlbums:(id *)a5 otherAlbums:(id *)a6;
- (void)_filterAssets:(id)a3 toTrashableAssets:(id *)a4 deletableAssets:(id *)a5 otherAssets:(id *)a6;
- (void)_inq_createPhotoStreamAlbumStreamID:(id)a3;
- (void)_markForRebuildAndAbortWithReason:(int64_t)a3 error:(id)a4;
- (void)_pauseChangeHandlingNotifications;
- (void)_photoLibraryCorruptNotification;
- (void)_photoLibraryForceClientExitNotification;
- (void)_reallyDisableOpportunisticTasks;
- (void)_reallyEnableOpportunisticTasks;
- (void)_recreateItemsFromMetadataAtDirectoryURLs:(id)a3 includeAlbums:(BOOL)a4;
- (void)_removeOldFaceMetadataAsync;
- (void)_resumeChangeHandlingNotifications;
- (void)_setManagedObjectContext:(id)a3;
- (void)_updateAssetCountKeyPath:(id)a3 withPendingCountKeyPath:(id)a4 inContext:(id)a5;
- (void)_updateMemoryCountKeyPath:(id)a3 withPendingCountKeyPath:(id)a4 inContext:(id)a5;
- (void)_userApplyTrashedState:(signed __int16)a3 toAlbums:(id)a4;
- (void)_userApplyTrashedState:(signed __int16)a3 toAssets:(id)a4 localOnlyDelete:(BOOL)a5 trashedReason:(unsigned __int16)a6 expungeReasonFromClient:(id)a7;
- (void)_userDeleteAlbums:(id)a3;
- (void)_userDeleteAssets:(id)a3 withReason:(id)a4 localOnlyDelete:(BOOL)a5;
- (void)addCompletionHandlerToCurrentTransaction:(id)a3;
- (void)batchDeleteAssets:(id)a3 withReason:(id)a4;
- (void)cleanupAfterImportAllDCIMAssets;
- (void)cleanupIncompleteAssetsAfterOTARestore;
- (void)clearTransactionCompletionHandlers;
- (void)clientApplicationWillEnterForeground;
- (void)countOfReferencedMediaWithCompletionHandler:(id)a3;
- (void)createPhotoStreamAlbumWithStreamID:(id)a3;
- (void)dataMigratorSupportCleanupModelForDataMigrationPurgeMissingSynced;
- (void)dealloc;
- (void)deleteExpiredTrashedAssetsAndAlbums;
- (void)deleteExpiredTrashedResources;
- (void)deleteITunesSyncedContentForEnablingiCPL;
- (void)deleteTTRDeferredIntermediates;
- (void)deleteUnknownDeferredIntermediatesWithCompletionHandler:(id)a3;
- (void)deleteUnusedCameraMetadataPaths;
- (void)disableOpportunisticTasks;
- (void)enableOpportunisticTasks;
- (void)handlePersistentStoreRemoval:(id)a3;
- (void)handlePossibleCoreDataError:(id)a3;
- (void)invalidateWithReason:(id)a3;
- (void)modifyDCIMEntryForPhoto:(id)a3;
- (void)old_refreshCachedCountsOnAllAssetContainersInContext:(id)a3;
- (void)performBlock:(id)a3;
- (void)performBlock:(id)a3 completionHandler:(id)a4;
- (void)performBlock:(id)a3 completionHandler:(id)a4 withPriority:(int64_t)a5;
- (void)performBlock:(id)a3 withPriority:(int64_t)a4;
- (void)performBlockAndWait:(id)a3;
- (void)performBlockAndWait:(id)a3 completionHandler:(id)a4;
- (void)performBlockAndWait:(id)a3 forceSave:(BOOL)a4;
- (void)performTransaction:(id)a3;
- (void)performTransaction:(id)a3 completionHandler:(id)a4;
- (void)performTransaction:(id)a3 completionHandler:(id)a4 withPriority:(int64_t)a5;
- (void)performTransaction:(id)a3 withPriority:(int64_t)a4;
- (void)performTransactionAndWait:(id)a3;
- (void)performTransactionAndWait:(id)a3 completionHandler:(id)a4;
- (void)recreateAlbumsAndPersonsFromMetadata;
- (void)recreateMemoriesAndPersonsFromMetadata;
- (void)recreatePersonsFromMetadata;
- (void)repairSingletonObjects;
- (void)reportLibrarySizeToDAS;
- (void)resetCachedImportAlbumsIfNeededForAlbum:(id)a3;
- (void)signalBackgroundProcessingNeeded;
- (void)signalBackgroundProcessingNeededForWorkerTypes:(id)a3;
- (void)updateAssetPlayShareViewCountsInContext:(id)a3;
- (void)updateMemoryPlayShareViewCountsInContext:(id)a3;
- (void)userExpungeAssets:(id)a3 localOnlyDelete:(BOOL)a4 expungeReasonFromClient:(id)a5;
- (void)withDispatchGroup:(id)a3 performBlock:(id)a4;
- (void)withDispatchGroup:(id)a3 performTransaction:(id)a4;
- (void)withDispatchGroup:(id)a3 performTransaction:(id)a4 completionHandler:(id)a5;
@end

@implementation PLPhotoLibrary

+ (BOOL)systemPhotoLibraryIsObtainable
{
  if (PLIsAssetsd())
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"PLPhotoLibrary.m" lineNumber:1390 description:@"Only called by assetsd clients"];
  }

  v4 = a1;
  objc_sync_enter(v4);
  if ((systemPhotoLibraryIsObtainable_obtainable & 1) == 0)
  {
    if (PLIsPTPD())
    {
      v5 = +[PLIndicatorFileCoordinator systemLibraryAvailableIndicatorState];
    }

    else
    {
      v5 = 1;
    }

    v6 = MKBDeviceUnlockedSinceBoot() == 1 && v5;
    systemPhotoLibraryIsObtainable_obtainable = v6;
  }

  objc_sync_exit(v4);

  return systemPhotoLibraryIsObtainable_obtainable;
}

- (id)_loadClientDatabaseContextFastPath
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(PLPhotoLibrary *)self libraryBundle];
  v4 = [PLPhotoLibrary shouldTryFastPathWithLibraryBundle:v3];

  if (v4)
  {
    v5 = [(PLPhotoLibrary *)self options];
    v6 = [v5 automaticallyMergesContext];
    v7 = [(PLPhotoLibrary *)self options];
    v8 = +[PLManagedObjectContext contextForUninitializedPhotoLibrary:automaticallyMerges:automaticallyPinToFirstFetch:](PLManagedObjectContext, "contextForUninitializedPhotoLibrary:automaticallyMerges:automaticallyPinToFirstFetch:", self, v6, [v7 automaticallyPinToFirstFetch]);

    if (v8)
    {
      goto LABEL_7;
    }

    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(PLPhotoLibrary *)self pathManager];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "PLPhotoLibrary %@ fast path loading context failed, falling back to slow path.", &v12, 0xCu);
    }
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    name = self->_name;
    *buf = 134218242;
    v8 = self;
    v9 = 2112;
    v10 = name;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "PLPhotoLibrary %p dealloc %@", buf, 0x16u);
  }

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self];

  [(PAVideoConversionServiceClient *)self->_videoConversionServiceClient invalidateAfterPendingRequestCompletion];
  [PLPhotoLibrary reportLibraryDidDealloc:self];
  v6.receiver = self;
  v6.super_class = PLPhotoLibrary;
  [(PLPhotoLibrary *)&v6 dealloc];
}

- (unint64_t)role
{
  v2 = [(PLPhotoLibrary *)self options];
  v3 = [v2 libraryRole];

  return v3;
}

- (id)_internal_managedObjectContext
{
  v2 = PLResultWithUnfairLock();

  return v2;
}

- (PLManagedObjectContext)managedObjectContext
{
  v2 = [(PLPhotoLibrary *)self _internal_managedObjectContext];
  if (!v2)
  {
    v3 = PLBackendGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "managedObjectContext is only accessible after successfully loading photo library database", v6, 2u);
    }

    if (MEMORY[0x19EAEE230]())
    {
      v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E696A778] reason:@"managedObjectContext is only accessible after successfully loading photo library database" userInfo:0];
      objc_exception_throw(v5);
    }
  }

  return v2;
}

+ (BOOL)areOpportunisticTasksDisabled
{
  if ((PLIsAssetsd() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"PLPhotoLibrary.m" lineNumber:438 description:@"areOpportunisticTasksDisabled can only be called from assetsd"];
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [a1 opportunisticTaskIsolationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__PLPhotoLibrary_areOpportunisticTasksDisabled__block_invoke;
  block[3] = &unk_1E7577EA0;
  block[4] = &v8;
  dispatch_sync(v4, block);

  LOBYTE(v4) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

+ (id)opportunisticTaskIsolationQueue
{
  if (opportunisticTaskIsolationQueue_opportunisticTaskIsolationToken != -1)
  {
    dispatch_once(&opportunisticTaskIsolationQueue_opportunisticTaskIsolationToken, &__block_literal_global_3068);
  }

  v3 = sOpportunisticTaskIsolationQueue;

  return v3;
}

uint64_t __47__PLPhotoLibrary_areOpportunisticTasksDisabled__block_invoke(uint64_t result)
{
  if (sOpportunisticTasksDisabled >= 1)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

- (PLGlobalValues)globalValues
{
  v3 = [PLGlobalValues alloc];
  v4 = [(PLPhotoLibrary *)self managedObjectContext];
  v5 = [(PLGlobalValues *)v3 initWithManagedObjectContext:v4];

  return v5;
}

- (PLLibraryServicesManager)libraryServicesManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);

  return WeakRetained;
}

- (void)signalBackgroundProcessingNeededForWorkerTypes:(id)a3
{
  v4 = a3;
  v6 = [(PLPhotoLibrary *)self libraryServicesManager];
  v5 = [v6 backgroundJobService];
  [v5 signalBackgroundProcessingNeededOnLibrary:self workerTypes:v4];
}

- (id)addBackgroundJobWorkItemIfNeededWithIdentifier:(id)a3 jobType:(signed __int16)a4 jobFlags:(int64_t)a5
{
  v6 = a4;
  v8 = a3;
  if ([(PLPhotoLibrary *)self isBackgroundProcessingEnabled])
  {
    v9 = [(PLPhotoLibrary *)self managedObjectContext];
    if ([v9 hasRecordedBackgroundWorkItemWithIdentifier:v8 jobType:v6 jobFlags:a5])
    {
      v10 = 0;
    }

    else
    {
      v10 = [PLBackgroundJobWorkItem insertBackgroundJobWorkItemWithIdentifier:v8 jobType:v6 jobFlags:a5 inManagedObjectContext:v9];
      [v9 recordBackgroundJobWorkItemCreated:v10];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)addBackgroundJobWorkItemWithIdentifier:(id)a3 jobType:(signed __int16)a4 jobFlags:(int64_t)a5
{
  v6 = a4;
  v8 = a3;
  if ([(PLPhotoLibrary *)self isBackgroundProcessingEnabled])
  {
    v9 = [(PLPhotoLibrary *)self managedObjectContext];
    v10 = [PLBackgroundJobWorkItem insertBackgroundJobWorkItemWithIdentifier:v8 jobType:v6 jobFlags:a5 inManagedObjectContext:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)signalBackgroundProcessingNeeded
{
  v4 = [(PLPhotoLibrary *)self libraryServicesManager];
  v3 = [v4 backgroundJobService];
  [v3 signalBackgroundProcessingNeededOnLibrary:self];
}

- (BOOL)isBackgroundProcessingEnabled
{
  v3 = objc_opt_class();
  v4 = [(PLPhotoLibrary *)self managedObjectContext];
  LOBYTE(v3) = [v3 isBackgroundProcessingEnabledWithManagedObjectContext:v4];

  return v3;
}

- (BOOL)isWalrusEnabled
{
  v3 = _PLIsCloudPhotoLibraryEnabledForCurrentUserWithDataclass(*MEMORY[0x1E6959638]);
  if (v3)
  {
    v4 = [(PLPhotoLibrary *)self cplStatus];
    v5 = [v4 isWalrusEnabled];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (id)cplStatus
{
  v3 = [(PLPhotoLibrary *)self pathManager];
  v4 = [v3 isSystemPhotoLibraryPathManager];

  if (v4)
  {
    if (PLIsAssetsd())
    {
      v5 = [(PLPhotoLibrary *)self libraryServicesManager];
      v6 = [v5 cloudPhotoLibraryManager];
      v7 = [v6 cplStatus];

      if (!v7)
      {
        v8 = [(PLPhotoLibrary *)self pathManager];
        v7 = CPLStatusFromPathManager(v8);
      }
    }

    else
    {
      v5 = [(PLPhotoLibrary *)self pathManager];
      v7 = CPLStatusFromPathManager(v5);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)personInfoManager
{
  v2 = [(PLPhotoLibrary *)self libraryBundle];
  v3 = [v2 personInfoManager];

  return v3;
}

- (unint64_t)numberOfUnpushedAssetsOfKind:(signed __int16)a3
{
  v3 = a3;
  v25[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695D5E0];
  v6 = +[PLManagedAsset entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  v8 = MEMORY[0x1E696AE18];
  v9 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v10 = [v8 predicateWithFormat:@"noindex(kind) == %@ && noindex(cloudLocalState) == %@ && trashedState != %d", v9, &unk_1F0FBAB70, 2];

  v11 = MEMORY[0x1E696AB28];
  v25[0] = v10;
  v12 = +[PLManagedAsset predicateForSupportedAssetTypesForUploadWithoutCloudKitSharingScopesAndPlaceholders];
  v25[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v14 = [v11 andPredicateWithSubpredicates:v13];

  [v7 setPredicate:v14];
  v15 = [(PLPhotoLibrary *)self managedObjectContext];
  v20 = 0;
  v16 = [v15 countForFetchRequest:v7 error:&v20];
  v17 = v20;

  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v18 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109378;
        v22 = v3;
        v23 = 2112;
        v24 = v17;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Could not fetch count of unpushed assets with type %d: %@", buf, 0x12u);
      }
    }

    v16 = 0;
  }

  return v16;
}

- (unint64_t)numberOfCPLSupportedAssetsOfKind:(signed __int16)a3 includingTrashedSinceDate:(id)a4
{
  v4 = a3;
  v30[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLManagedAsset entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = MEMORY[0x1E696AE18];
  v11 = [MEMORY[0x1E696AD98] numberWithShort:v4];
  v12 = [v10 predicateWithFormat:@"kind == %@", v11];

  v13 = MEMORY[0x1E696AB28];
  v30[0] = v12;
  v14 = +[PLManagedAsset predicateForSupportedAssetTypesForUploadWithoutCloudKitSharingScopesAndPlaceholders];
  v30[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v16 = [v13 andPredicateWithSubpredicates:v15];

  if (v6)
  {
    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"trashedDate >= %@ || trashedState == %d", v6, 0];
    v18 = MEMORY[0x1E696AB28];
    v29[0] = v16;
    v29[1] = v17;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v20 = [v18 andPredicateWithSubpredicates:v19];

    v16 = v20;
  }

  [v9 setPredicate:v16];
  v21 = [(PLPhotoLibrary *)self managedObjectContext];
  v26 = 0;
  v22 = [v21 countForFetchRequest:v9 error:&v26];
  v23 = v26;

  if (v22 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v24 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v23;
        _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Could not fetch count of pushable assets: %@", buf, 0xCu);
      }
    }

    v22 = 0;
  }

  return v22;
}

- (id)fingerprintContext
{
  v2 = [(PLPhotoLibrary *)self libraryBundle];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 libraryServicesManager];

    if (v4)
    {
      [v3 libraryServicesManager];
    }

    else
    {
      [PLCPLSettings settingsWithLibraryBundle:v3];
    }
    v7 = ;
    v5 = [v7 fingerprintContext];

    if (v5)
    {
      goto LABEL_8;
    }

LABEL_5:
    v6 = [MEMORY[0x1E6994AD8] sharedContext];
    goto LABEL_9;
  }

  v5 = [MEMORY[0x1E6994AD8] sharedContext];
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_8:
  v6 = v5;
LABEL_9:
  v8 = v6;

  return v8;
}

- (id)mainScopeIdentifier
{
  v2 = [(PLPhotoLibrary *)self libraryBundle];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 libraryServicesManager];

    if (v4)
    {
      v5 = [v3 libraryServicesManager];
      [v5 mainScopeIdentifier];
    }

    else
    {
      v5 = [PLCPLSettings settingsWithLibraryBundle:v3];
      [v5 deriveMainScopeIdentifier];
    }
    v6 = ;
  }

  else
  {
    v6 = CPLPrimaryScopeIdentifierForCurrentUniverse();
  }

  return v6;
}

- (BOOL)isCloudPhotoLibraryEnabled
{
  v3 = [(PLPhotoLibrary *)self libraryServicesManager];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isCloudPhotoLibraryEnabled];
  }

  else
  {
    v6 = [(PLPhotoLibrary *)self pathManager];
    v7 = [v6 libraryURL];
    v5 = PLIsCloudPhotoLibraryEnabledForPhotoLibraryURL(v7);
  }

  return v5;
}

- (unint64_t)sharedStreamsSize
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = [(PLPhotoLibraryPathManager *)self->_pathManager photoDirectoryWithType:23];
  v4 = [(PLPhotoLibrary *)self pathManager];
  v5 = [v4 isUBF];

  pathManager = self->_pathManager;
  if (v5)
  {
    [(PLPhotoLibraryPathManager *)pathManager photoDirectoryWithType:15];
  }

  else
  {
    [(PLPhotoLibraryPathManager *)pathManager photoMetadataDirectoryForMediaInMainDirectory:v3];
  }
  v7 = ;
  v11[0] = v3;
  v11[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = _sizeOfDirectories(v8);

  return v9;
}

- (void)deleteTTRDeferredIntermediates
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(PLPhotoLibraryPathManager *)self->_pathManager photoDirectoryWithType:1];
  v5 = [v4 stringByAppendingString:@"/Deferred/tmpCaptureContainers"];
  if ([v3 fileExistsAtPath:v5])
  {
    v9 = 0;
    v6 = [v3 removeItemAtPath:v5 error:&v9];
    v7 = v9;
    if ((v6 & 1) == 0)
    {
      v8 = PLBackendGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v11 = v5;
        v12 = 2112;
        v13 = v7;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Failed to remove temporary capture containers for TTRs at path: %@ with error: %@", buf, 0x16u);
      }
    }
  }
}

- (void)deleteUnusedCameraMetadataPaths
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLManagedAsset entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  v6 = MEMORY[0x1E696AE18];
  v7 = +[PLManagedAsset listOfStatesWithOutstandingDeferredPhotoProcessingWork];
  v8 = [v6 predicateWithFormat:@"deferredProcessingNeeded IN %@", v7];

  [v5 setPredicate:v8];
  v9 = [(PLPhotoLibrary *)self pathManager];
  v10 = [v9 privateDirectoryWithSubType:9 createIfNeeded:0 error:0];

  v11 = [MEMORY[0x1E696AC08] defaultManager];
  v12 = MEMORY[0x1E695DFA8];
  v22 = 0;
  v13 = [v11 contentsOfDirectoryAtPath:v10 error:&v22];
  v14 = v22;
  v15 = [v12 setWithArray:v13];

  if (v15)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __49__PLPhotoLibrary_deleteUnusedCameraMetadataPaths__block_invoke;
    v17[3] = &unk_1E75730F8;
    v17[4] = self;
    v18 = v5;
    v19 = v11;
    v20 = v15;
    v21 = v10;
    [(PLPhotoLibrary *)self performBlockAndWait:v17];
  }

  else
  {
    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v14;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Error getting contents of camera metadata path: %@", buf, 0xCu);
    }
  }
}

void __49__PLPhotoLibrary_deleteUnusedCameraMetadataPaths__block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __49__PLPhotoLibrary_deleteUnusedCameraMetadataPaths__block_invoke_2;
  v27[3] = &unk_1E75781C0;
  v3 = *(a1 + 40);
  v28 = *(a1 + 48);
  v29 = *(a1 + 56);
  v4 = [v2 enumerateObjectsFromFetchRequest:v3 count:0 usingDefaultBatchSizeWithBlock:v27];

  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 56) count];
    v7 = *(a1 + 56);
    *buf = 134218242;
    v32 = v6;
    v33 = 2112;
    v34 = v7;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Found %lu assets with orphaned camera metadata paths: %@", buf, 0x16u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = *(a1 + 56);
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v24;
    *&v10 = 138412290;
    v21 = v10;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = [*(a1 + 64) stringByAppendingPathComponent:{*(*(&v23 + 1) + 8 * v13), v21}];
        v15 = *(a1 + 48);
        v22 = 0;
        v16 = [v15 removeItemAtPath:v14 error:&v22];
        v17 = v22;
        if ((v16 & 1) == 0)
        {
          v18 = PLBackendGetLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = v21;
            v32 = v17;
            _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Failed to remove camera metadata at path: %@", buf, 0xCu);
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v8 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v11);
  }

  v19 = PLBackendGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 56);
    *buf = 138412290;
    v32 = v20;
    _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "Deleted camera metadata paths: %@", buf, 0xCu);
  }
}

void __49__PLPhotoLibrary_deleteUnusedCameraMetadataPaths__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 pathForCameraMetadataFile];
  v8 = [v4 lastPathComponent];

  v5 = *(a1 + 32);
  v6 = [v3 pathForCameraMetadataFile];

  if ([v5 fileExistsAtPath:v6])
  {
    v7 = [*(a1 + 40) containsObject:v8];

    if (v7)
    {
      [*(a1 + 40) removeObject:v8];
    }
  }

  else
  {
  }
}

- (void)deleteUnknownDeferredIntermediatesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(PLPhotoLibrary *)self libraryBundle];
  v6 = [v5 isSystemPhotoLibrary];

  if (v6)
  {
    v7 = MEMORY[0x1E695D5E0];
    v8 = +[PLManagedAsset entityName];
    v9 = [v7 fetchRequestWithEntityName:v8];

    v10 = MEMORY[0x1E696AE18];
    v11 = +[PLManagedAsset listOfStatesWithOutstandingDeferredPhotoProcessingWork];
    v12 = [v10 predicateWithFormat:@"deferredProcessingNeeded IN %@", v11];

    [v9 setPredicate:v12];
    [v9 setRelationshipKeyPathsForPrefetching:&unk_1F0FBF310];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__PLPhotoLibrary_deleteUnknownDeferredIntermediatesWithCompletionHandler___block_invoke;
    v14[3] = &unk_1E7576F38;
    v14[4] = self;
    v15 = v9;
    v16 = v4;
    v13 = v9;
    [(PLPhotoLibrary *)self performBlockAndWait:v14];
  }
}

void __74__PLPhotoLibrary_deleteUnknownDeferredIntermediatesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v29 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v29];
  v5 = v29;
  v6 = v5;
  if (v4)
  {
    v21 = v5;
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = v4;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v25 + 1) + 8 * i) additionalAttributes];
          v15 = [v14 deferredPhotoIdentifier];

          if ([v15 length])
          {
            [v7 addObject:v15];
            v16 = [PLPhotoLibrary requestIdentifierFromDeferredIdentifier:v15];
            [v8 addObject:v16];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v11);
    }

    v17 = PLDeferredProcessingGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v9 count];
      *buf = 134218242;
      v31 = v18;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Found %tu assets with deferred identifiers %@", buf, 0x16u);
    }

    v19 = [[PLDeferredPhotoFinalizer alloc] initForUseCase:2];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __74__PLPhotoLibrary_deleteUnknownDeferredIntermediatesWithCompletionHandler___block_invoke_955;
    v23[3] = &unk_1E7565478;
    v24 = *(a1 + 48);
    [v19 deleteIntermediatesExcludingDeferredIdentifierRequestIdentifiers:v8 withCompletionHandler:v23];

    v4 = v22;
    v6 = v21;
  }

  else
  {
    v20 = PLDeferredProcessingGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v6;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Failed to fetch assets with outstanding deferred processing needed with error: %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

uint64_t __74__PLPhotoLibrary_deleteUnknownDeferredIntermediatesWithCompletionHandler___block_invoke_955(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = PLDeferredProcessingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a2;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Requested deletion of %zd intermediates from deferredmediad", &v6, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)deleteExpiredTrashedAssetsAndAlbums
{
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLManagedAsset entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  v6 = MEMORY[0x1E696AE18];
  v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-2592000.0];
  v8 = [v6 predicateWithFormat:@"(trashedState = %d OR trashedState = %d) AND trashedDate < %@ AND (complete != 0)", 1, 2, v7];

  [v5 setPredicate:v8];
  v9 = MEMORY[0x1E695D5E0];
  v10 = +[PLGenericAlbum entityName];
  v11 = [v9 fetchRequestWithEntityName:v10];

  v12 = MEMORY[0x1E696AE18];
  v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-2592000.0];
  v14 = [v12 predicateWithFormat:@"(trashedState = %d OR trashedState = %d) AND trashedDate < %@", 1, 2, v13];

  [v11 setPredicate:v14];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __53__PLPhotoLibrary_deleteExpiredTrashedAssetsAndAlbums__block_invoke;
  v18[3] = &unk_1E75778C0;
  v18[4] = self;
  v15 = v5;
  v19 = v15;
  v21 = v22;
  v16 = v11;
  v20 = v16;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __53__PLPhotoLibrary_deleteExpiredTrashedAssetsAndAlbums__block_invoke_944;
  v17[3] = &unk_1E7577EA0;
  v17[4] = v22;
  [(PLPhotoLibrary *)self performTransaction:v18 completionHandler:v17];

  _Block_object_dispose(v22, 8);
}

void __53__PLPhotoLibrary_deleteExpiredTrashedAssetsAndAlbums__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Deleting expired burst's non-favorite from trash"];
  v4 = [PLAssetTransactionReason transactionReason:v3];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Deleting expired asset from trash"];
  v6 = [PLAssetTransactionReason transactionReason:v5];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __53__PLPhotoLibrary_deleteExpiredTrashedAssetsAndAlbums__block_invoke_2;
  v21[3] = &unk_1E7565450;
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v21[4] = *(a1 + 32);
  v24 = v8;
  v9 = v4;
  v22 = v9;
  v10 = v6;
  v23 = v10;
  v11 = [v2 enumerateObjectsFromFetchRequest:v7 count:0 usingDefaultBatchSizeWithBlock:v21];
  v12 = [v2 executeFetchRequest:*(a1 + 48) error:0];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * v16++) delete];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

void __53__PLPhotoLibrary_deleteExpiredTrashedAssetsAndAlbums__block_invoke_944()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = PLBackendGetLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = NSLocalizedFileSizeDescription();
    v2 = 138412290;
    v3 = v1;
    _os_log_impl(&dword_19BF1F000, v0, OS_LOG_TYPE_DEFAULT, "Deleted %@ of assets from the trash.", &v2, 0xCu);
  }
}

void __53__PLPhotoLibrary_deleteExpiredTrashedAssetsAndAlbums__block_invoke_2(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([v3 isDeleted] & 1) == 0 && (objc_msgSend(v3, "isFinderSyncedAsset") & 1) == 0)
  {
    if ([v3 isAvalancheStackPhoto])
    {
      v4 = [PLAvalanche alloc];
      v5 = [v3 avalancheUUID];
      v6 = [(PLAvalanche *)v4 initWithUUID:v5 sourceType:1 photoLibrary:a1[4]];

      v7 = [(PLAvalanche *)v6 assets];
      v8 = [v7 mutableCopy];

      v9 = [(PLAvalanche *)v6 userFavorites];
      [v8 minusOrderedSet:v9];
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v19 + 1) + 8 * i);
            *(*(a1[7] + 8) + 24) += [v15 originalFilesize];
            [v15 deleteWithReason:a1[5]];
          }

          v12 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
        }

        while (v12);
      }

      v16 = [v9 array];
      [PLAvalanche disolveBurstForAssets:v16 permanently:1];
    }

    else if (([v3 isAvalanchePhoto] & 1) == 0)
    {
      if ([v3 isAvalanchePhoto])
      {
        v17 = PLBackendGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          v18 = [v3 uuid];
          *buf = 138543362;
          v24 = v18;
          _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_FAULT, "Expected avalanche identifier is missing for asset: %{public}@", buf, 0xCu);
        }
      }

      *(*(a1[7] + 8) + 24) += [v3 originalFilesize];
      [v3 deleteWithReason:a1[6]];
    }
  }
}

- (void)deleteExpiredTrashedResources
{
  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLInternalResource entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  v6 = MEMORY[0x1E696AE18];
  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [v6 predicateWithFormat:@"(trashedState = %d OR trashedState = %d) AND trashedDate < %@", 1, 2, v7];

  [v5 setPredicate:v8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__PLPhotoLibrary_deleteExpiredTrashedResources__block_invoke;
  v10[3] = &unk_1E7578848;
  v10[4] = self;
  v11 = v5;
  v9 = v5;
  [(PLPhotoLibrary *)self performTransactionAndWait:v10];
}

void __47__PLPhotoLibrary_deleteExpiredTrashedResources__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v9 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v9];
  v5 = v9;
  if (v5)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Can't retrieve resources: %@", buf, 0xCu);
    }
  }

  v7 = [v2 enumerateWithIncrementalSaveUsingObjects:v4 withBlock:&__block_literal_global_934];

  if (v7)
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Can't delete resources from the trash. Error: %@", buf, 0xCu);
    }
  }
}

void __47__PLPhotoLibrary_deleteExpiredTrashedResources__block_invoke_931(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLBackendGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 objectID];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Deleted resource from the trash: %@", &v5, 0xCu);
  }

  [v2 applyTrashedState:2];
}

- (void)_updateMemoryCountKeyPath:(id)a3 withPendingCountKeyPath:(id)a4 inContext:(id)a5
{
  v29[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x1E695D5E0];
  v12 = +[PLMemory entityName];
  v13 = [v11 fetchRequestWithEntityName:v12];

  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > 0", v9];
  [v13 setPredicate:v14];
  [v13 setFetchBatchSize:100];
  v29[0] = v9;
  v29[1] = v8;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  [v13 setPropertiesToFetch:v15];

  v24 = 0;
  v16 = [v10 executeFetchRequest:v13 error:&v24];
  v17 = v24;
  if (!v16 || (v21[0] = MEMORY[0x1E69E9820], v21[1] = 3221225472, v21[2] = __78__PLPhotoLibrary__updateMemoryCountKeyPath_withPendingCountKeyPath_inContext___block_invoke, v21[3] = &unk_1E7565428, v22 = v9, v23 = v8, [v10 enumerateWithIncrementalSaveUsingObjects:v16 withBlock:v21], v18 = objc_claimAutoreleasedReturnValue(), v17, v23, v22, (v17 = v18) != 0))
  {
    v19 = PLBackendGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      *buf = 138412546;
      v26 = v20;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "%@ failed with error: %@", buf, 0x16u);
    }
  }
}

void __78__PLPhotoLibrary__updateMemoryCountKeyPath_withPendingCountKeyPath_inContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 valueForKeyPath:v3];
  v6 = [v5 longLongValue];

  [v4 setValue:&unk_1F0FBAB58 forKeyPath:*(a1 + 32)];
  v7 = [v4 valueForKeyPath:*(a1 + 40)];
  v8 = [v7 longLongValue];

  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:v8 + v6];
  [v4 setValue:v9 forKeyPath:*(a1 + 40)];
}

- (void)updateMemoryPlayShareViewCountsInContext:(id)a3
{
  v4 = a3;
  [(PLPhotoLibrary *)self _updateMemoryCountKeyPath:@"playCount" withPendingCountKeyPath:@"pendingPlayCount" inContext:v4];
  [(PLPhotoLibrary *)self _updateMemoryCountKeyPath:@"shareCount" withPendingCountKeyPath:@"pendingShareCount" inContext:v4];
  [(PLPhotoLibrary *)self _updateMemoryCountKeyPath:@"viewCount" withPendingCountKeyPath:@"pendingViewCount" inContext:v4];
}

- (void)_updateAssetCountKeyPath:(id)a3 withPendingCountKeyPath:(id)a4 inContext:(id)a5
{
  v29[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x1E695D5E0];
  v12 = +[PLAdditionalAssetAttributes entityName];
  v13 = [v11 fetchRequestWithEntityName:v12];

  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > 0", v9];
  [v13 setPredicate:v14];
  [v13 setFetchBatchSize:100];
  v29[0] = v9;
  v29[1] = v8;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  [v13 setPropertiesToFetch:v15];

  v24 = 0;
  v16 = [v10 executeFetchRequest:v13 error:&v24];
  v17 = v24;
  if (!v16 || (v21[0] = MEMORY[0x1E69E9820], v21[1] = 3221225472, v21[2] = __77__PLPhotoLibrary__updateAssetCountKeyPath_withPendingCountKeyPath_inContext___block_invoke, v21[3] = &unk_1E7565400, v22 = v9, v23 = v8, [v10 enumerateWithIncrementalSaveUsingObjects:v16 withBlock:v21], v18 = objc_claimAutoreleasedReturnValue(), v17, v23, v22, (v17 = v18) != 0))
  {
    v19 = PLBackendGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      *buf = 138412546;
      v26 = v20;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "%@ failed with error: %@", buf, 0x16u);
    }
  }
}

void __77__PLPhotoLibrary__updateAssetCountKeyPath_withPendingCountKeyPath_inContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 valueForKeyPath:v3];
  v6 = [v5 integerValue];

  [v4 setValue:&unk_1F0FBAB58 forKeyPath:*(a1 + 32)];
  v7 = [v4 valueForKeyPath:*(a1 + 40)];
  v8 = [v7 integerValue];

  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:v8 + v6];
  [v4 setValue:v9 forKeyPath:*(a1 + 40)];
}

- (void)updateAssetPlayShareViewCountsInContext:(id)a3
{
  v4 = a3;
  [(PLPhotoLibrary *)self _updateAssetCountKeyPath:@"playCount" withPendingCountKeyPath:@"pendingPlayCount" inContext:v4];
  [(PLPhotoLibrary *)self _updateAssetCountKeyPath:@"shareCount" withPendingCountKeyPath:@"pendingShareCount" inContext:v4];
  [(PLPhotoLibrary *)self _updateAssetCountKeyPath:@"viewCount" withPendingCountKeyPath:@"pendingViewCount" inContext:v4];
}

- (void)old_refreshCachedCountsOnAllAssetContainersInContext:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E695D5E0];
  v5 = +[PLManagedAsset entityName];
  v6 = [v4 fetchRequestWithEntityName:v5];

  [v6 setRelationshipKeyPathsForPrefetching:&unk_1F0FBF2F8];
  [v6 setResultType:0];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"trashedState = %d", 0];
  [v6 setPredicate:v7];

  [v6 setReturnsObjectsAsFaults:0];
  v8 = [MEMORY[0x1E695DF90] dictionary];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__PLPhotoLibrary_old_refreshCachedCountsOnAllAssetContainersInContext___block_invoke_2;
  aBlock[3] = &unk_1E7565388;
  v9 = v8;
  v40 = v9;
  v10 = _Block_copy(aBlock);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __71__PLPhotoLibrary_old_refreshCachedCountsOnAllAssetContainersInContext___block_invoke_3;
  v36[3] = &unk_1E75653B0;
  v28 = v3;
  v29 = v10;
  v37 = v29;
  v38 = &__block_literal_global_865;
  v25 = v6;
  v11 = [v3 enumerateObjectsFromFetchRequest:v6 count:0 batchSize:500 usingBlock:v36];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v9;
  v30 = [obj countByEnumeratingWithState:&v32 objects:v49 count:16];
  if (v30)
  {
    v27 = *v33;
    do
    {
      v12 = 0;
      do
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v12;
        v13 = *(*(&v32 + 1) + 8 * v12);
        v14 = [v28 objectWithID:v13];
        v15 = (*(v29 + 2))(v29, v13);
        for (i = 0; i != 3; ++i)
        {
          v17 = old_refreshCachedCountsOnAllAssetContainersInContext__cachedKeys[i];
          v18 = [v14 valueForKey:v17];
          v19 = [v18 integerValue];

          ValueAtIndex = CFArrayGetValueAtIndex(v15, i);
          if (v19 != ValueAtIndex)
          {
            v21 = ValueAtIndex;
            v22 = PLBackendGetLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = [v14 objectID];
              *buf = 138413058;
              v42 = v17;
              v43 = 2112;
              v44 = v23;
              v45 = 2048;
              v46 = v19;
              v47 = 2048;
              v48 = v21;
              _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "Resetting %@ for %@ (%ld -> %ld)", buf, 0x2Au);
            }

            v24 = [MEMORY[0x1E696AD98] numberWithInteger:v21];
            [v14 setValue:v24 forKey:v17];
          }
        }

        v12 = v31 + 1;
      }

      while (v31 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v32 objects:v49 count:16];
    }

    while (v30);
  }
}

void *__71__PLPhotoLibrary_old_refreshCachedCountsOnAllAssetContainersInContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  Mutable = [*(a1 + 32) objectForKeyedSubscript:v3];

  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(0, 3, 0);
    CFArrayAppendValue(Mutable, 0);
    CFArrayAppendValue(Mutable, 0);
    CFArrayAppendValue(Mutable, 0);
    [*(a1 + 32) setObject:Mutable forKeyedSubscript:v3];
    CFRelease(Mutable);
  }

  return Mutable;
}

void __71__PLPhotoLibrary_old_refreshCachedCountsOnAllAssetContainersInContext___block_invoke_3(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 albums];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * v8) objectID];
        (*(*(a1 + 32) + 16))();
        (*(*(a1 + 40) + 16))();

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 moment];

  if (v10)
  {
    v11 = [v3 moment];
    v12 = [v11 objectID];

    (*(*(a1 + 32) + 16))();
    (*(*(a1 + 40) + 16))();
  }
}

void __71__PLPhotoLibrary_old_refreshCachedCountsOnAllAssetContainersInContext___block_invoke(uint64_t a1, void *a2, const __CFArray *a3)
{
  v4 = [a2 kind];
  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_6;
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a3, v5);
  CFArraySetValueAtIndex(a3, v5, ValueAtIndex + 1);
LABEL_6:
  v7 = CFArrayGetValueAtIndex(a3, 2) + 1;

  CFArraySetValueAtIndex(a3, 2, v7);
}

- (id)syncedAlbumSubtitleStringFormat
{
  v2 = [(PLPhotoLibraryPathManager *)self->_pathManager syncInfoPath];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v3 fileExistsAtPath:v2])
  {
    v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v2];
    v5 = [v4 objectForKey:@"userAgent"];
    v6 = [v4 objectForKey:@"libraryKind"];
    v7 = v6;
    if (v5)
    {
      v8 = [v5 rangeOfString:@"Macintosh"];

      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if (v6)
    {
      if ([v6 isEqualToString:@"iPhoto"])
      {

LABEL_11:
        v9 = @"X_FROM_MY_MAC";
        goto LABEL_13;
      }

      v10 = [v7 isEqualToString:@"Aperture"];

      if (v10)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

LABEL_12:
    v9 = @"X_FROM_MY_COMPUTER";
    goto LABEL_13;
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (BOOL)hasCompletedMomentAnalysis
{
  if ((PLIsAssetsd() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PLPhotoLibrary.m" lineNumber:3566 description:{@"%s Must be called from assetsd directly!", "-[PLPhotoLibrary hasCompletedMomentAnalysis]"}];
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = PLPlatformMomentAnalysisSupported() ^ 1;
  if (v9[3])
  {
    v4 = 1;
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44__PLPhotoLibrary_hasCompletedMomentAnalysis__block_invoke;
    v7[3] = &unk_1E7578910;
    v7[4] = self;
    v7[5] = &v8;
    [(PLPhotoLibrary *)self performBlockAndWait:v7];
    v4 = *(v9 + 24);
  }

  _Block_object_dispose(&v8, 8);
  return v4 & 1;
}

void __44__PLPhotoLibrary_hasCompletedMomentAnalysis__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v6 = 0;
  v3 = [PLMoment allMomentsRequiringAnalysisInManagedObjectContext:v2 error:&v6];
  v4 = v6;

  if (v3)
  {
    v5 = [v3 count] == 0;
  }

  else
  {
    v5 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v5;
}

- (id)incompleteRestoreProcesses
{
  if ((PLIsAssetsd() & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PLPhotoLibrary.m" lineNumber:3546 description:@"Only Assetsd should be creating the photostream album!"];
  }

  if (PLIsAssetsd())
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __44__PLPhotoLibrary_incompleteRestoreProcesses__block_invoke;
    v13 = &unk_1E7578848;
    v14 = self;
    v5 = v4;
    v15 = v5;
    [(PLPhotoLibrary *)self performBlockAndWait:&v10];
    v6 = [(PLPhotoLibrary *)self thumbnailManager:v10];
    v7 = [v6 hasRebuildThumbnailsRequest];

    if (v7)
    {
      [v5 addObject:@"thumbnailsRebuild"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __44__PLPhotoLibrary_incompleteRestoreProcesses__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) globalValues];
  v3 = [v2 didImportFileSystemAssets];

  if ((v3 & 1) == 0)
  {
    [*(a1 + 40) addObject:@"importFileSystemAssets"];
  }

  result = [*(a1 + 32) hasPendingAssetsIgnoreiTunes:0];
  if (result)
  {
    v5 = *(a1 + 40);

    return [v5 addObject:@"pendingAssets"];
  }

  return result;
}

- (void)reportLibrarySizeToDAS
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __40__PLPhotoLibrary_reportLibrarySizeToDAS__block_invoke;
  v2[3] = &unk_1E75781E8;
  v2[4] = self;
  [(PLPhotoLibrary *)self performBlockAndWait:v2];
}

uint64_t __40__PLPhotoLibrary_reportLibrarySizeToDAS__block_invoke(uint64_t a1)
{
  v4 = 0;
  v3 = 0;
  [*(a1 + 32) getPhotoCount:&v4 videoCount:&v3];
  v2 = 0;
  return [MEMORY[0x1E698E4D0] reportSystemWorkload:v3 + v4 ofCategory:10 error:&v2];
}

- (BOOL)isReadyForCloudPhotoLibrary
{
  if (PLIsAssetsd())
  {
    WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);

    if (!WeakRetained)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PLPhotoLibrary.m" lineNumber:3528 description:{@"Invalid parameter not satisfying: %@", @"_libraryServicesManager"}];
    }

    v5 = objc_loadWeakRetained(&self->_libraryServicesManager);
    v6 = [v5 cplReadiness];
    v7 = [v6 isReadyForCloudPhotoLibraryWithStatus:0];
  }

  else
  {
    v5 = [(PLPhotoLibrary *)self assetsdClient];
    v6 = [v5 cloudInternalClient];
    v7 = [v6 isReadyForCloudPhotoLibrary];
  }

  v8 = v7;

  return v8;
}

- (BOOL)hasCompletedRestorePostProcessing
{
  v27 = *MEMORY[0x1E69E9840];
  if ((PLIsAssetsd() & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PLPhotoLibrary.m" lineNumber:3493 description:{@"%s Must be called from assetsd directly!", "-[PLPhotoLibrary hasCompletedRestorePostProcessing]"}];
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v4 = [(PLPhotoLibraryPathManager *)self->_pathManager isDeviceRestoreSupported]^ 1;
  if (hasCompletedRestorePostProcessing__hasCompletedRestorePostProcessing)
  {
    LOBYTE(v4) = 1;
  }

  v24 = v4;
  if (v22[3])
  {
    v5 = 1;
  }

  else
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__2710;
    v19 = __Block_byref_object_dispose__2711;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__PLPhotoLibrary_hasCompletedRestorePostProcessing__block_invoke;
    v14[3] = &unk_1E7578870;
    v14[4] = self;
    v14[5] = &v21;
    v14[6] = &v15;
    [(PLPhotoLibrary *)self performBlockAndWait:v14 completionHandler:0];
    v6 = *(v22 + 24);
    if (v6 == 1)
    {
      v7 = [(PLPhotoLibrary *)self thumbnailManager];
      v8 = [v7 hasRebuildThumbnailsRequest];
      *(v22 + 24) = v8 ^ 1;

      LOBYTE(v6) = *(v22 + 24);
      if ((v6 & 1) == 0)
      {
        v9 = v16[5];
        v16[5] = @"rebuild thumbnails";

        LOBYTE(v6) = *(v22 + 24);
      }
    }

    if ((v6 & 1) == 0)
    {
      v10 = PLBackendGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v16[5];
        *buf = 138543362;
        v26 = v11;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Restore post processing incomplete: %{public}@", buf, 0xCu);
      }

      LOBYTE(v6) = *(v22 + 24);
    }

    hasCompletedRestorePostProcessing__hasCompletedRestorePostProcessing = v6;
    _Block_object_dispose(&v15, 8);

    v5 = *(v22 + 24);
  }

  _Block_object_dispose(&v21, 8);
  return v5 & 1;
}

void __51__PLPhotoLibrary_hasCompletedRestorePostProcessing__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) globalValues];
  *(*(*(a1 + 40) + 8) + 24) = [v2 didImportFileSystemAssets];

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) hasPendingAssetsIgnoreiTunes:0] ^ 1;
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      return;
    }

    v3 = @"pending assets";
  }

  else
  {
    v3 = @"import file system assets";
  }

  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)hasPendingAssetsIgnoreiTunes:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x1E69E9840];
  if ((PLIsAssetsd() & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PLPhotoLibrary.m" lineNumber:3467 description:{@"%s Must be called from assetsd directly!", "-[PLPhotoLibrary hasPendingAssetsIgnoreiTunes:]"}];
  }

  v6 = [(PLPhotoLibrary *)self syncProgressAlbumsIgnoreiTunes:v3];
  if (v3 && [(PLPhotoLibrary *)self _hasIncompleteAsset])
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v6;
    v7 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v9 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v8);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [v11 pendingItemsCount];
          v13 = [v11 pendingItemsType];
          if (v12)
          {
            v14 = v13 == 1;
          }

          else
          {
            v14 = 1;
          }

          if (!v14)
          {
            LOBYTE(v7) = 1;
            goto LABEL_18;
          }
        }

        v7 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

LABEL_18:
  }

  return v7;
}

- (id)syncProgressAlbumsIgnoreiTunes:(BOOL)a3
{
  v5 = [MEMORY[0x1E695DF70] array];
  if (!a3)
  {
    v6 = [(PLPhotoLibrary *)self syncProgressAlbum];
    if (v6)
    {
      v7 = v6;
      [v5 addObject:v6];
    }
  }

  v8 = [(PLPhotoLibrary *)self otaRestoreProgressAlbum];
  if (v8)
  {
    [v5 addObject:v8];
  }

  v9 = [(PLPhotoLibrary *)self filesystemImportProgressAlbum];

  if (v9)
  {
    [v5 addObject:v9];
  }

  return v5;
}

- (id)librarySizes
{
  v99[1] = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  v4 = [(PLPhotoLibrary *)self pathManager];
  v83 = v4;
  v81 = [v4 isUBF];
  if (v81)
  {
    v5 = MEMORY[0x1E695D5E0];
    v6 = +[PLInternalResource entityName];
    v7 = [v5 fetchRequestWithEntityName:v6];

    v76 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"dataLength"];
    v8 = MEMORY[0x1E696ABC8];
    v99[0] = v76;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:1];
    v73 = [v8 expressionForFunction:@"sum:" arguments:v9];

    v10 = objc_alloc_init(MEMORY[0x1E695D5C8]);
    [v10 setName:@"sum"];
    [v10 setExpression:v73];
    [v10 setExpressionResultType:300];
    v98 = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v98 count:1];
    [v7 setPropertiesToFetch:v11];

    [v7 setResultType:2];
    [v7 setReturnsObjectsAsFaults:0];
    v12 = [(PLPhotoLibrary *)self managedObjectContext];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __30__PLPhotoLibrary_librarySizes__block_invoke;
    aBlock[3] = &unk_1E75652E8;
    v85 = v7;
    v86 = self;
    v87 = v12;
    v71 = v12;
    v70 = v7;
    v13 = _Block_copy(aBlock);
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"localAvailability", 1];
    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"cloudLocalState", 1];
    v16 = MEMORY[0x1E696AB28];
    v97[0] = v14;
    v17 = +[PLManagedAsset predicateFilteringForNonDerivativeRecipeIDs];
    v97[1] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:2];
    v19 = [v16 andPredicateWithSubpredicates:v18];

    v80 = v13[2](v13, v19);
    v20 = MEMORY[0x1E696AB28];
    v96[0] = v14;
    v96[1] = v15;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:2];
    v22 = [v20 andPredicateWithSubpredicates:v21];
    v79 = v13[2](v13, v22);

    v23 = v76;
    v24 = v13[2](v13, v14);

    v25 = v73;
    v26 = v83;

    v27 = -1;
  }

  else
  {
    v28 = [v4 photoDirectoryWithType:4];
    v77 = [v4 photoDirectoryWithType:29];
    v29 = [v4 photoDirectoryWithType:30];
    v74 = [v4 photoMetadataDirectoryForMediaInMainDirectory:v28];
    v30 = [v4 photoMetadataDirectoryForMediaInMainDirectory:v29];
    v31 = [v4 photoDirectoryWithType:9];
    v32 = [v77 stringByAppendingPathComponent:@"CPL"];
    v95[0] = v28;
    v95[1] = v29;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:2];
    v34 = _sizeOfDirectories(v33);

    v94[0] = v74;
    v94[1] = v30;
    v94[2] = v31;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:3];
    v36 = _sizeOfDirectories(v35);

    v93 = v32;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v93 count:1];
    v38 = _sizeOfDirectories(v37);

    v80 = v34;
    v39 = v36 + v34;
    v40 = v38 + [(PLPhotoLibrary *)self _dbFileSizes];
    v26 = v83;
    v24 = v36 + v34 + v40;
    if ([(PLPhotoLibrary *)self isCloudPhotoLibraryEnabled])
    {
      v41 = v39;
    }

    else
    {
      v41 = 0;
    }

    v79 = v41;

    v23 = [v83 pathsForFinderSyncFilesystemSizeCalculation];
    v25 = [v23 allObjects];
    v27 = _sizeOfDirectories(v25);
  }

  v42 = [(PLPhotoLibrary *)self sharedStreamsSize];
  v43 = [PLDiskSpaceManagement performCloudSharingSpaceManagementWithBytesToPurge:0 shouldFreeSpace:0 shouldKeepRecentlyViewedAssets:0 fromPhotoLibrary:self];
  if (v42 >= v43)
  {
    v44 = v42 - v43;
  }

  else
  {
    v44 = 0;
  }

  v45 = [v26 photoDirectoryWithType:15];
  if (v81)
  {
    [v26 photoDirectoryWithType:24];
  }

  else
  {
    [v26 photoMetadataDirectoryForMediaInMainDirectory:v45];
  }
  v46 = ;
  v92[0] = v45;
  v92[1] = v46;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:2];
  v48 = _sizeOfDirectories(v47);

  v49 = v24 + (v27 & ~(v27 >> 63)) + v44 + v48;
  v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v51 = [v26 photoDirectoryWithType:11];
  [v50 addObject:v51];

  if (v81)
  {
    v52 = [v26 photoDirectoryWithType:12];
    [v50 addObject:v52];
  }

  v82 = v50;
  v53 = _sizeOfDirectories(v50);
  if (v49)
  {
    v54 = (v24 / v49 * v53);
    v55 = (v48 / v49 * v53);
    v56 = (v44 / v49 * v53);
    v49 = (v27 / v49 * v53);
  }

  else
  {
    v54 = 0;
    v55 = 0;
    v56 = 0;
  }

  v57 = PLBackendGetLog();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
  {
    v58 = CFAbsoluteTimeGetCurrent();
    *buf = 134217984;
    v91 = v58 - Current;
    _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_INFO, "librarySizes took: %fs)", buf, 0xCu);
  }

  v78 = [&unk_1F0FBAAF8 stringValue];
  v88[0] = v78;
  v75 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v54 + v24];
  v89[0] = v75;
  v72 = [&unk_1F0FBAB10 stringValue];
  v88[1] = v72;
  v59 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v55 + v48];
  v89[1] = v59;
  v60 = [&unk_1F0FBAB28 stringValue];
  v88[2] = v60;
  v61 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v56 + v44];
  v89[2] = v61;
  v62 = [&unk_1F0FBAB40 stringValue];
  v88[3] = v62;
  v63 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v49 + v27];
  v89[3] = v63;
  v64 = [&unk_1F0FBAAC8 stringValue];
  v88[4] = v64;
  v65 = [MEMORY[0x1E696AD98] numberWithLongLong:v79];
  v89[4] = v65;
  v66 = [&unk_1F0FBAAB0 stringValue];
  v88[5] = v66;
  v67 = [MEMORY[0x1E696AD98] numberWithLongLong:v80];
  v89[5] = v67;
  v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:6];

  return v68;
}

uint64_t __30__PLPhotoLibrary_librarySizes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setPredicate:v3];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__PLPhotoLibrary_librarySizes__block_invoke_2;
  v7[3] = &unk_1E7578820;
  v4 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = &v11;
  [v4 performBlockAndWait:v7];
  v5 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v5;
}

void __30__PLPhotoLibrary_librarySizes__block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) executeFetchRequest:*(a1 + 40) error:0];
  if ([v4 count])
  {
    v2 = [v4 objectAtIndexedSubscript:0];
    v3 = [v2 objectForKeyedSubscript:@"sum"];
    *(*(*(a1 + 48) + 8) + 24) = [v3 unsignedIntegerValue];
  }
}

- (id)estimatedLibrarySizes
{
  v95 = *MEMORY[0x1E69E9840];
  v3 = PLBackendGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    qos_class_self();
    v4 = PLShortStringFromQoSClass();
    *buf = 138543362;
    v94 = *&v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "estimatedLibrarySizes started at QoS: %{public}@", buf, 0xCu);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v89 = [(PLPhotoLibrary *)self pathManager];
  context = objc_autoreleasePoolPush();
  v6 = [(PLPhotoLibrary *)self managedObjectContext];
  v7 = [PLPhotoLibrary _resourcesInfoFromMoc:v6];

  v8 = [v7 objectForKeyedSubscript:@"PLSavedPhotosSize"];
  v9 = [v8 objectForKeyedSubscript:@"PLInternalSizeOriginals"];
  v88 = [v9 unsignedIntegerValue];

  v10 = [v7 objectForKeyedSubscript:@"PLSavedPhotosSize"];
  v11 = [v10 objectForKeyedSubscript:@"PLInternalSizeDerivative"];
  v86 = [v11 unsignedIntegerValue];

  v12 = [v7 objectForKeyedSubscript:@"PLSavedPhotosSize"];
  v13 = [v12 objectForKeyedSubscript:@"PLInternalSizeFileBackedThumbnail"];
  v84 = [v13 unsignedIntegerValue];

  v14 = [v7 objectForKeyedSubscript:@"PLReferenceMediaSize"];
  v15 = [v14 objectForKeyedSubscript:@"PLInternalSizeDerivative"];
  v81 = [v15 unsignedIntegerValue];

  v16 = [v7 objectForKeyedSubscript:@"PLReferenceMediaSize"];
  v17 = [v16 objectForKeyedSubscript:@"PLInternalSizeFileBackedThumbnail"];
  v80 = [v17 unsignedIntegerValue];

  v18 = [v7 objectForKeyedSubscript:@"PLFinderSyncSize"];
  v19 = [v18 objectForKeyedSubscript:@"PLInternalSizeOriginals"];
  v79 = [v19 unsignedIntegerValue];

  v20 = [v7 objectForKeyedSubscript:@"PLFinderSyncSize"];
  v21 = [v20 objectForKeyedSubscript:@"PLInternalSizeDerivative"];
  v78 = [v21 unsignedIntegerValue];

  v22 = [v7 objectForKeyedSubscript:@"PLFinderSyncSize"];
  v23 = [v22 objectForKeyedSubscript:@"PLInternalSizeFileBackedThumbnail"];
  v77 = [v23 unsignedIntegerValue];

  v24 = [v7 objectForKeyedSubscript:@"PLFinderSyncSize"];
  v25 = [v24 objectForKeyedSubscript:@"PLInternalSizeTableThumbnail"];
  v76 = [v25 unsignedIntegerValue];

  v26 = [v7 objectForKeyedSubscript:@"PLPhotoStreamSize"];
  v27 = [v26 objectForKeyedSubscript:@"PLInternalSizeOriginals"];
  v75 = [v27 unsignedIntegerValue];

  v28 = [v7 objectForKeyedSubscript:@"PLPhotoStreamSize"];
  v29 = [v28 objectForKeyedSubscript:@"PLInternalSizeDerivative"];
  v74 = [v29 unsignedIntegerValue];

  v30 = [v7 objectForKeyedSubscript:@"PLPhotoStreamSize"];
  v31 = [v30 objectForKeyedSubscript:@"PLInternalSizeFileBackedThumbnail"];
  v73 = [v31 unsignedIntegerValue];

  v32 = [v7 objectForKeyedSubscript:@"PLPhotoStreamSize"];
  v33 = [v32 objectForKeyedSubscript:@"PLInternalSizeTableThumbnail"];
  v72 = [v33 unsignedIntegerValue];

  v34 = [v7 objectForKeyedSubscript:@"PLSharedStreamSize"];
  v35 = [v34 objectForKeyedSubscript:@"PLInternalSizeOriginals"];
  v36 = [v35 unsignedIntegerValue];

  v37 = [v7 objectForKeyedSubscript:@"PLSharedStreamSize"];
  v38 = [v37 objectForKeyedSubscript:@"PLInternalSizeDerivative"];
  v39 = [v38 unsignedIntegerValue];

  v40 = [v7 objectForKeyedSubscript:@"PLSharedStreamSize"];
  v41 = [v40 objectForKeyedSubscript:@"PLInternalSizeFileBackedThumbnail"];
  v42 = [v41 unsignedIntegerValue];

  v43 = [v7 objectForKeyedSubscript:@"PLSharedStreamSize"];
  v44 = [v43 objectForKeyedSubscript:@"PLInternalSizeTableThumbnail"];
  v45 = [v44 unsignedIntegerValue];

  v71 = [PLManagedAsset totalPurgeableSizeOnDiskInLibrary:self urgency:1];
  v46 = [(PLPhotoLibrary *)self thumbnailManager];
  v47 = [v46 _diskFootprintOfTableThumbnailTables];

  objc_autoreleasePoolPop(context);
  v48 = [v89 photoDirectoryWithType:6];
  v92 = v48;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v92 count:1];
  v50 = _sizeOfDirectories(v49);

  v51 = [(PLPhotoLibrary *)self _dbFileSizes];
  v52 = [PLDiskSpaceManagement performCloudSharingSpaceManagementWithBytesToPurge:0 shouldFreeSpace:0 shouldKeepRecentlyViewedAssets:0 fromPhotoLibrary:self];
  v53 = PLBackendGetLog();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v54 = CFAbsoluteTimeGetCurrent();
    *buf = 134217984;
    v94 = v54 - Current;
    _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_DEFAULT, "estimatedLibrarySizes took: %fs", buf, 0xCu);
  }

  v55 = v39 + v36 + v42 + v45;
  v56 = v55 >= v52;
  v57 = v55 - v52;
  if (v56)
  {
    v58 = v57;
  }

  else
  {
    v58 = 0;
  }

  v59 = v86 + v88 + v84 + v81 + v80 + v47 + v50;

  v87 = [&unk_1F0FBAAF8 stringValue];
  v90[0] = v87;
  v85 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v59 + v51];
  v91[0] = v85;
  contexta = [&unk_1F0FBAB10 stringValue];
  v90[1] = contexta;
  v60 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v74 + v75 + v73 + v72];
  v91[1] = v60;
  v61 = [&unk_1F0FBAB28 stringValue];
  v90[2] = v61;
  v62 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v58];
  v91[2] = v62;
  v63 = [&unk_1F0FBAB40 stringValue];
  v90[3] = v63;
  v64 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v78 + v79 + v77 + v76];
  v91[3] = v64;
  v65 = [&unk_1F0FBAAC8 stringValue];
  v90[4] = v65;
  v66 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v71];
  v91[4] = v66;
  v67 = [&unk_1F0FBAAB0 stringValue];
  v90[5] = v67;
  v68 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v88];
  v91[5] = v68;
  v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v91 forKeys:v90 count:6];

  return v69;
}

- (unint64_t)_dbFileSizes
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = [(PLPhotoLibrary *)self pathManager];
  v3 = [v15 knownDBPaths];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(PLPhotoLibrary *)self _fileSizeAtPath:v9]+ v6;
        v11 = [v9 stringByAppendingString:@"-shm"];
        v12 = v10 + [(PLPhotoLibrary *)self _fileSizeAtPath:v11];
        v13 = [v9 stringByAppendingString:@"-wal"];
        v6 = v12 + [(PLPhotoLibrary *)self _fileSizeAtPath:v13];
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)_fileSizeAtPath:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  memset(&v14, 0, sizeof(v14));
  if (stat([v3 fileSystemRepresentation], &v14))
  {
    v4 = __error();
    v5 = *v4;
    if (*v4 == 2)
    {
      v6 = PLBackendGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *__strerrbuf = 138412290;
        v22 = v3;
        v7 = "Can't get size for %@, no such file or directory";
        v8 = __strerrbuf;
        v9 = v6;
        v10 = OS_LOG_TYPE_DEBUG;
        v11 = 12;
LABEL_8:
        _os_log_impl(&dword_19BF1F000, v9, v10, v7, v8, v11);
      }
    }

    else
    {
      strerror_r(*v4, __strerrbuf, 0x100uLL);
      v6 = PLBackendGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v16 = v3;
        v17 = 1024;
        v18 = v5;
        v19 = 2082;
        v20 = __strerrbuf;
        v7 = "Can't get size for %@ (%d: %{public}s)";
        v8 = buf;
        v9 = v6;
        v10 = OS_LOG_TYPE_ERROR;
        v11 = 28;
        goto LABEL_8;
      }
    }

    st_size = 0;
    goto LABEL_10;
  }

  st_size = v14.st_size;
LABEL_10:

  return st_size;
}

- (id)librarySizesFromDBForLibraryKindMask:(unint64_t)a3
{
  v3 = a3;
  v46[3] = *MEMORY[0x1E69E9840];
  if ((a3 & 0x20) == 0)
  {
    v5 = 0;
    goto LABEL_12;
  }

  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLInternalResource entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  [v9 setResultType:2];
  v10 = MEMORY[0x1E696AB28];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", @"localAvailability", &unk_1F0FBAA80];
  v46[0] = v11;
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"!((%K & %@) == %@)", @"recipeID", &unk_1F0FBAA98, &unk_1F0FBAA98];
  v46[1] = v12;
  v13 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:"maskForCloudPhotoLibrarySizesFromDBExclusions") keyPathPrefix:{1, @"asset"}];
  v46[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:3];
  v15 = [v10 andPredicateWithSubpredicates:v14];
  [v9 setPredicate:v15];

  v16 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v16 setName:@"totalFileSize"];
  v17 = [MEMORY[0x1E696ABC8] expressionWithFormat:@"sum:(%K)", @"dataLength"];
  [v16 setExpression:v17];

  [v16 setExpressionResultType:300];
  v45 = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  [v9 setPropertiesToFetch:v18];

  managedObjectContext = self->_managedObjectContext;
  v38 = 0;
  v20 = [(PLManagedObjectContext *)managedObjectContext executeFetchRequest:v9 error:&v38];
  v21 = v38;
  if (v20)
  {
    if ([v20 count] != 1)
    {
      v5 = 0;
      goto LABEL_11;
    }

    v22 = [v20 objectAtIndexedSubscript:0];
    v23 = [v22 objectForKeyedSubscript:@"totalFileSize"];
    v5 = [v23 longLongValue];
  }

  else
  {
    v22 = PLBackendGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      *buf = 138412546;
      v42 = v24;
      v43 = 2112;
      v44 = v21;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "%@ failed to calculate size %@", buf, 0x16u);
    }

    v5 = 0;
  }

LABEL_11:
LABEL_12:
  if ([(PLPhotoLibrary *)self isCloudPhotoLibraryEnabled])
  {
    if ((v3 & 0x10) != 0)
    {
      v25 = [PLManagedAsset totalPurgeableSizeOnDiskInLibrary:self urgency:1 sizeOption:1];
    }

    else
    {
      v25 = 0;
    }

    v27 = [(PLPhotoLibrary *)self libraryBundle];
    v28 = [PLCPLSettings settingsWithLibraryBundle:v27];

    v29 = [v28 isKeepOriginalsEnabled];
    v26 = 0;
    if ((v3 & 0x40) != 0 && (v29 & 1) == 0)
    {
      v26 = [PLManagedAsset totalPurgeableSizeOnDiskInLibrary:self urgency:1 sizeOption:2];
      v25 += v26;
    }
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

  v30 = [&unk_1F0FBAAB0 stringValue];
  v39[0] = v30;
  v31 = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
  v40[0] = v31;
  v32 = [&unk_1F0FBAAC8 stringValue];
  v39[1] = v32;
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v25];
  v40[1] = v33;
  v34 = [&unk_1F0FBAAE0 stringValue];
  v39[2] = v34;
  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v26];
  v40[2] = v35;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:3];

  return v36;
}

- (id)librarySizesFromDB:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = v6;
    qos_class_self();
    v8 = PLStringFromQoSClass();
    v14 = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Starting getLibrarySizesFromDB:%@ QoS:%@", &v14, 0x16u);
  }

  if (v3)
  {
    [(PLPhotoLibrary *)self librarySizesFromDB];
  }

  else
  {
    [(PLPhotoLibrary *)self estimatedLibrarySizes];
  }
  v9 = ;
  v10 = PLBackendGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = v11;
    v14 = 138412546;
    v15 = v12;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Finished getLibrarySizesFromDB:%@: %{public}@", &v14, 0x16u);
  }

  return v9;
}

- (void)countOfReferencedMediaWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695D5E0];
  v6 = +[PLInternalResource entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"fileSystemBookmark != nil"];
  [v7 setPredicate:v8];

  v9 = [(PLPhotoLibrary *)self managedObjectContext];
  v10 = v9;
  if (v9)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__PLPhotoLibrary_countOfReferencedMediaWithCompletionHandler___block_invoke;
    v12[3] = &unk_1E7576F38;
    v13 = v9;
    v14 = v7;
    v15 = v4;
    [(PLPhotoLibrary *)self performBlock:v12];
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41003 userInfo:0];
    (*(v4 + 2))(v4, 0x7FFFFFFFFFFFFFFFLL, v11);
  }
}

void __62__PLPhotoLibrary_countOfReferencedMediaWithCompletionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v5 = 0;
  [v2 countForFetchRequest:v3 error:&v5];
  v4 = v5;
  (*(a1[6] + 16))();
}

- (BOOL)getPhotoCount:(unint64_t *)a3 videoCount:(unint64_t *)a4 excludeTrashed:(BOOL)a5 excludeInvisible:(BOOL)a6 excludeCloudShared:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v13 = [(PLPhotoLibrary *)self managedObjectContext];
  v14 = [(PLPhotoLibrary *)self isCloudPhotoLibraryEnabled];
  *a3 = [PLManagedAsset countUsedAssetsWithKind:0 excludeTrashed:v9 excludeInvisible:v8 excludeCloudShared:v7 excludePhotoStream:v14 inManagedObjectContext:v13];
  *a4 = [PLManagedAsset countUsedAssetsWithKind:1 excludeTrashed:v9 excludeInvisible:v8 excludeCloudShared:v7 excludePhotoStream:v14 inManagedObjectContext:v13];

  return 1;
}

- (id)albumListForContentMode:(int)a3
{
  if (a3 == 1)
  {
    v3 = [PLManagedAlbumList allStreamedAlbumsListInPhotoLibrary:self];
  }

  else if (a3 == 13)
  {
    v3 = [PLManagedAlbumList albumListInPhotoLibrary:self];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PLKeywordManager)keywordManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v3 = [WeakRetained keywordManager];

  return v3;
}

- (id)addDCIMEntryAtFileURL:(id)a3 mainFileMetadata:(id)a4 previewImage:(id)a5 thumbnailImage:(id)a6 savedAssetType:(signed __int16)a7 replacementUUID:(id)a8 publicGlobalUUID:(id)a9 extendedInfo:(id)a10 withUUID:(id)a11 isPlaceholder:(BOOL)a12 placeholderFileURL:(id)a13 forFinalCameraImage:(BOOL)a14
{
  v42 = a3;
  v19 = a4;
  v45 = a5;
  v46 = a6;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a13;
  if (v20 && v23)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"PLPhotoLibrary.m" lineNumber:2597 description:@"Cannot specify both replacementUUID and newUUID"];
  }

  if (!self->_pendingTransactions)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    v39 = NSStringFromSelector(a2);
    [v38 handleFailureInMethod:a2 object:self file:@"PLPhotoLibrary.m" lineNumber:2598 description:{@"Can only call %@ from within a transaction.", v39}];
  }

  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__2710;
  v68 = __Block_byref_object_dispose__2711;
  v69 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __208__PLPhotoLibrary_addDCIMEntryAtFileURL_mainFileMetadata_previewImage_thumbnailImage_savedAssetType_replacementUUID_publicGlobalUUID_extendedInfo_withUUID_isPlaceholder_placeholderFileURL_forFinalCameraImage___block_invoke;
  aBlock[3] = &unk_1E7565278;
  v60 = &v64;
  aBlock[4] = self;
  v43 = v42;
  v51 = v43;
  v41 = v19;
  v52 = v41;
  v61 = a7;
  v25 = v23;
  v53 = v25;
  v26 = v20;
  v54 = v26;
  v62 = a12;
  v27 = v24;
  v55 = v27;
  v28 = v22;
  v56 = v28;
  v29 = v21;
  v57 = v29;
  v30 = v45;
  v58 = v30;
  v31 = v46;
  v59 = v31;
  v63 = a14;
  v32 = _Block_copy(aBlock);
  v33 = [(PLPhotoLibrary *)self libraryServicesManager];
  if (!v33)
  {
    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    [v47 handleFailureInMethod:a2 object:self file:@"PLPhotoLibrary.m" lineNumber:2714 description:{@"Invalid parameter not satisfying: %@", @"libraryServicesManager"}];
  }

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __208__PLPhotoLibrary_addDCIMEntryAtFileURL_mainFileMetadata_previewImage_thumbnailImage_savedAssetType_replacementUUID_publicGlobalUUID_extendedInfo_withUUID_isPlaceholder_placeholderFileURL_forFinalCameraImage___block_invoke_2;
  v48[3] = &unk_1E7576AA0;
  v34 = v32;
  v49 = v34;
  [v33 performBlockWithImportMutex:v48];
  v35 = v65[5];

  _Block_object_dispose(&v64, 8);

  return v35;
}

void __208__PLPhotoLibrary_addDCIMEntryAtFileURL_mainFileMetadata_previewImage_thumbnailImage_savedAssetType_replacementUUID_publicGlobalUUID_extendedInfo_withUUID_isPlaceholder_placeholderFileURL_forFinalCameraImage___block_invoke(uint64_t a1)
{
  v35 = 0;
  v36 = 0;
  BYTE1(v31) = 1;
  LOBYTE(v31) = *(a1 + 122);
  v2 = [PLManagedAsset insertAssetIntoPhotoLibrary:*(a1 + 32) mainFileURL:*(a1 + 40) mainFileMetadata:*(a1 + 48) savedAssetType:*(a1 + 120) bundleScope:0 uuid:*(a1 + 56) replacementUUID:*(a1 + 64) imageSource:&v36 imageData:&v35 isPlaceholder:v31 deleteFileOnFailure:?];
  v3 = v35;
  v4 = *(*(a1 + 112) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v2;

  v6 = *(*(*(a1 + 112) + 8) + 40);
  if (v6)
  {
    if (*(a1 + 122) == 1)
    {
      [v6 setAttributesFromMainFileURL:*(a1 + 40) mainFileMetadata:*(a1 + 48) savedAssetType:*(a1 + 120) bundleScope:0 isPlaceholder:1 placeholderFileURL:*(a1 + 72) imageSource:0 imageData:0];
      v6 = *(*(*(a1 + 112) + 8) + 40);
    }

    v33 = 0;
    v34 = 0;
    v7 = [v6 uuid];
    PLStringUUIDComponents(v7, &v34, &v33);

    kdebug_trace();
    v8 = [*(a1 + 80) objectForKey:*MEMORY[0x1E69C0320]];
    if (v8)
    {
      [*(*(*(a1 + 112) + 8) + 40) setImportedByBundleIdentifier:v8];
    }

    v9 = [*(a1 + 80) objectForKey:*MEMORY[0x1E69C0318]];
    if ([PLAdditionalAssetAttributes shouldPersistImportedByDisplayName:v9])
    {
      [*(*(*(a1 + 112) + 8) + 40) setImportedByDisplayName:v9];
    }

    v10 = [*(a1 + 80) objectForKey:*MEMORY[0x1E69C04B0]];
    if (v10)
    {
      v11 = [PLManagedAsset assetWithUUID:v10 inLibrary:*(a1 + 32)];
      [*(*(*(a1 + 112) + 8) + 40) setOriginalAsset:v11];
    }

    v12 = [*(a1 + 80) objectForKey:*MEMORY[0x1E69C03A0]];
    v13 = v12;
    if (v12)
    {
      [*(*(*(a1 + 112) + 8) + 40) setMetadataFromCustomRenderedValue:{objc_msgSend(v12, "integerValue")}];
    }

    if ([*(*(*(a1 + 112) + 8) + 40) hasAdjustments])
    {

      v3 = 0;
      v36 = 0;
    }

    v32 = v9;
    if (*(a1 + 88))
    {
      [*(*(*(a1 + 112) + 8) + 40) setDisableFileSystemPersistency:1];
      [*(*(*(a1 + 112) + 8) + 40) setPublicGlobalUUID:*(a1 + 88)];
      [*(*(*(a1 + 112) + 8) + 40) setDisableFileSystemPersistency:0];
    }

    *(&v30 + 1) = 1;
    LOBYTE(v30) = *(a1 + 123);
    v14 = v3;
    [*(*(*(a1 + 112) + 8) + 40) generateAndUpdateThumbnailsWithPreviewImage:*(a1 + 96) thumbnailImage:*(a1 + 104) fromImageSource:v36 imageData:v3 metadata:0 forceSRGBConversion:0 forFinalCameraImage:v30 saveCameraPreviewWellImage:? reduceProcessingForIngest:?];
    v15 = [*(*(*(a1 + 112) + 8) + 40) isPhoto];
    v16 = [*(a1 + 80) objectForKey:*MEMORY[0x1E69C0370]];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 BOOLValue];
      v19 = [*(*(*(a1 + 112) + 8) + 40) additionalAttributes];
      [v19 setCameraCaptureDevice:v18 ^ 1u];

      v20 = [*(*(*(a1 + 112) + 8) + 40) additionalAttributes];
      v21 = v20;
      if (v18)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      [v20 setImportedBy:v22];

      if (v15)
      {
        v23 = +[PLManagedAsset imageHDRTypeFromCustomRenderedValue:](PLManagedAsset, "imageHDRTypeFromCustomRenderedValue:", [v13 shortValue]) - 2;
        if (v23 <= 2)
        {
          v24 = off_1E75654C0;
          if (!v18)
          {
            v24 = off_1E75654D8;
          }

          v25 = *v24[v23];
          if (v25)
          {
            PLSAggregateDictionaryAddValueForScalarKey(v25, 1);
          }
        }
      }
    }

    else
    {
      v26 = [*(a1 + 80) objectForKey:@"ImportedBy"];
      v27 = v26;
      if (v26)
      {
        v28 = [v26 intValue];
        v29 = [*(*(*(a1 + 112) + 8) + 40) additionalAttributes];
        [v29 setImportedBy:v28];
      }
    }

    if (*(a1 + 122) == 1 && *(a1 + 72) && ([*(*(*(a1 + 112) + 8) + 40) hasOriginalFile] & 1) == 0)
    {
      [*(*(*(a1 + 112) + 8) + 40) persistMetadataToFileURL:*(a1 + 72)];
    }

    else
    {
      [*(*(*(a1 + 112) + 8) + 40) persistMetadataToFilesystem];
    }

    v3 = v14;
  }
}

void __208__PLPhotoLibrary_addDCIMEntryAtFileURL_mainFileMetadata_previewImage_thumbnailImage_savedAssetType_replacementUUID_publicGlobalUUID_extendedInfo_withUUID_isPlaceholder_placeholderFileURL_forFinalCameraImage___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (void)modifyDCIMEntryForPhoto:(id)a3
{
  v4 = a3;
  v5 = [v4 pathForOriginalFile];
  if (v5 && [v4 isPhoto])
  {
    v6 = [v4 photoLibrary];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__PLPhotoLibrary_modifyDCIMEntryForPhoto___block_invoke;
    v7[3] = &unk_1E75761B8;
    v8 = v5;
    v9 = self;
    v10 = v4;
    [v6 performTransaction:v7 completionHandler:0];
  }
}

void __42__PLPhotoLibrary_modifyDCIMEntryForPhoto___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69C0718]);
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(a1 + 32)];
  v4 = [*(a1 + 40) libraryBundle];
  v5 = [v4 timeZoneLookup];
  v15 = [v2 initWithMediaURL:v3 timeZoneLookup:v5];

  v6 = *(a1 + 48);
  v7 = [v15 fileSystemProperties];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696A3B8]];
  [v6 setOriginalFilesize:{objc_msgSend(v8, "unsignedIntegerValue")}];

  v9 = *(a1 + 48);
  v10 = [v15 cgImageProperties];
  [v9 setThumbnailDataFromImageProperties:v10];

  v11 = *(a1 + 48);
  v12 = [v15 gpsLocation];
  [v11 setLocation:v12];

  v13 = *(a1 + 48);
  v14 = [MEMORY[0x1E695DF00] date];
  [v13 setModificationDate:v14];
}

- (id)photoOutboundSharingTmpDirectoryURL
{
  v2 = [(PLPhotoLibraryPathManager *)self->_pathManager privateDirectoryWithSubType:2 createIfNeeded:1 error:0];
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2 isDirectory:1];

  return v3;
}

- (NSArray)syncedAlbums
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(PLPhotoLibrary *)self managedObjectContext];
  v5 = [(PLGenericAlbum *)PLManagedAlbum albumsWithKind:1603 inManagedObjectContext:v4];
  [v3 addObjectsFromArray:v5];

  v6 = [(PLPhotoLibrary *)self managedObjectContext];
  v7 = [(PLGenericAlbum *)PLManagedAlbum albumsWithKind:1604 inManagedObjectContext:v6];
  [v3 addObjectsFromArray:v7];

  v8 = [(PLPhotoLibrary *)self managedObjectContext];
  v9 = [(PLGenericAlbum *)PLManagedAlbum albumsWithKind:2 inManagedObjectContext:v8];
  [v3 addObjectsFromArray:v9];

  v10 = [(PLPhotoLibrary *)self managedObjectContext];
  v11 = [(PLGenericAlbum *)PLManagedAlbum albumsWithKind:1550 inManagedObjectContext:v10];
  [v3 addObjectsFromArray:v11];

  return v3;
}

- (void)resetCachedImportAlbumsIfNeededForAlbum:(id)a3
{
  v4 = a3;
  p_lastImportedPhotosAlbum = &self->_lastImportedPhotosAlbum;
  lastImportedPhotosAlbum = self->_lastImportedPhotosAlbum;
  if (lastImportedPhotosAlbum == v4)
  {
    v9 = v4;
  }

  else
  {
    allImportedPhotosAlbum = self->_allImportedPhotosAlbum;
    p_allImportedPhotosAlbum = &self->_allImportedPhotosAlbum;
    lastImportedPhotosAlbum = allImportedPhotosAlbum;
    if (allImportedPhotosAlbum != v4)
    {
      goto LABEL_6;
    }

    v9 = v4;
    p_lastImportedPhotosAlbum = p_allImportedPhotosAlbum;
  }

  *p_lastImportedPhotosAlbum = 0;

  v4 = v9;
LABEL_6:
}

- (id)lastImportedPhotosAlbumCreateIfNeeded:(BOOL)a3
{
  v19 = *MEMORY[0x1E69E9840];
  lastImportedPhotosAlbum = self->_lastImportedPhotosAlbum;
  if (!lastImportedPhotosAlbum)
  {
    v5 = a3;
    v6 = [(PLPhotoLibrary *)self managedObjectContext];
    v7 = [PLGenericAlbum albumWithKind:1603 inManagedObjectContext:v6];
    v8 = self->_lastImportedPhotosAlbum;
    self->_lastImportedPhotosAlbum = v7;

    lastImportedPhotosAlbum = self->_lastImportedPhotosAlbum;
    if (!lastImportedPhotosAlbum && v5)
    {
      v9 = [PLGenericAlbum insertNewAlbumWithKind:1603 title:0 intoLibrary:self];
      v10 = self->_lastImportedPhotosAlbum;
      self->_lastImportedPhotosAlbum = v9;

      v11 = [(PLPhotoLibrary *)self managedObjectContext];
      v16 = 0;
      v12 = [v11 save:&v16];
      v13 = v16;

      if ((v12 & 1) == 0)
      {
        v14 = PLBackendGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v18 = v13;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to save after creating the lastImportedPhotosAlbum: %@", buf, 0xCu);
        }
      }

      lastImportedPhotosAlbum = self->_lastImportedPhotosAlbum;
    }
  }

  return lastImportedPhotosAlbum;
}

- (id)allImportedPhotosAlbumCreateIfNeeded:(BOOL)a3
{
  v19 = *MEMORY[0x1E69E9840];
  allImportedPhotosAlbum = self->_allImportedPhotosAlbum;
  if (!allImportedPhotosAlbum)
  {
    v5 = a3;
    v6 = [(PLPhotoLibrary *)self managedObjectContext];
    v7 = [PLGenericAlbum albumWithKind:1604 inManagedObjectContext:v6];
    v8 = self->_allImportedPhotosAlbum;
    self->_allImportedPhotosAlbum = v7;

    allImportedPhotosAlbum = self->_allImportedPhotosAlbum;
    if (!allImportedPhotosAlbum && v5)
    {
      v9 = [PLGenericAlbum insertNewAlbumWithKind:1604 title:0 intoLibrary:self];
      v10 = self->_allImportedPhotosAlbum;
      self->_allImportedPhotosAlbum = v9;

      v11 = [(PLPhotoLibrary *)self managedObjectContext];
      v16 = 0;
      v12 = [v11 save:&v16];
      v13 = v16;

      if ((v12 & 1) == 0)
      {
        v14 = PLBackendGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v18 = v13;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to save after creating the allImportedPhotosAlbum: %@", buf, 0xCu);
        }
      }

      allImportedPhotosAlbum = self->_allImportedPhotosAlbum;
    }
  }

  return allImportedPhotosAlbum;
}

- (void)_removeOldFaceMetadataAsync
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __45__PLPhotoLibrary__removeOldFaceMetadataAsync__block_invoke;
  v2[3] = &unk_1E75781E8;
  v2[4] = self;
  [MEMORY[0x1E69BF230] performBlockOnWriterQueue:v2];
}

void __45__PLPhotoLibrary__removeOldFaceMetadataAsync__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E695DFF8];
  v2 = [*(a1 + 32) pathManager];
  v3 = [v2 privateDirectoryWithSubType:4 createIfNeeded:1 error:0];
  v4 = [v1 fileURLWithPath:v3 isDirectory:1];

  [PLPhotoLibrary removeFaceMetadataAtURL:v4 includingPeople:1];
}

- (void)_enumerateFilesAtURL:(id)a3 withBlock:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v20[0] = *MEMORY[0x1E695DC30];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v9 = [v7 enumeratorAtURL:v5 includingPropertiesForKeys:v8 options:0 errorHandler:&__block_literal_global_659];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v6[2](v6, *(*(&v15 + 1) + 8 * v14++));
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

uint64_t __49__PLPhotoLibrary__enumerateFilesAtURL_withBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = PLMigrationGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v4 path];
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Unable to enumerate '%@': %@", &v9, 0x16u);
  }

  return 1;
}

- (void)_enumerateFilesAtURLs:(id)a3 withBlock:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v6);
        }

        [(PLPhotoLibrary *)self _enumerateFilesAtURL:*(*(&v12 + 1) + 8 * v11++) withBlock:v7];
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_recreateItemsFromMetadataAtDirectoryURLs:(id)a3 includeAlbums:(BOOL)a4
{
  v301 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v232 = [(PLPhotoLibrary *)self isCloudPhotoLibraryEnabled];
  v235 = [MEMORY[0x1E695DF70] array];
  v234 = [(PLPhotoLibrary *)self managedObjectContext];
  v219 = [v234 hasChanges];
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [MEMORY[0x1E695DF70] array];
  v221 = [MEMORY[0x1E695DFA8] set];
  v223 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v227 = [MEMORY[0x1E695DF70] array];
  v280[0] = MEMORY[0x1E69E9820];
  v280[1] = 3221225472;
  v280[2] = __74__PLPhotoLibrary__recreateItemsFromMetadataAtDirectoryURLs_includeAlbums___block_invoke;
  v280[3] = &unk_1E7565228;
  v286 = a4;
  v12 = v8;
  v281 = v12;
  v225 = v9;
  v282 = v225;
  v215 = v7;
  v283 = v215;
  v214 = v10;
  v284 = v214;
  v208 = v11;
  v285 = v208;
  v233 = self;
  v206 = v6;
  [(PLPhotoLibrary *)self _enumerateFilesAtURLs:v6 withBlock:v280];
  [v12 sortUsingComparator:&__block_literal_global_635];
  v278 = 0u;
  v279 = 0u;
  v276 = 0u;
  v277 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v276 objects:v300 count:16];
  v14 = 0x1E755F000uLL;
  if (v13)
  {
    v15 = v13;
    v16 = *v277;
    do
    {
      v17 = 0;
      do
      {
        if (*v277 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v276 + 1) + 8 * v17);
        v19 = objc_autoreleasePoolPush();
        v20 = [[PLPersistedAlbumMetadata alloc] initWithPersistedDataAtURL:v18];
        v21 = v20;
        if (v20)
        {
          v22 = [(PLPersistedAlbumMetadata *)v20 kind];
          v23 = [v22 integerValue];

          v24 = v14;
          v25 = [*(v14 + 3776) isUserCreatedForKind:v23];
          v26 = [*(v24 + 3776) isSmartAlbumForKind:v23];
          if (v232)
          {
            v27 = [*(v24 + 3776) is1WaySyncKind:v23];
          }

          else
          {
            v27 = 0;
          }

          if (v23 == 1508)
          {
            v31 = [(PLPersistedAlbumMetadata *)v21 projectDocumentType];

            if (v25 & 1) == 0 && ((v26 | v27))
            {
              goto LABEL_22;
            }

            if (!v31)
            {
              v32 = PLMigrationGetLog();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v297 = v21;
                _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "Found invalid project album metadata will skip and delete %@", buf, 0xCu);
              }

              goto LABEL_27;
            }
          }

          else if (v25 & 1) == 0 && ((v26 | v27))
          {
LABEL_22:
            v33 = PLMigrationGetLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v34 = @"orphaned iTunes sync album";
              if (v26)
              {
                v34 = @"smart album";
              }

              v297 = v34;
              v298 = 2112;
              v299 = v21;
              _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "Found metadata for a invalid album kind: %@, will skip and delete %@", buf, 0x16u);
            }

LABEL_27:
            v30 = [v18 path];
            [v235 addObject:v30];
LABEL_28:
            v14 = 0x1E755F000;
            goto LABEL_32;
          }

          v35 = PLMigrationGetLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            v36 = [v18 path];
            *buf = 138412290;
            v297 = v36;
            _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEBUG, "Processing album metadata from %@", buf, 0xCu);
          }

          v14 = 0x1E755F000uLL;
          v37 = [(PLPersistedAlbumMetadata *)v21 uuid];
          v30 = [PLGenericAlbum albumWithUUID:v37 inLibrary:v233];

          v38 = [v30 isSmartAlbum];
          if (!v30)
          {
            v39 = v38;
            v40 = [(PLPersistedAlbumMetadata *)v21 cloudGUID];
            v30 = [PLGenericAlbum albumWithCloudGUID:v40 inLibrary:v233];

            v41 = [(PLPersistedAlbumMetadata *)v21 cloudGUID];

            v42 = PLMigrationGetLog();
            v43 = v42;
            if (v41 && v30)
            {
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v297 = v21;
                _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_ERROR, "Found album with the same cloudGUID will skip and delete %@", buf, 0xCu);
              }

              v44 = [v18 path];
              [v235 addObject:v44];

              goto LABEL_28;
            }

            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v45 = &stru_1F0F06D80;
              if (v39)
              {
                v45 = @" smart";
              }

              v297 = v45;
              v298 = 2112;
              v299 = v21;
              _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_DEFAULT, "Creating new%@ album from metadata %@", buf, 0x16u);
            }

            v46 = [(PLPersistedAlbumMetadata *)v21 insertAlbumFromDataInManagedObjectContext:v234];

            if (!v46)
            {
              v30 = 0;
              goto LABEL_28;
            }

            [v221 addObject:v46];
            v14 = 0x1E755F000;
            if ((v39 & 1) == 0)
            {
              [(PLPersistedAlbumMetadata *)v21 updateChildrenOrderingInAlbum:v46 includePendingAssetChanges:v219];
            }

            v30 = v46;
          }
        }

        else
        {
          v28 = PLMigrationGetLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = [v18 path];
            *buf = 138412290;
            v297 = v29;
            _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Failed to read invalid or missing metadata, will skip and delete %@", buf, 0xCu);
          }

          v30 = [v18 path];
          [v235 addObject:v30];
        }

LABEL_32:

        objc_autoreleasePoolPop(v19);
        ++v17;
      }

      while (v15 != v17);
      v47 = [obj countByEnumeratingWithState:&v276 objects:v300 count:16];
      v15 = v47;
    }

    while (v47);
  }

  v222 = [(PLGenericAlbum *)PLManagedFolder rootFolderInLibrary:v233];
  v218 = [(PLGenericAlbum *)PLManagedFolder projectAlbumRootFolderInLibrary:v233];
  v272 = 0u;
  v273 = 0u;
  v274 = 0u;
  v275 = 0u;
  v229 = v225;
  v48 = [v229 countByEnumeratingWithState:&v272 objects:v295 count:16];
  if (!v48)
  {
    v213 = 0;
    v217 = 0;
    v51 = v227;
    goto LABEL_99;
  }

  v49 = v48;
  v213 = 0;
  v217 = 0;
  v50 = *v273;
  v51 = v227;
  do
  {
    v52 = 0;
    do
    {
      if (*v273 != v50)
      {
        objc_enumerationMutation(v229);
      }

      v53 = *(*(&v272 + 1) + 8 * v52);
      v54 = objc_autoreleasePoolPush();
      v55 = [[PLPersistedFolderMetadata alloc] initWithPersistedDataAtURL:v53];
      v56 = v55;
      if (!v55)
      {
        v59 = PLMigrationGetLog();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          v65 = [v53 path];
          *buf = 138412290;
          v297 = v65;
          v66 = v59;
          v67 = OS_LOG_TYPE_ERROR;
          v68 = "Failed to read invalid or missing metadata, will skip and delete %@";
          goto LABEL_66;
        }

LABEL_67:

        v64 = [v53 path];
        [v235 addObject:v64];
        goto LABEL_84;
      }

      v57 = [(PLPersistedFolderMetadata *)v55 kind];
      v58 = [v57 integerValue];

      if (v232 && [PLGenericAlbum is1WaySyncKind:v58])
      {
        v59 = PLMigrationGetLog();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v297 = v56;
          _os_log_impl(&dword_19BF1F000, v59, OS_LOG_TYPE_ERROR, "Found metadata for a invalid folder kind: orphaned iTunes sync folder, will skip and delete %@", buf, 0xCu);
        }

        goto LABEL_67;
      }

      if ([(PLPersistedFolderMetadata *)v56 isRootFolder])
      {
        v60 = PLMigrationGetLog();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v297 = v56;
          _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_DEBUG, "Found root folder metadata %@", buf, 0xCu);
        }

        [v51 addObject:v56];
        v61 = [(PLPersistedFolderMetadata *)v56 uuid];
        v62 = [v222 uuid];
        v63 = [v61 isEqualToString:v62];

        if (v63)
        {
          v64 = v217;
          v217 = v56;
LABEL_83:
          v51 = v227;
          goto LABEL_84;
        }

        v73 = PLMigrationGetLog();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          v74 = [(PLPersistedFolderMetadata *)v56 uuid];
          v75 = [v222 uuid];
          *buf = 138412546;
          v297 = v74;
          v298 = 2112;
          v299 = v75;
          v76 = v73;
          v77 = "Root folder metadata uuid %@ doesn't match current root folder %@, will delete";
          goto LABEL_81;
        }

        goto LABEL_82;
      }

      if ([(PLPersistedFolderMetadata *)v56 isProjectAlbumRootFolder])
      {
        v69 = PLMigrationGetLog();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v297 = v56;
          _os_log_impl(&dword_19BF1F000, v69, OS_LOG_TYPE_DEBUG, "Found project root folder metadata %@", buf, 0xCu);
        }

        [v51 addObject:v56];
        v70 = [(PLPersistedFolderMetadata *)v56 uuid];
        v71 = [v218 uuid];
        v72 = [v70 isEqualToString:v71];

        if (v72)
        {
          v64 = v213;
          v213 = v56;
          goto LABEL_83;
        }

        v73 = PLMigrationGetLog();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          v74 = [(PLPersistedFolderMetadata *)v56 uuid];
          v75 = [v218 uuid];
          *buf = 138412546;
          v297 = v74;
          v298 = 2112;
          v299 = v75;
          v76 = v73;
          v77 = "Project Root folder metadata uuid %@ doesn't match current project root folder %@, will delete";
LABEL_81:
          _os_log_impl(&dword_19BF1F000, v76, OS_LOG_TYPE_DEFAULT, v77, buf, 0x16u);
        }

LABEL_82:

        v64 = [v53 path];
        [v235 addObject:v64];
        goto LABEL_83;
      }

      v78 = [(PLPersistedFolderMetadata *)v56 cloudGUID];
      if ([v78 isEqualToString:@"----Project-Root-Folder----"])
      {
        v79 = [(PLPersistedFolderMetadata *)v56 isProjectAlbumRootFolder];

        if (!v79)
        {
          v59 = PLMigrationGetLog();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            v65 = [(PLPersistedFolderMetadata *)v56 uuid];
            *buf = 138412290;
            v297 = v65;
            v66 = v59;
            v67 = OS_LOG_TYPE_DEFAULT;
            v68 = "found project root album folderMetadata (uuid: %@) with incorrect folder type, will delete";
LABEL_66:
            _os_log_impl(&dword_19BF1F000, v66, v67, v68, buf, 0xCu);
          }

          goto LABEL_67;
        }
      }

      else
      {
      }

      v80 = PLMigrationGetLog();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
      {
        v81 = [v53 path];
        *buf = 138412290;
        v297 = v81;
        _os_log_impl(&dword_19BF1F000, v80, OS_LOG_TYPE_DEBUG, "Processing folder metadata from %@", buf, 0xCu);
      }

      v82 = [(PLPersistedFolderMetadata *)v56 uuid];
      v64 = [PLGenericAlbum albumWithUUID:v82 inLibrary:v233];

      if (v64)
      {
        goto LABEL_95;
      }

      v83 = PLMigrationGetLog();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v297 = v56;
        _os_log_impl(&dword_19BF1F000, v83, OS_LOG_TYPE_DEFAULT, "Creating new folder from metadata %@", buf, 0xCu);
      }

      v84 = [(PLPersistedFolderMetadata *)v56 insertFolderFromDataInManagedObjectContext:v234];
      if (v84)
      {
        v64 = v84;
        [v221 addObject:v84];
LABEL_95:
        [v223 setObject:v56 forKey:v64];
LABEL_84:
      }

      objc_autoreleasePoolPop(v54);
      ++v52;
    }

    while (v49 != v52);
    v85 = [v229 countByEnumeratingWithState:&v272 objects:v295 count:16];
    v49 = v85;
  }

  while (v85);
LABEL_99:

  v270 = 0u;
  v271 = 0u;
  v268 = 0u;
  v269 = 0u;
  v228 = v215;
  v86 = [v228 countByEnumeratingWithState:&v268 objects:v294 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v269;
    do
    {
      for (i = 0; i != v87; ++i)
      {
        if (*v269 != v88)
        {
          objc_enumerationMutation(v228);
        }

        v90 = [*(*(&v268 + 1) + 8 * i) path];
        v91 = PLMigrationGetLog();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v297 = v90;
          _os_log_impl(&dword_19BF1F000, v91, OS_LOG_TYPE_DEFAULT, "Processing metadata for albumlist %@", buf, 0xCu);
        }

        if (![PLManagedAlbumList restoreAlbumListFromPersistedDataAtPath:v90 library:v233])
        {
          v92 = PLMigrationGetLog();
          if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v297 = v90;
            _os_log_impl(&dword_19BF1F000, v92, OS_LOG_TYPE_ERROR, "Found metadata for a invalid album list kind, will skip and delete %@", buf, 0xCu);
          }

          [v235 addObject:v90];
        }
      }

      v87 = [v228 countByEnumeratingWithState:&v268 objects:v294 count:16];
    }

    while (v87);
  }

  v93 = [MEMORY[0x1E695DFA0] orderedSet];
  v94 = [MEMORY[0x1E695DFA0] orderedSet];
  if (v217)
  {
    v95 = [(PLPersistedFolderMetadata *)v217 childUUIDs];
    [v93 unionOrderedSet:v95];

    [v51 removeObject:v217];
  }

  v96 = v234;
  if (v213)
  {
    v97 = [(PLPersistedFolderMetadata *)v213 childUUIDs];
    [v94 unionOrderedSet:v97];

    [v51 removeObject:v213];
  }

  v209 = v94;
  v266 = 0u;
  v267 = 0u;
  v264 = 0u;
  v265 = 0u;
  v231 = v51;
  v98 = [v231 countByEnumeratingWithState:&v264 objects:v293 count:16];
  if (v98)
  {
    v99 = v98;
    v100 = *v265;
    do
    {
      for (j = 0; j != v99; ++j)
      {
        if (*v265 != v100)
        {
          objc_enumerationMutation(v231);
        }

        v102 = *(*(&v264 + 1) + 8 * j);
        v260 = 0u;
        v261 = 0u;
        v262 = 0u;
        v263 = 0u;
        v103 = [v102 childUUIDs];
        v104 = [v103 countByEnumeratingWithState:&v260 objects:v292 count:16];
        if (v104)
        {
          v105 = v104;
          v106 = *v261;
          do
          {
            for (k = 0; k != v105; ++k)
            {
              if (*v261 != v106)
              {
                objc_enumerationMutation(v103);
              }

              [v93 addObject:*(*(&v260 + 1) + 8 * k)];
            }

            v105 = [v103 countByEnumeratingWithState:&v260 objects:v292 count:16];
          }

          while (v105);
        }
      }

      v99 = [v231 countByEnumeratingWithState:&v264 objects:v293 count:16];
    }

    while (v99);
  }

  if ([v93 count])
  {
    [PLPersistedFolderMetadata updateChildrenOrderingInFolder:v222 usingChildUUIDs:v93 sourceDescription:0 includePendingChanges:1];
  }

  if ([v209 count])
  {
    [PLPersistedFolderMetadata updateChildrenOrderingInFolder:v218 usingChildUUIDs:v209 sourceDescription:0 includePendingChanges:1];
  }

  v258 = 0u;
  v259 = 0u;
  v256 = 0u;
  v257 = 0u;
  v108 = v223;
  v109 = [v108 countByEnumeratingWithState:&v256 objects:v291 count:16];
  if (v109)
  {
    v110 = v109;
    v111 = *v257;
    do
    {
      for (m = 0; m != v110; ++m)
      {
        if (*v257 != v111)
        {
          objc_enumerationMutation(v108);
        }

        v113 = *(*(&v256 + 1) + 8 * m);
        v114 = [v108 objectForKey:v113];
        [v114 updateChildrenOrderingInFolder:v113 includePendingChanges:1];
      }

      v110 = [v108 countByEnumeratingWithState:&v256 objects:v291 count:16];
    }

    while (v110);
  }

  [(PLPhotoLibrary *)v233 _deleteEmptyImportAlbumsWithAddedAlbums:v221];
  v254 = 0u;
  v255 = 0u;
  v252 = 0u;
  v253 = 0u;
  v115 = v221;
  v116 = [v115 countByEnumeratingWithState:&v252 objects:v290 count:16];
  if (v116)
  {
    v117 = v116;
    v118 = *v253;
    do
    {
      for (n = 0; n != v117; ++n)
      {
        if (*v253 != v118)
        {
          objc_enumerationMutation(v115);
        }

        v120 = *(*(&v252 + 1) + 8 * n);
        if (([v120 isRegularRootFolder] & 1) == 0 && (objc_msgSend(v120, "isProjectAlbumRootFolder") & 1) == 0)
        {
          v121 = [v120 parentFolder];

          if (!v121)
          {
            if ([v120 isProjectAlbum])
            {
              v122 = v218;
            }

            else
            {
              v122 = v222;
            }

            v123 = [v122 albums];
            [v123 addObject:v120];
          }
        }
      }

      v117 = [v115 countByEnumeratingWithState:&v252 objects:v290 count:16];
    }

    while (v117);
  }

  if ([v234 hasChanges])
  {
    v251 = 0;
    v124 = [v234 save:&v251];
    v125 = v251;
    if ((v124 & 1) == 0)
    {
      v201 = [MEMORY[0x1E696AEC0] stringWithFormat:@"recreateAlbumsFromMetadta failed to save context %@: %@", v234, v125];
      v202 = PLMigrationGetLog();
      if (os_log_type_enabled(v202, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v297 = v201;
        _os_log_impl(&dword_19BF1F000, v202, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v203 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v201 userInfo:0];
      objc_exception_throw(v203);
    }
  }

  v205 = v115;
  v207 = v108;
  v249 = 0u;
  v250 = 0u;
  v247 = 0u;
  v248 = 0u;
  v226 = v214;
  v126 = [v226 countByEnumeratingWithState:&v247 objects:v289 count:16];
  if (v126)
  {
    v127 = v126;
    v128 = *v248;
    do
    {
      for (ii = 0; ii != v127; ++ii)
      {
        if (*v248 != v128)
        {
          objc_enumerationMutation(v226);
        }

        v130 = *(*(&v247 + 1) + 8 * ii);
        v131 = objc_autoreleasePoolPush();
        v132 = [[PLPersistedMemoryMetadata alloc] initWithPersistedDataAtURL:v130];
        v133 = v132;
        if (v132)
        {
          v134 = [(PLPersistedMemoryMetadata *)v132 uuid];
          v135 = [PLMemory memoryWithUUID:v134 inPhotoLibrary:v233];

          if (v135)
          {
            goto LABEL_185;
          }

          v136 = [(PLPersistedMemoryMetadata *)v133 isObsolete];
          if (!v232 || v136)
          {
            v137 = v234;
            if (v136)
            {
              goto LABEL_182;
            }
          }

          else
          {
            v137 = v234;
            if (![(PLPersistedMemoryMetadata *)v133 hasAllAssetsAvailableInManagedObjectContext:v234 includePendingAssetChanges:v219])
            {
              v142 = PLMigrationGetLog();
              if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v297 = v133;
                _os_log_impl(&dword_19BF1F000, v142, OS_LOG_TYPE_DEFAULT, "Skipping restore for memory with references to unavailable assets, will restore %@ from iCloud Photo Library", buf, 0xCu);
              }

LABEL_182:
              v143 = PLMigrationGetLog();
              if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v297 = v133;
                _os_log_impl(&dword_19BF1F000, v143, OS_LOG_TYPE_DEFAULT, "Removing persisted data for %@", buf, 0xCu);
              }

              [(PLPersistedMemoryMetadata *)v133 removePersistedData];
              v135 = 0;
              goto LABEL_185;
            }
          }

          v140 = PLMigrationGetLog();
          if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v297 = v133;
            _os_log_impl(&dword_19BF1F000, v140, OS_LOG_TYPE_DEFAULT, "Creating new memory from metadata %@", buf, 0xCu);
          }

          v135 = [(PLPersistedMemoryMetadata *)v133 insertMemoryFromDataInManagedObjectContext:v137];
          if (v135 && ![(PLPersistedMemoryMetadata *)v133 updateAssetsInMemory:v135 includePendingAssetChanges:v219])
          {
            v141 = PLMigrationGetLog();
            if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v297 = v133;
              _os_log_impl(&dword_19BF1F000, v141, OS_LOG_TYPE_ERROR, "Incomplete restore of assets for memory %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v138 = PLMigrationGetLog();
          if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
          {
            v139 = [v130 path];
            *buf = 138412290;
            v297 = v139;
            _os_log_impl(&dword_19BF1F000, v138, OS_LOG_TYPE_ERROR, "Failed to read invalid or missing metadata, will skip and delete %@", buf, 0xCu);
          }

          v135 = [v130 path];
          [v235 addObject:v135];
        }

LABEL_185:

        v96 = v234;
        if ([v234 hasChanges])
        {
          v246 = 0;
          v144 = [v234 save:&v246];
          v145 = v246;
          if ((v144 & 1) == 0)
          {
            v146 = PLMigrationGetLog();
            if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
            {
              v147 = [v130 path];
              *buf = 138412546;
              v297 = v147;
              v298 = 2112;
              v299 = v145;
              _os_log_impl(&dword_19BF1F000, v146, OS_LOG_TYPE_ERROR, "recreateAlbumsFromMetadata failed to rebuild memory from %@: %@", buf, 0x16u);
            }

            [v234 rollback];
          }

          v96 = v234;
        }

        objc_autoreleasePoolPop(v131);
      }

      v127 = [v226 countByEnumeratingWithState:&v247 objects:v289 count:16];
    }

    while (v127);
  }

  v148 = v233;
  v149 = [(PLPhotoLibrary *)v233 libraryBundle];
  v150 = [v149 indicatorFileCoordinator];

  if (![v150 isRebuildingPersons])
  {
    v151 = +[PLPerson fetchRequest];
    v245 = 0;
    v153 = [v96 countForFetchRequest:v151 error:&v245];
    v154 = v245;
    v152 = v207;
    if (v153)
    {
      v155 = v150;
      if (v153 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v192 = PLMigrationGetLog();
        if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v192, OS_LOG_TYPE_DEFAULT, "Found existing persons in library, skipping filesystem person rebuild", buf, 2u);
        }

        [PLSocialGroup rebuildWithLibrary:v233];
        [PLAssetResourceUploadJobConfiguration rebuildWithLibrary:v233];
        v150 = v155;
        goto LABEL_262;
      }

      v156 = PLMigrationGetLog();
      if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v297 = v154;
        _os_log_impl(&dword_19BF1F000, v156, OS_LOG_TYPE_ERROR, "Error fetching count of persons in library, will proceed with person rebuild: %@", buf, 0xCu);
      }

      v150 = v155;
    }

    goto LABEL_202;
  }

  v151 = PLMigrationGetLog();
  v152 = v207;
  if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v151, OS_LOG_TYPE_ERROR, "Encountered the person rebuild indicator file, this probably indicates a crash during person rebuild, will resume rebuilding persons", buf, 2u);
  }

LABEL_202:

  [v150 setIsRebuildingPersons:1];
  v220 = [PLPersistedPersonMetadata personUUIDsToDedupeWithMetadataURLs:v208 cplEnabled:[(PLPhotoLibrary *)v233 isCloudPhotoLibraryEnabled]];
  v210 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v208, "count")}];
  v241 = 0u;
  v242 = 0u;
  v243 = 0u;
  v244 = 0u;
  v157 = v208;
  v158 = [v157 countByEnumeratingWithState:&v241 objects:v288 count:16];
  if (!v158)
  {

    v189 = 0;
    v190 = 1;
    goto LABEL_255;
  }

  v159 = v158;
  v224 = v157;
  v204 = v150;
  v211 = 0;
  v212 = 0;
  v216 = 1;
  v160 = *v242;
  while (2)
  {
    v161 = 0;
    while (2)
    {
      if (*v242 != v160)
      {
        objc_enumerationMutation(v224);
      }

      v162 = *(*(&v241 + 1) + 8 * v161);
      v163 = objc_autoreleasePoolPush();
      v164 = [[PLPersistedPersonMetadata alloc] initWithPersistedDataAtURL:v162 deferUnarchiving:1 cplEnabled:[(PLPhotoLibrary *)v233 isCloudPhotoLibraryEnabled]];
      v165 = v164;
      if (!v164)
      {
        v173 = PLMigrationGetLog();
        if (os_log_type_enabled(v173, OS_LOG_TYPE_ERROR))
        {
          v174 = [v162 path];
          *buf = 138412290;
          v297 = v174;
          _os_log_impl(&dword_19BF1F000, v173, OS_LOG_TYPE_ERROR, "Failed to read invalid or missing metadata, will skip and delete %@", buf, 0xCu);
        }

        v166 = [v162 path];
        [v235 addObject:v166];
        goto LABEL_238;
      }

      v166 = [(PLPersistedPersonMetadata *)v164 personUUID];
      if (!v166)
      {
        v167 = PLMigrationGetLog();
        if (!os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_219;
        }

        v168 = [v162 path];
        *buf = 138412290;
        v297 = v168;
        v169 = v167;
        v170 = OS_LOG_TYPE_ERROR;
        v171 = "Invalid person metadata missing person UUID, will skip and delete %@";
        goto LABEL_217;
      }

      if ([v220 containsObject:v166])
      {
        v167 = PLMigrationGetLog();
        if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
        {
          v168 = [v162 path];
          *buf = 138412546;
          v297 = v165;
          v298 = 2112;
          v299 = v168;
          v169 = v167;
          v170 = OS_LOG_TYPE_DEFAULT;
          v171 = "Person from metadata %@ will be deduped, will skip and delete %@";
          v172 = 22;
          goto LABEL_218;
        }

        goto LABEL_219;
      }

      v176 = [PLPerson personWithUUID:v166 inManagedObjectContext:v96];
      if (v176)
      {
        v175 = v176;
        v177 = PLMigrationGetLog();
        if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v297 = v165;
          _os_log_impl(&dword_19BF1F000, v177, OS_LOG_TYPE_DEFAULT, "Person for metadata already exists: %@", buf, 0xCu);
        }

        goto LABEL_236;
      }

      v178 = [(PLPersistedPersonMetadata *)v165 readMetadata];
      v179 = PLMigrationGetLog();
      v167 = v179;
      if (!v178)
      {
        if (!os_log_type_enabled(v179, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_219;
        }

        v168 = [v162 path];
        *buf = 138412290;
        v297 = v168;
        v169 = v167;
        v170 = OS_LOG_TYPE_ERROR;
        v171 = "Failed to read invalid or missing metadata, will skip and delete %@";
LABEL_217:
        v172 = 12;
LABEL_218:
        _os_log_impl(&dword_19BF1F000, v169, v170, v171, buf, v172);

LABEL_219:
        v175 = [v162 path];
        [v235 addObject:v175];
        goto LABEL_237;
      }

      if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v297 = v165;
        _os_log_impl(&dword_19BF1F000, v167, OS_LOG_TYPE_DEFAULT, "Creating new person from metadata %@", buf, 0xCu);
      }

      v180 = [(PLPersistedPersonMetadata *)v165 fromVersion];
      v181 = v212;
      if (v180 > v212)
      {
        v181 = v180;
      }

      v212 = v181;
      v182 = [(PLPersistedPersonMetadata *)v165 insertPersonFromDataInManagedObjectContext:v234];
      if (v182)
      {
        v175 = v182;
        if (![(PLPersistedPersonMetadata *)v165 updateFacesInPerson:v182 fromDataInManagedObjectContext:v234 deferUnmatched:v232])
        {
          v183 = PLMigrationGetLog();
          if (os_log_type_enabled(v183, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v297 = v165;
            _os_log_impl(&dword_19BF1F000, v183, OS_LOG_TYPE_ERROR, "Incomplete restore of faces for person %@", buf, 0xCu);
          }
        }

        v177 = [(PLPersistedPersonMetadata *)v165 mergeTargetPersonUUID];
        if (v177)
        {
          [v210 setObject:v177 forKey:v166];
        }

        v211 = (v211 + 1);
LABEL_236:
      }

      else
      {
        v175 = PLMigrationGetLog();
        if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v297 = v165;
          _os_log_impl(&dword_19BF1F000, v175, OS_LOG_TYPE_ERROR, "Failed to create new person from metadata %@", buf, 0xCu);
        }
      }

LABEL_237:

      v96 = v234;
LABEL_238:

      if ([v96 hasChanges])
      {
        v240 = 0;
        v184 = [v96 save:&v240];
        v185 = v240;
        if ((v184 & 1) == 0)
        {
          v186 = PLMigrationGetLog();
          if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
          {
            v187 = [v162 path];
            *buf = 138412546;
            v297 = v187;
            v298 = 2112;
            v299 = v185;
            _os_log_impl(&dword_19BF1F000, v186, OS_LOG_TYPE_ERROR, "recreateAlbumsFromMetadata failed to rebuild person from %@: %@", buf, 0x16u);
          }

          v96 = v234;
          [v234 rollback];
          v216 = 0;
        }
      }

      objc_autoreleasePoolPop(v163);
      if (v159 != ++v161)
      {
        continue;
      }

      break;
    }

    v188 = [v224 countByEnumeratingWithState:&v241 objects:v288 count:16];
    v159 = v188;
    if (v188)
    {
      continue;
    }

    break;
  }

  v189 = v211;
  if (v211)
  {
    [PLPersistedPersonMetadata updateMergeTargetPersonWithPersonUUIDMapping:v210 fromDataInManagedObjectContext:v96];
    [PLPersistedPersonMetadata performPostImportMigrationFromVersion:v212 fromDataInManagedObjectContext:v96];
  }

  v148 = v233;
  v152 = v207;
  v150 = v204;
  v190 = v216;
LABEL_255:
  v191 = PLMigrationGetLog();
  if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v297 = v189;
    _os_log_impl(&dword_19BF1F000, v191, OS_LOG_TYPE_DEFAULT, "Created %lu persons from filesystem rebuild", buf, 0xCu);
  }

  [PLSocialGroup rebuildWithLibrary:v148];
  [PLAssetResourceUploadJobConfiguration rebuildWithLibrary:v148];
  if (v190)
  {
LABEL_262:
    [(PLPhotoLibrary *)v148 _removeOldFaceMetadataAsync];
  }

  [v150 setIsRebuildingPersons:0];
  if ([v235 count])
  {
    v193 = PLMigrationGetLog();
    if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
    {
      v194 = [v235 count];
      *buf = 67109120;
      LODWORD(v297) = v194;
      _os_log_impl(&dword_19BF1F000, v193, OS_LOG_TYPE_DEFAULT, "Removing %d stale 1-way sync album metadata files", buf, 8u);
    }

    v195 = [MEMORY[0x1E69BF238] fileManager];
    v236 = 0u;
    v237 = 0u;
    v238 = 0u;
    v239 = 0u;
    v196 = v235;
    v197 = [v196 countByEnumeratingWithState:&v236 objects:v287 count:16];
    if (v197)
    {
      v198 = v197;
      v199 = *v237;
      do
      {
        for (jj = 0; jj != v198; ++jj)
        {
          if (*v237 != v199)
          {
            objc_enumerationMutation(v196);
          }

          [v195 removeItemAtPath:*(*(&v236 + 1) + 8 * jj) error:0];
        }

        v198 = [v196 countByEnumeratingWithState:&v236 objects:v287 count:16];
      }

      while (v198);
    }
  }
}

void __74__PLPhotoLibrary__recreateItemsFromMetadataAtDirectoryURLs_includeAlbums___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0;
  v4 = *MEMORY[0x1E695DC30];
  v10 = 0;
  v5 = [v3 getResourceValue:&v11 forKey:v4 error:&v10];
  v6 = v11;
  v7 = v10;
  if (v5 && [v6 length])
  {
    if ([PLPersistedAlbumMetadata isValidPath:v6]&& *(a1 + 72) == 1)
    {
      v8 = *(a1 + 32);
LABEL_20:
      [v8 addObject:v3];
      goto LABEL_21;
    }

    if ([PLPersistedFolderMetadata isValidPath:v6]&& *(a1 + 72) == 1)
    {
      v8 = *(a1 + 40);
      goto LABEL_20;
    }

    if ([PLManagedAlbumList isValidPathForPersistence:v6]&& *(a1 + 72) == 1)
    {
      v8 = *(a1 + 48);
      goto LABEL_20;
    }

    if ([PLPersistedMemoryMetadata isValidPath:v6])
    {
      v8 = *(a1 + 56);
      goto LABEL_20;
    }

    if ([PLPersistedPersonMetadata isValidPath:v6])
    {
      v8 = *(a1 + 64);
      goto LABEL_20;
    }
  }

  else if (v7)
  {
    v9 = PLMigrationGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = v3;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Failed to get file name for %@ (%@)", buf, 0x16u);
    }
  }

LABEL_21:
}

uint64_t __74__PLPhotoLibrary__recreateItemsFromMetadataAtDirectoryURLs_includeAlbums___block_invoke_632(uint64_t a1, void *a2, void *a3)
{
  v10 = 0;
  v4 = *MEMORY[0x1E695DA98];
  v5 = a3;
  [a2 getResourceValue:&v10 forKey:v4 error:0];
  v9 = 0;
  v6 = v10;
  [v5 getResourceValue:&v9 forKey:v4 error:0];

  v7 = [v9 compare:v6];
  return v7;
}

- (void)_deleteEmptyImportAlbumsWithAddedAlbums:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v28 = a3;
  v4 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Album"];
  v5 = [&unk_1F0FBF2E0 arrayByAddingObject:&unk_1F0FBAA68];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(kind in %@) AND (assets.@count = 0)", v5];
  [v4 setPredicate:v6];

  v7 = [(PLPhotoLibrary *)self managedObjectContext];
  v33 = 0;
  v8 = [v7 executeFetchRequest:v4 error:&v33];
  v9 = v33;

  if (v8)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v24 = v9;
      v25 = v8;
      v26 = v5;
      v27 = v4;
      v13 = *v30;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          v17 = [v15 kind];
          v18 = [&unk_1F0FBF2E0 containsObject:v17];

          if (!v18 || [v28 containsObject:v15] && (objc_msgSend(v15, "assets"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "count"), v19, !v20))
          {
            v21 = PLMigrationGetLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = [v15 uuid];
              v23 = [v15 kind];
              *buf = 138412546;
              v35 = v22;
              v36 = 2112;
              v37 = v23;
              _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "Deleting empty album %@ of kind %@", buf, 0x16u);
            }

            [v15 delete];
          }

          objc_autoreleasePoolPop(v16);
        }

        v12 = [v10 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v12);
      v5 = v26;
      v4 = v27;
      v9 = v24;
      v8 = v25;
    }
  }

  else
  {
    v10 = PLMigrationGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Error fetching empty albums for cleanup %@", buf, 0xCu);
    }
  }
}

- (void)recreatePersonsFromMetadata
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFF8];
  v4 = [(PLPhotoLibrary *)self pathManager];
  v5 = [v4 privateDirectoryWithSubType:5 createIfNeeded:1 error:0];
  v6 = [v3 fileURLWithPath:v5 isDirectory:1];
  v8[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  [(PLPhotoLibrary *)self _recreateItemsFromMetadataAtDirectoryURLs:v7 includeAlbums:0];
}

- (void)recreateMemoriesAndPersonsFromMetadata
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFF8];
  v4 = [(PLPhotoLibrary *)self pathManager];
  v5 = [v4 privateDirectoryWithSubType:4 createIfNeeded:1 error:0];
  v6 = [v3 fileURLWithPath:v5 isDirectory:1];

  v7 = MEMORY[0x1E695DFF8];
  v8 = [(PLPhotoLibrary *)self pathManager];
  v9 = [v8 privateDirectoryWithSubType:5 createIfNeeded:1 error:0];
  v10 = [v7 fileURLWithPath:v9 isDirectory:1];

  v12[0] = v6;
  v12[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  [(PLPhotoLibrary *)self _recreateItemsFromMetadataAtDirectoryURLs:v11 includeAlbums:0];
}

- (void)recreateAlbumsAndPersonsFromMetadata
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFF8];
  v4 = [(PLPhotoLibrary *)self pathManager];
  v5 = [v4 privateDirectoryWithSubType:4 createIfNeeded:1 error:0];
  v6 = [v3 fileURLWithPath:v5 isDirectory:1];

  v7 = MEMORY[0x1E695DFF8];
  v8 = [(PLPhotoLibrary *)self pathManager];
  v9 = [v8 privateDirectoryWithSubType:5 createIfNeeded:1 error:0];
  v10 = [v7 fileURLWithPath:v9 isDirectory:1];

  v12[0] = v6;
  v12[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  [(PLPhotoLibrary *)self _recreateItemsFromMetadataAtDirectoryURLs:v11 includeAlbums:1];
}

- (void)invalidateWithReason:(id)a3
{
  v6 = a3;
  v4 = [(PLPhotoLibrary *)self _internal_managedObjectContext];
  v5 = v4;
  if (v4)
  {
    [v4 invalidateWithReason:v6];
  }
}

- (id)managedObjectContextStoreUUID
{
  v2 = [(PLPhotoLibrary *)self managedObjectContext];
  v3 = [v2 storeUUID];

  return v3;
}

- (void)repairSingletonObjects
{
  v13 = *MEMORY[0x1E69E9840];
  if (PLIsAssetsd())
  {
    WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
    v3 = [WeakRetained modelMigrator];
    [v3 repairSingletonObjectsInDatabase];
  }

  else
  {
    v4 = [(PLPhotoLibrary *)self assetsdClient];
    v5 = [v4 libraryClient];
    v10 = 0;
    v6 = [v5 synchronouslyRepairSingletonObjectsWithError:&v10];
    v7 = v10;

    if ((v6 & 1) == 0)
    {
      v8 = PLBackendGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v7;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Error asking assetsd to repair singleton objects: %@", buf, 0xCu);
      }
    }
  }
}

- (id)_loadDatabaseContextWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (PLIsAssetsd())
  {
    [(PLPhotoLibrary *)self _loadServerDatabaseContextWithOptions:v6 error:a4];
  }

  else
  {
    v7 = +[PLPhotoLibraryForceExitObserver sharedInstance];
    [(PLPhotoLibrary *)self _loadClientDatabaseContextWithOptions:v6 error:a4];
  }
  v8 = ;

  return v8;
}

- (id)_loadServerDatabaseContextWithOptions:(id)a3 error:(id *)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if ((PLIsAssetsd() & 1) == 0)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"PLPhotoLibrary.m" lineNumber:1848 description:@"Can only be called in assetsd"];
  }

  v8 = objc_autoreleasePoolPush();
  v9 = [(PLPhotoLibrary *)self options];

  if (v9)
  {
    v10 = [(PLPhotoLibrary *)self options];
    v11 = [v10 requiredState];

    if (v11)
    {
      v12 = [(PLPhotoLibrary *)self options];
      v13 = [v12 requiredState];
    }

    else
    {
      v13 = 7;
    }

    v15 = [(PLPhotoLibrary *)self options];
    v16 = [v15 preventsWaitingForRequiredState];

    v14 = v16 ^ 1;
  }

  else
  {
    v14 = 1;
    v13 = 7;
  }

  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v18 = [WeakRetained state];

  if (v18 >= v13)
  {
    v22 = 0;
  }

  else
  {
    if (!v14)
    {
      v25 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E69BFF48];
      v42[0] = @"requiredState";
      v27 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
      v42[1] = @"libraryState";
      v43[0] = v27;
      v28 = MEMORY[0x1E696AD98];
      v29 = objc_loadWeakRetained(&self->_libraryServicesManager);
      v30 = [v28 numberWithInteger:{objc_msgSend(v29, "state")}];
      v43[1] = v30;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
      v21 = [v25 errorWithDomain:v26 code:43002 userInfo:v31];

      goto LABEL_22;
    }

    v19 = objc_loadWeakRetained(&self->_libraryServicesManager);
    v39 = 0;
    v20 = [v19 awaitLibraryState:v13 error:&v39];
    v21 = v39;

    if ((v20 & 1) == 0)
    {
      v27 = PLBackendGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v45 = v21;
        v35 = "awaitLibraryState failed: %@";
        goto LABEL_21;
      }

LABEL_22:

      objc_autoreleasePoolPop(v8);
      if (a4)
      {
        v36 = v21;
        v24 = 0;
        *a4 = v21;
      }

      else
      {
        v24 = 0;
      }

      v22 = v21;
      goto LABEL_26;
    }

    v22 = v21;
  }

  v23 = [(PLPhotoLibrary *)self options];
  v24 = +[PLManagedObjectContext contextForUninitializedPhotoLibrary:automaticallyMerges:automaticallyPinToFirstFetch:](PLManagedObjectContext, "contextForUninitializedPhotoLibrary:automaticallyMerges:automaticallyPinToFirstFetch:", self, [v23 automaticallyMergesContext], objc_msgSend(v7, "automaticallyPinToFirstFetch"));

  if (!v24)
  {
    v32 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E69BFF48];
    v40 = *MEMORY[0x1E696A278];
    v41 = @"Load server database context: contextForPhotoLibrary returned nil";
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v21 = [v32 errorWithDomain:v33 code:45001 userInfo:v34];

    v27 = PLBackendGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v45 = v21;
      v35 = "Failed to load library (_loadServerDatabaseContextWithOptions:error:) %@";
LABEL_21:
      _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, v35, buf, 0xCu);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  objc_autoreleasePoolPop(v8);
LABEL_26:

  return v24;
}

- (id)_loadClientDatabaseContextWithOptions:(id)a3 error:(id *)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (PLIsAssetsd())
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PLPhotoLibrary.m" lineNumber:1809 description:@"Can not be called in assetsd"];
  }

  v8 = objc_autoreleasePoolPush();
  v9 = [(PLPhotoLibrary *)self _loadClientDatabaseContextFastPath];
  if (v9)
  {
    v10 = v9;
    objc_autoreleasePoolPop(v8);
    goto LABEL_22;
  }

  v11 = [(PLPhotoLibrary *)self assetsdClient];
  v12 = [v11 libraryClient];
  v26 = 0;
  v13 = [v12 openPhotoLibraryDatabaseWithoutProgressIfNeededWithOptions:v7 error:&v26];
  v14 = v26;

  if (!v13)
  {
    v18 = PLBackendGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v14;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Failed to load library: %@", buf, 0xCu);
    }

    v19 = v14;
    goto LABEL_17;
  }

  if ([v7 automaticallyPinToFirstFetch] && ((objc_msgSend(v7, "automaticallyMergesContext") & 1) != 0 || objc_msgSend(v7, "refreshesAfterSave")))
  {
    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_FAULT, "automaticallyMergesContext/refreshesAfterSave cannot be set with automaticallyPinToFirstFetch on PLPhotoLibaryOptions, disabling automaticallyPinToFirstFetch...", buf, 2u);
    }

    [v7 setAutomaticallyPinToFirstFetch:0];
  }

  v16 = +[PLManagedObjectContext contextForUninitializedPhotoLibrary:automaticallyMerges:automaticallyPinToFirstFetch:](PLManagedObjectContext, "contextForUninitializedPhotoLibrary:automaticallyMerges:automaticallyPinToFirstFetch:", self, [v7 automaticallyMergesContext], objc_msgSend(v7, "automaticallyPinToFirstFetch"));
  if (!v16)
  {
    v22 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E69BFF48];
    v29 = *MEMORY[0x1E696A278];
    v30[0] = @"contextForPhotoLibrary returned nil";
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v19 = [v22 errorWithDomain:v23 code:45001 userInfo:v24];

    v18 = PLBackendGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v19;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Failed to load library (_loadClientDatabaseContext:) %@", buf, 0xCu);
    }

LABEL_17:

    objc_autoreleasePoolPop(v8);
    if (a4)
    {
      v20 = v19;
      v17 = 0;
      *a4 = v19;
    }

    else
    {
      v17 = 0;
    }

    v14 = v19;
    goto LABEL_21;
  }

  v17 = v16;
  objc_autoreleasePoolPop(v8);
LABEL_21:
  v10 = v17;

LABEL_22:

  return v10;
}

- (void)cleanupIncompleteAssetsAfterOTARestore
{
  v35[1] = *MEMORY[0x1E69E9840];
  v4 = PLMigrationGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Cleanup incomplete assets after OTA restore", buf, 2u);
  }

  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLPhotoLibrary cleanupIncompleteAssetsAfterOTARestore]"];
  v6 = [MEMORY[0x1E69BF238] fileManager];
  v7 = [(PLPhotoLibrary *)self managedObjectContext];
  v8 = objc_autoreleasePoolPush();
  v9 = MEMORY[0x1E695D5E0];
  v10 = +[PLManagedAsset entityName];
  v11 = [v9 fetchRequestWithEntityName:v10];

  [v11 setFetchBatchSize:100];
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"complete == 0"];
  [v11 setPredicate:v12];

  v35[0] = @"master";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  [v11 setRelationshipKeyPathsForPrefetching:v13];

  v30 = 0;
  v14 = [v7 executeFetchRequest:v11 error:&v30];
  v15 = v30;
  if (!v14)
  {
    v16 = PLMigrationGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      *buf = 138543618;
      v32 = v17;
      v33 = 2114;
      v34 = v15;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch incomplete assets %{public}@", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v8);
  if ([v14 count])
  {
    v18 = PLMigrationGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v14 count];
      *buf = 67109120;
      LODWORD(v32) = v19;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Found %d incomplete assets", buf, 8u);
    }

    v20 = [(PLPhotoLibrary *)self libraryServicesManager];
    v21 = [v20 modelMigrator];
    v22 = [v21 deviceRestoreMigrationSupport];
    v23 = [v22 isRestoreFromBackupSourceMegaBackup];

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __56__PLPhotoLibrary_cleanupIncompleteAssetsAfterOTARestore__block_invoke;
    v26[3] = &unk_1E7565200;
    v29 = v23;
    v27 = v6;
    v28 = self;
    v24 = [v7 enumerateWithIncrementalSaveUsingObjects:v14 shouldRefreshAfterSave:1 withBlock:v26];
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __56__PLPhotoLibrary_cleanupIncompleteAssetsAfterOTARestore__block_invoke_578;
  v25[3] = &unk_1E75781E8;
  v25[4] = self;
  [(PLPhotoLibrary *)self performTransactionAndWait:v25];
  [v5 stillAlive];
}

void __56__PLPhotoLibrary_cleanupIncompleteAssetsAfterOTARestore__block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 48) == 1 && ([v3 objectIDsForRelationshipNamed:@"master"], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
  {
    v7 = PLMigrationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 uuid];
      v18 = 138543362;
      v19 = v8;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Mega-backup: Asset with UUID %{public}@ has a CloudMaster, setting complete", &v18, 0xCu);
    }

    [v4 setComplete:1];
  }

  else
  {
    v9 = [v4 mainFileURL];
    v10 = [v9 path];

    if (v10 && ([*(a1 + 32) fileExistsAtPath:v10] & 1) != 0)
    {
      v11 = PLMigrationGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v4 uuid];
        v13 = *(a1 + 48);
        v18 = 138543874;
        v19 = v12;
        v20 = 2114;
        v21 = v10;
        v22 = 1024;
        v23 = v13;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Fixing incomplete asset (main file is present) after restore cancelled/completed: uuid:%{public}@ path:%{public}@ isMegaBackup:%d", &v18, 0x1Cu);
      }

      [v4 setComplete:1];
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 128));
      v15 = [WeakRetained modelMigrator];
      [v15 postProcessFixesAfterOTARestoreForCompleteAsset:v4 fixAddedDate:0 isMegaBackup:*(a1 + 48)];
    }

    else
    {
      v16 = PLMigrationGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [v4 uuid];
        v18 = 138543618;
        v19 = v17;
        v20 = 2114;
        v21 = v10;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Deleting incomplete asset after restore cancelled/completed: uuid:%{public}@ path:%{public}@", &v18, 0x16u);
      }

      [v4 deleteFromDatabaseOnly];
    }
  }
}

void __56__PLPhotoLibrary_cleanupIncompleteAssetsAfterOTARestore__block_invoke_578(uint64_t a1)
{
  v1 = [*(a1 + 32) otaRestoreProgressAlbum];
  if ([v1 pendingItemsType] != 1 || objc_msgSend(v1, "pendingItemsCount"))
  {
    v2 = PLMigrationGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Marking OTA restore progress as complete", v3, 2u);
    }

    [v1 setPendingItemsType:1];
    [v1 setPendingItemsCount:0];
  }
}

- (void)dataMigratorSupportCleanupModelForDataMigrationPurgeMissingSynced
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(PLPhotoLibrary *)self pathManager];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v3 iTunesSyncedAssetsDirectory];
  v6 = [v4 contentsOfDirectoryAtPath:v5 error:0];

  v7 = PLMigrationGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v16 = "[PLPhotoLibrary dataMigratorSupportCleanupModelForDataMigrationPurgeMissingSynced]";
    v17 = 2048;
    v18 = [v6 count];
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: %lu synced", buf, 0x16u);
  }

  if (![v6 count])
  {
    v8 = [(PLPhotoLibrary *)self managedObjectContext];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __83__PLPhotoLibrary_dataMigratorSupportCleanupModelForDataMigrationPurgeMissingSynced__block_invoke;
    v11[3] = &unk_1E75761B8;
    v12 = v6;
    v13 = self;
    v14 = v8;
    v9 = v8;
    [(PLPhotoLibrary *)self performBlockAndWait:v11];
  }

  v10 = PLMigrationGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v16 = "[PLPhotoLibrary dataMigratorSupportCleanupModelForDataMigrationPurgeMissingSynced]";
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s finished", buf, 0xCu);
  }
}

void __83__PLPhotoLibrary_dataMigratorSupportCleanupModelForDataMigrationPurgeMissingSynced__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) count])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [*(a1 + 40) _fetchCompleteAssetIDsWithValidatedSavedAssetTypeMask:objc_msgSend(MEMORY[0x1E69BF328] context:{"maskForFinderSyncedAsset"), *(a1 + 48)}];
    v4 = [(PLGenericAlbum *)PLManagedAlbum allSyncedAlbumsInManagedObjectContext:*(a1 + 48)];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v11 + 1) + 8 * v8++) delete];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    [*(a1 + 40) _safeSave:*(a1 + 48)];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%s] Data migration housekeeping after the backedup files have been restored. Deleting all synced assets and their albums from the database. The assets themselves are not backed up.", "-[PLPhotoLibrary dataMigratorSupportCleanupModelForDataMigrationPurgeMissingSynced]_block_invoke"];
    v10 = [PLAssetTransactionReason transactionReason:v9];

    [*(a1 + 40) batchDeleteAssets:v3 withReason:v10];
    objc_autoreleasePoolPop(v2);
  }
}

- (id)_fetchCompleteAssetIDsWithValidatedSavedAssetTypeMask:(unsigned int)a3 context:(id)a4
{
  v4 = *&a3;
  v23[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695D5E0];
  v6 = a4;
  v7 = +[PLManagedAsset entityName];
  v8 = [v5 fetchRequestWithEntityName:v7];

  v9 = MEMORY[0x1E696AB28];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != 0", @"complete"];
  v23[0] = v10;
  v11 = [MEMORY[0x1E69BF328] predicateForIncludeMask:v4 useIndex:1];
  v23[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v13 = [v9 andPredicateWithSubpredicates:v12];

  [v8 setPredicate:v13];
  [v8 setResultType:1];
  [v8 setIncludesPropertyValues:0];
  v18 = 0;
  v14 = [v6 executeFetchRequest:v8 error:&v18];

  v15 = v18;
  if (!v14)
  {
    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      v20 = v4;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Failed to get complete assets with type mask 0x%x: %@", buf, 0x12u);
    }
  }

  return v14;
}

- (BOOL)batchDeleteObjectsWithEntity:(id)a3 predicate:(id)a4 error:(id *)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PLPhotoLibrary.m" lineNumber:1616 description:{@"Invalid parameter not satisfying: %@", @"predicate"}];
  }

  v38 = 0;
  v11 = [(PLPhotoLibrary *)self _fetchedObjectsForDeleteWithEntity:v9 predicate:v10 batchSize:100 error:&v38];
  v12 = v38;
  if (v11)
  {
    v13 = [v11 count];
    if ((PLIsSuppressingLogsForUnitTesting() & 1) == 0)
    {
      v14 = PLBackendGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v9 name];
        *buf = 134218242;
        v40 = v13;
        v41 = 2114;
        v42 = v15;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Batch deleting %ld %{public}@", buf, 0x16u);
      }
    }

    v16 = [(PLPhotoLibrary *)self managedObjectContext];
    if (v13)
    {
      v34 = v9;
      v35 = self;
      v31 = v12;
      v32 = a5;
      v33 = v10;
      v17 = 0;
      v18 = 0;
      do
      {
        context = objc_autoreleasePoolPush();
        v19 = 0;
        do
        {
          v20 = [v11 objectAtIndex:v18 + v19];
          [v16 deleteObject:v20];

          v21 = v19 + 1;
          v22 = v18 + v19 + 1;
          if (v19 > 0x62)
          {
            break;
          }

          ++v19;
        }

        while (v22 < v13);
        v37 = v17;
        v23 = [(PLPhotoLibrary *)v35 safeSave:v16 error:&v37];
        v24 = v37;

        objc_autoreleasePoolPop(context);
        if (!v23)
        {
          break;
        }

        v18 += v21;
        v17 = v24;
      }

      while (v22 < v13);
      if (v32)
      {
        v25 = v23;
      }

      else
      {
        v25 = 1;
      }

      v9 = v34;
      if ((v25 & 1) == 0)
      {
        v26 = v24;
        LOBYTE(v23) = 0;
        *v32 = v24;
      }

      v10 = v33;
      v12 = v31;
    }

    else
    {
      v24 = 0;
      LOBYTE(v23) = 1;
    }
  }

  else
  {
    v27 = PLBackendGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v40 = v12;
      _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Failed to fetch objects to be deleted: %{public}@", buf, 0xCu);
    }

    if (a5)
    {
      v28 = v12;
      LOBYTE(v23) = 0;
      *a5 = v12;
    }

    else
    {
      LOBYTE(v23) = 0;
    }
  }

  return v23;
}

- (BOOL)batchDeleteAssetsWithPredicate:(id)a3 reason:(id)a4 error:(id *)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PLPhotoLibrary.m" lineNumber:1577 description:{@"Invalid parameter not satisfying: %@", @"assetsPredicate"}];
  }

  v36 = [(PLPhotoLibrary *)self managedObjectContext];
  v11 = [(PLManagedObject *)PLManagedAsset entityInManagedObjectContext:?];
  v39 = 0;
  v12 = [(PLPhotoLibrary *)self _fetchedObjectsForDeleteWithEntity:v11 predicate:v9 batchSize:100 error:&v39];
  v13 = v39;
  if (v12)
  {
    v14 = [v12 count];
    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v10 reason];
      *buf = 134218242;
      v41 = v14;
      v42 = 2114;
      v43 = v16;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Batch deleting %ld assets: %{public}@", buf, 0x16u);
    }

    if (v14)
    {
      v34 = v9;
      v35 = self;
      v31 = v13;
      v32 = v11;
      v33 = a5;
      v17 = 0;
      v18 = 0;
      do
      {
        context = objc_autoreleasePoolPush();
        v19 = 0;
        do
        {
          v20 = [v12 objectAtIndex:v18 + v19];
          [v20 deleteWithReason:v10];

          v21 = v19 + 1;
          v22 = v18 + v19 + 1;
          if (v19 > 0x62)
          {
            break;
          }

          ++v19;
        }

        while (v22 < v14);
        v38 = v17;
        v23 = [(PLPhotoLibrary *)v35 safeSave:v36 error:&v38];
        v24 = v38;

        objc_autoreleasePoolPop(context);
        if (!v23)
        {
          break;
        }

        v18 += v21;
        v17 = v24;
      }

      while (v22 < v14);
      v9 = v34;
      if (v33)
      {
        v25 = v23;
      }

      else
      {
        v25 = 1;
      }

      if ((v25 & 1) == 0)
      {
        v26 = v24;
        LOBYTE(v23) = 0;
        *v33 = v24;
      }

      v13 = v31;
      v11 = v32;
    }

    else
    {
      v24 = 0;
      LOBYTE(v23) = 1;
    }
  }

  else
  {
    v27 = PLBackendGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v41 = v13;
      _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "could not batch fault in to-be-deleted assets: %@", buf, 0xCu);
    }

    if (a5)
    {
      v28 = v13;
      LOBYTE(v23) = 0;
      *a5 = v13;
    }

    else
    {
      LOBYTE(v23) = 0;
    }
  }

  return v23;
}

- (id)_fetchedObjectsForDeleteWithEntity:(id)a3 predicate:(id)a4 batchSize:(unint64_t)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [(PLPhotoLibrary *)self managedObjectContext];
  v13 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  [v13 setEntity:v11];
  [v13 setReturnsObjectsAsFaults:0];
  [v13 setFetchBatchSize:a5];
  v14 = [v11 relationshipsByName];

  v15 = [v14 allKeys];
  [v13 setRelationshipKeyPathsForPrefetching:v15];

  [v13 setPredicate:v10];
  v16 = [v12 executeFetchRequest:v13 error:a6];

  return v16;
}

- (void)batchDeleteAssets:(id)a3 withReason:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([v8 count])
  {
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v8];
    [(PLPhotoLibrary *)self batchDeleteAssetsWithPredicate:v7 reason:v6 error:0];
  }
}

- (BOOL)safeSave:(id)a3 error:(id *)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v12 = 0;
  v6 = [v5 save:&v12];
  v7 = v12;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v7;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Save failed. We might lose data. Rolling back any changes. (%{public}@)", buf, 0xCu);
    }

    [v5 rollback];
    if (a4)
    {
      v10 = v7;
      v8 = 0;
      *a4 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)cleanupAfterImportAllDCIMAssets
{
  if (![(PLPhotoLibrary *)self isCloudPhotoLibraryEnabled])
  {
    v3 = PLMigrationGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Removing obsolete metadata files", v5, 2u);
    }

    v4 = [(PLPhotoLibrary *)self managedObjectContext];
    [PLInternalResource deleteObsoleteResourcesInManagedObjectContext:v4 error:0];

    [(PLPhotoLibrary *)self _deleteObsoleteMetadataFiles];
  }
}

- (void)_deleteObsoleteMetadataFiles
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69BF238] fileManager];
  v4 = [(PLPhotoLibrary *)self thumbnailManager];
  [v4 removeObsoleteMetadata];

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLManagedAsset entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v9 = [(PLPhotoLibrary *)self managedObjectContext];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __46__PLPhotoLibrary__deleteObsoleteMetadataFiles__block_invoke;
  v38[3] = &unk_1E7567F48;
  v10 = v5;
  v39 = v10;
  v11 = v3;
  v40 = v11;
  v41 = self;
  v25 = v8;
  v12 = [v9 enumerateObjectsFromFetchRequest:v8 count:0 usingDefaultBatchSizeWithBlock:v38];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v28 = v10;
  obj = [v10 allKeys];
  v29 = [obj countByEnumeratingWithState:&v34 objects:v45 count:16];
  v13 = 0;
  if (v29)
  {
    v27 = *v35;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v34 + 1) + 8 * i);
        v16 = [v28 objectForKey:v15];
        v17 = [v11 contentsOfDirectoryAtPath:v15 error:0];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v18 = [v17 countByEnumeratingWithState:&v30 objects:v44 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v31;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v31 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v30 + 1) + 8 * j);
              if (([v16 containsObject:v22] & 1) == 0)
              {
                v23 = [v15 stringByAppendingPathComponent:v22];
                ++v13;
                [v11 removeItemAtPath:v23 error:0];
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v30 objects:v44 count:16];
          }

          while (v19);
        }
      }

      v29 = [obj countByEnumeratingWithState:&v34 objects:v45 count:16];
    }

    while (v29);
  }

  v24 = PLMigrationGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v43 = v13;
    _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "Removed %d obsolete metadata files", buf, 8u);
  }
}

void __46__PLPhotoLibrary__deleteObsoleteMetadataFiles__block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 pathForMetadataDirectory];
  if (v4)
  {
    v5 = [v3 filename];

    if (v5)
    {
      v6 = [*(a1 + 32) objectForKey:v4];
      if (!v6)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        [*(a1 + 32) setObject:v6 forKey:v4];
      }

      if ([v3 isVideo])
      {
        v7 = [v3 pathForVideoPreviewFile];
        if ([*(a1 + 40) fileExistsAtPath:v7])
        {
          v8 = [v7 lastPathComponent];
          [v6 addObject:v8];
        }

        v9 = [v3 fileURLForThumbnailFile];
        v10 = [v9 path];

        if ([*(a1 + 40) fileExistsAtPath:v10])
        {
          v11 = [v10 lastPathComponent];
          [v6 addObject:v11];
        }
      }

      v12 = [v3 pathForNonAdjustedFullsizeImageFile];
      v27 = a1;
      if ([*(a1 + 40) fileExistsAtPath:v12])
      {
        v13 = [v12 lastPathComponent];
        [v6 addObject:v13];
      }

      v14 = [v3 modernResources];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v29;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v29 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v28 + 1) + 8 * i);
            v20 = [v19 dataStoreKey];
            if (![v19 version])
            {
              if ([v19 isDerivative])
              {
                v21 = v20 == 0;
              }

              else
              {
                v21 = 1;
              }

              if (!v21)
              {
                v22 = [v3 assetID];
                v23 = [v20 fileURLForAssetID:v22];

                v24 = [v23 lastPathComponent];
                [v6 addObject:v24];
              }
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v16);
      }

      v25 = [*(v27 + 48) managedObjectContext];
      [v25 refreshObject:v3 mergeChanges:{objc_msgSend(v3, "hasChanges")}];
    }
  }
}

- (BOOL)deleteAllDiagnosticFiles:(id *)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695D5E0];
  v6 = +[PLManagedAsset entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  [v7 setFetchBatchSize:100];
  v8 = [(PLPhotoLibrary *)self managedObjectContext];
  v31 = 0;
  v9 = [v8 executeFetchRequest:v7 error:&v31];
  v10 = v31;

  if (!v9)
  {
    v20 = 0;
    if (!a3)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v11 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v23 = v7;
    v24 = a3;
    v15 = *v28;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v27 + 1) + 8 * i) pathForDiagnosticFile];
        v26 = 0;
        if (v17 && [v11 fileExistsAtPath:v17 isDirectory:&v26])
        {
          if (v26)
          {
            v19 = v10;
LABEL_18:

            v20 = 0;
            v10 = v19;
            goto LABEL_19;
          }

          v25 = v10;
          v18 = [v11 removeItemAtPath:v17 error:&v25];
          v19 = v25;

          v10 = v19;
          if ((v18 & 1) == 0)
          {
            goto LABEL_18;
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

    v20 = 1;
LABEL_19:
    v7 = v23;
    a3 = v24;
  }

  else
  {
    v20 = 1;
  }

  if (a3)
  {
LABEL_21:
    v21 = v10;
    *a3 = v10;
  }

LABEL_22:

  return v20;
}

- (void)createPhotoStreamAlbumWithStreamID:(id)a3
{
  v6 = a3;
  if ((PLIsAssetsd() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PLPhotoLibrary.m" lineNumber:1347 description:@"Only Assetsd should be creating the photostream album!"];
  }

  [(PLPhotoLibrary *)self _inq_createPhotoStreamAlbumStreamID:v6];
}

- (void)_inq_createPhotoStreamAlbumStreamID:(id)a3
{
  v4 = a3;
  if (PLIsAssetsd())
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54__PLPhotoLibrary__inq_createPhotoStreamAlbumStreamID___block_invoke;
    v5[3] = &unk_1E7578848;
    v6 = v4;
    v7 = self;
    [(PLPhotoLibrary *)self performTransactionAndWait:v5];
  }
}

void __54__PLPhotoLibrary__inq_createPhotoStreamAlbumStreamID___block_invoke(uint64_t a1)
{
  v2 = [PLPhotoStreamAlbum photoStreamAlbumWithStreamID:*(a1 + 32) inPhotoLibrary:*(a1 + 40) createIfNeeded:0];
  if (!v2)
  {
    v3 = [PLGenericAlbum insertNewAlbumWithKind:1500 title:*(a1 + 32) intoLibrary:*(a1 + 40)];
    v2 = 0;
  }
}

- (void)userExpungeAssets:(id)a3 localOnlyDelete:(BOOL)a4 expungeReasonFromClient:(id)a5
{
  [(PLPhotoLibrary *)self _userApplyTrashedState:2 toAssets:a3 localOnlyDelete:a4 trashedReason:0 expungeReasonFromClient:a5];
  v6 = [(PLPhotoLibrary *)self libraryBundle];
  [v6 touch];
}

- (void)_userApplyTrashedState:(signed __int16)a3 toAssets:(id)a4 localOnlyDelete:(BOOL)a5 trashedReason:(unsigned __int16)a6 expungeReasonFromClient:(id)a7
{
  v8 = a6;
  v71 = a5;
  v9 = a3;
  v94 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v67 = a7;
  v88 = 0;
  v89 = 0;
  v65 = v11;
  [(PLPhotoLibrary *)self _filterAssets:v11 toTrashableAssets:&v89 deletableAssets:&v88 otherAssets:0];
  v12 = v89;
  v13 = v88;
  v69 = v9;
  if ((v9 - 1) <= 1u)
  {
    v14 = [PLAssetTransactionReason transactionReason:@"[_userApplyTrashedState]Directly deleting assets whose state is either trashed or expunged, and types that never make it to the trash bin."];
    [(PLPhotoLibrary *)self _userDeleteAssets:v13 withReason:v14 localOnlyDelete:v71];
  }

  v64 = v13;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v84 objects:v93 count:16];
  if (!v16)
  {
    v18 = 0;
    v19 = 0;
    goto LABEL_21;
  }

  v17 = v16;
  v18 = 0;
  v19 = 0;
  v20 = *v85;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v85 != v20)
      {
        objc_enumerationMutation(v15);
      }

      v22 = *(*(&v84 + 1) + 8 * i);
      if ([v22 isAvalancheStackPhoto])
      {
        if (v19)
        {
          v23 = v19;
        }

        else
        {
          v23 = [MEMORY[0x1E695DFA8] set];
          v19 = v23;
        }
      }

      else
      {
        if (![v22 isAvalanchePhoto])
        {
          continue;
        }

        if (v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = [MEMORY[0x1E695DFA8] set];
          v18 = v23;
        }
      }

      [v23 addObject:v22];
    }

    v17 = [v15 countByEnumeratingWithState:&v84 objects:v93 count:16];
  }

  while (v17);
LABEL_21:

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v15;
  v24 = [obj countByEnumeratingWithState:&v80 objects:v92 count:16];
  v25 = v67;
  v68 = v18;
  v26 = v69;
  if (!v24)
  {
    goto LABEL_41;
  }

  v27 = v24;
  v28 = *v81;
  v66 = v19;
  while (2)
  {
    v29 = 0;
    while (2)
    {
      if (*v81 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v30 = *(*(&v80 + 1) + 8 * v29);
      if ([v30 isFinderSyncedAsset])
      {
        v31 = 2;
      }

      else
      {
        v31 = 1;
      }

      [v30 setLocalOnlyDelete:v71];
      if (![v30 isPartOfBurst] || !objc_msgSend(v18, "containsObject:", v30))
      {
        if ([v30 isPartOfBurst] && objc_msgSend(v19, "containsObject:", v30))
        {
          v41 = [PLAvalanche alloc];
          v42 = [v30 avalancheUUID];
          v43 = [v30 photoLibrary];
          v44 = v41;
          v26 = v69;
          v45 = [(PLAvalanche *)v44 initWithUUID:v42 sourceType:v31 photoLibrary:v43];

          v18 = v68;
          [(PLAvalanche *)v45 applyTrashedState:v69 withTrashedReason:v8];

          goto LABEL_39;
        }

        goto LABEL_38;
      }

      if (([v30 avalanchePickType] & 8) == 0)
      {
LABEL_38:
        [v30 applyTrashedState:v26 withTrashedReason:v8 expungeReasonFromClient:v25];
        goto LABEL_39;
      }

      v32 = v8;
      v33 = [PLAvalanche alloc];
      [v30 avalancheUUID];
      v35 = v34 = v26;
      v36 = [v30 photoLibrary];
      v37 = [(PLAvalanche *)v33 initWithUUID:v35 sourceType:v31 photoLibrary:v36];

      v38 = [(PLAvalanche *)v37 stackAsset];
      v39 = v38;
      if (v38)
      {
        v34 = [v38 trashedState];
      }

      v40 = v34;
      v8 = v32;
      [v30 applyTrashedState:v40 withTrashedReason:v32 expungeReasonFromClient:v67];

      v25 = v67;
      v18 = v68;
      v26 = v69;
      v19 = v66;
LABEL_39:
      if (v27 != ++v29)
      {
        continue;
      }

      break;
    }

    v27 = [obj countByEnumeratingWithState:&v80 objects:v92 count:16];
    if (v27)
    {
      continue;
    }

    break;
  }

LABEL_41:

  if (v26 == 1)
  {
    v46 = [MEMORY[0x1E695DFA8] set];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v47 = v18;
    v48 = [v47 countByEnumeratingWithState:&v76 objects:v91 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = 0;
      v51 = *v77;
      do
      {
        for (j = 0; j != v49; ++j)
        {
          if (*v77 != v51)
          {
            objc_enumerationMutation(v47);
          }

          v53 = *(*(&v76 + 1) + 8 * j);
          [PLAvalanche removeFavoriteStatus:v53, v64];
          if ([v53 isPartOfBurst])
          {
            v54 = [v53 avalancheUUID];
            [v46 addObject:v54];

            if (!v50)
            {
              v50 = [v53 photoLibrary];
            }
          }
        }

        v49 = [v47 countByEnumeratingWithState:&v76 objects:v91 count:16];
      }

      while (v49);
    }

    else
    {
      v50 = 0;
    }

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v55 = v46;
    v56 = [v55 countByEnumeratingWithState:&v72 objects:v90 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v73;
      do
      {
        for (k = 0; k != v57; ++k)
        {
          if (*v73 != v58)
          {
            objc_enumerationMutation(v55);
          }

          v60 = *(*(&v72 + 1) + 8 * k);
          v61 = [v50 managedObjectContext];
          v62 = [PLAvalanche assetsWithAvalancheUUID:v60 sourceType:1 inManagedObjectContext:v61];

          v63 = [PLAvalanche revalidateAvalancheAssets:v62 inLibrary:v50 deleteNonPicks:0 allowDissolve:1];
        }

        v57 = [v55 countByEnumeratingWithState:&v72 objects:v90 count:16];
      }

      while (v57);
    }

    v25 = v67;
    v18 = v68;
  }
}

- (void)_filterAssets:(id)a3 toTrashableAssets:(id *)a4 deletableAssets:(id *)a5 otherAssets:(id *)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (a4)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (a5)
    {
LABEL_3:
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:
  v23 = a6;
  if (a6)
  {
    a6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = [v17 canMoveToTrash];
        v19 = v10;
        if ((v18 & 1) == 0)
        {
          if ([v17 canPerformEditOperation:1])
          {
            v19 = v11;
          }

          else
          {
            v19 = a6;
          }
        }

        [v19 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  if (a4)
  {
    v20 = v10;
    *a4 = v10;
  }

  if (a5)
  {
    v21 = v11;
    *a5 = v11;
  }

  if (v23)
  {
    v22 = a6;
    *v23 = a6;
  }
}

- (void)_userDeleteAssets:(id)a3 withReason:(id)a4 localOnlyDelete:(BOOL)a5
{
  v5 = a5;
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E695DF70] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        if ([v16 isCloudSharedAsset])
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v13);
  }

  v17 = [(PLPhotoLibrary *)self libraryBundle];
  v18 = [v17 isSystemPhotoLibrary];

  if (v18 && [v10 count])
  {
    v19 = [PLCollectionShare syncBackendForKind:2 photoLibrary:self];
    [v19 deleteSharedStreamAssetsFromServer:v10];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = v11;
  v21 = [v20 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v26 + 1) + 8 * j);
        [v25 setLocalOnlyDelete:{v5, v26}];
        [v25 deleteWithReason:v9];
      }

      v22 = [v20 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v22);
  }
}

- (id)assetWithUUID:(id)a3 inContainer:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v13 = 0;
    goto LABEL_22;
  }

  v8 = [(PLPhotoLibrary *)self managedObjectContext];
  v9 = [PLManagedAsset assetWithUUID:v6 inManagedObjectContext:v8];

  if (!v9)
  {
LABEL_18:
    v13 = 0;
    goto LABEL_21;
  }

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v7;
      v11 = [v9 albums];
      v12 = [v11 containsObject:v10];

      if (!v12)
      {
        v13 = 0;
        goto LABEL_20;
      }

LABEL_6:
      v13 = v9;
LABEL_20:

      goto LABEL_21;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [v7 assets];
    v14 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
LABEL_11:
      v17 = 0;
      while (1)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v10);
        }

        if (*(*(&v19 + 1) + 8 * v17) == v9)
        {
          goto LABEL_6;
        }

        if (v15 == ++v17)
        {
          v15 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v15)
          {
            goto LABEL_11;
          }

          break;
        }
      }
    }

    goto LABEL_18;
  }

  v13 = v9;
LABEL_21:

LABEL_22:

  return v13;
}

- (id)objectWithObjectID:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(PLPhotoLibrary *)self managedObjectContext];
    v6 = [v5 objectWithID:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)countOfLocalAlbumsContainingAssets:(id)a3 assetsInSomeAlbumCount:(int64_t *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DFA8] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) albums];
        v14 = [v13 objectsPassingTest:&__block_literal_global_519];
        if ([v14 count])
        {
          [v6 unionSet:v14];
          ++v10;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v15 = [v6 count];
  if (a4)
  {
    *a4 = v10;
  }

  return v15;
}

- (id)eventAlbumContainingPhoto:(id)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = a3;
  v5 = [v3 predicateWithFormat:@"(kind == %d) ||(kind == %d) ||(kind == %d)", 12, 1000, 1500];
  v6 = [v4 albums];

  v7 = [v6 filteredSetUsingPredicate:v5];
  v8 = [v7 anyObject];

  return v8;
}

- (NSArray)photoStreamAlbumsForPreferences
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [(PLPhotoLibrary *)self photoStreamAlbums];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isOwnPhotoStreamAlbum])
        {
          [v3 insertObject:v9 atIndex:0];
        }

        else
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSArray)photoStreamAlbums
{
  v2 = [(PLPhotoLibrary *)self managedObjectContext];
  v3 = [PLGenericAlbum albumsWithKind:1500 inManagedObjectContext:v2];

  return v3;
}

- (id)albumListForAlbumOfKind:(int)a3
{
  switch(a3)
  {
    case 4003:
      v3 = [PLManagedAlbumList importListInPhotoLibrary:self];
      break;
    case 4002:
      v3 = [PLManagedAlbumList eventListInPhotoLibrary:self];
      break;
    case 4001:
      v3 = [PLManagedAlbumList facesAlbumListInPhotoLibrary:self];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

- (void)_userApplyTrashedState:(signed __int16)a3 toAlbums:(id)a4
{
  v4 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = 0;
  [(PLPhotoLibrary *)self _filterAlbums:a4 toTrashableAlbums:&v18 deletableAlbums:&v17 otherAlbums:0];
  v6 = v18;
  v7 = v17;
  if (v4 == 1)
  {
    [(PLPhotoLibrary *)self _userDeleteAlbums:v7];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v19 count:16];
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

        [*(*(&v13 + 1) + 8 * v12++) applyTrashedState:v4 cascade:{1, v13}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)_filterAlbums:(id)a3 toTrashableAlbums:(id *)a4 deletableAlbums:(id *)a5 otherAlbums:(id *)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v23 = a4;
  if (a4)
  {
    a4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  if (a5)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v10 = 0;
  }

  v24 = a5;
  if (a6)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v11 = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) == 0 || (v18 = [v17 canMoveToTrash], v19 = a4, (v18 & 1) == 0))
        {
          if ([v17 canPerformEditOperation:32])
          {
            v19 = v10;
          }

          else
          {
            v19 = v11;
          }
        }

        [v19 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  if (v23)
  {
    v20 = a4;
    *v23 = a4;
  }

  if (v24)
  {
    v21 = v10;
    *v24 = v10;
  }

  if (a6)
  {
    v22 = v11;
    *a6 = v11;
  }
}

- (void)_userDeleteAlbums:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v33;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        if ([v10 isCloudSharedAlbum] && objc_msgSend(v10, "conformsToProtocol:", &unk_1F0FFFF38))
        {
          if (!v7)
          {
            v7 = [MEMORY[0x1E695DF70] array];
          }

          [v7 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v11 = [(PLPhotoLibrary *)self libraryBundle];
  v12 = [v11 isSystemPhotoLibrary];

  if (v12)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v7;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [PLPhotoSharingHelper deleteCloudSharedAlbumFromServer:*(*(&v28 + 1) + 8 * j)];
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v15);
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = v4;
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v24 + 1) + 8 * k);
        if (objc_opt_respondsToSelector())
        {
          [v23 delete];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v20);
  }
}

- (id)eventWithName:(id)a3 andImportSessionIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PLPhotoLibrary *)self managedObjectContext];
  v9 = [PLGenericAlbum eventsWithName:v7 andImportSessionIdentifier:v6 inManagedObjectContext:v8];

  v10 = [v9 firstObject];

  return v10;
}

- (void)clearTransactionCompletionHandlers
{
  transactionCompletionHandlers = self->_transactionCompletionHandlers;
  self->_transactionCompletionHandlers = 0;
}

- (void)addCompletionHandlerToCurrentTransaction:(id)a3
{
  v5 = a3;
  v12 = v5;
  if (!self->_pendingTransactions)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PLPhotoLibrary.m" lineNumber:912 description:@"Can only schedule completion handlers when there is an ongoing transaction."];

    v5 = v12;
  }

  if (!self->_transactionCompletionHandlers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    transactionCompletionHandlers = self->_transactionCompletionHandlers;
    self->_transactionCompletionHandlers = v6;

    v5 = v12;
  }

  v8 = [v5 copy];
  v9 = self->_transactionCompletionHandlers;
  v10 = _Block_copy(v8);
  [(NSMutableArray *)v9 addObject:v10];
}

- (void)deleteITunesSyncedContentForEnablingiCPL
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __58__PLPhotoLibrary_deleteITunesSyncedContentForEnablingiCPL__block_invoke;
  v2[3] = &unk_1E75781E8;
  v2[4] = self;
  [(PLPhotoLibrary *)self performTransactionAndWait:v2];
}

void __58__PLPhotoLibrary_deleteITunesSyncedContentForEnablingiCPL__block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLManagedAsset entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  v6 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForFinderSyncedAsset"), 1}];
  [v5 setFetchBatchSize:100];
  [v5 setPredicate:v6];
  [v5 setReturnsObjectsAsFaults:0];
  v32 = 0;
  v7 = [v2 executeFetchRequest:v5 error:&v32];
  v8 = v32;
  if (!v7)
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Failed to get all assets for deletion: %@", buf, 0xCu);
    }
  }

  v23 = v8;
  v10 = [MEMORY[0x1E695DFA8] set];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v28 + 1) + 8 * v15) albums];
        [v10 unionSet:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v13);
  }

  v17 = [PLAssetTransactionReason transactionReason:@"Deleting iTunes synced content to enable iCloud Photos."];
  [*(a1 + 32) batchDeleteAssets:v11 withReason:v17];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = v10;
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [v2 deleteObject:*(*(&v24 + 1) + 8 * v22++)];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v20);
  }
}

- (id)iTunesSyncedContentInfo
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2710;
  v9 = __Block_byref_object_dispose__2711;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__PLPhotoLibrary_iTunesSyncedContentInfo__block_invoke;
  v4[3] = &unk_1E7578910;
  v4[4] = self;
  v4[5] = &v5;
  [(PLPhotoLibrary *)self performBlockAndWait:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __41__PLPhotoLibrary_iTunesSyncedContentInfo__block_invoke(uint64_t a1)
{
  v38[2] = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForFinderSyncedAsset"), 1}];
  v2 = MEMORY[0x1E696AB28];
  v38[0] = v1;
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kind", 0];
  v38[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  v5 = [v2 andPredicateWithSubpredicates:v4];

  v6 = MEMORY[0x1E696AB28];
  v29 = v1;
  v37[0] = v1;
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kind", 1];
  v37[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  v9 = [v6 andPredicateWithSubpredicates:v8];

  v10 = objc_alloc(MEMORY[0x1E695D5E0]);
  v11 = +[PLManagedAsset entityName];
  v12 = [v10 initWithEntityName:v11];

  [v12 setPredicate:v5];
  v13 = objc_alloc(MEMORY[0x1E695D5E0]);
  v14 = +[PLManagedAsset entityName];
  v15 = [v13 initWithEntityName:v14];

  [v15 setPredicate:v9];
  v16 = [*(a1 + 32) managedObjectContext];
  v32 = 0;
  v17 = [v16 countForFetchRequest:v12 error:&v32];
  v18 = v32;
  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = PLBackendGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v18;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Error getting count of iTunes synced photos: %@", buf, 0xCu);
    }
  }

  v31 = v18;
  v20 = [v16 countForFetchRequest:v15 error:&v31];
  v21 = v31;

  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = PLBackendGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v21;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Error getting count of iTunes synced videos: %@", buf, 0xCu);
    }
  }

  v33[0] = @"PLITunesSyncedContentInfoPhotoCountKey";
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:v17];
  v34[0] = v23;
  v33[1] = @"PLITunesSyncedContentInfoVideoCountKey";
  v24 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
  v34[1] = v24;
  v33[2] = @"PLITunesSyncedContentInfoAssetCountKey";
  v25 = [MEMORY[0x1E696AD98] numberWithInteger:v20 + v17];
  v34[2] = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];
  v27 = *(*(a1 + 40) + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v26;
}

- (BOOL)hasITunesSyncedContent
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__PLPhotoLibrary_hasITunesSyncedContent__block_invoke;
  v4[3] = &unk_1E7578910;
  v4[4] = self;
  v4[5] = &v5;
  [(PLPhotoLibrary *)self performBlockAndWait:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __40__PLPhotoLibrary_hasITunesSyncedContent__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForFinderSyncedAsset"), 1}];
  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLManagedAsset entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  [v5 setPredicate:v2];
  [v5 setResultType:2];
  [v5 setPropertiesToFetch:&unk_1F0FBF2C8];
  [v5 setFetchLimit:1];
  v6 = [*(a1 + 32) managedObjectContext];
  v10 = 0;
  v7 = [v6 executeFetchRequest:v5 error:&v10];
  v8 = v10;

  if (v8)
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Error attempting to count iTunes synced assets: %@", buf, 0xCu);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = [v7 count] != 0;
}

- (BOOL)_hasIncompleteAsset
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLManagedAsset entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"complete == 0"];
  [v5 setPredicate:v6];
  [v5 setFetchLimit:1];
  v7 = [(PLPhotoLibrary *)self managedObjectContext];
  v12 = 0;
  v8 = [v7 countForFetchRequest:v5 error:&v12];
  v9 = v12;

  if (v9 || v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Error attempting to count incomplete assets: %@", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8 != 0;
}

- (void)_photoLibraryForceClientExitNotification
{
  if (!PLIsSpringboard() || !PLIsRunningInStoreDemoMode())
  {
    v3 = PLBackendGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "Exiting because another process requested a FORCE CLIENT EXIT.  Everything is behaving as it should and you don't need to file a radar about this.\n\nThis is usually initiated by: plphotosctl rebuilddb.", v4, 2u);
    }

    exit(0);
  }

  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "Ignoring simulated FORCE CLIENT EXIT for SpringBoard in Store Demo Mode to avoid a possible crash loop.", buf, 2u);
  }
}

- (void)_photoLibraryCorruptNotification
{
  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "Exiting because another process detected a corrupt database.", v3, 2u);
  }

  exit(0);
}

- (id)photoAnalysisClient
{
  v3 = [(PLPhotoLibrary *)self globalValues];
  v4 = [v3 libraryCreateOptions];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(PLPhotoLibraryBundle *)self->_libraryBundle photoAnalysisServiceClient];
  }

  return v5;
}

- (void)clientApplicationWillEnterForeground
{
  if (PLIsAssetsd())
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PLPhotoLibrary.m" lineNumber:765 description:@"cannot be called by assetsd"];
  }

  v4 = [(PLPhotoLibrary *)self libraryBundle];
  v8 = [v4 indicatorFileCoordinator];

  if (__photoLibraryClient == 1 && [v8 needsRecoveryAfterCrashOptionallyRemoveAllIndicatorFiles:0])
  {
    v5 = [(PLPhotoLibrary *)self assetsdClient];
    v6 = [v5 libraryClient];
    [v6 recoverFromCrashIfNeeded];
  }
}

- (void)handlePersistentStoreRemoval:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E695D478]];

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2710;
  v16 = __Block_byref_object_dispose__2711;
  v17 = 0;
  v11[1] = MEMORY[0x1E69E9820];
  v11[2] = 3221225472;
  v11[3] = __47__PLPhotoLibrary_handlePersistentStoreRemoval___block_invoke;
  v11[4] = &unk_1E7578910;
  v11[5] = self;
  v11[6] = &v12;
  PLRunWithUnfairLock();
  if ([v6 indexOfObject:v13[5]] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11[0] = 0;
    v7 = [(PLPhotoLibrary *)self unloadDatabase:v11];
    v8 = v11[0];
    if (v7)
    {
      v9 = PLBackendGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = [(PLPhotoLibrary *)self name];
        *buf = 138412290;
        v19 = v10;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "Unloaded database %@", buf, 0xCu);
      }
    }

    else
    {
      v9 = PLBackendGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v8;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Failed to unload database %@", buf, 0xCu);
      }
    }
  }

  _Block_object_dispose(&v12, 8);
}

void __47__PLPhotoLibrary_handlePersistentStoreRemoval___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

- (BOOL)loadDatabaseWithOptions:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  os_unfair_lock_lock(&self->_managedObjectContextLock);
  if (self->_managedObjectContext)
  {
    v7 = 1;
    v8 = 1;
    goto LABEL_23;
  }

  if (PLIsAssetsd())
  {
LABEL_14:
    v20 = [(PLPhotoLibrary *)self _loadDatabaseContextWithOptions:v6 error:a4];
    v21 = v20;
    if (!v20)
    {
      v8 = 0;
LABEL_22:

      v7 = 1;
      goto LABEL_23;
    }

    v22 = [v20 persistentStoreCoordinator];
    v23 = [v22 persistentStores];
    v24 = [v23 firstObject];

    v8 = v24 != 0;
    if (v24)
    {
      objc_storeWeak(&self->_loadedPersistentStore, v24);
      objc_storeStrong(&self->_managedObjectContext, v21);
      v25 = [MEMORY[0x1E696AD88] defaultCenter];
      [v25 addObserver:self selector:sel_handlePersistentStoreRemoval_ name:*MEMORY[0x1E695D3F0] object:v22];
    }

    else
    {
      if (!a4)
      {
LABEL_21:

        goto LABEL_22;
      }

      v26 = MEMORY[0x1E696ABC0];
      v36 = *MEMORY[0x1E696A278];
      v37 = @"Persistent store is nil";
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      *a4 = [v26 errorWithDomain:*MEMORY[0x1E69BFF48] code:45001 userInfo:v25];
    }

    goto LABEL_21;
  }

  v9 = [MEMORY[0x1E69BF2B0] sharedInstance];
  v10 = [v9 photosAccessAllowedWithScope:7];

  v11 = PLBackendGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v39 = v10;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "PLPhotosAccessAllowedResult result is %td", buf, 0xCu);
  }

  if (PLPhotosAccessAllowed())
  {
    goto LABEL_10;
  }

  v12 = [MEMORY[0x1E69BF2B0] sharedInstance];
  v13 = [v12 checkPhotosAccessAllowedWithScope:7];

  v14 = PLBackendGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v39 = v13;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "PLPhotosAccessAllowedResult updatedResult is %td", buf, 0xCu);
  }

  if (PLPhotosAccessAllowed())
  {
LABEL_10:
    if (!+[PLPhotoLibrary systemPhotoLibraryIsObtainable])
    {
      v30 = PLBackendGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 138412290;
        v39 = v31;
        _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "*** Attempting access to the photo library before it is obtainable. %@", buf, 0xCu);
      }

      v32 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Access to the photo library is not allowed until the photo library is obtainable." userInfo:0];
      objc_exception_throw(v32);
    }

    if (PLIsSystemLibraryAccessProhibited())
    {
      v15 = [(PLPhotoLibrary *)self pathManager];
      v16 = [v15 libraryURL];
      v17 = [v16 URLByStandardizingPath];

      v18 = [MEMORY[0x1E69BF238] realSystemPhotoLibraryPath];
      v19 = [v17 path];
      LODWORD(v16) = [v18 isEqualToString:v19];

      if (v16)
      {
        v33 = PLBackendGetLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = [MEMORY[0x1E696AF00] callStackSymbols];
          *buf = 138412290;
          v39 = v34;
          _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "*** Attempting access to the system photo library is prohibited. %@", buf, 0xCu);
        }

        v35 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Access to the system photo library is prohibited." userInfo:0];
        objc_exception_throw(v35);
      }
    }

    goto LABEL_14;
  }

  v28 = PLBackendGetLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = [MEMORY[0x1E696AF00] callStackSymbols];
    *buf = 138412290;
    v39 = v29;
    _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "*** This application is not allowed to access Photo data. %@", buf, 0xCu);
  }

  if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:45002 userInfo:0];
    v7 = 0;
    *a4 = v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

LABEL_23:
  os_unfair_lock_unlock(&self->_managedObjectContextLock);

  return v7 & v8;
}

id __33__PLPhotoLibrary_unloadDatabase___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:*(a1 + 32)];

    v2 = *(a1 + 32);
    v3 = *(v2 + 88);
  }

  *(v2 + 88) = 0;

  v5 = (*(a1 + 32) + 96);

  return objc_storeWeak(v5, 0);
}

- (void)_setManagedObjectContext:(id)a3
{
  v4 = a3;
  v3 = v4;
  PLRunWithUnfairLock();
}

- (PLPhotoLibrary)initWithName:(const char *)a3 libraryBundle:(id)a4 options:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = [v9 pathManager];
  v12 = [(PLPhotoLibrary *)self _initWithPathManager:v11];
  v13 = v12;
  if (v12)
  {
    v12->_managedObjectContextLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_libraryBundle, a4);
    v14 = [v9 libraryServicesManager];
    objc_storeWeak(&v13->_libraryServicesManager, v14);

    objc_storeStrong(&v13->_options, a5);
    if (a3)
    {
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a3];
      name = v13->_name;
      v13->_name = v15;
    }

    if (![(PLPhotoLibraryBundle *)v13->_libraryBundle registerPLPhotoLibrary:v13])
    {

      v13 = 0;
    }

    [PLPhotoLibrary reportLibraryDidInit:v13];
    v17 = PLPhotosObjectLifecycleGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = [(PLPhotoLibrary *)v13 name];
      v20 = 134218242;
      v21 = v13;
      v22 = 2112;
      v23 = v18;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEBUG, "PLPhotoLibrary %p initWithName %@", &v20, 0x16u);
    }
  }

  return v13;
}

- (id)_initWithPathManager:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PLPhotoLibrary;
  v6 = [(PLPhotoLibrary *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pathManager, a3);
    v8 = v7;
  }

  return v7;
}

- (PLPhotoLibrary)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:@"You just got singlestacked" reason:@"Must use an initializer that takes a library path" userInfo:0];
  objc_exception_throw(v2);
}

- (void)_pauseChangeHandlingNotifications
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v2 = [WeakRetained changeHandlingContainer];
  [v2 pauseLaunchEventNotifications];
}

- (void)_reallyDisableOpportunisticTasks
{
  v3 = [objc_opt_class() opportunisticTaskIsolationQueue];
  dispatch_assert_queue_V2(v3);

  [(PLPhotoLibrary *)self _pauseChangeHandlingNotifications];
}

- (void)disableOpportunisticTasks
{
  if ((PLIsAssetsd() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PLPhotoLibrary.m" lineNumber:488 description:@"disableOpportunisticTasks can only be called from assetsd"];
  }

  v4 = [objc_opt_class() opportunisticTaskIsolationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PLPhotoLibrary_disableOpportunisticTasks__block_invoke;
  block[3] = &unk_1E75781E8;
  block[4] = self;
  dispatch_sync(v4, block);
}

void __43__PLPhotoLibrary_disableOpportunisticTasks__block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = sOpportunisticTasksDisabled;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Disable opportunistic tasks invoked (was %d)", v4, 8u);
  }

  v3 = sOpportunisticTasksDisabled;
  if (!sOpportunisticTasksDisabled)
  {
    [*(a1 + 32) _reallyDisableOpportunisticTasks];
    v3 = sOpportunisticTasksDisabled;
  }

  sOpportunisticTasksDisabled = v3 + 1;
}

- (void)_cancelAllDeferredPrewarming
{
  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Deferred processing: cancel all prewarming due to enabling opportunistic tasks", v4, 2u);
  }

  v3 = objc_alloc_init(PLCaptureDeferredPhotoProcessor);
  [(PLCaptureDeferredPhotoProcessor *)v3 cancelAllPrewarmingWithCompletionHandler:&__block_literal_global_149];
}

- (void)_resumeChangeHandlingNotifications
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v2 = [WeakRetained changeHandlingContainer];
  [v2 unpauseLaunchEventNotifications];
}

- (void)_reallyEnableOpportunisticTasks
{
  v3 = [objc_opt_class() opportunisticTaskIsolationQueue];
  dispatch_assert_queue_V2(v3);

  [(PLPhotoLibrary *)self _resumeChangeHandlingNotifications];

  [(PLPhotoLibrary *)self _cancelAllDeferredPrewarming];
}

- (void)enableOpportunisticTasks
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);

  if (!WeakRetained)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PLPhotoLibrary.m" lineNumber:449 description:{@"Invalid parameter not satisfying: %@", @"_libraryServicesManager"}];
  }

  if ((PLIsAssetsd() & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PLPhotoLibrary.m" lineNumber:450 description:@"enableOpportunisticTasks: can only be called from assetsd"];
  }

  v5 = [objc_opt_class() opportunisticTaskIsolationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__PLPhotoLibrary_enableOpportunisticTasks__block_invoke;
  block[3] = &unk_1E75781E8;
  block[4] = self;
  dispatch_sync(v5, block);
}

void __42__PLPhotoLibrary_enableOpportunisticTasks__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = sOpportunisticTasksDisabled;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Enable opportunistic tasks invoked (was %d)", v5, 8u);
  }

  v3 = sOpportunisticTasksDisabled;
  if (sOpportunisticTasksDisabled < 1)
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v5[0]) = 0;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Attempted to enable opportunistic tasks when not disabled", v5, 2u);
    }
  }

  else
  {
    if (sOpportunisticTasksDisabled == 1)
    {
      [*(a1 + 32) _reallyEnableOpportunisticTasks];
      v3 = sOpportunisticTasksDisabled;
    }

    sOpportunisticTasksDisabled = v3 - 1;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PLPhotoLibraryPathManager *)self->_pathManager libraryURL];
  v6 = [v3 stringWithFormat:@"<%@: %p libraryURL=%@>", v4, self, v5];

  return v6;
}

- (BOOL)_isUnknownAssetColumnError:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E695D488]];

  if (v5)
  {
    v6 = [v5 intValue];
    v7 = [v3 userInfo];
    v8 = [v7 objectForKey:@"NSSQLiteDatabaseErrorMessageKey"];

    v9 = (v6 == 1) & [v8 containsString:@"no such column: ZASSET"];
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)_markForRebuildAndAbortWithReason:(int64_t)a3 error:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = PLBackendGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v8 = PLRebuildReasonToShortString(a3);
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_FAULT, "Corrupt Database Detected: reason: %{public}@, error: %@", &v11, 0x16u);
  }

  v9 = [(PLPhotoLibrary *)self pathManager];
  [v9 setSqliteErrorForRebuildReason:a3 allowsExit:1];

  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  [WeakRetained shutdownLibraryWithDescription:@"CoreData error"];
}

- (void)handlePossibleCoreDataError:(id)a3
{
  v8 = a3;
  v4 = [v8 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E695D488]];

  if (v5)
  {
    v6 = [v5 intValue];
    if (v6 == 769)
    {
      [objc_opt_class() contextExecuteFailedWithSQLiteResultCode:769];
    }

    else if (v6 == 26 || v6 == 11)
    {
      [(PLPhotoLibrary *)self _markForRebuildAndAbortWithReason:8 error:v8];
    }
  }

  if ([(PLPhotoLibrary *)self _isUnknownAssetColumnError:v8])
  {
    [(PLPhotoLibrary *)self _markForRebuildAndAbortWithReason:21 error:v8];
  }
}

- (PAVideoConversionServiceClient)videoConversionServiceClient
{
  videoConversionServiceClient = self->_videoConversionServiceClient;
  if (!videoConversionServiceClient)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69AE888]);
    v5 = self->_videoConversionServiceClient;
    self->_videoConversionServiceClient = v4;

    videoConversionServiceClient = self->_videoConversionServiceClient;
  }

  return videoConversionServiceClient;
}

- (PAImageConversionServiceClient)imageConversionServiceClient
{
  imageConversionServiceClient = self->_imageConversionServiceClient;
  if (!imageConversionServiceClient)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69AE870]);
    v5 = self->_imageConversionServiceClient;
    self->_imageConversionServiceClient = v4;

    imageConversionServiceClient = self->_imageConversionServiceClient;
  }

  return imageConversionServiceClient;
}

- (PLThumbnailIndexes)thumbnailIndexes
{
  if ((PLIsAssetsd() & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PLPhotoLibrary.m" lineNumber:350 description:@"PLThumbnailIndexes only available in assetsd"];
  }

  v4 = PLLibraryIDFromPathManager();
  v5 = PLDataStoreForClassIDAndLibraryID(1, v4);
  v6 = [v5 thumbnailIndexes];

  return v6;
}

- (id)shortLivedLibraryCopyByAppendingName:(const char *)a3
{
  if ((PLIsAssetsd() & 1) == 0 && (MEMORY[0x19EAEE520]() & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PLPhotoLibrary.m" lineNumber:307 description:@"Should only be called within assetsd"];
  }

  v6 = [(PLPhotoLibrary *)self name];
  v7 = [v6 stringByAppendingFormat:@" %s", a3];

  v8 = [(PLPhotoLibrary *)self libraryServicesManager];
  v9 = [v8 databaseContext];
  v10 = [v9 newShortLivedLibraryWithName:{objc_msgSend(v7, "UTF8String")}];

  v11 = [(PLPhotoLibrary *)self managedObjectContext];
  v12 = [v11 changeSource];
  v13 = [v10 managedObjectContext];
  [v13 setChangeSource:v12];

  return v10;
}

+ (BOOL)isBackgroundProcessingEnabledWithManagedObjectContext:(id)a3
{
  v3 = a3;
  v4 = [v3 photoLibrary];
  v5 = [v4 libraryServicesManager];

  if (v5)
  {
    v6 = [v5 createOptions];
  }

  else
  {
    v7 = [[PLGlobalValues alloc] initWithManagedObjectContext:v3];
    v6 = [(PLGlobalValues *)v7 libraryCreateOptions];
  }

  return (v6 & 0x40) == 0;
}

+ (unint64_t)CloudPhotoLibrarySize
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v3 = [v2 photoDirectoryWithType:4];

  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = _sizeOfDirectories(v4);

  return v5;
}

+ (id)deferredPhotoPreviewDestinationURLForPrimaryAssetURL:(id)a3
{
  v3 = a3;
  v4 = [v3 pathExtension];
  v5 = [v3 path];

  v6 = [v5 stringByDeletingPathExtension];
  v7 = [v6 stringByAppendingString:*MEMORY[0x1E69BFCF0]];
  v8 = [v7 stringByAppendingPathExtension:v4];

  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8 isDirectory:0];

  return v9;
}

+ (id)requestIdentifierFromDeferredIdentifier:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"/"];
  v4 = [v3 firstObject];

  return v4;
}

+ (void)refreshCachedCountsAndDates:(BOOL)a3 onAssetsContainerClass:(Class)a4 inContext:(id)a5 withPredicate:(id)a6
{
  v62 = a3;
  v83[7] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v51 = a6;
  if (!a4)
  {
    v44 = [MEMORY[0x1E696AAA8] currentHandler];
    [v44 handleFailureInMethod:a2 object:a1 file:@"PLPhotoLibrary.m" lineNumber:3779 description:{@"Invalid parameter not satisfying: %@", @"class != nil"}];
  }

  v63 = v9;
  if (!v9)
  {
    v45 = [MEMORY[0x1E696AAA8] currentHandler];
    [v45 handleFailureInMethod:a2 object:a1 file:@"PLPhotoLibrary.m" lineNumber:3780 description:{@"Invalid parameter not satisfying: %@", @"context != nil"}];
  }

  v58 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v58 setName:@"objectID"];
  v10 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
  [v58 setExpression:v10];

  [v58 setExpressionResultType:2000];
  v57 = [MEMORY[0x1E696ABC8] expressionWithFormat:@"SUBQUERY(assets, $x, noindex:($x.hidden) = NO && noindex:($x.trashedState) = %d).@count", 0];
  v11 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v11 setName:@"cachedCount"];
  [v11 setExpression:v57];
  v52 = v11;
  [v11 setExpressionResultType:200];
  v56 = [MEMORY[0x1E696ABC8] expressionWithFormat:@"SUBQUERY(assets, $x, noindex:($x.kind) == %d && noindex:($x.hidden) = NO && noindex:($x.trashedState) = %d).@count", 0, 0];
  v12 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v12 setName:@"cachedPhotosCount"];
  [v12 setExpression:v56];
  v53 = v12;
  [v12 setExpressionResultType:200];
  v55 = [MEMORY[0x1E696ABC8] expressionWithFormat:@"SUBQUERY(assets, $x, noindex:($x.kind) == %d && noindex:($x.hidden) = NO && noindex:($x.trashedState) = %d).@count", 1, 0];
  v13 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v13 setName:@"cachedVideosCount"];
  [v13 setExpression:v55];
  v54 = v13;
  [v13 setExpressionResultType:200];
  if (v62)
  {
    v14 = MEMORY[0x1E696ABC8];
    if (objc_opt_class() == a4)
    {
      v15 = @"addedDate";
    }

    else
    {
      v15 = @"dateCreated";
    }

    v16 = [v14 expressionWithFormat:@"SUBQUERY(assets, $x, noindex:($x.hidden) = NO && noindex:($x.trashedState) = %d).%K.@min", 0, v15];
    v17 = objc_alloc_init(MEMORY[0x1E695D5C8]);
    [v17 setName:@"startDate"];
    [v17 setExpression:v16];
    v48 = v17;
    [v17 setExpressionResultType:900];
    v18 = MEMORY[0x1E696ABC8];
    if (objc_opt_class() == a4)
    {
      v19 = @"addedDate";
    }

    else
    {
      v19 = @"dateCreated";
    }

    v20 = [v18 expressionWithFormat:@"SUBQUERY(assets, $x, noindex:($x.hidden) = NO && noindex:($x.trashedState) = %d).%K.@max", 0, v19];
    v21 = objc_alloc_init(MEMORY[0x1E695D5C8]);
    [v21 setName:@"endDate"];
    [v21 setExpression:v20];
    v49 = v21;
    [v21 setExpressionResultType:900];
  }

  else
  {
    v48 = 0;
    v49 = 0;
  }

  v60 = [(objc_class *)a4 entityName];
  v59 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:v60];
  [v59 setResultType:2];
  if (v62)
  {
    v83[0] = @"uuid";
    v83[1] = v52;
    v83[2] = v53;
    v83[3] = v54;
    v83[4] = v48;
    v83[5] = v49;
    v83[6] = v58;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:7];
  }

  else
  {
    v82[0] = @"uuid";
    v82[1] = v52;
    v82[2] = v53;
    v82[3] = v54;
    v82[4] = v58;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:5];
  }

  v23 = v22;
  [v59 setPropertiesToFetch:v22];

  [v59 setPredicate:v51];
  v72 = 0;
  v50 = [v63 executeFetchRequest:v59 error:&v72];
  v47 = v72;
  if (v50)
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = v50;
    v65 = [obj countByEnumeratingWithState:&v68 objects:v81 count:16];
    if (v65)
    {
      v64 = *v69;
      do
      {
        v24 = 0;
        do
        {
          if (*v69 != v64)
          {
            v25 = v24;
            objc_enumerationMutation(obj);
            v24 = v25;
          }

          v66 = v24;
          v26 = *(*(&v68 + 1) + 8 * v24);
          v67 = [v26 objectForKeyedSubscript:@"objectID"];
          if (v67)
          {
            v27 = [v63 objectWithID:?];
            for (i = 0; i != 3; ++i)
            {
              v29 = refreshCachedCountsAndDates_onAssetsContainerClass_inContext_withPredicate__cachedCountKeys[i];
              v30 = [v26 objectForKey:v29];
              v31 = [v27 valueForKey:v29];
              if ((PLObjectIsEqual() & 1) == 0)
              {
                v32 = PLBackendGetLog();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
                  v33 = [v27 objectID];
                  *buf = 138413058;
                  v74 = v29;
                  v75 = 2112;
                  v76 = v33;
                  v77 = 2112;
                  v78 = v31;
                  v79 = 2112;
                  v80 = v30;
                  _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEFAULT, "Resetting %@ for %@ (%@ -> %@)", buf, 0x2Au);
                }

                [v27 setValue:v30 forKey:v29];
              }
            }

            if (v62)
            {
              v34 = 0;
              v35 = 1;
              do
              {
                v36 = v35;
                v37 = refreshCachedCountsAndDates_onAssetsContainerClass_inContext_withPredicate__dateKeys[v34];
                v38 = [v26 objectForKey:v37];
                v39 = [v27 valueForKey:v37];
                if (!PLDateIsApproximatelyEqual(v39, v38, 2.22044605e-16))
                {
                  v40 = PLBackendGetLog();
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                  {
                    v41 = [v27 objectID];
                    *buf = 138413058;
                    v74 = v37;
                    v75 = 2112;
                    v76 = v41;
                    v77 = 2112;
                    v78 = v39;
                    v79 = 2112;
                    v80 = v38;
                    _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_DEFAULT, "Resetting %@ for %@ (%@ -> %@)", buf, 0x2Au);
                  }

                  [v27 setValue:v38 forKey:v37];
                }

                v35 = 0;
                v34 = 1;
              }

              while ((v36 & 1) != 0);
            }
          }

          else
          {
            v27 = PLBackendGetLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v42 = [v26 objectForKeyedSubscript:@"uuid"];
              *buf = 138412546;
              v74 = v60;
              v75 = 2112;
              v76 = v42;
              _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Recalc counts - unable to determine objectID for %@ with uuid: %@", buf, 0x16u);
            }
          }

          v24 = v66 + 1;
        }

        while (v66 + 1 != v65);
        v65 = [obj countByEnumeratingWithState:&v68 objects:v81 count:16];
      }

      while (v65);
    }
  }

  else
  {
    obj = PLBackendGetLog();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      v43 = NSStringFromSelector(a2);
      *buf = 138412802;
      v74 = v43;
      v75 = 2112;
      v76 = v60;
      v77 = 2112;
      v78 = v47;
      _os_log_impl(&dword_19BF1F000, obj, OS_LOG_TYPE_ERROR, "%@ failed to fetch counts for %@ %@", buf, 0x20u);
    }
  }
}

+ (void)refreshCachedCountsOnAllAssetContainersInContext:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  [PLPhotoLibrary refreshCachedCountsAndDates:1 onAssetsContainerClass:objc_opt_class() inContext:v3 withPredicate:0];
  if ([v3 hasChanges])
  {
    v4 = [v3 updatedObjects];
    v5 = [v4 _pl_map:&__block_literal_global_832];

    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Updating cached counts and dates on albums %{public}@", buf, 0xCu);
    }

    v24 = 0;
    v7 = [v3 save:&v24];
    v8 = v24;
    if ((v7 & 1) == 0)
    {
      v9 = PLBackendGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v26 = v8;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Failed to update cached counts on albums %{public}@", buf, 0xCu);
      }
    }
  }

  [PLPhotoLibrary refreshCachedCountsAndDates:0 onAssetsContainerClass:objc_opt_class() inContext:v3 withPredicate:0];
  if ([v3 hasChanges])
  {
    v10 = [v3 updatedObjects];
    v11 = [v10 _pl_map:&__block_literal_global_836];

    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v11;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Updating cached counts and dates on moments %{public}@", buf, 0xCu);
    }

    v23 = 0;
    v13 = [v3 save:&v23];
    v14 = v23;
    if ((v13 & 1) == 0)
    {
      v15 = PLBackendGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v26 = v14;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Failed to update cached counts on moments %{public}@", buf, 0xCu);
      }
    }
  }

  [PLPhotoLibrary refreshCachedCountsAndDates:1 onAssetsContainerClass:objc_opt_class() inContext:v3 withPredicate:0];
  if ([v3 hasChanges])
  {
    v16 = [v3 updatedObjects];
    v17 = [v16 _pl_map:&__block_literal_global_841];

    v18 = PLBackendGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v17;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Updating cached counts and dates on importSession %{public}@", buf, 0xCu);
    }

    v22 = 0;
    v19 = [v3 save:&v22];
    v20 = v22;
    if ((v19 & 1) == 0)
    {
      v21 = PLBackendGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v26 = v20;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Failed to update cached counts on importSession %{public}@", buf, 0xCu);
      }
    }
  }
}

+ (BOOL)canSaveVideoToLibrary:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v19 = *MEMORY[0x1E6987BD8];
    v20[0] = &unk_1F0FBAB10;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:0];
    v6 = [MEMORY[0x1E6988168] URLAssetWithURL:v5 options:v4];
    v7 = v6;
    if (v6)
    {
      if ([v6 isCompatibleWithSavedPhotosAlbum])
      {
        v8 = 1;
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      v9 = PLBackendGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v3;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Video %@ cannot be saved to the photo library: reference to remote", buf, 0xCu);
      }
    }

    v14 = 0;
    v10 = [v7 statusOfValueForKey:@"compatibleWithSavedPhotosAlbum" error:&v14];
    v11 = v14;
    if (v10 != 2)
    {
      v12 = PLBackendGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v16 = v3;
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Video %@ cannot be saved to the photo library: %@", buf, 0x16u);
      }
    }

    v8 = 0;
    goto LABEL_14;
  }

  v8 = 0;
LABEL_15:

  return v8;
}

+ (id)_resourcesInfoFromMoc:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2710;
  v15 = __Block_byref_object_dispose__2711;
  v16 = 0;
  v5 = [[PLLibraryContentsEnumerator alloc] initWithSourceManagedObjectContext:v4 concurrent:0 readOnly:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__PLPhotoLibrary__resourcesInfoFromMoc___block_invoke;
  v10[3] = &unk_1E7577790;
  v10[4] = &v11;
  [a1 configureEnumeratorForLibrarySizeInfo:v5 completion:v10];
  v9 = 0;
  LODWORD(a1) = [(PLLibraryContentsEnumerator *)v5 processObjectsWithError:&v9];
  v6 = v9;
  if (a1)
  {
    v7 = v12[5];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v7;
}

+ (void)configureEnumeratorForLibrarySizeInfo:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PLPhotoLibrary.m" lineNumber:3057 description:{@"Invalid parameter not satisfying: %@", @"enumerator"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"PLPhotoLibrary.m" lineNumber:3058 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = malloc_type_calloc(5uLL, 0x20uLL, 0x1000040E0EAB150uLL);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __67__PLPhotoLibrary_configureEnumeratorForLibrarySizeInfo_completion___block_invoke;
  v19[3] = &__block_descriptor_40_e24_v16__0__PLManagedAsset_8l;
  v19[4] = v10;
  [v7 addAssetVisitor:v19];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__PLPhotoLibrary_configureEnumeratorForLibrarySizeInfo_completion___block_invoke_2;
  v14[3] = &unk_1E75652C0;
  v17 = a1;
  v18 = v10;
  v15 = v9;
  v16 = a2;
  v11 = v9;
  [v7 addEndOfListVisitor:v14];
}

void __67__PLPhotoLibrary_configureEnumeratorForLibrarySizeInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69BF328];
  v4 = a2;
  v5 = *(a1 + 32) + 32 * [v3 mapSavedAssetType:objc_msgSend(v4 unknown:"savedAssetType") photoBooth:4 photoStream:4 camera:1 cloudShared:4 cameraConnectionKit:0 cloudPhotoLibrary:4 wallpaper_UNUSED:4 momentShared:4 placeholder:4 referenced:4 alternate:3 guest:4 companionSynced:4 recovered:4 legacyImport:4 collectionShare:2 unrecognized:{4, 4}];
  v6 = [v4 resourcesSortedByQualityWithOptions:0];

  [PLPhotoLibrary _getResourceData:v6 nonDerivativeSizeOut:v5 derivativesSizeOut:v5 + 8 fileBackedThumbnailsSizeOut:v5 + 16 tableThumbnailsSizeOut:v5 + 24];
}

void __67__PLPhotoLibrary_configureEnumeratorForLibrarySizeInfo_completion___block_invoke_2(uint64_t a1)
{
  v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:20];
  v2 = 0;
  v3 = off_1E75654F0;
  do
  {
    v4 = *v3++;
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
    v6 = MEMORY[0x1E696AD98];
    v7 = atomic_load((*(a1 + 56) + v2 + 8));
    v8 = [v6 numberWithUnsignedLongLong:v7];
    [v5 setObject:v8 forKeyedSubscript:@"PLInternalSizeDerivative"];

    v9 = MEMORY[0x1E696AD98];
    v10 = atomic_load((*(a1 + 56) + v2 + 16));
    v11 = [v9 numberWithUnsignedLongLong:v10];
    [v5 setObject:v11 forKeyedSubscript:@"PLInternalSizeFileBackedThumbnail"];

    v12 = MEMORY[0x1E696AD98];
    v13 = atomic_load((*(a1 + 56) + v2 + 24));
    v14 = [v12 numberWithUnsignedLongLong:v13];
    [v5 setObject:v14 forKeyedSubscript:@"PLInternalSizeTableThumbnail"];

    v15 = MEMORY[0x1E696AD98];
    v16 = atomic_load((*(a1 + 56) + v2));
    v17 = [v15 numberWithUnsignedLongLong:v16];
    [v5 setObject:v17 forKeyedSubscript:@"PLInternalSizeOriginals"];

    [v18 setObject:v5 forKeyedSubscript:v4];
    v2 += 32;
  }

  while (v2 != 160);
  free(*(a1 + 56));
  (*(*(a1 + 32) + 16))();
}

+ (id)savedPhotosReferenceMediaSizeWithSizeDataRef:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"PLReferenceMediaSize"];
  v4 = [v3 objectForKeyedSubscript:@"PLInternalSizeOriginals"];

  return v4;
}

+ (id)savedPhotosOriginalsSizeWithSizeDataRef:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"PLSavedPhotosSize"];
  v4 = [v3 objectForKeyedSubscript:@"PLInternalSizeOriginals"];

  return v4;
}

+ (void)_getResourceData:(id)a3 nonDerivativeSizeOut:(unint64_t *)a4 derivativesSizeOut:(unint64_t *)a5 fileBackedThumbnailsSizeOut:(unint64_t *)a6 tableThumbnailsSizeOut:(unint64_t *)a7
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        if ([v13 localAvailability] >= 1)
        {
          v14 = [v13 recipeID];
          if ([v13 isDerivative])
          {
            v15 = [v13 dataStore];
            v16 = objc_opt_class();
            v17 = objc_opt_class();

            if (v16 == v17)
            {
              v18 = [v13 estimatedDataLength];
              v19 = a7;
            }

            else
            {
              v18 = [v13 estimatedDataLength];
              if ((v14 & 0xFFFF0000) == 0x40000)
              {
                v19 = a6;
              }

              else
              {
                v19 = a5;
              }
            }

            atomic_fetch_add(v19, v18);
          }

          else
          {
            atomic_fetch_add(a4, [v13 estimatedDataLength]);
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }
}

+ (int)priorityForFileExtension:(id)a3
{
  v3 = [a3 lowercaseString];
  if ([PLPhotoLibrary isNonRawImageFileExtension:v3])
  {
    v4 = 1;
  }

  else if ([PLPhotoLibrary isRawImageFileExtension:v3])
  {
    v4 = 2;
  }

  else if ([PLPhotoLibrary isVideoFileExtension:v3])
  {
    v4 = 3;
  }

  else if ([PLPhotoLibrary isAudioFileExtension:v3])
  {
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

+ (BOOL)isAdjustmentEnvelopeExtension:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [*MEMORY[0x1E69C0E18] lowercaseString];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

+ (BOOL)isAudioFileExtension:(id)a3
{
  v4 = a3;
  [a1 _loadFileExtensionInformation];
  v5 = [v4 lowercaseString];

  LOBYTE(v4) = [_audioFileExtensions containsObject:v5];
  return v4;
}

+ (BOOL)isVideoFileExtension:(id)a3
{
  v4 = a3;
  [a1 _loadFileExtensionInformation];
  v5 = [v4 lowercaseString];

  v6 = [MEMORY[0x1E6988168] audiovisualMIMETypes];
  v7 = [MEMORY[0x1E696AF48] sharedMappings];
  v8 = [v7 MIMETypeForExtension:v5];

  if ([v6 containsObject:v8])
  {
    v9 = 1;
  }

  else
  {
    v9 = [_extraVideoExtensions containsObject:v5];
  }

  if ([_imageFileExtensions containsObject:v5])
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = [_audioFileExtensions containsObject:v5] ^ 1;
  }

  return v9 & v10;
}

+ (BOOL)isNonRawImageFileExtension:(id)a3
{
  v4 = a3;
  [a1 _loadFileExtensionInformation];
  v5 = [v4 lowercaseString];

  if ([_imageFileExtensions containsObject:v5])
  {
    v6 = [_rawImageFileExtensions containsObject:v5] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

+ (BOOL)isRawImageFileExtension:(id)a3
{
  v4 = a3;
  [a1 _loadFileExtensionInformation];
  v5 = [v4 lowercaseString];

  LOBYTE(v4) = [_rawImageFileExtensions containsObject:v5];
  return v4;
}

+ (BOOL)isImageFileExtension:(id)a3
{
  v4 = a3;
  [a1 _loadFileExtensionInformation];
  v5 = [v4 lowercaseString];

  LOBYTE(v4) = [_imageFileExtensions containsObject:v5];
  return v4;
}

+ (void)_loadFileExtensionInformation
{
  if (_loadFileExtensionInformation_onceToken != -1)
  {
    dispatch_once(&_loadFileExtensionInformation_onceToken, &__block_literal_global_674);
  }
}

void __47__PLPhotoLibrary__loadFileExtensionInformation__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = CGImageSourceCopyTypeExtensions();
  v2 = [v0 initWithArray:v1];
  v3 = _imageFileExtensions;
  _imageFileExtensions = v2;

  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5 = CGImageSourceCopyTypeExtensions();
  v6 = [v4 initWithArray:v5];
  v7 = _rawImageFileExtensions;
  _rawImageFileExtensions = v6;

  v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"wav", @"mp3", @"aac", 0}];
  v9 = _audioFileExtensions;
  _audioFileExtensions = v8;

  v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"avi", @"flv", @"wmv", 0}];
  v11 = _extraVideoExtensions;
  _extraVideoExtensions = v10;
}

+ (id)masterURLFromSidecarURLs:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v7 = [v5 allObjects];

  [v6 addObjectsFromArray:v7];
  [v6 sortUsingFunction:PrimaryURLSort context:a1];
  v8 = [v6 objectAtIndex:0];

  return v8;
}

+ (id)photoOutboundSharingTmpDirectoryURL
{
  v2 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v3 = [v2 privateDirectoryWithSubType:2 createIfNeeded:1 error:0];
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:1];

  return v4;
}

+ (BOOL)removeFaceMetadataAtURL:(id)a3 includingPeople:(BOOL)a4
{
  v51[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 1;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = *MEMORY[0x1E695DC30];
  v51[0] = *MEMORY[0x1E695DC30];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __58__PLPhotoLibrary_removeFaceMetadataAtURL_includingPeople___block_invoke;
  v40[3] = &unk_1E7565250;
  v40[4] = &v41;
  v9 = [v6 enumeratorAtURL:v5 includingPropertiesForKeys:v8 options:0 errorHandler:v40];
  v28 = v5;

  v29 = [MEMORY[0x1E695DF70] array];
  v39 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v36 objects:v50 count:16];
  if (v11)
  {
    v12 = *v37;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        v35 = 0;
        v15 = [v14 getResourceValue:&v35 forKey:v7 error:0];
        v16 = v35;
        v17 = v16;
        if (v15 && [v16 length] && a4 && +[PLPersistedPersonMetadata isValidPath:](PLPersistedPersonMetadata, "isValidPath:", v17))
        {
          [v29 addObject:v14];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v36 objects:v50 count:16];
    }

    while (v11);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = v29;
  v19 = [v18 countByEnumeratingWithState:&v31 objects:v49 count:16];
  if (v19)
  {
    v20 = *v32;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v31 + 1) + 8 * j);
        v30 = 0;
        v23 = [v6 removeItemAtURL:v22 error:&v30];
        v24 = v30;
        if ((v23 & 1) == 0)
        {
          v25 = PLMigrationGetLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v46 = v22;
            v47 = 2112;
            v48 = v24;
            _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Unable to remove metadata at URL: %@: %@", buf, 0x16u);
          }

          *(v42 + 24) = 0;
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v31 objects:v49 count:16];
    }

    while (v19);
  }

  v26 = *(v42 + 24);
  _Block_object_dispose(&v41, 8);

  return v26 & 1;
}

uint64_t __58__PLPhotoLibrary_removeFaceMetadataAtURL_includingPeople___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PLMigrationGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [v5 path];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Unable to enumerate '%@': %@", &v10, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  return 1;
}

+ (id)fileReservationForFileAtPath:(id)a3 exclusive:(BOOL)a4
{
  if (a4)
  {
    v4 = 36;
  }

  else
  {
    v4 = 16;
  }

  v5 = open([a3 fileSystemRepresentation], v4, 438);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [[_PLPhotoLibraryFileReservation alloc] initWithFileDescriptor:v5];
  }

  return v6;
}

+ (void)postGlobalPhotoLibraryAvailableIfNecessary
{
  v3 = [MEMORY[0x1E69BF360] transaction:"+[PLPhotoLibrary postGlobalPhotoLibraryAvailableIfNecessary]"];
  v2 = v3;
  pl_dispatch_once();
}

uint64_t __60__PLPhotoLibrary_postGlobalPhotoLibraryAvailableIfNecessary__block_invoke(uint64_t a1)
{
  result = +[PLIndicatorFileCoordinator systemLibraryAvailableIndicatorState];
  if ((result & 1) == 0)
  {
    v3 = PLMigrationGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Posting library available notification (after data migrator checkpoint)", v5, 2u);
    }

    [PLIndicatorFileCoordinator setSystemLibraryAvailableIndicatorState:1];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, PLGlobalPhotoLibraryAvailableNotification, 0, 0, 0);
    return [*(a1 + 32) stillAlive];
  }

  return result;
}

+ (BOOL)shouldTryFastPathWithLibraryBundle:(id)a3
{
  v3 = a3;
  if (shouldTryFastPathWithLibraryBundle__onceToken != -1)
  {
    dispatch_once(&shouldTryFastPathWithLibraryBundle__onceToken, &__block_literal_global_580);
  }

  if (shouldTryFastPathWithLibraryBundle__cameraOrPhotosApp == 1 && ([v3 sqliteErrorIndicatorFileExists] & 1) == 0)
  {
    v6 = MEMORY[0x1E69BF2A0];
    v7 = [v3 libraryURL];
    v4 = [v6 isSystemPhotoLibraryURL:v7];

    if (v4)
    {
      v4 = PLIsRunningInStoreDemoMode() ^ 1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

void __53__PLPhotoLibrary_shouldTryFastPathWithLibraryBundle___block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];

  if (([v1 isEqual:@"com.apple.camera"] & 1) != 0 || objc_msgSend(v1, "isEqual:", @"com.apple.mobileslideshow"))
  {
    shouldTryFastPathWithLibraryBundle__cameraOrPhotosApp = 1;
  }
}

+ (void)setCloudAlbumSharingEnabled:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x1E69E9840];
  v4 = PLMyPhotoStreamGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "+setCloudAlbumSharingEnabled %@", &v8, 0xCu);
  }

  v6 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  [PLCloudSharingEnablingJob enableCloudSharing:v3 withPathManager:v6];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.PreferenceChanged", 0, 0, 1u);
}

+ (void)setPhotoStreamEnabled:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  v4 = PLMyPhotoStreamGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "+setPhotoStreamEnabled %@", &v9, 0xCu);
  }

  v6 = PLMyPhotoStreamGetLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v7)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "ignoring request to enable Photo Stream", &v9, 2u);
    }
  }

  else
  {
    if (v7)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "calling assetsd to delete all streams", &v9, 2u);
    }

    v6 = +[PLAssetsSaver sharedAssetsSaver];
    [v6 deletePhotoStreamData];
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.PreferenceChanged", 0, 0, 1u);
}

+ (id)newPhotoLibraryWithName:(const char *)a3 loadedFromBundle:(id)a4 options:(id)a5 error:(id *)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a4;
  v12 = PLPhotoLibraryGetLog();
  v13 = os_signpost_id_generate(v12);
  v14 = v12;
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 136315138;
    v25 = a3;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "newPhotoLibraryWithName", "name: %s", buf, 0xCu);
  }

  v16 = [[a1 alloc] initWithName:a3 libraryBundle:v11 options:v10];
  if (v16)
  {
    if ([v16 loadDatabaseWithOptions:v10 error:a6])
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (a6)
  {
    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E69BFF48];
    v22 = *MEMORY[0x1E696A278];
    v23 = @"PLPhotoLibrary initWithName:libraryBundle:options: returned nil";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    *a6 = [v17 errorWithDomain:v18 code:45001 userInfo:v16];
LABEL_9:
  }

  v16 = 0;
LABEL_11:
  v19 = v15;
  v20 = v19;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 134217984;
    v25 = v16;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v20, OS_SIGNPOST_INTERVAL_END, v13, "newPhotoLibraryWithName", "instance: %p", buf, 0xCu);
  }

  return v16;
}

+ (id)newPhotoLibraryWithName:(const char *)a3 loadedFromURL:(id)a4 options:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = +[PLPhotoLibraryBundleController sharedBundleController];
  v13 = [v12 lookupOrCreateBundleForLibraryURL:v11];

  v14 = [a1 newPhotoLibraryWithName:a3 loadedFromBundle:v13 options:v10 error:a6];
  return v14;
}

void __49__PLPhotoLibrary_opportunisticTaskIsolationQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = pl_dispatch_queue_create_with_fallback_qos();
  v1 = sOpportunisticTaskIsolationQueue;
  sOpportunisticTaskIsolationQueue = v0;
}

+ (id)stringFromLibraryRole:(unint64_t)a3
{
  if (a3 >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@".UnknownRole(%tu)", a3];
  }

  else
  {
    v4 = off_1E7565498[a3];
  }

  return v4;
}

+ (id)_internalSystemPhotoLibrary
{
  v14 = *MEMORY[0x1E69E9840];
  if (PLIsForegroundApplication())
  {
    v2 = +[PLMainQueuePhotoLibrary systemMainQueuePhotoLibrary];
  }

  else
  {
    v3 = [MEMORY[0x1E69BF2A0] systemLibraryURL];
    v7 = 0;
    v2 = +[PLPhotoLibrary newPhotoLibraryWithName:loadedFromURL:options:error:](PLPhotoLibrary, "newPhotoLibraryWithName:loadedFromURL:options:error:", "+[PLPhotoLibrary _internalSystemPhotoLibrary]", v3, 0, &v7);
    v4 = v7;
    if (!v2)
    {
      v5 = PLBackendGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v9 = "+[PLPhotoLibrary _internalSystemPhotoLibrary]";
        v10 = 2112;
        v11 = v3;
        v12 = 2112;
        v13 = v4;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "failed to load photo library %{public}s with url %@, %@", buf, 0x20u);
      }
    }
  }

  return v2;
}

+ (id)systemMainQueuePhotoLibrary
{
  if (PLIsAssetsd())
  {
    PLSimulateCrash();
    [a1 _internalSystemPhotoLibrary];
  }

  else
  {
    +[PLMainQueuePhotoLibrary systemMainQueuePhotoLibrary];
  }
  v3 = ;

  return v3;
}

- (void)withDispatchGroup:(id)a3 performBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = [(PLPhotoLibrary *)self managedObjectContext];
  [v8 _withDispatchGroup:v7 onContext:v9 synchronously:0 shouldSave:0 refreshAfterSave:0 performTransaction:v6 completionHandler:0];
}

- (void)withDispatchGroup:(id)a3 performTransaction:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_class();
  v13 = [(PLPhotoLibrary *)self managedObjectContext];
  v12 = [(PLPhotoLibrary *)self options];
  [v11 _withDispatchGroup:v10 onContext:v13 synchronously:0 shouldSave:1 refreshAfterSave:objc_msgSend(v12 performTransaction:"refreshesAfterSave") completionHandler:{v9, v8}];
}

- (void)withDispatchGroup:(id)a3 performTransaction:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v10 = [(PLPhotoLibrary *)self managedObjectContext];
  v9 = [(PLPhotoLibrary *)self options];
  [v8 _withDispatchGroup:v7 onContext:v10 synchronously:0 shouldSave:1 refreshAfterSave:objc_msgSend(v9 performTransaction:"refreshesAfterSave") completionHandler:{v6, 0}];
}

- (void)performBlockAndWait:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = [(PLPhotoLibrary *)self managedObjectContext];
  [v8 _withDispatchGroup:0 onContext:v9 synchronously:1 shouldSave:0 refreshAfterSave:0 performTransaction:v7 completionHandler:v6];
}

- (void)performBlockAndWait:(id)a3 forceSave:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v9 = [(PLPhotoLibrary *)self managedObjectContext];
  v8 = [(PLPhotoLibrary *)self options];
  [v7 _withDispatchGroup:0 onContext:v9 synchronously:1 shouldSave:v4 refreshAfterSave:objc_msgSend(v8 performTransaction:"refreshesAfterSave") completionHandler:{v6, 0}];
}

- (void)performBlockAndWait:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(PLPhotoLibrary *)self managedObjectContext];
  [v5 _withDispatchGroup:0 onContext:v6 synchronously:1 shouldSave:0 refreshAfterSave:0 performTransaction:v4 completionHandler:0];
}

- (void)performBlock:(id)a3 completionHandler:(id)a4 withPriority:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_opt_class();
  v10 = [(PLPhotoLibrary *)self managedObjectContext];
  [v9 _withDispatchGroup:0 onContext:v10 synchronously:0 shouldSave:0 refreshAfterSave:0 performTransaction:v8 completionHandler:v7];
}

- (void)performBlock:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = [(PLPhotoLibrary *)self managedObjectContext];
  [v8 _withDispatchGroup:0 onContext:v9 synchronously:0 shouldSave:0 refreshAfterSave:0 performTransaction:v7 completionHandler:v6];
}

- (void)performBlock:(id)a3 withPriority:(int64_t)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [(PLPhotoLibrary *)self managedObjectContext];
  [v6 _withDispatchGroup:0 onContext:v7 synchronously:0 shouldSave:0 refreshAfterSave:0 performTransaction:v5 completionHandler:0];
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = [(PLPhotoLibrary *)self managedObjectContext];
  v6 = [(PLPhotoLibrary *)self options];
  [v5 _withDispatchGroup:0 onContext:v7 synchronously:0 shouldSave:0 refreshAfterSave:objc_msgSend(v6 performTransaction:"refreshesAfterSave") completionHandler:{v4, 0}];
}

- (void)performTransactionAndWait:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v10 = [(PLPhotoLibrary *)self managedObjectContext];
  v9 = [(PLPhotoLibrary *)self options];
  [v8 _withDispatchGroup:0 onContext:v10 synchronously:1 shouldSave:1 refreshAfterSave:objc_msgSend(v9 performTransaction:"refreshesAfterSave") completionHandler:{v7, v6}];
}

- (void)performTransaction:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v10 = [(PLPhotoLibrary *)self managedObjectContext];
  v9 = [(PLPhotoLibrary *)self options];
  [v8 _withDispatchGroup:0 onContext:v10 synchronously:0 shouldSave:1 refreshAfterSave:objc_msgSend(v9 performTransaction:"refreshesAfterSave") completionHandler:{v7, v6}];
}

- (void)performTransaction:(id)a3 completionHandler:(id)a4 withPriority:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_opt_class();
  v11 = [(PLPhotoLibrary *)self managedObjectContext];
  v10 = [(PLPhotoLibrary *)self options];
  [v9 _withDispatchGroup:0 onContext:v11 synchronously:0 shouldSave:1 refreshAfterSave:objc_msgSend(v10 performTransaction:"refreshesAfterSave") completionHandler:{v8, v7}];
}

- (void)performTransactionAndWait:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = [(PLPhotoLibrary *)self managedObjectContext];
  v6 = [(PLPhotoLibrary *)self options];
  [v5 _withDispatchGroup:0 onContext:v7 synchronously:1 shouldSave:1 refreshAfterSave:objc_msgSend(v6 performTransaction:"refreshesAfterSave") completionHandler:{v4, 0}];
}

- (void)performTransaction:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = [(PLPhotoLibrary *)self managedObjectContext];
  v6 = [(PLPhotoLibrary *)self options];
  [v5 _withDispatchGroup:0 onContext:v7 synchronously:0 shouldSave:1 refreshAfterSave:objc_msgSend(v6 performTransaction:"refreshesAfterSave") completionHandler:{v4, 0}];
}

- (void)performTransaction:(id)a3 withPriority:(int64_t)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  v8 = [(PLPhotoLibrary *)self managedObjectContext];
  v7 = [(PLPhotoLibrary *)self options];
  [v6 _withDispatchGroup:0 onContext:v8 synchronously:0 shouldSave:1 refreshAfterSave:objc_msgSend(v7 performTransaction:"refreshesAfterSave") completionHandler:{v5, 0}];
}

+ (id)queueStatusDescription
{
  v2 = MEMORY[0x1E696AD60];
  v3 = [a1 _debugStatisticsDescription];
  v4 = [v2 stringWithFormat:@"[megamoc] %@", v3];

  return v4;
}

+ (void)_context:(id)a3 saveFailedWithError:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to save context %@: %@", v6, v7];
  v9 = PLBackendGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v18 = v6;
    v19 = 1024;
    v20 = [v7 code];
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Failed to save context %{public}@ [%d] %@", buf, 0x1Cu);
  }

  v10 = [v7 domain];
  v11 = [v10 isEqualToString:*MEMORY[0x1E69BFF48]];

  if (!v11)
  {
    v13 = [v7 domain];
    v14 = [v13 isEqualToString:*MEMORY[0x1E695D488]];

    if (v14)
    {
      [a1 contextExecuteFailedWithSQLiteResultCode:{objc_msgSend(v7, "code")}];
      goto LABEL_16;
    }

    v15 = [v7 domain];
    v16 = [v15 isEqualToString:*MEMORY[0x1E696A250]];

    if (v16)
    {
      [a1 _contextSaveFailedWithCocoaError:v7 message:v8];
      goto LABEL_16;
    }

LABEL_15:
    [a1 _contextSaveFailedWithError:v8];
    goto LABEL_16;
  }

  v12 = [v7 code];
  if ((v12 - 41019) > 6)
  {
LABEL_13:
    if (v12 == 46005)
    {
      [a1 _contextSaveFailedWithNoPersistentStores:v7];
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (((1 << (v12 - 59)) & 0x66) == 0)
  {
    if (v12 == 41019)
    {
      [a1 _contextSaveFailedDueToChangingSPL:v7];
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  [a1 _contextSaveFailedDueToClientRequestedShutdown:v7];
LABEL_16:
}

+ (void)_contextSaveFailedDueToClientRequestedShutdown:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_FAULT, "Error attempting to save managed object context (Client requested shutdown): %@", &v5, 0xCu);
  }
}

+ (void)_contextSaveFailedDueToChangingSPL:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_FAULT, "Error attempting to save managed object context (SPL change): %@", &v5, 0xCu);
  }
}

+ (void)_contextSaveFailedWithNoPersistentStores:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_FAULT, "Error attempting to save managed object context: %@", &v5, 0xCu);
  }
}

+ (void)_contextSaveFailedWithError:(id)a3
{
  [a3 UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_contextSaveFailedWithTimeoutError:(id)a3
{
  [a3 UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_contextSaveFailedWithCocoaError:(id)a3 message:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v11 code];
  if (v7 > 1639)
  {
    if (v7 > 1689)
    {
      if (v7 <= 134029)
      {
        if (v7 == 1690)
        {
          [a1 _contextSaveFailedWithNSValidationInvalidURIError:v6];
          goto LABEL_49;
        }

        if (v7 == 132001)
        {
          [a1 _contextSaveFailedWithNSManagedObjectContextRecursiveSaveError:v6];
          goto LABEL_49;
        }
      }

      else
      {
        switch(v7)
        {
          case 134030:
            [a1 _contextSaveFailedWithNSPersistentStoreSaveError:v6];
            goto LABEL_49;
          case 134090:
            [a1 _contextSaveFailedWithNSPersistentStoreTimeoutError:v6];
            goto LABEL_49;
          case 134180:
            v8 = [v11 userInfo];
            v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695D488]];
            v10 = [v9 intValue];

            [a1 contextExecuteFailedWithSQLiteResultCode:v10];
            goto LABEL_49;
        }
      }
    }

    else if (v7 <= 1659)
    {
      if (v7 == 1640)
      {
        [a1 _contextSaveFailedWithNSValidationDateTooSoonError:v6];
        goto LABEL_49;
      }

      if (v7 == 1650)
      {
        [a1 _contextSaveFailedWithNSValidationInvalidDateError:v6];
        goto LABEL_49;
      }
    }

    else
    {
      switch(v7)
      {
        case 1660:
          [a1 _contextSaveFailedWithNSValidationStringTooLongError:v6];
          goto LABEL_49;
        case 1670:
          [a1 _contextSaveFailedWithNSValidationStringTooShortError:v6];
          goto LABEL_49;
        case 1680:
          [a1 _contextSaveFailedWithNSValidationStringPatternMatchingError:v6];
          goto LABEL_49;
      }
    }
  }

  else if (v7 > 1589)
  {
    if (v7 <= 1609)
    {
      if (v7 == 1590)
      {
        [a1 _contextSaveFailedWithNSValidationRelationshipExceedsMaximumCountError:v6];
        goto LABEL_49;
      }

      if (v7 == 1600)
      {
        [a1 _contextSaveFailedWithNSValidationRelationshipDeniedDeleteError:v6];
        goto LABEL_49;
      }
    }

    else
    {
      switch(v7)
      {
        case 1610:
          [a1 _contextSaveFailedWithNSValidationNumberTooLargeError:v6];
          goto LABEL_49;
        case 1620:
          [a1 _contextSaveFailedWithNSValidationNumberTooSmallError:v6];
          goto LABEL_49;
        case 1630:
          [a1 _contextSaveFailedWithNSValidationDateTooLateError:v6];
          goto LABEL_49;
      }
    }
  }

  else if (v7 <= 1559)
  {
    if (v7 == 1550)
    {
      [a1 _contextSaveFailedWithNSManagedObjectValidationError:v6];
      goto LABEL_49;
    }

    if (v7 == 1551)
    {
      [a1 _contextSaveFailedWithNSManagedObjectConstraintValidationError:v6];
      goto LABEL_49;
    }
  }

  else
  {
    switch(v7)
    {
      case 1560:
        [a1 _contextSaveFailedWithNSValidationMultipleErrorsError:v6];
        goto LABEL_49;
      case 1570:
        [a1 _contextSaveFailedWithNSValidationMissingMandatoryPropertyError:v6];
        goto LABEL_49;
      case 1580:
        [a1 _contextSaveFailedWithNSValidationRelationshipLacksMinimumCountError:v6];
        goto LABEL_49;
    }
  }

  [a1 _contextSaveFailedWithOtherCocoaError:v6];
LABEL_49:
}

+ (void)_contextSaveFailedWithOtherCocoaError:(id)a3
{
  [a3 UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_contextSaveFailedWithNSPersistentStoreTimeoutError:(id)a3
{
  [a3 UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_contextSaveFailedWithNSPersistentStoreSaveError:(id)a3
{
  [a3 UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_contextSaveFailedWithNSManagedObjectContextRecursiveSaveError:(id)a3
{
  [a3 UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_contextSaveFailedWithNSValidationInvalidURIError:(id)a3
{
  [a3 UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_contextSaveFailedWithNSValidationStringPatternMatchingError:(id)a3
{
  [a3 UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_contextSaveFailedWithNSValidationStringTooShortError:(id)a3
{
  [a3 UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_contextSaveFailedWithNSValidationStringTooLongError:(id)a3
{
  [a3 UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_contextSaveFailedWithNSValidationInvalidDateError:(id)a3
{
  [a3 UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_contextSaveFailedWithNSValidationDateTooSoonError:(id)a3
{
  [a3 UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_contextSaveFailedWithNSValidationDateTooLateError:(id)a3
{
  [a3 UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_contextSaveFailedWithNSValidationNumberTooSmallError:(id)a3
{
  [a3 UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_contextSaveFailedWithNSValidationNumberTooLargeError:(id)a3
{
  [a3 UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_contextSaveFailedWithNSValidationRelationshipDeniedDeleteError:(id)a3
{
  [a3 UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_contextSaveFailedWithNSValidationRelationshipExceedsMaximumCountError:(id)a3
{
  [a3 UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_contextSaveFailedWithNSValidationRelationshipLacksMinimumCountError:(id)a3
{
  [a3 UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_contextSaveFailedWithNSValidationMissingMandatoryPropertyError:(id)a3
{
  [a3 UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_contextSaveFailedWithNSValidationMultipleErrorsError:(id)a3
{
  [a3 UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_contextSaveFailedWithNSManagedObjectConstraintValidationError:(id)a3
{
  [a3 UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_contextSaveFailedWithNSManagedObjectValidationError:(id)a3
{
  [a3 UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)contextExecuteFailedWithSQLiteResultCode:(int)a3
{
  v3 = *&a3;
  v9 = *MEMORY[0x1E69E9840];
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 67109376;
    v6[1] = v3;
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Execute failure sqlite result code: %d, primary result code: %d", v6, 0xEu);
  }

  switch(v3)
  {
    case 1:
      if (v3 == 769)
      {
        [a1 _abortFromMocExecFail_NSMOC_SQLITE_ERROR_1_SQLITE_ERROR_SNAPSHOT_769_withCode:769];
      }

      else
      {
        [a1 _abortFromMocExecFail_NSMOC_SQLITE_ERROR_1_withCode:v3];
      }

      break;
    case 2:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_INTERNAL_2_withCode:v3];
      break;
    case 3:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_PERM_3_withCode:v3];
      break;
    case 4:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_ABORT_4_withCode:v3];
      break;
    case 5:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_BUSY_5_withCode:v3];
      break;
    case 6:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_LOCKED_6_withCode:v3];
      break;
    case 7:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_NOMEM_7_withCode:v3];
      break;
    case 8:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_READONLY_8_withCode:v3];
      break;
    case 9:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_INTERRUPT_9_withCode:v3];
      break;
    case 10:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_IOERR_10_withCode:v3];
      break;
    case 11:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_CORRUPT_11_withCode:v3];
      break;
    case 12:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_NOTFOUND_12_withCode:v3];
      break;
    case 13:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_FULL_13_withCode:v3];
      break;
    case 14:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_CANTOPEN_14_withCode:v3];
      break;
    case 15:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_PROTOCOL_15_withCode:v3];
      break;
    case 16:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_EMPTY_16_withCode:v3];
      break;
    case 17:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_SCHEMA_17_withCode:v3];
      break;
    case 18:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_TOOBIG_18_withCode:v3];
      break;
    case 19:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_CONSTRAINT_19_withCode:v3];
      break;
    case 20:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_MISMATCH_20_withCode:v3];
      break;
    case 21:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_MISUSE_21_withCode:v3];
      break;
    case 22:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_NOLFS_22_withCode:v3];
      break;
    case 23:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_AUTH_23_withCode:v3];
      break;
    case 24:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_FORMAT_24_withCode:v3];
      break;
    case 25:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_RANGE_25_withCode:v3];
      break;
    case 26:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_NOTADB_26_withCode:v3];
      break;
    case 27:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_NOTICE_27_withCode:v3];
      break;
    case 28:
      [a1 _abortFromMocExecFail_NSMOC_SQLITE_WARNING_28_withCode:v3];
      break;
    default:
      if (v3 == 100)
      {
        [a1 _abortFromMocExecFail_NSMOC_SQLITE_ROW_100_withCode:v3];
      }

      else if (v3 == 101)
      {
        [a1 _abortFromMocExecFail_NSMOC_SQLITE_DONE_101_withCode:v3];
      }

      else
      {
        [a1 _abortFromMocExecFail_NSMOC_SQLITE_OTHER_withCode:v3];
      }

      break;
  }
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_ERROR_1_SQLITE_ERROR_SNAPSHOT_769_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_ERROR_1_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_OTHER_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_WARNING_28_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_TOOBIG_18_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_SCHEMA_17_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_ROW_100_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_READONLY_8_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_RANGE_25_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_PROTOCOL_15_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_PERM_3_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_NOTICE_27_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_NOTFOUND_12_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_NOTADB_26_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_NOMEM_7_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_NOLFS_22_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_MISUSE_21_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_MISMATCH_20_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_LOCKED_6_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_IOERR_10_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_INTERRUPT_9_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_INTERNAL_2_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_FULL_13_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_FORMAT_24_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_EMPTY_16_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_DONE_101_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_CORRUPT_11_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_CONSTRAINT_19_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_CANTOPEN_14_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_BUSY_5_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_AUTH_23_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_abortFromMocExecFail_NSMOC_SQLITE_ABORT_4_withCode:(int)a3
{
  v3 = *&a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing crash after execute failure with sqlite result code: %d", v3];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  _os_crash();
  __break(1u);
}

+ (void)_withDispatchGroup:(id)a3 onContext:(id)a4 synchronously:(BOOL)a5 shouldSave:(BOOL)a6 refreshAfterSave:(BOOL)a7 performTransaction:(id)a8 completionHandler:(id)a9
{
  v40 = a5;
  v13 = a3;
  v14 = a4;
  v15 = a8;
  v37 = a9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __144__PLPhotoLibrary_MegaMocAdditions___withDispatchGroup_onContext_synchronously_shouldSave_refreshAfterSave_performTransaction_completionHandler___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_withDispatchGroup_onContext_synchronously_shouldSave_refreshAfterSave_performTransaction_completionHandler__s_onceToken != -1)
  {
    dispatch_once(&_withDispatchGroup_onContext_synchronously_shouldSave_refreshAfterSave_performTransaction_completionHandler__s_onceToken, block);
  }

  if (qos_class_self() == QOS_CLASS_BACKGROUND)
  {
    v16 = 0;
  }

  else
  {
    v17 = qos_class_self();
    v16 = 1;
    if (v17 != QOS_CLASS_UTILITY)
    {
      v16 = 2;
    }
  }

  v18 = (&s_megamocStatsPerQOS + 32 * v16);
  v19 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  atomic_fetch_add(v18 + 1, 1uLL);
  v20 = [v14 photoLibrary];
  v21 = PLIsAssetsd();
  if (!v21)
  {
    v22 = 0;
    if (!v13)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v22 = [MEMORY[0x1E69BF360] transaction:{"+[PLPhotoLibrary(MegaMocAdditions) _withDispatchGroup:onContext:synchronously:shouldSave:refreshAfterSave:performTransaction:completionHandler:]", v37}];
  if (v13)
  {
LABEL_11:
    dispatch_group_enter(v13);
  }

LABEL_12:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __144__PLPhotoLibrary_MegaMocAdditions___withDispatchGroup_onContext_synchronously_shouldSave_refreshAfterSave_performTransaction_completionHandler___block_invoke_2;
  aBlock[3] = &unk_1E756A978;
  v60 = a6;
  v23 = v20;
  v51 = v23;
  v24 = v15;
  v55 = v24;
  v57 = v18;
  v58 = v19;
  v25 = v14;
  v52 = v25;
  v59 = a1;
  v26 = v37;
  v56 = v26;
  v61 = a7;
  v27 = v13;
  v53 = v27;
  v28 = v22;
  v54 = v28;
  v29 = _Block_copy(aBlock);
  if (v21)
  {
    v39 = v27;
    v30 = +[PLConcurrencyLimiter sharedLimiter];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __144__PLPhotoLibrary_MegaMocAdditions___withDispatchGroup_onContext_synchronously_shouldSave_refreshAfterSave_performTransaction_completionHandler___block_invoke_92;
    v43[3] = &unk_1E756A9A0;
    v44 = v25;
    v47 = v29;
    v48 = v26;
    v31 = v30;
    v45 = v31;
    v32 = v24;
    v49 = v32;
    v33 = v23;
    v46 = v33;
    v34 = _Block_copy(v43);
    if (v40)
    {
      if (+[PLManagedObjectContext _pl_megamoc_isInPLMocPerform])
      {
        v34[2](v34);
      }

      else
      {
        [v31 sync:v34 identifyingBlock:v32 library:v33];
      }
    }

    else
    {
      [v31 async:v34 identifyingBlock:v32 library:v33];
    }

    v27 = v39;
  }

  else
  {
    if (v40)
    {
      v35 = 0;
    }

    else
    {
      v35 = 5;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v25;
      v36 = [v31 pl_performWithOptions:v35 andBlock:v29];
      if (v26 && (v36 & 1) == 0)
      {
        [v31 performWithOptions:v35 andBlock:v26];
      }
    }

    else
    {
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __144__PLPhotoLibrary_MegaMocAdditions___withDispatchGroup_onContext_synchronously_shouldSave_refreshAfterSave_performTransaction_completionHandler___block_invoke_4;
      v41[3] = &unk_1E7576AA0;
      v42 = v29;
      [v25 performWithOptions:v35 andBlock:v41];
      v31 = v42;
    }
  }
}

uint64_t __144__PLPhotoLibrary_MegaMocAdditions___withDispatchGroup_onContext_synchronously_shouldSave_refreshAfterSave_performTransaction_completionHandler___block_invoke()
{
  result = PLIsAssetsd();
  if (result)
  {
    v1 = objc_opt_class();

    return [v1 _registerStateHandler];
  }

  return result;
}

uint64_t __144__PLPhotoLibrary_MegaMocAdditions___withDispatchGroup_onContext_synchronously_shouldSave_refreshAfterSave_performTransaction_completionHandler___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(a1 + 104) == 1)
  {
    [*(a1 + 32) setPendingTransactions:{objc_msgSend(*(a1 + 32), "pendingTransactions") + 1}];
  }

  if (*(a1 + 64))
  {
    v2 = objc_autoreleasePoolPush();
    if ([*(a1 + 32) pendingTransactions] >= 2 && *(a1 + 104) == 1)
    {
      atomic_fetch_add(&s_nestedWriteTransactionCount, 1uLL);
    }

    atomic_fetch_add((*(a1 + 80) + 8), 0xFFFFFFFFFFFFFFFFLL);
    atomic_fetch_add(*(a1 + 80), clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - *(a1 + 88));
    (*(*(a1 + 64) + 16))();
    v3 = 24;
    if (*(a1 + 104))
    {
      v3 = 16;
    }

    atomic_fetch_add((*(a1 + 80) + v3), 1uLL);
    objc_autoreleasePoolPop(v2);
  }

  if (*(a1 + 104) == 1)
  {
    [*(a1 + 32) setPendingTransactions:{objc_msgSend(*(a1 + 32), "pendingTransactions") - 1}];
    if (![*(a1 + 40) hasChanges])
    {
      goto LABEL_22;
    }

    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v29 = 0;
    v6 = [v5 save:&v29];
    v7 = v29;
    if ((v6 & 1) == 0)
    {
      v8 = [*(a1 + 32) options];
      v9 = [v8 rollbackOnErrors];

      if (v9)
      {
        [*(a1 + 40) rollback];
        v10 = PLBackendGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v32 = v7;
          _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_FAULT, "Error attempting to save managed object context, rolling back due to rollbackOnErrors being set: %@", buf, 0xCu);
        }
      }

      else
      {
        [objc_opt_class() _context:*(a1 + 40) saveFailedWithError:v7];
      }
    }
  }

  else
  {
    if (![*(a1 + 40) isUserInterfaceContext])
    {
      goto LABEL_22;
    }

    v4 = objc_autoreleasePoolPush();
    [*(a1 + 40) processPendingChanges];
  }

  objc_autoreleasePoolPop(v4);
LABEL_22:
  if (*(a1 + 72))
  {
    v11 = objc_autoreleasePoolPush();
    (*(*(a1 + 72) + 16))();
    objc_autoreleasePoolPop(v11);
  }

  if (*(a1 + 104) == 1)
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = [v12 transactionCompletionHandlers];
      v14 = [v13 copy];

      [*(a1 + 32) clearTransactionCompletionHandlers];
    }

    else
    {
      v14 = 0;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        v19 = 0;
        do
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v25 + 1) + 8 * v19);
          v21 = objc_autoreleasePoolPush();
          (*(v20 + 16))(v20);
          objc_autoreleasePoolPop(v21);
          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v17);
    }

    v22 = objc_autoreleasePoolPush();
    if (*(a1 + 105) == 1)
    {
      [*(a1 + 40) refreshAllObjects];
    }

    objc_autoreleasePoolPop(v22);
  }

  v23 = *(a1 + 48);
  if (v23)
  {
    dispatch_group_leave(v23);
  }

  return [*(a1 + 56) stillAlive];
}

void __144__PLPhotoLibrary_MegaMocAdditions___withDispatchGroup_onContext_synchronously_shouldSave_refreshAfterSave_performTransaction_completionHandler___block_invoke_92(uint64_t a1)
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = *(a1 + 32);
  if (isKindOfClass)
  {
    v5 = v3;
    if (([v5 pl_performWithOptions:4 andBlock:*(a1 + 56)] & 1) == 0)
    {
      v4 = *(a1 + 64);
      if (v4)
      {
        [*(a1 + 40) sync:v4 identifyingBlock:*(a1 + 72) library:*(a1 + 48)];
      }
    }
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __144__PLPhotoLibrary_MegaMocAdditions___withDispatchGroup_onContext_synchronously_shouldSave_refreshAfterSave_performTransaction_completionHandler___block_invoke_2_94;
    v6[3] = &unk_1E7576AA0;
    v7 = *(a1 + 56);
    [v3 performWithOptions:4 andBlock:v6];
  }
}

void __144__PLPhotoLibrary_MegaMocAdditions___withDispatchGroup_onContext_synchronously_shouldSave_refreshAfterSave_performTransaction_completionHandler___block_invoke_4(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __144__PLPhotoLibrary_MegaMocAdditions___withDispatchGroup_onContext_synchronously_shouldSave_refreshAfterSave_performTransaction_completionHandler___block_invoke_5;
  v1[3] = &unk_1E7576AA0;
  v2 = *(a1 + 32);
  [PLManagedObjectContext _pl_megamoc_runWithPerformWarningsSuppressed:v1];
}

void __144__PLPhotoLibrary_MegaMocAdditions___withDispatchGroup_onContext_synchronously_shouldSave_refreshAfterSave_performTransaction_completionHandler___block_invoke_2_94(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __144__PLPhotoLibrary_MegaMocAdditions___withDispatchGroup_onContext_synchronously_shouldSave_refreshAfterSave_performTransaction_completionHandler___block_invoke_3;
  v1[3] = &unk_1E7576AA0;
  v2 = *(a1 + 32);
  [PLManagedObjectContext _pl_megamoc_runWithPerformWarningsSuppressed:v1];
}

+ (void)_registerStateHandler
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PLPhotoLibrary_MegaMocAdditions___registerStateHandler__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_registerStateHandler_s_onceToken != -1)
  {
    dispatch_once(&_registerStateHandler_s_onceToken, block);
  }
}

uint64_t __57__PLPhotoLibrary_MegaMocAdditions___registerStateHandler__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.photos.megamoc.stateHandleQueue", v0);
  v2 = _registerStateHandler_s_stateHandlerQueue;
  _registerStateHandler_s_stateHandlerQueue = v1;

  return os_state_add_handler();
}

void __56__PLPhotoLibrary_MegaMocAdditions___activateStatusTimer__block_invoke()
{
  v0 = +[PLConcurrencyLimiter sharedLimiter];
  v1 = [v0 sharedBackgroundQueue];
  v2 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v1);
  v3 = _activateStatusTimer_timer;
  _activateStatusTimer_timer = v2;

  v4 = _activateStatusTimer_timer;
  v5 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v4, v5, 0x6FC23AC00uLL, 0x5F5E100uLL);
  pl_dispatch_source_set_event_handler();
  dispatch_resume(_activateStatusTimer_timer);
}

void __56__PLPhotoLibrary_MegaMocAdditions___activateStatusTimer__block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) _debugStatisticsDescription];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "[megamoc] %@", &v4, 0xCu);
  }
}

+ (id)_debugStatisticsDescription
{
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = atomic_load(&s_currentLibraryCount);
  v4 = atomic_load(&s_totalLibraryCount);
  v5 = atomic_load(&s_nestedWriteTransactionCount);
  [v2 appendFormat:@"Library instances currently in memory: %lld, total created in the process: %lld, count of nested write transactions: %lld\n", v3, v4, v5];
  v6 = 0;
  v7 = &unk_1ED611CC0;
  do
  {
    v8 = atomic_load(v7 - 3);
    v9 = (v8 / 0x3B9ACA00);
    if (v6 == 1)
    {
      v10 = "UT";
    }

    else
    {
      v10 = "IN";
    }

    if (!v6)
    {
      v10 = "BG";
    }

    v11 = atomic_load(v7);
    v12 = atomic_load(v7 - 1);
    v13 = v12 + v11;
    v14 = atomic_load(v7);
    v15 = atomic_load(v7 - 1);
    v16 = atomic_load(v7 - 2);
    v17 = atomic_load(v7);
    v18 = atomic_load(v7 - 1);
    [v2 appendFormat:@"[%s: executed: %lld (read: %lld / write: %lld), count waiting: %lld, total wait: %g sec, average wait: %g sec]\n", v10, v13, v14, v15, v16, *&v9, v9 / (v18 + v17)];
    ++v6;
    v7 += 4;
  }

  while (v6 != 3);
  [v2 appendString:@"\n"];
  v19 = +[PLConcurrencyLimiter sharedLimiter];
  v20 = [v19 debugDescription];
  [v2 appendFormat:@"%@", v20];

  return v2;
}

+ (os_state_data_s)_stateDataWithHints:(os_state_hints_s *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3->var2 == 3)
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "Generating state data for MegaMoc...", buf, 2u);
    }

    v5 = MEMORY[0x1E696AE40];
    v6 = [a1 _stateDictionary];
    v15 = 0;
    v7 = [v5 dataWithPropertyList:v6 format:200 options:0 error:&v15];
    v8 = v15;

    if (v7)
    {
      v9 = [v7 length];
      v10 = v9;
      v11 = malloc_type_malloc(v9 + 200, 0x44237B28uLL);
      v12 = v11;
      if (!v11)
      {
LABEL_12:

        return v12;
      }

      bzero(v11, v9 + 200);
      v12->var0 = 1;
      v12->var1.var1 = v9;
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"State for MegaMoc: "];
      [v13 UTF8String];
      __strlcpy_chk();
      [v7 getBytes:v12->var4 length:v10];
    }

    else
    {
      v13 = PLBackendGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v8;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Unable to serialize state data for MegaMoc: %@", buf, 0xCu);
      }

      v12 = 0;
    }

    goto LABEL_12;
  }

  return 0;
}

+ (id)_stateDictionary
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = MEMORY[0x1E696AD98];
  v4 = atomic_load(&s_currentLibraryCount);
  v5 = [v3 numberWithUnsignedLongLong:v4];
  [v2 setObject:v5 forKeyedSubscript:@"PLPhotoLibraryCount"];

  v6 = MEMORY[0x1E696AD98];
  v7 = atomic_load(&s_totalLibraryCount);
  v8 = [v6 numberWithUnsignedLongLong:v7];
  [v2 setObject:v8 forKeyedSubscript:@"PLPhotoLibraryTotalCount"];

  v9 = MEMORY[0x1E696AD98];
  v10 = atomic_load(&s_nestedWriteTransactionCount);
  v11 = [v9 numberWithUnsignedLongLong:v10];
  [v2 setObject:v11 forKeyedSubscript:@"NestedTransactionCount"];

  v12 = 0;
  v13 = &unk_1ED611CC0;
  do
  {
    v14 = atomic_load(v13 - 3);
    v15 = (v14 / 0x3B9ACA00);
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = MEMORY[0x1E696AD98];
    v18 = atomic_load(v13);
    v19 = [v17 numberWithUnsignedLongLong:v18];
    [v16 setObject:v19 forKeyedSubscript:@"ReadBlockCount"];

    v20 = MEMORY[0x1E696AD98];
    v21 = atomic_load(v13 - 1);
    v22 = [v20 numberWithUnsignedLongLong:v21];
    [v16 setObject:v22 forKeyedSubscript:@"WriteBlockCount"];

    v23 = MEMORY[0x1E696AD98];
    v24 = atomic_load(v13);
    v25 = atomic_load(v13 - 1);
    v26 = [v23 numberWithUnsignedLongLong:v25 + v24];
    [v16 setObject:v26 forKeyedSubscript:@"TotalBlockCount"];

    v27 = MEMORY[0x1E696AD98];
    v28 = atomic_load(v13 - 2);
    v29 = [v27 numberWithUnsignedLongLong:v28];
    [v16 setObject:v29 forKeyedSubscript:@"WaitingBlockCount"];

    v30 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
    [v16 setObject:v30 forKeyedSubscript:@"TotalWaitSeconds"];

    v31 = MEMORY[0x1E696AD98];
    v32 = atomic_load(v13);
    v33 = atomic_load(v13 - 1);
    v34 = [v31 numberWithDouble:v15 / (v33 + v32)];
    [v16 setObject:v34 forKeyedSubscript:@"AverageWaitSeconds"];

    v35 = @"IN";
    if (v12 == 1)
    {
      v35 = @"UT";
    }

    if (v12)
    {
      v36 = v35;
    }

    else
    {
      v36 = @"BG";
    }

    [v2 setObject:v16 forKeyedSubscript:v36];

    ++v12;
    v13 += 4;
  }

  while (v12 != 3);
  v37 = +[PLConcurrencyLimiter sharedLimiter];
  v38 = [v37 debugDescription];
  [v2 setObject:v38 forKeyedSubscript:@"ConcurrencyLimiter"];

  return v2;
}

@end