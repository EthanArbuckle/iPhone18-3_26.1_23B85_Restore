@interface PFStoryRecipe_PXStoryExtension
+ (BOOL)_recipe:(id)_recipe isReferencingPHPhotoLibrary:(id)library;
+ (BOOL)_recipe:(id)_recipe setPHPhotoLibrary:(id)library error:(id *)error;
+ (BOOL)addDisplayAssets:(id)assets toRecipe:(id)recipe withCategory:(int64_t)category error:(id *)error;
+ (BOOL)addPHAssets:(id)assets toRecipe:(id)recipe withCategory:(int64_t)category error:(id *)error;
+ (BOOL)addSyntheticAssets:(id)assets toRecipe:(id)recipe withCategory:(int64_t)category error:(id *)error;
+ (BOOL)recipeContainsAnyDisplayAsset:(id)asset;
+ (id)PHAssetsInRecipe:(id)recipe withCategory:(int64_t)category error:(id *)error;
+ (id)PHPhotoLibraryForRecipe:(id)recipe;
+ (id)displayAssetsInRecipe:(id)recipe withCategory:(int64_t)category error:(id *)error;
+ (id)flexFetchQueue;
+ (id)recipe:(id)recipe withPHPhotoLibrary:(id)library error:(id *)error;
+ (id)recipeAssetFromAudioAsset:(id)asset withCategory:(int64_t)category subcategory:(int64_t)subcategory error:(id *)error;
+ (id)requestAudioAssetFromRecipeAsset:(id)asset recipe:(id)recipe resultHandler:(id)handler;
+ (id)syntheticAssetsInRecipe:(id)recipe withCategory:(int64_t)category error:(id *)error;
+ (void)enumerateDisplayAssetsFromRecipe:(id)recipe usingBlock:(id)block;
@end

@implementation PFStoryRecipe_PXStoryExtension

+ (id)recipeAssetFromAudioAsset:(id)asset withCategory:(int64_t)category subcategory:(int64_t)subcategory error:(id *)error
{
  assetCopy = asset;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = MEMORY[0x1E69C08D0];
    v36 = *MEMORY[0x1E69C0DC8];
    v11 = assetCopy;
    identifier = [v11 identifier];
    title = [v11 title];
    subtitle = [v11 subtitle];
    [v11 colorGradeCategory];
    v15 = assetCopy;
    v17 = v16 = error;

    v18 = [v10 createAssetWithCategory:category subcategory:subcategory catalog:v36 songID:identifier title:title subtitle:subtitle colorGradeCategory:v17];

    error = v16;
    assetCopy = v15;

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    errorCopy2 = error;
    v19 = MEMORY[0x1E69C08D0];
    v20 = MEMORY[0x1E69C0DD0];
LABEL_7:
    v27 = *v20;
    v28 = assetCopy;
    identifier2 = [v28 identifier];
    title2 = [v28 title];
    subtitle2 = [v28 subtitle];
    colorGradeCategory = [v28 colorGradeCategory];

    v33 = v19;
    error = errorCopy2;
    v18 = [v33 createAssetWithCategory:category subcategory:subcategory catalog:v27 songID:identifier2 title:title2 subtitle:subtitle2 colorGradeCategory:colorGradeCategory];

LABEL_8:
    v34 = 0;
    if (!error)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    errorCopy2 = error;
    v19 = MEMORY[0x1E69C08D0];
    v20 = MEMORY[0x1E69C0DD8];
    goto LABEL_7;
  }

  v34 = PXStoryErrorCreateWithCodeDebugFormat(3, @"cannot create a recipe song asset from audio asset: %@", v21, v22, v23, v24, v25, v26, assetCopy);
  v18 = 0;
  if (error)
  {
LABEL_9:
    v34 = v34;
    *error = v34;
  }

LABEL_10:

  return v18;
}

