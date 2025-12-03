@interface PLDeferredPhotoFinalizer
+ (BOOL)errorIsRecoverable:(id)recoverable;
- (BOOL)_assetNeedsFinalization:(id)finalization isRender:(BOOL)render;
- (BOOL)isRenderFromMetadata:(id)metadata;
- (id)_createAssetAdjustmentsForAsset:(id)asset error:(id *)error;
- (id)_imageConversionOptionsForAsset:(id)asset adjustments:(id)adjustments isBackgroundPriority:(BOOL)priority reason:(id)reason;
- (id)initForUseCase:(int64_t)case;
- (id)requestFrameDropRecoveryForAsset:(id)asset completionHandler:(id)handler;
- (id)thumbnailDimensionsForFinalizationRequestsForAsset:(id)asset;
- (int64_t)_requestFrameDropRecoveryForAssetURL:(id)l withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (void)_callCompletionHandlersForPhotoProxy:(id)proxy success:(BOOL)success error:(id)error;
- (void)_copyFrameRecoveredVideoComplementToFinalSlot:(id)slot libraryServicesManager:(id)manager resultURL:(id)l completionHandler:(id)handler;
- (void)_copyOriginalVideoComplementToDiagnosticPath:(id)path;
- (void)_createTTRForError:(id)error assetDescription:(id)description asset:(id)asset isCorruptImageError:(BOOL)imageError finalizedPhotoData:(id)data finalPhotoMetadata:(id)metadata;
- (void)_prepareFinalizedAssetForSemanticDevelopment:(id)development finalizedPhotoData:(id)data;
- (void)_promoteProxyAndRecoverErrors:(id)errors libraryServicesManager:(id)manager inError:(id)error completionHandler:(id)handler;
- (void)_repushOriginalVideoComplementIfNeeded:(id)needed;
- (void)_setupMediaConversionSourceCollections:(id)collections destinationCollection:(id)collection forAsset:(id)asset;
- (void)_transaction_fixVideoDurationIfNeededWithLibrary:(id)library asset:(id)asset;
- (void)_transitionDeferredProcessingNeededToNextStateForAsset:(id)asset originalHeight:(int64_t)height originalWidth:(int64_t)width;
- (void)_writeDebugFileFromProxyMetadata:(id)metadata withPath:(id)path;
- (void)cancelOutstandingFrameDropRecoveryRequests;
- (void)deleteIntermediatesExcludingDeferredIdentifierRequestIdentifiers:(id)identifiers withCompletionHandler:(id)handler;
- (void)performSemanticEnhanceForAsset:(id)asset isBackgroundPriority:(BOOL)priority reason:(id)reason completionHandler:(id)handler;
- (void)processor:(id)processor didFinishProcessingPhotoProxy:(id)proxy finalPhoto:(id)photo error:(id)error;
- (void)requestFinalizationOfAsset:(id)asset isBackgroundPriority:(BOOL)priority reason:(id)reason clientBundleIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation PLDeferredPhotoFinalizer

- (void)cancelOutstandingFrameDropRecoveryRequests
{
  sharedAnalysisService = [getVCPMediaAnalysisServiceClass() sharedAnalysisService];
  [sharedAnalysisService cancelAllRequests];
}

- (void)_copyOriginalVideoComplementToDiagnosticPath:(id)path
{
  v19 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  pathForDeferredVideoComplementFile = [pathCopy pathForDeferredVideoComplementFile];
  pathForOriginalVideoComplementDiagnosticFile = [pathCopy pathForOriginalVideoComplementDiagnosticFile];
  v14 = 0;
  v7 = [defaultManager copyItemAtPath:pathForDeferredVideoComplementFile toPath:pathForOriginalVideoComplementDiagnosticFile error:&v14];
  v8 = v14;

  if ((v7 & 1) == 0)
  {
    pathForOriginalVideoComplementDiagnosticFile2 = PLDeferredProcessingGetLog();
    if (!os_log_type_enabled(pathForOriginalVideoComplementDiagnosticFile2, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      goto LABEL_8;
    }

    *buf = 138412290;
    v16 = v8;
    v11 = "[FDR] Unable to copy original video complement file to diagnostic path with error: %@";
    v10 = pathForOriginalVideoComplementDiagnosticFile2;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 12;
LABEL_6:
    _os_log_impl(&dword_19BF1F000, v10, v12, v11, buf, v13);
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    pathForOriginalVideoComplementDiagnosticFile2 = [pathCopy pathForOriginalVideoComplementDiagnosticFile];
    *buf = 138412546;
    v16 = pathForOriginalVideoComplementDiagnosticFile2;
    v17 = 2112;
    v18 = @"PLFrameDropRecoverySaveOriginalVideoComplement";
    v10 = MEMORY[0x1E69E9C10];
    v11 = "[FDR] Original video complement file saved to %@ because the user default %@ is set";
    v12 = OS_LOG_TYPE_DEFAULT;
    v13 = 22;
    goto LABEL_6;
  }

LABEL_8:
}

- (int64_t)_requestFrameDropRecoveryForAssetURL:(id)l withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  lCopy = l;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  sharedAnalysisService = [getVCPMediaAnalysisServiceClass() sharedAnalysisService];
  if (objc_opt_respondsToSelector())
  {
    v14 = [sharedAnalysisService requestFRCForAssetURL:lCopy withOptions:optionsCopy progressHandler:handlerCopy andCompletionHandler:completionHandlerCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_repushOriginalVideoComplementIfNeeded:(id)needed
{
  v14 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  master = [neededCopy master];

  if (master)
  {
    v5 = PLDeferredProcessingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      master2 = [neededCopy master];
      uuid = [neededCopy uuid];
      v10 = 138543618;
      v11 = master2;
      v12 = 2114;
      v13 = uuid;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_INFO, "[FDR] Marking existing master %{public}@ for asset %{public}@ as not pushed to repush master resource to CPL", &v10, 0x16u);
    }

    master3 = [neededCopy master];
    [master3 setCloudLocalState:0];

    v9 = [neededCopy masterResourceForCPLType:18];
    if ([v9 cloudLocalState])
    {
      [v9 setCloudLocalState:0];
    }
  }
}

- (void)_copyFrameRecoveredVideoComplementToFinalSlot:(id)slot libraryServicesManager:(id)manager resultURL:(id)l completionHandler:(id)handler
{
  slotCopy = slot;
  managerCopy = manager;
  lCopy = l;
  handlerCopy = handler;
  databaseContext = [managerCopy databaseContext];
  v15 = [databaseContext newShortLivedLibraryWithName:"-[PLDeferredPhotoFinalizer _copyFrameRecoveredVideoComplementToFinalSlot:libraryServicesManager:resultURL:completionHandler:]"];

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__33087;
  v29 = __Block_byref_object_dispose__33088;
  v30 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __125__PLDeferredPhotoFinalizer__copyFrameRecoveredVideoComplementToFinalSlot_libraryServicesManager_resultURL_completionHandler___block_invoke;
  v19[3] = &unk_1E75780D8;
  v16 = v15;
  v20 = v16;
  v17 = slotCopy;
  v21 = v17;
  v18 = lCopy;
  selfCopy = self;
  v24 = &v25;
  v22 = v18;
  [v16 performTransactionAndWait:v19];
  handlerCopy[2](handlerCopy, v26[5]);

  _Block_object_dispose(&v25, 8);
}

void __125__PLDeferredPhotoFinalizer__copyFrameRecoveredVideoComplementToFinalSlot_libraryServicesManager_resultURL_completionHandler___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v31 = 0;
  v4 = [v2 existingObjectWithID:v3 error:&v31];
  v5 = v31;

  if (v4)
  {
    v6 = MEMORY[0x1E69BF238];
    v7 = *(a1 + 48);
    v8 = [v4 fileURLForOriginalVideoComplement];
    v9 = *(*(a1 + 64) + 8);
    obj = *(v9 + 40);
    LOBYTE(v6) = [v6 copyItemAtURL:v7 toURL:v8 error:&obj];
    objc_storeStrong((v9 + 40), obj);
    if (v6)
    {
    }

    else
    {
      v12 = [MEMORY[0x1E69BF238] isFileExistsError:*(*(*(a1 + 64) + 8) + 40)];

      if ((v12 & 1) == 0)
      {
        v20 = PLDeferredProcessingGetLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = [MEMORY[0x1E69BF220] descriptionWithFileURL:*(a1 + 48)];
          v22 = [v4 uuidDescription];
          v23 = *(*(*(a1 + 64) + 8) + 40);
          *buf = 138412802;
          v33 = v21;
          v34 = 2114;
          v35 = v22;
          v36 = 2112;
          v37 = v23;
          _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "[FDR] Error copying FDR video complement from path: %@, for asset: %{public}@: %@", buf, 0x20u);
        }

        v24 = *(*(a1 + 64) + 8);
        v29 = *(v24 + 40);
        v25 = [v4 promoteProxyToFinalVideoComplementWithOutError:&v29];
        objc_storeStrong((v24 + 40), v29);
        if (v25)
        {
          goto LABEL_12;
        }

        v13 = PLDeferredProcessingGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v26 = *(*(*(a1 + 64) + 8) + 40);
          *buf = 138412290;
          v33 = v26;
          _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "[FDR] Error promoting proxy to final video complement: %@", buf, 0xCu);
        }

LABEL_11:

LABEL_12:
        v15 = *(a1 + 48);
        v27 = 0;
        v16 = [MEMORY[0x1E69BF238] removeItemAtURL:v15 error:&v27];
        v10 = v27;
        if ((v16 & 1) == 0)
        {
          v17 = PLDeferredProcessingGetLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = [MEMORY[0x1E69BF220] descriptionWithFileURL:*(a1 + 48)];
            v19 = [v4 uuidDescription];
            *buf = 138412802;
            v33 = v18;
            v34 = 2114;
            v35 = v19;
            v36 = 2112;
            v37 = v10;
            _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "[FDR] Error removing URL: %@ for asset: %{public}@ with error: %@", buf, 0x20u);
          }
        }

        [v4 setVideoDeferredProcessingNeeded:0];
        [*(a1 + 56) _transaction_fixVideoDurationIfNeededWithLibrary:*(a1 + 32) asset:v4];
        [*(a1 + 56) _repushOriginalVideoComplementIfNeeded:v4];
        PLSendFRCCompletedAnalytics(v4, 1, 0, *(*(*(a1 + 64) + 8) + 40));
LABEL_17:

        goto LABEL_18;
      }
    }

    v13 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobileslideshow"];
    if ([v13 BOOLForKey:@"PLFrameDropRecoverySaveOriginalVideoComplement"])
    {
      [*(a1 + 56) _copyOriginalVideoComplementToDiagnosticPath:v4];
    }

    v14 = *(*(a1 + 64) + 8);
    v28 = *(v14 + 40);
    [v4 installFinalVideoComplementAndRemoveDeferredFilesWithOutError:&v28];
    objc_storeStrong((v14 + 40), v28);
    goto LABEL_11;
  }

  if (v5)
  {
    v10 = PLDeferredProcessingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      *buf = 138412546;
      v33 = v11;
      v34 = 2112;
      v35 = v5;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Existing object with id %@ no longer found with error %@", buf, 0x16u);
    }

    goto LABEL_17;
  }

LABEL_18:
}

- (void)_promoteProxyAndRecoverErrors:(id)errors libraryServicesManager:(id)manager inError:(id)error completionHandler:(id)handler
{
  errorsCopy = errors;
  managerCopy = manager;
  errorCopy = error;
  handlerCopy = handler;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__33087;
  v29 = __Block_byref_object_dispose__33088;
  v30 = 0;
  databaseContext = [managerCopy databaseContext];
  v15 = [databaseContext newShortLivedLibraryWithName:"-[PLDeferredPhotoFinalizer _promoteProxyAndRecoverErrors:libraryServicesManager:inError:completionHandler:]"];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __107__PLDeferredPhotoFinalizer__promoteProxyAndRecoverErrors_libraryServicesManager_inError_completionHandler___block_invoke;
  v19[3] = &unk_1E75780D8;
  v16 = v15;
  v20 = v16;
  v17 = errorsCopy;
  v24 = &v25;
  v21 = v17;
  selfCopy = self;
  v18 = errorCopy;
  v23 = v18;
  [v16 performTransactionAndWait:v19];
  handlerCopy[2](handlerCopy, v26[5]);

  _Block_object_dispose(&v25, 8);
}

