@interface PLAssetsdPhotoKitService
- (BOOL)_workItems:(id)items satisfyRequestedSyncDate:(id)date;
- (BOOL)syncManager:(id)manager shouldContinueWithLibrary:(id)library;
- (PLAssetsdPhotoKitService)initWithLibraryServicesManager:(id)manager connectionAuthorization:(id)authorization;
- (id)analyzeAssets:(id)assets forFeature:(unint64_t)feature reply:(id)reply;
- (id)analyzeLibraryForFeature:(unint64_t)feature reply:(id)reply;
- (id)forceSyndicationIngestAsyncToDate:(id)date reply:(id)reply;
- (id)resetStateForMediaProcessingTaskID:(unint64_t)d assetUUIDs:(id)ds resetOptions:(unint64_t)options reply:(id)reply;
- (void)_processUniversalSearchJITForAsset:(id)asset cssiUniqueIdentifier:(id)identifier bundleID:(id)d processingTypes:(unint64_t)types completion:(id)completion;
- (void)_syncWorkItems:(id)items upToDate:(id)date syncServiceWrapper:(id)wrapper progress:(id)progress completion:(id)completion;
- (void)applyChangesRequest:(id)request reply:(id)reply;
- (void)cancelReservedCloudIdentifiers:(id)identifiers reply:(id)reply;
- (void)cancelReservedCloudIdentifiersWithEntityName:(id)name reply:(id)reply;
- (void)dealloc;
- (void)executeQueryForSyncManager:(id)manager type:(int64_t)type startDate:(id)date endDate:(id)endDate batchHandler:(id)handler completionHandler:(id)completionHandler;
- (void)executeQueryForSyncManager:(id)manager type:(int64_t)type startDate:(id)date endDate:(id)endDate itemHandler:(id)handler completionHandler:(id)completionHandler;
- (void)getPhotoLibraryIdentifierWithReply:(id)reply;
- (void)getUUIDsForAssetObjectURIs:(id)is filterPredicate:(id)predicate reply:(id)reply;
- (void)ingestItemWithCoreSpotlightUniqueIdentifier:(id)identifier bundleID:(id)d purgeUrgency:(int64_t)urgency reply:(id)reply;
- (void)processUniversalSearchJITForAssetUUID:(id)d processingTypes:(unint64_t)types reply:(id)reply;
- (void)processUniversalSearchJITForCoreSpotlightUniqueIdentifier:(id)identifier bundleID:(id)d processingTypes:(unint64_t)types reply:(id)reply;
- (void)reserveCloudIdentifiersWithEntityName:(id)name count:(unint64_t)count reply:(id)reply;
- (void)reservedCloudIdentifiersWithEntityName:(id)name reply:(id)reply;
- (void)resolveLocalIdentifiersForCloudIdentifiers:(id)identifiers reply:(id)reply;
@end

@implementation PLAssetsdPhotoKitService

- (BOOL)syncManager:(id)manager shouldContinueWithLibrary:(id)library
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLAssetsdPhotoKitService.m" lineNumber:659 description:{@"Invalid parameter not satisfying: %@", @"this code path is not expected && NO"}];

  return 1;
}

- (void)executeQueryForSyncManager:(id)manager type:(int64_t)type startDate:(id)date endDate:(id)endDate itemHandler:(id)handler completionHandler:(id)completionHandler
{
  v10 = MEMORY[0x1E696AAA8];
  completionHandlerCopy = completionHandler;
  currentHandler = [v10 currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLAssetsdPhotoKitService.m" lineNumber:653 description:{@"Invalid parameter not satisfying: %@", @"this code path is not expected && NO"}];

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:46309 userInfo:0];
  completionHandlerCopy[2](completionHandlerCopy, v13);
}

- (void)executeQueryForSyncManager:(id)manager type:(int64_t)type startDate:(id)date endDate:(id)endDate batchHandler:(id)handler completionHandler:(id)completionHandler
{
  v10 = MEMORY[0x1E696AAA8];
  completionHandlerCopy = completionHandler;
  currentHandler = [v10 currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLAssetsdPhotoKitService.m" lineNumber:647 description:{@"Invalid parameter not satisfying: %@", @"this code path is not expected && NO"}];

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:46309 userInfo:0];
  completionHandlerCopy[2](completionHandlerCopy, v13);
}

