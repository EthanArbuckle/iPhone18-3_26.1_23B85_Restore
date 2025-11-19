@interface PLPrimaryResourceDataStoreDeferredProcessingRecipe
- (PLPrimaryResourceDataStoreDeferredProcessingRecipe)initWithRecipeID:(unsigned int)a3;
- (id)supportedVersionsForLocalResourceGeneration;
- (void)_generateAndStoreOutsideOfTaskManagementForAsset:(id)a3 options:(id)a4 progress:(id *)a5 completion:(id)a6;
- (void)generateAndStoreForAsset:(id)a3 options:(id)a4 progress:(id *)a5 completion:(id)a6;
@end

@implementation PLPrimaryResourceDataStoreDeferredProcessingRecipe

- (void)generateAndStoreForAsset:(id)a3 options:(id)a4 progress:(id *)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__13120;
  v30[4] = __Block_byref_object_dispose__13121;
  v31 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__13120;
  v28[4] = __Block_byref_object_dispose__13121;
  v29 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__13120;
  v26[4] = __Block_byref_object_dispose__13121;
  v27 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __107__PLPrimaryResourceDataStoreDeferredProcessingRecipe_generateAndStoreForAsset_options_progress_completion___block_invoke;
  v25[3] = &unk_1E75674B8;
  v25[4] = v30;
  v25[5] = v28;
  v25[6] = v26;
  v13 = [PLIntensiveResourceTask taskForDeferredFinalizationForAsset:v10 resourceRecipe:self options:v11 preCompletionBlock:v25];
  v14 = [v10 photoLibrary];
  v15 = [v14 libraryServicesManager];
  v16 = [v15 intensiveResourceTaskManager];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __107__PLPrimaryResourceDataStoreDeferredProcessingRecipe_generateAndStoreForAsset_options_progress_completion___block_invoke_2;
  v20[3] = &unk_1E75674E0;
  v17 = v12;
  v21 = v17;
  v22 = v30;
  v23 = v28;
  v24 = v26;
  v18 = [v16 submitTask:v13 completionHandler:v20];

  if (a5)
  {
    v19 = v18;
    *a5 = v18;
  }

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v28, 8);

  _Block_object_dispose(v30, 8);
}

void __107__PLPrimaryResourceDataStoreDeferredProcessingRecipe_generateAndStoreForAsset_options_progress_completion___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v17 = v7;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

void __107__PLPrimaryResourceDataStoreDeferredProcessingRecipe_generateAndStoreForAsset_options_progress_completion___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = *(*(a1[5] + 8) + 40);
  v5 = [a2 error];
  (*(v3 + 16))(v3, v4, v5, *(*(a1[6] + 8) + 40), *(*(a1[7] + 8) + 40), 0);
}

- (void)_generateAndStoreOutsideOfTaskManagementForAsset:(id)a3 options:(id)a4 progress:(id *)a5 completion:(id)a6
{
  v66[3] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(PLPrimaryResourceDataStoreDeferredProcessingRecipe *)self supportedVersionsForLocalResourceGeneration];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v11, "version")}];
  v15 = [v13 containsObject:v14];

  v51 = v12;
  v52 = v10;
  v47 = a5;
  v50 = v11;
  if (v15)
  {
    v16 = MEMORY[0x1E69BFF48];
    v48 = 0;
  }

  else
  {
    v49 = MEMORY[0x1E696ABC0];
    v16 = MEMORY[0x1E69BFF48];
    v17 = *MEMORY[0x1E69BFF48];
    v65[0] = *MEMORY[0x1E696A278];
    v18 = NSStringFromPLErrorCode();
    v66[0] = v18;
    v65[1] = @"recipe";
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PLPrimaryResourceDataStoreDeferredProcessingRecipe recipeID](self, "recipeID")}];
    v66[1] = v19;
    v65[2] = @"version";
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v11, "version")}];
    v66[2] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:3];
    v48 = [v49 errorWithDomain:v17 code:47004 userInfo:v21];

    v10 = v52;
  }

  recipeID = self->_recipeID;
  v23 = self;
  if (recipeID == 65944)
  {
    v24 = [v10 requiresImageDeferredFinalization];
    recipeID = v23->_recipeID;
  }

  else
  {
    v24 = 0;
  }

  if (recipeID == 131280)
  {
    v25 = [v10 requiresVideoComplementDeferredFinalization];
  }

  else
  {
    v25 = 0;
  }

  if (((v24 | v25) & 1) == 0)
  {
    v38 = MEMORY[0x1E696ABC0];
    v39 = *v16;
    v63[0] = *MEMORY[0x1E696A278];
    v40 = NSStringFromPLErrorCode();
    v64[0] = v40;
    v63[1] = @"recipe";
    v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PLPrimaryResourceDataStoreDeferredProcessingRecipe recipeID](v23, "recipeID")}];
    v64[1] = v41;
    v63[2] = @"version";
    v29 = v50;
    v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v50, "version")}];
    v64[2] = v42;
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:3];
    v37 = [v38 errorWithDomain:v39 code:47006 userInfo:v43];

    v44 = v51;
    v10 = v52;
