@interface PXPhotoKitNotThisPersonActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
+ (id)_assetsForActionManager:(id)manager;
+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitNotThisPersonActionPerformer

+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager
{
  managerCopy = manager;
  v6 = [self _assetsForActionManager:managerCopy];
  v7 = [v6 count];
  person = [managerCopy person];

  px_localizedName = [person px_localizedName];
  if ([px_localizedName length])
  {
    if (v7 == 1)
    {
      v10 = @"PXPeopleAssetNotThisNamedPersonFormat";
    }

    else
    {
      v10 = @"PXPeopleAssetsNotThisNamedPersonFormat";
    }

    PXLocalizedStringForPersonOrPetAndVisibility(person, 0, v10);
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

  v12 = PXLocalizedStringForPersonOrPetAndVisibility(person, 0, v11);

  return v12;
}

+ (id)_assetsForActionManager:(id)manager
{
  v9[1] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  objectReference = [managerCopy objectReference];
  if (objectReference)
  {
    objectReference2 = [managerCopy objectReference];

    v9[0] = objectReference2;
    allItemsEnumerator = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    objectReference2 = [managerCopy selectionManager];

    selectionSnapshot = [objectReference2 selectionSnapshot];
    allItemsEnumerator = [selectionSnapshot allItemsEnumerator];
  }

  return allItemsEnumerator;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  if (asset && person)
  {
    return [person px_fetchCanHaveFacesRejectedWithRigor:{1, collection}];
  }

  else
  {
    return 0;
  }
}

- (void)performUserInteractionTask
{
  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  if ([assets count] == 1)
  {
    objc_initWeak(&location, self);
    person = [(PXPhotoKitAssetActionPerformer *)self person];
    firstObject = [assets firstObject];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __68__PXPhotoKitNotThisPersonActionPerformer_performUserInteractionTask__block_invoke;
    v11 = &unk_1E773A930;
    objc_copyWeak(&v12, &location);
    v6 = [PXPeopleUtilities alertControllerForUntaggingPerson:person asset:firstObject completion:&v8];

    [v6 setModalPresentationStyle:{7, v8, v9, v10, v11}];
    presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
    [presentationEnvironment presentViewController:v6 animated:1 completionHandler:0];

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
    selectionSnapshot = [(PXAssetActionPerformer *)self selectionSnapshot];
    selectedIndexPaths = [selectionSnapshot selectedIndexPaths];

    photosDataSourceSnapshot = [(PXPhotoKitAssetActionPerformer *)self photosDataSourceSnapshot];
    v6 = [photosDataSourceSnapshot fetchResultWithAssetsAtIndexPaths:selectedIndexPaths];

    person = [(PXPhotoKitAssetActionPerformer *)self person];
    v8 = [[PXNotThisPersonAction alloc] initWithPerson:person assets:v6];
    undoManager = [(PXActionPerformer *)self undoManager];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __63__PXPhotoKitNotThisPersonActionPerformer_performBackgroundTask__block_invoke;
    v11[3] = &unk_1E774B730;
    v12 = person;
    selfCopy = self;
    v10 = person;
    [(PXAction *)v8 executeWithUndoManager:undoManager completionHandler:v11];
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