@interface PXPhotoKitEditDateTimeActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
- (void)_presentDateTimeEditViewControllerWithAssets:(id)a3;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitEditDateTimeActionPerformer

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  v6 = a3;
  if ([v6 canPerformEditOperation:3] && !objc_msgSend(v6, "isTrashed"))
  {
    LOBYTE(v7) = 1;
  }

  else if ([v6 px_isUnsavedSyndicatedAsset])
  {
    v7 = [v6 px_isSyndicationPhotoLibraryAsset] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)performUserInteractionTask
{
  objc_initWeak(&location, self);
  v3 = [(PXPhotoKitAssetActionPerformer *)self assets];
  v4 = [(PXActionPerformer *)self presentationEnvironment];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__PXPhotoKitEditDateTimeActionPerformer_performUserInteractionTask__block_invoke;
  v5[3] = &unk_1E77482C8;
  objc_copyWeak(&v6, &location);
  PXPromptToSaveUnsavedSyndicatedAssetsIfNecessary(v3, v4, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __67__PXPhotoKitEditDateTimeActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 count];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (v7)
  {
    [WeakRetained _presentDateTimeEditViewControllerWithAssets:v10];
  }

  else
  {
    [WeakRetained completeUserInteractionTaskWithSuccess:0 error:v6];
  }
}

- (void)_presentDateTimeEditViewControllerWithAssets:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssets:v4 title:0];
  v6 = MEMORY[0x1E6978830];
  v7 = [v4 firstObject];
  v8 = [v6 fetchOptionsWithPhotoLibrary:0 orObject:v7];

  v19[0] = *MEMORY[0x1E6978CA8];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v8 setFetchPropertySets:v9];

  v10 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v5 options:v8];
  objc_initWeak(&location, self);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __86__PXPhotoKitEditDateTimeActionPerformer__presentDateTimeEditViewControllerWithAssets___block_invoke;
  v16 = &unk_1E7747EB0;
  objc_copyWeak(&v17, &location);
  v11 = [_TtC12PhotosUICore36PhotosDetailsDateTimeEditViewFactory dateTimeViewControllerWithAssets:v10 completion:&v13];
  if (![(PXActionPerformer *)self presentViewController:v11, v13, v14, v15, v16])
  {
    v12 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Failed to present Edit Date Time view controller"];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v12];
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __86__PXPhotoKitEditDateTimeActionPerformer__presentDateTimeEditViewControllerWithAssets___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completeUserInteractionTaskWithSuccess:a2 error:0];
}

@end