+ (id)requestAudioAssetFromRecipeAsset:(id)asset recipe:(id)recipe resultHandler:(id)handler
{
  v71[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  recipeCopy = recipe;
  handlerCopy = handler;
  v11 = PLAudioPlaybackGetLog();
  v12 = os_signpost_id_make_with_pointer(v11, self);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PFStoryRecipe_PXStoryExtension - requestAudioAssetFromRecipeAsset", " enableTelemetry=YES ", buf, 2u);
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__PFStoryRecipe_PXStoryExtension_requestAudioAssetFromRecipeAsset_recipe_resultHandler___block_invoke;
  aBlock[3] = &unk_1E77309C8;
  selfCopy = self;
  v14 = handlerCopy;
  v68 = v14;
  v15 = _Block_copy(aBlock);
  if ([assetCopy kind] != 2)
  {
    v36 = PXStoryErrorCreateWithCodeDebugFormat(1, @"not a song recipe asset: %@", v16, v17, v18, v19, v20, v21, assetCopy);
    v35 = 0;
    if (!v36)
    {
LABEL_11:
      v37 = 0;
      goto LABEL_12;
    }

LABEL_10:
    v15[2](v15, 0, 1, v36);
    goto LABEL_11;
  }

  v22 = assetCopy;
  catalog = [v22 catalog];
  v24 = catalog;
  if (catalog == *MEMORY[0x1E69C0DC8] || [catalog isEqualToString:?])
  {
    songID = [v22 songID];
    if (songID)
    {
      v32 = [PFStoryRecipe_PXStoryExtension PHPhotoLibraryForRecipe:recipeCopy];
      v56 = recipeCopy;
      v33 = objc_alloc_init(PXMusicCuratorAudioAssetRequestOptions);
      v71[0] = songID;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:1];
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __88__PFStoryRecipe_PXStoryExtension_requestAudioAssetFromRecipeAsset_recipe_resultHandler___block_invoke_205;
      v65[3] = &unk_1E77309F0;
      v66 = v15;
      v35 = [PXMusicCurator requestAudioAssetFetchResultForAdamIDs:v34 requestOptions:v33 photoLibrary:v32 completionHandler:v65];

      recipeCopy = v56;
LABEL_17:
      v36 = 0;
LABEL_26:

      goto LABEL_27;
    }

    PXStoryErrorCreateWithCodeDebugFormat(1, @"missing Adam ID for Apple Music song: %@", v25, v26, v27, v28, v29, v30, v22);
    goto LABEL_25;
  }

  if (v24 == *MEMORY[0x1E69C0DD0] || [v24 isEqualToString:?])
  {
    songID = [v22 songID];
    if (songID)
    {
      v46 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:100];
      flexFetchQueue = [objc_opt_class() flexFetchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __88__PFStoryRecipe_PXStoryExtension_requestAudioAssetFromRecipeAsset_recipe_resultHandler___block_invoke_2;
      block[3] = &unk_1E77425A0;
      v60 = songID;
      v61 = 0;
      v62 = v22;
      v35 = v46;
      v63 = v35;
      v64 = v15;
      dispatch_async(flexFetchQueue, block);

      goto LABEL_17;
    }

    PXStoryErrorCreateWithCodeDebugFormat(1, @"missing Flex ID for Flex Music song: %@", v40, v41, v42, v43, v44, v45, v22);
    v36 = LABEL_25:;
    v35 = 0;
    goto LABEL_26;
  }

  if (v24 != *MEMORY[0x1E69C0DD8] && ([v24 isEqualToString:?] & 1) == 0)
  {
    v36 = PXStoryErrorCreateWithCodeDebugFormat(1, @"unknown catalog %@ for recipe song: %@", v48, v49, v50, v51, v52, v53, v24);
    v35 = 0;
LABEL_27:

    if (!v36)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v54 = [PXMockAudioAsset alloc];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __88__PFStoryRecipe_PXStoryExtension_requestAudioAssetFromRecipeAsset_recipe_resultHandler___block_invoke_3;
  v57[3] = &unk_1E7730A18;
  v58 = v22;
  v55 = v22;
  v37 = [(PXMockAudioAsset *)v54 initWithConfiguration:v57];

  if (v37)
  {
    (v15)[2](v15, v37, 1, 0);
  }

  v35 = 0;
  v36 = 0;
LABEL_12:
  v38 = v35;

  return v35;
}

+ (id)flexFetchQueue
{
  if (flexFetchQueue_onceToken != -1)
  {
    dispatch_once(&flexFetchQueue_onceToken, &__block_literal_global_35186);
  }

  v3 = flexFetchQueue_queue;

  return v3;
}

+ (BOOL)addDisplayAssets:(id)assets toRecipe:(id)recipe withCategory:(int64_t)category error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  recipeCopy = recipe;
  if (![assetsCopy count])
  {
    v15 = 0;
    v13 = 1;
    if (!error)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  firstObject = [assetsCopy firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = 0;
    v13 = [self addPHAssets:assetsCopy toRecipe:recipeCopy withCategory:category error:&v22];
    v14 = v22;
LABEL_8:
    v15 = v14;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = 0;
    v13 = [self addSyntheticAssets:assetsCopy toRecipe:recipeCopy withCategory:category error:&v21];
    v14 = v21;
    goto LABEL_8;
  }

  v16 = MEMORY[0x1E696ABC0];
  v23 = *MEMORY[0x1E696A278];
  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown display asset fetch result %@ containing %@", assetsCopy, firstObject];
  v24[0] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v15 = [v16 errorWithDomain:@"PXStoryErrorDomain" code:1 userInfo:v18];

  v13 = 0;
LABEL_10:

  if (error)
  {
LABEL_11:
    v19 = v15;
    *error = v15;
  }

LABEL_12:

  return v13;
}

+ (id)displayAssetsInRecipe:(id)recipe withCategory:(int64_t)category error:(id *)error
{
  v33[1] = *MEMORY[0x1E69E9840];
  recipeCopy = recipe;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__35197;
  v30 = __Block_byref_object_dispose__35198;
  v31 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __75__PFStoryRecipe_PXStoryExtension_displayAssetsInRecipe_withCategory_error___block_invoke;
  v25[3] = &unk_1E77309A0;
  v25[4] = &v26;
  [recipeCopy enumerateAssetsWithKind:1 usingBlock:v25];
  v9 = v27[5];
  if (!v9)
  {
    PXDisplayAssetFetchResultEmpty();
  }

  schemeForPHAssets = [self schemeForPHAssets];
  v11 = [v9 isEqualToString:schemeForPHAssets];

  if (v11)
  {
    v24 = 0;
    v12 = [self PHAssetsInRecipe:recipeCopy withCategory:category error:&v24];
    v13 = v24;
  }

  else
  {
    v14 = v27[5];
    schemeForSyntheticAssets = [self schemeForSyntheticAssets];
    LODWORD(v14) = [v14 isEqualToString:schemeForSyntheticAssets];

    if (!v14)
    {
      v17 = MEMORY[0x1E696ABC0];
      v32 = *MEMORY[0x1E696A278];
      v18 = objc_alloc(MEMORY[0x1E696AEC0]);
      v19 = [v18 initWithFormat:@"Unknown asset scheme %@", v27[5]];
      v33[0] = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v16 = [v17 errorWithDomain:@"PXStoryErrorDomain" code:1 userInfo:v20];

      v12 = 0;
      if (!error)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v23 = 0;
    v12 = [self syntheticAssetsInRecipe:recipeCopy withCategory:category error:&v23];
    v13 = v23;
  }

  v16 = v13;
  if (error)
  {
LABEL_10:
    v21 = v16;
    *error = v16;
  }

LABEL_11:

  _Block_object_dispose(&v26, 8);

  return v12;
}

+ (BOOL)recipeContainsAnyDisplayAsset:(id)asset
{
  assetCopy = asset;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__PFStoryRecipe_PXStoryExtension_recipeContainsAnyDisplayAsset___block_invoke;
  v6[3] = &unk_1E77309A0;
  v6[4] = &v7;
  [assetCopy enumerateAssetsWithKind:1 usingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (void)enumerateDisplayAssetsFromRecipe:(id)recipe usingBlock:(id)block
{
  recipeCopy = recipe;
  blockCopy = block;
  v8 = [self PHPhotoLibraryForRecipe:recipeCopy];
  if (v8)
  {
    v9 = [_PXStoryRecipeEnumerator alloc];
    schemeForPHAssets = [self schemeForPHAssets];
    v11 = [(_PXStoryRecipeEnumerator *)v9 initWithBatchSize:200 photoLibrary:v8 scheme:schemeForPHAssets block:blockCopy];

    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 1;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __88__PFStoryRecipe_PXStoryExtension_PhotoKit__enumerateDisplayAssetsFromRecipe_usingBlock___block_invoke;
    v16 = &unk_1E7732F50;
    v18 = &v19;
    v12 = v11;
    v17 = v12;
    [recipeCopy enumerateAssetsWithKind:1 usingBlock:&v13];
    if (*(v20 + 24) == 1)
    {
      [(_PXStoryRecipeEnumerator *)v12 didFinishEnumeratingRecipeDisplayAssets:v13];
    }

    _Block_object_dispose(&v19, 8);
  }
}

+ (id)PHAssetsInRecipe:(id)recipe withCategory:(int64_t)category error:(id *)error
{
  v43[1] = *MEMORY[0x1E69E9840];
  recipeCopy = recipe;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__55696;
  v40 = __Block_byref_object_dispose__55697;
  v41 = 0;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  schemeForPHAssets = [self schemeForPHAssets];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __80__PFStoryRecipe_PXStoryExtension_PhotoKit__PHAssetsInRecipe_withCategory_error___block_invoke;
  v31[3] = &unk_1E7738138;
  v11 = schemeForPHAssets;
  v32 = v11;
  categoryCopy = category;
  v12 = v9;
  v33 = v12;
  v34 = &v36;
  [recipeCopy enumerateAssetsWithKind:1 usingBlock:v31];
  if (v37[5] || ![v12 count])
  {
    v13 = 0;
  }

  else
  {
    v14 = [self PHPhotoLibraryForRecipe:recipeCopy];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 localIdentifierMappingsForCloudIdentifiers:v12];
      v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v16, "count")}];
      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __80__PFStoryRecipe_PXStoryExtension_PhotoKit__PHAssetsInRecipe_withCategory_error___block_invoke_2;
      v28 = &unk_1E7732F28;
      v18 = v17;
      v29 = v18;
      v30 = &v36;
      [v16 enumerateKeysAndObjectsUsingBlock:&v25];
      if (v37[5])
      {
        v13 = 0;
      }

      else
      {
        librarySpecificFetchOptions = [v15 librarySpecificFetchOptions];
        v22 = MEMORY[0x1E6978630];
        v23 = [v18 copy];
        v13 = [v22 fetchAssetsWithLocalIdentifiers:v23 options:librarySpecificFetchOptions];
      }
    }

    else
    {
      v19 = MEMORY[0x1E696ABC0];
      v42 = *MEMORY[0x1E696A278];
      v43[0] = @"Recipe doesn't refer to a PhotoKit library";
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
      v20 = [v19 errorWithDomain:@"PXStoryErrorDomain" code:1 userInfo:v16];
      v13 = 0;
      v18 = v37[5];
      v37[5] = v20;
    }
  }

  if (error)
  {
    *error = v37[5];
  }

  _Block_object_dispose(&v36, 8);

  return v13;
}

