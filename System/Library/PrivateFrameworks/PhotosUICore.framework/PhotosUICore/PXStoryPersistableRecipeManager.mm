@interface PXStoryPersistableRecipeManager
- (NSString)diagnosticDescription;
- (PXStoryPersistableRecipeManager)init;
- (PXStoryPersistableRecipeManager)initWithModel:(id)a3 styleManager:(id)a4;
- (id)_persistableRecipeWithOriginalPersistableRecipe:(id)a3 recipe:(id)a4 recipeAssetEdits:(id)a5 currentStyle:(id)a6 error:(id *)a7;
- (void)_handlePersistableRecipe:(id)a3 recipeAssetEdits:(id)a4 error:(id)a5 progress:(id)a6;
- (void)_invalidateHasUserExperiencedFirstPlaybackEver;
- (void)_invalidateHasUserExperiencedPlayback;
- (void)_invalidateIsReadyToProducePersistableRecipe;
- (void)_invalidateOriginalPersistableRecipe;
- (void)_invalidatePersistableRecipeForUserActionKind:(int64_t)a3;
- (void)_invalidatePersistencePermission;
- (void)_updateHasUserExperiencedFirstPlaybackEver;
- (void)_updateHasUserExperiencedPlayback;
- (void)_updateIsReadyToProducePersistableRecipe;
- (void)_updateOriginalPersistableRecipe;
- (void)_updatePersistableRecipe;
- (void)_updatePersistencePermission;
- (void)dealloc;
- (void)didPerformChanges;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)setError:(id)a3;
- (void)setHasUserExperiencedFirstPlaybackEver:(BOOL)a3;
- (void)setHasUserExperiencedPlayback:(BOOL)a3;
- (void)setIsOriginalPersistableRecipeValid:(BOOL)a3;
- (void)setIsPreparedForUserChanges:(BOOL)a3;
- (void)setIsProducingPersistableRecipe:(BOOL)a3;
- (void)setIsReadyToProducePersistableRecipe:(BOOL)a3;
- (void)setPersistableRecipe:(id)a3;
- (void)setPersistencePermission:(int64_t)a3;
- (void)setProgress:(id)a3;
- (void)setRecipeAssetEdits:(id)a3;
@end

@implementation PXStoryPersistableRecipeManager

- (NSString)diagnosticDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p\n", v5, self];

  if ([(PXStoryPersistableRecipeManager *)self isOriginalPersistableRecipeValid])
  {
    v7 = [(PXStoryPersistableRecipeManager *)self originalPersistableRecipe];
    if (v7)
    {
      v8 = [(PXStoryPersistableRecipeManager *)self originalPersistableRecipe];
      v9 = [v8 diagnosticDescription];
      [v6 appendFormat:@"originalPersistableRecipe: %@\n", v9];
    }

    else
    {
      [v6 appendFormat:@"originalPersistableRecipe: %@\n", @"-"];
    }
  }

  else
  {
    [v6 appendFormat:@"originalPersistableRecipe: %@\n", @"?"];
  }

  [v6 appendFormat:@"isReadyToProducePersistableRecipe: %i\n", -[PXStoryPersistableRecipeManager isReadyToProducePersistableRecipe](self, "isReadyToProducePersistableRecipe")];
  [v6 appendFormat:@"hasUserExperiencedPlayback: %i\n", -[PXStoryPersistableRecipeManager hasUserExperiencedPlayback](self, "hasUserExperiencedPlayback")];
  [v6 appendFormat:@"hasUserExperiencedFirstPlaybackEver: %i\n", -[PXStoryPersistableRecipeManager hasUserExperiencedFirstPlaybackEver](self, "hasUserExperiencedFirstPlaybackEver")];
  [v6 appendFormat:@"isPreparedForUserChanges: %i\n", -[PXStoryPersistableRecipeManager isPreparedForUserChanges](self, "isPreparedForUserChanges")];
  if (![(PXStoryPersistableRecipeManager *)self isReadyToProducePersistableRecipe])
  {
    v10 = [(PXStoryPersistableRecipeManager *)self recipeManager];
    [v6 appendFormat:@"isRecipeFinal: %i\n", objc_msgSend(v10, "isRecipeFinal")];

    v11 = [(PXStoryPersistableRecipeManager *)self resourcesDataSourceManager];
    [v6 appendFormat:@"areResourcesFinal: %i\n", objc_msgSend(v11, "isDataSourceFinal")];

    v12 = [(PXStoryPersistableRecipeManager *)self styleManager];
    [v6 appendFormat:@"isCurrentStyleFinal: %i\n", objc_msgSend(v12, "isCurrentStyleFinal")];
  }

  [v6 appendFormat:@"isProducingPersistableRecipe: %i\n", -[PXStoryPersistableRecipeManager isProducingPersistableRecipe](self, "isProducingPersistableRecipe")];
  v13 = [(PXStoryPersistableRecipeManager *)self persistableRecipe];
  v14 = [v13 diagnosticDescription];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = @"-";
  }

  [v6 appendFormat:@"persistableRecipe: %@\n", v16];

  v17 = [(PXStoryPersistableRecipeManager *)self error];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"-";
  }

  [v6 appendFormat:@"error: %@\n", v19];

  v20 = [v6 copy];

  return v20;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__PXStoryPersistableRecipeManager_observable_didChange_context___block_invoke;
  v5[3] = &unk_1E7746748;
  v5[4] = self;
  v5[5] = a5;
  v5[6] = a4;
  v5[7] = a2;
  [(PXStoryPersistableRecipeManager *)self performChanges:v5];
}

