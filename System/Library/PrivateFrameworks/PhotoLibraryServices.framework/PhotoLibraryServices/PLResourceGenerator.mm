@interface PLResourceGenerator
+ (id)expectedLocalResourceRecipesForAsset:(id)asset versions:(id)versions;
+ (id)expectedLocalResourceRecipesForAssetWithLibraryID:(id)d versions:(id)versions assetHasAdjustments:(BOOL)adjustments isDefaultAdjustedSlomo:(BOOL)slomo assetIsRAWOrRawPlugJPEGWithRawOnTop:(BOOL)top assetWidth:(int64_t)width assetHeight:(int64_t)height assetKind:(signed __int16)self0 assetkindSubtype:(signed __int16)self1 deferredProcessingNeeded:(unsigned __int16)self2 videoDeferredProcessingNeeded:(unsigned __int16)self3;
+ (id)fileAndTableBackedThumbnailManagerRecipesForLibraryID:(id)d;
+ (id)generateAndStoreMissingExpectedLocalResourcesForAsset:(id)asset versions:(id)versions imageConversionClient:(id)client videoConversionClient:(id)conversionClient conversionServiceOptions:(id)options reason:(id)reason completion:(id)completion;
+ (id)locallyUnavailableRecipesFromRecipes:(id)recipes versions:(id)versions asset:(id)asset;
+ (void)_continueGeneratingResourcesForAsset:(id)asset versions:(id)versions imageConversionClient:(id)client videoConversionClient:(id)conversionClient conversionServiceOptions:(id)options remainingRecipes:(id)recipes storedRecipes:(id)storedRecipes attemptedRecipes:(id)self0 errorsEncountered:(id)self1 progress:(id)self2 reason:(id)self3 completion:(id)self4;
@end

@implementation PLResourceGenerator

+ (id)generateAndStoreMissingExpectedLocalResourcesForAsset:(id)asset versions:(id)versions imageConversionClient:(id)client videoConversionClient:(id)conversionClient conversionServiceOptions:(id)options reason:(id)reason completion:(id)completion
{
  assetCopy = asset;
  clientCopy = client;
  conversionClientCopy = conversionClient;
  optionsCopy = options;
  reasonCopy = reason;
  completionCopy = completion;
  v20 = MEMORY[0x1E695DFD8];
  versionsCopy = versions;
  v22 = [v20 setWithArray:versionsCopy];
  if ([v22 containsObject:&unk_1F0FBEC68])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceGenerator.m" lineNumber:292 description:@"Generating adjusted versions is not currently supported"];
  }

  v53 = optionsCopy;
  v51 = conversionClientCopy;
  if ([v22 count] != 1 && (objc_msgSend(v22, "count") != 2 || (objc_msgSend(v22, "containsObject:", &unk_1F0FBEC38) & 1) == 0))
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLResourceGenerator.m" lineNumber:293 description:@"Generating adjusted & unadjusted at the same time is not currently supported."];
  }

  v50 = v22;
  v24 = [objc_opt_class() expectedLocalResourceRecipesForAsset:assetCopy versions:versionsCopy];
  v25 = [MEMORY[0x1E695DFD8] setWithArray:versionsCopy];

  v49 = v24;
  v26 = [self locallyUnavailableRecipesFromRecipes:v24 versions:v25 asset:assetCopy];
  v27 = [v26 mutableCopy];

  v28 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:{objc_msgSend(v27, "count")}];
  v29 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v27, "count")}];
  v30 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v27, "count")}];
  v31 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v27, "count")}];
  v47 = assetCopy;
  v48 = v28;
  if ([v27 count])
  {
    v46 = completionCopy;
    v32 = completionCopy;
    v33 = v51;
    v34 = reasonCopy;
    v45 = v28;
    v44 = v29;
    selfCopy = self;
    v36 = assetCopy;
    v37 = v29;
    v38 = v50;
    v39 = clientCopy;
    v40 = v53;
    [selfCopy _continueGeneratingResourcesForAsset:v36 versions:v50 imageConversionClient:clientCopy videoConversionClient:v51 conversionServiceOptions:v53 remainingRecipes:v27 storedRecipes:v44 attemptedRecipes:v30 errorsEncountered:v31 progress:v45 reason:reasonCopy completion:{v46, v47}];
  }

  else
  {
    [v28 setTotalUnitCount:1];
    [v28 setCompletedUnitCount:{objc_msgSend(v28, "totalUnitCount")}];
    v41 = [MEMORY[0x1E695DFD8] set];
    (*(completionCopy + 2))(completionCopy, 0, v41);

    v39 = clientCopy;
    v40 = v53;
    v32 = completionCopy;
    v33 = v51;
    v34 = reasonCopy;
    v37 = v29;
    v38 = v50;
  }

  return v48;
}

