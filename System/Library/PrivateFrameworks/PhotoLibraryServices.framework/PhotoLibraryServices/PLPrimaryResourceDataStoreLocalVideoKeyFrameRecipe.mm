@interface PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe
+ (void)generateKeyFrameFromVideoURL:(id)l destinationURL:(id)rL time:(id *)time completion:(id)completion;
+ (void)generateKeyFrameFromVideoURL:(id)l time:(id *)time completion:(id)completion;
- (PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe)initWithRecipeID:(unsigned int)d;
- (id)chooseIngredientsFrom:(id)from version:(unsigned int)version;
- (void)_generateAndStoreForAsset:(id)asset networkAccessAllowed:(BOOL)allowed clientBundleID:(id)d progress:(id *)progress completion:(id)completion;
- (void)_handleJobFinished:(id)finished withMutatedMoc:(id)moc error:(id)error storedRecipes:(id)recipes affectedRecipes:(id)affectedRecipes sourceMetadata:(id)metadata;
- (void)_handleKeyFrameGeneratedWithAsset:(id)asset destinationURL:(id)l completion:(id)completion;
- (void)_runNextJob;
- (void)generateAndStoreForAsset:(id)asset options:(id)options progress:(id *)progress completion:(id)completion;
@end

@implementation PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe

- (void)_runNextJob
{
  v37 = *MEMORY[0x1E69E9840];
  popNextJobToRun = [(PLLocalVideoKeyFrameJobQueue *)self->_jobQueue popNextJobToRun];
  if (popNextJobToRun)
  {
    v4 = +[PLPhotoLibraryBundleController sharedBundleController];
    libraryBundles = [v4 libraryBundles];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = libraryBundles;
    v7 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v31;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v30 + 1) + 8 * v10);
        pathManager = [v11 pathManager];
        v13 = PLLibraryIDFromPathManager();

        libraryID = [popNextJobToRun libraryID];
        v15 = [v13 isEqual:libraryID];

        if (v15)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      libraryServicesManager = [v11 libraryServicesManager];
      databaseContext = [libraryServicesManager databaseContext];
      v18 = [databaseContext newShortLivedLibraryWithName:"-[PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe _runNextJob]"];

      if (!v18)
      {
        goto LABEL_13;
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __65__PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe__runNextJob__block_invoke;
      v26[3] = &unk_1E75761B8;
      v27 = popNextJobToRun;
      v28 = v18;
      selfCopy = self;
      libraryID2 = v18;
      [libraryID2 performBlock:v26];

      v20 = v27;
    }

    else
    {
LABEL_10:

LABEL_13:
      v21 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E69BFF48];
      v34 = *MEMORY[0x1E696A278];
      v23 = MEMORY[0x1E696AEC0];
      libraryID2 = [popNextJobToRun libraryID];
      v20 = [v23 stringWithFormat:@"Could not find photo library bundle for libraryID: %@", libraryID2];
      v35 = v20;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v25 = [v21 errorWithDomain:v22 code:47001 userInfo:v24];
      [(PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe *)self _handleJobFinished:popNextJobToRun withMutatedMoc:0 error:v25 storedRecipes:0 affectedRecipes:0 sourceMetadata:0];
    }
  }
}

void __65__PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe__runNextJob__block_invoke(id *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLManagedAsset entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = MEMORY[0x1E696AE18];
  v6 = [a1[4] assetObjectID];
  v7 = [v5 predicateWithFormat:@"self == %@", v6];
  [v4 setPredicate:v7];

  v8 = [a1[5] managedObjectContext];
  v29 = 0;
  v9 = [v8 executeFetchRequest:v4 error:&v29];
  v10 = v29;
  v11 = [v9 firstObject];

  v12 = PLImageManagerGetLog();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v11 uuid];
      *buf = 138412290;
      v31 = v14;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "[key frame] generating key frame for dequeued job for asset: %@", buf, 0xCu);
    }

    v15 = a1[6];
    v16 = [a1[4] networkAccessAllowed];
    v17 = [a1[4] clientBundleID];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __65__PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe__runNextJob__block_invoke_217;
    v25[3] = &unk_1E756E300;
    v18 = a1[5];
    v19 = a1[6];
    v26 = v18;
    v27 = v19;
    v28 = a1[4];
    [v15 _generateAndStoreForAsset:v11 networkAccessAllowed:v16 clientBundleID:v17 progress:0 completion:v25];

    v20 = v26;
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v21 = [a1[4] assetObjectID];
      *buf = 138543618;
      v31 = v21;
      v32 = 2112;
      v33 = v10;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "[key frame] Could not find asset object ID: %{public}@, error: %@", buf, 0x16u);
    }

    v22 = MEMORY[0x1E696AEC0];
    v23 = [a1[4] assetObjectID];
    v24 = [v22 stringWithFormat:@"Could not find asset objectID: %@", v23];
    v20 = PLErrorCreate();

    [a1[6] _handleJobFinished:a1[4] withMutatedMoc:0 error:v20 storedRecipes:0 affectedRecipes:0 sourceMetadata:0];
  }
}

