@interface PLAssetsdLibraryInternalService
- (PLAssetsdLibraryInternalService)initWithLibraryServicesManager:(id)manager connectionAuthorization:(id)authorization;
- (unint64_t)_assetCountInManagedObjectContext:(id)context forSyncedAssets:(BOOL)assets;
- (void)assetsArePendingForDuplicateMergeProcessing:(id)processing reply:(id)reply;
- (void)availabilityStateShouldPersist:(BOOL)persist reply:(id)reply;
- (void)backgroundJobServiceRemoveAllBundleRecordsFromProcessingSet;
- (void)clearAvailabilityWithReply:(id)reply;
- (void)coreAnalyticsLibrarySummaryDataWithCompletionHandler:(id)handler;
- (void)deleteAllInitialSuggestionsWithReply:(id)reply;
- (void)deleteiTunesSyncedContentWithCompletionHandler:(id)handler;
- (void)failAvailabilityWithReply:(id)reply;
- (void)featureProcessingSnapshotWithReply:(id)reply;
- (void)forceRunBackgroundJobsOnLibraryPath:(id)path criteriaShortCode:(id)code completionHandler:(id)handler;
- (void)generateInitialSuggestionsWithStyleType:(unint64_t)type reply:(id)reply;
- (void)getAssetCountsWithReply:(id)reply;
- (void)getBackgroundJobServiceBundlesInQueueDictionaryWithReply:(id)reply;
- (void)getBackgroundJobServiceStateWithReply:(id)reply;
- (void)getBackgroundJobServiceStatusCenterDumpWithReply:(id)reply;
- (void)getLibrarySizesFromDB:(BOOL)b reply:(id)reply;
- (void)getSearchIndexProgressWithReply:(id)reply;
- (void)getSizeOfResourcesToUploadByCPLWithReply:(id)reply;
- (void)invalidateReverseLocationDataOnAllAssetsWithReply:(id)reply;
- (void)markPersonAsNeedingKeyFaceWithPersonUUID:(id)d reply:(id)reply;
- (void)mergeDuplicateAssetUuidSelection:(id)selection reply:(id)reply;
- (void)metricsForLibraryAtURL:(id)l reply:(id)reply;
- (void)pauseSearchIndexingWithReply:(id)reply;
- (void)processIdenticalDuplicatesWithProcessingType:(unint64_t)type reply:(id)reply;
- (void)readAppPrivateDataBelongingToBundleID:(id)d reply:(id)reply;
- (void)registerBackgroundJobServiceIfNecessaryOnLibraryPath:(id)path reply:(id)reply;
- (void)reloadMomentGenerationOptions;
- (void)repairMemoriesWithUUIDs:(id)ds reply:(id)reply;
- (void)resetLimitedLibraryAccessForApplication:(id)application completionHandler:(id)handler;
- (void)resumeSearchIndexingWithReply:(id)reply;
- (void)setAssetKeywords:(id)keywords forAssetUUID:(id)d reply:(id)reply;
- (void)setFetchFilterWithAssets:(id)assets forApplication:(id)application withAuditToken:(id *)token completionHandler:(id)handler;
- (void)setWidgetTimelineGeneratedForDisplaySize:(CGSize)size completionHandler:(id)handler;
- (void)signalAvailabilityWithChanges:(id)changes reply:(id)reply;
- (void)updateAssetLocationDataWithUUID:(id)d reply:(id)reply;
- (void)updateInitialSuggestionsWithIdentifiers:(id)identifiers dateLastUsed:(id)used reply:(id)reply;
- (void)waitForSearchIndexExistenceWithReply:(id)reply;
@end

@implementation PLAssetsdLibraryInternalService

- (void)signalAvailabilityWithChanges:(id)changes reply:(id)reply
{
  v25[1] = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  replyCopy = reply;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v10 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdLibraryInternalService signalAvailabilityWithChanges:reply:]"];

  if (v10)
  {
    v11 = [MEMORY[0x1E69BF360] transaction:"-[PLAssetsdLibraryInternalService signalAvailabilityWithChanges:reply:]"];
    libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    availabilityComputer = [libraryServicesManager2 availabilityComputer];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __71__PLAssetsdLibraryInternalService_signalAvailabilityWithChanges_reply___block_invoke;
    v19[3] = &unk_1E7571A90;
    v20 = changesCopy;
    selfCopy = self;
    v22 = v10;
    v23 = v11;
    v14 = v11;
    v15 = [availabilityComputer onDemandAvailabilityUpdateWithChanges:v20 forPhotoLibrary:v22 completionHandler:v19];
    replyCopy[2](replyCopy, 1, 0);

    replyCopy = v14;
  }

  else
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E69BFF48];
    v24 = *MEMORY[0x1E696A278];
    v25[0] = @"No photo library available to signal availability state change";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    availabilityComputer = [v16 errorWithDomain:v17 code:46502 userInfo:v18];

    (replyCopy)[2](replyCopy, 0, availabilityComputer);
  }
}

void __71__PLAssetsdLibraryInternalService_signalAvailabilityWithChanges_reply___block_invoke(id *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isFailure])
  {
    v4 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 error];
      v12 = 136315394;
      v13 = "[PLAssetsdLibraryInternalService signalAvailabilityWithChanges:reply:]_block_invoke";
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "%s - on-demand update failed with error: %@", &v12, 0x16u);
    }
  }

  v6 = [a1[4] shouldSignalBackgroundProcessing];
  v7 = PLGatekeeperXPCGetLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v12 = 136315138;
      v13 = "[PLAssetsdLibraryInternalService signalAvailabilityWithChanges:reply:]_block_invoke";
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "%s - will signal background processing needed", &v12, 0xCu);
    }

    v9 = [a1[5] libraryServicesManager];
    v7 = [v9 backgroundJobService];

    v10 = [a1[6] libraryBundle];
    v11 = +[PLBackgroundJobWorkerTypes maskForFeatureAvailability];
    [v7 signalBackgroundProcessingNeededOnBundle:v10 workerTypes:v11];
  }

  else if (v8)
  {
    v12 = 136315138;
    v13 = "[PLAssetsdLibraryInternalService signalAvailabilityWithChanges:reply:]_block_invoke";
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "%s - skipping signal for background processing needed", &v12, 0xCu);
  }

  [a1[7] stillAlive];
}

- (void)failAvailabilityWithReply:(id)reply
{
  v17[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v7 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdLibraryInternalService failAvailabilityWithReply:]"];

  if (v7)
  {
    libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    availabilityComputer = [libraryServicesManager2 availabilityComputer];

    v15 = 0;
    v10 = [availabilityComputer failAvailabilityForPhotoLibrary:v7 error:&v15];
    v11 = v15;
    replyCopy[2](replyCopy, v10, v11);

    replyCopy = v11;
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E69BFF48];
    v16 = *MEMORY[0x1E696A278];
    v17[0] = @"No photo library available to simulate  availability job failure";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    availabilityComputer = [v12 errorWithDomain:v13 code:46502 userInfo:v14];

    replyCopy[2](replyCopy, 0, availabilityComputer);
  }
}

- (void)clearAvailabilityWithReply:(id)reply
{
  v17[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v7 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdLibraryInternalService clearAvailabilityWithReply:]"];

  if (v7)
  {
    libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    availabilityComputer = [libraryServicesManager2 availabilityComputer];

    v15 = 0;
    v10 = [availabilityComputer clearAvailabilityStateForPhotoLibrary:v7 error:&v15];
    v11 = v15;
    replyCopy[2](replyCopy, v10, v11);

    replyCopy = v11;
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E69BFF48];
    v16 = *MEMORY[0x1E696A278];
    v17[0] = @"No photo library available to clear availability";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    availabilityComputer = [v12 errorWithDomain:v13 code:46502 userInfo:v14];

    replyCopy[2](replyCopy, 0, availabilityComputer);
  }
}

