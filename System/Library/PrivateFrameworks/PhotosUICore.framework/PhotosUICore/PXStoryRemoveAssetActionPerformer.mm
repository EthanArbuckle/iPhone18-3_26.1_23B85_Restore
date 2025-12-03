@interface PXStoryRemoveAssetActionPerformer
+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group error:(id *)error;
+ (BOOL)providesCanPerformError;
- (void)performUserInteractionTask;
@end

@implementation PXStoryRemoveAssetActionPerformer

+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group error:(id *)error
{
  snapshotCopy = snapshot;
  personCopy = person;
  groupCopy = group;
  if ([snapshotCopy isAnyItemSelected] && (objc_msgSend(snapshotCopy, "dataSource"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "containsMultipleItems"), v13, v14))
  {
    v17.receiver = self;
    v17.super_class = &OBJC_METACLASS___PXStoryRemoveAssetActionPerformer;
    v15 = objc_msgSendSuper2(&v17, sel_canPerformWithSelectionSnapshot_person_socialGroup_error_, snapshotCopy, personCopy, groupCopy, error);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (BOOL)providesCanPerformError
{
  v4.receiver = self;
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
  storyViewActionPerformer = [(PXStoryAssetActionPerformer *)self storyViewActionPerformer];
  if (storyViewActionPerformer)
  {
    v3 = MEMORY[0x1E695DFD8];
    assets = [(PXPhotoKitAssetActionPerformer *)self assets];
    v5 = [v3 setWithArray:assets];

    [storyViewActionPerformer removeAssetsFromCuration:v5];
  }

  else
  {
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
  }
}

@end