void __65__PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe__runNextJob__block_invoke_217(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v16 = a2;
  v9 = *(a1 + 32);
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v9 managedObjectContext];
  if (v13 == v16)
  {
    v14 = [*(a1 + 32) managedObjectContext];
  }

  else
  {
    v14 = v16;
  }

  v15 = v14;

  [*(a1 + 40) _handleJobFinished:*(a1 + 48) withMutatedMoc:v15 error:v12 storedRecipes:v11 affectedRecipes:v10 sourceMetadata:0];
}

- (void)_handleJobFinished:(id)finished withMutatedMoc:(id)moc error:(id)error storedRecipes:(id)recipes affectedRecipes:(id)affectedRecipes sourceMetadata:(id)metadata
{
  jobQueue = self->_jobQueue;
  metadataCopy = metadata;
  affectedRecipesCopy = affectedRecipes;
  recipesCopy = recipes;
  errorCopy = error;
  mocCopy = moc;
  finishedCopy = finished;
  [(PLLocalVideoKeyFrameJobQueue *)jobQueue removeJob:finishedCopy];
  [finishedCopy callCompletionHandlersWithMutatedMoc:mocCopy error:errorCopy storedRecipes:recipesCopy affectedRecipes:affectedRecipesCopy sourceMetadata:metadataCopy];

  [(PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe *)self _runNextJob];
}

- (void)_generateAndStoreForAsset:(id)asset networkAccessAllowed:(BOOL)allowed clientBundleID:(id)d progress:(id *)progress completion:(id)completion
{
  allowedCopy = allowed;
  v73 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  dCopy = d;
  completionCopy = completion;
  v12 = [(PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe *)self chooseIngredientsFrom:assetCopy version:3];
  v13 = MEMORY[0x1E6960CC0];
  v14 = *MEMORY[0x1E6960CC0];
  value = *MEMORY[0x1E6960CC0];
  v15 = *(MEMORY[0x1E6960CC0] + 8);
  flags = *(MEMORY[0x1E6960CC0] + 12);
  timescale = v15;
  v16 = *(MEMORY[0x1E6960CC0] + 16);
  epoch = v16;
  mediaAnalysisAttributes = [assetCopy mediaAnalysisAttributes];

  if (mediaAnalysisAttributes)
  {
    if (assetCopy && ([assetCopy videoKeyFrameTime], value = buf.start.value, timescale = buf.start.timescale, (buf.start.flags & 1) != 0))
    {
      epoch = buf.start.epoch;
      flags = buf.start.flags;
    }

    else
    {
      value = v14;
      timescale = v15;
    }
  }

  v18 = MEMORY[0x1E695DFF8];
  pathForLocalVideoKeyFrame = [assetCopy pathForLocalVideoKeyFrame];
  v20 = [v18 fileURLWithPath:pathForLocalVideoKeyFrame];

  if ([v12 count])
  {
    v21 = 0;
  }

  else
  {
    v22 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E69BFF48];
    v69 = *MEMORY[0x1E696A278];
    v70 = @"failed to find ingredients to generate local video key frame";
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
    v21 = [v22 errorWithDomain:v23 code:47001 userInfo:v24];
  }

  v25 = [v12 objectForKeyedSubscript:@"localVideo"];
  v26 = v25;
  if (v25)
  {
    dataStoreKey = [v25 dataStoreKey];
    assetID = [assetCopy assetID];
    v29 = [dataStoreKey fileURLForAssetID:assetID];

    if (v29)
    {
      v30 = objc_opt_class();
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __136__PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe__generateAndStoreForAsset_networkAccessAllowed_clientBundleID_progress_completion___block_invoke;
      v60[3] = &unk_1E756FB88;
      v60[4] = self;
      v61 = assetCopy;
      v62 = v20;
      v31 = completionCopy;
      v63 = completionCopy;
      buf.start.value = value;
      buf.start.timescale = timescale;
      buf.start.flags = flags;
      buf.start.epoch = epoch;
      [v30 generateKeyFrameFromVideoURL:v29 destinationURL:v62 time:&buf completion:v60];

      v32 = v61;
LABEL_17:

      v34 = 1;
      goto LABEL_23;
    }

    v35 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E69BFF48];
    v67 = *MEMORY[0x1E696A278];
    v68 = @"data store key failed to resolve video url";
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
    v38 = [v35 errorWithDomain:v36 code:47001 userInfo:v37];

    v29 = 0;