- (void)availabilityStateShouldPersist:(BOOL)persist reply:(id)reply
{
  persistCopy = persist;
  v19[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v9 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdLibraryInternalService availabilityStateShouldPersist:reply:]"];

  if (v9)
  {
    libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    availabilityComputer = [libraryServicesManager2 availabilityComputer];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__PLAssetsdLibraryInternalService_availabilityStateShouldPersist_reply___block_invoke;
    v16[3] = &unk_1E7571990;
    v17 = replyCopy;
    v12 = [availabilityComputer computeAvailabilityForPhotoLibrary:v9 shouldPersist:persistCopy completionHandler:v16];
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E69BFF48];
    v18 = *MEMORY[0x1E696A278];
    v19[0] = @"No photo library available for availability computation";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    availabilityComputer = [v13 errorWithDomain:v14 code:46502 userInfo:v15];

    (*(replyCopy + 2))(replyCopy, 0, availabilityComputer);
  }
}

void __72__PLAssetsdLibraryInternalService_availabilityStateShouldPersist_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isFailure])
  {
    v4 = *(a1 + 32);
    v6 = [v3 error];

    (*(v4 + 16))(v4, 0, v6);
  }

  else
  {
    v5 = [v3 result];

    v6 = [v5 dictionary];

    (*(*(a1 + 32) + 16))(*(a1 + 32), v6, 0);
  }
}

- (void)featureProcessingSnapshotWithReply:(id)reply
{
  v17[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v7 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdLibraryInternalService featureProcessingSnapshotWithReply:]"];

  if (v7)
  {
    libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    availabilityComputer = [libraryServicesManager2 availabilityComputer];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __70__PLAssetsdLibraryInternalService_featureProcessingSnapshotWithReply___block_invoke;
    v14[3] = &unk_1E7571990;
    v15 = replyCopy;
    v10 = [availabilityComputer computeSnapshotForPhotoLibrary:v7 completionHandler:v14];
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E69BFF48];
    v16 = *MEMORY[0x1E696A278];
    v17[0] = @"No photo library available for processing snapshot computation";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    availabilityComputer = [v11 errorWithDomain:v12 code:46502 userInfo:v13];

    (*(replyCopy + 2))(replyCopy, 0, availabilityComputer);
  }
}

void __70__PLAssetsdLibraryInternalService_featureProcessingSnapshotWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isFailure])
  {
    v4 = *(a1 + 32);
    v6 = [v3 error];

    (*(v4 + 16))(v4, 0, v6);
  }

  else
  {
    v5 = [v3 result];

    v6 = [v5 dictionary];

    (*(*(a1 + 32) + 16))(*(a1 + 32), v6, 0);
  }
}

- (void)readAppPrivateDataBelongingToBundleID:(id)d reply:(id)reply
{
  v31 = *MEMORY[0x1E69E9840];
  dCopy = d;
  replyCopy = reply;
  trustedCallerBundleID = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization trustedCallerBundleID];
  if (([trustedCallerBundleID isEqualToString:@"com.apple.mobileslideshow.photospicker"] & 1) == 0 && (objc_msgSend(trustedCallerBundleID, "isEqualToString:", @"com.apple.mobileslideshow.PhotosMessagesApp") & 1) == 0 && (objc_msgSend(trustedCallerBundleID, "isEqualToString:", @"com.apple.plphotosctl") & 1) == 0)
  {
    pathManager = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not allowed to read appPrivateData of other bundle IDs from %@", trustedCallerBundleID];
    v22 = PLBackendGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v30 = pathManager;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E69BFF48];
    v27 = *MEMORY[0x1E696A278];
    v28 = pathManager;
    v19 = MEMORY[0x1E695DF20];
    v20 = &v28;
    v21 = &v27;
    goto LABEL_16;
  }

  if (([dCopy isEqualToString:*MEMORY[0x1E69BFF18]] & 1) == 0 && (objc_msgSend(trustedCallerBundleID, "isEqualToString:", dCopy) & 1) == 0)
  {
    pathManager = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not allowed to read appPrivateData of bundle ID %@ from %@", dCopy, trustedCallerBundleID];
    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v30 = pathManager;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E69BFF48];
    v25 = *MEMORY[0x1E696A278];
    v26 = pathManager;
    v19 = MEMORY[0x1E695DF20];
    v20 = &v26;
    v21 = &v25;
LABEL_16:
    v11 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:1];
    v12 = [v17 errorWithDomain:v18 code:41005 userInfo:v11];
    replyCopy[2](replyCopy, 0, v12);
    goto LABEL_17;
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  pathManager = [libraryServicesManager pathManager];

  v11 = [MEMORY[0x1E69BF188] appPrivateDataContentsWithBundleID:dCopy pathManager:pathManager];
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E69BFF48];
    v23 = *MEMORY[0x1E696A278];
    v24 = @"appPrivateData contents is nil";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v12 = [v13 errorWithDomain:v14 code:41001 userInfo:v15];
  }

  (replyCopy)[2](replyCopy, v11, v12);
LABEL_17:
}

- (void)mergeDuplicateAssetUuidSelection:(id)selection reply:(id)reply
{
  v19[1] = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
  replyCopy = reply;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v9 = [PLDuplicateProcessor isDuplicateProcessorEnabledForLibraryServicesManager:libraryServicesManager];

  if (v9)
  {
    libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    duplicateProcessor = [libraryServicesManager2 duplicateProcessor];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__PLAssetsdLibraryInternalService_mergeDuplicateAssetUuidSelection_reply___block_invoke;
    v16[3] = &unk_1E75774A8;
    v17 = replyCopy;
    [duplicateProcessor mergeDuplicateAssetsWithAssetUUIDs:selectionCopy completionHandler:v16];

    v12 = v17;
LABEL_5:

    goto LABEL_6;
  }

  if (replyCopy)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E69BFF48];
    v18 = *MEMORY[0x1E696A578];
    v19[0] = @"invalid duplicate processing library";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v12 = [v13 errorWithDomain:v14 code:49401 userInfo:v15];

    (*(replyCopy + 2))(replyCopy, 0, v12);
    goto LABEL_5;
  }

LABEL_6:
}

uint64_t __74__PLAssetsdLibraryInternalService_mergeDuplicateAssetUuidSelection_reply___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)assetsArePendingForDuplicateMergeProcessing:(id)processing reply:(id)reply
{
  v18 = *MEMORY[0x1E69E9840];
  processingCopy = processing;
  replyCopy = reply;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v9 = [PLDuplicateProcessor isDuplicateProcessorEnabledForLibraryServicesManager:libraryServicesManager];

  if (v9)
  {
    libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    duplicateProcessor = [libraryServicesManager2 duplicateProcessor];
    v12 = [duplicateProcessor assetsArePendingForDuplicateMergeProcessing:processingCopy];

    if (!replyCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v13 = PLBackendGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    libraryServicesManager3 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    libraryURL = [libraryServicesManager3 libraryURL];
    v16 = 138412290;
    v17 = libraryURL;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Duplicate processing is not supported for library URL: %@", &v16, 0xCu);
  }

  v12 = 0;
  if (replyCopy)
  {
LABEL_7:
    replyCopy[2](replyCopy, v12);
  }

LABEL_8:
}

- (void)processIdenticalDuplicatesWithProcessingType:(unint64_t)type reply:(id)reply
{
  replyCopy = reply;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v8 = [PLDuplicateProcessor isDuplicateProcessorEnabledForLibraryServicesManager:libraryServicesManager];

  if (!v8)
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41005 userInfo:0];
    v11 = 0;
    if (!replyCopy)
    {
      goto LABEL_8;
    }

LABEL_7:
    replyCopy[2](replyCopy, v11, v12);
    goto LABEL_8;
  }

  if (type >= 7)
  {
    type = 7;
  }

  libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  duplicateProcessor = [libraryServicesManager2 duplicateProcessor];
  v13 = 0;
  v11 = [duplicateProcessor processDuplicatesOfAssetObjectIds:0 processingType:type error:&v13 continuationHandler:0];
  v12 = v13;

  if (replyCopy)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (unint64_t)_assetCountInManagedObjectContext:(id)context forSyncedAssets:(BOOL)assets
{
  assetsCopy = assets;
  v19 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695D5E0];
  contextCopy = context;
  v7 = +[PLManagedAsset entityName];
  v8 = [v5 fetchRequestWithEntityName:v7];

  v9 = MEMORY[0x1E69BF328];
  maskForFinderSyncedAsset = [MEMORY[0x1E69BF328] maskForFinderSyncedAsset];
  if (assetsCopy)
  {
    [v9 predicateForIncludeMask:maskForFinderSyncedAsset useIndex:1];
  }

  else
  {
    [v9 predicateForExcludeMask:maskForFinderSyncedAsset useIndex:1];
  }
  v11 = ;
  [v8 setPredicate:v11];
  v16 = 0;
  v12 = [contextCopy countForFetchRequest:v8 error:&v16];

  v13 = v16;
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = PLBackendGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v13;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Error getting asset count: %{public}@", buf, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