void __64__PXStoryPersistableRecipeManager_observable_didChange_context___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = *(a1 + 40);
  if (v3 == ModelObservationContext_109675)
  {
    v10 = *(a1 + 48);
    if ((v10 & 2) != 0)
    {
      [*(a1 + 32) _invalidateHasUserExperiencedPlayback];
      v10 = *(a1 + 48);
    }

    if ((v10 & 0x4000000000) != 0)
    {
      v11 = *(a1 + 32);
      v5 = (a1 + 32);
      [v11 _invalidatePersistencePermission];
      goto LABEL_22;
    }
  }

  else if (v3 == RecipeManagerObservationContext_109676)
  {
    v12 = *(a1 + 48);
    if (v12)
    {
      [*(a1 + 32) _invalidateIsReadyToProducePersistableRecipe];
      [*(a1 + 32) _invalidateOriginalPersistableRecipe];
      [*(a1 + 32) _invalidatePersistableRecipeForUserActionKind:1];
      v12 = *(a1 + 48);
    }

    if ((v12 & 0x40) != 0)
    {
      v13 = *(a1 + 32);
      v5 = (a1 + 32);
      [v13 setIsPreparedForUserChanges:1];
      v9 = 2;
      goto LABEL_23;
    }
  }

  else if (v3 == ResourcesDataSourceManagerObservationContext)
  {
    v14 = *(a1 + 48);
    if ((v14 & 2) != 0)
    {
      [*(a1 + 32) _invalidateIsReadyToProducePersistableRecipe];
      v14 = *(a1 + 48);
    }

    if (v14)
    {
      v5 = (a1 + 32);
      goto LABEL_22;
    }
  }

  else
  {
    if (v3 != StyleManagerObservationContext)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PXStoryPersistableRecipeManager.m" lineNumber:489 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v4 = *(a1 + 48);
    if ((v4 & 0x10) != 0)
    {
      [*(a1 + 32) _invalidateIsReadyToProducePersistableRecipe];
      v4 = *(a1 + 48);
    }

    if ((v4 & 6) != 0)
    {
      v6 = *(a1 + 32);
      v5 = (a1 + 32);
      v7 = [v6 styleManager];
      v8 = [v7 changesOrigin];

      if ((v8 & 2) != 0)
      {
        v9 = 1;
        [*v5 setIsPreparedForUserChanges:1];
LABEL_23:
        [*v5 _invalidatePersistableRecipeForUserActionKind:v9];
        goto LABEL_24;
      }

LABEL_22:
      v9 = 1;
      goto LABEL_23;
    }
  }

LABEL_24:
}

- (void)_handlePersistableRecipe:(id)a3 recipeAssetEdits:(id)a4 error:(id)a5 progress:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (([a6 isCancelled] & 1) == 0)
  {
    if (!v10 || v12)
    {
      v13 = [(PXStoryPersistableRecipeManager *)self model];
      [v13 reportPersistenceFailureWithError:v12];
    }

    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __92__PXStoryPersistableRecipeManager__handlePersistableRecipe_recipeAssetEdits_error_progress___block_invoke;
    v19 = &unk_1E773A8B8;
    v20 = self;
    v21 = v10;
    v22 = v11;
    v14 = v12;
    v23 = v14;
    [(PXStoryPersistableRecipeManager *)self performChanges:&v16];
    v15 = [(PXStoryPersistableRecipeManager *)self errorReporter:v16];
    [v15 setError:v14 forComponent:@"RecipePersistence"];
  }
}