LABEL_21:
    v34 = 0;
    v21 = v38;
    goto LABEL_22;
  }

  v29 = [v12 objectForKeyedSubscript:@"streamingVideo"];
  if (v29)
  {
    if (allowedCopy)
    {
      v33 = PLImageManagerGetLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf.start.value) = 138412290;
        *(&buf.start.value + 4) = dCopy;
        _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEBUG, "[key frame] Making streaming video request to generate local video key frame, clientBundleID: %@", &buf, 0xCu);
      }

      dataStore = [v29 dataStore];
      duration.epoch = v16;
      start.value = value;
      start.timescale = timescale;
      start.flags = flags;
      start.epoch = epoch;
      *&duration.value = *v13;
      CMTimeRangeMake(&buf, &start, &duration);
      managedObjectContext = [assetCopy managedObjectContext];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __136__PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe__generateAndStoreForAsset_networkAccessAllowed_clientBundleID_progress_completion___block_invoke_201;
      v50[3] = &unk_1E756E2D8;
      v50[4] = self;
      v51 = v20;
      v54 = value;
      v55 = timescale;
      v56 = flags;
      v57 = epoch;
      v52 = assetCopy;
      v31 = completionCopy;
      v53 = completionCopy;
      [dataStore requestStreamingURLForResource:v29 asset:v52 intent:5 timeRange:&buf streamingHints:0 inContext:managedObjectContext clientBundleID:dCopy completion:v50];

      v32 = v51;
      goto LABEL_17;
    }

    v38 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF70] code:6 userInfo:0];

    goto LABEL_21;
  }

  v34 = 0;
LABEL_22:
  v31 = completionCopy;
LABEL_23:

  if (!v21)
  {
    v41 = MEMORY[0x1E696ABC0];
    v42 = *MEMORY[0x1E69BFF70];
    v64 = *MEMORY[0x1E696A278];
    v65 = @"failed to generate local video key frame, unknown error";
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    v21 = [v41 errorWithDomain:v42 code:4 userInfo:v43];

    if (v34)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if ((v34 & 1) == 0)
  {
LABEL_25:
    v39 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    v40 = objc_alloc_init(MEMORY[0x1E695DFB8]);
    (v31)[2](v31, 0, v21, v39, v40);
  }

LABEL_26:
}

void __136__PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe__generateAndStoreForAsset_networkAccessAllowed_clientBundleID_progress_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    [*(a1 + 32) _handleKeyFrameGeneratedWithAsset:*(a1 + 40) destinationURL:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    v5 = *(a1 + 56);
    v6 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    v7 = objc_alloc_init(MEMORY[0x1E695DFB8]);
    (*(v5 + 16))(v5, 0, v8, v6, v7);
  }
}