- (void)metricsForLibraryAtURL:(id)l reply:(id)reply
{
  v87 = *MEMORY[0x1E69E9840];
  lCopy = l;
  replyCopy = reply;
  v7 = PLBackendGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = lCopy;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "metricsForLibraryAtURL:%@ begin", buf, 0xCu);
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  libraryBundle = [libraryServicesManager libraryBundle];
  bundleController = [libraryBundle bundleController];
  v42 = [bundleController openBundleAtLibraryURL:lCopy];

  v11 = [PLPhotoLibraryOpener alloc];
  libraryServicesManager2 = [v42 libraryServicesManager];
  v40 = [(PLPhotoLibraryOpener *)v11 initWithLibraryServicesManager:libraryServicesManager2 reportInProgressUpgrades:0];

  v77 = 0;
  v13 = [(PLPhotoLibraryOpener *)v40 openPhotoLibraryDatabaseWithAutoUpgrade:0 autoCreate:0 error:&v77];
  v41 = v77;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  if (v13)
  {
    libraryServicesManager3 = [v42 libraryServicesManager];
    databaseContext = [libraryServicesManager3 databaseContext];
    v16 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdLibraryInternalService metricsForLibraryAtURL:reply:]"];

    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __64__PLAssetsdLibraryInternalService_metricsForLibraryAtURL_reply___block_invoke;
    v65[3] = &unk_1E7578898;
    v67 = &v73;
    v65[4] = self;
    v17 = v16;
    v66 = v17;
    v68 = &v69;
    [v17 performBlockAndWait:v65];
  }

  v18 = PLBackendGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = lCopy;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_INFO, "metricsForLibraryAtURL:%@ filesystem calculation begin", buf, 0xCu);
  }

  if (v13)
  {
    v61 = 0;
    v62 = &v61;
    v63 = 0x2020000000;
    v64 = 0;
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__75948;
    *&buf[32] = __Block_byref_object_dispose__75949;
    v86 = 0;
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __64__PLAssetsdLibraryInternalService_metricsForLibraryAtURL_reply___block_invoke_82;
    v56[3] = &unk_1E7571A40;
    v56[4] = &v61;
    v56[5] = &v57;
    v56[6] = buf;
    v38 = [v42 calculateTotalSizeWithResult:v56];
    if ((v38 & 1) == 0)
    {
      v19 = *(*&buf[8] + 40);

      v41 = v19;
    }

    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v37 = lCopy;
    if (v38)
    {
      [v42 pathManager];
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v36 = v45 = 0u;
      pathsForFinderSyncFilesystemSizeCalculation = [v36 pathsForFinderSyncFilesystemSizeCalculation];
      v21 = [pathsForFinderSyncFilesystemSizeCalculation countByEnumeratingWithState:&v44 objects:v84 count:16];
      if (v21)
      {
        v22 = *v45;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v45 != v22)
            {
              objc_enumerationMutation(pathsForFinderSyncFilesystemSizeCalculation);
            }

            v24 = *(*(&v44 + 1) + 8 * i);
            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v43[2] = __64__PLAssetsdLibraryInternalService_metricsForLibraryAtURL_reply___block_invoke_2;
            v43[3] = &unk_1E7571A68;
            v43[4] = &v52;
            v43[5] = &v48;
            [MEMORY[0x1E69BF238] calculateTotalSizeOfFilesAtPath:v24 calculatePurgeable:1 allocatedSize:0 result:v43];
          }

          v21 = [pathsForFinderSyncFilesystemSizeCalculation countByEnumeratingWithState:&v44 objects:v84 count:16];
        }

        while (v21);
      }
    }

    v82[0] = @"Photo";
    v80[0] = @"_Count";
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v74[3]];
    v81[0] = v25;
    v80[1] = @"_PhysicalSize";
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v53[3]];
    v81[1] = v26;
    v80[2] = @"_PurgeableSize";
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v49[3]];
    v81[2] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:3];
    v83[0] = v28;
    v82[1] = @"CameraRoll";
    v78[0] = @"_Count";
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v70[3]];
    v79[0] = v29;
    v78[1] = @"_PhysicalSize";
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v62[3] - v53[3]];
    v79[1] = v30;
    v78[2] = @"_PurgeableSize";
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v58[3] - v49[3]];
    v79[2] = v31;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:3];
    v83[1] = v32;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:2];

    lCopy = v37;
    _Block_object_dispose(&v48, 8);
    _Block_object_dispose(&v52, 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v57, 8);
    _Block_object_dispose(&v61, 8);
  }

  else
  {
    v33 = 0;
    v38 = 0;
  }

  v34 = PLBackendGetLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = &stru_1F0F06D80;
    *buf = 138413058;
    if (v41)
    {
      v35 = v41;
    }

    *&buf[4] = lCopy;
    *&buf[12] = 1024;
    *&buf[14] = v38;
    *&buf[18] = 2112;
    *&buf[20] = v35;
    *&buf[28] = 2112;
    *&buf[30] = v33;
    _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_INFO, "metricsForLibraryAtURL:%@ success?%d %@ %@", buf, 0x26u);
  }

  replyCopy[2](replyCopy, v33, v41);
  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v73, 8);
}

void __64__PLAssetsdLibraryInternalService_metricsForLibraryAtURL_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  *(*(*(a1 + 48) + 8) + 24) = [v2 _assetCountInManagedObjectContext:v3 forSyncedAssets:1];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) managedObjectContext];
  *(*(*(a1 + 56) + 8) + 24) = [v4 _assetCountInManagedObjectContext:v5 forSyncedAssets:0];
}

void __64__PLAssetsdLibraryInternalService_metricsForLibraryAtURL_reply___block_invoke_82(void *a1, int a2, uint64_t a3, int a4, uint64_t a5, id obj)
{
  *(*(a1[4] + 8) + 24) = a3;
  *(*(a1[5] + 8) + 24) = a5;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

uint64_t __64__PLAssetsdLibraryInternalService_metricsForLibraryAtURL_reply___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(*(*(result + 32) + 8) + 24) += a3;
  *(*(*(result + 40) + 8) + 24) += a5;
  return result;
}

- (void)coreAnalyticsLibrarySummaryDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v7 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdLibraryInternalService coreAnalyticsLibrarySummaryDataWithCompletionHandler:]"];

  v8 = [PLLibraryContentsEnumerator alloc];
  managedObjectContext = [v7 managedObjectContext];
  v10 = [(PLLibraryContentsEnumerator *)v8 initWithSourceManagedObjectContext:managedObjectContext concurrent:0 readOnly:1];

  v27 = 0;
  v11 = PLCreateShortLivedWellKnownPhotoLibrary(3, "[PLAssetsdLibraryInternalService coreAnalyticsLibrarySummaryDataWithCompletionHandler:]", &v27);
  v24 = v27;
  if (v11)
  {
    v12 = [PLLibraryContentsEnumerator alloc];
    managedObjectContext2 = [v11 managedObjectContext];
    v14 = [(PLLibraryContentsEnumerator *)v12 initWithSourceManagedObjectContext:managedObjectContext2 concurrent:0 readOnly:1];
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  isCloudPhotoLibraryEnabled = [v7 isCloudPhotoLibraryEnabled];
  [PLAggdLogging configureEnumeratorForLibrarySizeLogging:v10 cloudPhotoLibraryEnabled:isCloudPhotoLibraryEnabled dataForCA:v15 dataForCK:v16];
  [PLAggdLogging configureEnumeratorForHyperionLocalResourcesLogging:v10 cloudPhotoLibraryEnabled:isCloudPhotoLibraryEnabled dataForCA:v15 dataForCK:v16];
  libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  [PLAggdLogging configureEnumeratorForLibrarySummaryForLibraryEnumerator:v10 withSyndicationLibraryEnumerator:v14 cloudPhotoLibraryEnabled:isCloudPhotoLibraryEnabled dataForCA:v15 libraryServicesManager:libraryServicesManager2];

  v26 = 0;
  v19 = [(PLLibraryContentsEnumerator *)v10 processObjectsWithError:&v26];
  v20 = v26;
  v21 = v20;
  if (v19 && v14)
  {
    v25 = v20;
    v19 = [(PLLibraryContentsEnumerator *)v14 processObjectsWithError:&v25];
    v22 = v25;

    v21 = v22;
  }

  if (handlerCopy)
  {
    if (v19)
    {
      v23 = 0;
    }

    else
    {
      v23 = v21;
    }

    (handlerCopy)[2](handlerCopy, v19, v23, v15);
  }
}

- (void)forceRunBackgroundJobsOnLibraryPath:(id)path criteriaShortCode:(id)code completionHandler:(id)handler
{
  v57[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  codeCopy = code;
  handlerCopy = handler;
  v11 = [PLBackgroundJobCriteria criteriaWithKnownShortCode:codeCopy];
  if (!v11)
  {
    v24 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E69BFF48];
    v56 = *MEMORY[0x1E696A578];
    codeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Criteria short code not found: %@", codeCopy];
    v57[0] = codeCopy;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
    v12 = [v24 errorWithDomain:v25 code:41001 userInfo:v27];

    v28 = PLBackendGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v55 = v12;
LABEL_12:
      _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "forceRunBackgroundJobs: %{public}@", buf, 0xCu);
    }

LABEL_13:

    handlerCopy[2](handlerCopy, 0, v12);
    goto LABEL_25;
  }

  if (!pathCopy)
  {
    v29 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E69BFF48];
    v48 = *MEMORY[0x1E696A578];
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Library path is nil"];
    v49 = v31;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v12 = [v29 errorWithDomain:v30 code:41001 userInfo:v32];

    v28 = PLBackendGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v55 = v12;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy];
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  libraryBundle = [libraryServicesManager libraryBundle];
  bundleController = [libraryBundle bundleController];
  v16 = [bundleController openBundleAtLibraryURL:v12];

  if (v16)
  {
    libraryServicesManager2 = [v16 libraryServicesManager];
    backgroundJobService = [libraryServicesManager2 backgroundJobService];

    serviceState = [backgroundJobService serviceState];
    if ([PLBackgroundJobService verifyStateTransitionFromState:serviceState toState:6])
    {
      v20 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        name = [v11 name];
        *buf = 138412290;
        v55 = name;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "forceRunBackgroundJobs: Going to force background jobs to run at criteria %@", buf, 0xCu);
      }

      [backgroundJobService _finishTaskIfNeededShouldConsiderDeferring_enqueue:0];
      v22 = [MEMORY[0x1E695DFD8] setWithObject:v16];
      shortCode = [v11 shortCode];
      [backgroundJobService _appendBundleRecordsToProcessingSet:v22 criteriaShortCode:shortCode];

      [backgroundJobService _setRunningCriteria:v11];
      [backgroundJobService _startRunningBackgroundJobsWithCriteria:v11];
      handlerCopy[2](handlerCopy, 1, 0);
    }

    else
    {
      v46 = MEMORY[0x1E696ABC0];
      v47 = v16;
      v45 = *MEMORY[0x1E69BFF48];
      v52 = *MEMORY[0x1E696A578];
      v38 = MEMORY[0x1E696AEC0];
      if ((serviceState - 1) > 9)
      {
        v39 = @"Unknown";
      }

      else
      {
        v39 = off_1E756B010[serviceState - 1];
      }

      v40 = v39;
      v41 = [v38 stringWithFormat:@"BackgroundJobService is not in a valid state for forced running. It may already be in a running state or it has nothing to run. Current state: %@", v40];
      v53 = v41;
      v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v43 = [v46 errorWithDomain:v45 code:41001 userInfo:v42];

      v44 = PLBackendGetLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v55 = v43;
        _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_ERROR, "forceRunBackgroundJobs: %{public}@", buf, 0xCu);
      }

      handlerCopy[2](handlerCopy, 0, v43);
      v16 = v47;
    }
  }

  else
  {
    v33 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E69BFF48];
    v50 = *MEMORY[0x1E696A578];
    pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Library bundle is unavailable at path: %@", pathCopy];
    v51 = pathCopy;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    backgroundJobService = [v33 errorWithDomain:v34 code:41001 userInfo:v36];

    v37 = PLBackendGetLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v55 = backgroundJobService;
      _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "forceRunBackgroundJobs: %{public}@", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, 0, backgroundJobService);
  }

LABEL_25:
}

- (void)setWidgetTimelineGeneratedForDisplaySize:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v30 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v25) = enabled;
  if (enabled)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: setWidgetTimelineGeneratedForDisplaySize:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v25 + 1);
    *(&v25 + 1) = v9;

    os_activity_scope_enter(v9, (&v26 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v13 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdLibraryInternalService setWidgetTimelineGeneratedForDisplaySize:completionHandler:]"];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __94__PLAssetsdLibraryInternalService_setWidgetTimelineGeneratedForDisplaySize_completionHandler___block_invoke;
  v20[3] = &unk_1E7576A28;
  v14 = v13;
  v21 = v14;
  v23 = width;
  v24 = height;
  v15 = handlerCopy;
  v22 = v15;
  [v14 performBlock:v20];

  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v16 = PLRequestGetLog();
    v17 = v16;
    v18 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v29 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_END, v18, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

uint64_t __94__PLAssetsdLibraryInternalService_setWidgetTimelineGeneratedForDisplaySize_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) globalValues];
  [v2 setWidgetTimelineGeneratedForDisplaySize:{*(a1 + 48), *(a1 + 56)}];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)resetLimitedLibraryAccessForApplication:(id)application completionHandler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  handlerCopy = handler;
  v33 = 0u;
  *sel = 0u;
  v32 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v32) = enabled;
  if (enabled)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: resetLimitedLibraryAccessForApplication:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v32 + 1);
    *(&v32 + 1) = v9;

    os_activity_scope_enter(v9, (&v33 + 8));
  }

  v11 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = applicationCopy;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Resetting system photo library limited access filter for %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__75948;
  v38 = __Block_byref_object_dispose__75949;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  if (applicationCopy)
  {
    mEMORY[0x1E69BF2B0] = [MEMORY[0x1E69BF2B0] sharedInstance];
    [mEMORY[0x1E69BF2B0] requestLimitedLibraryPromptForApplicationIdentifier:applicationCopy];

    libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    databaseContext = [libraryServicesManager databaseContext];
    v15 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdLibraryInternalService resetLimitedLibraryAccessForApplication:completionHandler:]"];

    managedObjectContext = [v15 managedObjectContext];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __93__PLAssetsdLibraryInternalService_resetLimitedLibraryAccessForApplication_completionHandler___block_invoke;
    v23[3] = &unk_1E7578898;
    v24 = applicationCopy;
    v17 = managedObjectContext;
    v25 = v17;
    v26 = &v28;
    p_buf = &buf;
    [v17 performBlockAndWait:v23];
  }

  else
  {
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:45002 userInfo:0];
    v15 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v18;
  }

  (*(handlerCopy + 2))(handlerCopy, *(v29 + 24), *(*(&buf + 1) + 40));
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&buf, 8);

  if (v32 == 1)
  {
    os_activity_scope_leave((&v33 + 8));
  }

  if (v33)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    v21 = v33;
    if ((v33 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v20, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }
}

