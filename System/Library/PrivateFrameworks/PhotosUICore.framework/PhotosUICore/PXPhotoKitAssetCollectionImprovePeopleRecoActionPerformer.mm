@interface PXPhotoKitAssetCollectionImprovePeopleRecoActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionImprovePeopleRecoActionPerformer

+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs
{
  referenceCopy = reference;
  inputsCopy = inputs;
  if (case - 1 >= 2)
  {
    if (!case)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionImprovePeopleRecoActionPerformer.m" lineNumber:51 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v11 = 0;
  }

  else
  {
    v11 = PXLocalizedStringFromTable(@"PXPeopleImproveRecoActionTitle", @"PhotosUICore");
  }

  return v11;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  inputsCopy = inputs;
  if (objc_opt_respondsToSelector())
  {
    people = [inputsCopy people];
  }

  else
  {
    people = 0;
  }

  v6 = [people count] == 1;

  return v6;
}

- (void)performUserInteractionTask
{
  people = [(PXPhotoKitAssetCollectionActionPerformer *)self people];
  firstObject = [people firstObject];

  v4 = firstObject;
  if (firstObject)
  {
    v5 = [PXPeopleRecoCollectionViewController recoControllerForPerson:firstObject];
    [(PXActionPerformer *)self presentViewController:v5];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];

    v4 = firstObject;
  }
}

@end