void __136__PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe__generateAndStoreForAsset_networkAccessAllowed_clientBundleID_progress_completion___block_invoke_201(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a6;
  v10 = PLImageManagerGetLog();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = v8;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "[key frame] attempting to generate local video key frame from streaming url: %@", buf, 0xCu);
    }

    v12 = objc_opt_class();
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __136__PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe__generateAndStoreForAsset_networkAccessAllowed_clientBundleID_progress_completion___block_invoke_202;
    v24[3] = &unk_1E756FB88;
    v13 = *(a1 + 40);
    v23 = *(a1 + 32);
    v14 = *(a1 + 48);
    v15 = *(a1 + 40);
    v16 = *(a1 + 56);
    *&v17 = v15;
    *(&v17 + 1) = v16;
    *&v18 = v23;
    *(&v18 + 1) = v14;
    v25 = v18;
    v26 = v17;
    *buf = *(a1 + 64);
    v28 = *(a1 + 80);
    [v12 generateKeyFrameFromVideoURL:v8 destinationURL:v13 time:buf completion:v24];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v19 = [v9 debugDescription];
      *buf = 138543362;
      *&buf[4] = v19;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "[key frame] streaming request failed with error: %{public}@", buf, 0xCu);
    }

    v20 = *(a1 + 56);
    v21 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    v22 = objc_alloc_init(MEMORY[0x1E695DFB8]);
    (*(v20 + 16))(v20, 0, v9, v21, v22);
  }
}

void __136__PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe__generateAndStoreForAsset_networkAccessAllowed_clientBundleID_progress_completion___block_invoke_202(uint64_t a1, int a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    [*(a1 + 32) _handleKeyFrameGeneratedWithAsset:*(a1 + 40) destinationURL:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    v5 = *(a1 + 56);
    v6 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    v7 = objc_alloc_init(MEMORY[0x1E695DFB8]);
    (*(v5 + 16))(v5, 0, v8, v6, v7);
  }
}

- (void)_handleKeyFrameGeneratedWithAsset:(id)asset destinationURL:(id)l completion:(id)completion
{
  assetCopy = asset;
  lCopy = l;
  completionCopy = completion;
  v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = +[PLConcurrencyLimiter sharedLimiter];
  managedObjectContext = [assetCopy managedObjectContext];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __114__PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe__handleKeyFrameGeneratedWithAsset_destinationURL_completion___block_invoke;
  v18[3] = &unk_1E7576EE8;
  v19 = assetCopy;
  v20 = lCopy;
  selfCopy = self;
  v22 = v11;
  v23 = completionCopy;
  v14 = completionCopy;
  v15 = v11;
  v16 = lCopy;
  v17 = assetCopy;
  [v12 asyncPerformOnContext:managedObjectContext identifyingBlock:0 block:v18];
}

void __114__PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe__handleKeyFrameGeneratedWithAsset_destinationURL_completion___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) persistedResourcesWithRecipeID:65749 andVersion:3];
  v3 = [v2 anyObject];

  v4 = [v3 isLocallyAvailable];
  v5 = [*(a1 + 40) path];
  v6 = [*(a1 + 32) width];
  v7 = [*(a1 + 32) height];
  v8 = *(a1 + 48);
  v9 = [*(a1 + 32) kind];
  v53 = 0;
  LOWORD(v48) = v9;
  v10 = [PLResourceInstaller generateValidatedExternalImageResourceOfType:0 forFilePath:v5 requireFileToBePresent:1 version:3 basedOnFullSizeWidth:v6 andHeight:v7 recipe:v8 assetKind:v48 error:&v53];
  v11 = v53;

  if (!v10)
  {
    v18 = PLIsErrorFileNotFound();
    v14 = PLImageManagerGetLog();
    v19 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (v18)
    {
      if (v19)
      {
        v20 = [*(a1 + 32) uuid];
        *buf = 138543362;
        v58 = v20;
        v21 = "[key frame] unable to create external resource for asset: %{public}@ because file not found";
        v22 = v14;
        v23 = 12;
LABEL_12:
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
      }
    }

    else if (v19)
    {
      v20 = [*(a1 + 32) uuid];
      *buf = 138543618;
      v58 = v20;
      v59 = 2112;
      v60 = v11;
      v21 = "[key frame] unable to create external resource for asset: %{public}@, error: %@";
      v22 = v14;
      v23 = 22;
      goto LABEL_12;
    }

    v16 = 0;
    v17 = 0;
    v15 = v11;
    goto LABEL_14;
  }

  v56 = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
  v13 = *(a1 + 32);
  v52 = v11;
  v14 = [PLResourceDataStoreManager storeExternalResources:v12 forAsset:v13 forLifecycleEvent:2 error:&v52];
  v15 = v52;

  if ([v14 count])
  {
    v16 = [v14 anyObject];
    v17 = 1;
  }

  else
  {
    v24 = PLImageManagerGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [*(a1 + 32) uuid];
      *buf = 138543618;
      v58 = v25;
      v59 = 2112;
      v60 = v15;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "[key frame] failed to store resource for asset: %{public}@, error: %@", buf, 0x16u);
    }

    v16 = 0;
    v17 = 0;
  }