+ (BOOL)addPHAssets:(id)assets toRecipe:(id)recipe withCategory:(int64_t)category error:(id *)error
{
  assetsCopy = assets;
  recipeCopy = recipe;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__55696;
  v36 = __Block_byref_object_dispose__55697;
  v37 = 0;
  v11 = [assetsCopy count];
  if (!v11)
  {
    v22 = 1;
    if (!error)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  firstObject = [assetsCopy firstObject];
  photoLibrary = [firstObject photoLibrary];
  v13 = (v33 + 5);
  obj = v33[5];
  v14 = [self _recipe:recipeCopy setPHPhotoLibrary:photoLibrary error:&obj];
  objc_storeStrong(v13, obj);
  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(assetsCopy, "count")}];
    if (v11 >= 1)
    {
      for (i = 0; i != v11; ++i)
      {
        v17 = [assetsCopy objectAtIndexedSubscript:i];
        localIdentifier = [v17 localIdentifier];
        [v15 addObject:localIdentifier];
      }
    }

    schemeForPHAssets = [self schemeForPHAssets];
    v20 = [photoLibrary cloudIdentifierMappingsForLocalIdentifiers:v15];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __84__PFStoryRecipe_PXStoryExtension_PhotoKit__addPHAssets_toRecipe_withCategory_error___block_invoke;
    v26[3] = &unk_1E7732F00;
    categoryCopy = category;
    v21 = schemeForPHAssets;
    v27 = v21;
    v28 = recipeCopy;
    v29 = &v32;
    [v20 enumerateKeysAndObjectsUsingBlock:v26];
    v22 = v33[5] == 0;
  }

  else
  {
    v22 = 0;
  }

  if (error)
  {
LABEL_11:
    *error = v33[5];
  }