void __107__PLDeferredPhotoFinalizer__promoteProxyAndRecoverErrors_libraryServicesManager_inError_completionHandler___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v19 = 0;
  v4 = [v2 existingObjectWithID:v3 error:&v19];
  v5 = v19;

  if (v4)
  {
    v6 = *(*(a1 + 64) + 8);
    obj = *(v6 + 40);
    v7 = [v4 promoteProxyToFinalVideoComplementWithOutError:&obj];
    objc_storeStrong((v6 + 40), obj);
    if ((v7 & 1) == 0)
    {
      v8 = PLDeferredProcessingGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 138412290;
        v21 = v9;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "[FDR] Error promoting proxy to final video complement: %@", buf, 0xCu);
      }
    }

    [v4 setVideoDeferredProcessingNeeded:0];
    [*(a1 + 48) _transaction_fixVideoDurationIfNeededWithLibrary:*(a1 + 32) asset:v4];
    [*(a1 + 48) _repushOriginalVideoComplementIfNeeded:v4];
    if ([*(a1 + 56) code] || (objc_msgSend(*(a1 + 56), "domain"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", *MEMORY[0x1E696A768]), v10, !v11))
    {
      v12 = *(a1 + 56);
      if (v12)
      {
        v13 = v4;
        v14 = 0;
      }

      else
      {
        v12 = *(*(*(a1 + 64) + 8) + 40);
        v13 = v4;
        v14 = 1;
      }

      v15 = 0;
    }

    else
    {
      v12 = *(a1 + 56);
      v13 = v4;
      v14 = 1;
      v15 = 1;
    }

    PLSendFRCCompletedAnalytics(v13, v14, v15, v12);
  }

  else if (v5)
  {
    v16 = PLDeferredProcessingGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 40);
      *buf = 138412546;
      v21 = v17;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Existing object with id %@ no longer found with error %@", buf, 0x16u);
    }
  }
}

- (void)_transaction_fixVideoDurationIfNeededWithLibrary:(id)library asset:(id)asset
{
  libraryCopy = library;
  assetCopy = asset;
  if (![assetCopy videoCpDurationValue])
  {
    v7 = PLDeferredProcessingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "[FDR] Asset video duration is 0, attempting fixup", buf, 2u);
    }

    v8 = objc_alloc(MEMORY[0x1E69C0718]);
    fileURLForOriginalVideoComplement = [assetCopy fileURLForOriginalVideoComplement];
    libraryBundle = [libraryCopy libraryBundle];
    timeZoneLookup = [libraryBundle timeZoneLookup];
    v12 = [v8 initWithAVURL:fileURLForOriginalVideoComplement timeZoneLookup:timeZoneLookup];

    livePhotoPairingIdentifier = [v12 livePhotoPairingIdentifier];
    if (v12)
    {
      [v12 duration];
      [v12 stillImageDisplayTime];
    }

    else
    {
      *buf = 0;
      v16 = 0;
      v17 = 0;
      memset(v14, 0, sizeof(v14));
    }

    [assetCopy updatePhotoIrisMetadataWithMediaGroupUUID:livePhotoPairingIdentifier videoDuration:buf stillDisplayTime:v14];

    if ([assetCopy canPlayPhotoIris])
    {
      [assetCopy setPlaybackStyle:3];
    }
  }
}

- (id)requestFrameDropRecoveryForAsset:(id)asset completionHandler:(id)handler
{
  v50 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  handlerCopy = handler;
  val = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:100];
  objc_initWeak(&location, self);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __79__PLDeferredPhotoFinalizer_requestFrameDropRecoveryForAsset_completionHandler___block_invoke;
  v43[3] = &unk_1E75788C0;
  objc_copyWeak(&v44, &location);
  [val setCancellationHandler:v43];
  uuid = [assetCopy uuid];
  uuidDescription = [assetCopy uuidDescription];
  objectID = [assetCopy objectID];
  photoLibrary = [assetCopy photoLibrary];
  libraryServicesManager = [photoLibrary libraryServicesManager];

  v11 = PLDeferredProcessingGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    qos_class_self();
    v12 = PLShortStringFromQoSClass();
    *buf = 138543618;
    v47 = uuidDescription;
    v48 = 2114;
    v49 = v12;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "[FDR] Requesting frame drop recovery for asset %{public}@, QoS: %{public}@", buf, 0x16u);
  }

  objc_initWeak(&from, val);
  v13 = PLBackendGetLog();
  v14 = os_signpost_id_generate(v13);
  v15 = v13;
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 138543362;
    v47 = uuid;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "requestFrameDropRecoveryForAsset", "uuid: %{public}@", buf, 0xCu);
  }

  v17 = MEMORY[0x1E695DFF8];
  pathForDeferredVideoComplementFile = [assetCopy pathForDeferredVideoComplementFile];
  v19 = [v17 fileURLWithPath:pathForDeferredVideoComplementFile];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __79__PLDeferredPhotoFinalizer_requestFrameDropRecoveryForAsset_completionHandler___block_invoke_266;
  v40[3] = &unk_1E756AEE0;
  objc_copyWeak(&v41, &from);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __79__PLDeferredPhotoFinalizer_requestFrameDropRecoveryForAsset_completionHandler___block_invoke_268;
  v31[3] = &unk_1E756AF08;
  v20 = uuidDescription;
  v32 = v20;
  v21 = v16;
  v33 = v21;
  v39 = v14;
  v22 = uuid;
  v34 = v22;
  selfCopy = self;
  selfCopy2 = self;
  v24 = objectID;
  v36 = v24;
  v25 = libraryServicesManager;
  v37 = v25;
  v26 = handlerCopy;
  v38 = v26;
  [(PLDeferredPhotoFinalizer *)selfCopy2 _requestFrameDropRecoveryForAssetURL:v19 withOptions:0 progressHandler:v40 andCompletionHandler:v31];

  objc_destroyWeak(&v41);
  objc_destroyWeak(&from);

  objc_destroyWeak(&v44);
  objc_destroyWeak(&location);

  return val;
}

void __79__PLDeferredPhotoFinalizer_requestFrameDropRecoveryForAsset_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancelOutstandingFrameDropRecoveryRequests];
}

void __79__PLDeferredPhotoFinalizer_requestFrameDropRecoveryForAsset_completionHandler___block_invoke_266(uint64_t a1, double a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCompletedUnitCount:v3];

  v5 = PLDeferredProcessingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    v7 = a2;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "[FDR] Progress updated to %f", &v6, 0xCu);
  }
}

void __79__PLDeferredPhotoFinalizer_requestFrameDropRecoveryForAsset_completionHandler___block_invoke_268(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PLDeferredProcessingGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    qos_class_self();
    v9 = PLShortStringFromQoSClass();
    v16 = 138543874;
    v17 = v8;
    v18 = 2112;
    v19 = v5;
    v20 = 2114;
    v21 = v9;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "[FDR] Received frame drop recovery completion handler for asset %{public}@, url %@, QoS: %{public}@", &v16, 0x20u);
  }

  v10 = *(a1 + 40);
  v11 = v10;
  v12 = *(a1 + 88);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = *(a1 + 48);
    v16 = 138543362;
    v17 = v13;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v11, OS_SIGNPOST_INTERVAL_END, v12, "requestFrameDropRecoveryForAsset", "uuid: %{public}@", &v16, 0xCu);
  }

  if (!v5 || v6)
  {
    v14 = PLDeferredProcessingGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = 138543618;
      v17 = v15;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "[FDR] Error performing FDR for asset %{public}@, promoting proxy and bailing out: %@", &v16, 0x16u);
    }

    [*(a1 + 56) _promoteProxyAndRecoverErrors:*(a1 + 64) libraryServicesManager:*(a1 + 72) inError:v6 completionHandler:*(a1 + 80)];
  }

  else
  {
    [*(a1 + 56) _copyFrameRecoveredVideoComplementToFinalSlot:*(a1 + 64) libraryServicesManager:*(a1 + 72) resultURL:v5 completionHandler:*(a1 + 80)];
  }
}

- (void)_prepareFinalizedAssetForSemanticDevelopment:(id)development finalizedPhotoData:(id)data
{
  v25 = *MEMORY[0x1E69E9840];
  developmentCopy = development;
  dataCopy = data;
  v7 = PLDeferredProcessingGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uuidDescription = [developmentCopy uuidDescription];
    *buf = 138543362;
    v22 = uuidDescription;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "[SemDev] Transferring finalized DF asset %{public}@ to SemDev proxy slot", buf, 0xCu);
  }

  fileURLForCurrentDeferredProcessingPreviewFile = [developmentCopy fileURLForCurrentDeferredProcessingPreviewFile];
  [developmentCopy setDeferredProcessingNeeded:10];
  fileURLForCurrentDeferredProcessingPreviewFile2 = [developmentCopy fileURLForCurrentDeferredProcessingPreviewFile];
  if ([fileURLForCurrentDeferredProcessingPreviewFile isEqual:fileURLForCurrentDeferredProcessingPreviewFile2])
  {
    v11 = PLDeferredProcessingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = fileURLForCurrentDeferredProcessingPreviewFile2;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "[SemDev] already transferred proxy to semdev url: :%@, skipping copy", buf, 0xCu);
    }
  }

  else
  {
    v20 = 0;
    v12 = [dataCopy writeToURL:fileURLForCurrentDeferredProcessingPreviewFile2 options:1073741825 error:&v20];
    v11 = v20;
    if ((v12 & 1) == 0)
    {
      v13 = PLDeferredProcessingGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        fileURLForCurrentDeferredProcessingPreviewFile3 = [developmentCopy fileURLForCurrentDeferredProcessingPreviewFile];
        *buf = 138412546;
        v22 = fileURLForCurrentDeferredProcessingPreviewFile3;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "[SemDev] Error copying finalized photo data to semdev url %@, error: %@", buf, 0x16u);
      }
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v19 = 0;
    v16 = [defaultManager removeItemAtURL:fileURLForCurrentDeferredProcessingPreviewFile error:&v19];
    v17 = v19;

    if ((v16 & 1) == 0)
    {
      v18 = PLDeferredProcessingGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v22 = fileURLForCurrentDeferredProcessingPreviewFile;
        v23 = 2112;
        v24 = v17;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "[SemDev] Error removing proxy photo url: %@, error: %@", buf, 0x16u);
      }
    }
  }
}

- (void)_setupMediaConversionSourceCollections:(id)collections destinationCollection:(id)collection forAsset:(id)asset
{
  v22 = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
  assetCopy = asset;
  collectionCopy = collection;
  fileURLForCurrentDeferredProcessingPreviewFile = [assetCopy fileURLForCurrentDeferredProcessingPreviewFile];
  v11 = *MEMORY[0x1E69AE8B8];
  [collectionsCopy setResourceURL:fileURLForCurrentDeferredProcessingPreviewFile forRole:*MEMORY[0x1E69AE8B8] deleteOnDeallocation:0];

  pathManager = [assetCopy pathManager];
  mainFileURL = [assetCopy mainFileURL];

  pathExtension = [mainFileURL pathExtension];
  v15 = [pathManager temporaryRenderContentURLForInternalRendersWithExtension:pathExtension];

  [collectionCopy setResourceURL:v15 forRole:v11 deleteOnDeallocation:1];
  v16 = PLDeferredProcessingGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [collectionsCopy resourceURLForRole:v11];
    v18 = 138412546;
    v19 = v17;
    v20 = 2112;
    v21 = v15;
    _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "[SemDev] Main source URL: %@, destination URL: %@", &v18, 0x16u);
  }
}

