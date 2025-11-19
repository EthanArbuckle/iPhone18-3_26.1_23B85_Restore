@interface PXPhotosGridShareActionPerformer
+ (BOOL)canPerformActionType:(id)a3 withViewModel:(id)a4;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridShareActionPerformer

+ (BOOL)canPerformActionType:(id)a3 withViewModel:(id)a4
{
  v4 = a4;
  if ([v4 allowsShareAllAction])
  {
    v5 = [v4 currentDataSource];
    v6 = [v5 containsAnyItems];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)performUserInteractionTask
{
  v28[3] = *MEMORY[0x1E69E9840];
  v4 = [(PXPhotosGridActionPerformer *)self viewModel];
  v5 = [v4 currentDataSource];

  v6 = [v5 containerCollection];
  v7 = [v6 canContainAssets];

  if ((v7 & 1) == 0)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PXPhotosGridShareActionPerformer.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"dataSource.containerCollection.canContainAssets"}];
  }

  v8 = [v5 containerCollection];
  v9 = [(PXActionPerformer *)self hostViewController];
  v10 = [[PXActivitySharingContext alloc] initWithAssetCollection:v8 assetsDataSource:v5];
  v11 = [v5 keyAsset];
  [(PXActivitySharingContext *)v10 setKeyAsset:v11];

  [(PXActivitySharingContext *)v10 setSourceOrigin:3];
  v28[0] = @"com.apple.Photos.activity.SlideShow";
  v28[1] = @"PUActivityTypeEditDateTime";
  v28[2] = @"PUActivityTypeEditLocation";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
  [(PXActivitySharingContext *)v10 setExcludedActivityTypes:v12];

  v13 = [(PXActivitySharingContext *)v10 excludedActivityTypes];
  v27[0] = @"PUActivityTypeHide";
  v27[1] = @"PUActivityTypeDuplicate";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v15 = [v13 arrayByAddingObjectsFromArray:v14];
  [(PXActivitySharingContext *)v10 setExcludedActivityTypes:v15];

  v16 = [v9 px_sharePresentation];
  if (!v16)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PXPhotosGridShareActionPerformer.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"sharePresentation"}];
  }

  v17 = [v16 createActivitySharingControllerWithContext:v10];
  [v17 selectInitialAssets];
  if (!v17)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXPhotosGridShareActionPerformer.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"activitySharingController"}];
  }

  v18 = [v17 activityViewController];
  if (!v18)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [v26 handleFailureInMethod:a2 object:self file:@"PXPhotosGridShareActionPerformer.m" lineNumber:75 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"activitySharingController.activityViewController", v23}];
LABEL_12:

    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = objc_opt_class();
    v23 = NSStringFromClass(v24);
    v25 = [v18 px_descriptionForAssertionMessage];
    [v26 handleFailureInMethod:a2 object:self file:@"PXPhotosGridShareActionPerformer.m" lineNumber:75 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"activitySharingController.activityViewController", v23, v25}];

    goto LABEL_12;
  }

LABEL_9:
  [v9 presentViewController:v18 animated:1 completion:0];
  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
}

@end