LABEL_12:
  _Block_object_dispose(&v32, 8);

  return v22;
}

+ (id)PHPhotoLibraryForRecipe:(id)recipe
{
  v3 = [recipe libraryWithKind:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    photoLibrary = [v3 photoLibrary];
  }

  else if (v3)
  {
    v5 = objc_alloc(MEMORY[0x1E69789A8]);
    v6 = [v3 url];
    photoLibrary = [v5 initWithPhotoLibraryURL:v6];
  }

  else
  {
    photoLibrary = 0;
  }

  return photoLibrary;
}

+ (id)recipe:(id)recipe withPHPhotoLibrary:(id)library error:(id *)error
{
  recipeCopy = recipe;
  libraryCopy = library;
  if ([self _recipe:recipeCopy isReferencingPHPhotoLibrary:libraryCopy])
  {
    v10 = recipeCopy;
    v11 = 0;
    if (!error)
    {
      goto LABEL_8;
    }

LABEL_7:
    v14 = v11;
    *error = v11;
    goto LABEL_8;
  }

  v12 = [recipeCopy mutableCopyWithZone:0];
  v16 = 0;
  v13 = [self _recipe:v12 setPHPhotoLibrary:libraryCopy error:&v16];
  v11 = v16;
  v10 = 0;
  if (v13)
  {
    v10 = [v12 copyWithZone:0];
  }

  if (error)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v10;
}

