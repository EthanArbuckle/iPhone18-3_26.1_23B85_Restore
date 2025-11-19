@interface PLResourceGenerator
+ (id)expectedLocalResourceRecipesForAsset:(id)a3 versions:(id)a4;
+ (id)expectedLocalResourceRecipesForAssetWithLibraryID:(id)a3 versions:(id)a4 assetHasAdjustments:(BOOL)a5 isDefaultAdjustedSlomo:(BOOL)a6 assetIsRAWOrRawPlugJPEGWithRawOnTop:(BOOL)a7 assetWidth:(int64_t)a8 assetHeight:(int64_t)a9 assetKind:(signed __int16)a10 assetkindSubtype:(signed __int16)a11 deferredProcessingNeeded:(unsigned __int16)a12 videoDeferredProcessingNeeded:(unsigned __int16)a13;
+ (id)fileAndTableBackedThumbnailManagerRecipesForLibraryID:(id)a3;
+ (id)generateAndStoreMissingExpectedLocalResourcesForAsset:(id)a3 versions:(id)a4 imageConversionClient:(id)a5 videoConversionClient:(id)a6 conversionServiceOptions:(id)a7 reason:(id)a8 completion:(id)a9;
+ (id)locallyUnavailableRecipesFromRecipes:(id)a3 versions:(id)a4 asset:(id)a5;
+ (void)_continueGeneratingResourcesForAsset:(id)a3 versions:(id)a4 imageConversionClient:(id)a5 videoConversionClient:(id)a6 conversionServiceOptions:(id)a7 remainingRecipes:(id)a8 storedRecipes:(id)a9 attemptedRecipes:(id)a10 errorsEncountered:(id)a11 progress:(id)a12 reason:(id)a13 completion:(id)a14;
@end

@implementation PLResourceGenerator

+ (id)generateAndStoreMissingExpectedLocalResourcesForAsset:(id)a3 versions:(id)a4 imageConversionClient:(id)a5 videoConversionClient:(id)a6 conversionServiceOptions:(id)a7 reason:(id)a8 completion:(id)a9
{
  v16 = a3;
  v54 = a5;
  v17 = a6;
  v18 = a7;
  v52 = a8;
  v19 = a9;
  v20 = MEMORY[0x1E695DFD8];
  v21 = a4;
  v22 = [v20 setWithArray:v21];
  if ([v22 containsObject:&unk_1F0FBEC68])
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [v43 handleFailureInMethod:a2 object:a1 file:@"PLResourceGenerator.m" lineNumber:292 description:@"Generating adjusted versions is not currently supported"];
  }

  v53 = v18;
  v51 = v17;
  if ([v22 count] != 1 && (objc_msgSend(v22, "count") != 2 || (objc_msgSend(v22, "containsObject:", &unk_1F0FBEC38) & 1) == 0))
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"PLResourceGenerator.m" lineNumber:293 description:@"Generating adjusted & unadjusted at the same time is not currently supported."];
  }

  v50 = v22;
  v24 = [objc_opt_class() expectedLocalResourceRecipesForAsset:v16 versions:v21];
  v25 = [MEMORY[0x1E695DFD8] setWithArray:v21];

  v49 = v24;
  v26 = [a1 locallyUnavailableRecipesFromRecipes:v24 versions:v25 asset:v16];
  v27 = [v26 mutableCopy];

  v28 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:{objc_msgSend(v27, "count")}];
  v29 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v27, "count")}];
  v30 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v27, "count")}];
  v31 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v27, "count")}];
  v47 = v16;
  v48 = v28;
  if ([v27 count])
  {
    v46 = v19;
    v32 = v19;
    v33 = v51;
    v34 = v52;
    v45 = v28;
    v44 = v29;
    v35 = a1;
    v36 = v16;
    v37 = v29;
    v38 = v50;
    v39 = v54;
    v40 = v53;
    [v35 _continueGeneratingResourcesForAsset:v36 versions:v50 imageConversionClient:v54 videoConversionClient:v51 conversionServiceOptions:v53 remainingRecipes:v27 storedRecipes:v44 attemptedRecipes:v30 errorsEncountered:v31 progress:v45 reason:v52 completion:{v46, v47}];
  }

  else
  {
    [v28 setTotalUnitCount:1];
    [v28 setCompletedUnitCount:{objc_msgSend(v28, "totalUnitCount")}];
    v41 = [MEMORY[0x1E695DFD8] set];
    (*(v19 + 2))(v19, 0, v41);

    v39 = v54;
    v40 = v53;
    v32 = v19;
    v33 = v51;
    v34 = v52;
    v37 = v29;
    v38 = v50;
  }

  return v48;
}