void __93__PLAssetsdLibraryInternalService_resetLimitedLibraryAccessForApplication_completionHandler___block_invoke(void *a1)
{
  [PLLimitedLibraryFetchFilter deleteLimitedLibraryFetchFilterWithApplicationIdentifier:a1[4] inManagedObjectContext:a1[5]];
  v2 = a1[5];
  v6 = 0;
  v3 = [v2 save:&v6];
  v4 = v6;
  v5 = v6;
  *(*(a1[6] + 8) + 24) = v3;
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[7] + 8) + 40), v4);
  }
}

- (void)setFetchFilterWithAssets:(id)assets forApplication:(id)application withAuditToken:(id *)token completionHandler:(id)handler
{
  v55 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  applicationCopy = application;
  handlerCopy = handler;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v47) = enabled;
  if (enabled)
  {
    v14 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: setFetchFilterWithAssets:forApplication:withAuditToken:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v15 = *(&v47 + 1);
    *(&v47 + 1) = v14;

    os_activity_scope_enter(v14, (&v48 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__75948;
  v53 = __Block_byref_object_dispose__75949;
  v54 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v46 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__75948;
  v43[4] = __Block_byref_object_dispose__75949;
  v44 = 0;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v18 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdLibraryInternalService setFetchFilterWithAssets:forApplication:withAuditToken:completionHandler:]"];

  v19 = [PLLimitedLibraryFetchFilter fetchFilterIdentifierForApplicationIdentifier:applicationCopy];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __108__PLAssetsdLibraryInternalService_setFetchFilterWithAssets_forApplication_withAuditToken_completionHandler___block_invoke;
  v35[3] = &unk_1E75719E0;
  v36 = v19;
  v20 = *&token->var0[4];
  v41 = *token->var0;
  v42 = v20;
  v21 = v18;
  v37 = v21;
  v22 = assetsCopy;
  v38 = v22;
  v39 = v45;
  v40 = v43;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __108__PLAssetsdLibraryInternalService_setFetchFilterWithAssets_forApplication_withAuditToken_completionHandler___block_invoke_2;
  v29[3] = &unk_1E7571A18;
  v32 = v45;
  v33 = v43;
  v23 = v36;
  v30 = v23;
  v24 = handlerCopy;
  v31 = v24;
  p_buf = &buf;
  [v21 performTransaction:v35 completionHandler:v29];

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v45, 8);
  _Block_object_dispose(&buf, 8);

  if (v47 == 1)
  {
    os_activity_scope_leave((&v48 + 8));
  }

  if (v48)
  {
    v25 = PLRequestGetLog();
    v26 = v25;
    v27 = v48;
    if ((v48 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      Name = sel_getName(*(&v49 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v26, OS_SIGNPOST_INTERVAL_END, v27, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }
}

void __108__PLAssetsdLibraryInternalService_setFetchFilterWithAssets_forApplication_withAuditToken_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = *(a1 + 88);
  v9[0] = *(a1 + 72);
  v9[1] = v4;
  v5 = [PLLimitedLibraryFetchFilter fetchOrCreateLimitedLibraryFetchFilterWithApplicationIdentifier:v2 auditToken:v9 inManagedObjectContext:v3];

  [v5 removeAllAssets];
  if ([*(a1 + 48) count])
  {
    [v5 addAssetsWithUUIDs:*(a1 + 48)];
  }

  if (v5)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v6 = [v5 objectID];
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

uint64_t __108__PLAssetsdLibraryInternalService_setFetchFilterWithAssets_forApplication_withAuditToken_completionHandler___block_invoke_2(void *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    v3 = *(*(a1[7] + 8) + 40);
    v4 = a1[4];
    v7 = @"PLLimitedLibraryFetchFiltersUpdatedNotificationApplicationIdentifier";
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v2 postNotificationName:@"PLLimitedLibraryFetchFiltersUpdatedNotification" object:v3 userInfo:v5];
  }

  return (*(a1[5] + 16))();
}

- (void)deleteiTunesSyncedContentWithCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v14 = 0u;
  *sel = 0u;
  v12 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v12) = enabled;
  if (enabled)
  {
    *(&v12 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: deleteiTunesSyncedContentWithCompletionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v12 + 1), (&v14 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v8 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdLibraryInternalService deleteiTunesSyncedContentWithCompletionHandler:]"];

  [v8 deleteITunesSyncedContentForEnablingiCPL];
  handlerCopy[2](handlerCopy, 1, 0);

  if (v13 == 1)
  {
    os_activity_scope_leave((&v14 + 8));
  }

  if (v14)
  {
    v9 = PLRequestGetLog();
    v10 = v9;
    if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v17 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_END, v14, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)backgroundJobServiceRemoveAllBundleRecordsFromProcessingSet
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  *sel = 0u;
  v9 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v9) = enabled;
  if (enabled)
  {
    *(&v9 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: backgroundJobServiceRemoveAllBundleRecordsFromProcessingSet", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v9 + 1), (&v11 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  backgroundJobService = [libraryServicesManager backgroundJobService];

  [backgroundJobService _removeAllBundlesFromProcessingSet];
  if (v10 == 1)
  {
    os_activity_scope_leave((&v11 + 8));
  }

  if (v11)
  {
    v6 = PLRequestGetLog();
    v7 = v6;
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v14 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v7, OS_SIGNPOST_INTERVAL_END, v11, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)getBackgroundJobServiceBundlesInQueueDictionaryWithReply:(id)reply
{
  v18 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v14 = 0u;
  *sel = 0u;
  v12 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v12) = enabled;
  if (enabled)
  {
    *(&v12 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getBackgroundJobServiceBundlesInQueueDictionaryWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v12 + 1), (&v14 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  backgroundJobService = [libraryServicesManager backgroundJobService];

  _bundlesToProcessByCriteriaShortCodesAsPathStrings = [backgroundJobService _bundlesToProcessByCriteriaShortCodesAsPathStrings];
  replyCopy[2](replyCopy, _bundlesToProcessByCriteriaShortCodesAsPathStrings);

  if (v13 == 1)
  {
    os_activity_scope_leave((&v14 + 8));
  }

  if (v14)
  {
    v9 = PLRequestGetLog();
    v10 = v9;
    if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v17 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_END, v14, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)getBackgroundJobServiceStatusCenterDumpWithReply:(id)reply
{
  v18 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v14 = 0u;
  *sel = 0u;
  v12 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v12) = enabled;
  if (enabled)
  {
    *(&v12 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getBackgroundJobServiceStatusCenterDumpWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v12 + 1), (&v14 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  backgroundJobService = [libraryServicesManager backgroundJobService];

  statusCenterDump = [backgroundJobService statusCenterDump];
  replyCopy[2](replyCopy, statusCenterDump);

  if (v13 == 1)
  {
    os_activity_scope_leave((&v14 + 8));
  }

  if (v14)
  {
    v9 = PLRequestGetLog();
    v10 = v9;
    if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v17 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_END, v14, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)getBackgroundJobServiceStateWithReply:(id)reply
{
  v17 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v13 = 0u;
  *sel = 0u;
  v11 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v11) = enabled;
  if (enabled)
  {
    *(&v11 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getBackgroundJobServiceStateWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v11 + 1), (&v13 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  backgroundJobService = [libraryServicesManager backgroundJobService];

  replyCopy[2](replyCopy, [backgroundJobService serviceState]);
  if (v12 == 1)
  {
    os_activity_scope_leave((&v13 + 8));
  }

  if (v13)
  {
    v8 = PLRequestGetLog();
    v9 = v8;
    if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v16 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v9, OS_SIGNPOST_INTERVAL_END, v13, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)registerBackgroundJobServiceIfNecessaryOnLibraryPath:(id)path reply:(id)reply
{
  v27 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  replyCopy = reply;
  v21 = 0u;
  *sel = 0u;
  v19 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v19) = enabled;
  if (enabled)
  {
    *(&v19 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: registerBackgroundJobServiceIfNecessaryOnLibraryPath:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v19 + 1), (&v21 + 8));
  }

  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy isDirectory:{1, v19}];
  v10 = +[PLPhotoLibraryBundleController sharedBundleController];
  v11 = [v10 bundleForLibraryURL:v9];

  if (v11)
  {
    libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    backgroundJobService = [libraryServicesManager backgroundJobService];

    [backgroundJobService signalBackgroundProcessingNeededOnBundle:v11];
    v14 = 0;
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24 = @"Bundle at path not found";
    backgroundJobService = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v14 = [v15 errorWithDomain:*MEMORY[0x1E69BFF48] code:41001 userInfo:backgroundJobService];
  }

  replyCopy[2](replyCopy, v11 != 0, v14);
  if (v20 == 1)
  {
    os_activity_scope_leave((&v21 + 8));
  }

  if (v21)
  {
    v16 = PLRequestGetLog();
    v17 = v16;
    if ((v21 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v26 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)invalidateReverseLocationDataOnAllAssetsWithReply:(id)reply
{
  v32 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v25 = 0u;
  *sel = 0u;
  v24 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v24) = enabled;
  if (enabled)
  {
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: invalidateReverseLocationDataOnAllAssetsWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v24 + 1);
    *(&v24 + 1) = v6;

    os_activity_scope_enter(v6, (&v25 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__75948;
  v30 = __Block_byref_object_dispose__75949;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v10 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdLibraryInternalService invalidateReverseLocationDataOnAllAssetsWithReply:]"];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__PLAssetsdLibraryInternalService_invalidateReverseLocationDataOnAllAssetsWithReply___block_invoke;
  v16[3] = &unk_1E7578870;
  v18 = &v20;
  v11 = v10;
  v17 = v11;
  p_buf = &buf;
  [v11 performTransactionAndWait:v16];
  (*(replyCopy + 2))(replyCopy, *(v21 + 24), *(*(&buf + 1) + 40));

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&buf, 8);

  if (v24 == 1)
  {
    os_activity_scope_leave((&v25 + 8));
  }

  if (v25)
  {
    v12 = PLRequestGetLog();
    v13 = v12;
    v14 = v25;
    if ((v25 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_END, v14, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }
}

void __85__PLAssetsdLibraryInternalService_invalidateReverseLocationDataOnAllAssetsWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [PLManagedAsset invalidateReverseLocationDataOnAllAssetsInManagedObjectContext:v2 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v4;
}

- (void)setAssetKeywords:(id)keywords forAssetUUID:(id)d reply:(id)reply
{
  v39 = *MEMORY[0x1E69E9840];
  keywordsCopy = keywords;
  dCopy = d;
  replyCopy = reply;
  v34 = 0u;
  *sel = 0u;
  v33 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v33) = enabled;
  if (enabled)
  {
    v12 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: setAssetKeywords:forAssetUUID:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = *(&v33 + 1);
    *(&v33 + 1) = v12;

    os_activity_scope_enter(v12, (&v34 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v16 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdLibraryInternalService setAssetKeywords:forAssetUUID:reply:]"];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x2020000000;
  v38 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __71__PLAssetsdLibraryInternalService_setAssetKeywords_forAssetUUID_reply___block_invoke;
  v28[3] = &unk_1E75778C0;
  p_buf = &buf;
  v17 = v16;
  v29 = v17;
  v18 = keywordsCopy;
  v30 = v18;
  v19 = dCopy;
  v31 = v19;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __71__PLAssetsdLibraryInternalService_setAssetKeywords_forAssetUUID_reply___block_invoke_2;
  v25[3] = &unk_1E7573998;
  v20 = replyCopy;
  v26 = v20;
  v27 = &buf;
  [v17 performTransaction:v28 completionHandler:v25];

  _Block_object_dispose(&buf, 8);
  if (v33 == 1)
  {
    os_activity_scope_leave((&v34 + 8));
  }

  if (v34)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    v23 = v34;
    if ((v34 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_END, v23, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }
}

void __71__PLAssetsdLibraryInternalService_setAssetKeywords_forAssetUUID_reply___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) keywordManager];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) managedObjectContext];
  *(*(*(a1 + 56) + 8) + 24) = [v5 setKeywords:v3 forAssetUUID:v2 managedObjectContext:v4];
}

- (void)deleteAllInitialSuggestionsWithReply:(id)reply
{
  replyCopy = reply;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v7 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdLibraryInternalService deleteAllInitialSuggestionsWithReply:]"];

  v9 = 0;
  v8 = [PLInitialSuggestionsStorageManager deleteInitialSuggestionsForPhotoLibrary:v7 error:&v9];
  replyCopy[2](replyCopy, v8, v9);
}

- (void)updateInitialSuggestionsWithIdentifiers:(id)identifiers dateLastUsed:(id)used reply:(id)reply
{
  replyCopy = reply;
  usedCopy = used;
  identifiersCopy = identifiers;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v13 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdLibraryInternalService updateInitialSuggestionsWithIdentifiers:dateLastUsed:reply:]"];

  v15 = 0;
  v14 = [PLInitialSuggestionsStorageManager updateInitialSuggestionsWithIdentifiers:identifiersCopy dateLastUsed:usedCopy photoLibrary:v13 error:&v15];

  replyCopy[2](replyCopy, v14, v15);
}

- (void)generateInitialSuggestionsWithStyleType:(unint64_t)type reply:(id)reply
{
  replyCopy = reply;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v9 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdLibraryInternalService generateInitialSuggestionsWithStyleType:reply:]"];

  [PLInitialSuggestionsManager generateInitialSuggestionsForPhotoLibrary:v9 styleType:type];
  replyCopy[2](replyCopy, 1, 0);
}

- (void)pauseSearchIndexingWithReply:(id)reply
{
  v21 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v17 = 0u;
  *sel = 0u;
  v15 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v15) = enabled;
  if (enabled)
  {
    *(&v15 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: pauseSearchIndexingWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v15 + 1), (&v17 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  isSearchIndexingEnabled = [libraryServicesManager isSearchIndexingEnabled];

  if (isSearchIndexingEnabled)
  {
    libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    searchIndexingEngine = [libraryServicesManager2 searchIndexingEngine];
    [searchIndexingEngine pauseSearchIndexRebuildWithSourceName:@"Service request"];

    replyCopy[2](replyCopy, 1, 0);
  }

  else
  {
    v10 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v20 = "[PLAssetsdLibraryInternalService pauseSearchIndexingWithReply:]";
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Search index disabled, unable to perform operation %s", buf, 0xCu);
    }

    if (replyCopy)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:46309 userInfo:0];
      (replyCopy)[2](replyCopy, 0, v11);
    }
  }

  if (v16 == 1)
  {
    os_activity_scope_leave((&v17 + 8));
  }

  if (v17)
  {
    v12 = PLRequestGetLog();
    v13 = v12;
    if ((v17 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v20 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)resumeSearchIndexingWithReply:(id)reply
{
  v29 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v25 = 0u;
  *sel = 0u;
  v24 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v24) = enabled;
  if (enabled)
  {
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: resumeSearchIndexingWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v24 + 1);
    *(&v24 + 1) = v6;

    os_activity_scope_enter(v6, (&v25 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  isSearchIndexingEnabled = [libraryServicesManager isSearchIndexingEnabled];

  if (isSearchIndexingEnabled)
  {
    libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    databaseContext = [libraryServicesManager2 databaseContext];
    v12 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdLibraryInternalService resumeSearchIndexingWithReply:]"];

    libraryServicesManager3 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    searchIndexingEngine = [libraryServicesManager3 searchIndexingEngine];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __65__PLAssetsdLibraryInternalService_resumeSearchIndexingWithReply___block_invoke;
    v21[3] = &unk_1E75719B8;
    v21[4] = self;
    v15 = v12;
    v22 = v15;
    v23 = replyCopy;
    [searchIndexingEngine resumeSearchIndexRebuildIfNeededForLibrary:v15 calledBy:@"Service request" completion:v21];

LABEL_9:
    goto LABEL_10;
  }

  v16 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v28 = "[PLAssetsdLibraryInternalService resumeSearchIndexingWithReply:]";
    _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Search index disabled, unable to perform operation %s", buf, 0xCu);
  }

  if (replyCopy)
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:46309 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, v15);
    goto LABEL_9;
  }

LABEL_10:
  if (v24 == 1)
  {
    os_activity_scope_leave((&v25 + 8));
  }

  if (v25)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    v19 = v25;
    if ((v25 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v28 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __65__PLAssetsdLibraryInternalService_resumeSearchIndexingWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSuccess])
  {
    v4 = [*(a1 + 32) libraryServicesManager];
    v5 = [v4 searchIndexingEngine];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__PLAssetsdLibraryInternalService_resumeSearchIndexingWithReply___block_invoke_2;
    v10[3] = &unk_1E7571990;
    v6 = *(a1 + 40);
    v11 = *(a1 + 48);
    [v5 resumeProcessingIncrementalUpdatesInLibrary:v6 completion:v10];
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [v3 isSuccess];
      v9 = [v3 error];
      (*(v7 + 16))(v7, v8, v9);
    }
  }
}

void __65__PLAssetsdLibraryInternalService_resumeSearchIndexingWithReply___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v4 = [v3 isSuccess];
    v5 = [v3 error];

    (*(v2 + 16))(v2, v4, v5);
  }
}