uint64_t __92__PXStoryPersistableRecipeManager__handlePersistableRecipe_recipeAssetEdits_error_progress___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPersistableRecipe:*(a1 + 40)];
  [*(a1 + 32) setRecipeAssetEdits:*(a1 + 48)];
  [*(a1 + 32) setError:*(a1 + 56)];
  v2 = *(a1 + 32);

  return [v2 setProgress:0];
}

- (void)_updatePersistableRecipe
{
  if ([(PXStoryPersistableRecipeManager *)self isReadyToProducePersistableRecipe])
  {
    v3 = [(PXStoryPersistableRecipeManager *)self model];
    v4 = [v3 persistencePermission];
    v5 = [v3 configuration];
    v6 = [v5 isRelated];

    if (v6)
    {
      if (![(PXStoryPersistableRecipeManager *)self isPreparedForUserChanges])
      {
        goto LABEL_9;
      }
    }

    else if ((![(PXStoryPersistableRecipeManager *)self hasUserExperiencedFirstPlaybackEver]|| v4 != 1) && ![(PXStoryPersistableRecipeManager *)self isPreparedForUserChanges])
    {
      goto LABEL_9;
    }

    [(PXStoryPersistableRecipeManager *)self setIsPreparedForUserChanges:0];
    v7 = [(PXStoryPersistableRecipeManager *)self originalPersistableRecipe];
    v8 = [(PXStoryPersistableRecipeManager *)self recipeManager];
    v9 = [v8 recipeAssetEdits];

    v10 = [(PXStoryPersistableRecipeManager *)self recipeManager];
    v11 = [v10 recipe];

    v22 = [(PXStoryPersistableRecipeManager *)self styleManager];
    v12 = [v22 currentStyle];
    v13 = [(PXStoryPersistableRecipeManager *)self storyQueue];
    v14 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:0];
    objc_initWeak(&location, self);
    v15 = [(PXStoryPersistableRecipeManager *)self workQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__PXStoryPersistableRecipeManager__updatePersistableRecipe__block_invoke;
    block[3] = &unk_1E77399E8;
    v16 = v14;
    v24 = v16;
    v25 = self;
    v17 = v7;
    v26 = v17;
    v18 = v11;
    v27 = v18;
    v19 = v9;
    v28 = v19;
    v20 = v12;
    v29 = v20;
    v21 = v13;
    v30 = v21;
    objc_copyWeak(&v31, &location);
    dispatch_async(v15, block);

    [(PXStoryPersistableRecipeManager *)self setProgress:v16];
    objc_destroyWeak(&v31);

    objc_destroyWeak(&location);
LABEL_9:
  }
}

void __59__PXStoryPersistableRecipeManager__updatePersistableRecipe__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v18 = 0;
    v7 = [v2 _persistableRecipeWithOriginalPersistableRecipe:v3 recipe:v4 recipeAssetEdits:v5 currentStyle:v6 error:&v18];
    v8 = v18;
    v9 = *(a1 + 80);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__PXStoryPersistableRecipeManager__updatePersistableRecipe__block_invoke_2;
    v12[3] = &unk_1E77399C0;
    objc_copyWeak(&v17, (a1 + 88));
    v13 = v7;
    v14 = *(a1 + 64);
    v15 = v8;
    v16 = *(a1 + 32);
    v10 = v8;
    v11 = v7;
    dispatch_async(v9, v12);

    objc_destroyWeak(&v17);
  }
}

void __59__PXStoryPersistableRecipeManager__updatePersistableRecipe__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _handlePersistableRecipe:*(a1 + 32) recipeAssetEdits:*(a1 + 40) error:*(a1 + 48) progress:*(a1 + 56)];
}

- (void)_invalidatePersistableRecipeForUserActionKind:(int64_t)a3
{
  v5 = [(PXStoryPersistableRecipeManager *)self model];
  [v5 performedUserActionKind:a3];

  v6 = [(PXStoryPersistableRecipeManager *)self updater];
  [v6 setNeedsUpdateOf:sel__updatePersistableRecipe];
}