+ (id)locallyUnavailableRecipesFromRecipes:(id)a3 versions:(id)a4 asset:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [a5 resourcesSortedByQualityWithOptions:1];
  v10 = MEMORY[0x1E696AE18];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __75__PLResourceGenerator_locallyUnavailableRecipesFromRecipes_versions_asset___block_invoke;
  v27[3] = &unk_1E7576800;
  v11 = v8;
  v28 = v11;
  v12 = [v10 predicateWithBlock:v27];
  v13 = [v9 filteredArrayUsingPredicate:v12];

  v14 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(v13, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = [v13 reverseObjectEnumerator];
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = +[PLResourceRecipe recipeFromID:](PLResourceRecipe, "recipeFromID:", [*(*(&v23 + 1) + 8 * i) recipeID]);
        if (v20)
        {
          [v14 addObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v17);
  }

  v21 = [v7 mutableCopy];
  [v21 minusOrderedSet:v14];

  return v21;
}

uint64_t __75__PLResourceGenerator_locallyUnavailableRecipesFromRecipes_versions_asset___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 localAvailability] >= 1 && objc_msgSend(v3, "recipeID"))
  {
    v4 = +[PLResourceRecipe recipeFromID:](PLResourceRecipe, "recipeFromID:", [v3 recipeID]);
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v3, "version")}];
      v7 = [v5 containsObject:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)expectedLocalResourceRecipesForAsset:(id)a3 versions:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 assetID];
  v8 = [v7 libraryID];

  v19 = [v5 hasAdjustments];
  v9 = [v5 isDefaultAdjustedSlomo];
  if ([v5 isRAWOnly])
  {
    v10 = 1;
  }

  else
  {
    v10 = [v5 isRAWPlusJPEGWithRAWOnTop];
  }

  v11 = [v5 width];
  v12 = [v5 height];
  v13 = [v5 kind];
  v14 = [v5 kindSubtype];
  v15 = [v5 deferredProcessingNeeded];
  HIWORD(v18) = [v5 videoDeferredProcessingNeeded];
  WORD2(v18) = v15;
  WORD1(v18) = v14;
  LOWORD(v18) = v13;
  v16 = [a1 expectedLocalResourceRecipesForAssetWithLibraryID:v8 versions:v6 assetHasAdjustments:v19 isDefaultAdjustedSlomo:v9 assetIsRAWOrRawPlugJPEGWithRawOnTop:v10 assetWidth:v11 assetHeight:v12 assetKind:v18 assetkindSubtype:? deferredProcessingNeeded:? videoDeferredProcessingNeeded:?];

  return v16;
}