- (id)_imageConversionOptionsForAsset:(id)asset adjustments:(id)adjustments isBackgroundPriority:(BOOL)priority reason:(id)reason
{
  priorityCopy = priority;
  v26[3] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E695DF90];
  reasonCopy = reason;
  adjustmentsCopy = adjustments;
  assetCopy = asset;
  dictionary = [v9 dictionary];
  v25[0] = *MEMORY[0x1E69AE8C8];
  adjustmentData = [adjustmentsCopy adjustmentData];
  v26[0] = adjustmentData;
  v25[1] = *MEMORY[0x1E69AE8D0];
  adjustmentFormatIdentifier = [adjustmentsCopy adjustmentFormatIdentifier];
  v26[1] = adjustmentFormatIdentifier;
  v25[2] = *MEMORY[0x1E69AE8D8];
  adjustmentFormatVersion = [adjustmentsCopy adjustmentFormatVersion];

  v26[2] = adjustmentFormatVersion;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
  [dictionary setObject:v17 forKeyedSubscript:*MEMORY[0x1E69AE918]];

  standardPolicy = [MEMORY[0x1E69C06C0] standardPolicy];
  [dictionary setObject:standardPolicy forKeyedSubscript:*MEMORY[0x1E69AE968]];

  [dictionary setObject:&unk_1F0FBC1F0 forKeyedSubscript:*MEMORY[0x1E69AE990]];
  [dictionary setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E69AE920]];
  v19 = MEMORY[0x1E696AEC0];
  uuidDescription = [assetCopy uuidDescription];

  v21 = [v19 stringWithFormat:@"%@ for asset %@", reasonCopy, uuidDescription];

  [dictionary setObject:v21 forKeyedSubscript:*MEMORY[0x1E69AE980]];
  if (priorityCopy)
  {
    v22 = 2;
  }

  else
  {
    v22 = 4;
  }

  v23 = [MEMORY[0x1E696AD98] numberWithInteger:v22];
  [dictionary setObject:v23 forKeyedSubscript:*MEMORY[0x1E69AE950]];

  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69AE938]];

  return dictionary;
}

- (id)_createAssetAdjustmentsForAsset:(id)asset error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v6 = MEMORY[0x1E695DEF0];
  pathForCameraMetadataFile = [assetCopy pathForCameraMetadataFile];
  v8 = [v6 dataWithContentsOfFile:pathForCameraMetadataFile];

  v9 = MEMORY[0x1E696ACD0];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v22 = 0;
  v13 = [v9 unarchivedObjectOfClasses:v12 fromData:v8 error:&v22];
  v14 = v22;

  if (v13)
  {
    v15 = +[PLPhotoEditExportProperties exportPropertiesWithImageWidth:imageHeight:exifOrientation:](PLPhotoEditExportProperties, "exportPropertiesWithImageWidth:imageHeight:exifOrientation:", [assetCopy originalWidth], objc_msgSend(assetCopy, "originalHeight"), objc_msgSend(assetCopy, "orientation"));
    v16 = +[PLCompositionHelper newIdentityCompositionController];
    [PLCompositionHelper compositionController:v16 updateSemanticEnhanceFromCameraMetadata:v13 exportProperties:v15];
    v17 = [PLImageWriter assetAdjustmentsFromCompositionController:v16 exportProperties:v15];
  }

  else
  {
    v18 = PLDeferredProcessingGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      pathForCameraMetadataFile2 = [assetCopy pathForCameraMetadataFile];
      *buf = 138412546;
      v24 = pathForCameraMetadataFile2;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "[SemDev] Error deserializing camera metadata from path: %@, error: %@", buf, 0x16u);
    }

    if (error)
    {
      v20 = v14;
      v17 = 0;
      *error = v14;
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (void)performSemanticEnhanceForAsset:(id)asset isBackgroundPriority:(BOOL)priority reason:(id)reason completionHandler:(id)handler
{
  priorityCopy = priority;
  v61[2] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  reasonCopy = reason;
  handlerCopy = handler;
  v12 = PLDeferredProcessingGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    uuidDescription = [assetCopy uuidDescription];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = uuidDescription;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "[SemDev] performing semantic enhance for asset %{public}@", &buf, 0xCu);
  }

  v14 = PLBackendGetLog();
  v15 = os_signpost_id_generate(v14);
  v16 = v14;
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    uuid = [assetCopy uuid];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = uuid;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "performSemanticEnhanceForAsset", "uuid: %{public}@", &buf, 0xCu);
  }

  v38 = v17;

  *&buf = 0;
  *(&buf + 1) = &buf;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__33087;
  v60 = __Block_byref_object_dispose__33088;
  v61[0] = 0;
  obj = 0;
  v40 = [(PLDeferredPhotoFinalizer *)self _createAssetAdjustmentsForAsset:assetCopy error:&obj];
  objc_storeStrong(v61, obj);
  if (v40)
  {
    v19 = [(PLDeferredPhotoFinalizer *)self _imageConversionOptionsForAsset:assetCopy adjustments:v40 isBackgroundPriority:priorityCopy reason:reasonCopy];
    v20 = objc_opt_new();
    v21 = objc_opt_new();
    [(PLDeferredPhotoFinalizer *)self _setupMediaConversionSourceCollections:v20 destinationCollection:v21 forAsset:assetCopy];
    objectID = [assetCopy objectID];
    v37 = v19;
    photoLibrary = [assetCopy photoLibrary];
    libraryServicesManager = [photoLibrary libraryServicesManager];

    v25 = reasonCopy;
    v26 = [v21 resourceURLForRole:*MEMORY[0x1E69AE8B8]];
    imageConversionServiceClient = self->_imageConversionServiceClient;
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __105__PLDeferredPhotoFinalizer_performSemanticEnhanceForAsset_isBackgroundPriority_reason_completionHandler___block_invoke_2;
    v41[3] = &unk_1E756AEB8;
    v42 = v38;
    v48 = v15;
    v28 = libraryServicesManager;
    v43 = v28;
    v29 = objectID;
    v44 = v29;
    v30 = v26;
    v45 = v30;
    v46 = assetCopy;
    v47 = handlerCopy;
    [(PAImageConversionServiceClient *)imageConversionServiceClient convertImageAtSourceURLCollection:v20 toDestinationURLCollection:v21 options:v37 completionHandler:v41];

    reasonCopy = v25;
    v31 = v37;
  }

  else
  {
    v32 = PLDeferredProcessingGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = reasonCopy;
      v34 = *(*(&buf + 1) + 40);
      uuidDescription2 = [assetCopy uuidDescription];
      *v53 = 138412546;
      v54 = v34;
      v55 = 2114;
      v56 = uuidDescription2;
      _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "[SemDev] adjustments are nil: %@ for asset uuid: %{public}@ ", v53, 0x16u);

      reasonCopy = v33;
    }

    photoLibrary2 = [assetCopy photoLibrary];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __105__PLDeferredPhotoFinalizer_performSemanticEnhanceForAsset_isBackgroundPriority_reason_completionHandler___block_invoke;
    v49[3] = &unk_1E7578910;
    v50 = assetCopy;
    p_buf = &buf;
    [photoLibrary2 performBlockAndWait:v49];

    (*(handlerCopy + 2))(handlerCopy, *(*(&buf + 1) + 40));
    v31 = v50;
  }

  _Block_object_dispose(&buf, 8);
}

void __105__PLDeferredPhotoFinalizer_performSemanticEnhanceForAsset_isBackgroundPriority_reason_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = 0;
  v3 = [v2 promoteSemanticEnhancePreviewToFinalImage:&v6];
  v4 = v6;
  v5 = v6;
  if ((v3 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  }
}

void __105__PLDeferredPhotoFinalizer_performSemanticEnhanceForAsset_isBackgroundPriority_reason_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__33087;
  v35 = __Block_byref_object_dispose__33088;
  v36 = 0;
  v9 = *(a1 + 32);
  v10 = v9;
  v11 = *(a1 + 80);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_END, v11, "performSemanticEnhanceForAsset", "", buf, 2u);
  }

  v12 = [*(a1 + 40) databaseContext];
  v13 = [v12 newShortLivedLibraryWithName:"-[PLDeferredPhotoFinalizer performSemanticEnhanceForAsset:isBackgroundPriority:reason:completionHandler:]_block_invoke"];

  if (a2 == 1)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __105__PLDeferredPhotoFinalizer_performSemanticEnhanceForAsset_isBackgroundPriority_reason_completionHandler___block_invoke_2_246;
    v27[3] = &unk_1E75778C0;
    v28 = v13;
    v29 = *(a1 + 48);
    v30[0] = *(a1 + 56);
    v30[1] = &v31;
    [v28 performTransactionAndWait:v27];
    v14 = &v28;
    v15 = &v29;
    v16 = v30;
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __105__PLDeferredPhotoFinalizer_performSemanticEnhanceForAsset_isBackgroundPriority_reason_completionHandler___block_invoke_250;
    v23[3] = &unk_1E75778C0;
    v24 = *(a1 + 64);
    v25 = *(a1 + 48);
    v26[1] = &v31;
    v17 = v8;
    v26[0] = v17;
    [v13 performTransactionAndWait:v23];
    v18 = PLDeferredProcessingGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v38 = a2;
      v39 = 2112;
      v40 = v17;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "[SemDev] Media conversion did not succeed for semantic enhance, status: %ld, error: %@", buf, 0x16u);
    }

    v14 = &v24;
    v15 = &v25;
    v16 = v26;
  }

  (*(*(a1 + 72) + 16))(*(a1 + 72), v32[5], v19, v20, v21, v22);
  _Block_object_dispose(&v31, 8);
}

void __105__PLDeferredPhotoFinalizer_performSemanticEnhanceForAsset_isBackgroundPriority_reason_completionHandler___block_invoke_2_246(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [v2 existingObjectWithID:*(a1 + 40) error:0];

  v4 = [v3 uuidDescription];
  v5 = PLDeferredProcessingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v37 = v4;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "[SemDev] Media conversion success for semantic enhance adjustment for asset uuid: %{public}@", buf, 0xCu);
  }

  v6 = MEMORY[0x1E69BF238];
  v7 = *(a1 + 48);
  v8 = [v3 mainFileURL];
  v9 = [v3 pathManager];
  v10 = [v9 capabilities];
  v35 = 0;
  LOBYTE(v7) = [v6 ingestItemAtURL:v7 toURL:v8 type:3 options:2 capabilities:v10 error:&v35];
  v11 = v35;

  v12 = [v3 height];
  v13 = [v3 width];
  if ((v7 & 1) == 0)
  {
    v19 = [MEMORY[0x1E69BF238] isFileExistsError:v11];
    v20 = PLDeferredProcessingGetLog();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      if (v21)
      {
        v22 = [v3 mainFileURL];
        *buf = 138412290;
        v37 = v22;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "[SemDev] file already exists, no need to ingest at url: %@", buf, 0xCu);
      }

      goto LABEL_26;
    }

    if (v21)
    {
      v30 = *(a1 + 48);
      *buf = 138412546;
      v37 = v30;
      v38 = 2112;
      v39 = v11;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "[SemDev] Failed to ingest %@: %@", buf, 0x16u);
    }

    v34 = v11;
    [v3 promoteSemanticEnhancePreviewToFinalImage:&v34];
    v29 = v34;
    goto LABEL_18;
  }

  v14 = v13;
  v15 = [v3 mainFileURL];
  v33 = v11;
  v16 = [v3 installFinalImageAndRemoveDeferredFilesWithFinalImageURL:v15 previewImage:0 thumbnailImage:0 outError:&v33];
  v17 = v33;

  if (v16)
  {
    [v3 cleanUpMetadataPath];
    [v3 setDeferredProcessingNeeded:0];
    v18 = [v3 additionalAttributes];
    [v18 setDeferredProcessingCandidateOptions:0];

    [v3 transitionToDeferredProcessingNeededAdjustmentWithOriginalWidth:v14 originalHeight:v12 shouldSignalBackgroundProcessingNeeded:1 reason:@"[SemDev] Installed final image and removed deferred files"];
    goto LABEL_24;
  }

  v23 = [MEMORY[0x1E69BF238] isFileExistsError:v17];
  v24 = PLDeferredProcessingGetLog();
  v25 = v24;
  if (v23)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v3 mainFileURL];
      *buf = 138543618;
      v37 = v4;
      v38 = 2112;
      v39 = v26;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "[SemDev] Asset %{public}@ has already had file written to %@, skipping copy", buf, 0x16u);
    }

    v27 = [v3 mainFileURL];
    v32 = v17;
    v28 = [v3 installFinalImageAndRemoveDeferredFilesWithFinalImageURL:v27 previewImage:0 thumbnailImage:0 outError:&v32];
    v29 = v32;

    if (v28)
    {
LABEL_19:
      if (!v29)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    v11 = PLDeferredProcessingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v37 = v4;
      v38 = 2112;
      v39 = v29;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "[SemDev] Error installing final image and removing deferred files for asset %{public}@ with error: %@", buf, 0x16u);
    }