- (void)_updatePersistencePermission
{
  v3 = [(PXStoryPersistableRecipeManager *)self model];
  -[PXStoryPersistableRecipeManager setPersistencePermission:](self, "setPersistencePermission:", [v3 persistencePermission]);
}

- (void)_invalidatePersistencePermission
{
  v2 = [(PXStoryPersistableRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updatePersistencePermission];
}

- (void)_updateHasUserExperiencedFirstPlaybackEver
{
  if ([(PXStoryPersistableRecipeManager *)self hasUserExperiencedPlayback])
  {
    if ([(PXStoryPersistableRecipeManager *)self isOriginalPersistableRecipeValid])
    {
      v3 = [(PXStoryPersistableRecipeManager *)self originalPersistableRecipe];

      if (!v3)
      {

        [(PXStoryPersistableRecipeManager *)self setHasUserExperiencedFirstPlaybackEver:1];
      }
    }
  }
}

- (void)_invalidateHasUserExperiencedFirstPlaybackEver
{
  v2 = [(PXStoryPersistableRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateHasUserExperiencedFirstPlaybackEver];
}

- (void)_updateHasUserExperiencedPlayback
{
  v3 = [(PXStoryPersistableRecipeManager *)self model];
  v4 = [v3 desiredPlayState];

  if (v4 == 1)
  {

    [(PXStoryPersistableRecipeManager *)self setHasUserExperiencedPlayback:1];
  }
}

- (void)_invalidateHasUserExperiencedPlayback
{
  v2 = [(PXStoryPersistableRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateHasUserExperiencedPlayback];
}

- (void)_updateIsReadyToProducePersistableRecipe
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(PXStoryPersistableRecipeManager *)self resourcesDataSourceManager];
  v4 = [v3 isDataSourceFinal];

  v5 = [(PXStoryPersistableRecipeManager *)self styleManager];
  v6 = [v5 currentStyleAttributes] & 3;

  v7 = [(PXStoryPersistableRecipeManager *)self isOriginalPersistableRecipeValid];
  v8 = PLStoryGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138413058;
    v11 = self;
    v12 = 1024;
    v13 = v4;
    v14 = 1024;
    v15 = v6 != 0;
    v16 = 1024;
    v17 = v7;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "%@ areResourcesFinal: %i isCurrentStyleFinal: %i isOriginalPersistableRecipeValid: %i", &v10, 0x1Eu);
  }

  if (v6)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  [(PXStoryPersistableRecipeManager *)self setIsReadyToProducePersistableRecipe:v9 & v7];
}

