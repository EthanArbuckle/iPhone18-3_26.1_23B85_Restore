@interface PXCuratedLibraryShareActionPerformer
- (BOOL)canPerformWithActivityItems:(id)a3 forActivity:(id)a4;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibraryShareActionPerformer

- (void)performUserInteractionTask
{
  v41[3] = *MEMORY[0x1E69E9840];
  v4 = [(PXCuratedLibraryAssetCollectionActionPerformer *)self assetCollectionReference];
  v5 = [v4 keyAssetReference];

  v6 = [v5 asset];
  v7 = [(PXCuratedLibraryActionPerformer *)self viewModel];
  v8 = [v7 assetsDataSourceManager];
  v9 = [v8 dataSourceForZoomLevel:3];

  if (!v6)
  {
    if (![v9 containsAnyItems])
    {
      goto LABEL_9;
    }

    v38 = 0u;
    v39 = 0u;
    v10 = [(PXCuratedLibraryAssetCollectionActionPerformer *)self assetCollectionReference];
    if (v9)
    {
      [v9 indexPathForAssetCollectionReference:v10];
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
    }

    if (v38 == *off_1E7721F68 || [v9 numberOfItemsInSection:*(&v38 + 1)] < 1)
    {
LABEL_9:
      v6 = 0;
    }

    else
    {
      v36[0] = [v9 identifier];
      v36[1] = *(&v38 + 1);
      v37 = xmmword_1A5380D10;
      v6 = [v9 assetAtItemIndexPath:v36];
    }
  }

  v11 = [PXActivitySharingContext alloc];
  v12 = [(PXCuratedLibraryAssetCollectionActionPerformer *)self assetCollectionReference];
  v13 = [v12 assetCollection];
  v14 = [(PXActivitySharingContext *)v11 initWithAssetCollection:v13 assetsDataSource:v9];

  [(PXActivitySharingContext *)v14 setKeyAsset:v6];
  v15 = [(PXCuratedLibraryActionPerformer *)self viewModel];
  v16 = [v15 zoomLevel];
  if ((v16 - 1) >= 3)
  {
    v17 = 0;
  }

  else
  {
    v17 = 14 - v16;
  }

  [(PXActivitySharingContext *)v14 setSourceOrigin:v17];

  v41[0] = @"com.apple.Photos.activity.SlideShow";
  v41[1] = @"PUActivityTypeEditDateTime";
  v41[2] = @"PUActivityTypeEditLocation";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];
  [(PXActivitySharingContext *)v14 setExcludedActivityTypes:v18];

  v19 = [(PXActivitySharingContext *)v14 excludedActivityTypes];
  v40[0] = @"PUActivityTypeHide";
  v40[1] = @"PUActivityTypeDuplicate";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v21 = [v19 arrayByAddingObjectsFromArray:v20];
  [(PXActivitySharingContext *)v14 setExcludedActivityTypes:v21];

  v22 = objc_alloc_init(MEMORY[0x1E69DD258]);
  v23 = [v22 px_sharePresentation];

  if (!v23)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetCollectionActionPerformer.m" lineNumber:400 description:{@"Invalid parameter not satisfying: %@", @"sharePresentation"}];
  }

  v24 = [v23 createActivitySharingControllerWithContext:v14];
  [v24 selectInitialAssets];
  if (!v24)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetCollectionActionPerformer.m" lineNumber:403 description:{@"Invalid parameter not satisfying: %@", @"activitySharingController"}];
  }

  v25 = [v24 activityViewController];
  if (!v25)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    [v33 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetCollectionActionPerformer.m" lineNumber:404 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"activitySharingController.activityViewController", v30}];
LABEL_22:

    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    v31 = objc_opt_class();
    v30 = NSStringFromClass(v31);
    v32 = [v25 px_descriptionForAssertionMessage];
    [v33 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetCollectionActionPerformer.m" lineNumber:404 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"activitySharingController.activityViewController", v30, v32}];

    goto LABEL_22;
  }

LABEL_19:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PXCuratedLibraryShareActionPerformer_performUserInteractionTask__block_invoke;
  block[3] = &unk_1E774C620;
  block[4] = self;
  v35 = v25;
  v26 = v25;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __66__PXCuratedLibraryShareActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1)
{
  [*(a1 + 32) presentViewController:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 completeUserInteractionTaskWithSuccess:1 error:0];
}

- (BOOL)canPerformWithActivityItems:(id)a3 forActivity:(id)a4
{
  v6 = [a4 activityType];
  v7 = [(PXCuratedLibraryShareActionPerformer *)self activityType];
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_5;
  }

  v9 = [v6 isEqualToString:v7];

  if ((v9 & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetCollectionActionPerformer.m" lineNumber:364 description:{@"Invalid parameter not satisfying: %@", @"PXStringEqualToString(activity.activityType, self.activityType)"}];
LABEL_5:
  }

  return 1;
}

@end