LABEL_18:

    goto LABEL_19;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v37 = v4;
    v38 = 2112;
    v39 = v17;
    _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "[SemDev] Failed to install image for asset: %{public}@, reason: %@", buf, 0x16u);
  }

LABEL_24:
  v29 = v17;
  if (v17)
  {
LABEL_25:
    v31 = *(*(a1 + 56) + 8);
    v20 = *(v31 + 40);
    *(v31 + 40) = v29;
    v11 = v29;
LABEL_26:
  }

LABEL_27:
}

void __105__PLDeferredPhotoFinalizer_performSemanticEnhanceForAsset_isBackgroundPriority_reason_completionHandler___block_invoke_250(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) photoLibrary];
  v3 = [v2 managedObjectContext];
  v4 = [v3 existingObjectWithID:*(a1 + 40) error:0];

  v5 = [v4 uuidDescription];
  v11 = 0;
  v6 = [v4 promoteSemanticEnhancePreviewToFinalImage:&v11];
  v7 = v11;
  v8 = v11;
  if ((v6 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v7);
  }

  v9 = PLDeferredProcessingGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 48);
    *buf = 138543618;
    v13 = v5;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "[SemDev] Media conversion failure for asset %{public}@, promoted preview to final image, error: %@", buf, 0x16u);
  }
}

- (void)_createTTRForError:(id)error assetDescription:(id)description asset:(id)asset isCorruptImageError:(BOOL)imageError finalizedPhotoData:(id)data finalPhotoMetadata:(id)metadata
{
  imageErrorCopy = imageError;
  v124[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  descriptionCopy = description;
  assetCopy = asset;
  dataCopy = data;
  metadataCopy = metadata;
  if (MEMORY[0x19EAEE230]())
  {
    selfCopy = self;
    v101 = metadataCopy;
    v102 = dataCopy;
    v19 = MEMORY[0x1E696AD60];
    additionalAttributes = [assetCopy additionalAttributes];
    deferredPhotoIdentifier = [additionalAttributes deferredPhotoIdentifier];
    v22 = [MEMORY[0x1E695DF00] now];
    v23 = v22;
    v105 = imageErrorCopy;
    if (imageErrorCopy)
    {
      v24 = &stru_1F0F06D80;
    }

    else
    {
      v24 = @"NON-";
    }

    v89 = descriptionCopy;
    v98 = descriptionCopy;
    if (imageErrorCopy)
    {
      v25 = @"This radar is only actionable if filed with Image and Intermediates. File a radar?";
    }

    else
    {
      v25 = @"File a radar with this photo and its intermediate processing files?";
    }

    if (imageErrorCopy)
    {
      v26 = @"Hit Corrupt final image in";
    }

    else
    {
      v26 = @"Non-recoverable";
    }

    v97 = [v19 stringWithFormat:@"Failed during finalization in a %@recoverable way for asset: %@ with deferredPhotoIdentifier: %@ reason: %@ at time of tap to radar: %@", v24, v89, deferredPhotoIdentifier, errorCopy, v22];

    v96 = [MEMORY[0x1E696AEC0] stringWithFormat:@"A higher-quality image couldn't be processed. %@", v25];
    v99 = errorCopy;
    v95 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TTR Photos: %@ deferredmediad error when processing the proxy (Error Code: %ld)", v26, objc_msgSend(errorCopy, "code")];
    array = [MEMORY[0x1E695DF70] array];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    additionalAttributes2 = [assetCopy additionalAttributes];
    deferredPhotoIdentifier2 = [additionalAttributes2 deferredPhotoIdentifier];

    v100 = deferredPhotoIdentifier2;
    v30 = [deferredPhotoIdentifier2 componentsSeparatedByString:@"/"];
    firstObject = [v30 firstObject];

    v104 = assetCopy;
    pathManager = [assetCopy pathManager];
    v33 = [pathManager photoDirectoryWithType:1];

    v94 = v33;
    v103 = [v33 stringByAppendingString:@"/Deferred/CaptureContainers"];
    v34 = [MEMORY[0x1E695DFF8] fileURLWithPath:?];
    v124[0] = *MEMORY[0x1E695DC30];
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:1];
    v36 = [defaultManager enumeratorAtURL:v34 includingPropertiesForKeys:v35 options:0 errorHandler:&__block_literal_global_33170];

    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v37 = v36;
    v38 = [v37 countByEnumeratingWithState:&v110 objects:v123 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v111;
      while (2)
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v111 != v40)
          {
            objc_enumerationMutation(v37);
          }

          path = [*(*(&v110 + 1) + 8 * i) path];
          v43 = [path stringByAppendingPathComponent:firstObject];

          if ([defaultManager fileExistsAtPath:v43])
          {
            stringByDeletingLastPathComponent = [v103 stringByDeletingLastPathComponent];
            v45 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:@"tmpCaptureContainers"];

            if (([defaultManager directoryExistsAtPath:v45] & 1) == 0)
            {
              v109 = 0;
              v46 = [defaultManager createDirectoryAtPath:v45 withIntermediateDirectories:0 attributes:0 error:&v109];
              v47 = v109;
              if ((v46 & 1) == 0)
              {
                v48 = PLBackendGetLog();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                {
                  uuid = [assetCopy uuid];
                  *buf = 138412802;
                  v118 = v45;
                  v119 = 2112;
                  v120 = uuid;
                  v121 = 2112;
                  v122 = v100;
                  _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_ERROR, "Failed to create temporary capture containers directory: %@ for asset with uuid: %@ and deferred identifier: %@", buf, 0x20u);
                }
              }
            }

            v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-copy", firstObject];
            v51 = [v45 stringByAppendingPathComponent:v50];

            v108 = 0;
            [defaultManager copyItemAtPath:v43 toPath:v51 error:&v108];
            v52 = [MEMORY[0x1E695DFF8] fileURLWithPath:v51];
            [array addObject:v52];

            goto LABEL_27;
          }
        }

        v39 = [v37 countByEnumeratingWithState:&v110 objects:v123 count:16];
        if (v39)
        {
          continue;
        }

        break;
      }
    }

LABEL_27:

    if (v105)
    {
      v53 = NSTemporaryDirectory();
      v54 = MEMORY[0x1E696AEC0];
      filename = [assetCopy filename];
      v56 = [v54 stringWithFormat:@"Corrupt_%@", filename];
      v57 = [v53 stringByAppendingPathComponent:v56];

      v58 = [MEMORY[0x1E695DFF8] fileURLWithPath:v57];
      v107 = 0;
      [v102 writeToURL:v58 options:1073741826 error:&v107];
      v59 = v107;
      if (v59)
      {
        v60 = PLBackendGetLog();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          [v58 path];
          v62 = v61 = v58;
          *buf = 138412290;
          v118 = v62;
          _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_ERROR, "Failure to write corrupt image file to DCIM for attaching to TTR: %@", buf, 0xCu);

          v58 = v61;
        }
      }

      uRLByDeletingPathExtension = [v58 URLByDeletingPathExtension];
      v64 = [uRLByDeletingPathExtension URLByAppendingPathExtension:@"DBG"];

      v65 = v64;
      path2 = [v64 path];
      [(PLDeferredPhotoFinalizer *)selfCopy _writeDebugFileFromProxyMetadata:v101 withPath:path2];

      if (v58)
      {
        path3 = [v58 path];
        v68 = [defaultManager fileExistsAtPath:path3];

        if (v68)
        {
          [array addObject:v58];
        }
      }
    }

    else
    {
      v58 = 0;
      v65 = 0;
    }

    pathForDiagnosticFile = [assetCopy pathForDiagnosticFile];
    v70 = [defaultManager fileExistsAtPath:pathForDiagnosticFile];

    if (v70)
    {
      v71 = MEMORY[0x1E695DFF8];
      pathForDiagnosticFile2 = [assetCopy pathForDiagnosticFile];
      v73 = [v71 fileURLWithPath:pathForDiagnosticFile2];

      [array addObject:v73];
    }

    if (v65)
    {
      path4 = [v65 path];
      v75 = [defaultManager fileExistsAtPath:path4];

      if (v75)
      {
        [array addObject:v65];
      }
    }

    mainFileURL = [assetCopy mainFileURL];
    path5 = [mainFileURL path];
    v78 = [defaultManager fileExistsAtPath:path5];

    if (v78)
    {
      mainFileURL2 = [assetCopy mainFileURL];
      [array addObject:mainFileURL2];
    }

    v91 = v65;
    v93 = v58;
    uuid2 = [assetCopy uuid];

    if (uuid2)
    {
      v81 = objc_alloc_init(MEMORY[0x1E696ABE0]);
      v116[0] = @"currentAssets";
      v115[0] = @"previewStyle";
      v115[1] = @"assetLocalIdentifiers";
      uuid3 = [assetCopy uuid];
      v114 = uuid3;
      v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v114 count:1];
      v116[1] = v82;
      v115[2] = @"photoLibraryURLString";
      photoLibrary = [assetCopy photoLibrary];
      pathManager2 = [photoLibrary pathManager];
      libraryURL = [pathManager2 libraryURL];
      absoluteString = [libraryURL absoluteString];
      v116[2] = absoluteString;
      v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:v115 count:3];
      [v81 setUserInfo:v87];

      assetCopy = v104;
    }

    else
    {
      v81 = 0;
    }

    metadataCopy = v101;
    if (v105)
    {
      v88 = 2;
    }

    else
    {
      v88 = 1;
    }

    [PLDiagnostics fileRadarUserNotificationWithHeader:@"Failure occured while processing Photo" message:v96 radarTitle:v95 radarDescription:v97 radarComponent:2 diagnosticTTRType:v88 attachments:array extensionItem:v81];

    descriptionCopy = v98;
    errorCopy = v99;
    dataCopy = v102;
  }
}

uint64_t __128__PLDeferredPhotoFinalizer__createTTRForError_assetDescription_asset_isCorruptImageError_finalizedPhotoData_finalPhotoMetadata___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = PLBackendGetLog();
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

- (void)deleteIntermediatesExcludingDeferredIdentifierRequestIdentifiers:(id)identifiers withCompletionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  finalizer = self->_finalizer;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __115__PLDeferredPhotoFinalizer_deleteIntermediatesExcludingDeferredIdentifierRequestIdentifiers_withCompletionHandler___block_invoke;
  v11[3] = &unk_1E756AE90;
  v12 = identifiersCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifiersCopy;
  [(PLCaptureDeferredPhotoProcessor *)finalizer persistentlyStoredDeferredPhotoProxiesWithCompletionHandler:v11];
}