LABEL_14:

  v50 = 0;
  v51 = 0;
  v26 = [PLCacheDeleteSupport markPurgeableForFileAtURL:*(a1 + 40) withUrgency:2 outInode:&v51 error:&v50];
  v27 = v50;
  if (v26)
  {
    if (!v17)
    {
      goto LABEL_23;
    }

    [v16 setFileID:v51];
  }

  else if ((PLIsErrorFileNotFound() & 1) == 0)
  {
    v28 = PLImageManagerGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [*(a1 + 32) uuid];
      *buf = 138543618;
      v58 = v29;
      v59 = 2112;
      v60 = v27;
      _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "[key frame] mark purgeable file failed, may not be purgeable, for asset: %{public}@, error: %@", buf, 0x16u);
    }
  }

  if (!(v4 & 1 | ((v17 & 1) == 0)))
  {
    v30 = *(a1 + 32);
    v31 = [v16 dataStoreKey];
    [v30 recalculateImageRequestHintsForResource:v16 afterLocalAvailabilityChangeFrom:0xFFFFFFFFLL previousDataStoreKey:v31];
  }

LABEL_23:
  v32 = [*(a1 + 32) managedObjectContext];
  v33 = [v32 hasChanges];

  if (!v33)
  {
    v36 = v15;
LABEL_30:
    if (v17)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  v34 = [*(a1 + 32) managedObjectContext];
  v49 = v15;
  v35 = [v34 save:&v49];
  v36 = v49;

  if (v35)
  {
    if (v17)
    {
      v37 = PLImageManagerGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = [*(a1 + 32) uuid];
        *buf = 138543362;
        v58 = v38;
        _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_INFO, "[key frame] successfully generated key frame for asset: %{public}@", buf, 0xCu);
      }

      [*(a1 + 56) addObject:*(a1 + 48)];
      goto LABEL_37;
    }

    goto LABEL_30;
  }

  v39 = PLImageManagerGetLog();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    v40 = [*(a1 + 32) uuid];
    *buf = 138543618;
    v58 = v40;
    v59 = 2112;
    v60 = v36;
    _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_ERROR, "[key frame] failed to save key frame resource changes for asset: %{public}@, error: %@", buf, 0x16u);
  }

LABEL_35:
  if (!v36)
  {
    v41 = MEMORY[0x1E696ABC0];
    v42 = *MEMORY[0x1E69BFF70];
    v54 = *MEMORY[0x1E696A278];
    v55 = @"unknown error";
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v36 = [v41 errorWithDomain:v42 code:1 userInfo:v43];
  }

LABEL_37:
  v46 = a1 + 56;
  v44 = *(a1 + 56);
  v45 = *(v46 + 8);
  v47 = objc_alloc_init(MEMORY[0x1E695DFB8]);
  (*(v45 + 16))(v45, 0, v36, v44, v47);
}

- (void)generateAndStoreForAsset:(id)asset options:(id)options progress:(id *)progress completion:(id)completion
{
  completionCopy = completion;
  jobQueue = self->_jobQueue;
  optionsCopy = options;
  assetCopy = asset;
  objectID = [assetCopy objectID];
  networkAccessAllowed = [optionsCopy networkAccessAllowed];
  clientBundleID = [optionsCopy clientBundleID];

  assetID = [assetCopy assetID];

  libraryID = [assetID libraryID];
  v21 = 0;
  LODWORD(jobQueue) = [(PLLocalVideoKeyFrameJobQueue *)jobQueue addJobWithAssetObjectID:objectID networkAccessAllowed:networkAccessAllowed clientBundleID:clientBundleID libraryID:libraryID error:&v21 completionHandler:completionCopy];
  v18 = v21;

  if (jobQueue)
  {
    [(PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe *)self _runNextJob];
  }

  else
  {
    v19 = [MEMORY[0x1E695DFD8] set];
    orderedSet = [MEMORY[0x1E695DFB8] orderedSet];
    (*(completionCopy + 2))(completionCopy, 0, v18, v19, orderedSet, 0);
  }
}

