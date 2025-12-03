@interface PXPhotoKitAssetCollectionSuggestPeopleActionPerformer
+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionSuggestPeopleActionPerformer

+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs
{
  referenceCopy = reference;
  inputsCopy = inputs;
  if (case - 1 >= 2)
  {
    if (!case)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionSuggestPeopleActionPerformer.m" lineNumber:47 description:@"Code which should be unreachable has been reached"];

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
  people = [(PXPhotoKitAssetCollectionActionPerformer *)self people];
  firstObject = [people firstObject];

  if (firstObject)
  {
    v4 = [[PXPeopleSplitConfirmationViewController alloc] initWithPerson:firstObject];
    v5 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v4];
    [(PXPeopleSplitConfirmationViewController *)v4 setModalPresentationStyle:0];
    [(PXActionPerformer *)self presentViewController:v5];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }
}

@end