- (void)_processUniversalSearchJITForAsset:(id)asset cssiUniqueIdentifier:(id)identifier bundleID:(id)d processingTypes:(unint64_t)types completion:(id)completion
{
  v46 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  identifierCopy = identifier;
  dCopy = d;
  completionCopy = completion;
  v17 = qos_class_self();
  v18 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = PLStringFromQoSClass();
    *buf = 138412290;
    v41 = v19;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_INFO, "US JIT Processing: request QoS is %@", buf, 0xCu);
  }

  uuid = [assetCopy uuid];
  if (types)
  {
    v29 = dCopy;
    v21 = [assetCopy firstPersistedResourceMatching:&__block_literal_global_68417];
    if (v21 || ([assetCopy firstPersistedResourceMatching:&__block_literal_global_107_68418], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v22 = v21;
      v23 = objc_alloc_init(PLResourceLocalAvailabilityRequestOptions);
      [(PLResourceLocalAvailabilityRequestOptions *)v23 setNetworkAccessAllowed:1];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __120__PLAssetsdPhotoKitService__processUniversalSearchJITForAsset_cssiUniqueIdentifier_bundleID_processingTypes_completion___block_invoke_3;
      v30[3] = &unk_1E75705B0;
      v35 = a2;
      v31 = uuid;
      selfCopy = self;
      v34 = completionCopy;
      typesCopy = types;
      v33 = identifierCopy;
      v37 = v17;
      v24 = [v22 makeResourceLocallyAvailableWithOptions:v23 completion:v30];

      v25 = v31;
    }

    else
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"US JIT Processing: Unable to find target resource for asset %@", uuid];
      v27 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E69BFF48];
      v38 = *MEMORY[0x1E696A278];
      v39 = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v25 = [v27 errorWithDomain:v28 code:47017 userInfo:v23];
      (*(completionCopy + 2))(completionCopy, v25);
    }

    dCopy = v29;
  }

  else
  {
    v26 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138543874;
      v41 = identifierCopy;
      v42 = 2114;
      v43 = dCopy;
      v44 = 2114;
      v45 = uuid;
      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_INFO, "US JIT Processing: (ingest only) item %{public}@ from %{public}@ succeeded for asset %{public}@", buf, 0x20u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __120__PLAssetsdPhotoKitService__processUniversalSearchJITForAsset_cssiUniqueIdentifier_bundleID_processingTypes_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __120__PLAssetsdPhotoKitService__processUniversalSearchJITForAsset_cssiUniqueIdentifier_bundleID_processingTypes_completion___block_invoke_122;
    aBlock[3] = &unk_1E7576190;
    v24 = *(a1 + 72);
    *&v6 = *(a1 + 32);
    *(&v6 + 1) = *(a1 + 40);
    v20 = v6;
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    *&v9 = v7;
    *(&v9 + 1) = v8;
    v22 = v20;
    v23 = v9;
    v10 = _Block_copy(aBlock);
    if (qos_class_self() == *(a1 + 80))
    {
      v10[2](v10);
    }

    else
    {
      v13 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        qos_class_self();
        v14 = PLStringFromQoSClass();
        v15 = PLStringFromQoSClass();
        *buf = 138412546;
        v26 = v14;
        v27 = 2112;
        v28 = v15;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_INFO, "US JIT Processing: after making resource locally available, QoS is %@, changing to %@ before issuing MAD request", buf, 0x16u);
      }

      v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v17 = dispatch_queue_attr_make_with_qos_class(v16, *(a1 + 80), 0);
      v18 = dispatch_queue_create("MAD QoS correction queue", v17);

      dispatch_async(v18, v10);
    }
  }

  else
  {
    v11 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      *buf = 138543618;
      v26 = v12;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "US JIT Processing: failed to make medium resource locally available for asset %{public}@ : %@", buf, 0x16u);
    }

    if (!v5)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"PLAssetsdPhotoKitService.m" lineNumber:547 description:{@"Invalid parameter not satisfying: %@", @"availabilityError"}];
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __120__PLAssetsdPhotoKitService__processUniversalSearchJITForAsset_cssiUniqueIdentifier_bundleID_processingTypes_completion___block_invoke_122(uint64_t a1)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v2 = *(a1 + 64);
  v40[0] = *(a1 + 32);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  v4 = [*(a1 + 40) libraryServicesManager];
  v5 = [v4 libraryURL];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __120__PLAssetsdPhotoKitService__processUniversalSearchJITForAsset_cssiUniqueIdentifier_bundleID_processingTypes_completion___block_invoke_2_125;
  v27[3] = &unk_1E7570560;
  v27[4] = &v28;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __120__PLAssetsdPhotoKitService__processUniversalSearchJITForAsset_cssiUniqueIdentifier_bundleID_processingTypes_completion___block_invoke_127;
  v23[3] = &unk_1E7570588;
  v26 = &v28;
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v22 = *(a1 + 40);
  v8 = *(a1 + 56);
  *&v9 = v22;
  *(&v9 + 1) = v8;
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v24 = v10;
  v25 = v9;
  v11 = [PLMediaAnalysisServiceRequestAdapter requestProcessingTypes:v2 forAssetsWithLocalIdentifiers:v3 fromPhotoLibraryWithURL:v5 progressHandler:v27 completionHandler:v23];
  v29[3] = v11;

  if (v29[3])
  {
    v12 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = v29[3];
      v14 = *(a1 + 48);
      v15 = *(a1 + 32);
      *buf = 134218498;
      v35 = v13;
      v36 = 2114;
      v37 = v14;
      v38 = 2114;
      v39 = v15;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_INFO, "US JIT Processing: Dispatched MediaAnalysis request %td for item %{public}@ assetUUID %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v16 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 48);
      v18 = *(a1 + 32);
      *buf = 138543618;
      v35 = v17;
      v36 = 2114;
      v37 = v18;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "US JIT Processing: Failed to dispatch MediaAnalysis request for item %{public}@ assetUUID %{public}@", buf, 0x16u);
    }

    v19 = *(a1 + 56);
    v20 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A278];
    v33 = @"Unable to dispatch MediaAnalysis request";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v21 = [v20 errorWithDomain:*MEMORY[0x1E69BFF48] code:41003 userInfo:v12];
    (*(v19 + 16))(v19, v21);
  }

  _Block_object_dispose(&v28, 8);
}

void __120__PLAssetsdPhotoKitService__processUniversalSearchJITForAsset_cssiUniqueIdentifier_bundleID_processingTypes_completion___block_invoke_2_125(uint64_t a1, double a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(*(*(a1 + 32) + 8) + 24);
    v6 = 134218240;
    v7 = v5;
    v8 = 2048;
    v9 = a2;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_INFO, "US JIT Processing: MediaAnalysis request %td progress %f", &v6, 0x16u);
  }
}

void __120__PLAssetsdPhotoKitService__processUniversalSearchJITForAsset_cssiUniqueIdentifier_bundleID_processingTypes_completion___block_invoke_127(uint64_t a1, void *a2)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLPhotoKitGetLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(*(*(a1 + 64) + 8) + 24);
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      *buf = 134218754;
      v30 = v6;
      v31 = 2114;
      v32 = v7;
      v33 = 2114;
      v34 = v8;
      v35 = 2112;
      v36 = v3;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "US JIT Processing: MediaAnalysis request %td failed for item %{public}@ asset %{public}@: %@", buf, 0x2Au);
    }

    v9 = v3;
    goto LABEL_5;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v10 = *(*(*(a1 + 64) + 8) + 24);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    *buf = 134218498;
    v30 = v10;
    v31 = 2114;
    v32 = v11;
    v33 = 2114;
    v34 = v12;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_INFO, "US JIT Processing: MediaAnalysis request %td succeeded for item %{public}@ asset %{public}@", buf, 0x20u);
  }

  v13 = [*(a1 + 48) libraryServicesManager];
  v9 = [v13 searchIndexingEngine];

  v14 = PLPhotoKitGetLog();
  v15 = v14;
  if (v9)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      *buf = 138543618;
      v30 = v16;
      v31 = 2114;
      v32 = v17;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "US JIT Processing: Donating to CoreSpotlight item %{public}@ asset %{public}@", buf, 0x16u);
    }

    v39[0] = *(a1 + 40);
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __120__PLAssetsdPhotoKitService__processUniversalSearchJITForAsset_cssiUniqueIdentifier_bundleID_processingTypes_completion___block_invoke_128;
    v25[3] = &unk_1E7572F30;
    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    v28 = *(a1 + 56);
    v19 = [v9 indexAssetsWithUUIDs:v18 partialUpdateMask:3 completion:v25];

    goto LABEL_12;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    *buf = 138543618;
    v30 = v20;
    v31 = 2114;
    v32 = v21;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "US JIT Processing: No search indexing engine! Indexing failed for item %{public}@ asset %{public}@", buf, 0x16u);
  }

  v22 = MEMORY[0x1E696ABC0];
  v23 = *MEMORY[0x1E69BFF48];
  v37 = *MEMORY[0x1E696A278];
  v38 = @"No search index manager";
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v9 = [v22 errorWithDomain:v23 code:41008 userInfo:v24];

  if (v9)
  {
LABEL_5:
    (*(*(a1 + 56) + 16))();
LABEL_12:
  }
}