- (void)_invalidateIsReadyToProducePersistableRecipe
{
  v2 = [(PXStoryPersistableRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateIsReadyToProducePersistableRecipe];
}

- (void)_updateOriginalPersistableRecipe
{
  v6 = [(PXStoryPersistableRecipeManager *)self recipeManager];
  if ([v6 recipeAttributes])
  {
    [(PXStoryPersistableRecipeManager *)self setIsOriginalPersistableRecipeValid:1];
    v3 = [(PXStoryPersistableRecipeManager *)self recipeManager];
    v4 = [v3 recipe];
    v5 = [v4 sourcePersistableRecipe];
    [(PXStoryPersistableRecipeManager *)self setOriginalPersistableRecipe:v5];
  }
}

- (void)_invalidateOriginalPersistableRecipe
{
  v2 = [(PXStoryPersistableRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateOriginalPersistableRecipe];
}

- (id)_persistableRecipeWithOriginalPersistableRecipe:(id)a3 recipe:(id)a4 recipeAssetEdits:(id)a5 currentStyle:(id)a6 error:(id *)a7
{
  v11 = a3;
  v46 = a4;
  v12 = a5;
  v13 = a6;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__109697;
  v68 = __Block_byref_object_dispose__109698;
  v69 = 0;
  v14 = [MEMORY[0x1E69C08C8] createRecipe];
  v15 = [v14 mutableCopyWithZone:0];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  if (v11)
  {
    [v11 overallDurationInfo];
  }

  if (v12)
  {
    [v12 overallDurationInfo];
    if (v54)
    {
      [v12 overallDurationInfo];
      v61 = v56;
      v62 = v57;
      v63 = v58;
      v59 = v54;
      v60 = v55;
    }
  }

  v56 = v61;
  v57 = v62;
  v58 = v63;
  v54 = v59;
  v55 = v60;
  [v15 setOverallDurationInfo:&v54];
  v43 = a7;
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __126__PXStoryPersistableRecipeManager__persistableRecipeWithOriginalPersistableRecipe_recipe_recipeAssetEdits_currentStyle_error___block_invoke;
  aBlock[3] = &unk_1E7739970;
  v17 = v16;
  v51 = v17;
  v53 = &v64;
  v18 = v15;
  v52 = v18;
  v45 = _Block_copy(aBlock);
  v19 = [v13 originalColorGradeCategory];
  v42 = v12;
  v44 = [v13 customColorGradeKind];
  v20 = [v13 songResource];
  if (PXStorySongResourceIsNullResource(v20))
  {
    v21 = *MEMORY[0x1E69C0DC0];
    v22 = 1;
  }

  else
  {
    v23 = [v13 songResource];
    v24 = [v23 px_storyResourceSongAsset];

    if (v24)
    {
      v22 = v45[2](v45, v24, 2, 0);
      v25 = [v24 identifier];
      v21 = [v17 objectForKeyedSubscript:v25];

      if (!v21)
      {
        v32 = PXStoryErrorCreateWithCodeDebugFormat(1, @"recipe doesn't contain audio asset: %@", v26, v27, v28, v29, v30, v31, v24);
        v33 = v65[5];
        v65[5] = v32;

        v21 = 0;
        v22 = 0;
      }
    }

    else
    {
      v21 = 0;
      v22 = 1;
    }
  }

  v34 = [v20 px_storyResourceSongAsset];
  v35 = [v34 catalog];

  if (v35 != 4)
  {
    *&v54 = 0;
    *(&v54 + 1) = &v54;
    *&v55 = 0x2020000000;
    BYTE8(v55) = 0;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __126__PXStoryPersistableRecipeManager__persistableRecipeWithOriginalPersistableRecipe_recipe_recipeAssetEdits_currentStyle_error___block_invoke_2;
    v47[3] = &unk_1E7739998;
    v48 = v18;
    v49 = &v54;
    [v11 enumerateAssetsWithKind:2 usingBlock:v47];
    v36 = [v46 fallbackSongResource];
    v37 = [v36 px_storyResourceSongAsset];

    if ((*(*(&v54 + 1) + 24) & 1) == 0 && [v37 catalog] == 4)
    {
      v45[2](v45, v37, 1, 0);
    }

    _Block_object_dispose(&v54, 8);
  }

  v38 = [MEMORY[0x1E69C08D8] createStyleWithOriginalColorGradeCategory:v19 customColorGradeKind:v44 songAssetIdentifier:v21 isCustomized:{objc_msgSend(v13, "isCustomized")}];
  [v18 setCurrentStyle:v38];
  v39 = [v11 seedSongIdentifiersByCatalog];
  [v18 setSeedSongIdentifiersByCatalog:v39];

  if (v43)
  {
    *v43 = v65[5];
  }

  if (v22)
  {
    v40 = [v18 copyWithZone:0];
  }

  else
  {
    v40 = 0;
  }

  _Block_object_dispose(&v64, 8);

  return v40;
}

BOOL __126__PXStoryPersistableRecipeManager__persistableRecipeWithOriginalPersistableRecipe_recipe_recipeAssetEdits_currentStyle_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = [v7 identifier];
  v9 = [*(a1 + 32) objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = *(*(a1 + 48) + 8);
    obj = *(v11 + 40);
    v12 = [PFStoryRecipe_PXStoryExtension recipeAssetFromAudioAsset:v7 withCategory:a3 subcategory:a4 error:&obj];
    objc_storeStrong((v11 + 40), obj);
    v10 = v12 != 0;
    if (v12)
    {
      [*(a1 + 40) addAsset:v12];
      v13 = [v12 identifier];
      [*(a1 + 32) setObject:v13 forKeyedSubscript:v8];
    }
  }

  return v10;
}

void __126__PXStoryPersistableRecipeManager__persistableRecipeWithOriginalPersistableRecipe_recipe_recipeAssetEdits_currentStyle_error___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v5 = [v7 catalog];
  v6 = [v5 isEqual:*MEMORY[0x1E69C0DD0]];

  if (v6)
  {
    [*(a1 + 32) addAsset:v7];
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (void)setError:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (self->_error != v5 && ([(NSError *)v5 isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_error, a3);
    v7 = PLStoryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      error = self->_error;
      v9 = 138412546;
      v10 = self;
      v11 = 2112;
      v12 = error;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "%@ error: %@", &v9, 0x16u);
    }

    [(PXStoryPersistableRecipeManager *)self signalChange:16];
  }
}