void __115__PLDeferredPhotoFinalizer_deleteIntermediatesExcludingDeferredIdentifierRequestIdentifiers_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v18;
    *&v4 = 138543362;
    v15 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 deferredPhotoIdentifier];
        v11 = [PLPhotoLibrary requestIdentifierFromDeferredIdentifier:v10];
        v12 = [*(a1 + 32) containsObject:v11];
        v13 = PLDeferredProcessingGetLog();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
        if (v12)
        {
          if (v14)
          {
            *buf = v15;
            v22 = v10;
            _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_INFO, "%{public}@ is still needed for later processing", buf, 0xCu);
          }
        }

        else
        {
          if (v14)
          {
            *buf = v15;
            v22 = v10;
            _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_INFO, "%{public}@ is not needed anymore, requesting deletion", buf, 0xCu);
          }

          [*(*(a1 + 40) + 16) deletePersistentStorageForPhotoProxy:v9];
          ++v6;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_callCompletionHandlersForPhotoProxy:(id)proxy success:(BOOL)success error:(id)error
{
  successCopy = success;
  v41 = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  errorCopy = error;
  os_unfair_lock_lock(&self->_identifierToPendingRecordsLock);
  identifierToPendingRecords = self->_identifierToPendingRecords;
  deferredPhotoIdentifier = [proxyCopy deferredPhotoIdentifier];
  v12 = [(NSMutableDictionary *)identifierToPendingRecords objectForKeyedSubscript:deferredPhotoIdentifier];

  v13 = self->_identifierToPendingRecords;
  deferredPhotoIdentifier2 = [proxyCopy deferredPhotoIdentifier];
  [(NSMutableDictionary *)v13 setObject:0 forKeyedSubscript:deferredPhotoIdentifier2];

  os_unfair_lock_unlock(&self->_identifierToPendingRecordsLock);
  if (successCopy)
  {
    v15 = PLDeferredProcessingGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      deferredPhotoIdentifier3 = [proxyCopy deferredPhotoIdentifier];
      qos_class_self();
      v17 = PLShortStringFromQoSClass();
      *buf = 138412546;
      v38 = deferredPhotoIdentifier3;
      v39 = 2114;
      v40 = v17;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "Requesting deletion of intermediates for deferredUUID: %@ QoS: %{public}@", buf, 0x16u);
    }

    [(PLCaptureDeferredPhotoProcessor *)self->_finalizer deletePersistentStorageForPhotoProxy:proxyCopy];
    v18 = 0;
  }

  else
  {
    v18 = errorCopy;
    if (!errorCopy)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v20 = NSStringFromPLErrorCode();
      [dictionary setObject:v20 forKeyedSubscript:*MEMORY[0x1E696A578]];

      v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:48001 userInfo:dictionary];
    }
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = v12;
  v22 = [v21 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v33;
    do
    {
      v25 = 0;
      do
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(v21);
        }

        completionHandler = [*(*(&v32 + 1) + 8 * v25) completionHandler];
        (completionHandler)[2](completionHandler, v18);

        ++v25;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v23);
  }

  if (successCopy && !self->_useCase)
  {
    os_unfair_lock_lock(&self->_identifierToPendingRecordsLock);
    v27 = [(NSMutableDictionary *)self->_identifierToPendingRecords count];
    os_unfair_lock_unlock(&self->_identifierToPendingRecordsLock);
    if (!v27)
    {
      firstObject = [v21 firstObject];
      v29 = [firstObject lsm];
      libraryBundle = [v29 libraryBundle];
      constraintsDirector = [libraryBundle constraintsDirector];
      [constraintsDirector informAssetsFinishedDeferredProcessing];
    }
  }
}

- (void)_transitionDeferredProcessingNeededToNextStateForAsset:(id)asset originalHeight:(int64_t)height originalWidth:(int64_t)width
{
  assetCopy = asset;
  v7 = [assetCopy transitionToDeferredProcessingNeededAdjustmentWithOriginalWidth:width originalHeight:height shouldSignalBackgroundProcessingNeeded:0 reason:@"Deferred photo finalizer transitioned to next processing state"];
  v8 = assetCopy;
  if ((v7 & 1) == 0)
  {
    if ([assetCopy isSemanticEnhanceProcessingCandidate])
    {
      expectedDeferredProcessingNeededOnAssetCreation = 7;
      v8 = assetCopy;
    }

    else
    {
      [assetCopy setDeferredProcessingNeeded:0];
      expectedDeferredProcessingNeededOnAssetCreation = [assetCopy expectedDeferredProcessingNeededOnAssetCreation];
      v8 = assetCopy;
      if (!expectedDeferredProcessingNeededOnAssetCreation)
      {
        goto LABEL_6;
      }
    }

    [v8 setDeferredProcessingNeeded:expectedDeferredProcessingNeededOnAssetCreation];
    v8 = assetCopy;
  }

LABEL_6:
}

- (void)processor:(id)processor didFinishProcessingPhotoProxy:(id)proxy finalPhoto:(id)photo error:(id)error
{
  v134 = *MEMORY[0x1E69E9840];
  processorCopy = processor;
  proxyCopy = proxy;
  photoCopy = photo;
  obj = error;
  errorCopy = error;
  v60 = proxyCopy;
  deferredPhotoIdentifier = [proxyCopy deferredPhotoIdentifier];
  v10 = PLDeferredProcessingGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    qos_class_self();
    v11 = PLShortStringFromQoSClass();
    *buf = 138412546;
    *&buf[4] = deferredPhotoIdentifier;
    *&buf[12] = 2114;
    *&buf[14] = v11;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_INFO, "Received didFinishProcessing callback for identifier: %@ QoS: %{public}@", buf, 0x16u);
  }

  v121 = 0;
  v122 = &v121;
  v123 = 0x2020000000;
  v124 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v131 = __Block_byref_object_copy__33087;
  v132 = __Block_byref_object_dispose__33088;
  v133 = 0;
  fileDataRepresentation = [photoCopy fileDataRepresentation];
  photoLibraryThumbnails = [photoCopy photoLibraryThumbnails];
  metadata = [photoCopy metadata];
  v53 = metadata;
  if (metadata)
  {
    v52 = [(PLDeferredPhotoFinalizer *)self isRenderFromMetadata:metadata];
  }

  else
  {
    v52 = 0;
  }

  os_unfair_lock_lock(&self->_identifierToPendingRecordsLock);
  identifierToPendingRecords = self->_identifierToPendingRecords;
  deferredPhotoIdentifier2 = [v60 deferredPhotoIdentifier];
  v57 = [(NSMutableDictionary *)identifierToPendingRecords objectForKeyedSubscript:deferredPhotoIdentifier2];

  if (v57)
  {
    firstObject = [v57 firstObject];
    v16 = PLBackendGetLog();
    v56 = firstObject;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v17 = v57;
    v18 = [v17 countByEnumeratingWithState:&v117 objects:v129 count:16];
    if (v18)
    {
      v19 = *v118;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v118 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v117 + 1) + 8 * i);
          v22 = v16;
          signpostId = [v21 signpostId];
          if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
          {
            *v125 = 0;
            _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_END, signpostId, "requestFinalizationOfAsset", "", v125, 2u);
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v117 objects:v129 count:16];
      }

      while (v18);
    }

    os_unfair_lock_unlock(&self->_identifierToPendingRecordsLock);
    assetObjectID = [v56 assetObjectID];
    v25 = [v56 lsm];
    expectsSecondProcessingCallback = [v56 expectsSecondProcessingCallback];
    logDescription = [v56 logDescription];
    [v56 startTimestamp];
    v29 = v28;
    databaseContext = [v25 databaseContext];
    v31 = [databaseContext newShortLivedLibraryWithName:"-[PLDeferredPhotoFinalizer processor:didFinishProcessingPhotoProxy:finalPhoto:error:]" libraryRole:2];

    needsSemanticDevelopment = [v56 needsSemanticDevelopment];
    *v125 = 0;
    *&v125[8] = v125;
    *&v125[16] = 0x3032000000;
    v126 = __Block_byref_object_copy__33087;
    v127 = __Block_byref_object_dispose__33088;
    v128 = 0;
    if (v52)
    {
      [v56 fileURLForFullsizeRenderImage];
    }

    else
    {
      [v56 mainFileURL];
    }
    v33 = ;
    v36 = *(*&v125[8] + 40);
    *(*&v125[8] + 40) = v33;

    v37 = [MEMORY[0x1E69BF220] descriptionWithFileURL:*(*&v125[8] + 40)];
    v113 = 0;
    v114 = &v113;
    v115 = 0x2020000000;
    v116 = 0;
    v104[0] = MEMORY[0x1E69E9820];
    v104[1] = 3221225472;
    v104[2] = __85__PLDeferredPhotoFinalizer_processor_didFinishProcessingPhotoProxy_finalPhoto_error___block_invoke;
    v104[3] = &unk_1E7572710;
    v38 = assetObjectID;
    v105 = v38;
    v39 = v31;
    v106 = v39;
    v40 = logDescription;
    v110 = &v113;
    v107 = v40;
    selfCopy = self;
    v112 = v52;
    v41 = deferredPhotoIdentifier;
    v109 = v41;
    v111 = &v121;
    [v39 performBlockAndWait:v104];
    if (*(v114 + 24) == 1)
    {
      [(PLDeferredPhotoFinalizer *)self _callCompletionHandlersForPhotoProxy:v60 success:*(v122 + 24) error:0];
LABEL_31:

      _Block_object_dispose(&v113, 8);
      _Block_object_dispose(v125, 8);

      goto LABEL_32;
    }

    if (errorCopy)
    {
      objc_storeStrong((*&buf[8] + 40), obj);
      v42 = v97;
      v97[0] = MEMORY[0x1E69E9820];
      v97[1] = 3221225472;
      v97[2] = __85__PLDeferredPhotoFinalizer_processor_didFinishProcessingPhotoProxy_finalPhoto_error___block_invoke_167;
      v97[3] = &unk_1E756ADA0;
      v97[4] = v38;
      v43 = v39;
      v97[5] = v43;
      v97[6] = v40;
      v97[7] = self;
      v98 = errorCopy;
      v99 = fileDataRepresentation;
      v100 = v53;
      v102 = buf;
      v103 = &v121;
      v101 = v60;
      [v43 performTransactionAndWait:v97];
    }

    else
    {
      if (!needsSemanticDevelopment)
      {
        v76[0] = MEMORY[0x1E69E9820];
        v76[1] = 3221225472;
        v76[2] = __85__PLDeferredPhotoFinalizer_processor_didFinishProcessingPhotoProxy_finalPhoto_error___block_invoke_174;
        v76[3] = &unk_1E756AE18;
        v77 = v38;
        v78 = v39;
        v79 = v40;
        v85 = v125;
        v86 = buf;
        v80 = fileDataRepresentation;
        selfCopy2 = self;
        v82 = v53;
        v88 = v52;
        v83 = photoLibraryThumbnails;
        v87 = &v121;
        v84 = v37;
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __85__PLDeferredPhotoFinalizer_processor_didFinishProcessingPhotoProxy_finalPhoto_error___block_invoke_178;
        v62[3] = &unk_1E756AE68;
        v74 = expectsSecondProcessingCallback;
        v75 = v52;
        v73 = v29;
        v63 = v79;
        v71 = &v121;
        v64 = v41;
        selfCopy3 = self;
        v66 = v78;
        v67 = v77;
        v68 = 0;
        v69 = v56;
        v70 = v60;
        v72 = buf;
        [v66 performTransaction:v76 completionHandler:v62];

        v46 = &v77;
        v47 = &v78;
        v48 = &v79;
        goto LABEL_30;
      }

      v42 = v89;
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __85__PLDeferredPhotoFinalizer_processor_didFinishProcessingPhotoProxy_finalPhoto_error___block_invoke_168;
      v89[3] = &unk_1E756ADF0;
      v89[4] = v38;
      v44 = v39;
      v89[5] = v44;
      v89[6] = v40;
      v89[7] = self;
      v90 = v60;
      v95 = &v121;
      v91 = fileDataRepresentation;
      v92 = v53;
      v45 = v56;
      v96 = buf;
      v93 = v45;
      v94 = 0;
      [v44 performTransactionAndWait:v89];
    }

    v46 = v42 + 4;
    v47 = v42 + 5;
    v48 = v42 + 6;
LABEL_30:

    goto LABEL_31;
  }

  v34 = PLDeferredProcessingGetLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    allKeys = [(NSMutableDictionary *)self->_identifierToPendingRecords allKeys];
    *v125 = 138543618;
    *&v125[4] = deferredPhotoIdentifier;
    *&v125[12] = 2114;
    *&v125[14] = allKeys;
    _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Received finished proxy for an asset we weren't tracking. identifier:%{public}@, current list:%{public}@", v125, 0x16u);
  }

  os_unfair_lock_unlock(&self->_identifierToPendingRecordsLock);
LABEL_32:

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v121, 8);
}

