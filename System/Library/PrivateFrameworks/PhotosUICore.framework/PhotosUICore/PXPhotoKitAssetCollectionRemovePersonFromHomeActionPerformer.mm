@interface PXPhotoKitAssetCollectionRemovePersonFromHomeActionPerformer
+ (BOOL)canPerformOn:(id)a3;
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5;
+ (id)systemImageNameForAssetCollectionReference:(id)a3 withInputs:(id)a4;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionRemovePersonFromHomeActionPerformer

+ (id)systemImageNameForAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v5 = PXFirstPersonFromAssetCollectionActionPerformerInput(a4);
  v6 = [a1 systemImageNameForPerson:v5];

  return v6;
}

+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (a3 - 1 >= 2)
  {
    if (!a3)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionRemovePersonFromHomeActionPerformer.m" lineNumber:57 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v13 = 0;
  }

  else
  {
    v12 = PXFirstPersonFromAssetCollectionActionPerformerInput(v10);
    v13 = [a1 localizedTitleForPerson:v12];
  }

  return v13;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v5 = a4;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 people];
  }

  else
  {
    v6 = 0;
  }

  if ([v6 count] == 1)
  {
    v7 = [a1 canPerformOn:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)canPerformOn:(id)a3
{
  v3 = [a3 firstObject];
  v4 = [PXPeopleUtilities isPersonHiddenFromPeopleHome:v3];

  return !v4;
}

- (void)performUserInteractionTask
{
  objc_initWeak(&location, self);
  v3 = [(PXPhotoKitAssetCollectionActionPerformer *)self people];
  v4 = [(PXActionPerformer *)self presentationEnvironment];
  v5 = [(PXActionPerformer *)self undoManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __90__PXPhotoKitAssetCollectionRemovePersonFromHomeActionPerformer_performUserInteractionTask__block_invoke;
  v6[3] = &unk_1E7749D00;
  objc_copyWeak(&v7, &location);
  [PXPeopleRemovalUtilities presentAlertFor:v3 totalNumberOfPeople:0 presentationEnvironment:v4 undoManager:v5 sourceItem:0 completion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __90__PXPhotoKitAssetCollectionRemovePersonFromHomeActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completeUserInteractionTaskWithSuccess:a2 error:v5];
}

@end