void __120__PLAssetsdPhotoKitService__processUniversalSearchJITForAsset_cssiUniqueIdentifier_bundleID_processingTypes_completion___block_invoke_128(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 isSuccess];
  v5 = PLPhotoKitGetLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = a1[4];
      v8 = a1[5];
      v14 = 138543618;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_INFO, "US JIT Processing: Donation of CoreSpotlight item %{public}@ asset %{public}@ succeeded", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v9 = a1[4];
    v10 = a1[5];
    v11 = [v3 error];
    v14 = 138543874;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "US JIT Processing: Failed to donate to CoreSpotlight item %{public}@ asset %{public}@: %@", &v14, 0x20u);
  }

  v12 = a1[6];
  v13 = [v3 error];
  (*(v12 + 16))(v12, v13);
}

- (id)resetStateForMediaProcessingTaskID:(unint64_t)d assetUUIDs:(id)ds resetOptions:(unint64_t)options reply:(id)reply
{
  v32[1] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  replyCopy = reply;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v14 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdPhotoKitService resetStateForMediaProcessingTaskID:assetUUIDs:resetOptions:reply:]"];

  if (v14)
  {
    v15 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __93__PLAssetsdPhotoKitService_resetStateForMediaProcessingTaskID_assetUUIDs_resetOptions_reply___block_invoke;
    v24[3] = &unk_1E7570538;
    v16 = v15;
    v25 = v16;
    dCopy = d;
    v26 = dsCopy;
    optionsCopy = options;
    v27 = v14;
    v28 = replyCopy;
    [v27 performTransaction:v24];
    v17 = v28;
    v18 = v16;

    v19 = v25;
    v20 = v18;
  }

  else
  {
    v21 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E69BFF48];
    v31 = *MEMORY[0x1E696A278];
    v32[0] = @"No photo library available for resetting media processing state";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v19 = [v21 errorWithDomain:v22 code:46502 userInfo:v18];
    (*(replyCopy + 2))(replyCopy, 0, v19);
    v20 = 0;
  }

  return v20;
}

void __93__PLAssetsdPhotoKitService_resetStateForMediaProcessingTaskID_assetUUIDs_resetOptions_reply___block_invoke(uint64_t a1)
{
  [*(a1 + 32) becomeCurrentWithPendingUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = 0;
  PLResetStateForMediaProcessingTaskID(v2, v4, v3, v5, &v7);
  v6 = v7;
  [*(a1 + 32) resignCurrent];
  (*(*(a1 + 56) + 16))();
}

- (id)analyzeLibraryForFeature:(unint64_t)feature reply:(id)reply
{
  v20[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v9 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdPhotoKitService analyzeLibraryForFeature:reply:]"];

  if (v9)
  {
    libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    analysisCoordinator = [libraryServicesManager2 analysisCoordinator];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59__PLAssetsdPhotoKitService_analyzeLibraryForFeature_reply___block_invoke;
    v17[3] = &unk_1E7571990;
    v18 = replyCopy;
    v12 = [analysisCoordinator analyzeLibraryForFeature:feature withCompletionHandler:v17];
    v13 = v18;
  }

  else
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E69BFF48];
    v19 = *MEMORY[0x1E696A278];
    v20[0] = @"FAILURE";
    analysisCoordinator = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v13 = [v14 errorWithDomain:v15 code:46502 userInfo:analysisCoordinator];
    (*(replyCopy + 2))(replyCopy, v13);
    v12 = 0;
  }

  return v12;
}

void __59__PLAssetsdPhotoKitService_analyzeLibraryForFeature_reply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 error];
  (*(v2 + 16))(v2, v3);
}

- (id)analyzeAssets:(id)assets forFeature:(unint64_t)feature reply:(id)reply
{
  v34[1] = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  replyCopy = reply;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v12 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdPhotoKitService analyzeAssets:forFeature:reply:]"];

  if (v12)
  {
    libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    analysisCoordinator = [libraryServicesManager2 analysisCoordinator];

    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__68460;
    v31 = __Block_byref_object_dispose__68461;
    v32 = 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __59__PLAssetsdPhotoKitService_analyzeAssets_forFeature_reply___block_invoke;
    v20[3] = &unk_1E7576658;
    v21 = assetsCopy;
    v22 = v12;
    v25 = &v27;
    v15 = analysisCoordinator;
    v23 = v15;
    featureCopy = feature;
    v24 = replyCopy;
    [v22 performBlockAndWait:v20];
    v16 = v28[5];

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v17 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E696A278];
    v34[0] = @"FAILURE";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v18 = [v17 errorWithDomain:*MEMORY[0x1E69BFF48] code:46502 userInfo:v15];
    (*(replyCopy + 2))(replyCopy, v18);

    v16 = 0;
  }

  return v16;
}

void __59__PLAssetsdPhotoKitService_analyzeAssets_forFeature_reply___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [PLManagedAsset assetsWithUUIDs:*(a1 + 32) options:0 inLibrary:*(a1 + 40)];
  v3 = [MEMORY[0x1E695DF70] array];
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

        v9 = [*(*(&v17 + 1) + 8 * v8) objectID];
        [v3 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v10 = *(a1 + 72);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__PLAssetsdPhotoKitService_analyzeAssets_forFeature_reply___block_invoke_2;
  v15[3] = &unk_1E7571990;
  v11 = *(a1 + 48);
  v16 = *(a1 + 56);
  v12 = [v11 analyzeAssets:v3 forFeature:v10 withCompletionHandler:v15];
  v13 = *(*(a1 + 64) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

void __59__PLAssetsdPhotoKitService_analyzeAssets_forFeature_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 error];
  (*(v2 + 16))(v2, v3);
}