- (void)setRecipeAssetEdits:(id)a3
{
  v8 = a3;
  v5 = self->_recipeAssetEdits;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PXStoryRecipeAssetEdits *)v5 isEqual:?];

    if (!v7)
    {
      objc_storeStrong(&self->_recipeAssetEdits, a3);
      [(PXStoryPersistableRecipeManager *)self signalChange:8];
    }
  }
}

- (void)setPersistableRecipe:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_persistableRecipe != v4 && ([(PFStoryRecipe *)v4 isEqual:?]& 1) == 0)
  {
    v6 = [(PFStoryRecipe *)v5 copyWithZone:0];
    persistableRecipe = self->_persistableRecipe;
    self->_persistableRecipe = v6;

    v8 = PLStoryGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = self->_persistableRecipe;
      v10 = 138412546;
      v11 = self;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "%@ persistableRecipe: %@", &v10, 0x16u);
    }

    [(PXStoryPersistableRecipeManager *)self signalChange:4];
  }
}

- (void)setIsProducingPersistableRecipe:(BOOL)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_isProducingPersistableRecipe != a3)
  {
    self->_isProducingPersistableRecipe = a3;
    v4 = PLStoryGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      isProducingPersistableRecipe = self->_isProducingPersistableRecipe;
      v6 = 138412546;
      v7 = self;
      v8 = 1024;
      v9 = isProducingPersistableRecipe;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "%@ isProducingPersistableRecipe: %i", &v6, 0x12u);
    }

    [(PXStoryPersistableRecipeManager *)self signalChange:2];
  }
}

- (void)setProgress:(id)a3
{
  v5 = a3;
  progress = self->_progress;
  if (progress != v5)
  {
    v7 = v5;
    [(NSProgress *)progress cancel];
    objc_storeStrong(&self->_progress, a3);
    [(PXStoryPersistableRecipeManager *)self setIsProducingPersistableRecipe:self->_progress != 0];
    v5 = v7;
  }
}

- (void)setPersistencePermission:(int64_t)a3
{
  if (self->_persistencePermission != a3)
  {
    self->_persistencePermission = a3;
    if (a3 == 1)
    {
      v5 = [(PXStoryPersistableRecipeManager *)self model];
      v4 = [v5 configuration];
      [(PXStoryPersistableRecipeManager *)self setIsPreparedForUserChanges:[PXStoryPersistableRecipeWriterFactory canPersistForConfiguration:v4]^ 1];
    }

    else
    {

      [(PXStoryPersistableRecipeManager *)self setIsPreparedForUserChanges:0];
    }
  }
}

- (void)setIsPreparedForUserChanges:(BOOL)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_isPreparedForUserChanges != a3)
  {
    self->_isPreparedForUserChanges = a3;
    v4 = PLStoryGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      isPreparedForUserChanges = self->_isPreparedForUserChanges;
      v8 = 138412546;
      v9 = self;
      v10 = 1024;
      v11 = isPreparedForUserChanges;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "%@ isPreparedForUserChanges: %i", &v8, 0x12u);
    }

    if (self->_isPreparedForUserChanges)
    {
      v6 = [(PXStoryPersistableRecipeManager *)self model];
      v7 = [v6 persistencePermission];

      if (v7 != 1)
      {
        PXAssertGetLog();
      }

      [(PXStoryPersistableRecipeManager *)self _invalidatePersistableRecipeForUserActionKind:1];
    }
  }
}

- (void)setHasUserExperiencedFirstPlaybackEver:(BOOL)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_hasUserExperiencedFirstPlaybackEver != a3)
  {
    self->_hasUserExperiencedFirstPlaybackEver = a3;
    v4 = PLStoryGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      hasUserExperiencedFirstPlaybackEver = self->_hasUserExperiencedFirstPlaybackEver;
      v6 = 138412546;
      v7 = self;
      v8 = 1024;
      v9 = hasUserExperiencedFirstPlaybackEver;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "%@ hasUserExperiencedFirstPlaybackEver: %i", &v6, 0x12u);
    }

    if (self->_hasUserExperiencedFirstPlaybackEver)
    {
      [(PXStoryPersistableRecipeManager *)self _invalidatePersistableRecipeForUserActionKind:1];
    }
  }
}

