@interface PXPhotoKitAssetCollectionAddPersonToHomeActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionAddPersonToHomeActionPerformer

+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5
{
  v9 = a4;
  v10 = a5;
  if (a3 - 1 >= 2)
  {
    if (!a3)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionAddPersonToHomeActionPerformer.m" lineNumber:43 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v12 = 0;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [v10 people];
    }

    else
    {
      v11 = 0;
    }

    v13 = [v11 firstObject];
    if (!v13)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionAddPersonToHomeActionPerformer.m" lineNumber:39 description:@"Person is nil"];
    }

    v12 = [PXPeopleUtilities stringForAddingPerson:v13];
  }

  return v12;
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

  if ([v5 count] == 1)
  {
    v6 = [v5 firstObject];
    v7 = [PXPeopleUtilities isPersonHiddenFromPeopleHome:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)performUserInteractionTask
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = [(PXPhotoKitAssetCollectionActionPerformer *)self people];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = [v4 localIdentifier];
    v6 = [v4 photoLibrary];
    v7 = [PXPeopleUtilities personWithLocalIdentifier:v5 photoLibrary:v6];

    objc_initWeak(&location, self);
    v8 = [PXChangePeopleTypeAction alloc];
    v15[0] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v10 = [(PXChangePeopleTypeAction *)v8 initWithPeople:v9 type:0];

    v11 = [(PXActionPerformer *)self undoManager];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__PXPhotoKitAssetCollectionAddPersonToHomeActionPerformer_performUserInteractionTask__block_invoke;
    v12[3] = &unk_1E7749D00;
    objc_copyWeak(&v13, &location);
    [(PXAction *)v10 executeWithUndoManager:v11 completionHandler:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __85__PXPhotoKitAssetCollectionAddPersonToHomeActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completeUserInteractionTaskWithSuccess:a2 error:v5];
}

@end