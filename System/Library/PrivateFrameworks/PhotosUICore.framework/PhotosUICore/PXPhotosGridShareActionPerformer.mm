@interface PXPhotosGridShareActionPerformer
+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridShareActionPerformer

+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model
{
  modelCopy = model;
  if ([modelCopy allowsShareAllAction])
  {
    currentDataSource = [modelCopy currentDataSource];
    containsAnyItems = [currentDataSource containsAnyItems];
  }

  else
  {
    containsAnyItems = 0;
  }

  return containsAnyItems;
}

- (void)performUserInteractionTask
{
  v28[3] = *MEMORY[0x1E69E9840];
  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  currentDataSource = [viewModel currentDataSource];

  containerCollection = [currentDataSource containerCollection];
  canContainAssets = [containerCollection canContainAssets];

  if ((canContainAssets & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridShareActionPerformer.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"dataSource.containerCollection.canContainAssets"}];
  }

  containerCollection2 = [currentDataSource containerCollection];
  hostViewController = [(PXActionPerformer *)self hostViewController];
  v10 = [[PXActivitySharingContext alloc] initWithAssetCollection:containerCollection2 assetsDataSource:currentDataSource];
  keyAsset = [currentDataSource keyAsset];
  [(PXActivitySharingContext *)v10 setKeyAsset:keyAsset];

  [(PXActivitySharingContext *)v10 setSourceOrigin:3];
  v28[0] = @"com.apple.Photos.activity.SlideShow";
  v28[1] = @"PUActivityTypeEditDateTime";
  v28[2] = @"PUActivityTypeEditLocation";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
  [(PXActivitySharingContext *)v10 setExcludedActivityTypes:v12];

  excludedActivityTypes = [(PXActivitySharingContext *)v10 excludedActivityTypes];
  v27[0] = @"PUActivityTypeHide";
  v27[1] = @"PUActivityTypeDuplicate";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v15 = [excludedActivityTypes arrayByAddingObjectsFromArray:v14];
  [(PXActivitySharingContext *)v10 setExcludedActivityTypes:v15];

  px_sharePresentation = [hostViewController px_sharePresentation];
  if (!px_sharePresentation)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotosGridShareActionPerformer.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"sharePresentation"}];
  }

  v17 = [px_sharePresentation createActivitySharingControllerWithContext:v10];
  [v17 selectInitialAssets];
  if (!v17)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXPhotosGridShareActionPerformer.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"activitySharingController"}];
  }

  activityViewController = [v17 activityViewController];
  if (!activityViewController)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PXPhotosGridShareActionPerformer.m" lineNumber:75 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"activitySharingController.activityViewController", v23}];
LABEL_12:

    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = objc_opt_class();
    v23 = NSStringFromClass(v24);
    px_descriptionForAssertionMessage = [activityViewController px_descriptionForAssertionMessage];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PXPhotosGridShareActionPerformer.m" lineNumber:75 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"activitySharingController.activityViewController", v23, px_descriptionForAssertionMessage}];

    goto LABEL_12;
  }

LABEL_9:
  [hostViewController presentViewController:activityViewController animated:1 completion:0];
  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
}

@end