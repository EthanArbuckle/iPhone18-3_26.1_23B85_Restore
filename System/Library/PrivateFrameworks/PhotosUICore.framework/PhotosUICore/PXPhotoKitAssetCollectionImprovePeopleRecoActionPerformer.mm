@interface PXPhotoKitAssetCollectionImprovePeopleRecoActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionImprovePeopleRecoActionPerformer

+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5
{
  v9 = a4;
  v10 = a5;
  if (a3 - 1 >= 2)
  {
    if (!a3)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionImprovePeopleRecoActionPerformer.m" lineNumber:51 description:@"Code which should be unreachable has been reached"];

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

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v4 = a4;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 people];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 count] == 1;

  return v6;
}

- (void)performUserInteractionTask
{
  v3 = [(PXPhotoKitAssetCollectionActionPerformer *)self people];
  v6 = [v3 firstObject];

  v4 = v6;
  if (v6)
  {
    v5 = [PXPeopleRecoCollectionViewController recoControllerForPerson:v6];
    [(PXActionPerformer *)self presentViewController:v5];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];

    v4 = v6;
  }
}

@end