+ (id)expectedLocalResourceRecipesForAssetWithLibraryID:(id)a3 versions:(id)a4 assetHasAdjustments:(BOOL)a5 isDefaultAdjustedSlomo:(BOOL)a6 assetIsRAWOrRawPlugJPEGWithRawOnTop:(BOOL)a7 assetWidth:(int64_t)a8 assetHeight:(int64_t)a9 assetKind:(signed __int16)a10 assetkindSubtype:(signed __int16)a11 deferredProcessingNeeded:(unsigned __int16)a12 videoDeferredProcessingNeeded:(unsigned __int16)a13
{
  v13 = a7;
  LODWORD(v30) = a6;
  v14 = a5;
  HIDWORD(v30) = a11;
  v17 = a3;
  v18 = a4;
  v19 = [MEMORY[0x1E695DFD8] setWithArray:v18];
  if ([v19 count] != 1 && (objc_msgSend(v19, "count") != 2 || (objc_msgSend(v19, "containsObject:", &unk_1F0FBEC38) & 1) == 0))
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"PLResourceGenerator.m" lineNumber:179 description:{@"Valid versions include: ([(empty)], [current], [current, original], [current, adjusted])"}];
  }

  v21 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{10, v30}];
  if ([v18 containsObject:&unk_1F0FBEC50])
  {
    if (v13 && !v14)
    {
      v22 = [PLResourceRecipe recipeFromID:65737];
      [v21 addObject:v22];
    }

    if (a13)
    {
      v23 = [PLResourceRecipe recipeFromID:131280];
      [v21 addObject:v23];
    }

    if (a12 == 10 || a12 == 1)
    {
      v24 = [PLResourceRecipe recipeFromID:65944];
      [v21 addObject:v24];
    }
  }

  if ([v18 containsObject:&unk_1F0FBEC68] && v14)
  {
    if (a10 == 1)
    {
      if (v31)
      {
        goto LABEL_23;
      }

      v26 = 0x20000;
      goto LABEL_22;
    }

    if (!a10)
    {
      v25 = [PLResourceRecipe recipeFromID:65938];
      [v21 addObject:v25];

      if (v32 == 2)
      {
        v26 = 131272;
LABEL_22:
        v27 = [PLResourceRecipe recipeFromID:v26];
        [v21 addObject:v27];
      }
    }
  }

LABEL_23:
  if ([v18 containsObject:&unk_1F0FBEC38])
  {
    v28 = [a1 fileAndTableBackedThumbnailManagerRecipesForLibraryID:v17];
    [v21 unionOrderedSet:v28];
  }

  return v21;
}

