@interface PXPhotoKitNotThisPersonActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
+ (id)_assetsForActionManager:(id)a3;
+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitNotThisPersonActionPerformer

+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4
{
  v5 = a4;
  v6 = [a1 _assetsForActionManager:v5];
  v7 = [v6 count];
  v8 = [v5 person];

  v9 = [v8 px_localizedName];
  if ([v9 length])
  {
    if (v7 == 1)
    {
      v10 = @"PXPeopleAssetNotThisNamedPersonFormat";
    }

    else
    {
      v10 = @"PXPeopleAssetsNotThisNamedPersonFormat";
    }

    PXLocalizedStringForPersonOrPetAndVisibility(v8, 0, v10);
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  if (v7 == 1)
  {
    v11 = @"PXPeopleAssetNotThisUnnamedPerson";
  }

  else
  {
    v11 = @"PXPeopleAssetsNotThisUnnamedPerson";
  }

  v12 = PXLocalizedStringForPersonOrPetAndVisibility(v8, 0, v11);

  return v12;
}

+ (id)_assetsForActionManager:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 objectReference];
  if (v4)
  {
    v5 = [v3 objectReference];

    v9[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v5 = [v3 selectionManager];

    v7 = [v5 selectionSnapshot];
    v6 = [v7 allItemsEnumerator];
  }

  return v6;
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  if (a3 && a5)
  {
    return [a5 px_fetchCanHaveFacesRejectedWithRigor:{1, a4}];
  }

  else
  {
    return 0;
  }
}

- (void)performUserInteractionTask
{
  v3 = [(PXPhotoKitAssetActionPerformer *)self assets];
  if ([v3 count] == 1)
  {
    objc_initWeak(&location, self);
    v4 = [(PXPhotoKitAssetActionPerformer *)self person];
    v5 = [v3 firstObject];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __68__PXPhotoKitNotThisPersonActionPerformer_performUserInteractionTask__block_invoke;
    v11 = &unk_1E773A930;
    objc_copyWeak(&v12, &location);
    v6 = [PXPeopleUtilities alertControllerForUntaggingPerson:v4 asset:v5 completion:&v8];

    [v6 setModalPresentationStyle:{7, v8, v9, v10, v11}];
    v7 = [(PXActionPerformer *)self presentationEnvironment];
    [v7 presentViewController:v6 animated:1 completionHandler:0];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }
}

uint64_t __68__PXPhotoKitNotThisPersonActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained presentationEnvironment];
    [v5 presentViewController:v3 animated:1 completionHandler:0];
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 setDidPresentNamingViewController:1];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 completeUserInteractionTaskWithSuccess:1 error:0];

  v8 = MEMORY[0x1E6991F28];
  v9 = MEMORY[0x1E695E0F8];

  return [v8 sendEvent:@"com.apple.photos.CPAnalytics.people.tilingView.untagTapped" withPayload:v9];
}

- (void)performBackgroundTask
{
  if ([(PXPhotoKitNotThisPersonActionPerformer *)self didPresentNamingViewController])
  {

    [(PXActionPerformer *)self completeBackgroundTaskWithSuccess:1 error:0];
  }

  else
  {
    [(PXPhotoKitAssetActionPerformer *)self instantlyExcludeAssetsFromDataSource];
    v3 = [(PXAssetActionPerformer *)self selectionSnapshot];
    v4 = [v3 selectedIndexPaths];

    v5 = [(PXPhotoKitAssetActionPerformer *)self photosDataSourceSnapshot];
    v6 = [v5 fetchResultWithAssetsAtIndexPaths:v4];

    v7 = [(PXPhotoKitAssetActionPerformer *)self person];
    v8 = [[PXNotThisPersonAction alloc] initWithPerson:v7 assets:v6];
    v9 = [(PXActionPerformer *)self undoManager];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __63__PXPhotoKitNotThisPersonActionPerformer_performBackgroundTask__block_invoke;
    v11[3] = &unk_1E774B730;
    v12 = v7;
    v13 = self;
    v10 = v7;
    [(PXAction *)v8 executeWithUndoManager:v9 completionHandler:v11];
  }
}

void __63__PXPhotoKitNotThisPersonActionPerformer_performBackgroundTask__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) localIdentifier];
      v12 = 138412290;
      v13 = v7;
      v8 = "Not This Person succeeded for person: %@.";
      v9 = v6;
      v10 = OS_LOG_TYPE_INFO;
      v11 = 12;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v9, v10, v8, &v12, v11);
    }
  }

  else
  {
    [*(a1 + 40) stopExcludingAssetsFromDataSource];
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) localIdentifier];
      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v5;
      v8 = "Not This Person failed for person: %@ error: %@.";
      v9 = v6;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 22;
      goto LABEL_6;
    }
  }

  [*(a1 + 40) completeBackgroundTaskWithSuccess:a2 error:v5];
}

@end