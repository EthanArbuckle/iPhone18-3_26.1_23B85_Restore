@interface PXStoryRemoveAssetActionPerformer
+ (BOOL)canPerformWithSelectionSnapshot:(id)a3 person:(id)a4 socialGroup:(id)a5 error:(id *)a6;
+ (BOOL)providesCanPerformError;
- (void)performUserInteractionTask;
@end

@implementation PXStoryRemoveAssetActionPerformer

+ (BOOL)canPerformWithSelectionSnapshot:(id)a3 person:(id)a4 socialGroup:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isAnyItemSelected] && (objc_msgSend(v10, "dataSource"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "containsMultipleItems"), v13, v14))
  {
    v17.receiver = a1;
    v17.super_class = &OBJC_METACLASS___PXStoryRemoveAssetActionPerformer;
    v15 = objc_msgSendSuper2(&v17, sel_canPerformWithSelectionSnapshot_person_socialGroup_error_, v10, v11, v12, a6);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (BOOL)providesCanPerformError
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___PXStoryRemoveAssetActionPerformer;
  v2 = objc_msgSendSuper2(&v4, sel_providesCanPerformError);
  if ((v2 & 1) == 0)
  {
    PXAssertGetLog();
  }

  return v2;
}

- (void)performUserInteractionTask
{
  v6 = [(PXStoryAssetActionPerformer *)self storyViewActionPerformer];
  if (v6)
  {
    v3 = MEMORY[0x1E695DFD8];
    v4 = [(PXPhotoKitAssetActionPerformer *)self assets];
    v5 = [v3 setWithArray:v4];

    [v6 removeAssetsFromCuration:v5];
  }

  else
  {
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
  }
}

@end