- (void)_syncWorkItems:(id)items upToDate:(id)date syncServiceWrapper:(id)wrapper progress:(id)progress completion:(id)completion
{
  itemsCopy = items;
  dateCopy = date;
  wrapperCopy = wrapper;
  progressCopy = progress;
  completionCopy = completion;
  if ([itemsCopy count])
  {
    firstObject = [itemsCopy firstObject];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __91__PLAssetsdPhotoKitService__syncWorkItems_upToDate_syncServiceWrapper_progress_completion___block_invoke;
    v18[3] = &unk_1E7578088;
    v24 = completionCopy;
    v19 = progressCopy;
    v20 = itemsCopy;
    selfCopy = self;
    v22 = dateCopy;
    v23 = wrapperCopy;
    [v23 performWorkOnItem:firstObject completion:v18];
  }

  else
  {
    firstObject = [wrapperCopy workItemsNeedingProcessing];
    if ([(PLAssetsdPhotoKitService *)self _workItems:firstObject satisfyRequestedSyncDate:dateCopy])
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }

    else
    {
      [progressCopy setTotalUnitCount:{objc_msgSend(progressCopy, "totalUnitCount") + objc_msgSend(firstObject, "count")}];
      [(PLAssetsdPhotoKitService *)self _syncWorkItems:firstObject upToDate:dateCopy syncServiceWrapper:wrapperCopy progress:progressCopy completion:completionCopy];
    }
  }
}

void __91__PLAssetsdPhotoKitService__syncWorkItems_upToDate_syncServiceWrapper_progress_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(*(a1 + 72) + 16);

    v3();
  }

  else
  {
    [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "completedUnitCount") + 1}];
    if ([*(a1 + 32) isCancelled] && objc_msgSend(*(a1 + 40), "count") >= 2)
    {
      v4 = *(a1 + 72);
      v5 = MEMORY[0x1E696ABC0];
      v6 = *MEMORY[0x1E69BFF48];
      v11 = *MEMORY[0x1E696A278];
      v12[0] = @"operation cancelled";
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      v8 = [v5 errorWithDomain:v6 code:41031 userInfo:v7];
      (*(v4 + 16))(v4, v8);
    }

    else
    {
      v9 = *(a1 + 48);
      v10 = [*(a1 + 40) subarrayWithRange:{1, objc_msgSend(*(a1 + 40), "count") - 1}];
      [v9 _syncWorkItems:? upToDate:? syncServiceWrapper:? progress:? completion:?];
    }
  }
}

- (BOOL)_workItems:(id)items satisfyRequestedSyncDate:(id)date
{
  v24 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  dateCopy = date;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = itemsCopy;
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

        startDate = [*(*(&v19 + 1) + 8 * i) startDate];
        [startDate timeIntervalSinceReferenceDate];
        v14 = v13;
        [dateCopy timeIntervalSinceReferenceDate];
        v16 = v15;

        if (v14 <= v16)
        {
          v17 = 0;
          goto LABEL_11;
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

  v17 = 1;
LABEL_11:

  return v17;
}

- (id)forceSyndicationIngestAsyncToDate:(id)date reply:(id)reply
{
  v25[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  replyCopy = reply;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  wellKnownPhotoLibraryIdentifier = [libraryServicesManager wellKnownPhotoLibraryIdentifier];

  if (wellKnownPhotoLibraryIdentifier == 3)
  {
    v10 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:-1];
    syndicationSerialQueue = self->_syndicationSerialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__PLAssetsdPhotoKitService_forceSyndicationIngestAsyncToDate_reply___block_invoke;
    block[3] = &unk_1E7573C00;
    block[4] = self;
    v12 = v10;
    v21 = v12;
    v23 = replyCopy;
    v22 = dateCopy;
    dispatch_async(syndicationSerialQueue, block);
    v13 = v22;
    v14 = v12;

    v15 = v14;
  }

  else
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E69BFF48];
    v24 = *MEMORY[0x1E696A278];
    v25[0] = @"Forcing syndication ingest is only supported on the Syndication library";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v18 = [v16 errorWithDomain:v17 code:41008 userInfo:v14];
    (*(replyCopy + 2))(replyCopy, v18);

    v15 = 0;
  }

  return v15;
}

void __68__PLAssetsdPhotoKitService_forceSyndicationIngestAsyncToDate_reply___block_invoke(id *a1)
{
  v2 = [a1[4] libraryServicesManager];
  v3 = [v2 databaseContext];
  v4 = [v3 syndicationIngestMutex];

  v5 = a1[5];
  v23 = 0;
  v6 = [v4 tryUsingSyndicationIngestLibraryWithIdentifier:3 forceRetry:1 progress:v5 error:&v23];
  v7 = v23;
  if (v6)
  {
    SetPLSpotlightReceiverLastUpdate(a1[6]);
    v8 = [[PLSyndicationSyncServiceWrapper alloc] initWithPhotoLibrary:v6 ingestClient:3];
    v9 = [(PLSyndicationSyncServiceWrapper *)v8 workItemsNeedingProcessing];
    [a1[5] setTotalUnitCount:{objc_msgSend(v9, "count")}];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __68__PLAssetsdPhotoKitService_forceSyndicationIngestAsyncToDate_reply___block_invoke_2;
    v21[3] = &unk_1E75781E8;
    v10 = v8;
    v22 = v10;
    [a1[5] setCancellationHandler:v21];
    if ([a1[5] isCancelled])
    {
      v11 = a1[7];
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
      v11[2](v11, v12);
    }

    else
    {
      v14 = a1[5];
      v13 = a1[6];
      v15 = a1[4];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __68__PLAssetsdPhotoKitService_forceSyndicationIngestAsyncToDate_reply___block_invoke_3;
      v16[3] = &unk_1E7577FC0;
      v17 = v13;
      v18 = a1[5];
      v19 = v4;
      v20 = a1[7];
      [v15 _syncWorkItems:v9 upToDate:v17 syncServiceWrapper:v10 progress:v14 completion:v16];

      v12 = v17;
    }
  }

  else
  {
    (*(a1[7] + 2))();
  }
}

void __68__PLAssetsdPhotoKitService_forceSyndicationIngestAsyncToDate_reply___block_invoke_3(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLSyndicationGetLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v18 = 136315650;
      v19 = "[PLAssetsdPhotoKitService forceSyndicationIngestAsyncToDate:reply:]_block_invoke";
      v20 = 2114;
      v21 = v6;
      v22 = 2112;
      v23 = v3;
      v7 = "%s up to %{public}@ failed with error %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 32;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v8, v9, v7, &v18, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) completedUnitCount];
    v13 = [*(a1 + 40) totalUnitCount];
    v18 = 136315906;
    v19 = "[PLAssetsdPhotoKitService forceSyndicationIngestAsyncToDate:reply:]_block_invoke_3";
    v20 = 2112;
    v21 = v11;
    v22 = 2048;
    v23 = v12;
    v24 = 2048;
    v25 = v13;
    v7 = "%s (%@) %lld / %lld work items completed";
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 42;
    goto LABEL_6;
  }

  [*(a1 + 48) stopUsingSyndicationIngestLibraryWithIdentifier:3];
  (*(*(a1 + 56) + 16))(*(a1 + 56), v3, v14, v15, v16, v17);
}