+ (id)fileAndTableBackedThumbnailManagerRecipesForLibraryID:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = PLDataStoreForClassIDAndLibraryID(1, a3);
  v4 = [v3 thumbnailFormats];
  v5 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(v4, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        if (([v11 isTable] & 1) == 0)
        {
          v12 = +[PLResourceRecipe recipeFromID:](PLResourceRecipe, "recipeFromID:", 2 * [v11 formatID] + 262145);
          if (v12)
          {
            [v5 addObject:v12];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * j);
        if ([v18 isTable])
        {
          v19 = +[PLResourceRecipe recipeFromID:](PLResourceRecipe, "recipeFromID:", (2 * [v18 formatID]) | 0x30001);
          if (v19)
          {
            [v5 addObject:v19];
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  return v5;
}

+ (void)_continueGeneratingResourcesForAsset:(id)a3 versions:(id)a4 imageConversionClient:(id)a5 videoConversionClient:(id)a6 conversionServiceOptions:(id)a7 remainingRecipes:(id)a8 storedRecipes:(id)a9 attemptedRecipes:(id)a10 errorsEncountered:(id)a11 progress:(id)a12 reason:(id)a13 completion:(id)a14
{
  v74[3] = *MEMORY[0x1E69E9840];
  v54 = a3;
  v19 = a4;
  v20 = a5;
  v53 = a6;
  v52 = a7;
  v21 = a8;
  v22 = a9;
  v23 = v21;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v57 = a13;
  v27 = a14;
  v28 = [v23 firstObject];
  v55 = v26;
  v56 = v24;
  if (!v28)
  {
    v27[2](v27, v25, v22);
    v30 = v54;
    goto LABEL_5;
  }

  v51 = v20;
  if ([v26 isCancelled])
  {
    v29 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:47002 userInfo:0];
    [v25 addObject:v29];
    v27[2](v27, v25, v22);

    v30 = v54;
    v20 = v51;
LABEL_5:
    v32 = v52;
    v31 = v53;
    goto LABEL_12;
  }

  v49 = v22;
  [v23 removeObjectAtIndex:0];
  [v24 addObject:v28];
  v33 = [v19 mutableCopy];
  v34 = MEMORY[0x1E695DFD8];
  [v28 supportedVersionsForLocalResourceGeneration];
  v36 = v35 = v19;
  v37 = [v34 setWithArray:v36];
  [v33 intersectSet:v37];

  v48 = v33;
  if ([v33 count] == 1)
  {
    v38 = [PLResourceRecipeGenerationOptions alloc];
    v39 = [v33 anyObject];
    v31 = v53;
    v46 = -[PLResourceRecipeGenerationOptions initWithVersion:taskIdentifier:reason:imageConversionServiceClient:videoConversionServiceClient:conversionServiceOptions:](v38, "initWithVersion:taskIdentifier:reason:imageConversionServiceClient:videoConversionServiceClient:conversionServiceOptions:", [v39 integerValue], @"ResourceGenerator", v57, v51, v53, v52);

    v72 = 0;
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __231__PLResourceGenerator__continueGeneratingResourcesForAsset_versions_imageConversionClient_videoConversionClient_conversionServiceOptions_remainingRecipes_storedRecipes_attemptedRecipes_errorsEncountered_progress_reason_completion___block_invoke;
    v58[3] = &unk_1E75767D8;
    v59 = v49;
    v60 = v24;
    v61 = v23;
    v45 = v26;
    v62 = v45;
    v63 = v25;
    v71 = a1;
    v30 = v54;
    v64 = v54;
    v65 = v35;
    v32 = v52;
    v66 = v51;
    v67 = v53;
    v68 = v52;
    v69 = v57;
    v70 = v27;
    [v28 generateAndStoreForAsset:v64 options:v46 progress:&v72 completion:v58];
    v40 = v72;
    if (v40)
    {
      [v45 addChild:v40 withPendingUnitCount:1];
    }

    v19 = v35;
  }

  else
  {
    [v26 setCompletedUnitCount:{objc_msgSend(v26, "completedUnitCount") + 1}];
    v47 = MEMORY[0x1E696ABC0];
    v41 = *MEMORY[0x1E69BFF48];
    v73[0] = *MEMORY[0x1E696A578];
    v42 = NSStringFromPLErrorCode();
    v74[0] = v42;
    v74[1] = v28;
    v73[1] = @"recipe";
    v73[2] = @"versions";
    v43 = [v35 allObjects];
    v74[2] = v43;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:3];
    v44 = v19 = v35;
    v40 = [v47 errorWithDomain:v41 code:47004 userInfo:v44];

    [v25 addObject:v40];
    v31 = v53;
    v30 = v54;
    v32 = v52;
    [a1 _continueGeneratingResourcesForAsset:v54 versions:v19 imageConversionClient:v51 videoConversionClient:v53 conversionServiceOptions:v52 remainingRecipes:v23 storedRecipes:v49 attemptedRecipes:v56 errorsEncountered:v25 progress:v55 reason:v57 completion:v27];
  }

  v20 = v51;
  v22 = v49;
LABEL_12:
}

void __231__PLResourceGenerator__continueGeneratingResourcesForAsset_versions_imageConversionClient_videoConversionClient_conversionServiceOptions_remainingRecipes_storedRecipes_attemptedRecipes_errorsEncountered_progress_reason_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v14 = a3;
  v8 = *(a1 + 32);
  v9 = a5;
  v10 = a4;
  [v8 unionSet:v10];
  [*(a1 + 40) unionSet:v10];
  v11 = [*(a1 + 48) count];
  [*(a1 + 48) minusSet:v10];

  v12 = v11 - [*(a1 + 48) count];
  v13 = [v9 mutableCopy];

  [v13 minusSet:*(a1 + 40)];
  [*(a1 + 48) unionOrderedSet:v13];
  [*(a1 + 56) setTotalUnitCount:{objc_msgSend(*(a1 + 56), "totalUnitCount") + objc_msgSend(v13, "count")}];
  [*(a1 + 56) setCompletedUnitCount:{objc_msgSend(*(a1 + 56), "completedUnitCount") + 1}];
  [*(a1 + 56) setCompletedUnitCount:{v12 + objc_msgSend(*(a1 + 56), "completedUnitCount")}];
  if (v14)
  {
    [*(a1 + 64) addObject:v14];
  }

  [*(a1 + 128) _continueGeneratingResourcesForAsset:*(a1 + 72) versions:*(a1 + 80) imageConversionClient:*(a1 + 88) videoConversionClient:*(a1 + 96) conversionServiceOptions:*(a1 + 104) remainingRecipes:*(a1 + 48) storedRecipes:*(a1 + 32) attemptedRecipes:*(a1 + 40) errorsEncountered:*(a1 + 64) progress:*(a1 + 56) reason:*(a1 + 112) completion:*(a1 + 120)];
}

@end