LABEL_16:
    v26 = [MEMORY[0x1E695DFD8] set];
    v28 = [MEMORY[0x1E695DFB8] orderedSet];
    (v44)[2](v44, 0, v37, v26, v28, 0);
    goto LABEL_17;
  }

  if (!v15)
  {
    v29 = v50;
    v44 = v51;
    v37 = v48;
    goto LABEL_16;
  }

  v26 = [v10 objectID];
  v27 = [v10 photoLibrary];
  v28 = [v27 libraryServicesManager];

  v29 = v50;
  if (v24)
  {
    v30 = [v50 deferredPhotoFinalizer];
    v31 = [v50 reason];
    v32 = [v50 clientBundleID];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __131__PLPrimaryResourceDataStoreDeferredProcessingRecipe__generateAndStoreOutsideOfTaskManagementForAsset_options_progress_completion___block_invoke;
    v58[3] = &unk_1E7567468;
    v59 = v28;
    v33 = v60;
    v60[0] = v26;
    v60[1] = v23;
    v34 = &v61;
    v35 = &v59;
    v61 = v50;
    v36 = &v62;
    v62 = v51;
    [v30 requestFinalizationOfAsset:v52 isBackgroundPriority:0 reason:v31 clientBundleIdentifier:v32 completionHandler:v58];

    v10 = v52;
    v37 = v48;
  }

  else
  {
    v37 = v48;
    if (!v25)
    {
      v44 = v51;
      goto LABEL_17;
    }

    v45 = [v50 deferredPhotoFinalizer];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __131__PLPrimaryResourceDataStoreDeferredProcessingRecipe__generateAndStoreOutsideOfTaskManagementForAsset_options_progress_completion___block_invoke_51;
    v53[3] = &unk_1E7567468;
    v54 = v28;
    v33 = v55;
    v55[0] = v26;
    v55[1] = v23;
    v34 = &v56;
    v56 = v50;
    v36 = &v57;
    v57 = v51;
    v30 = [v45 requestFrameDropRecoveryForAsset:v10 completionHandler:v53];

    if (v47)
    {
      v46 = v30;
      *v47 = v30;
    }

    v35 = &v54;
  }

  v29 = v50;
  v44 = v51;
LABEL_17:
}

void __131__PLPrimaryResourceDataStoreDeferredProcessingRecipe__generateAndStoreOutsideOfTaskManagementForAsset_options_progress_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__13120;
  v28[4] = __Block_byref_object_dispose__13121;
  v29 = 0;
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = [MEMORY[0x1E695DFA0] orderedSet];
  v6 = [*(a1 + 32) libraryBundle];
  v7 = [PLDatabaseContext newShortLivedLibraryWithName:"[PLPrimaryResourceDataStoreDeferredProcessingRecipe _generateAndStoreOutsideOfTaskManagementForAsset:options:progress:completion:]_block_invoke" bundle:v6];

  v8 = [v7 managedObjectContext];
  v9 = +[PLConcurrencyLimiter sharedLimiter];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __131__PLPrimaryResourceDataStoreDeferredProcessingRecipe__generateAndStoreOutsideOfTaskManagementForAsset_options_progress_completion___block_invoke_2;
  v17[3] = &unk_1E7567490;
  v10 = v7;
  v18 = v10;
  v19 = *(a1 + 40);
  v11 = v3;
  v27 = v28;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v14 = v4;
  v23 = v14;
  v15 = v5;
  v24 = v15;
  v26 = *(a1 + 64);
  v16 = v8;
  v25 = v16;
  [v9 asyncPerformOnContext:v16 identifyingBlock:0 block:v17];

  _Block_object_dispose(v28, 8);
}

void __131__PLPrimaryResourceDataStoreDeferredProcessingRecipe__generateAndStoreOutsideOfTaskManagementForAsset_options_progress_completion___block_invoke_51(uint64_t a1, void *a2)
{
  v3 = a2;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__13120;
  v28[4] = __Block_byref_object_dispose__13121;
  v29 = 0;
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = [MEMORY[0x1E695DFA0] orderedSet];
  v6 = [*(a1 + 32) libraryBundle];
  v7 = [PLDatabaseContext newShortLivedLibraryWithName:"[PLPrimaryResourceDataStoreDeferredProcessingRecipe _generateAndStoreOutsideOfTaskManagementForAsset:options:progress:completion:]_block_invoke" bundle:v6];

  v8 = [v7 managedObjectContext];
  v9 = +[PLConcurrencyLimiter sharedLimiter];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __131__PLPrimaryResourceDataStoreDeferredProcessingRecipe__generateAndStoreOutsideOfTaskManagementForAsset_options_progress_completion___block_invoke_2_52;
  v17[3] = &unk_1E7567490;
  v10 = v7;
  v18 = v10;
  v19 = *(a1 + 40);
  v11 = v3;
  v27 = v28;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v14 = v4;
  v23 = v14;
  v26 = *(a1 + 64);
  v15 = v8;
  v24 = v15;
  v16 = v5;
  v25 = v16;
  [v9 asyncPerformOnContext:v15 identifyingBlock:0 block:v17];

  _Block_object_dispose(v28, 8);
}

