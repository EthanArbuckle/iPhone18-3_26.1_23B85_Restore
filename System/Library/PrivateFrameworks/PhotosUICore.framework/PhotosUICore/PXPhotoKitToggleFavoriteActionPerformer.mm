@interface PXPhotoKitToggleFavoriteActionPerformer
+ (BOOL)toggledValueForActionManager:(id)a3;
+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4;
+ (id)systemImageNameForActionManager:(id)a3;
- (void)_logEventForAssets:(id)a3 favorite:(BOOL)a4;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitToggleFavoriteActionPerformer

+ (id)systemImageNameForActionManager:(id)a3
{
  if ([a1 toggledValueForActionManager:a3])
  {
    v3 = @"heart";
  }

  else
  {
    v3 = @"heart.slash";
  }

  return v3;
}

+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4
{
  v4 = +[PXFavoriteAssetsAction localizedStringKeyForState:](PXFavoriteAssetsAction, "localizedStringKeyForState:", [a1 toggledValueForActionManager:a4]);
  v5 = PXLocalizedStringFromTable(v4, @"PhotosUICore");

  return v5;
}

+ (BOOL)toggledValueForActionManager:(id)a3
{
  v3 = [a3 effectiveSelectionSnapshot];
  v4 = [v3 allItemsEnumerator];

  LOBYTE(v3) = [PXFavoriteAssetsAction toggledValueForAssets:v4];
  return v3;
}

- (void)_logEventForAssets:(id)a3 favorite:(BOOL)a4
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = MEMORY[0x1E6991C70];
    if (!a4)
    {
      v5 = MEMORY[0x1E6991C78];
    }

    v6 = *v5;
    v7 = MEMORY[0x1E6991F28];
    v8 = *MEMORY[0x1E6991E18];
    v16[0] = a3;
    v9 = *MEMORY[0x1E6991E20];
    v15[0] = v8;
    v15[1] = v9;
    v10 = v6;
    v11 = a3;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v16[1] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    [v7 sendEvent:v10 withPayload:v14];
  }
}

- (void)performBackgroundTask
{
  v3 = self->_assetsToProcess;
  v4 = [PXFavoriteAssetsAction toggledValueForAssets:self->_assetsToProcess];
  if (!v4 && [(PXActionPerformer *)self prefersAssetInclusionAfterRemoval])
  {
    [(PXPhotoKitAssetActionPerformer *)self forceIncludeAssetsInDataSource];
  }

  v5 = [[PXFavoriteAssetsAction alloc] initWithAssets:v3 favorite:v4];
  v6 = [(PXActionPerformer *)self undoManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__PXPhotoKitToggleFavoriteActionPerformer_performBackgroundTask__block_invoke;
  v8[3] = &unk_1E7742910;
  v8[4] = self;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  [(PXAction *)v5 executeWithUndoManager:v6 completionHandler:v8];
}

void __64__PXPhotoKitToggleFavoriteActionPerformer_performBackgroundTask__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) _logEventForAssets:*(a1 + 40) favorite:*(a1 + 48)];
  }

  [*(a1 + 32) completeBackgroundTaskWithSuccess:a2 error:v5];
}

- (void)performUserInteractionTask
{
  objc_initWeak(&location, self);
  v3 = [(PXPhotoKitAssetActionPerformer *)self assets];
  v4 = [(PXActionPerformer *)self presentationEnvironment];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__PXPhotoKitToggleFavoriteActionPerformer_performUserInteractionTask__block_invoke;
  v5[3] = &unk_1E77428E8;
  v5[4] = self;
  objc_copyWeak(&v6, &location);
  PXPromptToSaveUnsavedSyndicatedAssetsIfNecessary(v3, v4, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __69__PXPhotoKitToggleFavoriteActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v12 = a3;
  v7 = a4;
  if ([v12 count])
  {
    objc_storeStrong((*(a1 + 32) + 192), a3);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = WeakRetained;
    v10 = 1;
    v11 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = WeakRetained;
    v10 = 0;
    v11 = v7;
  }

  [WeakRetained completeUserInteractionTaskWithSuccess:v10 error:v11];
}

@end