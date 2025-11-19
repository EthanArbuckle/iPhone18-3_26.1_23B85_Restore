@interface PFStoryRecipe_PXStoryExtension
+ (BOOL)_recipe:(id)a3 isReferencingPHPhotoLibrary:(id)a4;
+ (BOOL)_recipe:(id)a3 setPHPhotoLibrary:(id)a4 error:(id *)a5;
+ (BOOL)addDisplayAssets:(id)a3 toRecipe:(id)a4 withCategory:(int64_t)a5 error:(id *)a6;
+ (BOOL)addPHAssets:(id)a3 toRecipe:(id)a4 withCategory:(int64_t)a5 error:(id *)a6;
+ (BOOL)addSyntheticAssets:(id)a3 toRecipe:(id)a4 withCategory:(int64_t)a5 error:(id *)a6;
+ (BOOL)recipeContainsAnyDisplayAsset:(id)a3;
+ (id)PHAssetsInRecipe:(id)a3 withCategory:(int64_t)a4 error:(id *)a5;
+ (id)PHPhotoLibraryForRecipe:(id)a3;
+ (id)displayAssetsInRecipe:(id)a3 withCategory:(int64_t)a4 error:(id *)a5;
+ (id)flexFetchQueue;
+ (id)recipe:(id)a3 withPHPhotoLibrary:(id)a4 error:(id *)a5;
+ (id)recipeAssetFromAudioAsset:(id)a3 withCategory:(int64_t)a4 subcategory:(int64_t)a5 error:(id *)a6;
+ (id)requestAudioAssetFromRecipeAsset:(id)a3 recipe:(id)a4 resultHandler:(id)a5;
+ (id)syntheticAssetsInRecipe:(id)a3 withCategory:(int64_t)a4 error:(id *)a5;
+ (void)enumerateDisplayAssetsFromRecipe:(id)a3 usingBlock:(id)a4;
@end

@implementation PFStoryRecipe_PXStoryExtension

+ (id)recipeAssetFromAudioAsset:(id)a3 withCategory:(int64_t)a4 subcategory:(int64_t)a5 error:(id *)a6
{
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = MEMORY[0x1E69C08D0];
    v36 = *MEMORY[0x1E69C0DC8];
    v11 = v9;
    v12 = [v11 identifier];
    v13 = [v11 title];
    v14 = [v11 subtitle];
    [v11 colorGradeCategory];
    v15 = v9;
    v17 = v16 = a6;

    v18 = [v10 createAssetWithCategory:a4 subcategory:a5 catalog:v36 songID:v12 title:v13 subtitle:v14 colorGradeCategory:v17];

    a6 = v16;
    v9 = v15;

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = a6;
    v19 = MEMORY[0x1E69C08D0];
    v20 = MEMORY[0x1E69C0DD0];
LABEL_7:
    v27 = *v20;
    v28 = v9;
    v29 = [v28 identifier];
    v30 = [v28 title];
    v31 = [v28 subtitle];
    v32 = [v28 colorGradeCategory];

    v33 = v19;
    a6 = v37;
    v18 = [v33 createAssetWithCategory:a4 subcategory:a5 catalog:v27 songID:v29 title:v30 subtitle:v31 colorGradeCategory:v32];

LABEL_8:
    v34 = 0;
    if (!a6)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = a6;
    v19 = MEMORY[0x1E69C08D0];
    v20 = MEMORY[0x1E69C0DD8];
    goto LABEL_7;
  }

  v34 = PXStoryErrorCreateWithCodeDebugFormat(3, @"cannot create a recipe song asset from audio asset: %@", v21, v22, v23, v24, v25, v26, v9);
  v18 = 0;
  if (a6)
  {
LABEL_9:
    v34 = v34;
    *a6 = v34;
  }

LABEL_10:

  return v18;
}