void __85__PLDeferredPhotoFinalizer_processor_didFinishProcessingPhotoProxy_finalPhoto_error___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [PLManagedAsset assetWithObjectID:*(a1 + 32) inLibrary:*(a1 + 40)];
  if (!v2)
  {
    v10 = PLDeferredProcessingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 48);
      v18 = 138543362;
      v19 = v11;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Refreshed asset %{public}@ does not exist in managed object context, bailing out", &v18, 0xCu);
    }

    v12 = *(*(a1 + 72) + 8);
    goto LABEL_18;
  }

  v3 = [*(a1 + 56) _assetNeedsFinalization:v2 isRender:*(a1 + 88)];
  v4 = PLDeferredProcessingGetLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if ((v3 & 1) == 0)
  {
    if (v5)
    {
      v13 = *(a1 + 48);
      v14 = *(a1 + 64);
      if (*(a1 + 88))
      {
        v15 = @"Y";
      }

      else
      {
        v15 = @"N";
      }

      v16 = [v2 deferredProcessingNeeded];
      qos_class_self();
      v17 = PLShortStringFromQoSClass();
      v18 = 138544386;
      v19 = v13;
      v20 = 2114;
      *v21 = v14;
      *&v21[8] = 2114;
      *&v21[10] = v15;
      v22 = 1024;
      v23 = v16;
      v24 = 2114;
      v25 = v17;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Already finalized this asset, calling completion handlers with success. asset: %{public}@, deferredIdentifier: %{public}@, isRender: %{public}@, deferred processing state %hu, QoS: %{public}@", &v18, 0x30u);
    }

    *(*(*(a1 + 80) + 8) + 24) = 1;
    v12 = *(*(a1 + 72) + 8);
LABEL_18:
    *(v12 + 24) = 1;
    goto LABEL_19;
  }

  if (v5)
  {
    v6 = *(a1 + 48);
    v7 = [v2 deferredProcessingNeeded];
    v8 = *(a1 + 88);
    v18 = 138543874;
    v19 = v6;
    if (v8)
    {
      v9 = @"Y";
    }

    else
    {
      v9 = @"N";
    }

    v20 = 1024;
    *v21 = v7;
    *&v21[4] = 2114;
    *&v21[6] = v9;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Asset %{public}@ with deferred processing state %hu not yet finalized, isRender: %{public}@", &v18, 0x1Cu);
  }

LABEL_19:
}

void __85__PLDeferredPhotoFinalizer_processor_didFinishProcessingPhotoProxy_finalPhoto_error___block_invoke_167(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [PLManagedAsset assetWithObjectID:*(a1 + 32) inLibrary:*(a1 + 40)];
  if (!v2)
  {
    v10 = PLDeferredProcessingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 48);
      *buf = 138543362;
      v27 = v13;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Refreshed asset %{public}@ does not exist in managed object context, bailing out", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v3 = [objc_opt_class() errorIsRecoverable:*(a1 + 64)];
  v4 = PLDeferredProcessingGetLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 64);
      qos_class_self();
      v8 = PLShortStringFromQoSClass();
      *buf = 138543874;
      v27 = v6;
      v28 = 2112;
      v29 = v7;
      v30 = 2114;
      v31 = v8;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "didFinishProcessingPhotoProxy failed in a recoverable way, will try again later for asset: %{public}@, reason: %@, QoS: %{public}@", buf, 0x20u);
    }

    v9 = [*(a1 + 64) userInfo];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    if ([v10 code]== -73199)
    {
      v11 = [v10 domain];
      v12 = [v11 isEqualToString:*MEMORY[0x1E696A768]];

      if (v12)
      {
        [*(a1 + 56) _createTTRForError:*(a1 + 64) assetDescription:*(a1 + 48) asset:v2 isCorruptImageError:1 finalizedPhotoData:*(a1 + 72) finalPhotoMetadata:*(a1 + 80)];
      }
    }

LABEL_10:

    goto LABEL_20;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v14 = *(a1 + 48);
    v15 = *(a1 + 64);
    *buf = 138543618;
    v27 = v14;
    v28 = 2112;
    v29 = v15;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "didFinishProcessingPhotoProxy failed in a NON-recoverable way for asset: %{public}@, reason: %@", buf, 0x16u);
  }

  v16 = *(*(a1 + 96) + 8);
  obj = *(v16 + 40);
  v17 = [v2 promoteDeferredPreviewToFinalImageWithOutError:&obj];
  objc_storeStrong((v16 + 40), obj);
  v18 = PLDeferredProcessingGetLog();
  v19 = v18;
  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v20 = *(a1 + 48);
      qos_class_self();
      v21 = PLShortStringFromQoSClass();
      *buf = 138543618;
      v27 = v20;
      v28 = 2114;
      v29 = v21;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_INFO, "Successfully promoted deferred preview for asset: %{public}@ QoS: %{public}@", buf, 0x16u);
    }

    *(*(*(a1 + 104) + 8) + 24) = 1;
    v22 = *(*(a1 + 96) + 8);
    v19 = *(v22 + 40);
    *(v22 + 40) = 0;
  }

  else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v23 = *(a1 + 48);
    v24 = *(*(*(a1 + 96) + 8) + 40);
    *buf = 138543618;
    v27 = v23;
    v28 = 2112;
    v29 = v24;
    _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Failed to promote deferred preview for asset: %{public}@, reason: %@", buf, 0x16u);
  }

  [*(a1 + 56) _createTTRForError:*(a1 + 64) assetDescription:*(a1 + 48) asset:v2 isCorruptImageError:0 finalizedPhotoData:0 finalPhotoMetadata:0];
LABEL_20:
  [*(a1 + 56) _callCompletionHandlersForPhotoProxy:*(a1 + 88) success:*(*(*(a1 + 104) + 8) + 24) error:*(*(*(a1 + 96) + 8) + 40)];
}

void __85__PLDeferredPhotoFinalizer_processor_didFinishProcessingPhotoProxy_finalPhoto_error___block_invoke_168(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [PLManagedAsset assetWithObjectID:*(a1 + 32) inLibrary:*(a1 + 40)];
  if (v2)
  {
    v3 = *(a1 + 72);
    v4 = PLDeferredProcessingGetLog();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 48);
        *buf = 138412290;
        v29 = v6;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "[SemDev] DF capture needs semantic development for asset: %@", buf, 0xCu);
      }

      [*(a1 + 56) _prepareFinalizedAssetForSemanticDevelopment:v2 finalizedPhotoData:*(a1 + 72)];
      v7 = *(a1 + 56);
      v8 = *(a1 + 80);
      v9 = [v2 pathForDiagnosticFile];
      [v7 _writeDebugFileFromProxyMetadata:v8 withPath:v9];

      v10 = MEMORY[0x1E696AEC0];
      v11 = [*(a1 + 88) requestReason];
      v12 = [v10 stringWithFormat:@"%@ (from AVCaptureDeferredPhotoProcessor didFinish)", v11];

      v13 = *(a1 + 56);
      v14 = [*(a1 + 88) isBackgroundPriority];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __85__PLDeferredPhotoFinalizer_processor_didFinishProcessingPhotoProxy_finalPhoto_error___block_invoke_172;
      v25[3] = &unk_1E756ADC8;
      v15 = *(a1 + 56);
      v16 = *(a1 + 64);
      v27 = *(a1 + 104);
      v25[4] = v15;
      v26 = v16;
      [v13 performSemanticEnhanceForAsset:v2 isBackgroundPriority:v14 reason:v12 completionHandler:v25];
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 48);
        v20 = *(*(*(a1 + 112) + 8) + 40);
        *buf = 138543618;
        v29 = v19;
        v30 = 2112;
        v31 = v20;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Finalized photo data representation is nil for asset: %{public}@, error: %@", buf, 0x16u);
      }

      v24 = 0;
      v21 = [v2 promoteDeferredPreviewToFinalImageWithOutError:&v24];
      v12 = v24;
      if (v21)
      {
        *(*(*(a1 + 104) + 8) + 24) = 1;
      }

      else
      {
        v22 = PLDeferredProcessingGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = *(a1 + 48);
          *buf = 138543618;
          v29 = v23;
          v30 = 2112;
          v31 = v12;
          _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Failed to promote deferred preview for asset: %{public}@, reason %@", buf, 0x16u);
        }
      }

      [*(a1 + 56) _createTTRForError:*(a1 + 96) assetDescription:*(a1 + 48) asset:v2 isCorruptImageError:0 finalizedPhotoData:0 finalPhotoMetadata:0];
      [*(a1 + 56) _callCompletionHandlersForPhotoProxy:*(a1 + 64) success:*(*(*(a1 + 104) + 8) + 24) error:*(a1 + 96)];
    }
  }

  else
  {
    v17 = PLDeferredProcessingGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 48);
      *buf = 138543362;
      v29 = v18;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Refreshed asset %{public}@ does not exist in managed object context, bailing out", buf, 0xCu);
    }

    [*(a1 + 56) _callCompletionHandlersForPhotoProxy:*(a1 + 64) success:*(*(*(a1 + 104) + 8) + 24) error:0];
  }
}