- (void)getPhotoLibraryIdentifierWithReply:(id)reply
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
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getPhotoLibraryIdentifierWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v17 + 1);
    *(&v17 + 1) = v6;

    os_activity_scope_enter(v6, (&v18 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  libraryURL = [libraryServicesManager libraryURL];
  v16 = 0;
  v10 = [PLPhotoLibraryIdentifier photoLibraryIdentifierWithPhotoLibraryURL:libraryURL createIfMissing:1 error:&v16];
  v11 = v16;

  replyCopy[2](replyCopy, v10, v11);
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
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_END, v14, "##### %s %@ entitled:%d", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)ingestItemWithCoreSpotlightUniqueIdentifier:(id)identifier bundleID:(id)d purgeUrgency:(int64_t)urgency reply:(id)reply
{
  v69 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dCopy = d;
  replyCopy = reply;
  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v51) = enabled;
  if (enabled)
  {
    v14 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: ingestItemWithCoreSpotlightUniqueIdentifier:bundleID:purgeUrgency:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v15 = *(&v51 + 1);
    *(&v51 + 1) = v14;

    os_activity_scope_enter(v14, (&v52 + 8));
  }

  *&v64 = 0;
  *(&v64 + 1) = &v64;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__68460;
  v67 = __Block_byref_object_dispose__68461;
  v68 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__68460;
  v49 = __Block_byref_object_dispose__68461;
  v50 = 0;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  syndicationIngestMutex = [databaseContext syndicationIngestMutex];

  v19 = [syndicationIngestMutex tryUsingSyndicationIngestLibraryWithIdentifier:4 forceRetry:1];
  if (v19)
  {
    v20 = [[PLSyndicationSyncServiceWrapper alloc] initWithPhotoLibrary:v19 ingestClient:4];
    v21 = PLSyndicationGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      *&buf[4] = identifierCopy;
      *&buf[12] = 2114;
      *&buf[14] = dCopy;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_INFO, "Ingest item: sync searchable item %{public}@ from %{public}@", buf, 0x16u);
    }

    v44 = 0;
    v22 = [(PLSyndicationSyncServiceWrapper *)v20 syncSyndicationItemWithUniqueIdentifier:identifierCopy bundleID:dCopy queryType:1 error:&v44];
    v23 = v44;
    v24 = v44;
    if (!v22)
    {
      objc_storeStrong((*(&v64 + 1) + 40), v23);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v61 = 1;
    if (v22)
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __100__PLAssetsdPhotoKitService_ingestItemWithCoreSpotlightUniqueIdentifier_bundleID_purgeUrgency_reply___block_invoke;
      v35[3] = &unk_1E7570510;
      v36 = identifierCopy;
      v37 = v19;
      v40 = &v45;
      v38 = dCopy;
      v41 = buf;
      urgencyCopy = urgency;
      v39 = replyCopy;
      v42 = &v64;
      [v37 performBlockAndWait:v35];

LABEL_14:
      [syndicationIngestMutex stopUsingSyndicationIngestLibraryWithIdentifier:4];
      goto LABEL_15;
    }
  }

  else
  {
    v25 = MEMORY[0x1E696ABC0];
    v62 = *MEMORY[0x1E696A278];
    v63 = @"Unable to get PLPhotoLibrary";
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v27 = [v25 errorWithDomain:*MEMORY[0x1E69BFF48] code:41003 userInfo:v26];
    v28 = *(*(&v64 + 1) + 40);
    *(*(&v64 + 1) + 40) = v27;

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v61 = 1;
  }

  v29 = PLSyndicationGetLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = *(*(&v64 + 1) + 40);
    *v54 = 138543874;
    v55 = identifierCopy;
    v56 = 2114;
    v57 = dCopy;
    v58 = 2112;
    v59 = v30;
    _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Ingest item: failed for item %{public}@ from %{public}@: %@", v54, 0x20u);
  }

  if (v19)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (*(*&buf[8] + 24) == 1)
  {
    (*(replyCopy + 2))(replyCopy, v46[5], *(*(&v64 + 1) + 40));
  }

  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v64, 8);

  if (v51 == 1)
  {
    os_activity_scope_leave((&v52 + 8));
  }

  if (v52)
  {
    v31 = PLRequestGetLog();
    v32 = v31;
    v33 = v52;
    if ((v52 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      Name = sel_getName(*(&v53 + 1));
      LODWORD(v64) = 136446210;
      *(&v64 + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v32, OS_SIGNPOST_INTERVAL_END, v33, "##### %s %@ entitled:%d", "%{public}s", &v64, 0xCu);
    }
  }
}

void __100__PLAssetsdPhotoKitService_ingestItemWithCoreSpotlightUniqueIdentifier_bundleID_purgeUrgency_reply___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [PLManagedAsset assetWithSyndicationIdentifier:*(a1 + 32) inLibrary:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 uuid];
    v5 = *(*(a1 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = [v3 uuidDescription];
    v8 = PLSyndicationGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 48);
      *buf = 138543874;
      v28 = v7;
      v29 = 2114;
      v30 = v9;
      v31 = 2114;
      v32 = v10;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, "Ingest item: asset %{public}@ found for searchable item %{public}@ from %{public}@ ", buf, 0x20u);
    }

    *(*(*(a1 + 72) + 8) + 24) = 0;
    v11 = *(a1 + 88);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __100__PLAssetsdPhotoKitService_ingestItemWithCoreSpotlightUniqueIdentifier_bundleID_purgeUrgency_reply___block_invoke_84;
    v21[3] = &unk_1E75704E8;
    v22 = v7;
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    v23 = v12;
    v24 = v13;
    v14 = v7;
    [v3 makeOriginalResourceAvailableAndMarkPurgeableWithUrgency:v11 completion:v21];

    v15 = v22;
  }

  else
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Ingest item: Unable to find asset with syndication identifier %@", *(a1 + 32)];
    v16 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E69BFF48];
    v25 = *MEMORY[0x1E696A278];
    v26 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v18 = [v16 errorWithDomain:v17 code:41004 userInfo:v15];
    v19 = *(*(a1 + 80) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }
}