+ (BOOL)_recipe:(id)_recipe setPHPhotoLibrary:(id)library error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  _recipeCopy = _recipe;
  libraryCopy = library;
  if ([self _recipe:_recipeCopy isReferencingPHPhotoLibrary:libraryCopy])
  {
    v10 = 0;
    v11 = 1;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = [_recipeCopy libraryWithKind:1];
  v11 = v12 == 0;
  if (v12)
  {
    v13 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A278];
    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v15 = [v12 url];
    photoLibraryURL = [libraryCopy photoLibraryURL];
    v17 = [v14 initWithFormat:@"Recipe referencing PhotoKit library %@ and cannot be changed to %@", v15, photoLibraryURL];
    v23[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v10 = [v13 errorWithDomain:@"PXStoryErrorDomain" code:1 userInfo:v18];
  }

  else
  {
    v19 = [[_PXStoryRecipePhotoKitLibraryReference alloc] initWithPhotoLibrary:libraryCopy];
    [_recipeCopy addLibrary:v19];

    v10 = 0;
  }

  if (error)
  {
LABEL_8:
    v20 = v10;
    *error = v10;
  }

LABEL_9:

  return v11;
}

+ (BOOL)_recipe:(id)_recipe isReferencingPHPhotoLibrary:(id)library
{
  libraryCopy = library;
  v6 = [_recipe libraryWithKind:1];
  v7 = [v6 url];
  photoLibraryURL = [libraryCopy photoLibraryURL];

  LOBYTE(libraryCopy) = [v7 isEqual:photoLibraryURL];
  return libraryCopy;
}

+ (id)syntheticAssetsInRecipe:(id)recipe withCategory:(int64_t)category error:(id *)error
{
  recipeCopy = recipe;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__98030;
  v26 = __Block_byref_object_dispose__98031;
  v27 = 0;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  schemeForSyntheticAssets = [self schemeForSyntheticAssets];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __88__PFStoryRecipe_PXStoryExtension_Synthetic__syntheticAssetsInRecipe_withCategory_error___block_invoke;
  v17 = &unk_1E7738138;
  v11 = schemeForSyntheticAssets;
  v18 = v11;
  categoryCopy = category;
  v12 = v9;
  v19 = v12;
  v20 = &v22;
  [recipeCopy enumerateAssetsWithKind:1 usingBlock:&v14];
  if (!v23[5] && [v12 count])
  {
    PXDisplayAssetFetchResultFromArray();
  }

  if (error)
  {
    *error = v23[5];
  }

  _Block_object_dispose(&v22, 8);

  return 0;
}

+ (BOOL)addSyntheticAssets:(id)assets toRecipe:(id)recipe withCategory:(int64_t)category error:(id *)error
{
  assetsCopy = assets;
  recipeCopy = recipe;
  selfCopy = self;
  schemeForSyntheticAssets = [self schemeForSyntheticAssets];
  v12 = [assetsCopy count];
  if (v12 >= 1)
  {
    v13 = v12;
    v14 = 0;
    while (1)
    {
      v15 = [assetsCopy objectAtIndexedSubscript:v14];
      if (!v15)
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v22 = objc_opt_class();
        v21 = NSStringFromClass(v22);
        px_descriptionForAssertionMessage = [v15 px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PFStoryRecipe+PXStory+Synthetic.m" lineNumber:27 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"syntheticAssets[index]", v21, px_descriptionForAssertionMessage}];

        goto LABEL_9;
      }

LABEL_5:
      v16 = MEMORY[0x1E69C08B8];
      serializableDescription = [v15 serializableDescription];
      v18 = [v16 createAssetWithCategory:category scheme:schemeForSyntheticAssets cloudIdentifier:serializableDescription];
      [recipeCopy addAsset:v18];

      if (v13 == ++v14)
      {
        goto LABEL_10;
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PFStoryRecipe+PXStory+Synthetic.m" lineNumber:27 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"syntheticAssets[index]", v21}];
LABEL_9:

    goto LABEL_5;
  }

LABEL_10:

  return 1;
}

@end