- (id)chooseIngredientsFrom:(id)from version:(unsigned int)version
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF90];
  fromCopy = from;
  v6 = objc_alloc_init(v4);
  v7 = [PLVideoInternalResourceContext alloc];
  managedObjectContext = [fromCopy managedObjectContext];
  v9 = [(PLVideoInternalResourceContext *)v7 initWithManagedObjectContext:managedObjectContext asset:fromCopy];

  v10 = [[PLLocalVideoKeyFrameVideoChoosingOptions alloc] initWithStreamingAllowed:[(PLVideoInternalResourceContext *)v9 isWalrusEnabled]^ 1];
  v11 = [PLVideoChoosingAndAvailabilitySupport alloc];
  v12 = [(PLVideoChoosingAndAvailabilitySupport *)v11 initWithContext:v9 assetInformation:v9 options:v10 size:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v23 = 0;
  v13 = [(PLVideoChoosingAndAvailabilitySupport *)v12 chooseResourceWithLoadingMode:&v23 needsAdjustmentData:0 error:0];
  v14 = v23;
  v15 = PLImageManagerGetLog();
  v16 = v15;
  if (v14 == 3)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v19 = PLVideoResourceDescription(v13);
      *buf = 138543362;
      v25 = v19;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEBUG, "[key frame] streaming video selected as ingredient for local video key frame : %{public}@", buf, 0xCu);
    }

    v16 = [(PLVideoInternalResourceContext *)v9 backingResourceForVideoResource:v13];
    v18 = @"streamingVideo";
    goto LABEL_9;
  }

  if (v14 == 5)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v17 = PLVideoResourceDescription(v13);
      *buf = 138543362;
      v25 = v17;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEBUG, "[key frame] local video selected as ingredient for local video key frame : %{public}@", buf, 0xCu);
    }

    v16 = [(PLVideoInternalResourceContext *)v9 backingResourceForVideoResource:v13];
    v18 = @"localVideo";
LABEL_9:
    [v6 setObject:v16 forKeyedSubscript:v18];
    goto LABEL_10;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "[key frame] no video result found for local key frame", buf, 2u);
  }

LABEL_10:

  if ([v6 count])
  {
    v20 = v6;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  return v21;
}

- (PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe)initWithRecipeID:(unsigned int)d
{
  if (d == 65749)
  {
    v7.receiver = self;
    v7.super_class = PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe;
    v3 = [(PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe *)&v7 init];
    if (v3)
    {
      v4 = objc_alloc_init(PLLocalVideoKeyFrameJobQueue);
      jobQueue = v3->_jobQueue;
      v3->_jobQueue = v4;
    }
  }

  else
  {

    return 0;
  }

  return v3;
}

+ (void)generateKeyFrameFromVideoURL:(id)l destinationURL:(id)rL time:(id *)time completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  rLCopy = rL;
  completionCopy = completion;
  lCopy = l;
  v13 = PLImageManagerGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    time = *time;
    v14 = CMTimeCopyDescription(0, &time);
    LODWORD(time.value) = 138543618;
    *(&time.value + 4) = v14;
    LOWORD(time.flags) = 2112;
    *(&time.flags + 2) = rLCopy;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "[key frame] Image generator copying image at time: %{public}@ to destination: %@", &time, 0x16u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __114__PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe_generateKeyFrameFromVideoURL_destinationURL_time_completion___block_invoke;
  v17[3] = &unk_1E756E2B0;
  v18 = rLCopy;
  v19 = completionCopy;
  time = *time;
  v15 = completionCopy;
  v16 = rLCopy;
  [self generateKeyFrameFromVideoURL:lCopy time:&time completion:v17];
}