void __100__PLAssetsdPhotoKitService_ingestItemWithCoreSpotlightUniqueIdentifier_bundleID_purgeUrgency_reply___block_invoke_84(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLSyndicationGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138543618;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Mark purgeable original for asset %{public}@ failed with error %@", &v6, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)processUniversalSearchJITForAssetUUID:(id)d processingTypes:(unint64_t)types reply:(id)reply
{
  v43[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  replyCopy = reply;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__68460;
  v32 = __Block_byref_object_dispose__68461;
  v33 = 0;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v12 = [databaseContext newShortLivedLibraryWithName:"Universal Search JIT Processing"];

  if (v12)
  {
    *(v35 + 24) = 1;
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v42 = *MEMORY[0x1E696A278];
    v43[0] = @"Unable to create short-lived library";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    v15 = [v13 errorWithDomain:*MEMORY[0x1E69BFF48] code:41003 userInfo:v14];
    v16 = v29[5];
    v29[5] = v15;

    v17 = *(v35 + 24);
    if ((v17 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __88__PLAssetsdPhotoKitService_processUniversalSearchJITForAssetUUID_processingTypes_reply___block_invoke;
  v20[3] = &unk_1E75704C0;
  v21 = dCopy;
  v25 = &v34;
  v26 = &v28;
  v22 = v12;
  selfCopy = self;
  typesCopy = types;
  v24 = replyCopy;
  [v22 performBlockAndWait:v20];

  v17 = *(v35 + 24);
LABEL_5:
  if (!v17)
  {
    v18 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = v29[5];
      *buf = 138543618;
      v39 = dCopy;
      v40 = 2112;
      v41 = v19;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "US JIT Processing: failed for asset %{public}@: %@", buf, 0x16u);
    }

    (*(replyCopy + 2))(replyCopy, v29[5]);
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
}

void __88__PLAssetsdPhotoKitService_processUniversalSearchJITForAssetUUID_processingTypes_reply___block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = [PLManagedAsset assetWithUUID:*(a1 + 32) inLibrary:*(a1 + 40)];
  if (v2)
  {
    v3 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      *buf = 138543362;
      v17 = v4;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_INFO, "US JIT Processing: asset %{public}@ found", buf, 0xCu);
    }

    v5 = *(a1 + 80);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __88__PLAssetsdPhotoKitService_processUniversalSearchJITForAssetUUID_processingTypes_reply___block_invoke_83;
    v14[3] = &unk_1E7577430;
    v6 = *(a1 + 48);
    v15 = *(a1 + 56);
    [v6 _processUniversalSearchJITForAsset:v2 cssiUniqueIdentifier:0 bundleID:0 processingTypes:v5 completion:v14];
    v7 = v15;
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"US JIT Processing: Unable to find asset with uuid %@", *(a1 + 32)];
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E69BFF48];
    v18 = *MEMORY[0x1E696A278];
    v19[0] = v7;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v11 = [v8 errorWithDomain:v9 code:41004 userInfo:v10];
    v12 = *(*(a1 + 72) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

- (void)processUniversalSearchJITForCoreSpotlightUniqueIdentifier:(id)identifier bundleID:(id)d processingTypes:(unint64_t)types reply:(id)reply
{
  v68 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dCopy = d;
  replyCopy = reply;
  v53 = 0u;
  *sel = 0u;
  v52 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v52) = enabled;
  if (enabled)
  {
    v13 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: processUniversalSearchJITForCoreSpotlightUniqueIdentifier:bundleID:processingTypes:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v14 = *(&v52 + 1);
    *(&v52 + 1) = v13;

    os_activity_scope_enter(v13, (&v53 + 8));
  }

  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  *&v63 = 0;
  *(&v63 + 1) = &v63;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__68460;
  v66 = __Block_byref_object_dispose__68461;
  v67 = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3032000000;
  v46[3] = __Block_byref_object_copy__68460;
  v46[4] = __Block_byref_object_dispose__68461;
  v47 = 0;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  syndicationIngestMutex = [databaseContext syndicationIngestMutex];

  v18 = [syndicationIngestMutex tryUsingSyndicationIngestLibraryWithIdentifier:5 forceRetry:1];
  if (v18)
  {
    *(v49 + 24) = 1;
  }

  else
  {
    v19 = MEMORY[0x1E696ABC0];
    v61 = *MEMORY[0x1E696A278];
    v62 = @"Unable to get PLPhotoLibrary";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v21 = [v19 errorWithDomain:*MEMORY[0x1E69BFF48] code:41003 userInfo:v20];
    v22 = *(*(&v63 + 1) + 40);
    *(*(&v63 + 1) + 40) = v21;

    if ((v49[3] & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v23 = [[PLSyndicationSyncServiceWrapper alloc] initWithPhotoLibrary:v18 ingestClient:5];
  v24 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v56 = identifierCopy;
    v57 = 2114;
    v58 = dCopy;
    _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_INFO, "US JIT Processing: sync searchable item %{public}@ from %{public}@", buf, 0x16u);
  }

  v45 = 0;
  v25 = [(PLSyndicationSyncServiceWrapper *)v23 syncSyndicationItemWithUniqueIdentifier:identifierCopy bundleID:dCopy queryType:1 error:&v45];
  v26 = v45;
  v27 = v45;
  *(v49 + 24) = v25;
  if (!v25)
  {
    objc_storeStrong((*(&v63 + 1) + 40), v26);
  }

  if (v49[3])
  {
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __117__PLAssetsdPhotoKitService_processUniversalSearchJITForCoreSpotlightUniqueIdentifier_bundleID_processingTypes_reply___block_invoke;
    v35[3] = &unk_1E7570498;
    v36 = identifierCopy;
    v37 = v18;
    v41 = &v48;
    v42 = &v63;
    v43 = v46;
    v38 = dCopy;
    selfCopy = self;
    typesCopy = types;
    v40 = replyCopy;
    [v37 performBlockAndWait:v35];
  }

  if (v18)
  {
    [syndicationIngestMutex stopUsingSyndicationIngestLibraryWithIdentifier:5];
  }

LABEL_14:
  if ((v49[3] & 1) == 0)
  {
    v28 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = *(*(&v63 + 1) + 40);
      *buf = 138543874;
      v56 = identifierCopy;
      v57 = 2114;
      v58 = dCopy;
      v59 = 2112;
      v60 = v29;
      _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "US JIT Processing: failed for item %{public}@ from %{public}@: %@", buf, 0x20u);
    }

    (*(replyCopy + 2))(replyCopy, 0, *(*(&v63 + 1) + 40));
  }

  _Block_object_dispose(v46, 8);
  _Block_object_dispose(&v63, 8);

  _Block_object_dispose(&v48, 8);
  if (v52 == 1)
  {
    os_activity_scope_leave((&v53 + 8));
  }

  if (v53)
  {
    v30 = PLRequestGetLog();
    v31 = v30;
    v32 = v53;
    if ((v53 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      Name = sel_getName(sel[1]);
      LODWORD(v63) = 136446210;
      *(&v63 + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v31, OS_SIGNPOST_INTERVAL_END, v32, "##### %s %@ entitled:%d", "%{public}s", &v63, 0xCu);
    }
  }
}

void __117__PLAssetsdPhotoKitService_processUniversalSearchJITForCoreSpotlightUniqueIdentifier_bundleID_processingTypes_reply___block_invoke(uint64_t a1)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v2 = [PLManagedAsset assetWithSyndicationIdentifier:*(a1 + 32) inLibrary:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 uuid];
    v5 = *(*(a1 + 88) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(*(*(a1 + 88) + 8) + 40);
      v9 = *(a1 + 32);
      v10 = *(a1 + 48);
      *buf = 138543874;
      v26 = v8;
      v27 = 2114;
      v28 = v9;
      v29 = 2114;
      v30 = v10;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "US JIT Processing: asset %{public}@ found for searchable item %{public}@ from %{public}@ ", buf, 0x20u);
    }

    v11 = *(a1 + 32);
    v13 = *(a1 + 48);
    v12 = *(a1 + 56);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __117__PLAssetsdPhotoKitService_processUniversalSearchJITForCoreSpotlightUniqueIdentifier_bundleID_processingTypes_reply___block_invoke_73;
    v22[3] = &unk_1E7570470;
    v14 = *(a1 + 96);
    v24 = *(a1 + 88);
    v23 = *(a1 + 64);
    [v12 _processUniversalSearchJITForAsset:v3 cssiUniqueIdentifier:v11 bundleID:v13 processingTypes:v14 completion:v22];
    v15 = v23;
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"US JIT Processing: Unable to find asset with syndication identifier %@", *(a1 + 32)];
    v16 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E69BFF48];
    v31 = *MEMORY[0x1E696A278];
    v32[0] = v15;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v19 = [v16 errorWithDomain:v17 code:41004 userInfo:v18];
    v20 = *(*(a1 + 80) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }
}