- (void)setHasUserExperiencedPlayback:(BOOL)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_hasUserExperiencedPlayback != a3)
  {
    self->_hasUserExperiencedPlayback = a3;
    v4 = PLStoryGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      hasUserExperiencedPlayback = self->_hasUserExperiencedPlayback;
      v6 = 138412546;
      v7 = self;
      v8 = 1024;
      v9 = hasUserExperiencedPlayback;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "%@ hasUserExperiencedPlayback: %i", &v6, 0x12u);
    }

    [(PXStoryPersistableRecipeManager *)self _invalidateHasUserExperiencedFirstPlaybackEver];
  }
}

- (void)setIsReadyToProducePersistableRecipe:(BOOL)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_isReadyToProducePersistableRecipe != a3)
  {
    self->_isReadyToProducePersistableRecipe = a3;
    v4 = PLStoryGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      isReadyToProducePersistableRecipe = self->_isReadyToProducePersistableRecipe;
      v6 = 138412546;
      v7 = self;
      v8 = 1024;
      v9 = isReadyToProducePersistableRecipe;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "%@ isReadyToProducePersistableRecipe: %i", &v6, 0x12u);
    }

    [(PXStoryPersistableRecipeManager *)self signalChange:1];
    [(PXStoryPersistableRecipeManager *)self _invalidatePersistableRecipeForUserActionKind:1];
  }
}

- (void)setIsOriginalPersistableRecipeValid:(BOOL)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_isOriginalPersistableRecipeValid != a3)
  {
    self->_isOriginalPersistableRecipeValid = a3;
    v4 = PLStoryGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      isOriginalPersistableRecipeValid = self->_isOriginalPersistableRecipeValid;
      v6 = 138412546;
      v7 = self;
      v8 = 1024;
      v9 = isOriginalPersistableRecipeValid;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "%@ isOriginalPersistableRecipeValid: %i", &v6, 0x12u);
    }

    [(PXStoryPersistableRecipeManager *)self _invalidateHasUserExperiencedFirstPlaybackEver];
    [(PXStoryPersistableRecipeManager *)self _invalidateIsReadyToProducePersistableRecipe];
  }
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXStoryPersistableRecipeManager;
  [(PXStoryPersistableRecipeManager *)&v4 didPerformChanges];
  v3 = [(PXStoryPersistableRecipeManager *)self updater];
  [v3 updateIfNeeded];
}

- (void)performChanges:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryPersistableRecipeManager *)self storyQueue];
  dispatch_assert_queue_V2(v5);

  v6.receiver = self;
  v6.super_class = PXStoryPersistableRecipeManager;
  [(PXStoryPersistableRecipeManager *)&v6 performChanges:v4];
}

- (void)dealloc
{
  [(NSProgress *)self->_progress cancel];
  v3.receiver = self;
  v3.super_class = PXStoryPersistableRecipeManager;
  [(PXStoryPersistableRecipeManager *)&v3 dealloc];
}

