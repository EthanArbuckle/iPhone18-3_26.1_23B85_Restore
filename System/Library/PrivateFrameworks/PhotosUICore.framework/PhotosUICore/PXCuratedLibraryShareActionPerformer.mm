@interface PXCuratedLibraryShareActionPerformer
- (BOOL)canPerformWithActivityItems:(id)items forActivity:(id)activity;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibraryShareActionPerformer

- (void)performUserInteractionTask
{
  v41[3] = *MEMORY[0x1E69E9840];
  assetCollectionReference = [(PXCuratedLibraryAssetCollectionActionPerformer *)self assetCollectionReference];
  keyAssetReference = [assetCollectionReference keyAssetReference];

  asset = [keyAssetReference asset];
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  assetsDataSourceManager = [viewModel assetsDataSourceManager];
  v9 = [assetsDataSourceManager dataSourceForZoomLevel:3];

  if (!asset)
  {
    if (![v9 containsAnyItems])
    {
      goto LABEL_9;
    }

    v38 = 0u;
    v39 = 0u;
    assetCollectionReference2 = [(PXCuratedLibraryAssetCollectionActionPerformer *)self assetCollectionReference];
    if (v9)
    {
      [v9 indexPathForAssetCollectionReference:assetCollectionReference2];
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
    }

    if (v38 == *off_1E7721F68 || [v9 numberOfItemsInSection:*(&v38 + 1)] < 1)
    {
LABEL_9:
      asset = 0;
    }

    else
    {
      v36[0] = [v9 identifier];
      v36[1] = *(&v38 + 1);
      v37 = xmmword_1A5380D10;
      asset = [v9 assetAtItemIndexPath:v36];
    }
  }

  v11 = [PXActivitySharingContext alloc];
  assetCollectionReference3 = [(PXCuratedLibraryAssetCollectionActionPerformer *)self assetCollectionReference];
  assetCollection = [assetCollectionReference3 assetCollection];
  v14 = [(PXActivitySharingContext *)v11 initWithAssetCollection:assetCollection assetsDataSource:v9];

  [(PXActivitySharingContext *)v14 setKeyAsset:asset];
  viewModel2 = [(PXCuratedLibraryActionPerformer *)self viewModel];
  zoomLevel = [viewModel2 zoomLevel];
  if ((zoomLevel - 1) >= 3)
  {
    v17 = 0;
  }

  else
  {
    v17 = 14 - zoomLevel;
  }

  [(PXActivitySharingContext *)v14 setSourceOrigin:v17];

  v41[0] = @"com.apple.Photos.activity.SlideShow";
  v41[1] = @"PUActivityTypeEditDateTime";
  v41[2] = @"PUActivityTypeEditLocation";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];
  [(PXActivitySharingContext *)v14 setExcludedActivityTypes:v18];

  excludedActivityTypes = [(PXActivitySharingContext *)v14 excludedActivityTypes];
  v40[0] = @"PUActivityTypeHide";
  v40[1] = @"PUActivityTypeDuplicate";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v21 = [excludedActivityTypes arrayByAddingObjectsFromArray:v20];
  [(PXActivitySharingContext *)v14 setExcludedActivityTypes:v21];

  v22 = objc_alloc_init(MEMORY[0x1E69DD258]);
  px_sharePresentation = [v22 px_sharePresentation];

  if (!px_sharePresentation)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetCollectionActionPerformer.m" lineNumber:400 description:{@"Invalid parameter not satisfying: %@", @"sharePresentation"}];
  }

  v24 = [px_sharePresentation createActivitySharingControllerWithContext:v14];
  [v24 selectInitialAssets];
  if (!v24)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetCollectionActionPerformer.m" lineNumber:403 description:{@"Invalid parameter not satisfying: %@", @"activitySharingController"}];
  }

  activityViewController = [v24 activityViewController];
  if (!activityViewController)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetCollectionActionPerformer.m" lineNumber:404 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"activitySharingController.activityViewController", v30}];
LABEL_22:

    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v31 = objc_opt_class();
    v30 = NSStringFromClass(v31);
    px_descriptionForAssertionMessage = [activityViewController px_descriptionForAssertionMessage];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetCollectionActionPerformer.m" lineNumber:404 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"activitySharingController.activityViewController", v30, px_descriptionForAssertionMessage}];

    goto LABEL_22;
  }

LABEL_19:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PXCuratedLibraryShareActionPerformer_performUserInteractionTask__block_invoke;
  block[3] = &unk_1E774C620;
  block[4] = self;
  v35 = activityViewController;
  v26 = activityViewController;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __66__PXCuratedLibraryShareActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1)
{
  [*(a1 + 32) presentViewController:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 completeUserInteractionTaskWithSuccess:1 error:0];
}

- (BOOL)canPerformWithActivityItems:(id)items forActivity:(id)activity
{
  activityType = [activity activityType];
  activityType2 = [(PXCuratedLibraryShareActionPerformer *)self activityType];
  v8 = activityType2;
  if (activityType == activityType2)
  {

    goto LABEL_5;
  }

  v9 = [activityType isEqualToString:activityType2];

  if ((v9 & 1) == 0)
  {
    activityType = [MEMORY[0x1E696AAA8] currentHandler];
    [activityType handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetCollectionActionPerformer.m" lineNumber:364 description:{@"Invalid parameter not satisfying: %@", @"PXStringEqualToString(activity.activityType, self.activityType)"}];
LABEL_5:
  }

  return 1;
}

@end