- (void)waitForSearchIndexExistenceWithReply:(id)reply
{
  v29 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v23 = 0u;
  *sel = 0u;
  v22 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v22) = enabled;
  if (enabled)
  {
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: waitForSearchIndexExistenceWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v22 + 1);
    *(&v22 + 1) = v6;

    os_activity_scope_enter(v6, (&v23 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  isSearchIndexingEnabled = [libraryServicesManager isSearchIndexingEnabled];

  if (isSearchIndexingEnabled)
  {
    libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    searchIndexingEngine = [libraryServicesManager2 searchIndexingEngine];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __72__PLAssetsdLibraryInternalService_waitForSearchIndexExistenceWithReply___block_invoke;
    v20[3] = &unk_1E7571990;
    v21 = replyCopy;
    [searchIndexingEngine openWithCompletion:v20];

    v12 = v21;
  }

  else
  {
    v13 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v28 = "[PLAssetsdLibraryInternalService waitForSearchIndexExistenceWithReply:]";
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Search index disabled, unable to perform operation %s", buf, 0xCu);
    }

    v14 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26 = @"search indexer not enabled";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v15 = [v14 errorWithDomain:*MEMORY[0x1E69BFF48] code:41003 userInfo:v12];
    (*(replyCopy + 2))(replyCopy, 0, v15);
  }

  if (v22 == 1)
  {
    os_activity_scope_leave((&v23 + 8));
  }

  if (v23)
  {
    v16 = PLRequestGetLog();
    v17 = v16;
    v18 = v23;
    if ((v23 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v28 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_END, v18, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __72__PLAssetsdLibraryInternalService_waitForSearchIndexExistenceWithReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 isSuccess];
  v5 = [v3 error];

  (*(v2 + 16))(v2, v4, v5);
}

- (void)getSearchIndexProgressWithReply:(id)reply
{
  v27 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v23 = 0u;
  *sel = 0u;
  v22 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v22) = enabled;
  if (enabled)
  {
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getSearchIndexProgressWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v22 + 1);
    *(&v22 + 1) = v6;

    os_activity_scope_enter(v6, (&v23 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  isSearchIndexingEnabled = [libraryServicesManager isSearchIndexingEnabled];

  if (isSearchIndexingEnabled)
  {
    libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    databaseContext = [libraryServicesManager2 databaseContext];
    v12 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdLibraryInternalService getSearchIndexProgressWithReply:]"];

    libraryServicesManager3 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    searchIndexingEngine = [libraryServicesManager3 searchIndexingEngine];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __67__PLAssetsdLibraryInternalService_getSearchIndexProgressWithReply___block_invoke;
    v20[3] = &unk_1E7571968;
    v21 = replyCopy;
    [searchIndexingEngine fetchRemainingWorkWithLibrary:v12 completion:v20];
  }

  else
  {
    v15 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "[PLAssetsdLibraryInternalService getSearchIndexProgressWithReply:]";
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Search index disabled, unable to perform operation %s", buf, 0xCu);
    }

    (*(replyCopy + 2))(replyCopy, 0, 0, 0.0);
  }

  if (v22 == 1)
  {
    os_activity_scope_leave((&v23 + 8));
  }

  if (v23)
  {
    v16 = PLRequestGetLog();
    v17 = v16;
    v18 = v23;
    if ((v23 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v26 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_END, v18, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)markPersonAsNeedingKeyFaceWithPersonUUID:(id)d reply:(id)reply
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  replyCopy = reply;
  v18 = 0u;
  *sel = 0u;
  v17 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v17) = enabled;
  if (enabled)
  {
    *(&v17 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: markPersonAsNeedingKeyFaceWithPersonUUID:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v17 + 1), (&v18 + 8));
  }

  v9 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v21 = dCopy;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "Marking person with UUID as needing key face: %@", buf, 0xCu);
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v12 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdLibraryInternalService markPersonAsNeedingKeyFaceWithPersonUUID:reply:]"];

  v13 = +[PLKeyFaceManager sharedInstance];
  [v13 markPersonAsNeedingKeyFace:dCopy photoLibrary:v12];

  replyCopy[2](replyCopy, 1, 0);
  if (v17 == 1)
  {
    os_activity_scope_leave((&v18 + 8));
  }

  if (v18)
  {
    v14 = PLRequestGetLog();
    v15 = v14;
    if ((v18 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v21 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v15, OS_SIGNPOST_INTERVAL_END, v18, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)reloadMomentGenerationOptions
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  *sel = 0u;
  v9 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v9) = enabled;
  if (enabled)
  {
    *(&v9 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: reloadMomentGenerationOptions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v9 + 1), (&v11 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  momentGenerationDataManager = [libraryServicesManager momentGenerationDataManager];
  [momentGenerationDataManager reloadGenerationOptions];

  if (v10 == 1)
  {
    os_activity_scope_leave((&v11 + 8));
  }

  if (v11)
  {
    v6 = PLRequestGetLog();
    v7 = v6;
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v14 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v7, OS_SIGNPOST_INTERVAL_END, v11, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)repairMemoriesWithUUIDs:(id)ds reply:(id)reply
{
  v30 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  replyCopy = reply;
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v25) = enabled;
  if (enabled)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: repairMemoriesWithUUIDs:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v25 + 1);
    *(&v25 + 1) = v9;

    os_activity_scope_enter(v9, (&v26 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v13 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdLibraryInternalService repairMemoriesWithUUIDs:reply:]"];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __65__PLAssetsdLibraryInternalService_repairMemoriesWithUUIDs_reply___block_invoke;
  v21[3] = &unk_1E7576F38;
  v14 = dsCopy;
  v22 = v14;
  v15 = v13;
  v23 = v15;
  v16 = replyCopy;
  v24 = v16;
  [v15 performTransaction:v21];

  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    v19 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v29 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __65__PLAssetsdLibraryInternalService_repairMemoriesWithUUIDs_reply___block_invoke(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = [PLMemory memoriesWithUUIDs:a1[4] inPhotoLibrary:a1[5]];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v18;
    v16 = *MEMORY[0x1E69BFF48];
    v6 = *MEMORY[0x1E696A578];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 keyAsset];

        if (!v9)
        {
          v10 = [v8 calculateKeyAsset];
          if (v10)
          {
            [v8 setKeyAsset:v10];
          }

          else
          {
            if (!v4)
            {
              v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"couldn't repair the key asset of memory %@ because there's no available replacement", v8];
              v12 = MEMORY[0x1E696ABC0];
              v23 = v6;
              v24 = v11;
              v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
              v4 = [v12 errorWithDomain:v16 code:41001 userInfo:v13];
            }

            v14 = PLGatekeeperXPCGetLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v22 = v8;
              _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Error repairing key asset of memory: %@", buf, 0xCu);
            }
          }
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  (*(a1[6] + 16))();
}

- (void)updateAssetLocationDataWithUUID:(id)d reply:(id)reply
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  replyCopy = reply;
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v21) = enabled;
  if (enabled)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: updateAssetLocationDataWithUUID:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v21 + 1);
    *(&v21 + 1) = v9;

    os_activity_scope_enter(v9, (&v22 + 8));
  }

  v11 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdLibraryInternalService updateAssetLocationDataWithUUID:reply:]"];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __73__PLAssetsdLibraryInternalService_updateAssetLocationDataWithUUID_reply___block_invoke;
  v18[3] = &unk_1E7578848;
  v12 = dCopy;
  v19 = v12;
  v13 = v11;
  v20 = v13;
  [v13 performBlockAndWait:v18];
  replyCopy[2](replyCopy, 0);

  if (v21 == 1)
  {
    os_activity_scope_leave((&v22 + 8));
  }

  if (v22)
  {
    v14 = PLRequestGetLog();
    v15 = v14;
    v16 = v22;
    if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v25 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v15, OS_SIGNPOST_INTERVAL_END, v16, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __73__PLAssetsdLibraryInternalService_updateAssetLocationDataWithUUID_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [PLManagedAsset assetWithUUID:v2 inManagedObjectContext:v3];

  [*(a1 + 40) modifyDCIMEntryForPhoto:v4];
}