+ (id)requestAudioAssetFromRecipeAsset:(id)a3 recipe:(id)a4 resultHandler:(id)a5
{
  v71[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PLAudioPlaybackGetLog();
  v12 = os_signpost_id_make_with_pointer(v11, a1);
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
  v69 = a1;
  v14 = v10;
  v68 = v14;
  v15 = _Block_copy(aBlock);
  if ([v8 kind] != 2)
  {
    v36 = PXStoryErrorCreateWithCodeDebugFormat(1, @"not a song recipe asset: %@", v16, v17, v18, v19, v20, v21, v8);
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

  v22 = v8;
  v23 = [v22 catalog];
  v24 = v23;
  if (v23 == *MEMORY[0x1E69C0DC8] || [v23 isEqualToString:?])
  {
    v31 = [v22 songID];
    if (v31)
    {
      v32 = [PFStoryRecipe_PXStoryExtension PHPhotoLibraryForRecipe:v9];
      v56 = v9;
      v33 = objc_alloc_init(PXMusicCuratorAudioAssetRequestOptions);
      v71[0] = v31;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:1];
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __88__PFStoryRecipe_PXStoryExtension_requestAudioAssetFromRecipeAsset_recipe_resultHandler___block_invoke_205;
      v65[3] = &unk_1E77309F0;
      v66 = v15;
      v35 = [PXMusicCurator requestAudioAssetFetchResultForAdamIDs:v34 requestOptions:v33 photoLibrary:v32 completionHandler:v65];

      v9 = v56;
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
    v31 = [v22 songID];
    if (v31)
    {
      v46 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:100];
      v47 = [objc_opt_class() flexFetchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __88__PFStoryRecipe_PXStoryExtension_requestAudioAssetFromRecipeAsset_recipe_resultHandler___block_invoke_2;
      block[3] = &unk_1E77425A0;
      v60 = v31;
      v61 = 0;
      v62 = v22;
      v35 = v46;
      v63 = v35;
      v64 = v15;
      dispatch_async(v47, block);

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

+ (BOOL)addDisplayAssets:(id)a3 toRecipe:(id)a4 withCategory:(int64_t)a5 error:(id *)a6
{
  v24[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  if (![v10 count])
  {
    v15 = 0;
    v13 = 1;
    if (!a6)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v12 = [v10 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = 0;
    v13 = [a1 addPHAssets:v10 toRecipe:v11 withCategory:a5 error:&v22];
    v14 = v22;
LABEL_8:
    v15 = v14;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = 0;
    v13 = [a1 addSyntheticAssets:v10 toRecipe:v11 withCategory:a5 error:&v21];
    v14 = v21;
    goto LABEL_8;
  }

  v16 = MEMORY[0x1E696ABC0];
  v23 = *MEMORY[0x1E696A278];
  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown display asset fetch result %@ containing %@", v10, v12];
  v24[0] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v15 = [v16 errorWithDomain:@"PXStoryErrorDomain" code:1 userInfo:v18];

  v13 = 0;
LABEL_10:

  if (a6)
  {
LABEL_11:
    v19 = v15;
    *a6 = v15;
  }

LABEL_12:

  return v13;
}

+ (id)displayAssetsInRecipe:(id)a3 withCategory:(int64_t)a4 error:(id *)a5
{
  v33[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
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
  [v8 enumerateAssetsWithKind:1 usingBlock:v25];
  v9 = v27[5];
  if (!v9)
  {
    PXDisplayAssetFetchResultEmpty();
  }

  v10 = [a1 schemeForPHAssets];
  v11 = [v9 isEqualToString:v10];

  if (v11)
  {
    v24 = 0;
    v12 = [a1 PHAssetsInRecipe:v8 withCategory:a4 error:&v24];
    v13 = v24;
  }

  else
  {
    v14 = v27[5];
    v15 = [a1 schemeForSyntheticAssets];
    LODWORD(v14) = [v14 isEqualToString:v15];

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
      if (!a5)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v23 = 0;
    v12 = [a1 syntheticAssetsInRecipe:v8 withCategory:a4 error:&v23];
    v13 = v23;
  }

  v16 = v13;
  if (a5)
  {
LABEL_10:
    v21 = v16;
    *a5 = v16;
  }

LABEL_11:

  _Block_object_dispose(&v26, 8);

  return v12;
}

+ (BOOL)recipeContainsAnyDisplayAsset:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__PFStoryRecipe_PXStoryExtension_recipeContainsAnyDisplayAsset___block_invoke;
  v6[3] = &unk_1E77309A0;
  v6[4] = &v7;
  [v3 enumerateAssetsWithKind:1 usingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (void)enumerateDisplayAssetsFromRecipe:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 PHPhotoLibraryForRecipe:v6];
  if (v8)
  {
    v9 = [_PXStoryRecipeEnumerator alloc];
    v10 = [a1 schemeForPHAssets];
    v11 = [(_PXStoryRecipeEnumerator *)v9 initWithBatchSize:200 photoLibrary:v8 scheme:v10 block:v7];

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
    [v6 enumerateAssetsWithKind:1 usingBlock:&v13];
    if (*(v20 + 24) == 1)
    {
      [(_PXStoryRecipeEnumerator *)v12 didFinishEnumeratingRecipeDisplayAssets:v13];
    }

    _Block_object_dispose(&v19, 8);
  }
}

+ (id)PHAssetsInRecipe:(id)a3 withCategory:(int64_t)a4 error:(id *)a5
{
  v43[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__55696;
  v40 = __Block_byref_object_dispose__55697;
  v41 = 0;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [a1 schemeForPHAssets];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __80__PFStoryRecipe_PXStoryExtension_PhotoKit__PHAssetsInRecipe_withCategory_error___block_invoke;
  v31[3] = &unk_1E7738138;
  v11 = v10;
  v32 = v11;
  v35 = a4;
  v12 = v9;
  v33 = v12;
  v34 = &v36;
  [v8 enumerateAssetsWithKind:1 usingBlock:v31];
  if (v37[5] || ![v12 count])
  {
    v13 = 0;
  }

  else
  {
    v14 = [a1 PHPhotoLibraryForRecipe:v8];
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
        v21 = [v15 librarySpecificFetchOptions];
        v22 = MEMORY[0x1E6978630];
        v23 = [v18 copy];
        v13 = [v22 fetchAssetsWithLocalIdentifiers:v23 options:v21];
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

  if (a5)
  {
    *a5 = v37[5];
  }

  _Block_object_dispose(&v36, 8);

  return v13;
}

+ (BOOL)addPHAssets:(id)a3 toRecipe:(id)a4 withCategory:(int64_t)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__55696;
  v36 = __Block_byref_object_dispose__55697;
  v37 = 0;
  v11 = [v9 count];
  if (!v11)
  {
    v22 = 1;
    if (!a6)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v24 = [v9 firstObject];
  v12 = [v24 photoLibrary];
  v13 = (v33 + 5);
  obj = v33[5];
  v14 = [a1 _recipe:v10 setPHPhotoLibrary:v12 error:&obj];
  objc_storeStrong(v13, obj);
  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
    if (v11 >= 1)
    {
      for (i = 0; i != v11; ++i)
      {
        v17 = [v9 objectAtIndexedSubscript:i];
        v18 = [v17 localIdentifier];
        [v15 addObject:v18];
      }
    }

    v19 = [a1 schemeForPHAssets];
    v20 = [v12 cloudIdentifierMappingsForLocalIdentifiers:v15];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __84__PFStoryRecipe_PXStoryExtension_PhotoKit__addPHAssets_toRecipe_withCategory_error___block_invoke;
    v26[3] = &unk_1E7732F00;
    v30 = a5;
    v21 = v19;
    v27 = v21;
    v28 = v10;
    v29 = &v32;
    [v20 enumerateKeysAndObjectsUsingBlock:v26];
    v22 = v33[5] == 0;
  }

  else
  {
    v22 = 0;
  }

  if (a6)
  {
LABEL_11:
    *a6 = v33[5];
  }

LABEL_12:
  _Block_object_dispose(&v32, 8);

  return v22;
}

+ (id)PHPhotoLibraryForRecipe:(id)a3
{
  v3 = [a3 libraryWithKind:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 photoLibrary];
  }

  else if (v3)
  {
    v5 = objc_alloc(MEMORY[0x1E69789A8]);
    v6 = [v3 url];
    v4 = [v5 initWithPhotoLibraryURL:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)recipe:(id)a3 withPHPhotoLibrary:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([a1 _recipe:v8 isReferencingPHPhotoLibrary:v9])
  {
    v10 = v8;
    v11 = 0;
    if (!a5)
    {
      goto LABEL_8;
    }

LABEL_7:
    v14 = v11;
    *a5 = v11;
    goto LABEL_8;
  }

  v12 = [v8 mutableCopyWithZone:0];
  v16 = 0;
  v13 = [a1 _recipe:v12 setPHPhotoLibrary:v9 error:&v16];
  v11 = v16;
  v10 = 0;
  if (v13)
  {
    v10 = [v12 copyWithZone:0];
  }

  if (a5)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v10;
}

+ (BOOL)_recipe:(id)a3 setPHPhotoLibrary:(id)a4 error:(id *)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([a1 _recipe:v8 isReferencingPHPhotoLibrary:v9])
  {
    v10 = 0;
    v11 = 1;
    if (!a5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = [v8 libraryWithKind:1];
  v11 = v12 == 0;
  if (v12)
  {
    v13 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A278];
    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v15 = [v12 url];
    v16 = [v9 photoLibraryURL];
    v17 = [v14 initWithFormat:@"Recipe referencing PhotoKit library %@ and cannot be changed to %@", v15, v16];
    v23[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v10 = [v13 errorWithDomain:@"PXStoryErrorDomain" code:1 userInfo:v18];
  }

  else
  {
    v19 = [[_PXStoryRecipePhotoKitLibraryReference alloc] initWithPhotoLibrary:v9];
    [v8 addLibrary:v19];

    v10 = 0;
  }

  if (a5)
  {
LABEL_8:
    v20 = v10;
    *a5 = v10;
  }

LABEL_9:

  return v11;
}

+ (BOOL)_recipe:(id)a3 isReferencingPHPhotoLibrary:(id)a4
{
  v5 = a4;
  v6 = [a3 libraryWithKind:1];
  v7 = [v6 url];
  v8 = [v5 photoLibraryURL];

  LOBYTE(v5) = [v7 isEqual:v8];
  return v5;
}

+ (id)syntheticAssetsInRecipe:(id)a3 withCategory:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__98030;
  v26 = __Block_byref_object_dispose__98031;
  v27 = 0;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [a1 schemeForSyntheticAssets];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __88__PFStoryRecipe_PXStoryExtension_Synthetic__syntheticAssetsInRecipe_withCategory_error___block_invoke;
  v17 = &unk_1E7738138;
  v11 = v10;
  v18 = v11;
  v21 = a4;
  v12 = v9;
  v19 = v12;
  v20 = &v22;
  [v8 enumerateAssetsWithKind:1 usingBlock:&v14];
  if (!v23[5] && [v12 count])
  {
    PXDisplayAssetFetchResultFromArray();
  }

  if (a5)
  {
    *a5 = v23[5];
  }

  _Block_object_dispose(&v22, 8);

  return 0;
}

+ (BOOL)addSyntheticAssets:(id)a3 toRecipe:(id)a4 withCategory:(int64_t)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v25 = a1;
  v11 = [a1 schemeForSyntheticAssets];
  v12 = [v9 count];
  if (v12 >= 1)
  {
    v13 = v12;
    v14 = 0;
    while (1)
    {
      v15 = [v9 objectAtIndexedSubscript:v14];
      if (!v15)
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v19 = [MEMORY[0x1E696AAA8] currentHandler];
        v22 = objc_opt_class();
        v21 = NSStringFromClass(v22);
        v24 = [v15 px_descriptionForAssertionMessage];
        [v19 handleFailureInMethod:a2 object:v25 file:@"PFStoryRecipe+PXStory+Synthetic.m" lineNumber:27 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"syntheticAssets[index]", v21, v24}];

        goto LABEL_9;
      }

LABEL_5:
      v16 = MEMORY[0x1E69C08B8];
      v17 = [v15 serializableDescription];
      v18 = [v16 createAssetWithCategory:a5 scheme:v11 cloudIdentifier:v17];
      [v10 addAsset:v18];

      if (v13 == ++v14)
      {
        goto LABEL_10;
      }
    }

    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [v19 handleFailureInMethod:a2 object:v25 file:@"PFStoryRecipe+PXStory+Synthetic.m" lineNumber:27 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"syntheticAssets[index]", v21}];
LABEL_9:

    goto LABEL_5;
  }

LABEL_10:

  return 1;
}

@end