void __85__PLDeferredPhotoFinalizer_processor_didFinishProcessingPhotoProxy_finalPhoto_error___block_invoke_174(uint64_t a1)
{
  v85 = *MEMORY[0x1E69E9840];
  v2 = [PLManagedAsset assetWithObjectID:*(a1 + 32) inLibrary:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 height];
    v5 = [v3 width];
    if (*(*(*(a1 + 96) + 8) + 40))
    {
      v6 = v5;
      v7 = *(a1 + 56);
      if (v7)
      {
        v8 = *(*(a1 + 104) + 8);
        obj = *(v8 + 40);
        v9 = [v7 writeToURL:? options:? error:?];
        objc_storeStrong((v8 + 40), obj);
        if (v9)
        {
          v10 = *(a1 + 64);
          v11 = *(a1 + 72);
          v12 = [v3 pathForDiagnosticFile];
          [v10 _writeDebugFileFromProxyMetadata:v11 withPath:v12];

          if ([*(a1 + 80) count] && (objc_msgSend(v3, "originalImageOrientation"), objc_msgSend(*(a1 + 80), "objectAtIndexedSubscript:", 0), v13 = objc_claimAutoreleasedReturnValue(), v14 = PLCreateCGImageFromIOSurfaceWithOrientation(), v13, v14))
          {
            v15 = DCIM_newPLImageWithCGImage();
            CFRelease(v14);
          }

          else
          {
            v15 = 0;
          }

          if (*(a1 + 120) == 1)
          {
            if ([v3 kindSubtype] == 2)
            {
              v30 = [v3 fileURLForFullsizeRenderVideo];
              v31 = [MEMORY[0x1E696AC08] defaultManager];
              v32 = [v3 fileURLForOriginalVideoComplement];
              v79 = 0;
              v33 = [v31 copyItemAtURL:v32 toURL:v30 error:&v79];
              v34 = v79;

              if ((v33 & 1) == 0)
              {
                v35 = PLDeferredProcessingGetLog();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  v36 = [v3 fileURLForOriginalVideoComplement];
                  *buf = 138412802;
                  v82 = v36;
                  v83 = 2112;
                  *v84 = v30;
                  *&v84[8] = 2112;
                  *&v84[10] = v34;
                  _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "Failed to copy video complement from %@ to %@ with error: %@", buf, 0x20u);
                }
              }
            }

            else
            {
              v30 = 0;
            }

            [v3 setDeferredProcessingNeeded:2];
            v49 = [v3 additionalAttributes];
            [v49 setDeferredProcessingCandidateOptions:0];

            v50 = *(*(*(a1 + 96) + 8) + 40);
            v78 = 0;
            v51 = [v3 updateDeferredAdjustmentWithFullSizeRenderImageURL:v50 videoURL:v30 videoPosterURL:0 error:&v78];
            v52 = v78;
            if ((v51 & 1) == 0)
            {
              v53 = PLDeferredProcessingGetLog();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                v54 = *(a1 + 48);
                *buf = 138543618;
                v82 = v54;
                v83 = 2112;
                *v84 = v52;
                _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_ERROR, "Failed to update deferred adjustment (possibly non-fatal, finalizer will continue as if success) for asset: %{public}@ error: %@", buf, 0x16u);
              }
            }

            *(*(*(a1 + 112) + 8) + 24) = 1;

LABEL_46:
            goto LABEL_47;
          }

          v41 = *(*(*(a1 + 96) + 8) + 40);
          v42 = *(*(a1 + 104) + 8);
          v77 = *(v42 + 40);
          v43 = [v3 installFinalImageAndRemoveDeferredFilesWithFinalImageURL:v41 previewImage:v15 thumbnailImage:0 outError:&v77];
          objc_storeStrong((v42 + 40), v77);
          if (!v43)
          {
            v64 = [MEMORY[0x1E69BF238] isFileExistsError:*(*(*(a1 + 104) + 8) + 40)];
            v65 = PLDeferredProcessingGetLog();
            v30 = v65;
            if (v64)
            {
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
              {
                v66 = *(a1 + 48);
                v67 = *(a1 + 88);
                *buf = 138543618;
                v82 = v66;
                v83 = 2112;
                *v84 = v67;
                _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "Asset %{public}@ has already had file written to %@, skipping copy", buf, 0x16u);
              }

              v68 = *(*(*(a1 + 96) + 8) + 40);
              v69 = *(*(a1 + 104) + 8);
              v76 = *(v69 + 40);
              v70 = [v3 installFinalImageAndRemoveDeferredFilesWithFinalImageURL:v68 previewImage:v15 thumbnailImage:0 outError:&v76];
              objc_storeStrong((v69 + 40), v76);
              *(*(*(a1 + 112) + 8) + 24) = v70;
              goto LABEL_47;
            }

            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              v71 = *(a1 + 48);
              v72 = *(*(*(a1 + 104) + 8) + 40);
              *buf = 138543618;
              v82 = v71;
              v83 = 2112;
              *v84 = v72;
              _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "Failed to install image for asset: %{public}@, reason: %@", buf, 0x16u);
            }

            goto LABEL_46;
          }

          [*(a1 + 64) _transitionDeferredProcessingNeededToNextStateForAsset:v3 originalHeight:v4 originalWidth:v6];
          *(*(*(a1 + 112) + 8) + 24) = 1;
        }

        else
        {
          if ([MEMORY[0x1E69BF238] isFileExistsError:*(*(*(a1 + 104) + 8) + 40)])
          {
            v25 = *(a1 + 120);
            v26 = PLDeferredProcessingGetLog();
            v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
            if (v25)
            {
              if (v27)
              {
                v28 = *(a1 + 48);
                v29 = *(a1 + 88);
                *buf = 138543618;
                v82 = v28;
                v83 = 2112;
                *v84 = v29;
                _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "Render for asset %{public}@ has already had data written to %@, skipping copy", buf, 0x16u);
              }

              *(*(*(a1 + 112) + 8) + 24) = 1;
            }

            else
            {
              if (v27)
              {
                v44 = *(a1 + 48);
                v45 = *(a1 + 88);
                *buf = 138543618;
                v82 = v44;
                v83 = 2112;
                *v84 = v45;
                _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "Asset %{public}@ has already had data written to %@, skipping copy", buf, 0x16u);
              }

              v46 = *(*(*(a1 + 96) + 8) + 40);
              v47 = *(*(a1 + 104) + 8);
              v75 = *(v47 + 40);
              v48 = [v3 installFinalImageAndRemoveDeferredFilesWithFinalImageURL:v46 previewImage:0 thumbnailImage:0 outError:&v75];
              objc_storeStrong((v47 + 40), v75);
              *(*(*(a1 + 112) + 8) + 24) = v48;
              [*(a1 + 64) _transitionDeferredProcessingNeededToNextStateForAsset:v3 originalHeight:v4 originalWidth:v6];
            }

            goto LABEL_48;
          }

          v15 = [*(*(*(a1 + 104) + 8) + 40) copy];
          v37 = PLDeferredProcessingGetLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v38 = [v3 uuid];
            v39 = *(*(*(a1 + 104) + 8) + 40);
            *buf = 138543618;
            v82 = v38;
            v83 = 2112;
            *v84 = v39;
            _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "Failed to write out file data for deferred photo for asset: %{public}@, reason: %@", buf, 0x16u);
          }

          v40 = *(*(a1 + 104) + 8);
          v74 = *(v40 + 40);
          [v3 promoteDeferredPreviewToFinalImageWithOutError:&v74];
          objc_storeStrong((v40 + 40), v74);
          [*(a1 + 64) _createTTRForError:v15 assetDescription:*(a1 + 48) asset:v3 isCorruptImageError:0 finalizedPhotoData:0 finalPhotoMetadata:0];
        }

LABEL_47:

LABEL_48:
        if ([v3 deferredProcessingNeeded])
        {
          v55 = PLDeferredProcessingGetLog();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = *(a1 + 48);
            v57 = [v3 deferredProcessingNeeded];
            qos_class_self();
            v58 = PLShortStringFromQoSClass();
            *buf = 138543874;
            v82 = v56;
            v83 = 1024;
            *v84 = v57;
            *&v84[4] = 2114;
            *&v84[6] = v58;
            _os_log_impl(&dword_19BF1F000, v55, OS_LOG_TYPE_DEFAULT, "Scheduling asset: %{public}@ for deferred processing with value: %d QoS: %{public}@", buf, 0x1Cu);
          }

          v59 = [v3 photoLibrary];
          v60 = [v59 libraryServicesManager];
          v61 = [v60 backgroundJobService];
          v62 = [v3 photoLibrary];
          v63 = +[PLBackgroundJobWorkerTypes typesMaskForDeferredProcessingNeeded:](PLBackgroundJobWorkerTypes, "typesMaskForDeferredProcessingNeeded:", [v3 deferredProcessingNeeded]);
          [v61 signalBackgroundProcessingNeededOnLibrary:v62 workerTypes:v63];
        }

        goto LABEL_52;
      }
    }

    if ((*(*(*(a1 + 112) + 8) + 24) & 1) == 0)
    {
      v16 = PLDeferredProcessingGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 48);
        *buf = 138543362;
        v82 = v17;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "File data representation was nil for deferred photo for asset: %{public}@", buf, 0xCu);
      }

      v18 = *(*(a1 + 104) + 8);
      v73 = *(v18 + 40);
      v19 = [v3 promoteDeferredPreviewToFinalImageWithOutError:&v73];
      objc_storeStrong((v18 + 40), v73);
      if ((v19 & 1) == 0)
      {
        v20 = PLDeferredProcessingGetLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = *(a1 + 48);
          v22 = *(*(*(a1 + 104) + 8) + 40);
          *buf = 138543618;
          v82 = v21;
          v83 = 2112;
          *v84 = v22;
          _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Failed to promote deferred preview for asset %{public}@, with error: %@", buf, 0x16u);
        }
      }

      [*(a1 + 64) _createTTRForError:*(*(*(a1 + 104) + 8) + 40) assetDescription:*(a1 + 48) asset:v3 isCorruptImageError:0 finalizedPhotoData:0 finalPhotoMetadata:0];
    }
  }

  else
  {
    v23 = PLDeferredProcessingGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 48);
      *buf = 138543362;
      v82 = v24;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Refreshed asset %{public}@ does not exist in managed object context, bailing out", buf, 0xCu);
    }
  }

LABEL_52:
}

void __85__PLDeferredPhotoFinalizer_processor_didFinishProcessingPhotoProxy_finalPhoto_error___block_invoke_178(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  if (*(a1 + 120) == 1 && *(a1 + 121) != 1)
  {
    v20 = PLDeferredProcessingGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 32);
      *buf = 138543362;
      v33 = v21;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_INFO, "Expecting second callback for asset: %{public}@, not calling completion handlers yet", buf, 0xCu);
    }
  }

  else
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v3 = v2;
    v4 = v2 - *(a1 + 112);
    v5 = PLDeferredProcessingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      if (*(*(*(a1 + 96) + 8) + 24))
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = v8;
      qos_class_self();
      v10 = PLShortStringFromQoSClass();
      *buf = 138544386;
      v33 = v6;
      v34 = 2114;
      v35 = v7;
      v36 = 2114;
      v37 = v9;
      v38 = 2114;
      v39 = v10;
      v40 = 2048;
      v41 = v4;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Calling completion handlers for asset: %{public}@ deferredIdentifier: %{public}@, success: %{public}@, QoS: %{public}@, duration %.3fs", buf, 0x34u);
    }

    if (*(*(a1 + 48) + 40))
    {
      v11 = @"Tail";
    }

    else
    {
      v11 = @"Head";
    }

    v12 = v11;
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __85__PLDeferredPhotoFinalizer_processor_didFinishProcessingPhotoProxy_finalPhoto_error___block_invoke_185;
    v25 = &unk_1E756AE40;
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);
    v15 = *(a1 + 56);
    v29 = v3;
    v30 = v4;
    v16 = *(a1 + 72);
    v31 = *(a1 + 121);
    v17 = *(a1 + 80);
    *&v18 = v16;
    *(&v18 + 1) = v17;
    *&v19 = v14;
    *(&v19 + 1) = v15;
    v26 = v19;
    v27 = v18;
    v28 = v12;
    v20 = v12;
    [v13 performBlockAndWait:&v22];
    [*(a1 + 48) _callCompletionHandlersForPhotoProxy:*(a1 + 88) success:*(*(*(a1 + 96) + 8) + 24) error:{*(*(*(a1 + 104) + 8) + 40), v22, v23, v24, v25}];
  }
}

void __85__PLDeferredPhotoFinalizer_processor_didFinishProcessingPhotoProxy_finalPhoto_error___block_invoke_185(uint64_t a1)
{
  v12 = [PLManagedAsset assetWithObjectID:*(a1 + 32) inLibrary:*(a1 + 40)];
  v2 = *(a1 + 72);
  v3 = [v12 addedDate];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v2 - v4;

  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *(a1 + 48);
  v9 = [*(a1 + 56) qosToProcess];
  v10 = *(a1 + 64);
  v11 = [*(a1 + 56) clientBundleID];
  PLBuildAndSendFinalizationAnalytics(v12, v8, v7, v9, v10, v11, v6, v5);
}

- (BOOL)_assetNeedsFinalization:(id)finalization isRender:(BOOL)render
{
  renderCopy = render;
  v15 = *MEMORY[0x1E69E9840];
  finalizationCopy = finalization;
  deferredProcessingNeeded = [finalizationCopy deferredProcessingNeeded];
  if (renderCopy)
  {
    v7 = deferredProcessingNeeded == 2;
  }

  else
  {
    if (deferredProcessingNeeded != 1)
    {
      if (![finalizationCopy resourceModelIndicatesDeepFusionNeeded])
      {
        v7 = 0;
        goto LABEL_10;
      }

      v8 = PLDeferredProcessingGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        uuid = [finalizationCopy uuid];
        v11 = 138543618;
        v12 = uuid;
        v13 = 1024;
        deferredProcessingNeeded2 = [finalizationCopy deferredProcessingNeeded];
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Asset %{public}@ DP needed state %hu does not indicate finalization was needed, but resource model does", &v11, 0x12u);
      }
    }

    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (BOOL)isRenderFromMetadata:(id)metadata
{
  v3 = [metadata objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69867F8]];
  longValue = [v4 longValue];

  return (longValue >> 3) & 1;
}