- (void)getSizeOfResourcesToUploadByCPLWithReply:(id)reply
{
  v22 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v18 = 0u;
  *sel = 0u;
  v17 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v17) = enabled;
  if (enabled)
  {
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getSizeOfResourcesToUploadByCPLWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v17 + 1);
    *(&v17 + 1) = v6;

    os_activity_scope_enter(v6, (&v18 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  cloudPhotoLibraryManager = [libraryServicesManager cloudPhotoLibraryManager];

  v16 = 0;
  v10 = [cloudPhotoLibraryManager sizeOfResourcesToUploadByCPL:&v16];
  v11 = v16;
  replyCopy[2](replyCopy, v11 == 0, v10, v11);

  if (v17 == 1)
  {
    os_activity_scope_leave((&v18 + 8));
  }

  if (v18)
  {
    v12 = PLRequestGetLog();
    v13 = v12;
    v14 = v18;
    if ((v18 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v21 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_END, v14, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)getLibrarySizesFromDB:(BOOL)b reply:(id)reply
{
  v33 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v25) = enabled;
  if (enabled)
  {
    v8 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getLibrarySizesFromDB:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v25 + 1);
    *(&v25 + 1) = v8;

    os_activity_scope_enter(v8, (&v26 + 8));
  }

  v10 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdLibraryInternalService getLibrarySizesFromDB:reply:]"];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__75948;
  v31 = __Block_byref_object_dispose__75949;
  v32 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __63__PLAssetsdLibraryInternalService_getLibrarySizesFromDB_reply___block_invoke;
  v21[3] = &unk_1E7573CD8;
  bCopy = b;
  p_buf = &buf;
  v11 = v10;
  v22 = v11;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__PLAssetsdLibraryInternalService_getLibrarySizesFromDB_reply___block_invoke_2;
  v17[3] = &unk_1E7571940;
  v19 = &buf;
  bCopy2 = b;
  v12 = replyCopy;
  v18 = v12;
  [v11 performBlock:v21 completionHandler:v17];

  _Block_object_dispose(&buf, 8);
  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v13 = PLRequestGetLog();
    v14 = v13;
    v15 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v14, OS_SIGNPOST_INTERVAL_END, v15, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }
}