void __117__PLAssetsdPhotoKitService_processUniversalSearchJITForCoreSpotlightUniqueIdentifier_bundleID_processingTypes_reply___block_invoke_73(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getUUIDsForAssetObjectURIs:(id)is filterPredicate:(id)predicate reply:(id)reply
{
  v41 = *MEMORY[0x1E69E9840];
  isCopy = is;
  predicateCopy = predicate;
  replyCopy = reply;
  v34 = 0u;
  *sel = 0u;
  v33 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v33) = enabled;
  if (enabled)
  {
    v12 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getUUIDsForAssetObjectURIs:filterPredicate:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = *(&v33 + 1);
    *(&v33 + 1) = v12;

    os_activity_scope_enter(v12, (&v34 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__68460;
  v39 = __Block_byref_object_dispose__68461;
  v40 = 0;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v16 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdPhotoKitService getUUIDsForAssetObjectURIs:filterPredicate:reply:]"];

  managedObjectContext = [v16 managedObjectContext];
  persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __77__PLAssetsdPhotoKitService_getUUIDsForAssetObjectURIs_filterPredicate_reply___block_invoke;
  v31[3] = &unk_1E75784F0;
  v19 = persistentStoreCoordinator;
  v32 = v19;
  v20 = [isCopy _pl_map:v31];
  v30 = 0;
  v21 = [PLManagedAsset assetUUIDsByObjectIDs:v20 withFilterPredicate:predicateCopy context:managedObjectContext error:&v30];
  v22 = v30;
  if (v21)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v24 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = dictionary;

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __77__PLAssetsdPhotoKitService_getUUIDsForAssetObjectURIs_filterPredicate_reply___block_invoke_2;
    v29[3] = &unk_1E7570448;
    v29[4] = &buf;
    [v21 enumerateKeysAndObjectsUsingBlock:v29];
  }

  replyCopy[2](replyCopy, *(*(&buf + 1) + 40), v22);

  _Block_object_dispose(&buf, 8);
  if (v33 == 1)
  {
    os_activity_scope_leave((&v34 + 8));
  }

  if (v34)
  {
    v25 = PLRequestGetLog();
    v26 = v25;
    v27 = v34;
    if ((v34 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v26, OS_SIGNPOST_INTERVAL_END, v27, "##### %s %@ entitled:%d", "%{public}s", &buf, 0xCu);
    }
  }
}

void __77__PLAssetsdPhotoKitService_getUUIDsForAssetObjectURIs_filterPredicate_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 URIRepresentation];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v5 forKey:v6];
}