- (void)requestFinalizationOfAsset:(id)asset isBackgroundPriority:(BOOL)priority reason:(id)reason clientBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  priorityCopy = priority;
  v80 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  reasonCopy = reason;
  identifierCopy = identifier;
  handlerCopy = handler;
  v66 = reasonCopy;
  if ([assetCopy deferredProcessingNeeded] != 10)
  {
    v61 = priorityCopy;
    additionalAttributes = [assetCopy additionalAttributes];
    deferredPhotoIdentifier = [additionalAttributes deferredPhotoIdentifier];

    if ([assetCopy hasAdjustments])
    {
      v65 = [objc_alloc(MEMORY[0x1E6987088]) initWithDeferredPhotoIdentifier:deferredPhotoIdentifier applicationIdentifier:@"com.apple.camera"];
    }

    else
    {
      v16 = [(PLDeferredPhotoFinalizer *)self thumbnailDimensionsForFinalizationRequestsForAsset:assetCopy];
      v65 = [objc_alloc(MEMORY[0x1E6987088]) initWithDeferredPhotoIdentifier:deferredPhotoIdentifier applicationIdentifier:@"com.apple.camera" photoLibraryThumbnailDimensions:v16];
    }

    uuidDescription = [assetCopy uuidDescription];
    finalizer = self->_finalizer;
    if (v65)
    {
      if (finalizer)
      {
        log = PLBackendGetLog();
        spid = os_signpost_id_generate(log);
        if (!self->_useCase)
        {
          photoLibrary = [assetCopy photoLibrary];
          constraintsDirector = [photoLibrary constraintsDirector];
          [constraintsDirector informAssetDeferredProcessingOccurring];
        }

        additionalAttributes2 = [assetCopy additionalAttributes];
        deferredProcessingCandidateOptions = [additionalAttributes2 deferredProcessingCandidateOptions];

        qos_class_self();
        v60 = PLShortStringFromQoSClass();
        v22 = [PLDeferredPhotoPendingAssetRecord alloc];
        objectID = [assetCopy objectID];
        photoLibrary2 = [assetCopy photoLibrary];
        libraryServicesManager = [photoLibrary2 libraryServicesManager];
        fileURLForFullsizeRenderImage = [assetCopy fileURLForFullsizeRenderImage];
        mainFileURL = [assetCopy mainFileURL];
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        LOBYTE(v56) = (deferredProcessingCandidateOptions & 8) != 0;
        v57 = [(PLDeferredPhotoPendingAssetRecord *)v22 initWithAssetObjectID:objectID lsm:libraryServicesManager requestReason:v66 isBackgroundPriority:v61 signpostId:spid expectsSecondProcessingCallback:(deferredProcessingCandidateOptions >> 4) & 1 needsSemanticDevelopment:v56 fileURLForFullsizeRenderImage:fileURLForFullsizeRenderImage mainFileURL:mainFileURL logDescription:uuidDescription startTimestamp:v60 deferredmediadQos:identifierCopy clientBundleID:handlerCopy completionHandler:?];

        os_unfair_lock_lock(&self->_identifierToPendingRecordsLock);
        identifierToPendingRecords = self->_identifierToPendingRecords;
        deferredPhotoIdentifier2 = [v65 deferredPhotoIdentifier];
        v30 = [(NSMutableDictionary *)identifierToPendingRecords objectForKey:deferredPhotoIdentifier2];

        if (v30)
        {
          v31 = PLDeferredProcessingGetLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            deferredPhotoIdentifier3 = [v65 deferredPhotoIdentifier];
            *buf = 138543874;
            v69 = uuidDescription;
            v70 = 2114;
            v71 = deferredPhotoIdentifier3;
            v72 = 2114;
            v73 = v60;
            _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEFAULT, "Adding another pending asset record for asset: %{public}@ with deferred identifier: %{public}@, QoS: %{public}@", buf, 0x20u);
          }
        }

        else
        {
          v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v31 = PLDeferredProcessingGetLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            deferredPhotoIdentifier4 = [v65 deferredPhotoIdentifier];
            *buf = 138543874;
            v69 = uuidDescription;
            v70 = 2114;
            v71 = deferredPhotoIdentifier4;
            v72 = 2114;
            v73 = v60;
            _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEFAULT, "First instance of request finalization for asset: %{public}@ with deferred identifier: %{public}@, QoS %{public}@", buf, 0x20u);
          }
        }

        [v30 addObject:v57];
        v42 = self->_identifierToPendingRecords;
        deferredPhotoIdentifier5 = [v65 deferredPhotoIdentifier];
        [(NSMutableDictionary *)v42 setObject:v30 forKey:deferredPhotoIdentifier5];

        os_unfair_lock_unlock(&self->_identifierToPendingRecordsLock);
        v44 = log;
        v39 = v44;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
        {
          uuid = [assetCopy uuid];
          *buf = 138543362;
          v69 = uuid;
          _os_signpost_emit_with_name_impl(&dword_19BF1F000, v39, OS_SIGNPOST_INTERVAL_BEGIN, spid, "requestFinalizationOfAsset", "uuid: %{public}@", buf, 0xCu);
        }

        v46 = MEMORY[0x1E69868E0];
        if (self->_useCase)
        {
          v46 = MEMORY[0x1E69868E8];
        }

        v47 = *v46;
        v48 = PLDeferredProcessingGetLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          deferredPhotoIdentifier6 = [v65 deferredPhotoIdentifier];
          v50 = PLDeferredPhotoFinalizerUseCaseToString(self->_useCase);
          v51 = v50;
          v52 = @"NO";
          *buf = 138544642;
          v69 = uuidDescription;
          v70 = 2114;
          if (v61)
          {
            v52 = @"YES";
          }

          v71 = deferredPhotoIdentifier6;
          v72 = 2114;
          v73 = v60;
          v74 = 2114;
          v75 = v50;
          v76 = 2114;
          v77 = v52;
          v78 = 2114;
          v79 = v66;
          v53 = v52;
          _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_DEFAULT, "Requesting finalization for asset %{public}@ with deferredPhotoIdentifier: %{public}@, QoS: %{public}@, useCase: %{public}@, backgroundPriority: %{public}@, reason: %{public}@", buf, 0x3Eu);
        }

        v54 = qos_class_self();
        v55 = 56;
        if (v54 == QOS_CLASS_USER_INITIATED)
        {
          v55 = 48;
        }

        [(PLCaptureDeferredPhotoProcessor *)self->_finalizer processPhotoProxy:v65 queuePosition:v47 delegate:self delegateQueue:*(&self->super.isa + v55)];

LABEL_39:
        goto LABEL_40;
      }
    }

    else if (finalizer)
    {
      v33 = PLDeferredProcessingGetLog();
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
      if (deferredPhotoIdentifier)
      {
        if (v34)
        {
          additionalAttributes3 = [assetCopy additionalAttributes];
          deferredPhotoIdentifier7 = [additionalAttributes3 deferredPhotoIdentifier];
          *buf = 138543362;
          v69 = deferredPhotoIdentifier7;
          _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "deferredPhotoIdentifier not recognized by deferredmediad, attempting promotion of preview: %{public}@", buf, 0xCu);
        }

        goto LABEL_20;
      }

      if (v34)
      {
        *buf = 138543362;
        v69 = uuidDescription;
        v37 = "deferredPhotoIdentifier is nil for asset: %{public}@ likely due to asset deletion, bailing out";
        goto LABEL_19;
      }

LABEL_20:

      v67 = 0;
      v38 = [assetCopy promoteDeferredPreviewToFinalImageWithOutError:&v67];
      v39 = v67;
      if ((v38 & 1) == 0)
      {
        v40 = PLDeferredProcessingGetLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v69 = uuidDescription;
          v70 = 2112;
          v71 = v39;
          _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_ERROR, "Failed to promote deferred preview of asset %{public}@ with error: %@", buf, 0x16u);
        }
      }

      handlerCopy[2](handlerCopy, v39);
      goto LABEL_39;
    }

    v33 = PLDeferredProcessingGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v69 = uuidDescription;
      v37 = "nil shared photo processor when trying to finalize asset: %{public}@";
LABEL_19:
      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, v37, buf, 0xCu);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  [(PLDeferredPhotoFinalizer *)self performSemanticEnhanceForAsset:assetCopy isBackgroundPriority:priorityCopy reason:reasonCopy completionHandler:handlerCopy];
LABEL_40:
}

- (id)thumbnailDimensionsForFinalizationRequestsForAsset:(id)asset
{
  v12[1] = *MEMORY[0x1E69E9840];
  [asset unorientedSize];
  v3 = PLSizeFromCGSize();
  defaultFormatChooser = [MEMORY[0x1E69BF248] defaultFormatChooser];
  v5 = MEMORY[0x1E69BF308];
  masterThumbnailFormat = [defaultFormatChooser masterThumbnailFormat];
  v7 = [v5 maxMasterSizeFromSourceImageSize:v3 format:masterThumbnailFormat];
  LODWORD(v3) = v7;
  v8 = HIDWORD(v7);

  v14.width = v3;
  v14.height = v8;
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v14);
  v12[0] = DictionaryRepresentation;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

  return v10;
}

- (void)_writeDebugFileFromProxyMetadata:(id)metadata withPath:(id)path
{
  v25 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  pathCopy = path;
  v7 = [metadataCopy objectForKey:@"{Diagnostic}"];
  if (![v7 count])
  {
    XMPData = 0;
    goto LABEL_10;
  }

  v8 = objc_autoreleasePoolPush();
  v20 = 0;
  v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:v7 format:200 options:0 error:&v20];
  v10 = v9;
  if (!v9)
  {
    v11 = PLDeferredProcessingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "failed to deserialize diagnostics data", buf, 2u);
    }

    goto LABEL_8;
  }

  v11 = [v9 base64EncodedStringWithOptions:0];
  Mutable = CGImageMetadataCreateMutable();
  if (!Mutable)
  {
LABEL_8:
    XMPData = 0;
    goto LABEL_9;
  }

  v13 = Mutable;
  CGImageMetadataRegisterNamespaceForPrefix(Mutable, @"http://ns.apple.com/ios_debug", @"ios_debug", 0);
  CGImageMetadataSetValueWithPath(v13, 0, @"ios_debug:camera_diagnostics_bplist", v11);
  XMPData = CGImageMetadataCreateXMPData(v13, 0);
  CFRelease(v13);
LABEL_9:

  objc_autoreleasePoolPop(v8);
LABEL_10:
  if ([(__CFData *)XMPData length])
  {
    v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy isDirectory:0];
    v19 = 0;
    v16 = [(__CFData *)XMPData writeToURL:v15 options:0 error:&v19];
    v17 = v19;
    if ((v16 & 1) == 0)
    {
      v18 = PLCameraGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v22 = v15;
        v23 = 2112;
        v24 = v17;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Failed to persist diagnostics to URL %{public}@ with error:%@", buf, 0x16u);
      }
    }
  }
}

- (id)initForUseCase:(int64_t)case
{
  v18.receiver = self;
  v18.super_class = PLDeferredPhotoFinalizer;
  v4 = [(PLDeferredPhotoFinalizer *)&v18 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    identifierToPendingRecords = v4->_identifierToPendingRecords;
    v4->_identifierToPendingRecords = v5;

    if (MEMORY[0x19EAEE520]())
    {
      v7 = 0;
    }

    else
    {
      v7 = objc_alloc_init(PLCaptureDeferredPhotoProcessor);
    }

    finalizer = v4->_finalizer;
    v4->_finalizer = v7;

    if (!v4->_finalizer)
    {
      v9 = PLDeferredProcessingGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Failed to get a shared photo processor", v17, 2u);
      }
    }

    v4->_identifierToPendingRecordsLock._os_unfair_lock_opaque = 0;
    v10 = objc_alloc_init(MEMORY[0x1E69AE870]);
    imageConversionServiceClient = v4->_imageConversionServiceClient;
    v4->_imageConversionServiceClient = v10;

    v4->_useCase = case;
    v12 = pl_dispatch_queue_create_with_qos_and_fallback_qos();
    finalizerQueueUI = v4->_finalizerQueueUI;
    v4->_finalizerQueueUI = v12;

    v14 = dispatch_queue_create("com.apple.photos.backend.deferredPhotoFinalizerQueue.Unspecified", 0);
    finalizerQueueUnspecified = v4->_finalizerQueueUnspecified;
    v4->_finalizerQueueUnspecified = v14;
  }

  return v4;
}

+ (BOOL)errorIsRecoverable:(id)recoverable
{
  recoverableCopy = recoverable;
  domain = [recoverableCopy domain];
  v5 = [domain isEqualToString:*MEMORY[0x1E69BFF48]];

  v6 = MEMORY[0x1E696AA08];
  v7 = recoverableCopy;
  if (v5)
  {
    userInfo = [recoverableCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:*v6];
  }

  domain2 = [v7 domain];
  v10 = [domain2 isEqualToString:*MEMORY[0x1E69874D8]];

  if (v10)
  {
    userInfo2 = [v7 userInfo];
    v12 = [userInfo2 objectForKeyedSubscript:*v6];

    code = [v12 code];
    v16 = (code + 16825) <= 4 && ((1 << (code - 71)) & 0x19) != 0 || code == -73199;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end