void __63__PLAssetsdLibraryInternalService_getLibrarySizesFromDB_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 librarySizesFromDB];
  }

  else
  {
    [v3 estimatedLibrarySizes];
  }
  v4 = ;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __63__PLAssetsdLibraryInternalService_getLibrarySizesFromDB_reply___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 48);
      v4 = [*(*(*(a1 + 40) + 8) + 40) description];
      *buf = 67109378;
      v13 = v3;
      v14 = 2114;
      v15 = v4;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "getLibrarySizesFromDB:%d result:%{public}@", buf, 0x12u);
    }

    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E69BFF48];
    v10 = *MEMORY[0x1E696A278];
    v11 = @"Unable to get library size";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v5 = [v6 errorWithDomain:v7 code:41001 userInfo:v8];

    v2 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 48);
      *buf = 67109378;
      v13 = v9;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "getLibrarySizesFromDB:%d error %@", buf, 0x12u);
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + 40) + 8) + 40) != 0);
}

- (void)getAssetCountsWithReply:(id)reply
{
  v23 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v19 = 0u;
  *sel = 0u;
  v18 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v18) = enabled;
  if (enabled)
  {
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getAssetCountsWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v18 + 1);
    *(&v18 + 1) = v6;

    os_activity_scope_enter(v6, (&v19 + 8));
  }

  v8 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdLibraryInternalService getAssetCountsWithReply:]"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__PLAssetsdLibraryInternalService_getAssetCountsWithReply___block_invoke;
  v15[3] = &unk_1E7577C08;
  v9 = v8;
  v16 = v9;
  v10 = replyCopy;
  v17 = v10;
  [v9 performBlock:v15];

  if (v18 == 1)
  {
    os_activity_scope_leave((&v19 + 8));
  }

  if (v19)
  {
    v11 = PLRequestGetLog();
    v12 = v11;
    v13 = v19;
    if ((v19 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v22 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __59__PLAssetsdLibraryInternalService_getAssetCountsWithReply___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5 = 0;
  if ([*(a1 + 32) getPhotoCount:&v5 videoCount:&v4 excludeTrashed:1 excludeInvisible:1 excludeCloudShared:1])
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = *MEMORY[0x1E696A578];
    v7[0] = @"Unable to get asset counts";
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41001 userInfo:v2];
    (*(*(a1 + 40) + 16))();
  }
}

- (PLAssetsdLibraryInternalService)initWithLibraryServicesManager:(id)manager connectionAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  v11.receiver = self;
  v11.super_class = PLAssetsdLibraryInternalService;
  v8 = [(PLAbstractLibraryServicesManagerService *)&v11 initWithLibraryServicesManager:manager];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connectionAuthorization, authorization);
  }

  return v9;
}

@end