- (PXStoryPersistableRecipeManager)initWithModel:(id)a3 styleManager:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v46.receiver = self;
  v46.super_class = PXStoryPersistableRecipeManager;
  v10 = [(PXStoryPersistableRecipeManager *)&v46 init];
  v11 = v10;
  if (v10)
  {
    v43 = a2;
    objc_storeStrong(&v10->_model, a3);
    [(PXStoryModel *)v11->_model registerChangeObserver:v11 context:ModelObservationContext_109675];
    v12 = [v8 recipeManager];
    recipeManager = v11->_recipeManager;
    v11->_recipeManager = v12;

    [(PXStoryRecipeManager *)v11->_recipeManager registerChangeObserver:v11 context:RecipeManagerObservationContext_109676];
    v14 = [v8 resourcesDataSourceManager];
    resourcesDataSourceManager = v11->_resourcesDataSourceManager;
    v11->_resourcesDataSourceManager = v14;

    [(PXStoryResourcesDataSourceManager *)v11->_resourcesDataSourceManager registerChangeObserver:v11 context:ResourcesDataSourceManagerObservationContext];
    objc_storeStrong(&v11->_styleManager, a4);
    [(PXStoryStyleManager *)v11->_styleManager registerChangeObserver:v11 context:StyleManagerObservationContext];
    v16 = [v8 configuration];
    v17 = [v16 errorReporter];
    errorReporter = v11->_errorReporter;
    v11->_errorReporter = v17;

    v19 = [v16 storyQueue];
    storyQueue = v11->_storyQueue;
    v11->_storyQueue = v19;

    v21 = v11->_storyQueue;
    v22 = [(PXStoryRecipeManager *)v11->_recipeManager storyQueue];

    if (v21 != v22)
    {
      v40 = [MEMORY[0x1E696AAA8] currentHandler];
      [v40 handleFailureInMethod:v43 object:v11 file:@"PXStoryPersistableRecipeManager.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"_storyQueue == _recipeManager.storyQueue"}];
    }

    v23 = v11->_storyQueue;
    v24 = [(PXStoryResourcesDataSourceManager *)v11->_resourcesDataSourceManager storyQueue];

    if (v23 != v24)
    {
      v41 = [MEMORY[0x1E696AAA8] currentHandler];
      [v41 handleFailureInMethod:v43 object:v11 file:@"PXStoryPersistableRecipeManager.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"_storyQueue == _resourcesDataSourceManager.storyQueue"}];
    }

    v25 = v11->_storyQueue;
    v26 = [(PXStoryStyleManager *)v11->_styleManager storyQueue];

    if (v25 != v26)
    {
      v42 = [MEMORY[0x1E696AAA8] currentHandler];
      [v42 handleFailureInMethod:v43 object:v11 file:@"PXStoryPersistableRecipeManager.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"_storyQueue == _styleManager.storyQueue"}];
    }

    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = [v28 UTF8String];
    v30 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v31 = dispatch_queue_attr_make_with_qos_class(v30, QOS_CLASS_USER_INITIATED, 0);
    v32 = dispatch_queue_create(v29, v31);
    workQueue = v11->_workQueue;
    v11->_workQueue = v32;

    v34 = [[off_1E7721940 alloc] initWithTarget:v11 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v11->_updater;
    v11->_updater = v34;

    [(PXUpdater *)v11->_updater addUpdateSelector:sel__updateOriginalPersistableRecipe];
    [(PXUpdater *)v11->_updater addUpdateSelector:sel__updateIsReadyToProducePersistableRecipe];
    [(PXUpdater *)v11->_updater addUpdateSelector:sel__updateHasUserExperiencedPlayback];
    [(PXUpdater *)v11->_updater addUpdateSelector:sel__updateHasUserExperiencedFirstPlaybackEver];
    [(PXUpdater *)v11->_updater addUpdateSelector:sel__updatePersistencePermission];
    [(PXUpdater *)v11->_updater addUpdateSelector:sel__updatePersistableRecipe];
    v36 = PLStoryGetLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v37 = v11->_recipeManager;
      v38 = v11->_resourcesDataSourceManager;
      *buf = 138413058;
      v48 = v11;
      v49 = 2112;
      v50 = v37;
      v51 = 2112;
      v52 = v38;
      v53 = 2112;
      v54 = v9;
      _os_log_impl(&dword_1A3C1C000, v36, OS_LOG_TYPE_DEBUG, "%@ initialized with recipeManager: %@ resourcesDataSourceManager: %@ styleManager: %@", buf, 0x2Au);
    }

    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __62__PXStoryPersistableRecipeManager_initWithModel_styleManager___block_invoke;
    v44[3] = &unk_1E774C5F8;
    v45 = v11;
    [(PXStoryPersistableRecipeManager *)v45 performChanges:v44];
  }

  return v11;
}

uint64_t __62__PXStoryPersistableRecipeManager_initWithModel_styleManager___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateOriginalPersistableRecipe];
  [*(a1 + 32) _invalidateIsReadyToProducePersistableRecipe];
  [*(a1 + 32) _invalidateHasUserExperiencedPlayback];
  v2 = *(a1 + 32);

  return [v2 _invalidatePersistencePermission];
}

- (PXStoryPersistableRecipeManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryPersistableRecipeManager.m" lineNumber:68 description:{@"%s is not available as initializer", "-[PXStoryPersistableRecipeManager init]"}];

  abort();
}

@end