- (void)cancelReservedCloudIdentifiers:(id)identifiers reply:(id)reply
{
  v26 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  replyCopy = reply;
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v21) = enabled;
  if (enabled)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: cancelReservedCloudIdentifiers:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v21 + 1);
    *(&v21 + 1) = v9;

    os_activity_scope_enter(v9, (&v22 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  cloudIdentifierReservationSupport = [libraryServicesManager cloudIdentifierReservationSupport];

  clientBundleID = [(PLAssetsdPhotoKitService *)self clientBundleID];
  v20 = 0;
  v14 = [cloudIdentifierReservationSupport cancelReservedCloudIdentifiers:identifiersCopy clientBundleIdentifier:clientBundleID error:&v20];
  v15 = v20;

  replyCopy[2](replyCopy, v14, v15);
  if (v21 == 1)
  {
    os_activity_scope_leave((&v22 + 8));
  }

  if (v22)
  {
    v16 = PLRequestGetLog();
    v17 = v16;
    v18 = v22;
    if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v25 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_END, v18, "##### %s %@ entitled:%d", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)cancelReservedCloudIdentifiersWithEntityName:(id)name reply:(id)reply
{
  v26 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  replyCopy = reply;
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v21) = enabled;
  if (enabled)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: cancelReservedCloudIdentifiersWithEntityName:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v21 + 1);
    *(&v21 + 1) = v9;

    os_activity_scope_enter(v9, (&v22 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  cloudIdentifierReservationSupport = [libraryServicesManager cloudIdentifierReservationSupport];

  clientBundleID = [(PLAssetsdPhotoKitService *)self clientBundleID];
  v20 = 0;
  v14 = [cloudIdentifierReservationSupport cancelReservedCloudIdentifiersWithEntityName:nameCopy clientBundleIdentifier:clientBundleID error:&v20];
  v15 = v20;

  replyCopy[2](replyCopy, v14, v15);
  if (v21 == 1)
  {
    os_activity_scope_leave((&v22 + 8));
  }

  if (v22)
  {
    v16 = PLRequestGetLog();
    v17 = v16;
    v18 = v22;
    if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v25 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_END, v18, "##### %s %@ entitled:%d", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)reservedCloudIdentifiersWithEntityName:(id)name reply:(id)reply
{
  v26 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  replyCopy = reply;
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v21) = enabled;
  if (enabled)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: reservedCloudIdentifiersWithEntityName:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v21 + 1);
    *(&v21 + 1) = v9;

    os_activity_scope_enter(v9, (&v22 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  cloudIdentifierReservationSupport = [libraryServicesManager cloudIdentifierReservationSupport];

  clientBundleID = [(PLAssetsdPhotoKitService *)self clientBundleID];
  v20 = 0;
  v14 = [cloudIdentifierReservationSupport reservedCloudIdentifierUUIDsWithEntityName:nameCopy clientBundleIdentifier:clientBundleID error:&v20];
  v15 = v20;

  replyCopy[2](replyCopy, v14, v15);
  if (v21 == 1)
  {
    os_activity_scope_leave((&v22 + 8));
  }

  if (v22)
  {
    v16 = PLRequestGetLog();
    v17 = v16;
    v18 = v22;
    if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v25 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_END, v18, "##### %s %@ entitled:%d", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)reserveCloudIdentifiersWithEntityName:(id)name count:(unint64_t)count reply:(id)reply
{
  v28 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  replyCopy = reply;
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v23) = enabled;
  if (enabled)
  {
    v11 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: reserveCloudIdentifiersWithEntityName:count:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v12 = *(&v23 + 1);
    *(&v23 + 1) = v11;

    os_activity_scope_enter(v11, (&v24 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  cloudIdentifierReservationSupport = [libraryServicesManager cloudIdentifierReservationSupport];

  clientBundleID = [(PLAssetsdPhotoKitService *)self clientBundleID];
  v22 = 0;
  v16 = [cloudIdentifierReservationSupport reserveCloudIdentifierUUIDsWithEntityName:nameCopy count:count clientBundleIdentifier:clientBundleID error:&v22];
  v17 = v22;

  replyCopy[2](replyCopy, v16, v17);
  if (v23 == 1)
  {
    os_activity_scope_leave((&v24 + 8));
  }

  if (v24)
  {
    v18 = PLRequestGetLog();
    v19 = v18;
    v20 = v24;
    if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v27 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v19, OS_SIGNPOST_INTERVAL_END, v20, "##### %s %@ entitled:%d", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)resolveLocalIdentifiersForCloudIdentifiers:(id)identifiers reply:(id)reply
{
  v27 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  replyCopy = reply;
  v23 = 0u;
  *sel = 0u;
  v22 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v22) = enabled;
  if (enabled)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: resolveLocalIdentifiersForCloudIdentifiers:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v22 + 1);
    *(&v22 + 1) = v9;

    os_activity_scope_enter(v9, (&v23 + 8));
  }

  v11 = [PLCloudPhotoLibraryError createErrorWithType:15 withDebugMessage:@"iCloud Photo Library not enabled"];
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  isCloudPhotoLibraryEnabled = [libraryServicesManager isCloudPhotoLibraryEnabled];

  if (isCloudPhotoLibraryEnabled)
  {
    libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    cloudPhotoLibraryManager = [libraryServicesManager2 cloudPhotoLibraryManager];

    if (cloudPhotoLibraryManager)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __77__PLAssetsdPhotoKitService_resolveLocalIdentifiersForCloudIdentifiers_reply___block_invoke;
      v20[3] = &unk_1E7577458;
      v21 = replyCopy;
      [cloudPhotoLibraryManager resolveLocalIdentifiersForCloudIdentifiers:identifiersCopy completionHandler:v20];
    }

    else
    {
      (*(replyCopy + 2))(replyCopy, 0, v11);
    }
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 0, v11);
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
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_END, v18, "##### %s %@ entitled:%d", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)applyChangesRequest:(id)request reply:(id)reply
{
  v30 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  replyCopy = reply;
  +[PLFileDescriptorFuse checkFileDescriptorFuse];
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v21) = enabled;
  if (enabled)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: applyChangesRequest:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v21 + 1);
    *(&v21 + 1) = v9;

    os_activity_scope_enter(v9, (&v22 + 8));
  }

  connectionAuthorization = self->_connectionAuthorization;
  v20 = 0;
  v12 = [requestCopy decodeWithService:self clientAuthorization:connectionAuthorization error:&v20];
  v13 = v20;
  if (v12)
  {
    if ([(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization isClientInLimitedLibraryMode])
    {
      [requestCopy discardUnsupportedLimitedLibraryChangeRequests];
    }

    v14 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      photoKitEntitled = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization photoKitEntitled];
      *buf = 136315650;
      v25 = "[PLAssetsdPhotoKitService applyChangesRequest:reply:]";
      v26 = 2112;
      v27 = requestCopy;
      v28 = 1024;
      v29 = photoKitEntitled;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "##### %s %@ entitled:%d", buf, 0x1Cu);
    }

    [(PLAssetsdPhotoKitService *)self commitRequest:requestCopy reply:replyCopy];
  }

  else
  {
    replyCopy[2](replyCopy, 0, v13);
  }

  if (v21 == 1)
  {
    os_activity_scope_leave((&v22 + 8));
  }

  if (v22)
  {
    v16 = PLRequestGetLog();
    v17 = v16;
    v18 = v22;
    if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v25 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_END, v18, "##### %s %@ entitled:%d", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)dealloc
{
  [(PLCameraCaptureTaskConstraintCoordinator *)self->_cameraTaskConstraintCoordinator invalidate];
  v3.receiver = self;
  v3.super_class = PLAssetsdPhotoKitService;
  [(PLAssetsdPhotoKitService *)&v3 dealloc];
}

- (PLAssetsdPhotoKitService)initWithLibraryServicesManager:(id)manager connectionAuthorization:(id)authorization
{
  managerCopy = manager;
  authorizationCopy = authorization;
  v19.receiver = self;
  v19.super_class = PLAssetsdPhotoKitService;
  v8 = [(PLAbstractLibraryServicesManagerService *)&v19 initWithLibraryServicesManager:managerCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connectionAuthorization, authorization);
    persistentStoreCoordinator = [managerCopy persistentStoreCoordinator];
    persistentStoreCoordinator = v9->_persistentStoreCoordinator;
    v9->_persistentStoreCoordinator = persistentStoreCoordinator;

    if (PLPlatformCameraCaptureSupported())
    {
      authorizationCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"PhotoKitService: %@", authorizationCopy];
      v13 = [[PLCameraCaptureTaskConstraintCoordinator alloc] initWithTaskContstraintRole:2 name:authorizationCopy];
      cameraTaskConstraintCoordinator = v9->_cameraTaskConstraintCoordinator;
      v9->_cameraTaskConstraintCoordinator = v13;
    }

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.assetsd.forceSyndicationIngest", v15);
    syndicationSerialQueue = v9->_syndicationSerialQueue;
    v9->_syndicationSerialQueue = v16;
  }

  return v9;
}

@end