+ (id)locallyUnavailableRecipesFromRecipes:(id)recipes versions:(id)versions asset:(id)asset
{
  v30 = *MEMORY[0x1E69E9840];
  recipesCopy = recipes;
  versionsCopy = versions;
  v9 = [asset resourcesSortedByQualityWithOptions:1];
  v10 = MEMORY[0x1E696AE18];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __75__PLResourceGenerator_locallyUnavailableRecipesFromRecipes_versions_asset___block_invoke;
  v27[3] = &unk_1E7576800;
  v11 = versionsCopy;
  v28 = v11;
  v12 = [v10 predicateWithBlock:v27];
  v13 = [v9 filteredArrayUsingPredicate:v12];

  v14 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(v13, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  reverseObjectEnumerator = [v13 reverseObjectEnumerator];
  v16 = [reverseObjectEnumerator countByEnumeratingWithState:&v23 objects:v29 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v20 = +[PLResourceRecipe recipeFromID:](PLResourceRecipe, "recipeFromID:", [*(*(&v23 + 1) + 8 * i) recipeID]);
        if (v20)
        {
          [v14 addObject:v20];
        }
      }

      v17 = [reverseObjectEnumerator countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v17);
  }

  v21 = [recipesCopy mutableCopy];
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

+ (id)expectedLocalResourceRecipesForAsset:(id)asset versions:(id)versions
{
  assetCopy = asset;
  versionsCopy = versions;
  assetID = [assetCopy assetID];
  libraryID = [assetID libraryID];

  hasAdjustments = [assetCopy hasAdjustments];
  isDefaultAdjustedSlomo = [assetCopy isDefaultAdjustedSlomo];
  if ([assetCopy isRAWOnly])
  {
    isRAWPlusJPEGWithRAWOnTop = 1;
  }

  else
  {
    isRAWPlusJPEGWithRAWOnTop = [assetCopy isRAWPlusJPEGWithRAWOnTop];
  }

  width = [assetCopy width];
  height = [assetCopy height];
  kind = [assetCopy kind];
  kindSubtype = [assetCopy kindSubtype];
  deferredProcessingNeeded = [assetCopy deferredProcessingNeeded];
  HIWORD(v18) = [assetCopy videoDeferredProcessingNeeded];
  WORD2(v18) = deferredProcessingNeeded;
  WORD1(v18) = kindSubtype;
  LOWORD(v18) = kind;
  v16 = [self expectedLocalResourceRecipesForAssetWithLibraryID:libraryID versions:versionsCopy assetHasAdjustments:hasAdjustments isDefaultAdjustedSlomo:isDefaultAdjustedSlomo assetIsRAWOrRawPlugJPEGWithRawOnTop:isRAWPlusJPEGWithRAWOnTop assetWidth:width assetHeight:height assetKind:v18 assetkindSubtype:? deferredProcessingNeeded:? videoDeferredProcessingNeeded:?];

  return v16;
}

+ (id)expectedLocalResourceRecipesForAssetWithLibraryID:(id)d versions:(id)versions assetHasAdjustments:(BOOL)adjustments isDefaultAdjustedSlomo:(BOOL)slomo assetIsRAWOrRawPlugJPEGWithRawOnTop:(BOOL)top assetWidth:(int64_t)width assetHeight:(int64_t)height assetKind:(signed __int16)self0 assetkindSubtype:(signed __int16)self1 deferredProcessingNeeded:(unsigned __int16)self2 videoDeferredProcessingNeeded:(unsigned __int16)self3
{
  topCopy = top;
  LODWORD(v30) = slomo;
  adjustmentsCopy = adjustments;
  HIDWORD(v30) = subtype;
  dCopy = d;
  versionsCopy = versions;
  v19 = [MEMORY[0x1E695DFD8] setWithArray:versionsCopy];
  if ([v19 count] != 1 && (objc_msgSend(v19, "count") != 2 || (objc_msgSend(v19, "containsObject:", &unk_1F0FBEC38) & 1) == 0))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceGenerator.m" lineNumber:179 description:{@"Valid versions include: ([(empty)], [current], [current, original], [current, adjusted])"}];
  }

  v21 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{10, v30}];
  if ([versionsCopy containsObject:&unk_1F0FBEC50])
  {
    if (topCopy && !adjustmentsCopy)
    {
      v22 = [PLResourceRecipe recipeFromID:65737];
      [v21 addObject:v22];
    }

    if (processingNeeded)
    {
      v23 = [PLResourceRecipe recipeFromID:131280];
      [v21 addObject:v23];
    }

    if (needed == 10 || needed == 1)
    {
      v24 = [PLResourceRecipe recipeFromID:65944];
      [v21 addObject:v24];
    }
  }

  if ([versionsCopy containsObject:&unk_1F0FBEC68] && adjustmentsCopy)
  {
    if (kind == 1)
    {
      if (v31)
      {
        goto LABEL_23;
      }

      v26 = 0x20000;
      goto LABEL_22;
    }

    if (!kind)
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
  if ([versionsCopy containsObject:&unk_1F0FBEC38])
  {
    v28 = [self fileAndTableBackedThumbnailManagerRecipesForLibraryID:dCopy];
    [v21 unionOrderedSet:v28];
  }

  return v21;
}