void __131__PLPrimaryResourceDataStoreDeferredProcessingRecipe__generateAndStoreOutsideOfTaskManagementForAsset_options_progress_completion___block_invoke_2_52(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v18 = 0;
  v4 = [v2 existingObjectWithID:v3 error:&v18];
  v5 = v18;

  if (v4)
  {
    if (!*(a1 + 48))
    {
      [*(a1 + 72) addObject:*(a1 + 56)];
      goto LABEL_12;
    }

    v6 = PLDeferredProcessingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 48);
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Failed to request frame drop recovery for asset with error %@", buf, 0xCu);
    }

    v8 = *(a1 + 56);
    v9 = [*(a1 + 64) version];
    v10 = *(a1 + 48);
    v11 = v8;
    goto LABEL_10;
  }

  if (v5)
  {
    v12 = PLDeferredProcessingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      *buf = 138412546;
      v20 = v13;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Error fetching object in moc with assetID %@: %@", buf, 0x16u);
    }

    v14 = *(a1 + 56);
    v9 = [*(a1 + 64) version];
    v11 = v14;
    v10 = v5;
LABEL_10:
    v15 = [v11 recipeErrorWithCode:47001 version:v9 underlyingError:v10 debugDescription:0];
    v16 = *(*(a1 + 104) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

LABEL_12:
  (*(*(a1 + 96) + 16))();
}

void __131__PLPrimaryResourceDataStoreDeferredProcessingRecipe__generateAndStoreOutsideOfTaskManagementForAsset_options_progress_completion___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v22 = 0;
  v4 = [v2 existingObjectWithID:v3 error:&v22];
  v5 = v22;

  if (v4)
  {
    if (!*(a1 + 48))
    {
      [*(a1 + 72) addObject:*(a1 + 56)];
      v19 = *(a1 + 80);
      v18 = [v4 assetID];
      v20 = [v18 libraryID];
      v21 = [PLResourceGenerator fileAndTableBackedThumbnailManagerRecipesForLibraryID:v20];
      [v19 unionOrderedSet:v21];

      goto LABEL_12;
    }

    v6 = PLDeferredProcessingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 48);
      *buf = 138412290;
      v24 = v7;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Failed to finalize asset with error %@", buf, 0xCu);
    }

    v8 = *(a1 + 56);
    v9 = [*(a1 + 64) version];
    v10 = *(a1 + 48);
    v11 = v8;
    v12 = 47007;
LABEL_10:
    v16 = [v11 recipeErrorWithCode:v12 version:v9 underlyingError:v10 debugDescription:0];
    v17 = *(*(a1 + 104) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
LABEL_12:

    goto LABEL_13;
  }

  if (v5)
  {
    v13 = PLDeferredProcessingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 40);
      *buf = 138412546;
      v24 = v14;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Error fetching object in moc with assetID %@: %@", buf, 0x16u);
    }

    v15 = *(a1 + 56);
    v9 = [*(a1 + 64) version];
    v11 = v15;
    v12 = 47001;
    v10 = v5;
    goto LABEL_10;
  }

LABEL_13:
  (*(*(a1 + 96) + 16))();
}

- (id)supportedVersionsForLocalResourceGeneration
{
  recipeID = self->_recipeID;
  if (recipeID == 131280 || recipeID == 65944)
  {
    return &unk_1F0FBF400;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (PLPrimaryResourceDataStoreDeferredProcessingRecipe)initWithRecipeID:(unsigned int)a3
{
  v3 = *&a3;
  v9.receiver = self;
  v9.super_class = PLPrimaryResourceDataStoreDeferredProcessingRecipe;
  v5 = [(PLPrimaryResourceDataStoreDeferredProcessingRecipe *)&v9 init];
  if (v5)
  {
    v6 = [objc_opt_class() classFromRecipeID:v3];
    if (v6 != objc_opt_class())
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:v5 file:@"PLPrimaryResourceDataStoreDeferredProcessingRecipe.m" lineNumber:44 description:@"Wrong recipe class passed to recipe initializer"];
    }

    v5->_recipeID = v3;
  }

  return v5;
}

@end