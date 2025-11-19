@interface PXPhotoKitAssetCollectionFavoritePersonActionPerformer
+ (BOOL)canPerformOn:(id)a3;
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5;
+ (id)systemImageNameForAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (id)systemImageNameForPerson:(id)a3;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionFavoritePersonActionPerformer

+ (id)systemImageNameForAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v5 = [a4 people];
  v6 = [v5 firstObject];

  v7 = [a1 systemImageNameForPerson:v6];

  return v7;
}

+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = [v10 people];
  v12 = [v11 firstObject];

  if (a3 - 1 >= 2)
  {
    if (!a3)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionFavoritePersonActionPerformer.m" lineNumber:65 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v13 = 0;
  }

  else
  {
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

+ (id)systemImageNameForPerson:(id)a3
{
  if ([a3 type] == 1)
  {
    v3 = @"heart.slash";
  }

  else
  {
    v3 = @"heart";
  }

  return v3;
}

+ (BOOL)canPerformOn:(id)a3
{
  v3 = [a3 firstObject];
  v4 = [PXPeopleUtilities isPersonHiddenFromPeopleHome:v3];

  return !v4;
}

- (void)performUserInteractionTask
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [(PXPhotoKitAssetCollectionActionPerformer *)self people];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = [v4 localIdentifier];
    v6 = [v4 photoLibrary];
    v7 = [PXPeopleUtilities personWithLocalIdentifier:v5 photoLibrary:v6];

    objc_initWeak(&location, self);
    v8 = [v7 type] != 1;
    v9 = [PXChangePeopleTypeAction alloc];
    v16[0] = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v11 = [(PXChangePeopleTypeAction *)v9 initWithPeople:v10 type:v8];

    v12 = [(PXActionPerformer *)self undoManager];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __84__PXPhotoKitAssetCollectionFavoritePersonActionPerformer_performUserInteractionTask__block_invoke;
    v13[3] = &unk_1E7749D00;
    objc_copyWeak(&v14, &location);
    [(PXAction *)v11 executeWithUndoManager:v12 completionHandler:v13];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __84__PXPhotoKitAssetCollectionFavoritePersonActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completeUserInteractionTaskWithSuccess:a2 error:v5];
}

@end