+ (id)fileAndTableBackedThumbnailManagerRecipesForLibraryID:(id)d
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = PLDataStoreForClassIDAndLibraryID(1, d);
  thumbnailFormats = [v3 thumbnailFormats];
  v5 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(thumbnailFormats, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = thumbnailFormats;
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

+ (void)_continueGeneratingResourcesForAsset:(id)asset versions:(id)versions imageConversionClient:(id)client videoConversionClient:(id)conversionClient conversionServiceOptions:(id)options remainingRecipes:(id)recipes storedRecipes:(id)storedRecipes attemptedRecipes:(id)self0 errorsEncountered:(id)self1 progress:(id)self2 reason:(id)self3 completion:(id)self4
{
  v74[3] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  versionsCopy = versions;
  clientCopy = client;
  conversionClientCopy = conversionClient;
  optionsCopy = options;
  recipesCopy = recipes;
  storedRecipesCopy = storedRecipes;
  v23 = recipesCopy;
  attemptedRecipesCopy = attemptedRecipes;
  encounteredCopy = encountered;
  progressCopy = progress;
  reasonCopy = reason;
  completionCopy = completion;
  firstObject = [v23 firstObject];
  v55 = progressCopy;
  v56 = attemptedRecipesCopy;
  if (!firstObject)
  {
    completionCopy[2](completionCopy, encounteredCopy, storedRecipesCopy);
    v30 = assetCopy;
    goto LABEL_5;
  }

  v51 = clientCopy;
  if ([progressCopy isCancelled])
  {
    v29 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:47002 userInfo:0];
    [encounteredCopy addObject:v29];
    completionCopy[2](completionCopy, encounteredCopy, storedRecipesCopy);

    v30 = assetCopy;
    clientCopy = v51;
LABEL_5:
    v32 = optionsCopy;
    v31 = conversionClientCopy;
    goto LABEL_12;
  }

  v49 = storedRecipesCopy;
  [v23 removeObjectAtIndex:0];
  [attemptedRecipesCopy addObject:firstObject];
  v33 = [versionsCopy mutableCopy];
  v34 = MEMORY[0x1E695DFD8];
  [firstObject supportedVersionsForLocalResourceGeneration];
  v36 = v35 = versionsCopy;
  v37 = [v34 setWithArray:v36];
  [v33 intersectSet:v37];

  v48 = v33;
  if ([v33 count] == 1)
  {
    v38 = [PLResourceRecipeGenerationOptions alloc];
    anyObject = [v33 anyObject];
    v31 = conversionClientCopy;
    v46 = -[PLResourceRecipeGenerationOptions initWithVersion:taskIdentifier:reason:imageConversionServiceClient:videoConversionServiceClient:conversionServiceOptions:](v38, "initWithVersion:taskIdentifier:reason:imageConversionServiceClient:videoConversionServiceClient:conversionServiceOptions:", [anyObject integerValue], @"ResourceGenerator", reasonCopy, v51, conversionClientCopy, optionsCopy);

    v72 = 0;
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __231__PLResourceGenerator__continueGeneratingResourcesForAsset_versions_imageConversionClient_videoConversionClient_conversionServiceOptions_remainingRecipes_storedRecipes_attemptedRecipes_errorsEncountered_progress_reason_completion___block_invoke;
    v58[3] = &unk_1E75767D8;
    v59 = v49;
    v60 = attemptedRecipesCopy;
    v61 = v23;
    v45 = progressCopy;
    v62 = v45;
    v63 = encounteredCopy;
    selfCopy = self;
    v30 = assetCopy;
    v64 = assetCopy;
    v65 = v35;
    v32 = optionsCopy;
    v66 = v51;
    v67 = conversionClientCopy;
    v68 = optionsCopy;
    v69 = reasonCopy;
    v70 = completionCopy;
    [firstObject generateAndStoreForAsset:v64 options:v46 progress:&v72 completion:v58];
    v40 = v72;
    if (v40)
    {
      [v45 addChild:v40 withPendingUnitCount:1];
    }

    versionsCopy = v35;
  }

  else
  {
    [progressCopy setCompletedUnitCount:{objc_msgSend(progressCopy, "completedUnitCount") + 1}];
    v47 = MEMORY[0x1E696ABC0];
    v41 = *MEMORY[0x1E69BFF48];
    v73[0] = *MEMORY[0x1E696A578];
    v42 = NSStringFromPLErrorCode();
    v74[0] = v42;
    v74[1] = firstObject;
    v73[1] = @"recipe";
    v73[2] = @"versions";
    allObjects = [v35 allObjects];
    v74[2] = allObjects;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:3];
    v44 = versionsCopy = v35;
    v40 = [v47 errorWithDomain:v41 code:47004 userInfo:v44];

    [encounteredCopy addObject:v40];
    v31 = conversionClientCopy;
    v30 = assetCopy;
    v32 = optionsCopy;
    [self _continueGeneratingResourcesForAsset:assetCopy versions:versionsCopy imageConversionClient:v51 videoConversionClient:conversionClientCopy conversionServiceOptions:optionsCopy remainingRecipes:v23 storedRecipes:v49 attemptedRecipes:v56 errorsEncountered:encounteredCopy progress:v55 reason:reasonCopy completion:completionCopy];
  }

  clientCopy = v51;
  storedRecipesCopy = v49;
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