void __114__PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe_generateKeyFrameFromVideoURL_destinationURL_time_completion___block_invoke(uint64_t a1, CGImage *a2, void *a3)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [*(a1 + 32) URLByDeletingLastPathComponent];
    v25 = 0;
    v9 = [v7 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v25];
    v10 = v25;

    if (v9)
    {
      v11 = *(a1 + 32);
      v12 = [*MEMORY[0x1E6982E58] identifier];
      v13 = CGImageDestinationCreateWithURL(v11, v12, 1uLL, 0);

      if (v13)
      {
        CGImageDestinationAddImage(v13, a2, 0);
        if (CGImageDestinationFinalize(v13))
        {
          v14 = PLImageManagerGetLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "[key frame] wrote image to local video key frame", buf, 2u);
          }

          CFRelease(v13);
          goto LABEL_14;
        }

        v19 = MEMORY[0x1E696ABC0];
        v20 = *MEMORY[0x1E69BFF48];
        v30 = *MEMORY[0x1E696A278];
        v31[0] = @"Failed to generate local video key frame, destination finalization failed";
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
        v22 = [v19 errorWithDomain:v20 code:47001 userInfo:v21];

        CFRelease(v13);
        v10 = v22;
      }

      else
      {
        v15 = MEMORY[0x1E696ABC0];
        v16 = *MEMORY[0x1E69BFF48];
        v28 = *MEMORY[0x1E696A278];
        v29 = @"Failed to generate local video key frame, failed to create image destination";
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v18 = [v15 errorWithDomain:v16 code:47001 userInfo:v17];

        v10 = v18;
      }
    }
  }

  else
  {
    v10 = v5;
  }

  v23 = PLImageManagerGetLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = [v10 debugDescription];
    *buf = 138543362;
    v27 = v24;
    _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "[key frame] failed with error: %{public}@", buf, 0xCu);
  }

LABEL_14:
  (*(*(a1 + 40) + 16))();
}

+ (void)generateKeyFrameFromVideoURL:(id)l time:(id *)time completion:(id)completion
{
  v18[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v8 = [MEMORY[0x1E6987E28] assetWithURL:l];
  v9 = [objc_alloc(MEMORY[0x1E6987E68]) initWithAsset:v8];
  [v9 setAppliesPreferredTrackTransform:1];
  v17 = **&MEMORY[0x1E6960CC0];
  v14 = *&v17.var0;
  var3 = v17.var3;
  [v9 setRequestedTimeToleranceAfter:&v17];
  *&v17.var0 = v14;
  v17.var3 = var3;
  [v9 setRequestedTimeToleranceBefore:&v17];
  v17 = *time;
  v11 = [MEMORY[0x1E696B098] valueWithCMTime:&v17];
  v18[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __99__PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe_generateKeyFrameFromVideoURL_time_completion___block_invoke;
  v15[3] = &unk_1E756E288;
  v16 = completionCopy;
  v13 = completionCopy;
  [v9 generateCGImagesAsynchronouslyForTimes:v12 completionHandler:v15];
}

void __99__PLPrimaryResourceDataStoreLocalVideoKeyFrameRecipe_generateKeyFrameFromVideoURL_time_completion___block_invoke(uint64_t a1, uint64_t a2, CGImage *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v9 = a6;
  v10 = v9;
  if (a5 == 1)
  {
    if (!v9)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E69BFF48];
      v21 = *MEMORY[0x1E696A278];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image generator failed to generate image"];
      v22 = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v11 = [v16 errorWithDomain:v17 code:47001 userInfo:v19];

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!a5)
  {
    if (a3)
    {
      CGImageRetain(a3);
      PFCGImageApplyTemporaryAVAssetImageGeneratorColorSpaceWorkaround();
      goto LABEL_5;
    }

    if (!v9)
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E69BFF48];
      v23 = *MEMORY[0x1E696A278];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image generator returned success but image is NULL"];
      v24[0] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v11 = [v12 errorWithDomain:v13 code:47001 userInfo:v15];

      goto LABEL_12;
    }

LABEL_11:
    v11 = v9;
    goto LABEL_12;
  }

LABEL_5:
  v11 = 0;
LABEL_12:
  (*(*(a1 + 32) + 16))();
  CGImageRelease(a3);
}

@end