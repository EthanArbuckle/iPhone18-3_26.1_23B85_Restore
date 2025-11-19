@interface PXPhotoKitAssetCollectionSuggestPeopleActionPerformer
+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionSuggestPeopleActionPerformer

+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5
{
  v9 = a4;
  v10 = a5;
  if (a3 - 1 >= 2)
  {
    if (!a3)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionSuggestPeopleActionPerformer.m" lineNumber:47 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v11 = 0;
  }

  else
  {
    v11 = PXLocalizedStringFromTable(@"PXPeopleSuggestWidgetGeneric", @"PhotosUICore");
  }

  return v11;
}

- (void)performUserInteractionTask
{
  v3 = [(PXPhotoKitAssetCollectionActionPerformer *)self people];
  v6 = [v3 firstObject];

  if (v6)
  {
    v4 = [[PXPeopleSplitConfirmationViewController alloc] initWithPerson:v6];
    v5 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v4];
    [(PXPeopleSplitConfirmationViewController *)v4 setModalPresentationStyle:0];
    [(PXActionPerformer *)self presentViewController:v5];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }
}

@end